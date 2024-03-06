// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Elements/Extras Wetness (Terrain)"
{
	Properties
	{
		[StyledMessage(Info, Use the Wetness elements to dampen the global wetness effect on vegetation and props. Make sure the element size matches your terrain., 0,0)]_ElementMessage("Element Message", Float) = 0
		[HideInInspector]_IsVersion("_IsVersion", Float) = 1230
		[HideInInspector]_IsElementShader("_IsElementShader", Float) = 1
		[HideInInspector]_IsExtrasElement("_IsExtrasElement", Float) = 1
		[StyledCategory(Render Settings)]_CategoryRender("[ Category Render ]", Float) = 0
		_ElementIntensity("Render Intensity", Range( 0 , 1)) = 1
		[StyledMessage(Info, When using a higher Layer number the Global Volume will create more render textures to render the elements. Try using fewer layers when possible., _ElementLayerMessage, 1, 10, 10)]_ElementLayerMessage("Render Layer Message", Float) = 0
		[StyledMessage(Warning, When using all layers the Global Volume will create one render texture for each layer to render the elements. Try using fewer layers when possible., _ElementLayerWarning, 1, 10, 10)]_ElementLayerWarning("Render Layer Warning", Float) = 0
		[StyledMask(TVEExtrasLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_ElementLayerMask("Render Layer", Float) = 1
		[StyledCategory(Control Settings)]_CategoryControl("[ Category Control ]", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_ControlTex1("Control 01", 2D) = "black" {}
		[HDR][Gamma][NoScaleOffset][StyledTextureSingleLine]_ControlTex2("Control 02", 2D) = "black" {}
		[HDR][Gamma][NoScaleOffset][StyledTextureSingleLine]_ControlTex3("Control 03", 2D) = "black" {}
		[HDR][Gamma][NoScaleOffset][StyledTextureSingleLine]_ControlTex4("Control 04", 2D) = "black" {}
		[Space(10)][StyledRemapSlider(_ControlMinValue, _ControlMaxValue, 0, 1)]_ControlMaskRemap("Control Remap", Vector) = (0,0,0,0)
		[HideInInspector]_ControlMinValue("Control Min", Range( 0 , 1)) = 0
		[HideInInspector]_ControlMaxValue("Control Max", Range( 0 , 1)) = 1
		[StyledCategory(Layer Settings)]_CategoryLayer("[ Category Layer ]", Float) = 0
		_LayerValue1("Layer 01", Range( 0 , 1)) = 1
		_LayerValue2("Layer 02", Range( 0 , 1)) = 1
		_LayerValue3("Layer 03", Range( 0 , 1)) = 1
		_LayerValue4("Layer 04", Range( 0 , 1)) = 1
		[Space(10)]_LayerValue5("Layer 05", Range( 0 , 1)) = 1
		_LayerValue6("Layer 06", Range( 0 , 1)) = 1
		_LayerValue7("Layer 07", Range( 0 , 1)) = 1
		_LayerValue8("Layer 08", Range( 0 , 1)) = 1
		[Space(10)]_LayerValue9("Layer 09", Range( 0 , 1)) = 1
		_LayerValue10("Layer 10", Range( 0 , 1)) = 1
		_LayerValue11("Layer 11", Range( 0 , 1)) = 1
		_LayerValue12("Layer 12", Range( 0 , 1)) = 1
		[Space(10)]_LayerValue13("Layer 13", Range( 0 , 1)) = 1
		_LayerValue14("Layer 14", Range( 0 , 1)) = 1
		_LayerValue15("Layer 15", Range( 0 , 1)) = 1
		_LayerValue16("Layer 16", Range( 0 , 1)) = 1
		[StyledCategory(Element Settings)]_CategoryElement("[ Category Element ]", Float) = 0
		_AdditionalValue1("Winter Value", Range( 0 , 1)) = 1
		_AdditionalValue2("Spring Value", Range( 0 , 1)) = 1
		_AdditionalValue3("Summer Value", Range( 0 , 1)) = 1
		_AdditionalValue4("Autumn Value", Range( 0 , 1)) = 1
		[Space(10)][StyledRemapSlider(_SeasonMinValue, _SeasonMaxValue,0, 1)]_SeasonRemap("Seasons Curve", Vector) = (0,0,0,0)
		[HideInInspector]_SeasonMinValue("Seasons Min", Range( 0 , 1)) = 0
		[HideInInspector]_SeasonMaxValue("Seasons Max", Range( 0 , 1)) = 1
		[StyledCategory(Fading Settings)]_CategoryFade("[ Category Fade ]", Float) = 0
		[StyledToggle]_ElementVolumeFadeMode("Enable Volume Fade", Float) = 0
		[HideInInspector]_ElementLayerValue("Legacy Render Layer", Float) = -1
		[HideInInspector]_ElementFadeSupport("Legacy Edge Fading", Float) = 0

	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Transparent" "Queue"="Transparent" "DisableBatching"="True" }
	LOD 100

		
		Pass
		{
			
			Name "VolumePass"
			
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend SrcAlpha OneMinusSrcAlpha
			AlphaToMask Off
			Cull Back
			ColorMask G
			ZWrite Off
			ZTest LEqual
			
			CGPROGRAM

			

			#ifndef UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX
			//only defining to not throw compilation error over Unity 5.5
			#define UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input)
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_instancing
			#include "UnityCG.cginc"
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define TVE_IS_EXTRAS_ELEMENT


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 worldPos : TEXCOORD0;
				#endif
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			uniform half _CategoryControl;
			uniform half _CategoryLayer;
			uniform half _CategoryElement;
			uniform half _CategoryFade;
			uniform float _ElementFadeSupport;
			uniform half _ElementLayerValue;
			uniform half4 _SeasonRemap;
			uniform half4 _ControlMaskRemap;
			uniform half _ElementLayerMessage;
			uniform half _ElementLayerWarning;
			uniform half _IsVersion;
			uniform half _IsExtrasElement;
			uniform half _IsElementShader;
			uniform half _CategoryRender;
			uniform half _ElementLayerMask;
			uniform half _ElementMessage;
			uniform sampler2D _ControlTex1;
			uniform half _ControlMinValue;
			uniform half _ControlMaxValue;
			uniform half _LayerValue1;
			uniform half _LayerValue2;
			uniform half _LayerValue3;
			uniform half _LayerValue4;
			uniform sampler2D _ControlTex2;
			uniform half _LayerValue5;
			uniform half _LayerValue6;
			uniform half _LayerValue7;
			uniform half _LayerValue8;
			uniform sampler2D _ControlTex3;
			uniform half _LayerValue9;
			uniform half _LayerValue10;
			uniform half _LayerValue11;
			uniform half _LayerValue12;
			uniform sampler2D _ControlTex4;
			uniform half _LayerValue13;
			uniform half _LayerValue14;
			uniform half _LayerValue15;
			uniform half _LayerValue16;
			uniform half _ElementIntensity;
			uniform half4 TVE_SeasonOptions;
			uniform half _AdditionalValue1;
			uniform half _AdditionalValue2;
			uniform half TVE_SeasonLerp;
			uniform half _SeasonMinValue;
			uniform half _SeasonMaxValue;
			uniform half _AdditionalValue3;
			uniform half _AdditionalValue4;
			uniform half4 TVE_ColorsCoords;
			uniform half4 TVE_ExtrasCoords;
			uniform half4 TVE_MotionCoords;
			uniform half4 TVE_VertexCoords;
			uniform half TVE_ElementsFadeValue;
			uniform half _ElementVolumeFadeMode;
			half4 IS_ELEMENT( half4 Colors, half4 Extras, half4 Motion, half4 Vertex )
			{
				#if defined (TVE_IS_COLORS_ELEMENT)
				return Colors;
				#elif defined (TVE_IS_EXTRAS_ELEMENT)
				return Extras;
				#elif defined (TVE_IS_MOTION_ELEMENT)
				return Motion;
				#elif defined (TVE_IS_VERTEX_ELEMENT)
				return Vertex;
				#else
				return Colors;
				#endif
			}
			

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				float3 vertexValue = float3(0, 0, 0);
				#if ASE_ABSOLUTE_VERTEX_POS
				vertexValue = v.vertex.xyz;
				#endif
				vertexValue = vertexValue;
				#if ASE_ABSOLUTE_VERTEX_POS
				v.vertex.xyz = vertexValue;
				#else
				v.vertex.xyz += vertexValue;
				#endif
				o.vertex = UnityObjectToClipPos(v.vertex);

				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				#endif
				return o;
			}
			
			fixed4 frag (v2f i ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				fixed4 finalColor;
				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 WorldPosition = i.worldPos;
				#endif
				half Control_Min296_g18648 = _ControlMinValue;
				half temp_output_7_0_g21021 = Control_Min296_g18648;
				half4 temp_cast_0 = (temp_output_7_0_g21021).xxxx;
				half Control_Max299_g18648 = _ControlMaxValue;
				half temp_output_10_0_g21021 = ( Control_Max299_g18648 - temp_output_7_0_g21021 );
				half4 ControlTex_1123_g18648 = saturate( ( ( tex2D( _ControlTex1, ( 1.0 - i.ase_texcoord1.xy ) ) - temp_cast_0 ) / ( temp_output_10_0_g21021 + 0.0001 ) ) );
				half4 weightedBlendVar138_g18648 = ControlTex_1123_g18648;
				half weightedBlend138_g18648 = ( weightedBlendVar138_g18648.x*_LayerValue1 + weightedBlendVar138_g18648.y*_LayerValue2 + weightedBlendVar138_g18648.z*_LayerValue3 + weightedBlendVar138_g18648.w*_LayerValue4 );
				half Terrain_Values_1141_g18648 = weightedBlend138_g18648;
				half temp_output_7_0_g21022 = Control_Min296_g18648;
				half4 temp_cast_1 = (temp_output_7_0_g21022).xxxx;
				half temp_output_10_0_g21022 = ( Control_Max299_g18648 - temp_output_7_0_g21022 );
				half4 ControlTex_2124_g18648 = saturate( ( ( tex2D( _ControlTex2, ( 1.0 - i.ase_texcoord1.xy ) ) - temp_cast_1 ) / ( temp_output_10_0_g21022 + 0.0001 ) ) );
				half4 weightedBlendVar147_g18648 = ControlTex_2124_g18648;
				half weightedBlend147_g18648 = ( weightedBlendVar147_g18648.x*_LayerValue5 + weightedBlendVar147_g18648.y*_LayerValue6 + weightedBlendVar147_g18648.z*_LayerValue7 + weightedBlendVar147_g18648.w*_LayerValue8 );
				half Terrain_Values_2148_g18648 = weightedBlend147_g18648;
				half temp_output_7_0_g21020 = Control_Min296_g18648;
				half4 temp_cast_2 = (temp_output_7_0_g21020).xxxx;
				half temp_output_10_0_g21020 = ( Control_Max299_g18648 - temp_output_7_0_g21020 );
				half4 ControlTex_3307_g18648 = saturate( ( ( tex2D( _ControlTex3, ( 1.0 - i.ase_texcoord1.xy ) ) - temp_cast_2 ) / ( temp_output_10_0_g21020 + 0.0001 ) ) );
				half4 weightedBlendVar366_g18648 = ControlTex_3307_g18648;
				half weightedBlend366_g18648 = ( weightedBlendVar366_g18648.x*_LayerValue9 + weightedBlendVar366_g18648.y*_LayerValue10 + weightedBlendVar366_g18648.z*_LayerValue11 + weightedBlendVar366_g18648.w*_LayerValue12 );
				half Terrain_Values_3365_g18648 = weightedBlend366_g18648;
				half temp_output_7_0_g21019 = Control_Min296_g18648;
				half4 temp_cast_3 = (temp_output_7_0_g21019).xxxx;
				half temp_output_10_0_g21019 = ( Control_Max299_g18648 - temp_output_7_0_g21019 );
				half4 ControlTex_4322_g18648 = saturate( ( ( tex2D( _ControlTex4, ( 1.0 - i.ase_texcoord1.xy ) ) - temp_cast_3 ) / ( temp_output_10_0_g21019 + 0.0001 ) ) );
				half4 weightedBlendVar367_g18648 = ControlTex_4322_g18648;
				half weightedBlend367_g18648 = ( weightedBlendVar367_g18648.x*_LayerValue13 + weightedBlendVar367_g18648.y*_LayerValue14 + weightedBlendVar367_g18648.z*_LayerValue15 + weightedBlendVar367_g18648.w*_LayerValue16 );
				half Terrain_Values_4368_g18648 = weightedBlend367_g18648;
				half Terrain_Values153_g18648 = ( Terrain_Values_1141_g18648 + Terrain_Values_2148_g18648 + Terrain_Values_3365_g18648 + Terrain_Values_4368_g18648 );
				half TVE_SeasonOptions_X66_g18648 = TVE_SeasonOptions.x;
				half Additional_Value_Winter90_g18648 = _AdditionalValue1;
				half Additional_Value_Spring88_g18648 = _AdditionalValue2;
				half temp_output_7_0_g22193 = _SeasonMinValue;
				half temp_output_10_0_g22193 = ( _SeasonMaxValue - temp_output_7_0_g22193 );
				half TVE_SeasonLerp57_g18648 = saturate( saturate( ( ( TVE_SeasonLerp - temp_output_7_0_g22193 ) / temp_output_10_0_g22193 ) ) );
				half lerpResult195_g18648 = lerp( Additional_Value_Winter90_g18648 , Additional_Value_Spring88_g18648 , TVE_SeasonLerp57_g18648);
				half TVE_SeasonOptions_Y64_g18648 = TVE_SeasonOptions.y;
				half Additional_Value_Summer80_g18648 = _AdditionalValue3;
				half lerpResult197_g18648 = lerp( Additional_Value_Spring88_g18648 , Additional_Value_Summer80_g18648 , TVE_SeasonLerp57_g18648);
				half TVE_SeasonOptions_Z61_g18648 = TVE_SeasonOptions.z;
				half Additional_Value_Autumn101_g18648 = _AdditionalValue4;
				half lerpResult192_g18648 = lerp( Additional_Value_Summer80_g18648 , Additional_Value_Autumn101_g18648 , TVE_SeasonLerp57_g18648);
				half TVE_SeasonOptions_W62_g18648 = TVE_SeasonOptions.w;
				half lerpResult205_g18648 = lerp( Additional_Value_Autumn101_g18648 , Additional_Value_Winter90_g18648 , TVE_SeasonLerp57_g18648);
				half Element_Inflience461_g18648 = ( ( TVE_SeasonOptions_X66_g18648 * lerpResult195_g18648 ) + ( TVE_SeasonOptions_Y64_g18648 * lerpResult197_g18648 ) + ( TVE_SeasonOptions_Z61_g18648 * lerpResult192_g18648 ) + ( TVE_SeasonOptions_W62_g18648 * lerpResult205_g18648 ) );
				half4 Colors37_g22186 = TVE_ColorsCoords;
				half4 Extras37_g22186 = TVE_ExtrasCoords;
				half4 Motion37_g22186 = TVE_MotionCoords;
				half4 Vertex37_g22186 = TVE_VertexCoords;
				half4 localIS_ELEMENT37_g22186 = IS_ELEMENT( Colors37_g22186 , Extras37_g22186 , Motion37_g22186 , Vertex37_g22186 );
				half4 temp_output_35_0_g22188 = localIS_ELEMENT37_g22186;
				half temp_output_7_0_g22189 = TVE_ElementsFadeValue;
				half2 temp_cast_4 = (temp_output_7_0_g22189).xx;
				half temp_output_10_0_g22189 = ( 1.0 - temp_output_7_0_g22189 );
				half2 temp_output_16_0_g22185 = saturate( ( ( abs( (( (temp_output_35_0_g22188).zw + ( (temp_output_35_0_g22188).xy * (WorldPosition).xz ) )*2.002 + -1.001) ) - temp_cast_4 ) / temp_output_10_0_g22189 ) );
				half2 temp_output_12_0_g22185 = ( temp_output_16_0_g22185 * temp_output_16_0_g22185 );
				half lerpResult18_g22185 = lerp( 1.0 , ( 1.0 - saturate( ( (temp_output_12_0_g22185).x + (temp_output_12_0_g22185).y ) ) ) , _ElementVolumeFadeMode);
				half Element_Intensity235_g18648 = ( _ElementIntensity * Element_Inflience461_g18648 * lerpResult18_g22185 );
				half4 appendResult272_g18648 = (half4(0.0 , Terrain_Values153_g18648 , 0.0 , Element_Intensity235_g18648));
				
				
				finalColor = appendResult272_g18648;
				return finalColor;
			}
			ENDCG
		}
		
		
		Pass
		{
			
			Name "VisualPass"
			
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend SrcAlpha OneMinusSrcAlpha
			AlphaToMask Off
			Cull Back
			ColorMask RGBA
			ZWrite Off
			ZTest LEqual
			
			CGPROGRAM

			

			#ifndef UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX
			//only defining to not throw compilation error over Unity 5.5
			#define UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input)
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_instancing
			#include "UnityCG.cginc"
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define TVE_IS_EXTRAS_ELEMENT


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 worldPos : TEXCOORD0;
				#endif
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			uniform half _CategoryControl;
			uniform half _CategoryLayer;
			uniform half _CategoryElement;
			uniform half _CategoryFade;
			uniform half _ElementFadeSupport;
			uniform half _ElementLayerValue;
			uniform half4 _SeasonRemap;
			uniform half4 _ControlMaskRemap;
			uniform half _ElementLayerMessage;
			uniform half _ElementLayerWarning;
			uniform half _IsVersion;
			uniform half _IsExtrasElement;
			uniform half _IsElementShader;
			uniform half _CategoryRender;
			uniform half _ElementLayerMask;
			uniform half _ElementMessage;
			uniform sampler2D _ControlTex1;
			uniform half _ControlMinValue;
			uniform half _ControlMaxValue;
			uniform half _LayerValue1;
			uniform half _LayerValue2;
			uniform half _LayerValue3;
			uniform half _LayerValue4;
			uniform sampler2D _ControlTex2;
			uniform half _LayerValue5;
			uniform half _LayerValue6;
			uniform half _LayerValue7;
			uniform half _LayerValue8;
			uniform sampler2D _ControlTex3;
			uniform half _LayerValue9;
			uniform half _LayerValue10;
			uniform half _LayerValue11;
			uniform half _LayerValue12;
			uniform sampler2D _ControlTex4;
			uniform half _LayerValue13;
			uniform half _LayerValue14;
			uniform half _LayerValue15;
			uniform half _LayerValue16;
			uniform half4 TVE_ColorsPosition;
			uniform half4 TVE_ExtrasPosition;
			uniform half4 TVE_MotionPosition;
			uniform half4 TVE_VertexPosition;
			uniform half4 TVE_ColorsScale;
			uniform half4 TVE_ExtrasScale;
			uniform half4 TVE_MotionScale;
			uniform half4 TVE_VertexScale;
			uniform half _ElementIntensity;
			uniform half4 TVE_SeasonOptions;
			uniform half _AdditionalValue1;
			uniform half _AdditionalValue2;
			uniform half TVE_SeasonLerp;
			uniform half _SeasonMinValue;
			uniform half _SeasonMaxValue;
			uniform half _AdditionalValue3;
			uniform half _AdditionalValue4;
			uniform half4 TVE_ColorsCoords;
			uniform half4 TVE_ExtrasCoords;
			uniform half4 TVE_MotionCoords;
			uniform half4 TVE_VertexCoords;
			uniform half TVE_ElementsFadeValue;
			uniform half _ElementVolumeFadeMode;
			half4 IS_ELEMENT( half4 Colors, half4 Extras, half4 Motion, half4 Vertex )
			{
				#if defined (TVE_IS_COLORS_ELEMENT)
				return Colors;
				#elif defined (TVE_IS_EXTRAS_ELEMENT)
				return Extras;
				#elif defined (TVE_IS_MOTION_ELEMENT)
				return Motion;
				#elif defined (TVE_IS_VERTEX_ELEMENT)
				return Vertex;
				#else
				return Colors;
				#endif
			}
			

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				float3 vertexValue = float3(0, 0, 0);
				#if ASE_ABSOLUTE_VERTEX_POS
				vertexValue = v.vertex.xyz;
				#endif
				vertexValue = vertexValue;
				#if ASE_ABSOLUTE_VERTEX_POS
				v.vertex.xyz = vertexValue;
				#else
				v.vertex.xyz += vertexValue;
				#endif
				o.vertex = UnityObjectToClipPos(v.vertex);

				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				#endif
				return o;
			}
			
			fixed4 frag (v2f i ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				fixed4 finalColor;
				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 WorldPosition = i.worldPos;
				#endif
				half3 temp_cast_0 = (0.0).xxx;
				half Control_Min296_g18648 = _ControlMinValue;
				half temp_output_7_0_g21021 = Control_Min296_g18648;
				half4 temp_cast_1 = (temp_output_7_0_g21021).xxxx;
				half Control_Max299_g18648 = _ControlMaxValue;
				half temp_output_10_0_g21021 = ( Control_Max299_g18648 - temp_output_7_0_g21021 );
				half4 ControlTex_1123_g18648 = saturate( ( ( tex2D( _ControlTex1, ( 1.0 - i.ase_texcoord1.xy ) ) - temp_cast_1 ) / ( temp_output_10_0_g21021 + 0.0001 ) ) );
				half4 weightedBlendVar138_g18648 = ControlTex_1123_g18648;
				half weightedBlend138_g18648 = ( weightedBlendVar138_g18648.x*_LayerValue1 + weightedBlendVar138_g18648.y*_LayerValue2 + weightedBlendVar138_g18648.z*_LayerValue3 + weightedBlendVar138_g18648.w*_LayerValue4 );
				half Terrain_Values_1141_g18648 = weightedBlend138_g18648;
				half temp_output_7_0_g21022 = Control_Min296_g18648;
				half4 temp_cast_2 = (temp_output_7_0_g21022).xxxx;
				half temp_output_10_0_g21022 = ( Control_Max299_g18648 - temp_output_7_0_g21022 );
				half4 ControlTex_2124_g18648 = saturate( ( ( tex2D( _ControlTex2, ( 1.0 - i.ase_texcoord1.xy ) ) - temp_cast_2 ) / ( temp_output_10_0_g21022 + 0.0001 ) ) );
				half4 weightedBlendVar147_g18648 = ControlTex_2124_g18648;
				half weightedBlend147_g18648 = ( weightedBlendVar147_g18648.x*_LayerValue5 + weightedBlendVar147_g18648.y*_LayerValue6 + weightedBlendVar147_g18648.z*_LayerValue7 + weightedBlendVar147_g18648.w*_LayerValue8 );
				half Terrain_Values_2148_g18648 = weightedBlend147_g18648;
				half temp_output_7_0_g21020 = Control_Min296_g18648;
				half4 temp_cast_3 = (temp_output_7_0_g21020).xxxx;
				half temp_output_10_0_g21020 = ( Control_Max299_g18648 - temp_output_7_0_g21020 );
				half4 ControlTex_3307_g18648 = saturate( ( ( tex2D( _ControlTex3, ( 1.0 - i.ase_texcoord1.xy ) ) - temp_cast_3 ) / ( temp_output_10_0_g21020 + 0.0001 ) ) );
				half4 weightedBlendVar366_g18648 = ControlTex_3307_g18648;
				half weightedBlend366_g18648 = ( weightedBlendVar366_g18648.x*_LayerValue9 + weightedBlendVar366_g18648.y*_LayerValue10 + weightedBlendVar366_g18648.z*_LayerValue11 + weightedBlendVar366_g18648.w*_LayerValue12 );
				half Terrain_Values_3365_g18648 = weightedBlend366_g18648;
				half temp_output_7_0_g21019 = Control_Min296_g18648;
				half4 temp_cast_4 = (temp_output_7_0_g21019).xxxx;
				half temp_output_10_0_g21019 = ( Control_Max299_g18648 - temp_output_7_0_g21019 );
				half4 ControlTex_4322_g18648 = saturate( ( ( tex2D( _ControlTex4, ( 1.0 - i.ase_texcoord1.xy ) ) - temp_cast_4 ) / ( temp_output_10_0_g21019 + 0.0001 ) ) );
				half4 weightedBlendVar367_g18648 = ControlTex_4322_g18648;
				half weightedBlend367_g18648 = ( weightedBlendVar367_g18648.x*_LayerValue13 + weightedBlendVar367_g18648.y*_LayerValue14 + weightedBlendVar367_g18648.z*_LayerValue15 + weightedBlendVar367_g18648.w*_LayerValue16 );
				half Terrain_Values_4368_g18648 = weightedBlend367_g18648;
				half Terrain_Values153_g18648 = ( Terrain_Values_1141_g18648 + Terrain_Values_2148_g18648 + Terrain_Values_3365_g18648 + Terrain_Values_4368_g18648 );
				half3 temp_cast_5 = (Terrain_Values153_g18648).xxx;
				half3 Input_Color94_g22062 = temp_cast_5;
				half3 break68_g22062 = Input_Color94_g22062;
				half clampResult80_g22062 = clamp( max( max( break68_g22062.x , break68_g22062.y ) , break68_g22062.z ) , 0.1 , 10000.0 );
				half4 color569_g18648 = IsGammaSpace() ? half4(0,0.6980392,0.6,0) : half4(0,0.4452012,0.3185468,0);
				half3 Input_Tint76_g22062 = (color569_g18648).rgb;
				half3 Element_Valid47_g22062 = ( clampResult80_g22062 * Input_Tint76_g22062 );
				half4 Colors37_g22074 = TVE_ColorsPosition;
				half4 Extras37_g22074 = TVE_ExtrasPosition;
				half4 Motion37_g22074 = TVE_MotionPosition;
				half4 Vertex37_g22074 = TVE_VertexPosition;
				half4 localIS_ELEMENT37_g22074 = IS_ELEMENT( Colors37_g22074 , Extras37_g22074 , Motion37_g22074 , Vertex37_g22074 );
				half4 Colors37_g22075 = TVE_ColorsScale;
				half4 Extras37_g22075 = TVE_ExtrasScale;
				half4 Motion37_g22075 = TVE_MotionScale;
				half4 Vertex37_g22075 = TVE_VertexScale;
				half4 localIS_ELEMENT37_g22075 = IS_ELEMENT( Colors37_g22075 , Extras37_g22075 , Motion37_g22075 , Vertex37_g22075 );
				half Bounds42_g22062 = ( 1.0 - saturate( ( distance( max( ( abs( ( WorldPosition - (localIS_ELEMENT37_g22074).xyz ) ) - ( (localIS_ELEMENT37_g22075).xyz * float3( 0.5,0.5,0.5 ) ) ) , float3( 0,0,0 ) ) , float3( 0,0,0 ) ) / 0.001 ) ) );
				half3 lerpResult50_g22062 = lerp( temp_cast_0 , Element_Valid47_g22062 , Bounds42_g22062);
				half CrossHatch44_g22062 = ( saturate( ( ( abs( sin( ( ( WorldPosition.x + WorldPosition.z ) * 3.0 ) ) ) - 0.7 ) * 100.0 ) ) * 0.25 );
				half TVE_SeasonOptions_X66_g18648 = TVE_SeasonOptions.x;
				half Additional_Value_Winter90_g18648 = _AdditionalValue1;
				half Additional_Value_Spring88_g18648 = _AdditionalValue2;
				half temp_output_7_0_g22193 = _SeasonMinValue;
				half temp_output_10_0_g22193 = ( _SeasonMaxValue - temp_output_7_0_g22193 );
				half TVE_SeasonLerp57_g18648 = saturate( saturate( ( ( TVE_SeasonLerp - temp_output_7_0_g22193 ) / temp_output_10_0_g22193 ) ) );
				half lerpResult195_g18648 = lerp( Additional_Value_Winter90_g18648 , Additional_Value_Spring88_g18648 , TVE_SeasonLerp57_g18648);
				half TVE_SeasonOptions_Y64_g18648 = TVE_SeasonOptions.y;
				half Additional_Value_Summer80_g18648 = _AdditionalValue3;
				half lerpResult197_g18648 = lerp( Additional_Value_Spring88_g18648 , Additional_Value_Summer80_g18648 , TVE_SeasonLerp57_g18648);
				half TVE_SeasonOptions_Z61_g18648 = TVE_SeasonOptions.z;
				half Additional_Value_Autumn101_g18648 = _AdditionalValue4;
				half lerpResult192_g18648 = lerp( Additional_Value_Summer80_g18648 , Additional_Value_Autumn101_g18648 , TVE_SeasonLerp57_g18648);
				half TVE_SeasonOptions_W62_g18648 = TVE_SeasonOptions.w;
				half lerpResult205_g18648 = lerp( Additional_Value_Autumn101_g18648 , Additional_Value_Winter90_g18648 , TVE_SeasonLerp57_g18648);
				half Element_Inflience461_g18648 = ( ( TVE_SeasonOptions_X66_g18648 * lerpResult195_g18648 ) + ( TVE_SeasonOptions_Y64_g18648 * lerpResult197_g18648 ) + ( TVE_SeasonOptions_Z61_g18648 * lerpResult192_g18648 ) + ( TVE_SeasonOptions_W62_g18648 * lerpResult205_g18648 ) );
				half4 Colors37_g22186 = TVE_ColorsCoords;
				half4 Extras37_g22186 = TVE_ExtrasCoords;
				half4 Motion37_g22186 = TVE_MotionCoords;
				half4 Vertex37_g22186 = TVE_VertexCoords;
				half4 localIS_ELEMENT37_g22186 = IS_ELEMENT( Colors37_g22186 , Extras37_g22186 , Motion37_g22186 , Vertex37_g22186 );
				half4 temp_output_35_0_g22188 = localIS_ELEMENT37_g22186;
				half temp_output_7_0_g22189 = TVE_ElementsFadeValue;
				half2 temp_cast_6 = (temp_output_7_0_g22189).xx;
				half temp_output_10_0_g22189 = ( 1.0 - temp_output_7_0_g22189 );
				half2 temp_output_16_0_g22185 = saturate( ( ( abs( (( (temp_output_35_0_g22188).zw + ( (temp_output_35_0_g22188).xy * (WorldPosition).xz ) )*2.002 + -1.001) ) - temp_cast_6 ) / temp_output_10_0_g22189 ) );
				half2 temp_output_12_0_g22185 = ( temp_output_16_0_g22185 * temp_output_16_0_g22185 );
				half lerpResult18_g22185 = lerp( 1.0 , ( 1.0 - saturate( ( (temp_output_12_0_g22185).x + (temp_output_12_0_g22185).y ) ) ) , _ElementVolumeFadeMode);
				half Element_Intensity235_g18648 = ( _ElementIntensity * Element_Inflience461_g18648 * lerpResult18_g22185 );
				half Input_Alpha48_g22062 = Element_Intensity235_g18648;
				half lerpResult57_g22062 = lerp( CrossHatch44_g22062 , Input_Alpha48_g22062 , Bounds42_g22062);
				half4 appendResult58_g22062 = (half4(lerpResult50_g22062 , lerpResult57_g22062));
				
				
				finalColor = appendResult58_g22062;
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "TVEShaderElementGUI"
	
	Fallback Off
}
/*ASEBEGIN
Version=19202
Node;AmplifyShaderEditor.FunctionNode;135;0,-1280;Inherit;False;Base Element Terrain;11;;18648;a84c2b02263ac4b42be9eb75f696cb74;6,222,1,558,1,557,1,225,1,582,1,589,1;1;609;FLOAT;1;False;2;FLOAT4;230;FLOAT4;550
Node;AmplifyShaderEditor.FunctionNode;124;-256,-1280;Inherit;False;Element Base Extras;1;;22194;adca672cb6779794dba5f669b4c5f8e3;0;0;1;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;120;-256,-1536;Half;False;Property;_ElementMessage;Element Message;0;0;Create;True;0;0;0;True;1;StyledMessage(Info, Use the Wetness elements to dampen the global wetness effect on vegetation and props. Make sure the element size matches your terrain., 0,0);False;0;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;136;320,-1536;Inherit;False;Compile All Elements;-1;;22196;5302407fc6d65554791e558e67d59358;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;137;320,-1280;Half;False;True;-1;2;TVEShaderElementGUI;100;16;BOXOPHOBIC/The Vegetation Engine/Elements/Extras Wetness (Terrain);f4f273c3bb6262d4396be458405e60f9;True;VolumePass;0;0;VolumePass;2;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;DisableBatching=True=DisableBatching;False;False;0;True;True;2;5;False;;10;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;True;True;False;True;False;False;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;2;False;;True;0;False;;True;False;0;False;;0;False;;False;True;2;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;0;2;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;138;320,-1152;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;f4f273c3bb6262d4396be458405e60f9;True;VisualPass;0;1;VisualPass;2;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;False;False;0;True;True;2;5;False;;10;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;2;False;;True;0;False;;True;False;0;False;;0;False;;False;True;2;False;0;;0;0;Standard;0;False;0
WireConnection;135;609;124;4
WireConnection;137;0;135;230
WireConnection;138;0;135;550
ASEEND*/
//CHKSM=8EEA186FB4411B9AB46F3330F7B0A59DA576C27A