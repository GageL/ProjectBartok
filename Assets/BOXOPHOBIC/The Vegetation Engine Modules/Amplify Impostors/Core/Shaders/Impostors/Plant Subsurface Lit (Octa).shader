// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Impostors/Plant Subsurface Lit (Octa)"
{
	Properties
	{
		[StyledCategory(Impostor Settings, 5, 10)]_ImostorCat("[ ImostorCat]", Float) = 1
		_Albedo("Impostor Albedo & Alpha", 2D) = "white" {}
		_Normals("Impostor Normal & Depth", 2D) = "white" {}
		[NoScaleOffset]_Mask("Impostor Baked Masks", 2D) = "white" {}
		[NoScaleOffset]_Emissive("Impostor Emissive Map", 2D) = "white" {}
		_AI_Parallax("Impostor Parallax", Range( 0 , 1)) = 1
		_AI_ShadowView("Impostor Shadow View", Range( 0 , 1)) = 1
		_AI_ShadowBias("Impostor Shadow Bias", Range( 0 , 2)) = 0.25
		_AI_TextureBias("Impostor Texture Bias", Float) = -1
		[HideInInspector]_AI_DepthSize("Impostor Depth Size", Float) = 0
		[HideInInspector]_AI_SizeOffset("Impostor Size Offset", Vector) = (0,0,0,0)
		[HideInInspector]_AI_Frames("Impostor Frames", Float) = 0
		[HideInInspector]_AI_Offset("Impostor Offset", Vector) = (0,0,0,0)
		[HideInInspector]_AI_ImpostorSize("Impostor Size", Float) = 0
		[HideInInspector]_AI_FramesY("Impostor Frames Y", Float) = 0
		[HideInInspector]_AI_FramesX("Impostor Frames X", Float) = 0
		[Enum(Off,0,On,1)]_RenderSpecular("Impostor Render Specular", Float) = 1
		[Enum(Off,0,On,1)]_RenderCoverage("Impostor Alpha To Mask", Float) = 0
		_AI_Clip("Impostor Clip", Range( 0 , 1)) = 0.5
		[HideInInspector]_RenderQueue("Render Queue", Float) = 0
		[HideInInspector]_RenderPriority("Render Priority", Float) = 0
		[HDR][Space(10)]_ImpostorColor("Impostor Color", Color) = (1,1,1,1)
		_ImpostorSmoothnessValue("Impostor Smoothness", Range( 0 , 1)) = 1
		[StyledCategory(Global Settings)]_CategoryGlobal("[ Category Global ]", Float) = 1
		[StyledEnum(TVEColorsLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerColorsValue("Layer Colors", Float) = 0
		[StyledEnum(TVEExtrasLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerExtrasValue("Layer Extras", Float) = 0
		[StyledEnum(TVEMotionLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerMotionValue("Layer Motion", Float) = 0
		[StyledEnum(TVEVertexLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerVertexValue("Layer Vertex", Float) = 0
		[StyledSpace(10)]_SpaceGlobalLayers("# Space Global Layers", Float) = 0
		_GlobalColors("Global Color", Range( 0 , 1)) = 0
		_GlobalAlpha("Global Alpha", Range( 0 , 1)) = 1
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalEmissive("Global Emissive", Range( 0 , 1)) = 1
		_GlobalSize("Global Size Fade", Range( 0 , 1)) = 1
		[StyledSpace(10)]_SpaceGlobalLocals("# Space Global Locals", Float) = 0
		_ColorsIntensityValue("Color Intensity", Range( 0 , 2)) = 1
		_ColorsVariationValue("Color Variation", Range( 0 , 1)) = 0
		_AlphaVariationValue("Alpha Variation", Range( 0 , 1)) = 0.5
		_OverlayVariationValue("Overlay Variation", Range( 0 , 1)) = 0.5
		_OverlayProjectionValue("Overlay Projection", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_SpaceGlobalOptions("# Space Global Options", Float) = 0
		[StyledToggle]_ColorsPositionMode("Use Pivot Position for Colors", Float) = 0
		[StyledToggle]_ExtrasPositionMode("Use Pivot Position for Extras", Float) = 0
		[StyledCategory(Occlusion Settings)]_CategoryOcclusion("[ Category Occlusion ]", Float) = 1
		[StyledMessage(Info, Use the Occlusion Color for tinting and the Occlusion Alpha as Global Color and Global Overlay mask multiplier when available., 0, 10)]_MessageOcclusion("# Message Occlusion", Float) = 0
		[HDR]_VertexOcclusionColor("Occlusion Color", Color) = (1,1,1,1)
		[Space(10)][StyledToggle]_VertexOcclusionColorsMode("Use Inverted Mask for Colors", Float) = 0
		[StyledToggle]_VertexOcclusionOverlayMode("Use Inverted Mask for Overlay", Float) = 0
		[StyledCategory(Noise Settings)]_CategoryNoise("[ Category Noise ]", Float) = 1
		[StyledRemapSlider(_NoiseMinValue, _NoiseMaxValue, 0, 1)]_NoiseMaskRemap("Noise Mask Remap", Vector) = (0,0,0,0)
		[StyledCategory(Subsurface Settings)]_CategorySubsurface("[ Category Subsurface ]", Float) = 1
		[DiffusionProfile]_SubsurfaceDiffusion("Subsurface Diffusion", Float) = 0
		[HideInInspector]_SubsurfaceDiffusion_Asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[StyledSpace(10)]_SpaceSubsurface("# Space Subsurface", Float) = 0
		_SubsurfaceValue("Subsurface Intensity", Range( 0 , 1)) = 1
		[HDR]_SubsurfaceColor("Subsurface Color", Color) = (1,1,1,1)
		_SubsurfaceScatteringValue("Subsurface Power", Range( 0 , 16)) = 2
		_SubsurfaceAngleValue("Subsurface Angle", Range( 1 , 16)) = 8
		_SubsurfaceDirectValue("Subsurface Direct", Range( 0 , 1)) = 1
		_SubsurfaceNormalValue("Subsurface Normal", Range( 0 , 1)) = 0
		_SubsurfaceAmbientValue("Subsurface Ambient", Range( 0 , 1)) = 0.2
		_SubsurfaceShadowValue("Subsurface Shadow", Range( 0 , 1)) = 1
		_SubsurfaceMaskValue("Subsurface Use Mask", Range( 0 , 1)) = 1
		[StyledCategory(Emissive Settings)]_CategoryEmissive("[ Category Emissive ]", Float) = 1
		[Enum(Off,0,On,1)]_EmissiveMode("Emissive Mode", Float) = 0
		[HDR][Space(10)]_EmissiveColor("Emissive Color", Color) = (0,0,0,0)
		[Enum(Nits,0,EV100,1)]_EmissiveIntensityMode("Emissive Power", Float) = 0
		_EmissiveIntensityValue("Emissive Power", Float) = 1
		_EmissivePhaseValue("Emissive Phase", Range( 0 , 1)) = 1
		[HideInInspector]_emissive_intensity_value("_emissive_intensity_value", Float) = 1
		[StyledCategory(Fade Settings)]_CategorySizeFade("[ Category Size Fade ]", Float) = 1
		[StyledCategory(Motion Settings)]_CategoryMotion("[ Category Motion ]", Float) = 1
		[StyledSpace(10)]_SpaceMotionGlobals("# SpaceMotionGlobals", Float) = 0
		_MotionAmplitude_10("Motion Bending", Range( 0 , 2)) = 0.2
		_MotionPosition_10("Motion Rigidity", Range( 0 , 1)) = 0.5
		[IntRange]_MotionSpeed_10("Motion Speed", Range( 0 , 40)) = 2
		_MotionScale_10("Motion Scale", Range( 0 , 20)) = 1
		[Space(10)]_InteractionAmplitude("Interaction Amplitude", Range( 0 , 2)) = 1
		[HideInInspector]_VertexPivotMode("Enable Pre Baked Pivots", Float) = 0
		[HideInInspector][StyledToggle]_VertexDynamicMode("Enable Dynamic Support", Float) = 0
		[HideInInspector]_VegetationMode("Legacy Vegetation Mode", Float) = 1
		[HideInInspector]_IsImpostorShader("_IsImpostorShader", Float) = 1
		[HideInInspector]_render_specular("_render_specular", Float) = 1
		[HideInInspector]_AI_Offset("_AI_Offset", Vector) = (0,0,0,0)
		[HideInInspector]_IsInitialized("_IsInitialized", Float) = 0
		[HideInInspector]_IsTVEShader("_IsTVEShader", Float) = 1
		[HideInInspector]_IsIdentifier("_IsIdentifier", Float) = 0
		[HideInInspector]_IsCollected("_IsCollected", Float) = 0
		[HideInInspector]_IsCustomShader("_IsCustomShader", Float) = 0
		[HideInInspector]_IsShared("_IsShared", Float) = 0
		[HideInInspector]_HasEmissive("_HasEmissive", Float) = 0
		[HideInInspector]_HasGradient("_HasGradient", Float) = 0
		[HideInInspector]_HasOcclusion("_HasOcclusion", Float) = 0
		[HideInInspector]_VertexVariationMode("_VertexVariationMode", Float) = 0
		[HideInInspector]_IsVersion("_IsVersion", Float) = 1230
		[HideInInspector]_IsPlantShader("_IsPlantShader", Float) = 1
		[HideInInspector]_IsSubsurfaceShader("_IsSubsurfaceShader", Float) = 1

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		_TransStrength( "Strength", Range( 0, 50 ) ) = 1
		_TransNormal( "Normal Distortion", Range( 0, 1 ) ) = 0.5
		_TransScattering( "Scattering", Range( 1, 50 ) ) = 2
		_TransDirect( "Direct", Range( 0, 1 ) ) = 0.9
		_TransAmbient( "Ambient", Range( 0, 1 ) ) = 0.1
		_TransShadow( "Shadow", Range( 0, 1 ) ) = 0.5
	}

	SubShader
	{
		LOD 0

		
		CGINCLUDE
		#pragma target 4.5
		#define UNITY_SAMPLE_FULL_SH_PER_PIXEL 1
		ENDCG
		Tags { "RenderType"="Opaque" "Queue"="Geometry" "DisableBatching"="True" "ImpostorType"="Octahedron" }
		Cull Back
		AlphaToMask [_RenderCoverage]

		Pass
		{
			
			ZWrite On
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#define ASE_TRANSLUCENCY 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma multi_compile_fwdbase

			#pragma multi_compile_fog
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#if !defined( UNITY_INSTANCED_SH )
				#define UNITY_INSTANCED_SH
			#endif
			#if !defined( UNITY_INSTANCED_LIGHTMAPSTS )
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#ifndef UNITY_PASS_FORWARDBASE
			#define UNITY_PASS_FORWARDBASE
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardUtils.cginc"

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_SUBSURFACE_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			uniform half _ImostorCat;
			uniform float _RenderSpecular;
			uniform half _RenderCoverage;
			uniform half _IsSubsurfaceShader;
			uniform float _IsPlantShader;
			uniform half _CategoryGlobal;
			uniform half _SpaceGlobalLayers;
			uniform half _CategoryOcclusion;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _VertexPivotMode;
			uniform half _SpaceGlobalLocals;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceMotionGlobals;
			uniform half _SpaceSubsurface;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _CategorySizeFade;
			uniform half _CategoryMotion;
			uniform half _CategoryEmissive;
			uniform half _CategorySubsurface;
			uniform half _CategoryNoise;
			uniform half4 _NoiseMaskRemap;
			uniform half _VegetationMode;
			uniform half _IsInitialized;
			uniform half _IsImpostorShader;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MessageOcclusion;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveIntensityMode;
			uniform half _EmissiveMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform half _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeed_10;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionAmplitude;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Mask);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Emissive);
			SamplerState sampler_Mask;
			SamplerState sampler_Emissive;
			uniform half4 _ImpostorColor;
			uniform half4 _VertexOcclusionColor;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _GlobalColors;
			uniform half _VertexDynamicMode;
			uniform half _ColorsVariationValue;
			uniform half _VertexOcclusionColorsMode;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _OverlayVariationValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _EmissiveColor;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform float _render_specular;
			uniform half _ImpostorSmoothnessValue;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;
			uniform half _AlphaVariationValue;
			uniform half _GlobalAlpha;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 ) 
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( vertex.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if ( defined(SHADERPASS) && (defined(SHADERPASS_DEPTHNORMALSONLY) && SHADERPASS == SHADERPASS_DEPTHNORMALSONLY) ) || defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				clipPos = UnityApplyLinearShadowBias( clipPos );
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			


			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif

			/*struct appdata_full {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID*/
			
			/*};*/

			struct v2f_surf {
				UNITY_POSITION(pos);
				#if defined(LIGHTMAP_ON) || (!defined(LIGHTMAP_ON) && SHADER_TARGET >= 30)
					float4 lmap : TEXCOORD0;
				#endif
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
					half3 sh : TEXCOORD1;
				#endif
				#if UNITY_VERSION >= 201810
					UNITY_LIGHTING_COORDS(2,3)
				#else
					UNITY_SHADOW_COORDS(2)
				#endif
				UNITY_FOG_COORDS(4)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame199 : TEXCOORD5;
				float4 UVsFrame299 : TEXCOORD6;
				float4 UVsFrame399 : TEXCOORD7;
				float4 octaframe99 : TEXCOORD8;
				float4 viewPos99 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
			};

			v2f_surf vert_surf (appdata_full v ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame199, o.UVsFrame299, o.UVsFrame399, o.octaframe99, o.viewPos99 );
				float3 worldPosOut99 = mul( UNITY_MATRIX_I_V, float4( o.viewPos99.xyz, 1.0 ) ).xyz;
				float3 WorldPosition4027_g76519 = worldPosOut99;
				float3 worldToObj4970_g76519 = mul( unity_WorldToObject, float4( WorldPosition4027_g76519, 1 ) ).xyz;
				float3 VertexPosition3564_g76519 = worldToObj4970_g76519;
				half3 VertexPos40_g76575 = VertexPosition3564_g76519;
				half3 VertexPos40_g76576 = VertexPos40_g76575;
				float3 appendResult74_g76576 = (float3(VertexPos40_g76576.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76576 = appendResult74_g76576;
				float3 break84_g76576 = VertexPos40_g76576;
				float3 appendResult81_g76576 = (float3(0.0 , break84_g76576.y , break84_g76576.z));
				half3 VertexPosOtherAxis82_g76576 = appendResult81_g76576;
				float3 WorldPosition_Shifted4972_g76519 = ( WorldPosition4027_g76519 - TVE_WorldOrigin );
				float4x4 break19_g76559 = unity_ObjectToWorld;
				float3 appendResult20_g76559 = (float3(break19_g76559[ 0 ][ 3 ] , break19_g76559[ 1 ][ 3 ] , break19_g76559[ 2 ][ 3 ]));
				half3 ObjectData20_g76561 = appendResult20_g76559;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g76561 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76561 = WorldData19_g76561;
				#else
				float3 staticSwitch14_g76561 = ObjectData20_g76561;
				#endif
				float3 temp_output_114_0_g76559 = staticSwitch14_g76561;
				float3 vertexToFrag4543_g76519 = temp_output_114_0_g76559;
				float3 ObjectPosition4422_g76519 = vertexToFrag4543_g76519;
				float3 ObjectPosition_Shifted4976_g76519 = ( ObjectPosition4422_g76519 - TVE_WorldOrigin );
				float3 lerpResult4934_g76519 = lerp( WorldPosition_Shifted4972_g76519 , ObjectPosition_Shifted4976_g76519 , _MotionPosition_10);
				float3 Motion_10_Position4923_g76519 = lerpResult4934_g76519;
				half3 Input_Position419_g76544 = Motion_10_Position4923_g76519;
				float Input_MotionScale287_g76544 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g76544 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g76544 = (( Input_Position419_g76544 * Input_MotionScale287_g76544 * NoiseTex_Tilling735_g76544 * 0.0075 )).xz;
				float2 temp_output_447_0_g76549 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g76519 = temp_output_447_0_g76549;
				half2 Input_DirectionWS423_g76544 = Global_Wind_DirectionWS4464_g76519;
				float lerpResult128_g76545 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g76544 = _MotionSpeed_10;
				half Input_MotionVariation284_g76544 = 0.0;
				half Input_GlobalMeshVariation569_g76544 = 0.0;
				float temp_output_630_0_g76544 = ( ( ( lerpResult128_g76545 * Input_MotionSpeed62_g76544 ) + ( Input_MotionVariation284_g76544 * Input_GlobalMeshVariation569_g76544 ) ) * 0.03 );
				float temp_output_607_0_g76544 = frac( temp_output_630_0_g76544 );
				float4 lerpResult590_g76544 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g76544 + ( -Input_DirectionWS423_g76544 * temp_output_607_0_g76544 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g76544 + ( -Input_DirectionWS423_g76544 * frac( ( temp_output_630_0_g76544 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g76544 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g76544 = lerpResult590_g76544;
				float2 temp_output_645_0_g76544 = ((Noise_Complex703_g76544).rg*2.0 + -1.0);
				float2 break650_g76544 = temp_output_645_0_g76544;
				float3 appendResult649_g76544 = (float3(break650_g76544.x , 0.0 , break650_g76544.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g76519 = (( mul( unity_WorldToObject, float4( appendResult649_g76544 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76580 = Global_Noise_OS4572_g76519;
				float2 break448_g76549 = temp_output_447_0_g76549;
				float3 appendResult452_g76549 = (float3(break448_g76549.x , 0.0 , break448_g76549.y));
				half2 Global_Wind_DirectionOS4658_g76519 = (( mul( unity_WorldToObject, float4( appendResult452_g76549 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76580 = Global_Wind_DirectionOS4658_g76519;
				float temp_output_84_0_g76520 = _LayerMotionValue;
				float temp_output_19_0_g76524 = TVE_MotionUsage[(int)temp_output_84_0_g76520];
				float4 temp_output_91_19_g76520 = TVE_MotionCoords;
				half2 UV94_g76520 = ( (temp_output_91_19_g76520).zw + ( (temp_output_91_19_g76520).xy * (ObjectPosition4422_g76519).xz ) );
				float4 tex2DArrayNode50_g76520 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g76520,temp_output_84_0_g76520), 0.0 );
				float4 temp_output_17_0_g76524 = tex2DArrayNode50_g76520;
				float4 temp_output_112_19_g76520 = TVE_MotionParams;
				float4 temp_output_3_0_g76524 = temp_output_112_19_g76520;
				float4 ifLocalVar18_g76524 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76524 >= 0.5 )
				ifLocalVar18_g76524 = temp_output_17_0_g76524;
				else
				ifLocalVar18_g76524 = temp_output_3_0_g76524;
				float4 lerpResult22_g76524 = lerp( temp_output_3_0_g76524 , temp_output_17_0_g76524 , temp_output_19_0_g76524);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76524 = lerpResult22_g76524;
				#else
				float4 staticSwitch24_g76524 = ifLocalVar18_g76524;
				#endif
				half4 Global_Motion_Params4344_g76519 = staticSwitch24_g76524;
				float4 break322_g76549 = Global_Motion_Params4344_g76519;
				float lerpResult457_g76549 = lerp( break322_g76549.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g76549 = ( 1.0 - lerpResult457_g76549 );
				half Global_Wind_Power2223_g76519 = ( 1.0 - ( temp_output_459_0_g76549 * temp_output_459_0_g76549 ) );
				half Input_WindPower449_g76580 = Global_Wind_Power2223_g76519;
				float2 lerpResult516_g76580 = lerp( Input_Noise_DirectionOS487_g76580 , Input_Wind_DirectionOS458_g76580 , ( Input_WindPower449_g76580 * 0.6 ));
				half Mesh_Height1524_g76519 = saturate( ( VertexPosition3564_g76519.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76580 = Mesh_Height1524_g76519;
				half ObjectData20_g76581 = Input_MeshHeight388_g76580;
				half Input_BoundsHeight390_g76580 = 1.0;
				half WorldData19_g76581 = ( Input_MeshHeight388_g76580 * Input_MeshHeight388_g76580 * Input_BoundsHeight390_g76580 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76581 = WorldData19_g76581;
				#else
				float staticSwitch14_g76581 = ObjectData20_g76581;
				#endif
				half Final_Motion10_Mask321_g76580 = ( staticSwitch14_g76581 * 2.0 );
				half Motion_10_Amplitude2258_g76519 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76580 = Motion_10_Amplitude2258_g76519;
				half Global_MotionValue640_g76580 = TVE_MotionValue_10;
				half2 Final_Bending631_g76580 = ( lerpResult516_g76580 * ( Final_Motion10_Mask321_g76580 * Input_BendingAmplitude376_g76580 * Input_WindPower449_g76580 * Input_WindPower449_g76580 * Global_MotionValue640_g76580 ) );
				float2 appendResult433_g76549 = (float2(break322_g76549.x , break322_g76549.y));
				float2 temp_output_436_0_g76549 = (appendResult433_g76549*2.0 + -1.0);
				float2 break441_g76549 = temp_output_436_0_g76549;
				float3 appendResult440_g76549 = (float3(break441_g76549.x , 0.0 , break441_g76549.y));
				half2 Global_React_DirectionOS4574_g76519 = (( mul( unity_WorldToObject, float4( appendResult440_g76549 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76580 = Global_React_DirectionOS4574_g76519;
				float clampResult17_g76583 = clamp( Input_MeshHeight388_g76580 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76582 = 0.0;
				half Input_InteractionUseMask62_g76580 = 0.0;
				float temp_output_10_0_g76582 = ( Input_InteractionUseMask62_g76580 - temp_output_7_0_g76582 );
				half Final_InteractionRemap594_g76580 = saturate( ( ( clampResult17_g76583 - temp_output_7_0_g76582 ) / ( temp_output_10_0_g76582 + 0.0001 ) ) );
				half ObjectData20_g76584 = Final_InteractionRemap594_g76580;
				half WorldData19_g76584 = ( Final_InteractionRemap594_g76580 * Final_InteractionRemap594_g76580 * Input_BoundsHeight390_g76580 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76584 = WorldData19_g76584;
				#else
				float staticSwitch14_g76584 = ObjectData20_g76584;
				#endif
				half Final_InteractionMask373_g76580 = ( staticSwitch14_g76584 * 2.0 );
				half Input_InteractionAmplitude58_g76580 = _InteractionAmplitude;
				half2 Final_Interaction632_g76580 = ( Input_React_DirectionOS358_g76580 * Final_InteractionMask373_g76580 * Input_InteractionAmplitude58_g76580 );
				half Global_React_Mask66_g76519 = ( break322_g76549.w * break322_g76549.w * break322_g76549.w * break322_g76549.w );
				float Input_InteractionGlobalMask330_g76580 = Global_React_Mask66_g76519;
				half Final_InteractionValue525_g76580 = saturate( ( Input_InteractionAmplitude58_g76580 * Input_InteractionGlobalMask330_g76580 ) );
				float2 lerpResult551_g76580 = lerp( Final_Bending631_g76580 , Final_Interaction632_g76580 , Final_InteractionValue525_g76580);
				float2 break364_g76580 = lerpResult551_g76580;
				float3 appendResult638_g76580 = (float3(break364_g76580.x , 0.0 , break364_g76580.y));
				half3 Motion_10_Interaction216_g76519 = appendResult638_g76580;
				half3 Angle44_g76575 = Motion_10_Interaction216_g76519;
				half Angle44_g76576 = (Angle44_g76575).z;
				half3 VertexPos40_g76577 = ( VertexPosRotationAxis50_g76576 + ( VertexPosOtherAxis82_g76576 * cos( Angle44_g76576 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76576 ) * sin( Angle44_g76576 ) ) );
				float3 appendResult74_g76577 = (float3(0.0 , 0.0 , VertexPos40_g76577.z));
				half3 VertexPosRotationAxis50_g76577 = appendResult74_g76577;
				float3 break84_g76577 = VertexPos40_g76577;
				float3 appendResult81_g76577 = (float3(break84_g76577.x , break84_g76577.y , 0.0));
				half3 VertexPosOtherAxis82_g76577 = appendResult81_g76577;
				half Angle44_g76577 = -(Angle44_g76575).x;
				float3 Vertex_Motion_Object833_g76519 = ( VertexPosRotationAxis50_g76577 + ( VertexPosOtherAxis82_g76577 * cos( Angle44_g76577 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76577 ) * sin( Angle44_g76577 ) ) );
				float temp_output_84_0_g76526 = _LayerVertexValue;
				float temp_output_19_0_g76530 = TVE_VertexUsage[(int)temp_output_84_0_g76526];
				float4 temp_output_94_19_g76526 = TVE_VertexCoords;
				half2 UV97_g76526 = ( (temp_output_94_19_g76526).zw + ( (temp_output_94_19_g76526).xy * (ObjectPosition4422_g76519).xz ) );
				float4 tex2DArrayNode50_g76526 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g76526,temp_output_84_0_g76526), 0.0 );
				float4 temp_output_17_0_g76530 = tex2DArrayNode50_g76526;
				float4 temp_output_111_19_g76526 = TVE_VertexParams;
				float4 temp_output_3_0_g76530 = temp_output_111_19_g76526;
				float4 ifLocalVar18_g76530 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76530 >= 0.5 )
				ifLocalVar18_g76530 = temp_output_17_0_g76530;
				else
				ifLocalVar18_g76530 = temp_output_3_0_g76530;
				float4 lerpResult22_g76530 = lerp( temp_output_3_0_g76530 , temp_output_17_0_g76530 , temp_output_19_0_g76530);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76530 = lerpResult22_g76530;
				#else
				float4 staticSwitch24_g76530 = ifLocalVar18_g76530;
				#endif
				half4 Global_Vertex_Params4413_g76519 = staticSwitch24_g76530;
				float4 break322_g76548 = Global_Vertex_Params4413_g76519;
				half Global_Vertex_Size174_g76519 = saturate( break322_g76548.w );
				float lerpResult346_g76519 = lerp( 1.0 , Global_Vertex_Size174_g76519 , _GlobalSize);
				float3 appendResult3480_g76519 = (float3(lerpResult346_g76519 , lerpResult346_g76519 , lerpResult346_g76519));
				half3 Vertex_Size1741_g76519 = appendResult3480_g76519;
				float3 Vertex_SizeFade1740_g76519 = half3(1,1,1);
				half IsInitialized3811_g76519 = _IsInitialized;
				float3 lerpResult16_g76571 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g76519 * Vertex_Size1741_g76519 * Vertex_SizeFade1740_g76519 ) - VertexPosition3564_g76519 ) * IsInitialized3811_g76519 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g76519 = ( lerpResult16_g76571 + _DisableSRPBatcher );
				
				o.ase_texcoord10.xyz = vertexToFrag4543_g76519;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.w = 0;

				v.vertex.xyz += Final_VertexPosition890_g76519;
				o.pos = UnityObjectToClipPos(v.vertex);

				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				#ifdef DYNAMICLIGHTMAP_ON
				o.lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				#ifdef LIGHTMAP_ON
				o.lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				#ifndef LIGHTMAP_ON
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						o.sh = 0;
						#ifdef VERTEXLIGHT_ON
						o.sh += Shade4PointLights (
							unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
							unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
							unity_4LightAtten0, worldPos, worldNormal);
						#endif
						o.sh = ShadeSHPerVertex (worldNormal, o.sh);
					#endif
				#endif

				#if UNITY_VERSION >= 201810
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#else
					UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
				#endif
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}

			fixed4 frag_surf (v2f_surf IN, out float outDepth : SV_Depth ) : SV_Target {
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif

				float4 clipPos = 0;
				float3 worldPos = 0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, clipPos, worldPos, IN.UVsFrame199, IN.UVsFrame299, IN.UVsFrame399, IN.octaframe99, IN.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g76519 = o.Albedo;
				half3 Main_Albedo3817_g76519 = ( Main_Albedo_Raw4295_g76519 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g76519 = float3(1,1,1);
				float4 break3589_g76519 = output0;
				half Main_Mask_Occlusion3712_g76519 = break3589_g76519.g;
				float3 lerpResult4779_g76519 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g76519);
				half3 Occlusion_Color4789_g76519 = lerpResult4779_g76519;
				half3 Main_Albedo_Tinted4791_g76519 = ( Main_Albedo3817_g76519 * Tint_Noise_Color5005_g76519 * Occlusion_Color4789_g76519 );
				float3 temp_output_3_0_g76573 = Main_Albedo_Tinted4791_g76519;
				float dotResult20_g76573 = dot( temp_output_3_0_g76573 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g76519 = dotResult20_g76573;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g76519).xxx;
				float temp_output_82_0_g76538 = _LayerColorsValue;
				float temp_output_19_0_g76542 = TVE_ColorsUsage[(int)temp_output_82_0_g76538];
				float4 temp_output_91_19_g76538 = TVE_ColorsCoords;
				float3 WorldPosition4027_g76519 = worldPos;
				float3 vertexToFrag4543_g76519 = IN.ase_texcoord10.xyz;
				float3 ObjectPosition4422_g76519 = vertexToFrag4543_g76519;
				float3 lerpResult4478_g76519 = lerp( WorldPosition4027_g76519 , ObjectPosition4422_g76519 , _ColorsPositionMode);
				half2 UV94_g76538 = ( (temp_output_91_19_g76538).zw + ( (temp_output_91_19_g76538).xy * (lerpResult4478_g76519).xz ) );
				float4 tex2DArrayNode83_g76538 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76538,temp_output_82_0_g76538), 0.0 );
				float4 temp_output_17_0_g76542 = tex2DArrayNode83_g76538;
				float4 temp_output_92_86_g76538 = TVE_ColorsParams;
				float4 temp_output_3_0_g76542 = temp_output_92_86_g76538;
				float4 ifLocalVar18_g76542 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76542 >= 0.5 )
				ifLocalVar18_g76542 = temp_output_17_0_g76542;
				else
				ifLocalVar18_g76542 = temp_output_3_0_g76542;
				float4 lerpResult22_g76542 = lerp( temp_output_3_0_g76542 , temp_output_17_0_g76542 , temp_output_19_0_g76542);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76542 = lerpResult22_g76542;
				#else
				float4 staticSwitch24_g76542 = ifLocalVar18_g76542;
				#endif
				half4 Global_Colors_Params4558_g76519 = staticSwitch24_g76542;
				float4 temp_output_346_0_g76551 = Global_Colors_Params4558_g76519;
				half Global_Colors_A1701_g76519 = saturate( (temp_output_346_0_g76551).w );
				half Colors_Influence3998_g76519 = Global_Colors_A1701_g76519;
				float temp_output_4814_0_g76519 = ( 1.0 - Colors_Influence3998_g76519 );
				float3 lerpResult4004_g76519 = lerp( Main_Albedo_Tinted4791_g76519 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g76519 * temp_output_4814_0_g76519 ) ));
				half3 Global_Colors_RGB1700_g76519 = (temp_output_346_0_g76551).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76565 = 2.0;
				#else
				float staticSwitch1_g76565 = 4.594794;
				#endif
				half3 Colors_RGB3856_g76519 = ( Global_Colors_RGB1700_g76519 * staticSwitch1_g76565 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g76519 = break3589_g76519.b;
				half Colors_Value4022_g76519 = ( Main_Mask_Remap3609_g76519 * _GlobalColors );
				float3 ObjectPosition_Shifted4976_g76519 = ( ObjectPosition4422_g76519 - TVE_WorldOrigin );
				half3 Input_Position167_g76589 = ObjectPosition_Shifted4976_g76519;
				float dotResult156_g76589 = dot( (Input_Position167_g76589).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g76519 = _VertexDynamicMode;
				half Input_DynamicMode120_g76589 = Global_DynamicMode4535_g76519;
				float Postion_Random162_g76589 = ( sin( dotResult156_g76589 ) * ( 1.0 - Input_DynamicMode120_g76589 ) );
				half Main_Variation_Or_Metallic3607_g76519 = break3589_g76519.r;
				half Input_Variation124_g76589 = Main_Variation_Or_Metallic3607_g76519;
				half ObjectData20_g76591 = frac( ( Postion_Random162_g76589 + Input_Variation124_g76589 ) );
				half WorldData19_g76591 = Input_Variation124_g76589;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76591 = WorldData19_g76591;
				#else
				float staticSwitch14_g76591 = ObjectData20_g76591;
				#endif
				float temp_output_112_0_g76589 = staticSwitch14_g76591;
				float clampResult171_g76589 = clamp( temp_output_112_0_g76589 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g76519 = clampResult171_g76589;
				float lerpResult4092_g76519 = lerp( 1.0 , Global_VariationMesh4531_g76519 , _ColorsVariationValue);
				half Colors_Variation3999_g76519 = lerpResult4092_g76519;
				half Occlusion_Alpha4842_g76519 = _VertexOcclusionColor.a;
				float lerpResult5080_g76519 = lerp( Main_Mask_Occlusion3712_g76519 , ( 1.0 - Main_Mask_Occlusion3712_g76519 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g76519 = lerp( Occlusion_Alpha4842_g76519 , 1.0 , lerpResult5080_g76519);
				half Occlusion_Colors4856_g76519 = lerpResult5078_g76519;
				float3 temp_output_3_0_g76574 = ( Main_Albedo3817_g76519 * Tint_Noise_Color5005_g76519 );
				float dotResult20_g76574 = dot( temp_output_3_0_g76574 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g76519 = clamp( saturate( ( dotResult20_g76574 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g76519 = clampResult4925_g76519;
				float temp_output_7_0_g76567 = 0.1;
				float temp_output_10_0_g76567 = ( 0.2 - temp_output_7_0_g76567 );
				float lerpResult16_g76566 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g76519 * Colors_Variation3999_g76519 * Colors_Influence3998_g76519 * Occlusion_Colors4856_g76519 * Main_Albedo_Globals4847_g76519 ) - temp_output_7_0_g76567 ) / ( temp_output_10_0_g76567 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g76519 = lerp( Main_Albedo_Tinted4791_g76519 , ( lerpResult4004_g76519 * Colors_RGB3856_g76519 ) , lerpResult16_g76566);
				half3 Blend_Albedo_Colored3711_g76519 = lerpResult4007_g76519;
				half3 Global_OverlayColor1758_g76519 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76532 = _LayerExtrasValue;
				float temp_output_19_0_g76536 = TVE_ExtrasUsage[(int)temp_output_84_0_g76532];
				float4 temp_output_93_19_g76532 = TVE_ExtrasCoords;
				float3 lerpResult4483_g76519 = lerp( WorldPosition4027_g76519 , ObjectPosition4422_g76519 , _ExtrasPositionMode);
				half2 UV96_g76532 = ( (temp_output_93_19_g76532).zw + ( (temp_output_93_19_g76532).xy * (lerpResult4483_g76519).xz ) );
				float4 tex2DArrayNode48_g76532 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76532,temp_output_84_0_g76532), 0.0 );
				float4 temp_output_17_0_g76536 = tex2DArrayNode48_g76532;
				float4 temp_output_94_85_g76532 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76536 = temp_output_94_85_g76532;
				float4 ifLocalVar18_g76536 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76536 >= 0.5 )
				ifLocalVar18_g76536 = temp_output_17_0_g76536;
				else
				ifLocalVar18_g76536 = temp_output_3_0_g76536;
				float4 lerpResult22_g76536 = lerp( temp_output_3_0_g76536 , temp_output_17_0_g76536 , temp_output_19_0_g76536);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76536 = lerpResult22_g76536;
				#else
				float4 staticSwitch24_g76536 = ifLocalVar18_g76536;
				#endif
				half4 Global_Extras_Params4559_g76519 = staticSwitch24_g76536;
				float4 break456_g76586 = Global_Extras_Params4559_g76519;
				half Global_Extras_Overlay156_g76519 = break456_g76586.z;
				float lerpResult3746_g76519 = lerp( 1.0 , Global_VariationMesh4531_g76519 , _OverlayVariationValue);
				half Overlay_Variation3739_g76519 = lerpResult3746_g76519;
				half Overlay_Value4803_g76519 = ( _GlobalOverlay * Global_Extras_Overlay156_g76519 * Overlay_Variation3739_g76519 );
				half3 World_Normal3638_g76519 = o.Normal;
				float lerpResult4683_g76519 = lerp( 1.0 , saturate( (World_Normal3638_g76519).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g76519 = lerpResult4683_g76519;
				half Overlay_Shading4874_g76519 = Main_Albedo_Globals4847_g76519;
				float lerpResult5086_g76519 = lerp( Main_Mask_Occlusion3712_g76519 , ( 1.0 - Main_Mask_Occlusion3712_g76519 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g76519 = lerp( Occlusion_Alpha4842_g76519 , 1.0 , lerpResult5086_g76519);
				half Occlusion_Overlay4860_g76519 = lerpResult5084_g76519;
				float temp_output_7_0_g76568 = 0.1;
				float temp_output_10_0_g76568 = ( 0.2 - temp_output_7_0_g76568 );
				half Overlay_Mask3762_g76519 = saturate( ( ( ( Overlay_Value4803_g76519 * Overlay_Projection4636_g76519 * Overlay_Shading4874_g76519 * Occlusion_Overlay4860_g76519 ) - temp_output_7_0_g76568 ) / ( temp_output_10_0_g76568 + 0.0001 ) ) );
				float3 lerpResult3875_g76519 = lerp( Blend_Albedo_Colored3711_g76519 , Global_OverlayColor1758_g76519 , Overlay_Mask3762_g76519);
				half3 Blend_Albedo_Overlay4100_g76519 = lerpResult3875_g76519;
				half Global_WetnessContrast4862_g76519 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76519 = break456_g76586.y;
				half Wetnness_Value4824_g76519 = ( Global_Extras_Wetness305_g76519 * _GlobalWetness );
				float3 lerpResult4833_g76519 = lerp( Blend_Albedo_Overlay4100_g76519 , ( Blend_Albedo_Overlay4100_g76519 * Blend_Albedo_Overlay4100_g76519 ) , ( Global_WetnessContrast4862_g76519 * Wetnness_Value4824_g76519 ));
				half3 Blend_Albedo_Wetness4830_g76519 = lerpResult4833_g76519;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g76519 = _Vector12;
				float3 temp_output_4907_0_g76519 = ( Blend_Albedo_Wetness4830_g76519 * Tint_Highlight_Color4905_g76519 );
				half3 Blend_Albedo_Subsurface3874_g76519 = temp_output_4907_0_g76519;
				half IsInitialized3811_g76519 = _IsInitialized;
				float3 lerpResult3815_g76519 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g76519 , IsInitialized3811_g76519);
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g76519 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g76519 = (output1).rgb;
				half Global_Extras_Emissive4408_g76519 = break456_g76586.x;
				float lerpResult4417_g76519 = lerp( 1.0 , Global_Extras_Emissive4408_g76519 , _GlobalEmissive);
				half Emissive_Value4941_g76519 = ( ( lerpResult4417_g76519 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g76519 = saturate( ( Emissive_Texture4942_g76519 + Emissive_Value4941_g76519 ) );
				float3 temp_output_3_0_g76585 = ( Emissive_Color4947_g76519 * Emissive_Mask5026_g76519 );
				float temp_output_15_0_g76585 = _emissive_intensity_value;
				float3 temp_output_23_0_g76585 = ( temp_output_3_0_g76585 * temp_output_15_0_g76585 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g76519 = temp_output_23_0_g76585;
				#else
				float3 staticSwitch5070_g76519 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g76519 = staticSwitch5070_g76519;
				
				float3 temp_cast_12 = (( 0.04 * _render_specular )).xxx;
				
				half Main_Mask_Smoothness3820_g76519 = break3589_g76519.a;
				half Main_Smoothness3838_g76519 = ( Main_Mask_Smoothness3820_g76519 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g76519 = ( 1.0 - Wetnness_Value4824_g76519 );
				half Blend_Smoothness_Wetness3898_g76519 = saturate( ( Main_Smoothness3838_g76519 + ( 1.0 - ( temp_output_4864_0_g76519 * temp_output_4864_0_g76519 ) ) ) );
				
				half3 Subsurface_Color3656_g76519 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness4830_g76519 );
				half Global_Subsurface4111_g76519 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface4959_g76519 = TVE_OverlaySubsurface;
				float lerpResult4960_g76519 = lerp( 1.0 , Global_OverlaySubsurface4959_g76519 , Overlay_Value4803_g76519);
				half Overlay_Subsurface4962_g76519 = lerpResult4960_g76519;
				half Subsurface_Intensity3684_g76519 = ( _SubsurfaceValue * Global_Subsurface4111_g76519 * Overlay_Subsurface4962_g76519 );
				float lerpResult5069_g76519 = lerp( 1.0 , Main_Mask_Remap3609_g76519 , _SubsurfaceMaskValue);
				half Subsurface_Mask3666_g76519 = lerpResult5069_g76519;
				half3 Subsurface_Translucency3659_g76519 = ( Subsurface_Color3656_g76519 * Subsurface_Intensity3684_g76519 * Subsurface_Mask3666_g76519 * 10.0 );
				
				float temp_output_3577_0_g76519 = o.Alpha;
				float localCustomAlphaClipAlways4430_g76519 = ( temp_output_3577_0_g76519 );
				half Global_Extras_Alpha1033_g76519 = saturate( break456_g76586.w );
				float lerpResult4544_g76519 = lerp( 0.0 , Global_VariationMesh4531_g76519 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g76519 = lerpResult4544_g76519;
				float lerpResult4053_g76519 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g76519 - Global_Alpha_Variation4546_g76519 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g76519 = lerpResult4053_g76519;
				float Alpha4430_g76519 = Alpha_Composite4102_g76519;
				{
				clip(Alpha4430_g76519 - 0.1);
				}
				half Final_Alpha4955_g76519 = localCustomAlphaClipAlways4430_g76519;
				
				fixed3 albedo = lerpResult3815_g76519;
				fixed3 normal = World_Normal3638_g76519;
				half3 emission = Final_Emissive4365_g76519;
				fixed3 specular = temp_cast_12;
				fixed metallic = 0;
				half smoothness = Blend_Smoothness_Wetness3898_g76519;
				half occlusion = 1;

				float3 Transmission = 1;
				float3 Translucency = Subsurface_Translucency3659_g76519;

				fixed alpha = Final_Alpha4955_g76519;
				fixed alphaClipThreshold = 0;
				float4 bakedGI = float4( 0, 0, 0, 0 );



				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif

				IN.pos.zw = clipPos.zw;
				outDepth = IN.pos.z;

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				fixed4 c = 0;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = _LightColor0.rgb;
				gi.light.dir = lightDir;

				UnityGIInput giInput;
				UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
				giInput.light = gi.light;
				giInput.worldPos = worldPos;
				giInput.worldViewDir = worldViewDir;
				giInput.atten = atten;
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
					giInput.lightmapUV = IN.lmap;
				#else
					giInput.lightmapUV = 0.0;
				#endif
				#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
					giInput.ambient = IN.sh;
				#else
					giInput.ambient.rgb = 0.0;
				#endif
				giInput.probeHDR[0] = unity_SpecCube0_HDR;
				giInput.probeHDR[1] = unity_SpecCube1_HDR;
				#if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif
				#if UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMax[0] = unity_SpecCube0_BoxMax;
					giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
					giInput.boxMax[1] = unity_SpecCube1_BoxMax;
					giInput.boxMin[1] = unity_SpecCube1_BoxMin;
					giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif

				#if defined(_SPECULAR_SETUP)
					LightingStandardSpecular_GI(o, giInput, gi);
					#if defined(CUSTOM_BAKED_GI)
						gi.indirect.diffuse = DecodeLightmapRGBM( bakedGI, 1 ) * EMISSIVE_RGBM_SCALE;
					#endif
					c += LightingStandardSpecular (o, worldViewDir, gi);
				#else
					LightingStandard_GI( o, giInput, gi );
					#if defined(CUSTOM_BAKED_GI)
						gi.indirect.diffuse = DecodeLightmapRGBM( bakedGI, 1) * EMISSIVE_RGBM_SCALE;
					#endif
					c += LightingStandard( o, worldViewDir, gi );
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp(_LightColor0.rgb, gi.light.color, shadow);
					#else
						float3 lightAtten = gi.light.color;
					#endif

					half3 transmission = max(0, -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
					c.rgb += o.Albedo * transmission;
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp(_LightColor0.rgb, gi.light.color, shadow);
					#else
						float3 lightAtten = gi.light.color;
					#endif

					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow(saturate(dot(worldViewDir, -lightDir)), scattering);
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				c.rgb += o.Emission;
				UNITY_APPLY_FOG(IN.fogCoord, c);
				return c;
			}

			ENDCG
		}

		Pass
		{
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			Blend One One

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#define ASE_TRANSLUCENCY 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma multi_compile_fwdadd_fullshadows

			#pragma multi_compile_fog
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_instancing
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#if !defined( UNITY_INSTANCED_SH )
				#define UNITY_INSTANCED_SH
			#endif
			#if !defined( UNITY_INSTANCED_LIGHTMAPSTS )
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#ifndef UNITY_PASS_FORWARDADD
			#define UNITY_PASS_FORWARDADD
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardUtils.cginc"

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_SUBSURFACE_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			uniform half _ImostorCat;
			uniform float _RenderSpecular;
			uniform half _RenderCoverage;
			uniform half _IsSubsurfaceShader;
			uniform float _IsPlantShader;
			uniform half _CategoryGlobal;
			uniform half _SpaceGlobalLayers;
			uniform half _CategoryOcclusion;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _VertexPivotMode;
			uniform half _SpaceGlobalLocals;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceMotionGlobals;
			uniform half _SpaceSubsurface;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _CategorySizeFade;
			uniform half _CategoryMotion;
			uniform half _CategoryEmissive;
			uniform half _CategorySubsurface;
			uniform half _CategoryNoise;
			uniform half4 _NoiseMaskRemap;
			uniform half _VegetationMode;
			uniform half _IsInitialized;
			uniform half _IsImpostorShader;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MessageOcclusion;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveIntensityMode;
			uniform half _EmissiveMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform half _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeed_10;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionAmplitude;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Mask);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Emissive);
			SamplerState sampler_Mask;
			SamplerState sampler_Emissive;
			uniform half4 _ImpostorColor;
			uniform half4 _VertexOcclusionColor;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _GlobalColors;
			uniform half _VertexDynamicMode;
			uniform half _ColorsVariationValue;
			uniform half _VertexOcclusionColorsMode;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _OverlayVariationValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _EmissiveColor;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform float _render_specular;
			uniform half _ImpostorSmoothnessValue;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;
			uniform half _AlphaVariationValue;
			uniform half _GlobalAlpha;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 ) 
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( vertex.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if ( defined(SHADERPASS) && (defined(SHADERPASS_DEPTHNORMALSONLY) && SHADERPASS == SHADERPASS_DEPTHNORMALSONLY) ) || defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				clipPos = UnityApplyLinearShadowBias( clipPos );
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			


			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif

			/*struct appdata_full {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID*/
			
			/*};*/

			struct v2f_surf {
				UNITY_POSITION(pos);
				#if UNITY_VERSION >= 201810
					UNITY_LIGHTING_COORDS(1,2)
				#else
					UNITY_SHADOW_COORDS(1)
				#endif
				UNITY_FOG_COORDS(3)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame199 : TEXCOORD5;
				float4 UVsFrame299 : TEXCOORD6;
				float4 UVsFrame399 : TEXCOORD7;
				float4 octaframe99 : TEXCOORD8;
				float4 viewPos99 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
			};

			v2f_surf vert_surf ( appdata_full v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame199, o.UVsFrame299, o.UVsFrame399, o.octaframe99, o.viewPos99 );
				float3 worldPosOut99 = mul( UNITY_MATRIX_I_V, float4( o.viewPos99.xyz, 1.0 ) ).xyz;
				float3 WorldPosition4027_g76519 = worldPosOut99;
				float3 worldToObj4970_g76519 = mul( unity_WorldToObject, float4( WorldPosition4027_g76519, 1 ) ).xyz;
				float3 VertexPosition3564_g76519 = worldToObj4970_g76519;
				half3 VertexPos40_g76575 = VertexPosition3564_g76519;
				half3 VertexPos40_g76576 = VertexPos40_g76575;
				float3 appendResult74_g76576 = (float3(VertexPos40_g76576.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76576 = appendResult74_g76576;
				float3 break84_g76576 = VertexPos40_g76576;
				float3 appendResult81_g76576 = (float3(0.0 , break84_g76576.y , break84_g76576.z));
				half3 VertexPosOtherAxis82_g76576 = appendResult81_g76576;
				float3 WorldPosition_Shifted4972_g76519 = ( WorldPosition4027_g76519 - TVE_WorldOrigin );
				float4x4 break19_g76559 = unity_ObjectToWorld;
				float3 appendResult20_g76559 = (float3(break19_g76559[ 0 ][ 3 ] , break19_g76559[ 1 ][ 3 ] , break19_g76559[ 2 ][ 3 ]));
				half3 ObjectData20_g76561 = appendResult20_g76559;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g76561 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76561 = WorldData19_g76561;
				#else
				float3 staticSwitch14_g76561 = ObjectData20_g76561;
				#endif
				float3 temp_output_114_0_g76559 = staticSwitch14_g76561;
				float3 vertexToFrag4543_g76519 = temp_output_114_0_g76559;
				float3 ObjectPosition4422_g76519 = vertexToFrag4543_g76519;
				float3 ObjectPosition_Shifted4976_g76519 = ( ObjectPosition4422_g76519 - TVE_WorldOrigin );
				float3 lerpResult4934_g76519 = lerp( WorldPosition_Shifted4972_g76519 , ObjectPosition_Shifted4976_g76519 , _MotionPosition_10);
				float3 Motion_10_Position4923_g76519 = lerpResult4934_g76519;
				half3 Input_Position419_g76544 = Motion_10_Position4923_g76519;
				float Input_MotionScale287_g76544 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g76544 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g76544 = (( Input_Position419_g76544 * Input_MotionScale287_g76544 * NoiseTex_Tilling735_g76544 * 0.0075 )).xz;
				float2 temp_output_447_0_g76549 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g76519 = temp_output_447_0_g76549;
				half2 Input_DirectionWS423_g76544 = Global_Wind_DirectionWS4464_g76519;
				float lerpResult128_g76545 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g76544 = _MotionSpeed_10;
				half Input_MotionVariation284_g76544 = 0.0;
				half Input_GlobalMeshVariation569_g76544 = 0.0;
				float temp_output_630_0_g76544 = ( ( ( lerpResult128_g76545 * Input_MotionSpeed62_g76544 ) + ( Input_MotionVariation284_g76544 * Input_GlobalMeshVariation569_g76544 ) ) * 0.03 );
				float temp_output_607_0_g76544 = frac( temp_output_630_0_g76544 );
				float4 lerpResult590_g76544 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g76544 + ( -Input_DirectionWS423_g76544 * temp_output_607_0_g76544 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g76544 + ( -Input_DirectionWS423_g76544 * frac( ( temp_output_630_0_g76544 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g76544 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g76544 = lerpResult590_g76544;
				float2 temp_output_645_0_g76544 = ((Noise_Complex703_g76544).rg*2.0 + -1.0);
				float2 break650_g76544 = temp_output_645_0_g76544;
				float3 appendResult649_g76544 = (float3(break650_g76544.x , 0.0 , break650_g76544.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g76519 = (( mul( unity_WorldToObject, float4( appendResult649_g76544 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76580 = Global_Noise_OS4572_g76519;
				float2 break448_g76549 = temp_output_447_0_g76549;
				float3 appendResult452_g76549 = (float3(break448_g76549.x , 0.0 , break448_g76549.y));
				half2 Global_Wind_DirectionOS4658_g76519 = (( mul( unity_WorldToObject, float4( appendResult452_g76549 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76580 = Global_Wind_DirectionOS4658_g76519;
				float temp_output_84_0_g76520 = _LayerMotionValue;
				float temp_output_19_0_g76524 = TVE_MotionUsage[(int)temp_output_84_0_g76520];
				float4 temp_output_91_19_g76520 = TVE_MotionCoords;
				half2 UV94_g76520 = ( (temp_output_91_19_g76520).zw + ( (temp_output_91_19_g76520).xy * (ObjectPosition4422_g76519).xz ) );
				float4 tex2DArrayNode50_g76520 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g76520,temp_output_84_0_g76520), 0.0 );
				float4 temp_output_17_0_g76524 = tex2DArrayNode50_g76520;
				float4 temp_output_112_19_g76520 = TVE_MotionParams;
				float4 temp_output_3_0_g76524 = temp_output_112_19_g76520;
				float4 ifLocalVar18_g76524 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76524 >= 0.5 )
				ifLocalVar18_g76524 = temp_output_17_0_g76524;
				else
				ifLocalVar18_g76524 = temp_output_3_0_g76524;
				float4 lerpResult22_g76524 = lerp( temp_output_3_0_g76524 , temp_output_17_0_g76524 , temp_output_19_0_g76524);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76524 = lerpResult22_g76524;
				#else
				float4 staticSwitch24_g76524 = ifLocalVar18_g76524;
				#endif
				half4 Global_Motion_Params4344_g76519 = staticSwitch24_g76524;
				float4 break322_g76549 = Global_Motion_Params4344_g76519;
				float lerpResult457_g76549 = lerp( break322_g76549.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g76549 = ( 1.0 - lerpResult457_g76549 );
				half Global_Wind_Power2223_g76519 = ( 1.0 - ( temp_output_459_0_g76549 * temp_output_459_0_g76549 ) );
				half Input_WindPower449_g76580 = Global_Wind_Power2223_g76519;
				float2 lerpResult516_g76580 = lerp( Input_Noise_DirectionOS487_g76580 , Input_Wind_DirectionOS458_g76580 , ( Input_WindPower449_g76580 * 0.6 ));
				half Mesh_Height1524_g76519 = saturate( ( VertexPosition3564_g76519.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76580 = Mesh_Height1524_g76519;
				half ObjectData20_g76581 = Input_MeshHeight388_g76580;
				half Input_BoundsHeight390_g76580 = 1.0;
				half WorldData19_g76581 = ( Input_MeshHeight388_g76580 * Input_MeshHeight388_g76580 * Input_BoundsHeight390_g76580 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76581 = WorldData19_g76581;
				#else
				float staticSwitch14_g76581 = ObjectData20_g76581;
				#endif
				half Final_Motion10_Mask321_g76580 = ( staticSwitch14_g76581 * 2.0 );
				half Motion_10_Amplitude2258_g76519 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76580 = Motion_10_Amplitude2258_g76519;
				half Global_MotionValue640_g76580 = TVE_MotionValue_10;
				half2 Final_Bending631_g76580 = ( lerpResult516_g76580 * ( Final_Motion10_Mask321_g76580 * Input_BendingAmplitude376_g76580 * Input_WindPower449_g76580 * Input_WindPower449_g76580 * Global_MotionValue640_g76580 ) );
				float2 appendResult433_g76549 = (float2(break322_g76549.x , break322_g76549.y));
				float2 temp_output_436_0_g76549 = (appendResult433_g76549*2.0 + -1.0);
				float2 break441_g76549 = temp_output_436_0_g76549;
				float3 appendResult440_g76549 = (float3(break441_g76549.x , 0.0 , break441_g76549.y));
				half2 Global_React_DirectionOS4574_g76519 = (( mul( unity_WorldToObject, float4( appendResult440_g76549 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76580 = Global_React_DirectionOS4574_g76519;
				float clampResult17_g76583 = clamp( Input_MeshHeight388_g76580 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76582 = 0.0;
				half Input_InteractionUseMask62_g76580 = 0.0;
				float temp_output_10_0_g76582 = ( Input_InteractionUseMask62_g76580 - temp_output_7_0_g76582 );
				half Final_InteractionRemap594_g76580 = saturate( ( ( clampResult17_g76583 - temp_output_7_0_g76582 ) / ( temp_output_10_0_g76582 + 0.0001 ) ) );
				half ObjectData20_g76584 = Final_InteractionRemap594_g76580;
				half WorldData19_g76584 = ( Final_InteractionRemap594_g76580 * Final_InteractionRemap594_g76580 * Input_BoundsHeight390_g76580 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76584 = WorldData19_g76584;
				#else
				float staticSwitch14_g76584 = ObjectData20_g76584;
				#endif
				half Final_InteractionMask373_g76580 = ( staticSwitch14_g76584 * 2.0 );
				half Input_InteractionAmplitude58_g76580 = _InteractionAmplitude;
				half2 Final_Interaction632_g76580 = ( Input_React_DirectionOS358_g76580 * Final_InteractionMask373_g76580 * Input_InteractionAmplitude58_g76580 );
				half Global_React_Mask66_g76519 = ( break322_g76549.w * break322_g76549.w * break322_g76549.w * break322_g76549.w );
				float Input_InteractionGlobalMask330_g76580 = Global_React_Mask66_g76519;
				half Final_InteractionValue525_g76580 = saturate( ( Input_InteractionAmplitude58_g76580 * Input_InteractionGlobalMask330_g76580 ) );
				float2 lerpResult551_g76580 = lerp( Final_Bending631_g76580 , Final_Interaction632_g76580 , Final_InteractionValue525_g76580);
				float2 break364_g76580 = lerpResult551_g76580;
				float3 appendResult638_g76580 = (float3(break364_g76580.x , 0.0 , break364_g76580.y));
				half3 Motion_10_Interaction216_g76519 = appendResult638_g76580;
				half3 Angle44_g76575 = Motion_10_Interaction216_g76519;
				half Angle44_g76576 = (Angle44_g76575).z;
				half3 VertexPos40_g76577 = ( VertexPosRotationAxis50_g76576 + ( VertexPosOtherAxis82_g76576 * cos( Angle44_g76576 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76576 ) * sin( Angle44_g76576 ) ) );
				float3 appendResult74_g76577 = (float3(0.0 , 0.0 , VertexPos40_g76577.z));
				half3 VertexPosRotationAxis50_g76577 = appendResult74_g76577;
				float3 break84_g76577 = VertexPos40_g76577;
				float3 appendResult81_g76577 = (float3(break84_g76577.x , break84_g76577.y , 0.0));
				half3 VertexPosOtherAxis82_g76577 = appendResult81_g76577;
				half Angle44_g76577 = -(Angle44_g76575).x;
				float3 Vertex_Motion_Object833_g76519 = ( VertexPosRotationAxis50_g76577 + ( VertexPosOtherAxis82_g76577 * cos( Angle44_g76577 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76577 ) * sin( Angle44_g76577 ) ) );
				float temp_output_84_0_g76526 = _LayerVertexValue;
				float temp_output_19_0_g76530 = TVE_VertexUsage[(int)temp_output_84_0_g76526];
				float4 temp_output_94_19_g76526 = TVE_VertexCoords;
				half2 UV97_g76526 = ( (temp_output_94_19_g76526).zw + ( (temp_output_94_19_g76526).xy * (ObjectPosition4422_g76519).xz ) );
				float4 tex2DArrayNode50_g76526 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g76526,temp_output_84_0_g76526), 0.0 );
				float4 temp_output_17_0_g76530 = tex2DArrayNode50_g76526;
				float4 temp_output_111_19_g76526 = TVE_VertexParams;
				float4 temp_output_3_0_g76530 = temp_output_111_19_g76526;
				float4 ifLocalVar18_g76530 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76530 >= 0.5 )
				ifLocalVar18_g76530 = temp_output_17_0_g76530;
				else
				ifLocalVar18_g76530 = temp_output_3_0_g76530;
				float4 lerpResult22_g76530 = lerp( temp_output_3_0_g76530 , temp_output_17_0_g76530 , temp_output_19_0_g76530);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76530 = lerpResult22_g76530;
				#else
				float4 staticSwitch24_g76530 = ifLocalVar18_g76530;
				#endif
				half4 Global_Vertex_Params4413_g76519 = staticSwitch24_g76530;
				float4 break322_g76548 = Global_Vertex_Params4413_g76519;
				half Global_Vertex_Size174_g76519 = saturate( break322_g76548.w );
				float lerpResult346_g76519 = lerp( 1.0 , Global_Vertex_Size174_g76519 , _GlobalSize);
				float3 appendResult3480_g76519 = (float3(lerpResult346_g76519 , lerpResult346_g76519 , lerpResult346_g76519));
				half3 Vertex_Size1741_g76519 = appendResult3480_g76519;
				float3 Vertex_SizeFade1740_g76519 = half3(1,1,1);
				half IsInitialized3811_g76519 = _IsInitialized;
				float3 lerpResult16_g76571 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g76519 * Vertex_Size1741_g76519 * Vertex_SizeFade1740_g76519 ) - VertexPosition3564_g76519 ) * IsInitialized3811_g76519 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g76519 = ( lerpResult16_g76571 + _DisableSRPBatcher );
				
				o.ase_texcoord10.xyz = vertexToFrag4543_g76519;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.w = 0;

				v.vertex.xyz += Final_VertexPosition890_g76519;
				o.pos = UnityObjectToClipPos(v.vertex);

				#if UNITY_VERSION >= 201810
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#else
					UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
				#endif
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}

			fixed4 frag_surf ( v2f_surf IN, out float outDepth : SV_Depth  ) : SV_Target {
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif
				float4 clipPos = 0;
				float3 worldPos = 0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, clipPos, worldPos, IN.UVsFrame199, IN.UVsFrame299, IN.UVsFrame399, IN.octaframe99, IN.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g76519 = o.Albedo;
				half3 Main_Albedo3817_g76519 = ( Main_Albedo_Raw4295_g76519 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g76519 = float3(1,1,1);
				float4 break3589_g76519 = output0;
				half Main_Mask_Occlusion3712_g76519 = break3589_g76519.g;
				float3 lerpResult4779_g76519 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g76519);
				half3 Occlusion_Color4789_g76519 = lerpResult4779_g76519;
				half3 Main_Albedo_Tinted4791_g76519 = ( Main_Albedo3817_g76519 * Tint_Noise_Color5005_g76519 * Occlusion_Color4789_g76519 );
				float3 temp_output_3_0_g76573 = Main_Albedo_Tinted4791_g76519;
				float dotResult20_g76573 = dot( temp_output_3_0_g76573 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g76519 = dotResult20_g76573;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g76519).xxx;
				float temp_output_82_0_g76538 = _LayerColorsValue;
				float temp_output_19_0_g76542 = TVE_ColorsUsage[(int)temp_output_82_0_g76538];
				float4 temp_output_91_19_g76538 = TVE_ColorsCoords;
				float3 WorldPosition4027_g76519 = worldPos;
				float3 vertexToFrag4543_g76519 = IN.ase_texcoord10.xyz;
				float3 ObjectPosition4422_g76519 = vertexToFrag4543_g76519;
				float3 lerpResult4478_g76519 = lerp( WorldPosition4027_g76519 , ObjectPosition4422_g76519 , _ColorsPositionMode);
				half2 UV94_g76538 = ( (temp_output_91_19_g76538).zw + ( (temp_output_91_19_g76538).xy * (lerpResult4478_g76519).xz ) );
				float4 tex2DArrayNode83_g76538 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76538,temp_output_82_0_g76538), 0.0 );
				float4 temp_output_17_0_g76542 = tex2DArrayNode83_g76538;
				float4 temp_output_92_86_g76538 = TVE_ColorsParams;
				float4 temp_output_3_0_g76542 = temp_output_92_86_g76538;
				float4 ifLocalVar18_g76542 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76542 >= 0.5 )
				ifLocalVar18_g76542 = temp_output_17_0_g76542;
				else
				ifLocalVar18_g76542 = temp_output_3_0_g76542;
				float4 lerpResult22_g76542 = lerp( temp_output_3_0_g76542 , temp_output_17_0_g76542 , temp_output_19_0_g76542);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76542 = lerpResult22_g76542;
				#else
				float4 staticSwitch24_g76542 = ifLocalVar18_g76542;
				#endif
				half4 Global_Colors_Params4558_g76519 = staticSwitch24_g76542;
				float4 temp_output_346_0_g76551 = Global_Colors_Params4558_g76519;
				half Global_Colors_A1701_g76519 = saturate( (temp_output_346_0_g76551).w );
				half Colors_Influence3998_g76519 = Global_Colors_A1701_g76519;
				float temp_output_4814_0_g76519 = ( 1.0 - Colors_Influence3998_g76519 );
				float3 lerpResult4004_g76519 = lerp( Main_Albedo_Tinted4791_g76519 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g76519 * temp_output_4814_0_g76519 ) ));
				half3 Global_Colors_RGB1700_g76519 = (temp_output_346_0_g76551).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76565 = 2.0;
				#else
				float staticSwitch1_g76565 = 4.594794;
				#endif
				half3 Colors_RGB3856_g76519 = ( Global_Colors_RGB1700_g76519 * staticSwitch1_g76565 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g76519 = break3589_g76519.b;
				half Colors_Value4022_g76519 = ( Main_Mask_Remap3609_g76519 * _GlobalColors );
				float3 ObjectPosition_Shifted4976_g76519 = ( ObjectPosition4422_g76519 - TVE_WorldOrigin );
				half3 Input_Position167_g76589 = ObjectPosition_Shifted4976_g76519;
				float dotResult156_g76589 = dot( (Input_Position167_g76589).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g76519 = _VertexDynamicMode;
				half Input_DynamicMode120_g76589 = Global_DynamicMode4535_g76519;
				float Postion_Random162_g76589 = ( sin( dotResult156_g76589 ) * ( 1.0 - Input_DynamicMode120_g76589 ) );
				half Main_Variation_Or_Metallic3607_g76519 = break3589_g76519.r;
				half Input_Variation124_g76589 = Main_Variation_Or_Metallic3607_g76519;
				half ObjectData20_g76591 = frac( ( Postion_Random162_g76589 + Input_Variation124_g76589 ) );
				half WorldData19_g76591 = Input_Variation124_g76589;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76591 = WorldData19_g76591;
				#else
				float staticSwitch14_g76591 = ObjectData20_g76591;
				#endif
				float temp_output_112_0_g76589 = staticSwitch14_g76591;
				float clampResult171_g76589 = clamp( temp_output_112_0_g76589 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g76519 = clampResult171_g76589;
				float lerpResult4092_g76519 = lerp( 1.0 , Global_VariationMesh4531_g76519 , _ColorsVariationValue);
				half Colors_Variation3999_g76519 = lerpResult4092_g76519;
				half Occlusion_Alpha4842_g76519 = _VertexOcclusionColor.a;
				float lerpResult5080_g76519 = lerp( Main_Mask_Occlusion3712_g76519 , ( 1.0 - Main_Mask_Occlusion3712_g76519 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g76519 = lerp( Occlusion_Alpha4842_g76519 , 1.0 , lerpResult5080_g76519);
				half Occlusion_Colors4856_g76519 = lerpResult5078_g76519;
				float3 temp_output_3_0_g76574 = ( Main_Albedo3817_g76519 * Tint_Noise_Color5005_g76519 );
				float dotResult20_g76574 = dot( temp_output_3_0_g76574 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g76519 = clamp( saturate( ( dotResult20_g76574 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g76519 = clampResult4925_g76519;
				float temp_output_7_0_g76567 = 0.1;
				float temp_output_10_0_g76567 = ( 0.2 - temp_output_7_0_g76567 );
				float lerpResult16_g76566 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g76519 * Colors_Variation3999_g76519 * Colors_Influence3998_g76519 * Occlusion_Colors4856_g76519 * Main_Albedo_Globals4847_g76519 ) - temp_output_7_0_g76567 ) / ( temp_output_10_0_g76567 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g76519 = lerp( Main_Albedo_Tinted4791_g76519 , ( lerpResult4004_g76519 * Colors_RGB3856_g76519 ) , lerpResult16_g76566);
				half3 Blend_Albedo_Colored3711_g76519 = lerpResult4007_g76519;
				half3 Global_OverlayColor1758_g76519 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76532 = _LayerExtrasValue;
				float temp_output_19_0_g76536 = TVE_ExtrasUsage[(int)temp_output_84_0_g76532];
				float4 temp_output_93_19_g76532 = TVE_ExtrasCoords;
				float3 lerpResult4483_g76519 = lerp( WorldPosition4027_g76519 , ObjectPosition4422_g76519 , _ExtrasPositionMode);
				half2 UV96_g76532 = ( (temp_output_93_19_g76532).zw + ( (temp_output_93_19_g76532).xy * (lerpResult4483_g76519).xz ) );
				float4 tex2DArrayNode48_g76532 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76532,temp_output_84_0_g76532), 0.0 );
				float4 temp_output_17_0_g76536 = tex2DArrayNode48_g76532;
				float4 temp_output_94_85_g76532 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76536 = temp_output_94_85_g76532;
				float4 ifLocalVar18_g76536 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76536 >= 0.5 )
				ifLocalVar18_g76536 = temp_output_17_0_g76536;
				else
				ifLocalVar18_g76536 = temp_output_3_0_g76536;
				float4 lerpResult22_g76536 = lerp( temp_output_3_0_g76536 , temp_output_17_0_g76536 , temp_output_19_0_g76536);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76536 = lerpResult22_g76536;
				#else
				float4 staticSwitch24_g76536 = ifLocalVar18_g76536;
				#endif
				half4 Global_Extras_Params4559_g76519 = staticSwitch24_g76536;
				float4 break456_g76586 = Global_Extras_Params4559_g76519;
				half Global_Extras_Overlay156_g76519 = break456_g76586.z;
				float lerpResult3746_g76519 = lerp( 1.0 , Global_VariationMesh4531_g76519 , _OverlayVariationValue);
				half Overlay_Variation3739_g76519 = lerpResult3746_g76519;
				half Overlay_Value4803_g76519 = ( _GlobalOverlay * Global_Extras_Overlay156_g76519 * Overlay_Variation3739_g76519 );
				half3 World_Normal3638_g76519 = o.Normal;
				float lerpResult4683_g76519 = lerp( 1.0 , saturate( (World_Normal3638_g76519).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g76519 = lerpResult4683_g76519;
				half Overlay_Shading4874_g76519 = Main_Albedo_Globals4847_g76519;
				float lerpResult5086_g76519 = lerp( Main_Mask_Occlusion3712_g76519 , ( 1.0 - Main_Mask_Occlusion3712_g76519 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g76519 = lerp( Occlusion_Alpha4842_g76519 , 1.0 , lerpResult5086_g76519);
				half Occlusion_Overlay4860_g76519 = lerpResult5084_g76519;
				float temp_output_7_0_g76568 = 0.1;
				float temp_output_10_0_g76568 = ( 0.2 - temp_output_7_0_g76568 );
				half Overlay_Mask3762_g76519 = saturate( ( ( ( Overlay_Value4803_g76519 * Overlay_Projection4636_g76519 * Overlay_Shading4874_g76519 * Occlusion_Overlay4860_g76519 ) - temp_output_7_0_g76568 ) / ( temp_output_10_0_g76568 + 0.0001 ) ) );
				float3 lerpResult3875_g76519 = lerp( Blend_Albedo_Colored3711_g76519 , Global_OverlayColor1758_g76519 , Overlay_Mask3762_g76519);
				half3 Blend_Albedo_Overlay4100_g76519 = lerpResult3875_g76519;
				half Global_WetnessContrast4862_g76519 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76519 = break456_g76586.y;
				half Wetnness_Value4824_g76519 = ( Global_Extras_Wetness305_g76519 * _GlobalWetness );
				float3 lerpResult4833_g76519 = lerp( Blend_Albedo_Overlay4100_g76519 , ( Blend_Albedo_Overlay4100_g76519 * Blend_Albedo_Overlay4100_g76519 ) , ( Global_WetnessContrast4862_g76519 * Wetnness_Value4824_g76519 ));
				half3 Blend_Albedo_Wetness4830_g76519 = lerpResult4833_g76519;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g76519 = _Vector12;
				float3 temp_output_4907_0_g76519 = ( Blend_Albedo_Wetness4830_g76519 * Tint_Highlight_Color4905_g76519 );
				half3 Blend_Albedo_Subsurface3874_g76519 = temp_output_4907_0_g76519;
				half IsInitialized3811_g76519 = _IsInitialized;
				float3 lerpResult3815_g76519 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g76519 , IsInitialized3811_g76519);
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g76519 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g76519 = (output1).rgb;
				half Global_Extras_Emissive4408_g76519 = break456_g76586.x;
				float lerpResult4417_g76519 = lerp( 1.0 , Global_Extras_Emissive4408_g76519 , _GlobalEmissive);
				half Emissive_Value4941_g76519 = ( ( lerpResult4417_g76519 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g76519 = saturate( ( Emissive_Texture4942_g76519 + Emissive_Value4941_g76519 ) );
				float3 temp_output_3_0_g76585 = ( Emissive_Color4947_g76519 * Emissive_Mask5026_g76519 );
				float temp_output_15_0_g76585 = _emissive_intensity_value;
				float3 temp_output_23_0_g76585 = ( temp_output_3_0_g76585 * temp_output_15_0_g76585 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g76519 = temp_output_23_0_g76585;
				#else
				float3 staticSwitch5070_g76519 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g76519 = staticSwitch5070_g76519;
				
				float3 temp_cast_12 = (( 0.04 * _render_specular )).xxx;
				
				half Main_Mask_Smoothness3820_g76519 = break3589_g76519.a;
				half Main_Smoothness3838_g76519 = ( Main_Mask_Smoothness3820_g76519 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g76519 = ( 1.0 - Wetnness_Value4824_g76519 );
				half Blend_Smoothness_Wetness3898_g76519 = saturate( ( Main_Smoothness3838_g76519 + ( 1.0 - ( temp_output_4864_0_g76519 * temp_output_4864_0_g76519 ) ) ) );
				
				half3 Subsurface_Color3656_g76519 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness4830_g76519 );
				half Global_Subsurface4111_g76519 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface4959_g76519 = TVE_OverlaySubsurface;
				float lerpResult4960_g76519 = lerp( 1.0 , Global_OverlaySubsurface4959_g76519 , Overlay_Value4803_g76519);
				half Overlay_Subsurface4962_g76519 = lerpResult4960_g76519;
				half Subsurface_Intensity3684_g76519 = ( _SubsurfaceValue * Global_Subsurface4111_g76519 * Overlay_Subsurface4962_g76519 );
				float lerpResult5069_g76519 = lerp( 1.0 , Main_Mask_Remap3609_g76519 , _SubsurfaceMaskValue);
				half Subsurface_Mask3666_g76519 = lerpResult5069_g76519;
				half3 Subsurface_Translucency3659_g76519 = ( Subsurface_Color3656_g76519 * Subsurface_Intensity3684_g76519 * Subsurface_Mask3666_g76519 * 10.0 );
				
				float temp_output_3577_0_g76519 = o.Alpha;
				float localCustomAlphaClipAlways4430_g76519 = ( temp_output_3577_0_g76519 );
				half Global_Extras_Alpha1033_g76519 = saturate( break456_g76586.w );
				float lerpResult4544_g76519 = lerp( 0.0 , Global_VariationMesh4531_g76519 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g76519 = lerpResult4544_g76519;
				float lerpResult4053_g76519 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g76519 - Global_Alpha_Variation4546_g76519 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g76519 = lerpResult4053_g76519;
				float Alpha4430_g76519 = Alpha_Composite4102_g76519;
				{
				clip(Alpha4430_g76519 - 0.1);
				}
				half Final_Alpha4955_g76519 = localCustomAlphaClipAlways4430_g76519;
				
				fixed3 albedo = lerpResult3815_g76519;
				fixed3 normal = World_Normal3638_g76519;
				half3 emission = Final_Emissive4365_g76519;
				fixed3 specular = temp_cast_12;
				fixed metallic = 0;
				half smoothness = Blend_Smoothness_Wetness3898_g76519;
				half occlusion = 1;

				float3 Transmission = 1;
				float3 Translucency = Subsurface_Translucency3659_g76519;

				fixed alpha = Final_Alpha4955_g76519;
				fixed alphaClipThreshold = 0;

				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif

				IN.pos.zw = clipPos.zw;
				outDepth = IN.pos.z;

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				fixed4 c = 0;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = _LightColor0.rgb;
				gi.light.dir = lightDir;
				gi.light.color *= atten;
				#if defined(_SPECULAR_SETUP)
					c += LightingStandardSpecular( o, worldViewDir, gi );
				#else
					c += LightingStandard( o, worldViewDir, gi );
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp(_LightColor0.rgb, gi.light.color, shadow);
					#else
						float3 lightAtten = gi.light.color;
					#endif

					half3 transmission = max(0, -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
					c.rgb += o.Albedo * transmission;
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp(_LightColor0.rgb, gi.light.color, shadow);
					#else
						float3 lightAtten = gi.light.color;
					#endif

					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow(saturate(dot(worldViewDir, -lightDir)), scattering);
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				UNITY_APPLY_FOG(IN.fogCoord, c);
				return c;
			}
			ENDCG
		}

		Pass
		{
			Name "Meta"
			Tags { "LightMode"="Meta" }
			Cull Off

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#define ASE_TRANSLUCENCY 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_instancing
			#pragma shader_feature EDITOR_VISUALIZATION
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#if !defined( UNITY_INSTANCED_SH )
				#define UNITY_INSTANCED_SH
			#endif
			#if !defined( UNITY_INSTANCED_LIGHTMAPSTS )
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#ifndef UNITY_PASS_META
			#define UNITY_PASS_META
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "UnityStandardUtils.cginc"
			#include "UnityMetaPass.cginc"

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_SUBSURFACE_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			uniform half _ImostorCat;
			uniform float _RenderSpecular;
			uniform half _RenderCoverage;
			uniform half _IsSubsurfaceShader;
			uniform float _IsPlantShader;
			uniform half _CategoryGlobal;
			uniform half _SpaceGlobalLayers;
			uniform half _CategoryOcclusion;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _VertexPivotMode;
			uniform half _SpaceGlobalLocals;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceMotionGlobals;
			uniform half _SpaceSubsurface;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _CategorySizeFade;
			uniform half _CategoryMotion;
			uniform half _CategoryEmissive;
			uniform half _CategorySubsurface;
			uniform half _CategoryNoise;
			uniform half4 _NoiseMaskRemap;
			uniform half _VegetationMode;
			uniform half _IsInitialized;
			uniform half _IsImpostorShader;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MessageOcclusion;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveIntensityMode;
			uniform half _EmissiveMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform half _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeed_10;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionAmplitude;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Mask);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Emissive);
			SamplerState sampler_Mask;
			SamplerState sampler_Emissive;
			uniform half4 _ImpostorColor;
			uniform half4 _VertexOcclusionColor;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _GlobalColors;
			uniform half _VertexDynamicMode;
			uniform half _ColorsVariationValue;
			uniform half _VertexOcclusionColorsMode;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _OverlayVariationValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _EmissiveColor;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform float _render_specular;
			uniform half _ImpostorSmoothnessValue;
			uniform half _AlphaVariationValue;
			uniform half _GlobalAlpha;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 ) 
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( vertex.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if ( defined(SHADERPASS) && (defined(SHADERPASS_DEPTHNORMALSONLY) && SHADERPASS == SHADERPASS_DEPTHNORMALSONLY) ) || defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				clipPos = UnityApplyLinearShadowBias( clipPos );
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			


			/*struct appdata_full {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID*/
			
			/*};*/

			struct v2f_surf {
				UNITY_POSITION(pos);
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame199 : TEXCOORD5;
				float4 UVsFrame299 : TEXCOORD6;
				float4 UVsFrame399 : TEXCOORD7;
				float4 octaframe99 : TEXCOORD8;
				float4 viewPos99 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
			};

			v2f_surf vert_surf (appdata_full v ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame199, o.UVsFrame299, o.UVsFrame399, o.octaframe99, o.viewPos99 );
				float3 worldPosOut99 = mul( UNITY_MATRIX_I_V, float4( o.viewPos99.xyz, 1.0 ) ).xyz;
				float3 WorldPosition4027_g76519 = worldPosOut99;
				float3 worldToObj4970_g76519 = mul( unity_WorldToObject, float4( WorldPosition4027_g76519, 1 ) ).xyz;
				float3 VertexPosition3564_g76519 = worldToObj4970_g76519;
				half3 VertexPos40_g76575 = VertexPosition3564_g76519;
				half3 VertexPos40_g76576 = VertexPos40_g76575;
				float3 appendResult74_g76576 = (float3(VertexPos40_g76576.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76576 = appendResult74_g76576;
				float3 break84_g76576 = VertexPos40_g76576;
				float3 appendResult81_g76576 = (float3(0.0 , break84_g76576.y , break84_g76576.z));
				half3 VertexPosOtherAxis82_g76576 = appendResult81_g76576;
				float3 WorldPosition_Shifted4972_g76519 = ( WorldPosition4027_g76519 - TVE_WorldOrigin );
				float4x4 break19_g76559 = unity_ObjectToWorld;
				float3 appendResult20_g76559 = (float3(break19_g76559[ 0 ][ 3 ] , break19_g76559[ 1 ][ 3 ] , break19_g76559[ 2 ][ 3 ]));
				half3 ObjectData20_g76561 = appendResult20_g76559;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g76561 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76561 = WorldData19_g76561;
				#else
				float3 staticSwitch14_g76561 = ObjectData20_g76561;
				#endif
				float3 temp_output_114_0_g76559 = staticSwitch14_g76561;
				float3 vertexToFrag4543_g76519 = temp_output_114_0_g76559;
				float3 ObjectPosition4422_g76519 = vertexToFrag4543_g76519;
				float3 ObjectPosition_Shifted4976_g76519 = ( ObjectPosition4422_g76519 - TVE_WorldOrigin );
				float3 lerpResult4934_g76519 = lerp( WorldPosition_Shifted4972_g76519 , ObjectPosition_Shifted4976_g76519 , _MotionPosition_10);
				float3 Motion_10_Position4923_g76519 = lerpResult4934_g76519;
				half3 Input_Position419_g76544 = Motion_10_Position4923_g76519;
				float Input_MotionScale287_g76544 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g76544 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g76544 = (( Input_Position419_g76544 * Input_MotionScale287_g76544 * NoiseTex_Tilling735_g76544 * 0.0075 )).xz;
				float2 temp_output_447_0_g76549 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g76519 = temp_output_447_0_g76549;
				half2 Input_DirectionWS423_g76544 = Global_Wind_DirectionWS4464_g76519;
				float lerpResult128_g76545 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g76544 = _MotionSpeed_10;
				half Input_MotionVariation284_g76544 = 0.0;
				half Input_GlobalMeshVariation569_g76544 = 0.0;
				float temp_output_630_0_g76544 = ( ( ( lerpResult128_g76545 * Input_MotionSpeed62_g76544 ) + ( Input_MotionVariation284_g76544 * Input_GlobalMeshVariation569_g76544 ) ) * 0.03 );
				float temp_output_607_0_g76544 = frac( temp_output_630_0_g76544 );
				float4 lerpResult590_g76544 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g76544 + ( -Input_DirectionWS423_g76544 * temp_output_607_0_g76544 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g76544 + ( -Input_DirectionWS423_g76544 * frac( ( temp_output_630_0_g76544 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g76544 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g76544 = lerpResult590_g76544;
				float2 temp_output_645_0_g76544 = ((Noise_Complex703_g76544).rg*2.0 + -1.0);
				float2 break650_g76544 = temp_output_645_0_g76544;
				float3 appendResult649_g76544 = (float3(break650_g76544.x , 0.0 , break650_g76544.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g76519 = (( mul( unity_WorldToObject, float4( appendResult649_g76544 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76580 = Global_Noise_OS4572_g76519;
				float2 break448_g76549 = temp_output_447_0_g76549;
				float3 appendResult452_g76549 = (float3(break448_g76549.x , 0.0 , break448_g76549.y));
				half2 Global_Wind_DirectionOS4658_g76519 = (( mul( unity_WorldToObject, float4( appendResult452_g76549 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76580 = Global_Wind_DirectionOS4658_g76519;
				float temp_output_84_0_g76520 = _LayerMotionValue;
				float temp_output_19_0_g76524 = TVE_MotionUsage[(int)temp_output_84_0_g76520];
				float4 temp_output_91_19_g76520 = TVE_MotionCoords;
				half2 UV94_g76520 = ( (temp_output_91_19_g76520).zw + ( (temp_output_91_19_g76520).xy * (ObjectPosition4422_g76519).xz ) );
				float4 tex2DArrayNode50_g76520 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g76520,temp_output_84_0_g76520), 0.0 );
				float4 temp_output_17_0_g76524 = tex2DArrayNode50_g76520;
				float4 temp_output_112_19_g76520 = TVE_MotionParams;
				float4 temp_output_3_0_g76524 = temp_output_112_19_g76520;
				float4 ifLocalVar18_g76524 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76524 >= 0.5 )
				ifLocalVar18_g76524 = temp_output_17_0_g76524;
				else
				ifLocalVar18_g76524 = temp_output_3_0_g76524;
				float4 lerpResult22_g76524 = lerp( temp_output_3_0_g76524 , temp_output_17_0_g76524 , temp_output_19_0_g76524);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76524 = lerpResult22_g76524;
				#else
				float4 staticSwitch24_g76524 = ifLocalVar18_g76524;
				#endif
				half4 Global_Motion_Params4344_g76519 = staticSwitch24_g76524;
				float4 break322_g76549 = Global_Motion_Params4344_g76519;
				float lerpResult457_g76549 = lerp( break322_g76549.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g76549 = ( 1.0 - lerpResult457_g76549 );
				half Global_Wind_Power2223_g76519 = ( 1.0 - ( temp_output_459_0_g76549 * temp_output_459_0_g76549 ) );
				half Input_WindPower449_g76580 = Global_Wind_Power2223_g76519;
				float2 lerpResult516_g76580 = lerp( Input_Noise_DirectionOS487_g76580 , Input_Wind_DirectionOS458_g76580 , ( Input_WindPower449_g76580 * 0.6 ));
				half Mesh_Height1524_g76519 = saturate( ( VertexPosition3564_g76519.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76580 = Mesh_Height1524_g76519;
				half ObjectData20_g76581 = Input_MeshHeight388_g76580;
				half Input_BoundsHeight390_g76580 = 1.0;
				half WorldData19_g76581 = ( Input_MeshHeight388_g76580 * Input_MeshHeight388_g76580 * Input_BoundsHeight390_g76580 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76581 = WorldData19_g76581;
				#else
				float staticSwitch14_g76581 = ObjectData20_g76581;
				#endif
				half Final_Motion10_Mask321_g76580 = ( staticSwitch14_g76581 * 2.0 );
				half Motion_10_Amplitude2258_g76519 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76580 = Motion_10_Amplitude2258_g76519;
				half Global_MotionValue640_g76580 = TVE_MotionValue_10;
				half2 Final_Bending631_g76580 = ( lerpResult516_g76580 * ( Final_Motion10_Mask321_g76580 * Input_BendingAmplitude376_g76580 * Input_WindPower449_g76580 * Input_WindPower449_g76580 * Global_MotionValue640_g76580 ) );
				float2 appendResult433_g76549 = (float2(break322_g76549.x , break322_g76549.y));
				float2 temp_output_436_0_g76549 = (appendResult433_g76549*2.0 + -1.0);
				float2 break441_g76549 = temp_output_436_0_g76549;
				float3 appendResult440_g76549 = (float3(break441_g76549.x , 0.0 , break441_g76549.y));
				half2 Global_React_DirectionOS4574_g76519 = (( mul( unity_WorldToObject, float4( appendResult440_g76549 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76580 = Global_React_DirectionOS4574_g76519;
				float clampResult17_g76583 = clamp( Input_MeshHeight388_g76580 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76582 = 0.0;
				half Input_InteractionUseMask62_g76580 = 0.0;
				float temp_output_10_0_g76582 = ( Input_InteractionUseMask62_g76580 - temp_output_7_0_g76582 );
				half Final_InteractionRemap594_g76580 = saturate( ( ( clampResult17_g76583 - temp_output_7_0_g76582 ) / ( temp_output_10_0_g76582 + 0.0001 ) ) );
				half ObjectData20_g76584 = Final_InteractionRemap594_g76580;
				half WorldData19_g76584 = ( Final_InteractionRemap594_g76580 * Final_InteractionRemap594_g76580 * Input_BoundsHeight390_g76580 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76584 = WorldData19_g76584;
				#else
				float staticSwitch14_g76584 = ObjectData20_g76584;
				#endif
				half Final_InteractionMask373_g76580 = ( staticSwitch14_g76584 * 2.0 );
				half Input_InteractionAmplitude58_g76580 = _InteractionAmplitude;
				half2 Final_Interaction632_g76580 = ( Input_React_DirectionOS358_g76580 * Final_InteractionMask373_g76580 * Input_InteractionAmplitude58_g76580 );
				half Global_React_Mask66_g76519 = ( break322_g76549.w * break322_g76549.w * break322_g76549.w * break322_g76549.w );
				float Input_InteractionGlobalMask330_g76580 = Global_React_Mask66_g76519;
				half Final_InteractionValue525_g76580 = saturate( ( Input_InteractionAmplitude58_g76580 * Input_InteractionGlobalMask330_g76580 ) );
				float2 lerpResult551_g76580 = lerp( Final_Bending631_g76580 , Final_Interaction632_g76580 , Final_InteractionValue525_g76580);
				float2 break364_g76580 = lerpResult551_g76580;
				float3 appendResult638_g76580 = (float3(break364_g76580.x , 0.0 , break364_g76580.y));
				half3 Motion_10_Interaction216_g76519 = appendResult638_g76580;
				half3 Angle44_g76575 = Motion_10_Interaction216_g76519;
				half Angle44_g76576 = (Angle44_g76575).z;
				half3 VertexPos40_g76577 = ( VertexPosRotationAxis50_g76576 + ( VertexPosOtherAxis82_g76576 * cos( Angle44_g76576 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76576 ) * sin( Angle44_g76576 ) ) );
				float3 appendResult74_g76577 = (float3(0.0 , 0.0 , VertexPos40_g76577.z));
				half3 VertexPosRotationAxis50_g76577 = appendResult74_g76577;
				float3 break84_g76577 = VertexPos40_g76577;
				float3 appendResult81_g76577 = (float3(break84_g76577.x , break84_g76577.y , 0.0));
				half3 VertexPosOtherAxis82_g76577 = appendResult81_g76577;
				half Angle44_g76577 = -(Angle44_g76575).x;
				float3 Vertex_Motion_Object833_g76519 = ( VertexPosRotationAxis50_g76577 + ( VertexPosOtherAxis82_g76577 * cos( Angle44_g76577 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76577 ) * sin( Angle44_g76577 ) ) );
				float temp_output_84_0_g76526 = _LayerVertexValue;
				float temp_output_19_0_g76530 = TVE_VertexUsage[(int)temp_output_84_0_g76526];
				float4 temp_output_94_19_g76526 = TVE_VertexCoords;
				half2 UV97_g76526 = ( (temp_output_94_19_g76526).zw + ( (temp_output_94_19_g76526).xy * (ObjectPosition4422_g76519).xz ) );
				float4 tex2DArrayNode50_g76526 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g76526,temp_output_84_0_g76526), 0.0 );
				float4 temp_output_17_0_g76530 = tex2DArrayNode50_g76526;
				float4 temp_output_111_19_g76526 = TVE_VertexParams;
				float4 temp_output_3_0_g76530 = temp_output_111_19_g76526;
				float4 ifLocalVar18_g76530 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76530 >= 0.5 )
				ifLocalVar18_g76530 = temp_output_17_0_g76530;
				else
				ifLocalVar18_g76530 = temp_output_3_0_g76530;
				float4 lerpResult22_g76530 = lerp( temp_output_3_0_g76530 , temp_output_17_0_g76530 , temp_output_19_0_g76530);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76530 = lerpResult22_g76530;
				#else
				float4 staticSwitch24_g76530 = ifLocalVar18_g76530;
				#endif
				half4 Global_Vertex_Params4413_g76519 = staticSwitch24_g76530;
				float4 break322_g76548 = Global_Vertex_Params4413_g76519;
				half Global_Vertex_Size174_g76519 = saturate( break322_g76548.w );
				float lerpResult346_g76519 = lerp( 1.0 , Global_Vertex_Size174_g76519 , _GlobalSize);
				float3 appendResult3480_g76519 = (float3(lerpResult346_g76519 , lerpResult346_g76519 , lerpResult346_g76519));
				half3 Vertex_Size1741_g76519 = appendResult3480_g76519;
				float3 Vertex_SizeFade1740_g76519 = half3(1,1,1);
				half IsInitialized3811_g76519 = _IsInitialized;
				float3 lerpResult16_g76571 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g76519 * Vertex_Size1741_g76519 * Vertex_SizeFade1740_g76519 ) - VertexPosition3564_g76519 ) * IsInitialized3811_g76519 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g76519 = ( lerpResult16_g76571 + _DisableSRPBatcher );
				
				o.ase_texcoord10.xyz = vertexToFrag4543_g76519;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.w = 0;

				v.vertex.xyz += Final_VertexPosition890_g76519;
				o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);

				return o;
			}

			fixed4 frag_surf (v2f_surf IN, out float outDepth : SV_Depth  ) : SV_Target {
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif

				float4 clipPos = 0;
				float3 worldPos = 0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, clipPos, worldPos, IN.UVsFrame199, IN.UVsFrame299, IN.UVsFrame399, IN.octaframe99, IN.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g76519 = o.Albedo;
				half3 Main_Albedo3817_g76519 = ( Main_Albedo_Raw4295_g76519 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g76519 = float3(1,1,1);
				float4 break3589_g76519 = output0;
				half Main_Mask_Occlusion3712_g76519 = break3589_g76519.g;
				float3 lerpResult4779_g76519 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g76519);
				half3 Occlusion_Color4789_g76519 = lerpResult4779_g76519;
				half3 Main_Albedo_Tinted4791_g76519 = ( Main_Albedo3817_g76519 * Tint_Noise_Color5005_g76519 * Occlusion_Color4789_g76519 );
				float3 temp_output_3_0_g76573 = Main_Albedo_Tinted4791_g76519;
				float dotResult20_g76573 = dot( temp_output_3_0_g76573 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g76519 = dotResult20_g76573;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g76519).xxx;
				float temp_output_82_0_g76538 = _LayerColorsValue;
				float temp_output_19_0_g76542 = TVE_ColorsUsage[(int)temp_output_82_0_g76538];
				float4 temp_output_91_19_g76538 = TVE_ColorsCoords;
				float3 WorldPosition4027_g76519 = worldPos;
				float3 vertexToFrag4543_g76519 = IN.ase_texcoord10.xyz;
				float3 ObjectPosition4422_g76519 = vertexToFrag4543_g76519;
				float3 lerpResult4478_g76519 = lerp( WorldPosition4027_g76519 , ObjectPosition4422_g76519 , _ColorsPositionMode);
				half2 UV94_g76538 = ( (temp_output_91_19_g76538).zw + ( (temp_output_91_19_g76538).xy * (lerpResult4478_g76519).xz ) );
				float4 tex2DArrayNode83_g76538 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76538,temp_output_82_0_g76538), 0.0 );
				float4 temp_output_17_0_g76542 = tex2DArrayNode83_g76538;
				float4 temp_output_92_86_g76538 = TVE_ColorsParams;
				float4 temp_output_3_0_g76542 = temp_output_92_86_g76538;
				float4 ifLocalVar18_g76542 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76542 >= 0.5 )
				ifLocalVar18_g76542 = temp_output_17_0_g76542;
				else
				ifLocalVar18_g76542 = temp_output_3_0_g76542;
				float4 lerpResult22_g76542 = lerp( temp_output_3_0_g76542 , temp_output_17_0_g76542 , temp_output_19_0_g76542);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76542 = lerpResult22_g76542;
				#else
				float4 staticSwitch24_g76542 = ifLocalVar18_g76542;
				#endif
				half4 Global_Colors_Params4558_g76519 = staticSwitch24_g76542;
				float4 temp_output_346_0_g76551 = Global_Colors_Params4558_g76519;
				half Global_Colors_A1701_g76519 = saturate( (temp_output_346_0_g76551).w );
				half Colors_Influence3998_g76519 = Global_Colors_A1701_g76519;
				float temp_output_4814_0_g76519 = ( 1.0 - Colors_Influence3998_g76519 );
				float3 lerpResult4004_g76519 = lerp( Main_Albedo_Tinted4791_g76519 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g76519 * temp_output_4814_0_g76519 ) ));
				half3 Global_Colors_RGB1700_g76519 = (temp_output_346_0_g76551).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76565 = 2.0;
				#else
				float staticSwitch1_g76565 = 4.594794;
				#endif
				half3 Colors_RGB3856_g76519 = ( Global_Colors_RGB1700_g76519 * staticSwitch1_g76565 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g76519 = break3589_g76519.b;
				half Colors_Value4022_g76519 = ( Main_Mask_Remap3609_g76519 * _GlobalColors );
				float3 ObjectPosition_Shifted4976_g76519 = ( ObjectPosition4422_g76519 - TVE_WorldOrigin );
				half3 Input_Position167_g76589 = ObjectPosition_Shifted4976_g76519;
				float dotResult156_g76589 = dot( (Input_Position167_g76589).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g76519 = _VertexDynamicMode;
				half Input_DynamicMode120_g76589 = Global_DynamicMode4535_g76519;
				float Postion_Random162_g76589 = ( sin( dotResult156_g76589 ) * ( 1.0 - Input_DynamicMode120_g76589 ) );
				half Main_Variation_Or_Metallic3607_g76519 = break3589_g76519.r;
				half Input_Variation124_g76589 = Main_Variation_Or_Metallic3607_g76519;
				half ObjectData20_g76591 = frac( ( Postion_Random162_g76589 + Input_Variation124_g76589 ) );
				half WorldData19_g76591 = Input_Variation124_g76589;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76591 = WorldData19_g76591;
				#else
				float staticSwitch14_g76591 = ObjectData20_g76591;
				#endif
				float temp_output_112_0_g76589 = staticSwitch14_g76591;
				float clampResult171_g76589 = clamp( temp_output_112_0_g76589 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g76519 = clampResult171_g76589;
				float lerpResult4092_g76519 = lerp( 1.0 , Global_VariationMesh4531_g76519 , _ColorsVariationValue);
				half Colors_Variation3999_g76519 = lerpResult4092_g76519;
				half Occlusion_Alpha4842_g76519 = _VertexOcclusionColor.a;
				float lerpResult5080_g76519 = lerp( Main_Mask_Occlusion3712_g76519 , ( 1.0 - Main_Mask_Occlusion3712_g76519 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g76519 = lerp( Occlusion_Alpha4842_g76519 , 1.0 , lerpResult5080_g76519);
				half Occlusion_Colors4856_g76519 = lerpResult5078_g76519;
				float3 temp_output_3_0_g76574 = ( Main_Albedo3817_g76519 * Tint_Noise_Color5005_g76519 );
				float dotResult20_g76574 = dot( temp_output_3_0_g76574 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g76519 = clamp( saturate( ( dotResult20_g76574 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g76519 = clampResult4925_g76519;
				float temp_output_7_0_g76567 = 0.1;
				float temp_output_10_0_g76567 = ( 0.2 - temp_output_7_0_g76567 );
				float lerpResult16_g76566 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g76519 * Colors_Variation3999_g76519 * Colors_Influence3998_g76519 * Occlusion_Colors4856_g76519 * Main_Albedo_Globals4847_g76519 ) - temp_output_7_0_g76567 ) / ( temp_output_10_0_g76567 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g76519 = lerp( Main_Albedo_Tinted4791_g76519 , ( lerpResult4004_g76519 * Colors_RGB3856_g76519 ) , lerpResult16_g76566);
				half3 Blend_Albedo_Colored3711_g76519 = lerpResult4007_g76519;
				half3 Global_OverlayColor1758_g76519 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76532 = _LayerExtrasValue;
				float temp_output_19_0_g76536 = TVE_ExtrasUsage[(int)temp_output_84_0_g76532];
				float4 temp_output_93_19_g76532 = TVE_ExtrasCoords;
				float3 lerpResult4483_g76519 = lerp( WorldPosition4027_g76519 , ObjectPosition4422_g76519 , _ExtrasPositionMode);
				half2 UV96_g76532 = ( (temp_output_93_19_g76532).zw + ( (temp_output_93_19_g76532).xy * (lerpResult4483_g76519).xz ) );
				float4 tex2DArrayNode48_g76532 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76532,temp_output_84_0_g76532), 0.0 );
				float4 temp_output_17_0_g76536 = tex2DArrayNode48_g76532;
				float4 temp_output_94_85_g76532 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76536 = temp_output_94_85_g76532;
				float4 ifLocalVar18_g76536 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76536 >= 0.5 )
				ifLocalVar18_g76536 = temp_output_17_0_g76536;
				else
				ifLocalVar18_g76536 = temp_output_3_0_g76536;
				float4 lerpResult22_g76536 = lerp( temp_output_3_0_g76536 , temp_output_17_0_g76536 , temp_output_19_0_g76536);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76536 = lerpResult22_g76536;
				#else
				float4 staticSwitch24_g76536 = ifLocalVar18_g76536;
				#endif
				half4 Global_Extras_Params4559_g76519 = staticSwitch24_g76536;
				float4 break456_g76586 = Global_Extras_Params4559_g76519;
				half Global_Extras_Overlay156_g76519 = break456_g76586.z;
				float lerpResult3746_g76519 = lerp( 1.0 , Global_VariationMesh4531_g76519 , _OverlayVariationValue);
				half Overlay_Variation3739_g76519 = lerpResult3746_g76519;
				half Overlay_Value4803_g76519 = ( _GlobalOverlay * Global_Extras_Overlay156_g76519 * Overlay_Variation3739_g76519 );
				half3 World_Normal3638_g76519 = o.Normal;
				float lerpResult4683_g76519 = lerp( 1.0 , saturate( (World_Normal3638_g76519).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g76519 = lerpResult4683_g76519;
				half Overlay_Shading4874_g76519 = Main_Albedo_Globals4847_g76519;
				float lerpResult5086_g76519 = lerp( Main_Mask_Occlusion3712_g76519 , ( 1.0 - Main_Mask_Occlusion3712_g76519 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g76519 = lerp( Occlusion_Alpha4842_g76519 , 1.0 , lerpResult5086_g76519);
				half Occlusion_Overlay4860_g76519 = lerpResult5084_g76519;
				float temp_output_7_0_g76568 = 0.1;
				float temp_output_10_0_g76568 = ( 0.2 - temp_output_7_0_g76568 );
				half Overlay_Mask3762_g76519 = saturate( ( ( ( Overlay_Value4803_g76519 * Overlay_Projection4636_g76519 * Overlay_Shading4874_g76519 * Occlusion_Overlay4860_g76519 ) - temp_output_7_0_g76568 ) / ( temp_output_10_0_g76568 + 0.0001 ) ) );
				float3 lerpResult3875_g76519 = lerp( Blend_Albedo_Colored3711_g76519 , Global_OverlayColor1758_g76519 , Overlay_Mask3762_g76519);
				half3 Blend_Albedo_Overlay4100_g76519 = lerpResult3875_g76519;
				half Global_WetnessContrast4862_g76519 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76519 = break456_g76586.y;
				half Wetnness_Value4824_g76519 = ( Global_Extras_Wetness305_g76519 * _GlobalWetness );
				float3 lerpResult4833_g76519 = lerp( Blend_Albedo_Overlay4100_g76519 , ( Blend_Albedo_Overlay4100_g76519 * Blend_Albedo_Overlay4100_g76519 ) , ( Global_WetnessContrast4862_g76519 * Wetnness_Value4824_g76519 ));
				half3 Blend_Albedo_Wetness4830_g76519 = lerpResult4833_g76519;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g76519 = _Vector12;
				float3 temp_output_4907_0_g76519 = ( Blend_Albedo_Wetness4830_g76519 * Tint_Highlight_Color4905_g76519 );
				half3 Blend_Albedo_Subsurface3874_g76519 = temp_output_4907_0_g76519;
				half IsInitialized3811_g76519 = _IsInitialized;
				float3 lerpResult3815_g76519 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g76519 , IsInitialized3811_g76519);
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g76519 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g76519 = (output1).rgb;
				half Global_Extras_Emissive4408_g76519 = break456_g76586.x;
				float lerpResult4417_g76519 = lerp( 1.0 , Global_Extras_Emissive4408_g76519 , _GlobalEmissive);
				half Emissive_Value4941_g76519 = ( ( lerpResult4417_g76519 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g76519 = saturate( ( Emissive_Texture4942_g76519 + Emissive_Value4941_g76519 ) );
				float3 temp_output_3_0_g76585 = ( Emissive_Color4947_g76519 * Emissive_Mask5026_g76519 );
				float temp_output_15_0_g76585 = _emissive_intensity_value;
				float3 temp_output_23_0_g76585 = ( temp_output_3_0_g76585 * temp_output_15_0_g76585 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g76519 = temp_output_23_0_g76585;
				#else
				float3 staticSwitch5070_g76519 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g76519 = staticSwitch5070_g76519;
				
				float3 temp_cast_12 = (( 0.04 * _render_specular )).xxx;
				
				half Main_Mask_Smoothness3820_g76519 = break3589_g76519.a;
				half Main_Smoothness3838_g76519 = ( Main_Mask_Smoothness3820_g76519 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g76519 = ( 1.0 - Wetnness_Value4824_g76519 );
				half Blend_Smoothness_Wetness3898_g76519 = saturate( ( Main_Smoothness3838_g76519 + ( 1.0 - ( temp_output_4864_0_g76519 * temp_output_4864_0_g76519 ) ) ) );
				
				float temp_output_3577_0_g76519 = o.Alpha;
				float localCustomAlphaClipAlways4430_g76519 = ( temp_output_3577_0_g76519 );
				half Global_Extras_Alpha1033_g76519 = saturate( break456_g76586.w );
				float lerpResult4544_g76519 = lerp( 0.0 , Global_VariationMesh4531_g76519 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g76519 = lerpResult4544_g76519;
				float lerpResult4053_g76519 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g76519 - Global_Alpha_Variation4546_g76519 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g76519 = lerpResult4053_g76519;
				float Alpha4430_g76519 = Alpha_Composite4102_g76519;
				{
				clip(Alpha4430_g76519 - 0.1);
				}
				half Final_Alpha4955_g76519 = localCustomAlphaClipAlways4430_g76519;
				
				fixed3 albedo = lerpResult3815_g76519;
				fixed3 normal = World_Normal3638_g76519;
				half3 emission = Final_Emissive4365_g76519;
				fixed3 specular = temp_cast_12;
				fixed metallic = 0;
				half smoothness = Blend_Smoothness_Wetness3898_g76519;
				half occlusion = 1;
				fixed alpha = Final_Alpha4955_g76519;
				fixed alphaClipThreshold = 0;

				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif
				IN.pos.zw = clipPos.zw;
				outDepth = IN.pos.z;

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				UnityMetaInput metaIN;
				UNITY_INITIALIZE_OUTPUT(UnityMetaInput, metaIN);
				metaIN.Albedo = o.Albedo;
				metaIN.Emission = o.Emission;
				return UnityMetaFragment(metaIN);
			}
			ENDCG
		}

		Pass
		{
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#define ASE_TRANSLUCENCY 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma multi_compile_shadowcaster
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#ifndef UNITY_PASS_SHADOWCASTER
			#define UNITY_PASS_SHADOWCASTER
			#endif
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_instancing
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "UnityStandardUtils.cginc"

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_SUBSURFACE_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			uniform half _ImostorCat;
			uniform float _RenderSpecular;
			uniform half _RenderCoverage;
			uniform half _IsSubsurfaceShader;
			uniform float _IsPlantShader;
			uniform half _CategoryGlobal;
			uniform half _SpaceGlobalLayers;
			uniform half _CategoryOcclusion;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _VertexPivotMode;
			uniform half _SpaceGlobalLocals;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceMotionGlobals;
			uniform half _SpaceSubsurface;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _CategorySizeFade;
			uniform half _CategoryMotion;
			uniform half _CategoryEmissive;
			uniform half _CategorySubsurface;
			uniform half _CategoryNoise;
			uniform half4 _NoiseMaskRemap;
			uniform half _VegetationMode;
			uniform half _IsInitialized;
			uniform half _IsImpostorShader;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MessageOcclusion;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveIntensityMode;
			uniform half _EmissiveMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform half _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeed_10;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionAmplitude;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Mask);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Emissive);
			SamplerState sampler_Mask;
			SamplerState sampler_Emissive;
			uniform half4 _ImpostorColor;
			uniform half4 _VertexOcclusionColor;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _GlobalColors;
			uniform half _VertexDynamicMode;
			uniform half _ColorsVariationValue;
			uniform half _VertexOcclusionColorsMode;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _OverlayVariationValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _EmissiveColor;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform float _render_specular;
			uniform half _ImpostorSmoothnessValue;
			uniform half _AlphaVariationValue;
			uniform half _GlobalAlpha;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normal, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normal ); 
				float p0l0DotN = dot( -rayPosition, normal );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normal ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normal );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normal );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 vertex, inout float3 normal, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 ) 
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				float3 worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = vertex.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				vertex.xyz = billboard + _AI_Offset.xyz;
				normal.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( vertex.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 clipPos, out float3 worldPos, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _Mask, sampler_Mask, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _Emissive, sampler_Emissive, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if ( defined(SHADERPASS) && (defined(SHADERPASS_DEPTHNORMALSONLY) && SHADERPASS == SHADERPASS_DEPTHNORMALSONLY) ) || defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				worldPos = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				clipPos = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				clipPos = UnityApplyLinearShadowBias( clipPos );
				#endif
				clipPos.xyz /= clipPos.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				clipPos = clipPos * 0.5 + 0.5;
			}
			


			/*struct appdata_full {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID*/
			
			/*};*/

			struct v2f_surf {
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame199 : TEXCOORD5;
				float4 UVsFrame299 : TEXCOORD6;
				float4 UVsFrame399 : TEXCOORD7;
				float4 octaframe99 : TEXCOORD8;
				float4 viewPos99 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
			};

			v2f_surf vert_surf (appdata_full v ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame199, o.UVsFrame299, o.UVsFrame399, o.octaframe99, o.viewPos99 );
				float3 worldPosOut99 = mul( UNITY_MATRIX_I_V, float4( o.viewPos99.xyz, 1.0 ) ).xyz;
				float3 WorldPosition4027_g76519 = worldPosOut99;
				float3 worldToObj4970_g76519 = mul( unity_WorldToObject, float4( WorldPosition4027_g76519, 1 ) ).xyz;
				float3 VertexPosition3564_g76519 = worldToObj4970_g76519;
				half3 VertexPos40_g76575 = VertexPosition3564_g76519;
				half3 VertexPos40_g76576 = VertexPos40_g76575;
				float3 appendResult74_g76576 = (float3(VertexPos40_g76576.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76576 = appendResult74_g76576;
				float3 break84_g76576 = VertexPos40_g76576;
				float3 appendResult81_g76576 = (float3(0.0 , break84_g76576.y , break84_g76576.z));
				half3 VertexPosOtherAxis82_g76576 = appendResult81_g76576;
				float3 WorldPosition_Shifted4972_g76519 = ( WorldPosition4027_g76519 - TVE_WorldOrigin );
				float4x4 break19_g76559 = unity_ObjectToWorld;
				float3 appendResult20_g76559 = (float3(break19_g76559[ 0 ][ 3 ] , break19_g76559[ 1 ][ 3 ] , break19_g76559[ 2 ][ 3 ]));
				half3 ObjectData20_g76561 = appendResult20_g76559;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g76561 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76561 = WorldData19_g76561;
				#else
				float3 staticSwitch14_g76561 = ObjectData20_g76561;
				#endif
				float3 temp_output_114_0_g76559 = staticSwitch14_g76561;
				float3 vertexToFrag4543_g76519 = temp_output_114_0_g76559;
				float3 ObjectPosition4422_g76519 = vertexToFrag4543_g76519;
				float3 ObjectPosition_Shifted4976_g76519 = ( ObjectPosition4422_g76519 - TVE_WorldOrigin );
				float3 lerpResult4934_g76519 = lerp( WorldPosition_Shifted4972_g76519 , ObjectPosition_Shifted4976_g76519 , _MotionPosition_10);
				float3 Motion_10_Position4923_g76519 = lerpResult4934_g76519;
				half3 Input_Position419_g76544 = Motion_10_Position4923_g76519;
				float Input_MotionScale287_g76544 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g76544 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g76544 = (( Input_Position419_g76544 * Input_MotionScale287_g76544 * NoiseTex_Tilling735_g76544 * 0.0075 )).xz;
				float2 temp_output_447_0_g76549 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4464_g76519 = temp_output_447_0_g76549;
				half2 Input_DirectionWS423_g76544 = Global_Wind_DirectionWS4464_g76519;
				float lerpResult128_g76545 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g76544 = _MotionSpeed_10;
				half Input_MotionVariation284_g76544 = 0.0;
				half Input_GlobalMeshVariation569_g76544 = 0.0;
				float temp_output_630_0_g76544 = ( ( ( lerpResult128_g76545 * Input_MotionSpeed62_g76544 ) + ( Input_MotionVariation284_g76544 * Input_GlobalMeshVariation569_g76544 ) ) * 0.03 );
				float temp_output_607_0_g76544 = frac( temp_output_630_0_g76544 );
				float4 lerpResult590_g76544 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g76544 + ( -Input_DirectionWS423_g76544 * temp_output_607_0_g76544 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g76544 + ( -Input_DirectionWS423_g76544 * frac( ( temp_output_630_0_g76544 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g76544 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g76544 = lerpResult590_g76544;
				float2 temp_output_645_0_g76544 = ((Noise_Complex703_g76544).rg*2.0 + -1.0);
				float2 break650_g76544 = temp_output_645_0_g76544;
				float3 appendResult649_g76544 = (float3(break650_g76544.x , 0.0 , break650_g76544.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS4572_g76519 = (( mul( unity_WorldToObject, float4( appendResult649_g76544 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76580 = Global_Noise_OS4572_g76519;
				float2 break448_g76549 = temp_output_447_0_g76549;
				float3 appendResult452_g76549 = (float3(break448_g76549.x , 0.0 , break448_g76549.y));
				half2 Global_Wind_DirectionOS4658_g76519 = (( mul( unity_WorldToObject, float4( appendResult452_g76549 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76580 = Global_Wind_DirectionOS4658_g76519;
				float temp_output_84_0_g76520 = _LayerMotionValue;
				float temp_output_19_0_g76524 = TVE_MotionUsage[(int)temp_output_84_0_g76520];
				float4 temp_output_91_19_g76520 = TVE_MotionCoords;
				half2 UV94_g76520 = ( (temp_output_91_19_g76520).zw + ( (temp_output_91_19_g76520).xy * (ObjectPosition4422_g76519).xz ) );
				float4 tex2DArrayNode50_g76520 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g76520,temp_output_84_0_g76520), 0.0 );
				float4 temp_output_17_0_g76524 = tex2DArrayNode50_g76520;
				float4 temp_output_112_19_g76520 = TVE_MotionParams;
				float4 temp_output_3_0_g76524 = temp_output_112_19_g76520;
				float4 ifLocalVar18_g76524 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76524 >= 0.5 )
				ifLocalVar18_g76524 = temp_output_17_0_g76524;
				else
				ifLocalVar18_g76524 = temp_output_3_0_g76524;
				float4 lerpResult22_g76524 = lerp( temp_output_3_0_g76524 , temp_output_17_0_g76524 , temp_output_19_0_g76524);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76524 = lerpResult22_g76524;
				#else
				float4 staticSwitch24_g76524 = ifLocalVar18_g76524;
				#endif
				half4 Global_Motion_Params4344_g76519 = staticSwitch24_g76524;
				float4 break322_g76549 = Global_Motion_Params4344_g76519;
				float lerpResult457_g76549 = lerp( break322_g76549.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g76549 = ( 1.0 - lerpResult457_g76549 );
				half Global_Wind_Power2223_g76519 = ( 1.0 - ( temp_output_459_0_g76549 * temp_output_459_0_g76549 ) );
				half Input_WindPower449_g76580 = Global_Wind_Power2223_g76519;
				float2 lerpResult516_g76580 = lerp( Input_Noise_DirectionOS487_g76580 , Input_Wind_DirectionOS458_g76580 , ( Input_WindPower449_g76580 * 0.6 ));
				half Mesh_Height1524_g76519 = saturate( ( VertexPosition3564_g76519.y / _AI_Offset.y ) );
				half Input_MeshHeight388_g76580 = Mesh_Height1524_g76519;
				half ObjectData20_g76581 = Input_MeshHeight388_g76580;
				half Input_BoundsHeight390_g76580 = 1.0;
				half WorldData19_g76581 = ( Input_MeshHeight388_g76580 * Input_MeshHeight388_g76580 * Input_BoundsHeight390_g76580 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76581 = WorldData19_g76581;
				#else
				float staticSwitch14_g76581 = ObjectData20_g76581;
				#endif
				half Final_Motion10_Mask321_g76580 = ( staticSwitch14_g76581 * 2.0 );
				half Motion_10_Amplitude2258_g76519 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g76580 = Motion_10_Amplitude2258_g76519;
				half Global_MotionValue640_g76580 = TVE_MotionValue_10;
				half2 Final_Bending631_g76580 = ( lerpResult516_g76580 * ( Final_Motion10_Mask321_g76580 * Input_BendingAmplitude376_g76580 * Input_WindPower449_g76580 * Input_WindPower449_g76580 * Global_MotionValue640_g76580 ) );
				float2 appendResult433_g76549 = (float2(break322_g76549.x , break322_g76549.y));
				float2 temp_output_436_0_g76549 = (appendResult433_g76549*2.0 + -1.0);
				float2 break441_g76549 = temp_output_436_0_g76549;
				float3 appendResult440_g76549 = (float3(break441_g76549.x , 0.0 , break441_g76549.y));
				half2 Global_React_DirectionOS4574_g76519 = (( mul( unity_WorldToObject, float4( appendResult440_g76549 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76580 = Global_React_DirectionOS4574_g76519;
				float clampResult17_g76583 = clamp( Input_MeshHeight388_g76580 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76582 = 0.0;
				half Input_InteractionUseMask62_g76580 = 0.0;
				float temp_output_10_0_g76582 = ( Input_InteractionUseMask62_g76580 - temp_output_7_0_g76582 );
				half Final_InteractionRemap594_g76580 = saturate( ( ( clampResult17_g76583 - temp_output_7_0_g76582 ) / ( temp_output_10_0_g76582 + 0.0001 ) ) );
				half ObjectData20_g76584 = Final_InteractionRemap594_g76580;
				half WorldData19_g76584 = ( Final_InteractionRemap594_g76580 * Final_InteractionRemap594_g76580 * Input_BoundsHeight390_g76580 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76584 = WorldData19_g76584;
				#else
				float staticSwitch14_g76584 = ObjectData20_g76584;
				#endif
				half Final_InteractionMask373_g76580 = ( staticSwitch14_g76584 * 2.0 );
				half Input_InteractionAmplitude58_g76580 = _InteractionAmplitude;
				half2 Final_Interaction632_g76580 = ( Input_React_DirectionOS358_g76580 * Final_InteractionMask373_g76580 * Input_InteractionAmplitude58_g76580 );
				half Global_React_Mask66_g76519 = ( break322_g76549.w * break322_g76549.w * break322_g76549.w * break322_g76549.w );
				float Input_InteractionGlobalMask330_g76580 = Global_React_Mask66_g76519;
				half Final_InteractionValue525_g76580 = saturate( ( Input_InteractionAmplitude58_g76580 * Input_InteractionGlobalMask330_g76580 ) );
				float2 lerpResult551_g76580 = lerp( Final_Bending631_g76580 , Final_Interaction632_g76580 , Final_InteractionValue525_g76580);
				float2 break364_g76580 = lerpResult551_g76580;
				float3 appendResult638_g76580 = (float3(break364_g76580.x , 0.0 , break364_g76580.y));
				half3 Motion_10_Interaction216_g76519 = appendResult638_g76580;
				half3 Angle44_g76575 = Motion_10_Interaction216_g76519;
				half Angle44_g76576 = (Angle44_g76575).z;
				half3 VertexPos40_g76577 = ( VertexPosRotationAxis50_g76576 + ( VertexPosOtherAxis82_g76576 * cos( Angle44_g76576 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76576 ) * sin( Angle44_g76576 ) ) );
				float3 appendResult74_g76577 = (float3(0.0 , 0.0 , VertexPos40_g76577.z));
				half3 VertexPosRotationAxis50_g76577 = appendResult74_g76577;
				float3 break84_g76577 = VertexPos40_g76577;
				float3 appendResult81_g76577 = (float3(break84_g76577.x , break84_g76577.y , 0.0));
				half3 VertexPosOtherAxis82_g76577 = appendResult81_g76577;
				half Angle44_g76577 = -(Angle44_g76575).x;
				float3 Vertex_Motion_Object833_g76519 = ( VertexPosRotationAxis50_g76577 + ( VertexPosOtherAxis82_g76577 * cos( Angle44_g76577 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76577 ) * sin( Angle44_g76577 ) ) );
				float temp_output_84_0_g76526 = _LayerVertexValue;
				float temp_output_19_0_g76530 = TVE_VertexUsage[(int)temp_output_84_0_g76526];
				float4 temp_output_94_19_g76526 = TVE_VertexCoords;
				half2 UV97_g76526 = ( (temp_output_94_19_g76526).zw + ( (temp_output_94_19_g76526).xy * (ObjectPosition4422_g76519).xz ) );
				float4 tex2DArrayNode50_g76526 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g76526,temp_output_84_0_g76526), 0.0 );
				float4 temp_output_17_0_g76530 = tex2DArrayNode50_g76526;
				float4 temp_output_111_19_g76526 = TVE_VertexParams;
				float4 temp_output_3_0_g76530 = temp_output_111_19_g76526;
				float4 ifLocalVar18_g76530 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76530 >= 0.5 )
				ifLocalVar18_g76530 = temp_output_17_0_g76530;
				else
				ifLocalVar18_g76530 = temp_output_3_0_g76530;
				float4 lerpResult22_g76530 = lerp( temp_output_3_0_g76530 , temp_output_17_0_g76530 , temp_output_19_0_g76530);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76530 = lerpResult22_g76530;
				#else
				float4 staticSwitch24_g76530 = ifLocalVar18_g76530;
				#endif
				half4 Global_Vertex_Params4413_g76519 = staticSwitch24_g76530;
				float4 break322_g76548 = Global_Vertex_Params4413_g76519;
				half Global_Vertex_Size174_g76519 = saturate( break322_g76548.w );
				float lerpResult346_g76519 = lerp( 1.0 , Global_Vertex_Size174_g76519 , _GlobalSize);
				float3 appendResult3480_g76519 = (float3(lerpResult346_g76519 , lerpResult346_g76519 , lerpResult346_g76519));
				half3 Vertex_Size1741_g76519 = appendResult3480_g76519;
				float3 Vertex_SizeFade1740_g76519 = half3(1,1,1);
				half IsInitialized3811_g76519 = _IsInitialized;
				float3 lerpResult16_g76571 = lerp( float3(0,0,0) , ( ( ( Vertex_Motion_Object833_g76519 * Vertex_Size1741_g76519 * Vertex_SizeFade1740_g76519 ) - VertexPosition3564_g76519 ) * IsInitialized3811_g76519 ) , TVE_IsEnabled);
				float3 Final_VertexPosition890_g76519 = ( lerpResult16_g76571 + _DisableSRPBatcher );
				
				o.ase_texcoord10.xyz = vertexToFrag4543_g76519;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.w = 0;

				v.vertex.xyz += Final_VertexPosition890_g76519;

				// TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				TRANSFER_SHADOW_CASTER(o)

				return o;
			}

			fixed4 frag_surf (v2f_surf IN, out float outDepth : SV_Depth ) : SV_Target {
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif

				float4 clipPos = 0;
				float3 worldPos = 0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, clipPos, worldPos, IN.UVsFrame199, IN.UVsFrame299, IN.UVsFrame399, IN.octaframe99, IN.viewPos99, output0, output1 );
				half3 Main_Albedo_Raw4295_g76519 = o.Albedo;
				half3 Main_Albedo3817_g76519 = ( Main_Albedo_Raw4295_g76519 * (_ImpostorColor).rgb );
				half3 Tint_Noise_Color5005_g76519 = float3(1,1,1);
				float4 break3589_g76519 = output0;
				half Main_Mask_Occlusion3712_g76519 = break3589_g76519.g;
				float3 lerpResult4779_g76519 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Main_Mask_Occlusion3712_g76519);
				half3 Occlusion_Color4789_g76519 = lerpResult4779_g76519;
				half3 Main_Albedo_Tinted4791_g76519 = ( Main_Albedo3817_g76519 * Tint_Noise_Color5005_g76519 * Occlusion_Color4789_g76519 );
				float3 temp_output_3_0_g76573 = Main_Albedo_Tinted4791_g76519;
				float dotResult20_g76573 = dot( temp_output_3_0_g76573 , float3(0.2126,0.7152,0.0722) );
				half Main_Albedo_Grayscale3807_g76519 = dotResult20_g76573;
				float3 temp_cast_1 = (Main_Albedo_Grayscale3807_g76519).xxx;
				float temp_output_82_0_g76538 = _LayerColorsValue;
				float temp_output_19_0_g76542 = TVE_ColorsUsage[(int)temp_output_82_0_g76538];
				float4 temp_output_91_19_g76538 = TVE_ColorsCoords;
				float3 WorldPosition4027_g76519 = worldPos;
				float3 vertexToFrag4543_g76519 = IN.ase_texcoord10.xyz;
				float3 ObjectPosition4422_g76519 = vertexToFrag4543_g76519;
				float3 lerpResult4478_g76519 = lerp( WorldPosition4027_g76519 , ObjectPosition4422_g76519 , _ColorsPositionMode);
				half2 UV94_g76538 = ( (temp_output_91_19_g76538).zw + ( (temp_output_91_19_g76538).xy * (lerpResult4478_g76519).xz ) );
				float4 tex2DArrayNode83_g76538 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76538,temp_output_82_0_g76538), 0.0 );
				float4 temp_output_17_0_g76542 = tex2DArrayNode83_g76538;
				float4 temp_output_92_86_g76538 = TVE_ColorsParams;
				float4 temp_output_3_0_g76542 = temp_output_92_86_g76538;
				float4 ifLocalVar18_g76542 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76542 >= 0.5 )
				ifLocalVar18_g76542 = temp_output_17_0_g76542;
				else
				ifLocalVar18_g76542 = temp_output_3_0_g76542;
				float4 lerpResult22_g76542 = lerp( temp_output_3_0_g76542 , temp_output_17_0_g76542 , temp_output_19_0_g76542);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76542 = lerpResult22_g76542;
				#else
				float4 staticSwitch24_g76542 = ifLocalVar18_g76542;
				#endif
				half4 Global_Colors_Params4558_g76519 = staticSwitch24_g76542;
				float4 temp_output_346_0_g76551 = Global_Colors_Params4558_g76519;
				half Global_Colors_A1701_g76519 = saturate( (temp_output_346_0_g76551).w );
				half Colors_Influence3998_g76519 = Global_Colors_A1701_g76519;
				float temp_output_4814_0_g76519 = ( 1.0 - Colors_Influence3998_g76519 );
				float3 lerpResult4004_g76519 = lerp( Main_Albedo_Tinted4791_g76519 , temp_cast_1 , ( 1.0 - ( temp_output_4814_0_g76519 * temp_output_4814_0_g76519 ) ));
				half3 Global_Colors_RGB1700_g76519 = (temp_output_346_0_g76551).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76565 = 2.0;
				#else
				float staticSwitch1_g76565 = 4.594794;
				#endif
				half3 Colors_RGB3856_g76519 = ( Global_Colors_RGB1700_g76519 * staticSwitch1_g76565 * _ColorsIntensityValue );
				half Main_Mask_Remap3609_g76519 = break3589_g76519.b;
				half Colors_Value4022_g76519 = ( Main_Mask_Remap3609_g76519 * _GlobalColors );
				float3 ObjectPosition_Shifted4976_g76519 = ( ObjectPosition4422_g76519 - TVE_WorldOrigin );
				half3 Input_Position167_g76589 = ObjectPosition_Shifted4976_g76519;
				float dotResult156_g76589 = dot( (Input_Position167_g76589).xz , float2( 12.9898,78.233 ) );
				half Global_DynamicMode4535_g76519 = _VertexDynamicMode;
				half Input_DynamicMode120_g76589 = Global_DynamicMode4535_g76519;
				float Postion_Random162_g76589 = ( sin( dotResult156_g76589 ) * ( 1.0 - Input_DynamicMode120_g76589 ) );
				half Main_Variation_Or_Metallic3607_g76519 = break3589_g76519.r;
				half Input_Variation124_g76589 = Main_Variation_Or_Metallic3607_g76519;
				half ObjectData20_g76591 = frac( ( Postion_Random162_g76589 + Input_Variation124_g76589 ) );
				half WorldData19_g76591 = Input_Variation124_g76589;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76591 = WorldData19_g76591;
				#else
				float staticSwitch14_g76591 = ObjectData20_g76591;
				#endif
				float temp_output_112_0_g76589 = staticSwitch14_g76591;
				float clampResult171_g76589 = clamp( temp_output_112_0_g76589 , 0.01 , 0.99 );
				half Global_VariationMesh4531_g76519 = clampResult171_g76589;
				float lerpResult4092_g76519 = lerp( 1.0 , Global_VariationMesh4531_g76519 , _ColorsVariationValue);
				half Colors_Variation3999_g76519 = lerpResult4092_g76519;
				half Occlusion_Alpha4842_g76519 = _VertexOcclusionColor.a;
				float lerpResult5080_g76519 = lerp( Main_Mask_Occlusion3712_g76519 , ( 1.0 - Main_Mask_Occlusion3712_g76519 ) , _VertexOcclusionColorsMode);
				float lerpResult5078_g76519 = lerp( Occlusion_Alpha4842_g76519 , 1.0 , lerpResult5080_g76519);
				half Occlusion_Colors4856_g76519 = lerpResult5078_g76519;
				float3 temp_output_3_0_g76574 = ( Main_Albedo3817_g76519 * Tint_Noise_Color5005_g76519 );
				float dotResult20_g76574 = dot( temp_output_3_0_g76574 , float3(0.2126,0.7152,0.0722) );
				float clampResult4925_g76519 = clamp( saturate( ( dotResult20_g76574 * 5.0 ) ) , 0.2 , 1.0 );
				half Main_Albedo_Globals4847_g76519 = clampResult4925_g76519;
				float temp_output_7_0_g76567 = 0.1;
				float temp_output_10_0_g76567 = ( 0.2 - temp_output_7_0_g76567 );
				float lerpResult16_g76566 = lerp( 0.0 , saturate( ( ( ( Colors_Value4022_g76519 * Colors_Variation3999_g76519 * Colors_Influence3998_g76519 * Occlusion_Colors4856_g76519 * Main_Albedo_Globals4847_g76519 ) - temp_output_7_0_g76567 ) / ( temp_output_10_0_g76567 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult4007_g76519 = lerp( Main_Albedo_Tinted4791_g76519 , ( lerpResult4004_g76519 * Colors_RGB3856_g76519 ) , lerpResult16_g76566);
				half3 Blend_Albedo_Colored3711_g76519 = lerpResult4007_g76519;
				half3 Global_OverlayColor1758_g76519 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76532 = _LayerExtrasValue;
				float temp_output_19_0_g76536 = TVE_ExtrasUsage[(int)temp_output_84_0_g76532];
				float4 temp_output_93_19_g76532 = TVE_ExtrasCoords;
				float3 lerpResult4483_g76519 = lerp( WorldPosition4027_g76519 , ObjectPosition4422_g76519 , _ExtrasPositionMode);
				half2 UV96_g76532 = ( (temp_output_93_19_g76532).zw + ( (temp_output_93_19_g76532).xy * (lerpResult4483_g76519).xz ) );
				float4 tex2DArrayNode48_g76532 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76532,temp_output_84_0_g76532), 0.0 );
				float4 temp_output_17_0_g76536 = tex2DArrayNode48_g76532;
				float4 temp_output_94_85_g76532 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76536 = temp_output_94_85_g76532;
				float4 ifLocalVar18_g76536 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76536 >= 0.5 )
				ifLocalVar18_g76536 = temp_output_17_0_g76536;
				else
				ifLocalVar18_g76536 = temp_output_3_0_g76536;
				float4 lerpResult22_g76536 = lerp( temp_output_3_0_g76536 , temp_output_17_0_g76536 , temp_output_19_0_g76536);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76536 = lerpResult22_g76536;
				#else
				float4 staticSwitch24_g76536 = ifLocalVar18_g76536;
				#endif
				half4 Global_Extras_Params4559_g76519 = staticSwitch24_g76536;
				float4 break456_g76586 = Global_Extras_Params4559_g76519;
				half Global_Extras_Overlay156_g76519 = break456_g76586.z;
				float lerpResult3746_g76519 = lerp( 1.0 , Global_VariationMesh4531_g76519 , _OverlayVariationValue);
				half Overlay_Variation3739_g76519 = lerpResult3746_g76519;
				half Overlay_Value4803_g76519 = ( _GlobalOverlay * Global_Extras_Overlay156_g76519 * Overlay_Variation3739_g76519 );
				half3 World_Normal3638_g76519 = o.Normal;
				float lerpResult4683_g76519 = lerp( 1.0 , saturate( (World_Normal3638_g76519).y ) , _OverlayProjectionValue);
				half Overlay_Projection4636_g76519 = lerpResult4683_g76519;
				half Overlay_Shading4874_g76519 = Main_Albedo_Globals4847_g76519;
				float lerpResult5086_g76519 = lerp( Main_Mask_Occlusion3712_g76519 , ( 1.0 - Main_Mask_Occlusion3712_g76519 ) , _VertexOcclusionOverlayMode);
				float lerpResult5084_g76519 = lerp( Occlusion_Alpha4842_g76519 , 1.0 , lerpResult5086_g76519);
				half Occlusion_Overlay4860_g76519 = lerpResult5084_g76519;
				float temp_output_7_0_g76568 = 0.1;
				float temp_output_10_0_g76568 = ( 0.2 - temp_output_7_0_g76568 );
				half Overlay_Mask3762_g76519 = saturate( ( ( ( Overlay_Value4803_g76519 * Overlay_Projection4636_g76519 * Overlay_Shading4874_g76519 * Occlusion_Overlay4860_g76519 ) - temp_output_7_0_g76568 ) / ( temp_output_10_0_g76568 + 0.0001 ) ) );
				float3 lerpResult3875_g76519 = lerp( Blend_Albedo_Colored3711_g76519 , Global_OverlayColor1758_g76519 , Overlay_Mask3762_g76519);
				half3 Blend_Albedo_Overlay4100_g76519 = lerpResult3875_g76519;
				half Global_WetnessContrast4862_g76519 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76519 = break456_g76586.y;
				half Wetnness_Value4824_g76519 = ( Global_Extras_Wetness305_g76519 * _GlobalWetness );
				float3 lerpResult4833_g76519 = lerp( Blend_Albedo_Overlay4100_g76519 , ( Blend_Albedo_Overlay4100_g76519 * Blend_Albedo_Overlay4100_g76519 ) , ( Global_WetnessContrast4862_g76519 * Wetnness_Value4824_g76519 ));
				half3 Blend_Albedo_Wetness4830_g76519 = lerpResult4833_g76519;
				float3 _Vector12 = float3(1,1,1);
				half3 Tint_Highlight_Color4905_g76519 = _Vector12;
				float3 temp_output_4907_0_g76519 = ( Blend_Albedo_Wetness4830_g76519 * Tint_Highlight_Color4905_g76519 );
				half3 Blend_Albedo_Subsurface3874_g76519 = temp_output_4907_0_g76519;
				half IsInitialized3811_g76519 = _IsInitialized;
				float3 lerpResult3815_g76519 = lerp( float3( 1,0,0 ) , Blend_Albedo_Subsurface3874_g76519 , IsInitialized3811_g76519);
				
				float3 temp_cast_10 = (0.0).xxx;
				half3 Emissive_Color4947_g76519 = (_EmissiveColor).rgb;
				half3 Emissive_Texture4942_g76519 = (output1).rgb;
				half Global_Extras_Emissive4408_g76519 = break456_g76586.x;
				float lerpResult4417_g76519 = lerp( 1.0 , Global_Extras_Emissive4408_g76519 , _GlobalEmissive);
				half Emissive_Value4941_g76519 = ( ( lerpResult4417_g76519 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask5026_g76519 = saturate( ( Emissive_Texture4942_g76519 + Emissive_Value4941_g76519 ) );
				float3 temp_output_3_0_g76585 = ( Emissive_Color4947_g76519 * Emissive_Mask5026_g76519 );
				float temp_output_15_0_g76585 = _emissive_intensity_value;
				float3 temp_output_23_0_g76585 = ( temp_output_3_0_g76585 * temp_output_15_0_g76585 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch5070_g76519 = temp_output_23_0_g76585;
				#else
				float3 staticSwitch5070_g76519 = temp_cast_10;
				#endif
				half3 Final_Emissive4365_g76519 = staticSwitch5070_g76519;
				
				float3 temp_cast_12 = (( 0.04 * _render_specular )).xxx;
				
				half Main_Mask_Smoothness3820_g76519 = break3589_g76519.a;
				half Main_Smoothness3838_g76519 = ( Main_Mask_Smoothness3820_g76519 * _ImpostorSmoothnessValue );
				float temp_output_4864_0_g76519 = ( 1.0 - Wetnness_Value4824_g76519 );
				half Blend_Smoothness_Wetness3898_g76519 = saturate( ( Main_Smoothness3838_g76519 + ( 1.0 - ( temp_output_4864_0_g76519 * temp_output_4864_0_g76519 ) ) ) );
				
				float temp_output_3577_0_g76519 = o.Alpha;
				float localCustomAlphaClipAlways4430_g76519 = ( temp_output_3577_0_g76519 );
				half Global_Extras_Alpha1033_g76519 = saturate( break456_g76586.w );
				float lerpResult4544_g76519 = lerp( 0.0 , Global_VariationMesh4531_g76519 , _AlphaVariationValue);
				half Global_Alpha_Variation4546_g76519 = lerpResult4544_g76519;
				float lerpResult4053_g76519 = lerp( 1.0 , ( ( Global_Extras_Alpha1033_g76519 - Global_Alpha_Variation4546_g76519 ) + 0.09 ) , _GlobalAlpha);
				half Alpha_Composite4102_g76519 = lerpResult4053_g76519;
				float Alpha4430_g76519 = Alpha_Composite4102_g76519;
				{
				clip(Alpha4430_g76519 - 0.1);
				}
				half Final_Alpha4955_g76519 = localCustomAlphaClipAlways4430_g76519;
				
				fixed3 albedo = lerpResult3815_g76519;
				fixed3 normal = World_Normal3638_g76519;
				half3 emission = Final_Emissive4365_g76519;
				fixed3 specular = temp_cast_12;
				fixed metallic = 0;
				half smoothness = Blend_Smoothness_Wetness3898_g76519;
				half occlusion = 1;
				fixed alpha = Final_Alpha4955_g76519;
				fixed alphaClipThreshold = 0;

				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif
				IN.pos.zw = clipPos.zw;
				outDepth = IN.pos.z;

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				SHADOW_CASTER_FRAGMENT(IN)
			}
			ENDCG
		}
		
	}
	
	CustomEditor "TVEShaderCoreGUI"
	Fallback Off
}
/*ASEBEGIN
Version=19202
Node;AmplifyShaderEditor.TexturePropertyNode;101;-1664,-128;Inherit;True;Property;_Mask;Impostor Baked Masks;3;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;352;-640,209;Float;False;False;-1;2;ASEMaterialInspector;0;13;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;Meta;0;3;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;351;-592,45;Float;False;False;-1;2;ASEMaterialInspector;0;12;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;Deferred;0;2;Deferred;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Deferred;False;True;11;d3d11;glcore;gles;gles3;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;353;-640,242;Float;False;False;-1;2;ASEMaterialInspector;0;13;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;350;-640,176;Float;False;False;-1;2;ASEMaterialInspector;0;13;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;300;-1664,-256;Inherit;False;1279.896;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;301;-1664,512;Inherit;False;1279.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;299;-1664,-640;Inherit;False;1282.438;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;388;-1664,64;Inherit;True;Property;_Emissive;Impostor Emissive Map;4;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;386;-576,640;Inherit;False;Compile All Shaders;-1;;76289;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;387;-768,640;Inherit;False;Compile Impostors;-1;;76290;1cfd52e266bd86c47a094d0358cb5b93;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;111;-1664,-512;Half;False;Property;_ImostorCat;[ ImostorCat];0;0;Create;True;0;0;0;True;1;StyledCategory(Impostor Settings, 5, 10);False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;393;-1152,-512;Inherit;False;Property;_RenderSpecular;Impostor Render Specular;19;1;[Enum];Create;False;0;2;Off;0;On;1;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;394;-1408,-512;Half;False;Property;_RenderCoverage;Impostor Alpha To Mask;20;1;[Enum];Create;False;0;2;Off;0;On;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;390;-1664,640;Inherit;False;Define Impostor Standard;-1;;76291;94fda74735dc8f145a6385f86acddb1a;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;430;-1408,640;Inherit;False;Define Lighting Subsurface;138;;76292;77137addbb4a22f4c818adc8782926be;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;429;-1152,640;Inherit;False;Define ShaderType Plant;136;;76293;b458122dd75182d488380bd0f592b9e6;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;349;-640,-128;Float;False;True;-1;2;TVEShaderCoreGUI;0;13;BOXOPHOBIC/The Vegetation Engine/Impostors/Plant Subsurface Lit (Octa);4e5791d7c677cf540a160f0a09e2385a;True;ForwardBase;0;0;ForwardBase;13;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_RenderCoverage;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;4;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;ImpostorType=Octahedron;True;5;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;14;Material Type,InvertActionOnDeselection;1;0;Transmission;0;637859952646325406;  Transmission Shadow;0.5,True,;0;Translucency;1;637859952652906064;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;Deferred Pass;0;0;Add Pass;1;0;Meta Pass;1;0;0;5;True;True;False;True;True;False;;True;0
Node;AmplifyShaderEditor.AmplifyImpostorNode;99;-1408,-128;Inherit;False;9901;Octahedron;False;True;True;13;17;16;15;5;14;12;8;1;2;11;10;9;7;6;21;18;2;Specular;False;9;0;SAMPLER2D;;False;1;SAMPLER2D;;False;2;SAMPLER2D;;False;3;SAMPLER2D;;False;4;SAMPLER2D;;False;5;SAMPLER2D;;False;6;SAMPLER2D;;False;7;SAMPLER2D;;False;8;SAMPLERSTATE;;False;17;FLOAT4;8;FLOAT4;9;FLOAT4;10;FLOAT4;11;FLOAT4;12;FLOAT4;13;FLOAT4;14;FLOAT4;15;FLOAT3;0;FLOAT3;1;FLOAT3;2;FLOAT3;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT3;7;FLOAT3;16
Node;AmplifyShaderEditor.FunctionNode;434;-1024,-128;Inherit;False;Base Impostor;22;;76519;47a437226c28ea34bad309b04e5582cd;36,4954,0,4399,1,4400,1,4412,1,4410,1,4447,1,4010,1,3868,1,4338,1,4434,1,4539,1,4336,1,5016,1,4804,1,4920,0,4910,1,3881,1,4831,1,3891,1,4416,1,1745,1,3479,0,5004,0,4987,1,3707,0,4676,1,1742,0,3484,0,860,1,4909,1,2260,1,5014,1,4901,0,4894,1,4911,1,5074,1;7;3592;COLOR;0,0,0,0;False;4370;COLOR;0,0,0,0;False;4918;FLOAT;1;False;3583;FLOAT3;0,0,0;False;3574;FLOAT3;0,0,0;False;3577;FLOAT;0;False;3563;FLOAT3;0,0,0;False;16;FLOAT3;3597;FLOAT3;3594;FLOAT3;4372;FLOAT;4373;FLOAT;3595;FLOAT;4119;FLOAT;3598;FLOAT;3980;FLOAT3;3974;FLOAT;4555;FLOAT;3973;FLOAT;3975;FLOAT;4334;FLOAT;3593;FLOAT;4335;FLOAT3;534
WireConnection;349;0;434;3597
WireConnection;349;1;434;3594
WireConnection;349;2;434;4372
WireConnection;349;3;434;4119
WireConnection;349;4;434;3598
WireConnection;349;14;434;3974
WireConnection;349;6;434;3593
WireConnection;349;12;434;534
WireConnection;99;0;101;0
WireConnection;99;1;388;0
WireConnection;434;3592;99;8
WireConnection;434;4370;99;9
WireConnection;434;3583;99;0
WireConnection;434;3574;99;1
WireConnection;434;3577;99;6
WireConnection;434;3563;99;7
ASEEND*/
//CHKSM=78BC591F518C5D3D8FB19F40CBB7F9CF4AB68171