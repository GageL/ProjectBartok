﻿using UnityEngine;

namespace FoW
{
    public class FogOfWarDrawerHardware : FogOfWarDrawer
    {
        RenderTexture _visibleTexture = null;
        RenderTexture _lastPartialTexture = null;
        RenderTexture _partialTexture = null;
        RenderTexture _finalTexture = null;
        Texture2D _outputTexture = null;
        Texture2D _lineOfSightTex = null;
        byte[] _lineOfSightCopyBuffer = null;
        Texture2D _lineOfSightCellsTex = null;
        byte[] _lineOfSightCellsCopyBuffer = null;

        static Material _shapeMaterial = null;
        static Material _fadeMaterial = null;
        static Material _combineMaterial = null;

        // shader IDs
        static int _visibleTexID;
        static int _partialTexID;
        static int _halfPixelSizeID;
        static int _fadeAmountID;
        static int _lineOfSightTexID;
        static int _lineOfSightTexSizeID;
        static int _lineOfSightValuesID;
        static int _centerPositionID;
        static int _eyePositionID;
        static int _eyeForwardID;
        static int _forwardAngleID;
        static int _brightnessID;
        static int _sizeID;
        static int _angleID;

        static FogOfWarShapeBox _cachedSetAreaShape = null;

        public FogOfWarDrawerHardware()
        {
            if (_shapeMaterial != null)
                return;

            Debug.Assert(SystemInfo.SupportsRenderTextureFormat(RenderTextureFormat.R8));
            Debug.Assert(SystemInfo.SupportsRenderTextureFormat(RenderTextureFormat.ARGB32));

            _shapeMaterial = new Material(FogOfWarUtils.FindShader("Hidden/FogOfWarHardwareShape"));
            _fadeMaterial = new Material(FogOfWarUtils.FindShader("Hidden/FogOfWarHardwareFade"));
            _combineMaterial = new Material(FogOfWarUtils.FindShader("Hidden/FogOfWarHardwareCombine"));

            _visibleTexID = Shader.PropertyToID("_VisibleTex");
            _partialTexID = Shader.PropertyToID("_PartialTex");
            _halfPixelSizeID = Shader.PropertyToID("_HalfPixelSize");
            _fadeAmountID = Shader.PropertyToID("_FadeAmount");
            _lineOfSightTexID = Shader.PropertyToID("_LineOfSightTex");
            _lineOfSightTexSizeID = Shader.PropertyToID("_LineOfSightTexSize");
            _lineOfSightValuesID = Shader.PropertyToID("_LineOfSightValues");
            _centerPositionID = Shader.PropertyToID("_CenterPosition");
            _eyePositionID = Shader.PropertyToID("_EyePosition");
            _eyeForwardID = Shader.PropertyToID("_EyeForward");
            _forwardAngleID = Shader.PropertyToID("_ForwardAngle");
            _brightnessID = Shader.PropertyToID("_Brightness");
            _sizeID = Shader.PropertyToID("_Size");
            _angleID = Shader.PropertyToID("_Angle");
        }

        protected override void OnInitialise()
        {
            if (_visibleTexture == null || _visibleTexture.width != _map.resolution.x || _visibleTexture.height != _map.resolution.y)
            {
                DestoryAllTextures();

                _visibleTexture = new RenderTexture(_map.resolution.x, _map.resolution.y, 0, RenderTextureFormat.R8);
                _partialTexture = new RenderTexture(_map.resolution.x, _map.resolution.y, 0, RenderTextureFormat.R8);
                _lastPartialTexture = new RenderTexture(_map.resolution.x, _map.resolution.y, 0, RenderTextureFormat.R8);
                _finalTexture = new RenderTexture(_map.resolution.x, _map.resolution.y, 0, RenderTextureFormat.ARGB32);
            }

            Clear(_partialTexture, new Color(1, 1, 1, 1));
            Clear(_lastPartialTexture, new Color(1, 1, 1, 1));
        }

        public override void OnDestroy()
        {
            DestroyMaterial(ref _shapeMaterial);
            DestroyMaterial(ref _fadeMaterial);
            DestroyMaterial(ref _combineMaterial);

            DestoryAllTextures();

            if (_lineOfSightTex != null)
                Object.Destroy(_lineOfSightTex);
            if (_lineOfSightCellsTex != null)
                Object.Destroy(_lineOfSightCellsTex);
        }

        void DestroyMaterial(ref Material obj)
        {
            if (obj == null)
                return;

            Object.Destroy(obj);
            obj = null;
        }

        void DestoryAllTextures()
        {
            DestroyRenderTexture(ref _visibleTexture);
            DestroyRenderTexture(ref _partialTexture);
            DestroyRenderTexture(ref _lastPartialTexture);
            DestroyRenderTexture(ref _finalTexture);

            if (_outputTexture != null)
            {
                Object.Destroy(_outputTexture);
                _outputTexture = null;
            }
        }

        void DestroyRenderTexture(ref RenderTexture rt)
        {
            if (rt == null)
                return;

            if (RenderTexture.active == rt)
                RenderTexture.active = null;

            rt.Release();
            Object.Destroy(rt);
            rt = null;
        }

        public override void Combine(bool dofade, float fadeamount)
        {
            // fade
            _fadeMaterial.SetTexture(_visibleTexID, _visibleTexture);
            _fadeMaterial.SetTexture(_partialTexID, _lastPartialTexture);
            _fadeMaterial.SetFloat(_fadeAmountID, dofade ? 1 : fadeamount);

#if !UNITY_2021_1_OR_NEWER
            _partialTexture.MarkRestoreExpected();
#endif

            Graphics.Blit(null, _partialTexture, _fadeMaterial);

            // combine
            _combineMaterial.SetTexture(_visibleTexID, _visibleTexture);
            _combineMaterial.SetTexture(_partialTexID, _partialTexture);

#if !UNITY_2021_1_OR_NEWER
            _finalTexture.MarkRestoreExpected();
#endif

            Graphics.Blit(null, _finalTexture, _combineMaterial);
        }

        public override Texture EndFrame()
        {
            // swap partial texture
            RenderTexture temp = _lastPartialTexture;
            _lastPartialTexture = _partialTexture;
            _partialTexture = temp;

            return _finalTexture;
        }

        public override void GetValues(Color32[] outvalues)
        {
            if (_outputTexture == null || _outputTexture.width != _map.resolution.x || _outputTexture.height != _map.resolution.y)
                _outputTexture = new Texture2D(_map.resolution.x, _map.resolution.y, TextureFormat.RGB24, false);

            RenderTexture temp = RenderTexture.active;
            RenderTexture.active = _finalTexture;
            _outputTexture.ReadPixels(new Rect(0, 0, _finalTexture.width, _finalTexture.height), 0, 0);
            RenderTexture.active = temp;

#if UNITY_2018_1_OR_NEWER
            Unity.Collections.NativeArray<byte> ptr = _outputTexture.GetRawTextureData<byte>();
            for (int i = 0; i < outvalues.Length; ++i)
            {
                int ii = i * 3;
                outvalues[i].r = ptr[ii + 0];
                outvalues[i].g = ptr[ii + 1];
            }
#else
            byte[] bytedata = _outputTexture.GetRawTextureData();
            for (int i = 0; i < outvalues.Length; ++i)
            {
                int ii = i * 3;
                outvalues[i].r = bytedata[ii + 0];
                outvalues[i].g = bytedata[ii + 1];
            }
#endif
        }

        RenderTexture GetTarget(FogOfWarValueType type)
        {
            if (type == FogOfWarValueType.Visible)
                return _visibleTexture;
            else if (type == FogOfWarValueType.Partial)
                return _partialTexture;
            throw new System.ArgumentException("Invalid FogOfWarValueType.");
        }

        public override void SetValues(FogOfWarValueType type, byte[] values)
        {
            Texture2D temp = new Texture2D(_finalTexture.width, _finalTexture.height, TextureFormat.R8, false);
            temp.LoadRawTextureData(values);
            temp.Apply(false, true);

            Graphics.Blit(temp, GetTarget(type));

            Object.Destroy(temp);
        }

        void Clear(RenderTexture rt, Color color)
        {
            RenderTexture temp = RenderTexture.active;
            RenderTexture.active = rt;

            GL.Clear(true, true, color);

            RenderTexture.active = temp;
        }

        public override void StartFrame()
        {
            Clear(_visibleTexture, new Color(1, 1, 1, 1));
        }

        void SetupLineOfSightRays(FogOfWarShape shape)
        {
            // prepare texture
            if (shape.lineOfSightRays == null)
                return;
            
            if (_lineOfSightTex == null || _lineOfSightTex.width < shape.lineOfSightRays.Length)
            {
                if (_lineOfSightTex != null)
                    Object.Destroy(_lineOfSightTex);
                _lineOfSightTex = new Texture2D(shape.lineOfSightRays.Length, 1, TextureFormat.RFloat, false);
                _lineOfSightTex.filterMode = FilterMode.Bilinear;
                _lineOfSightTex.wrapMode = TextureWrapMode.Repeat;
                _lineOfSightCopyBuffer = new byte[shape.lineOfSightRays.Length * sizeof(float)];
            }

            System.Buffer.BlockCopy(shape.lineOfSightRays, 0, _lineOfSightCopyBuffer, 0, shape.lineOfSightRays.Length * sizeof(float));
            _lineOfSightTex.LoadRawTextureData(_lineOfSightCopyBuffer);
            _lineOfSightTex.Apply(false, false);

            // setup material
            _shapeMaterial.SetTexture(_lineOfSightTexID, _lineOfSightTex);
            _shapeMaterial.SetVector(_lineOfSightValuesID, new Vector4(shape.maxLineOfSightDistance / _map.size, shape.lineOfSightMinAngle, shape.lineOfSightMaxAngle, shape.lineOfSightSeeOutsideRange ? 1 : 0));
        }

        void SetupLineOfSightCells(FogOfWarShape shape)
        {
            // prepare texture
            if (shape.visibleCells == null)
                return;

            if (_lineOfSightCellsTex == null || _lineOfSightCellsTex.width * _lineOfSightCellsTex.height < shape.visibleCells.Length)
            {
                if (_lineOfSightCellsTex != null)
                    _lineOfSightCellsTex.Reinitialize(shape.visibleCellsWidth, shape.visibleCells.Length / shape.visibleCellsWidth);
                _lineOfSightCellsTex = new Texture2D(shape.visibleCellsWidth, shape.visibleCells.Length / shape.visibleCellsWidth, TextureFormat.Alpha8, false);
                _lineOfSightCellsTex.filterMode = FilterMode.Point;
                _lineOfSightCellsTex.wrapMode = TextureWrapMode.Clamp;
                _lineOfSightCellsCopyBuffer = new byte[shape.visibleCells.Length];
            }

            for (int y = 0; y < shape.visibleCellsWidth; ++y)
            {
                for (int x = 0; x < shape.visibleCellsWidth; ++x)
                    _lineOfSightCellsCopyBuffer[y * _lineOfSightCellsTex.width + x] = shape.visibleCells[y * shape.visibleCellsWidth + x] ? (byte)255 : (byte)0;
            }

            _lineOfSightCellsTex.LoadRawTextureData(_lineOfSightCellsCopyBuffer);
            _lineOfSightCellsTex.Apply(false, false);

            // setup material
            _shapeMaterial.SetTexture(_lineOfSightTexID, _lineOfSightCellsTex);
            _shapeMaterial.SetVector(_lineOfSightTexSizeID, new Vector4((float)shape.visibleCellsWidth / _lineOfSightCellsTex.width, (float)shape.visibleCellsWidth / _lineOfSightCellsTex.height, 0, 0));
            float texwidth = (float)_lineOfSightCellsTex.width / _map.resolution.x;
            _shapeMaterial.SetVector(_lineOfSightValuesID, new Vector4(texwidth, shape.lineOfSightMinAngle, shape.lineOfSightMaxAngle, shape.lineOfSightSeeOutsideRange ? 1 : 0));
        }

        public override void Draw(FogOfWarShape shape, bool ismultithreaded)
        {
            FogOfWarDrawInfo info = new FogOfWarDrawInfo(_map, shape);

            _shapeMaterial.SetKeywordEnabled("SHAPE_CIRCLE", shape is FogOfWarShapeCircle);
            _shapeMaterial.SetKeywordEnabled("SHAPE_BOX", shape is FogOfWarShapeBox);
            _shapeMaterial.SetKeywordEnabled("SHAPE_MESH", shape is FogOfWarShapeMesh);
            _shapeMaterial.SetKeywordEnabled("LINE_OF_SIGHT_RAYS", shape.lineOfSightRays != null);
            _shapeMaterial.SetKeywordEnabled("LINE_OF_SIGHT_CELLS", shape.visibleCells != null);

            Vector2 centerpos = info.fogCenterPos / (_map.size * _map.pixelSize);
            _shapeMaterial.SetVector(_centerPositionID, centerpos);
            _shapeMaterial.SetVector(_eyePositionID, info.fogEyePos.ToFloat() / (_map.size * _map.pixelSize));
            _shapeMaterial.SetVector(_eyeForwardID, info.fogForward);
            _shapeMaterial.SetFloat(_forwardAngleID, info.forwardAngle);
            _shapeMaterial.SetFloat(_brightnessID, shape.brightness);
            _shapeMaterial.SetVector(_halfPixelSizeID, new Vector4(0.5f / _map.resolution.x, 0.5f / _map.resolution.y, 0, 0));

            SetupLineOfSightRays(shape);
            SetupLineOfSightCells(shape);

#if !UNITY_2021_1_OR_NEWER
            _visibleTexture.MarkRestoreExpected();
#endif

            if (shape is FogOfWarShapeMesh mesh)
            {
                Matrix4x4 projection = Matrix4x4.Ortho(0, 1, 0, 1, -1, 100);
                if (Camera.current != null)
                    projection *= Camera.current.cameraToWorldMatrix;

                Graphics.SetRenderTarget(_visibleTexture);
                GL.PushMatrix();
                GL.LoadProjectionMatrix(projection);
                _shapeMaterial.SetPass(0);

                Quaternion rotation = Quaternion.Euler(0, 0, info.forwardAngle * -Mathf.Rad2Deg) * Quaternion.Euler(90, 0, 0);
                Vector2 scale = new Vector2(shape.size.x / _map.size, shape.size.y / _map.size);
                Matrix4x4 model = Matrix4x4.TRS(new Vector3(centerpos.x, centerpos.y, 0), rotation, new Vector3(scale.x, scale.y, scale.y));
                Graphics.DrawMeshNow(mesh.mesh, model);

                GL.PopMatrix();
                Graphics.SetRenderTarget(null);
                return;
            }

            Texture2D tex = null;
            if (shape is FogOfWarShapeCircle)
            {
                FogOfWarShapeCircle circle = (FogOfWarShapeCircle)shape;
                _shapeMaterial.SetVector(_sizeID, new Vector4(shape.radius / _map.size, circle.innerRadius, 1, 1));
                _shapeMaterial.SetFloat(_angleID, 1 - circle.angle / 90);
            }
            else if (shape is FogOfWarShapeBox)
            {
                FogOfWarShapeBox box = (FogOfWarShapeBox)shape;
                _shapeMaterial.SetVector(_sizeID, shape.size / _map.size);
                tex = box.texture;
            }

            Graphics.Blit(tex ?? _outputTexture, _visibleTexture, _shapeMaterial);
        }

        public override void SetFog(FogOfWarValueType type, RectInt rect, byte value)
        {
            if (_cachedSetAreaShape == null)
            {
                _cachedSetAreaShape = new FogOfWarShapeBox()
                {
                    foward = Vector2.up,
                    absoluteCenterPoint = false,
                    rotateToForward = false,
                    centerPoint = Vector2.zero,
                    lineOfSightRays = null,
                    lineOfSightMinAngle = 0,
                    lineOfSightMaxAngle = 0,
                    lineOfSightSeeOutsideRange = false,
                    maxLineOfSightDistance = 100,
                    visibleCells = null,
                    visibleCellsWidth = 0,
                    radius = 100,
                    brightness = 1,
                    maxBrightness = 0,
                    texture = null,
                    pointSample = true,
                    hasTexture = false
                };
            }

            _cachedSetAreaShape.eyePosition = FogOfWarConversion.FogPlaneToWorld(FogOfWarConversion.FogToWorld(rect.center, _map.offset, _map.resolution, _map.size), _map.plane);
            _cachedSetAreaShape.size = rect.size;

            Draw(_cachedSetAreaShape, false);
        }

        public override void SetAll(FogOfWarValueType type, byte value)
        {
            Clear(GetTarget(type), new Color32(value, 0, 0, 0));
        }
    }
}
