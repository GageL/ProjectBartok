using UnityEngine;
using UnityEngine.UI;

namespace FoW
{
    [AddComponentMenu("FogOfWar/FogOfWarHideInFog")]
    public class FogOfWarHideInFog : MonoBehaviour
    {
        [Tooltip("The team index that should be tested against. This should be the same index specified on the corresponding FogOfWarTeam component.")]
        public int team = 0;
        [Tooltip("The type of visibility that should be compared with.")]
        public FogOfWarValueType visibilityType = FogOfWarValueType.Visible;
        [Range(0.0f, 1.0f), Tooltip("The fog threshold that will trigger the object to show/hide. A lower value will be more visible in higher fog values.")]
        public float minFogStrength = 0.5f;
        
        Transform _transform;
        Renderer _renderer;
        Renderer[] _renderers;
        SkinnedMeshRenderer _skinnedMeshRenderer;
        SkinnedMeshRenderer[] _skinnedMeshRenderers;
        Graphic _graphic;
        Canvas _canvas;

        void Start()
        {
            _transform = transform;
            _renderer = GetComponent<Renderer>();
            _renderers = GetComponentsInChildren<Renderer>();
            _skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer>();
            _skinnedMeshRenderers = GetComponentsInChildren<SkinnedMeshRenderer>();
            _graphic = GetComponent<Graphic>();
            _canvas = GetComponent<Canvas>();
        }

        void Update()
        {
            FogOfWarTeam fow = FogOfWarTeam.GetTeam(team);
            if (fow == null)
            {
                Debug.LogWarning("There is no Fog Of War team for team #" + team.ToString());
                return;
            }

            bool visible = fow.GetFogValue(visibilityType, _transform.position) < minFogStrength * 255;
            if (_renderer != null)
                _renderer.enabled = visible;
            if (_renderers != null)
            {
                for (int i = 0; i < _renderers.Length; ++i)
                    _renderers[i].enabled = visible;
            }
            if (_skinnedMeshRenderer != null)
                _skinnedMeshRenderer.enabled = visible;
            if (_skinnedMeshRenderers != null)
            {
                for (int i = 0; i < _skinnedMeshRenderers.Length; ++i)
                    _skinnedMeshRenderers[i].enabled = visible;
            }
            if (_graphic != null)
                _graphic.enabled = visible;
            if (_canvas != null)
                _canvas.enabled = visible;
        }
    }
}
