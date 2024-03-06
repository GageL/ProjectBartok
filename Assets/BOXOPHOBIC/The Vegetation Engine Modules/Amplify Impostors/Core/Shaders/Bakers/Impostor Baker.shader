// Made with Amplify Shader Editor v1.9.3.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hidden/BOXOPHOBIC/The Vegetation Engine/Helpers/Impostors Baker"
{
	Properties
	{
		_IsPropShader("IsPropShader", Float) = 0
		_IsBarkShader("IsBarkShader", Float) = 0
		_IsGrassShader("IsGrassShader", Float) = 0
		_IsPlantShader("IsPlantShader", Float) = 0
		_IsPolygonalShader("IsPolygonalShader", Float) = 0
		_IsLeafShader("IsLeafShader", Float) = 0
		_IsCrossShader("IsCrossShader", Float) = 0
		_HasEmissive("_HasEmissive", Float) = 0
		_HasOcclusion("_HasOcclusion", Float) = 1
		_HasGradient("_HasGradient", Float) = 1
		[NoScaleOffset]_MainAlbedoTex("Main Albedo", 2D) = "white" {}
		[NoScaleOffset]_MainNormalTex("Main Normal", 2D) = "bump" {}
		[NoScaleOffset]_MainMaskTex("Main Mask", 2D) = "white" {}
		[Space(10)]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 0
		_AlphaClipValue("_AlphaClipValue", Float) = 0
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 1
		_MainMetallicValue("Main Metallic", Range( 0 , 1)) = 1
		[HDR]_GradientColorOne("Gradient Color One", Color) = (1,1,1,1)
		[HDR]_GradientColorTwo("Gradient Color Two", Color) = (1,1,1,1)
		[StyledRemapSlider(_GradientMinValue, _GradientMaxValue, 0, 1)]_GradientMaskRemap("Gradient Mask", Vector) = (0,0,0,0)
		[HideInInspector]_GradientMinValue("Gradient Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_GradientMaxValue("Gradient Mask Max ", Range( 0 , 1)) = 1
		_RenderClip("Render Clip", Float) = 1
		[Enum(Off,0,On,1)]_DetailMode("Detail Mode", Float) = 0
		[NoScaleOffset]_SecondAlbedoTex("Detail Albedo", 2D) = "white" {}
		[NoScaleOffset]_SecondNormalTex("Detail Normal", 2D) = "bump" {}
		[NoScaleOffset]_SecondMaskTex("Detail Mask", 2D) = "white" {}
		_SecondNormalValue("Detail Normal", Range( -8 , 8)) = 1
		_SecondMetallicValue("Detail Metallic", Range( 0 , 1)) = 0
		_SecondSmoothnessValue("Detail Smoothness", Range( 0 , 1)) = 1
		[Space(10)]_DetailNormalValue("Detail Use Main Normal", Range( 0 , 1)) = 0.5
		_SecondAlbedoValue("Detail Albedo", Range( 0 , 1)) = 0
		_MainAlbedoValue("Main Albedo", Range( 0 , 1)) = 1
		[Space(10)][StyledToggle]_VertexColorMode("Use Vertex Color for Albedo", Range( 0 , 1)) = 0
		[HideInInspector]_DetailBlendMinValue("Detail Blend Min Value", Range( 0 , 1)) = 0.2
		[HideInInspector]_DetailMaskMinValue("Detail Mask Min Value", Range( 0 , 1)) = 0.2
		[HideInInspector]_DetailMeshMinValue("Detail Mesh Min Value", Range( 0 , 1)) = 0.2
		[HideInInspector]_DetailBlendMaxValue("Detail Blend Max Value", Range( 0 , 1)) = 0.3
		[HideInInspector]_DetailMaskMaxValue("Detail Mask Max Value", Range( 0 , 1)) = 0.3
		[HideInInspector]_DetailMeshMaxValue("Detail Mesh Max Value", Range( 0 , 1)) = 0.3
		[HideInInspector]_render_normals("_render_normals", Vector) = (1,1,1,0)
		[Enum(Constant,0,Dual Color,1)]_MainColorMode("Main Color", Float) = 0
		[Enum(Off,0,On,1)]_DetailMaskMode("Detail Mask Mode", Float) = 0
		[Enum(Off,0,On,1)]_DetailMeshMode("Detail Mesh Mode", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_EmissiveTex("Emissive Texture", 2D) = "white" {}
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		[Space(10)]_DetailValue("Detail Blend Intensity", Range( 0 , 1)) = 1
		[Space(10)]_EmissiveUVs("Emissive UVs", Vector) = (1,1,0,0)
		[HDR]_MainColorTwo("Main ColorB", Color) = (1,1,1,1)
		[Enum(Overlay,0,Replace,1)]_DetailBlendMode("Detail Blend", Float) = 1
		[Space(10)][StyledRemapSlider(_MainMaskMinValue, _MainMaskMaxValue, 0, 1, 0, 0)]_MainMaskRemap("Main Mask Remap", Vector) = (0,0,0,0)
		[HideInInspector]_MainMaskMinValue("Main Mask Min Value", Range( 0 , 1)) = 0
		[HideInInspector]_MainMaskMaxValue("Main Mask Max Value", Range( 0 , 1)) = 1
		[StyledRemapSlider(_VertexOcclusionMinValue, _VertexOcclusionMaxValue, 0, 1, 0, 0)]_VertexOcclusionRemap("Occlusion Remap", Vector) = (0,0,0,0)
		[StyledRemapSlider(_EmissiveTexMinValue, _EmissiveTexMaxValue,0,1)]_EmissiveTexRemap("Emissive Remap", Vector) = (0,0,0,0)
		[HideInInspector]_VertexOcclusionMinValue("Occlusion Min", Range( 0 , 1)) = 0
		[HideInInspector]_EmissiveTexMinValue("Emissive Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_VertexOcclusionMaxValue("Occlusion Max", Range( 0 , 1)) = 1
		[HideInInspector]_EmissiveTexMaxValue("Emissive Mask Max", Range( 0 , 1)) = 1
		[StyledRemapSlider(_SecondMaskMinValue, _SecondMaskMaxValue, 0, 1, 0, 0)]_SecondMaskRemap("Detail Mask Remap", Vector) = (0,0,0,0)
		[HideInInspector]_SecondMaskMinValue("Detail Mask Min", Range( 0 , 1)) = 0
		[Enum(Multiply,0,Replace,1)]_DetailAlphaMode("Detail Alpha", Float) = 0
		[HideInInspector]_SecondMaskMaxValue("Detail Mask Max", Range( 0 , 1)) = 1
		[Space(10)][StyledVector(9)]_SecondUVs("Detail UVs", Vector) = (1,1,0,0)
		[Enum(Constant,0,Dual Color,1)]_SecondColorMode("Detail Color", Float) = 0
		[HideInInspector]_second_uvs_mode("_second_uvs_mode", Vector) = (1,1,0,0)
		[StyledToggle]_SecondUVsScaleMode("Use Inverted Tilling Mode", Float) = 0
		[HDR][Space(10)]_SecondColor("Detail Color", Color) = (1,1,1,1)
		[HDR]_SecondColorTwo("Detail ColorB", Color) = (1,1,1,1)
		[HideInInspector]_detail_mesh_mode("_detail_mesh_mode", Vector) = (0,0,0,0)
		[Enum(Procedural,0,Vertex Red,10,Vertex Green,20,Vertex Blue,30,Vertex Alpha,40)]_VertexOcclusionMaskMode("Occlusion Mask", Float) = 40
		[HideInInspector]_vertex_occlusion_mask_mode("_vertex_occlusion_mask_mode", Vector) = (0,0,0,0)
		[Enum(Off,0,Vertex Red,10,Vertex Green,20,Vertex Blue,30,Vertex Alpha,40)]_MotionVariationMode("Motion Variation Mask", Float) = 10
		[HideInInspector]_motion_variation_mode("_motion_variation_mode", Vector) = (0,0,0,0)
		_BoundsHeightValue("Object Height", Float) = 1
		_BoundsRadiusValue("Object Radius", Float) = 1
		[HideInInspector]_IsLiteShader("IsLiteShader", Float) = 0
		[HideInInspector]_RenderCull("_RenderCull", Float) = 0

	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
	LOD 100
		CGINCLUDE
		#pragma target 4.5
		ENDCG
		Cull [_render_cull]
		

		Pass
		{
			Name "Unlit"
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#pragma multi_compile_fwdbase
			#include "UnityStandardUtils.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION


			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_tangent : TANGENT;
				float3 ase_normal : NORMAL;
			};

			struct v2f
			{
				UNITY_POSITION(pos);
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
			};

			uniform half _RenderCull;
			uniform half4 _MainMaskRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _DetailBlendMode;
			uniform half4 _EmissiveTexRemap;
			uniform float4 _GradientMaskRemap;
			uniform half _IsLiteShader;
			uniform sampler2D _MainAlbedoTex;
			uniform half4 _MainUVs;
			uniform float _IsPolygonalShader;
			uniform half _MainAlbedoValue;
			uniform half _VertexColorMode;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			uniform sampler2D _MainMaskTex;
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			uniform sampler2D _SecondAlbedoTex;
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			uniform sampler2D _SecondMaskTex;
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			uniform sampler2D _MainNormalTex;
			uniform float _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half4 _detail_mesh_mode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _BoundsHeightValue;
			uniform half _GradientMinValue;
			uniform half _GradientMaxValue;
			uniform float _HasGradient;
			uniform half _DetailNormalValue;
			uniform sampler2D _SecondNormalTex;
			uniform half _SecondNormalValue;
			uniform half3 _render_normals;
			uniform float _MainMetallicValue;
			uniform half _SecondMetallicValue;
			uniform float _IsPropShader;
			uniform half4 _motion_variation_mode;
			uniform half _MotionVariationMode;
			uniform float _IsBarkShader;
			uniform float _IsLeafShader;
			uniform float _IsCrossShader;
			uniform float _IsGrassShader;
			uniform float _IsPlantShader;
			uniform half _BoundsRadiusValue;
			uniform half4 _vertex_occlusion_mask_mode;
			uniform half _VertexOcclusionMaskMode;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			uniform float _HasOcclusion;
			uniform float _MainSmoothnessValue;
			uniform half _SecondSmoothnessValue;
			uniform sampler2D _EmissiveTex;
			uniform half4 _EmissiveUVs;
			uniform half _EmissiveTexMinValue;
			uniform half _EmissiveTexMaxValue;
			uniform float _HasEmissive;
			uniform half _DetailAlphaMode;
			uniform float _AlphaClipValue;
			uniform float _RenderClip;


			v2f vert(appdata v )
			{
				v2f o = (v2f)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				float4 break33_g76675 = _second_uvs_mode;
				float2 temp_output_30_0_g76675 = ( v.ase_texcoord.xy * break33_g76675.x );
				float2 temp_output_29_0_g76675 = ( (v.ase_texcoord1).zw * break33_g76675.y );
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float2 temp_output_31_0_g76675 = ( (ase_worldPos).xz * break33_g76675.z );
				half2 Second_UVs_Tilling1074_g76658 = (_SecondUVs).xy;
				half2 Second_UVs_Scale1075_g76658 = ( 1.0 / Second_UVs_Tilling1074_g76658 );
				float2 lerpResult1079_g76658 = lerp( Second_UVs_Tilling1074_g76658 , Second_UVs_Scale1075_g76658 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset1070_g76658 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76659 = ( ( ( temp_output_30_0_g76675 + temp_output_29_0_g76675 + temp_output_31_0_g76675 ) * lerpResult1079_g76658 ) + Second_UVs_Offset1070_g76658 );
				o.ase_texcoord.zw = vertexToFrag11_g76659;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord1.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord2.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord3.xyz = ase_worldBitangent;
				
				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord1.w = eyeDepth;
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				o.ase_texcoord4 = v.vertex;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}


			void frag(v2f i , bool ase_vface : SV_IsFrontFace,
				out half4 outGBuffer0 : SV_Target0,
				out half4 outGBuffer1 : SV_Target1,
				out half4 outGBuffer2 : SV_Target2,
				out half4 outGBuffer3 : SV_Target3,
				out half4 outGBuffer4 : SV_Target4,
				out half4 outGBuffer5 : SV_Target5,
				out half4 outGBuffer6 : SV_Target6,
				out half4 outGBuffer7 : SV_Target7,
				out float outDepth : SV_Depth
			)
			{
				UNITY_SETUP_INSTANCE_ID( i );
				float _IsPolygonalShader691_g76658 = _IsPolygonalShader;
				float2 lerpResult724_g76658 = lerp( ( ( i.ase_texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw ) , i.ase_texcoord.xy , _IsPolygonalShader691_g76658);
				float2 Main_UVs247_g76658 = lerpResult724_g76658;
				float4 tex2DNode14_g76658 = tex2D( _MainAlbedoTex, Main_UVs247_g76658 );
				float3 lerpResult917_g76658 = lerp( float3( 1,1,1 ) , (tex2DNode14_g76658).rgb , _MainAlbedoValue);
				float3 Vertex_Color1081_g76658 = (i.ase_color).rgb;
				float3 lerpResult678_g76658 = lerp( lerpResult917_g76658 , Vertex_Color1081_g76658 , _VertexColorMode);
				float4 tex2DNode30_g76658 = tex2D( _MainMaskTex, Main_UVs247_g76658 );
				float Main_Mask64_g76658 = tex2DNode30_g76658.b;
				float clampResult17_g76663 = clamp( Main_Mask64_g76658 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76662 = _MainMaskMinValue;
				float temp_output_10_0_g76662 = ( _MainMaskMaxValue - temp_output_7_0_g76662 );
				half Main_Mask_Remap802_g76658 = saturate( ( ( clampResult17_g76663 - temp_output_7_0_g76662 ) / ( temp_output_10_0_g76662 + 0.0001 ) ) );
				float lerpResult1107_g76658 = lerp( 1.0 , Main_Mask_Remap802_g76658 , _MainColorMode);
				float4 lerpResult1083_g76658 = lerp( _MainColorTwo , _MainColor , lerpResult1107_g76658);
				half3 Main_Color_RGB1090_g76658 = (lerpResult1083_g76658).rgb;
				float3 Main_Albedo79_g76658 = ( lerpResult678_g76658 * Main_Color_RGB1090_g76658 );
				float2 vertexToFrag11_g76659 = i.ase_texcoord.zw;
				half2 Second_UVs495_g76658 = vertexToFrag11_g76659;
				float4 tex2DNode491_g76658 = tex2D( _SecondAlbedoTex, Second_UVs495_g76658 );
				float3 lerpResult921_g76658 = lerp( float3( 1,1,1 ) , (tex2DNode491_g76658).rgb , _SecondAlbedoValue);
				float4 tex2DNode451_g76658 = tex2D( _SecondMaskTex, Second_UVs495_g76658 );
				half Second_Mask437_g76658 = tex2DNode451_g76658.b;
				float clampResult17_g76664 = clamp( Second_Mask437_g76658 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76665 = _SecondMaskMinValue;
				float temp_output_10_0_g76665 = ( _SecondMaskMaxValue - temp_output_7_0_g76665 );
				half Second_Mask_Remap887_g76658 = saturate( ( ( clampResult17_g76664 - temp_output_7_0_g76665 ) / ( temp_output_10_0_g76665 + 0.0001 ) ) );
				float lerpResult1108_g76658 = lerp( 1.0 , Second_Mask_Remap887_g76658 , _SecondColorMode);
				float4 lerpResult1095_g76658 = lerp( _SecondColorTwo , _SecondColor , lerpResult1108_g76658);
				half3 Second_Color_RGB1103_g76658 = (lerpResult1095_g76658).rgb;
				half3 Second_Albedo469_g76658 = ( lerpResult921_g76658 * Second_Color_RGB1103_g76658 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76660 = 2.0;
				#else
				float staticSwitch1_g76660 = 4.594794;
				#endif
				float3 lerpResult743_g76658 = lerp( ( Main_Albedo79_g76658 * Second_Albedo469_g76658 * staticSwitch1_g76660 ) , Second_Albedo469_g76658 , _DetailBlendMode);
				float lerpResult1023_g76658 = lerp( Main_Mask64_g76658 , Second_Mask437_g76658 , _DetailMaskMode);
				float clampResult17_g76672 = clamp( lerpResult1023_g76658 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76670 = _DetailMaskMinValue;
				float temp_output_10_0_g76670 = ( _DetailMaskMaxValue - temp_output_7_0_g76670 );
				half Blend_Texture1015_g76658 = saturate( ( ( clampResult17_g76672 - temp_output_7_0_g76670 ) / ( temp_output_10_0_g76670 + 0.0001 ) ) );
				float3 ase_worldTangent = i.ase_texcoord1.xyz;
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float3 ase_worldBitangent = i.ase_texcoord3.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal1148_g76658 = UnpackScaleNormal( tex2D( _MainNormalTex, Main_UVs247_g76658 ), _MainNormalValue );
				float3 worldNormal1148_g76658 = float3(dot(tanToWorld0,tanNormal1148_g76658), dot(tanToWorld1,tanNormal1148_g76658), dot(tanToWorld2,tanNormal1148_g76658));
				half3 Main_NormalWS1149_g76658 = worldNormal1148_g76658;
				float Detail_MeshMode1150_g76658 = saturate( _DetailMeshMode );
				float lerpResult1020_g76658 = lerp( i.ase_color.b , ((Main_NormalWS1149_g76658).y*0.5 + 0.5) , Detail_MeshMode1150_g76658);
				float4 break33_g76676 = _detail_mesh_mode;
				float temp_output_30_0_g76676 = ( i.ase_color.r * break33_g76676.x );
				float temp_output_29_0_g76676 = ( i.ase_color.g * break33_g76676.y );
				float temp_output_31_0_g76676 = ( i.ase_color.b * break33_g76676.z );
				float lerpResult1140_g76658 = lerp( ((Main_NormalWS1149_g76658).y*0.5 + 0.5) , ( temp_output_30_0_g76676 + temp_output_29_0_g76676 + temp_output_31_0_g76676 + ( i.ase_color.a * break33_g76676.w ) ) , Detail_MeshMode1150_g76658);
				float _IsLitelShader1133_g76658 = _IsLiteShader;
				float lerpResult1156_g76658 = lerp( lerpResult1020_g76658 , lerpResult1140_g76658 , _IsLitelShader1133_g76658);
				float Mesh_Detail1158_g76658 = lerpResult1156_g76658;
				float clampResult17_g76673 = clamp( Mesh_Detail1158_g76658 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76669 = _DetailMeshMinValue;
				float temp_output_10_0_g76669 = ( _DetailMeshMaxValue - temp_output_7_0_g76669 );
				half Blend_Mesh550_g76658 = saturate( ( ( clampResult17_g76673 - temp_output_7_0_g76669 ) / ( temp_output_10_0_g76669 + 0.0001 ) ) );
				float clampResult17_g76671 = clamp( ( Blend_Texture1015_g76658 * Blend_Mesh550_g76658 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g76666 = _DetailBlendMinValue;
				float temp_output_10_0_g76666 = ( _DetailBlendMaxValue - temp_output_7_0_g76666 );
				float Detail_Mode769_g76658 = _DetailMode;
				half Blend_Mask535_g76658 = ( saturate( ( ( clampResult17_g76671 - temp_output_7_0_g76666 ) / ( temp_output_10_0_g76666 + 0.0001 ) ) ) * Detail_Mode769_g76658 * _DetailValue );
				float3 lerpResult560_g76658 = lerp( Main_Albedo79_g76658 , lerpResult743_g76658 , Blend_Mask535_g76658);
				float3 lerpResult771_g76658 = lerp( Main_Albedo79_g76658 , lerpResult560_g76658 , Detail_Mode769_g76658);
				half3 Blend_Albedo540_g76658 = lerpResult771_g76658;
				half Mesh_Height1123_g76658 = saturate( ( i.ase_texcoord4.xyz.y / _BoundsHeightValue ) );
				float lerpResult1166_g76658 = lerp( i.ase_color.a , Mesh_Height1123_g76658 , _IsLitelShader1133_g76658);
				float Mesh_Gradient1167_g76658 = lerpResult1166_g76658;
				float temp_output_7_0_g76677 = _GradientMinValue;
				float temp_output_10_0_g76677 = ( _GradientMaxValue - temp_output_7_0_g76677 );
				float3 lerpResult339_g76658 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , saturate( ( ( Mesh_Gradient1167_g76658 - temp_output_7_0_g76677 ) / ( temp_output_10_0_g76677 + 0.0001 ) ) ));
				float lerpResult899_g76658 = lerp( Main_Mask_Remap802_g76658 , Second_Mask_Remap887_g76658 , Blend_Mask535_g76658);
				float lerpResult905_g76658 = lerp( Main_Mask_Remap802_g76658 , lerpResult899_g76658 , Detail_Mode769_g76658);
				half Blend_Mask_Remap892_g76658 = lerpResult905_g76658;
				float3 lerpResult419_g76658 = lerp( float3( 1,1,1 ) , lerpResult339_g76658 , ( Blend_Mask_Remap892_g76658 * _HasGradient ));
				half3 Tint_Gradient335_g76658 = lerpResult419_g76658;
				half3 Tint_User1034_g76658 = float3(1,1,1);
				half3 Final_Albedo606_g76658 = ( Blend_Albedo540_g76658 * Tint_Gradient335_g76658 * Tint_User1034_g76658 );
				float Final_Alpha387_g76658 = 1.0;
				float4 appendResult230_g76658 = (float4(Final_Albedo606_g76658 , Final_Alpha387_g76658));
				
				float3 Main_Normal27_g76658 = UnpackScaleNormal( tex2D( _MainNormalTex, Main_UVs247_g76658 ), _MainNormalValue );
				float3 lerpResult554_g76658 = lerp( float3( 0,0,1 ) , Main_Normal27_g76658 , _DetailNormalValue);
				half3 Second_Normal443_g76658 = UnpackScaleNormal( tex2D( _SecondNormalTex, Second_UVs495_g76658 ), _SecondNormalValue );
				float3 lerpResult502_g76658 = lerp( Main_Normal27_g76658 , BlendNormals( lerpResult554_g76658 , Second_Normal443_g76658 ) , Blend_Mask535_g76658);
				float3 lerpResult773_g76658 = lerp( Main_Normal27_g76658 , lerpResult502_g76658 , Detail_Mode769_g76658);
				float3 temp_output_13_0_g76661 = lerpResult773_g76658;
				float3 temp_output_33_0_g76661 = ( temp_output_13_0_g76661 * _render_normals );
				float3 switchResult12_g76661 = (((ase_vface>0)?(temp_output_13_0_g76661):(temp_output_33_0_g76661)));
				half3 Blend_Normal582_g76658 = switchResult12_g76661;
				float3 tanNormal3_g76658 = Blend_Normal582_g76658;
				float3 worldNormal3_g76658 = normalize( float3(dot(tanToWorld0,tanNormal3_g76658), dot(tanToWorld1,tanNormal3_g76658), dot(tanToWorld2,tanNormal3_g76658)) );
				float3 Final_NormalsWS91_g76658 = (worldNormal3_g76658*0.5 + 0.5);
				float eyeDepth = i.ase_texcoord1.w;
				float temp_output_7_0_g76658 = ( -1.0 / UNITY_MATRIX_P[2].z );
				float Final_Depth92_g76658 = ( ( eyeDepth + temp_output_7_0_g76658 ) / temp_output_7_0_g76658 );
				float4 appendResult235_g76658 = (float4(Final_NormalsWS91_g76658 , Final_Depth92_g76658));
				
				float Main_Metallic62_g76658 = ( tex2DNode30_g76658.r * _MainMetallicValue );
				half Second_Metallic465_g76658 = ( tex2DNode451_g76658.r * _SecondMetallicValue );
				float lerpResult505_g76658 = lerp( Main_Metallic62_g76658 , Second_Metallic465_g76658 , Blend_Mask535_g76658);
				float lerpResult775_g76658 = lerp( Main_Metallic62_g76658 , lerpResult505_g76658 , Detail_Mode769_g76658);
				half Blend_Metallic543_g76658 = lerpResult775_g76658;
				float _IsPropShader89_g76658 = _IsPropShader;
				float4 break33_g76678 = _motion_variation_mode;
				float temp_output_30_0_g76678 = ( i.ase_color.r * break33_g76678.x );
				float temp_output_29_0_g76678 = ( i.ase_color.g * break33_g76678.y );
				float temp_output_31_0_g76678 = ( i.ase_color.b * break33_g76678.z );
				float lerpResult1171_g76658 = lerp( 0.0 , ( temp_output_30_0_g76678 + temp_output_29_0_g76678 + temp_output_31_0_g76678 + ( i.ase_color.a * break33_g76678.w ) ) , saturate( _MotionVariationMode ));
				float lerpResult1177_g76658 = lerp( i.ase_color.r , lerpResult1171_g76658 , _IsLitelShader1133_g76658);
				float Mesh_Variation1179_g76658 = lerpResult1177_g76658;
				float _IsBarkShader78_g76658 = _IsBarkShader;
				float _IsLeafShader81_g76658 = _IsLeafShader;
				float _IsCrossShader254_g76658 = _IsCrossShader;
				float _IsGrassShader255_g76658 = _IsGrassShader;
				float _IsPlantShader925_g76658 = _IsPlantShader;
				float _IsAnyFoliageShader86_g76658 = saturate( ( _IsBarkShader78_g76658 + _IsLeafShader81_g76658 + _IsCrossShader254_g76658 + _IsGrassShader255_g76658 + _IsPlantShader925_g76658 ) );
				float Final_VariationOrMetallic67_g76658 = ( ( Blend_Metallic543_g76658 * _IsPropShader89_g76658 ) + ( Mesh_Variation1179_g76658 * _IsAnyFoliageShader86_g76658 ) );
				float3 appendResult1124_g76658 = (float3(0.0 , i.ase_texcoord4.xyz.y , 0.0));
				half Mesh_Spherical1129_g76658 = saturate( ( distance( i.ase_texcoord4.xyz , appendResult1124_g76658 ) / _BoundsRadiusValue ) );
				float4 break33_g76679 = _vertex_occlusion_mask_mode;
				float temp_output_30_0_g76679 = ( i.ase_color.r * break33_g76679.x );
				float temp_output_29_0_g76679 = ( i.ase_color.g * break33_g76679.y );
				float temp_output_31_0_g76679 = ( i.ase_color.b * break33_g76679.z );
				float lerpResult1111_g76658 = lerp( Mesh_Spherical1129_g76658 , ( temp_output_30_0_g76679 + temp_output_29_0_g76679 + temp_output_31_0_g76679 + ( i.ase_color.a * break33_g76679.w ) ) , saturate( _VertexOcclusionMaskMode ));
				float lerpResult1134_g76658 = lerp( i.ase_color.g , lerpResult1111_g76658 , _IsLitelShader1133_g76658);
				float Mesh_Occlusion1136_g76658 = lerpResult1134_g76658;
				float clampResult17_g76667 = clamp( Mesh_Occlusion1136_g76658 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76668 = _VertexOcclusionMinValue;
				float temp_output_10_0_g76668 = ( _VertexOcclusionMaxValue - temp_output_7_0_g76668 );
				float lerpResult879_g76658 = lerp( 1.0 , saturate( ( ( clampResult17_g76667 - temp_output_7_0_g76668 ) / ( temp_output_10_0_g76668 + 0.0001 ) ) ) , _HasOcclusion);
				half Vertex_Occlusion_Remap827_g76658 = lerpResult879_g76658;
				float Final_Mask_Green372_g76658 = Vertex_Occlusion_Remap827_g76658;
				float lerpResult1106_g76658 = lerp( Blend_Mask_Remap892_g76658 , Main_Mask64_g76658 , _IsPolygonalShader691_g76658);
				float Final_Mask208_g76658 = lerpResult1106_g76658;
				float Main_Smoothness65_g76658 = ( tex2DNode30_g76658.a * _MainSmoothnessValue );
				half Second_Smoothness472_g76658 = ( tex2DNode451_g76658.a * _SecondSmoothnessValue );
				float lerpResult539_g76658 = lerp( Main_Smoothness65_g76658 , Second_Smoothness472_g76658 , Blend_Mask535_g76658);
				float lerpResult778_g76658 = lerp( Main_Smoothness65_g76658 , lerpResult539_g76658 , Detail_Mode769_g76658);
				half Blend_Smoothness553_g76658 = lerpResult778_g76658;
				float Final_Smoothness214_g76658 = Blend_Smoothness553_g76658;
				float4 appendResult236_g76658 = (float4(Final_VariationOrMetallic67_g76658 , Final_Mask_Green372_g76658 , Final_Mask208_g76658 , Final_Smoothness214_g76658));
				
				half2 Emissive_UVs655_g76658 = ( ( i.ase_texcoord.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g76674 = _EmissiveTexMinValue;
				float3 temp_cast_3 = (temp_output_7_0_g76674).xxx;
				float temp_output_10_0_g76674 = ( _EmissiveTexMaxValue - temp_output_7_0_g76674 );
				half3 Final_Emissive661_g76658 = ( saturate( ( ( (tex2D( _EmissiveTex, Emissive_UVs655_g76658 )).rgb - temp_cast_3 ) / ( temp_output_10_0_g76674 + 0.0001 ) ) ) * _HasEmissive );
				float4 appendResult672_g76658 = (float4(Final_Emissive661_g76658 , 1.0));
				
				float Main_Alpha90_g76658 = tex2DNode14_g76658.a;
				half Second_Alpha881_g76658 = tex2DNode491_g76658.a;
				float lerpResult912_g76658 = lerp( Main_Alpha90_g76658 , Second_Alpha881_g76658 , Blend_Mask535_g76658);
				float lerpResult971_g76658 = lerp( ( Main_Alpha90_g76658 * Second_Alpha881_g76658 ) , lerpResult912_g76658 , _DetailAlphaMode);
				float lerpResult914_g76658 = lerp( Main_Alpha90_g76658 , lerpResult971_g76658 , Detail_Mode769_g76658);
				half Blend_Alpha913_g76658 = lerpResult914_g76658;
				float Alpha_Cutoff406_g76658 = ( _AlphaClipValue * 0.9 );
				float Render_Clip390_g76658 = _RenderClip;
				float lerpResult389_g76658 = lerp( 1.0 , ( Blend_Alpha913_g76658 - Alpha_Cutoff406_g76658 ) , Render_Clip390_g76658);
				float Final_Clip393_g76658 = lerpResult389_g76658;
				

				outGBuffer0 = appendResult230_g76658;
				outGBuffer1 = appendResult235_g76658;
				outGBuffer2 = appendResult236_g76658;
				outGBuffer3 = appendResult672_g76658;
				outGBuffer4 = 0;
				outGBuffer5 = 0;
				outGBuffer6 = 0;
				outGBuffer7 = 0;
				float alpha = Final_Clip393_g76658;
				clip( alpha );
				outDepth = i.pos.z;
			}
			ENDCG
		}
	}
	
	
	Fallback Off
}
/*ASEBEGIN
Version=19301
Node;AmplifyShaderEditor.FunctionNode;286;2688,-512;Inherit;False;Compile All Shaders;-1;;75599;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;268;2304,-512;Half;False;Property;_RenderCull;_RenderCull;84;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;322;2304,-384;Inherit;False;Base Baker;0;;76658;fd1de57b6831b5a4a975edc31360e4cc;1,1033,0;1;1035;FLOAT3;1,1,1;False;5;FLOAT4;0;FLOAT4;19;FLOAT4;20;FLOAT4;673;FLOAT;323
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;199;2688,-384;Float;False;True;-1;2;;100;14;Hidden/BOXOPHOBIC/The Vegetation Engine/Helpers/Impostors Baker;f53051a8190f7044fa936bd7fbe116c1;True;Unlit;0;0;Unlit;10;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;_render_cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;5;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;0;;0;0;Standard;0;0;1;True;False;;False;0
WireConnection;199;0;322;0
WireConnection;199;1;322;19
WireConnection;199;2;322;20
WireConnection;199;3;322;673
WireConnection;199;8;322;323
ASEEND*/
//CHKSM=FA5AF2EA218980642575A982A88FA34460CB538A