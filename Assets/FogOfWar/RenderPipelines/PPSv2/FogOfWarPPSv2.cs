using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

namespace FoW
{
    [System.Serializable]
    public class LayerMaskParameter : ParameterOverride<LayerMask> { }
    [System.Serializable]
    public class StyleParameter : ParameterOverride<FogOfWarStyle> { }

    class FogOfWarPPSv2Manager : FogOfWarPostProcessManager
    {
        PostProcessRenderContext _context;
        PropertySheet _sheet;
        MaterialPropertyBlock _properties { get { return _sheet.properties; } }
        Shader _shader = null;

        public void Setup(PostProcessRenderContext context)
        {
            _context = context;
            if (_shader == null)
                _shader = FogOfWarUtils.FindShader("Hidden/FogOfWarPPSv2");
            _sheet = _context.propertySheets.Get(_shader);
        }

        protected override void SetTexture(int id, Texture value) { _properties.SetTexture(id, value); }
        protected override void SetVector(int id, Vector4 value) { _properties.SetVector(id, value); }
        protected override void SetColor(int id, Color value) { _properties.SetColor(id, value); }
        protected override void SetFloat(int id, float value) { _properties.SetFloat(id, value); }
        protected override void SetMatrix(int id, Matrix4x4 value) { _properties.SetMatrix(id, value); }
        protected override void SetKeyword(string keyword, bool enabled)
        {
            if (enabled)
                _sheet.EnableKeyword(keyword);
            else
                _sheet.DisableKeyword(keyword);
        }

        protected override void GetTargetSize(out int width, out int height, out int depth)
        {
            width = _context.width;
            height = _context.height;
            depth = 16;
        }

        protected override void BlitToScreen()
        {
            _context.command.BlitFullscreenTriangle(_context.source, _context.destination, _sheet, 0);
        }
    }

    [System.Serializable]
    [PostProcess(typeof(FogOfWarPPSv2Renderer), PostProcessEvent.BeforeStack, "FogOfWar")]
    public sealed class FogOfWarPPSv2 : PostProcessEffectSettings
    {
        [Tooltip("The team index that will be displayed. This should be the same index specified on the corresponding FogOfWarTeam component.")]
        public IntParameter team = new IntParameter { value = 0 };
        [Tooltip("If a pixel is infinitely far away, should it be fogged?")]
        public BoolParameter fogFarPlane = new BoolParameter { value = true };
        [Range(0.0f, 1.0f), Tooltip("Should areas outside of the map be fogged?")]
        public FloatParameter outsideFogStrength = new FloatParameter { value = 1 };
        [Tooltip("The minimum height that fog can appear.")]
        public FloatParameter minFogHeight = new FloatParameter { value = -100000 };
        [Tooltip("The maximum height that fog can appear.")]
        public FloatParameter maxFogHeight = new FloatParameter { value = 100000 };
        [Tooltip("The visual style of the fog.")]
        public StyleParameter style = new StyleParameter { value = FogOfWarStyle.Linear };

        [Header("Color")]
        [Tooltip("The color of the fog. When using clear fog, the alpha value will determine how transparent the fogged area will be (you usually want the alpha to be zero).")]
        public ColorParameter fogColor = new ColorParameter { value = Color.black };
        [Range(0, 1), Tooltip("How visible the partial fog areas should be.")]
        public FloatParameter partialFogAmount = new FloatParameter() { value = 0.5f };
        [Tooltip("The texture applied to the fog.")]
        public TextureParameter fogColorTexture = new TextureParameter();
        [Tooltip("If true, the texture will be applied in screen space. If false, it will be applied along the fog plane.")]
        public BoolParameter fogTextureScreenSpace = new BoolParameter { value = false };
        [Tooltip("The uniform scale applied to the fogColorTexture.")]
        public FloatParameter fogColorTextureScale = new FloatParameter { value = 1 };
        [Tooltip("The height at which the fogColorTexture will be at. Only applicable when fogTextureScreenSpace is false.")]
        public FloatParameter fogColorTextureHeight = new FloatParameter { value = 0 };

        public override bool IsEnabledAndSupported(PostProcessRenderContext context)
        {
            return enabled.value && Application.isPlaying;
        }
    }

    public sealed class FogOfWarPPSv2Renderer : PostProcessEffectRenderer<FogOfWarPPSv2>
    {
        FogOfWarPPSv2Manager _postProcess = null;

        public override void Render(PostProcessRenderContext context)
        {
            if (_postProcess == null)
                _postProcess = new FogOfWarPPSv2Manager();

            _postProcess.Setup(context);
            _postProcess.team = settings.team.value;
            _postProcess.camera = context.camera;
            _postProcess.style = settings.style.value;
            _postProcess.fogFarPlane = settings.fogFarPlane.value;
            _postProcess.outsideFogStrength = settings.outsideFogStrength.value;
            _postProcess.fogHeightMin = settings.minFogHeight.value;
            _postProcess.fogHeightMax = settings.maxFogHeight.value;
            _postProcess.fogColor = settings.fogColor.value;
            _postProcess.partialFogAmount = settings.partialFogAmount.value;
            _postProcess.fogColorTexture = settings.fogColorTexture;
            _postProcess.fogColorTextureScale = settings.fogColorTextureScale.value;
            _postProcess.fogColorTextureHeight = settings.fogColorTextureHeight.value;
            _postProcess.Render();
        }
    }
}
