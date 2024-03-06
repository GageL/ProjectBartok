// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Geometry/Plant Subsurface Lit (Blanket)"
{
	Properties
	{
		[StyledCategory(Render Settings, 5, 10)]_CategoryRender("[ Category Render ]", Float) = 1
		[Enum(Opaque,0,Transparent,1)]_RenderMode("Render Mode", Float) = 0
		[Enum(Off,0,On,1)]_RenderZWrite("Render ZWrite", Float) = 1
		[Enum(Both,0,Back,1,Front,2)]_RenderCull("Render Faces", Float) = 0
		[Enum(Flip,0,Mirror,1,Same,2)]_RenderNormals("Render Normals", Float) = 0
		[HideInInspector]_RenderQueue("Render Queue", Float) = 0
		[HideInInspector]_RenderPriority("Render Priority", Float) = 0
		[Enum(Off,0,On,1)]_RenderSpecular("Render Specular", Float) = 1
		[Enum(Off,0,On,1)]_RenderDecals("Render Decals", Float) = 0
		[Enum(Off,0,On,1)]_RenderSSR("Render SSR", Float) = 0
		[Space(10)]_RenderDirect("Render Lighting", Range( 0 , 1)) = 1
		_RenderAmbient("Render Ambient", Range( 0 , 1)) = 1
		_RenderShadow("Render Shadow", Range( 0 , 1)) = 1
		[Enum(Off,0,On,1)][Space(10)]_RenderClip("Alpha Clipping", Float) = 1
		[Enum(Off,0,On,1)]_RenderCoverage("Alpha To Mask", Float) = 0
		_AlphaClipValue("Alpha Treshold", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_SpaceRenderFade("# Space Render Fade", Float) = 0
		[StyledCategory(Global Settings)]_CategoryGlobals("[ Category Globals ]", Float) = 1
		[StyledMessage(Info, Procedural Variation in use. The Variation might not work as expected when switching from one LOD to another., 0, 10)]_MessageGlobalsVariation("# Message Globals Variation", Float) = 0
		[StyledEnum(TVEColorsLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerColorsValue("Layer Colors", Float) = 0
		[StyledEnum(TVEExtrasLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerExtrasValue("Layer Extras", Float) = 0
		[StyledEnum(TVEMotionLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerMotionValue("Layer Motion", Float) = 0
		[StyledEnum(TVEVertexLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerVertexValue("Layer Vertex", Float) = 0
		[StyledSpace(10)]_SpaceGlobalLayers("# Space Global Layers", Float) = 0
		_GlobalColors("Global Color", Range( 0 , 1)) = 1
		_GlobalAlpha("Global Alpha", Range( 0 , 1)) = 1
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalEmissive("Global Emissive", Range( 0 , 1)) = 1
		_GlobalSize("Global Size Fade", Range( 0 , 1)) = 1
		_GlobalOrientation("Global Orientation", Range( 0 , 1)) = 1
		_GlobalConform("Global Conform", Range( 0 , 1)) = 1
		[StyledSpace(10)]_SpaceGlobalLocals("# Space Global Locals", Float) = 0
		_ColorsIntensityValue("Color Intensity", Range( 0 , 2)) = 1
		_ColorsVariationValue("Color Variation", Range( 0 , 1)) = 0.5
		_AlphaVariationValue("Alpha Variation", Range( 0 , 1)) = 0.5
		_OverlayVariationValue("Overlay Variation", Range( 0 , 1)) = 0.5
		_OverlayProjectionValue("Overlay Projection", Range( 0 , 1)) = 0.5
		_ConformOffsetValue("Conform Offset", Range( -1 , 1)) = 0
		[Space(10)][StyledToggle]_ConformOffsetMode("Lock Position with Conform", Float) = 1
		[StyledSpace(10)]_SpaceGlobalOptions("# Space Global Options", Float) = 0
		[StyledToggle]_ColorsPositionMode("Use Pivot Position for Colors", Float) = 0
		[StyledToggle]_ExtrasPositionMode("Use Pivot Position for Extras", Float) = 0
		[StyledToggle]_VertexPositionMode("Use Pivot Position for Vertex", Float) = 1
		[StyledCategory(Main Settings)]_CategoryMain("[Category Main ]", Float) = 1
		[StyledMessage(Info, Use the Main Mask remap sliders to control the mask for Global Color__ Main Colors__ Gradient Tinting and Subsurface Scattering when available. The mask is stored in Main Mask Blue channel. , 0, 10)]_MessageMainMask("# Message Main Mask", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_MainAlbedoTex("Main Albedo", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainNormalTex("Main Normal", 2D) = "bump" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainMaskTex("Main Mask", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[Enum(Constant,0,Dual Color,1)]_MainColorMode("Main Color", Float) = 0
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		[HDR]_MainColorTwo("Main ColorB", Color) = (1,1,1,1)
		_MainAlbedoValue("Main Albedo", Range( 0 , 1)) = 1
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 1
		_MainOcclusionValue("Main Occlusion", Range( 0 , 1)) = 0
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 0
		[StyledRemapSlider(_MainMaskMinValue, _MainMaskMaxValue, 0, 1, 0, 0)]_MainMaskRemap("Main Mask Remap", Vector) = (0,0,0,0)
		[HideInInspector]_MainMaskMinValue("Main Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_MainMaskMaxValue("Main Mask Max", Range( 0 , 1)) = 0
		[StyledCategory(Detail Settings)]_CategoryDetail("[ Category Detail ]", Float) = 1
		[StyledMessage(Info, Use the Detail Mask remap sliders to control the mask for Global Color__ Detail Colors__ Gradient Tinting and Subsurface Scattering when available. The mask is stored in Detail Mask Blue channel., 0, 10)]_MessageSecondMask("# Message Second Mask", Float) = 0
		[Enum(Off,0,On,1)]_DetailMode("Detail Mode", Float) = 0
		[Enum(Overlay,0,Replace,1)]_DetailBlendMode("Detail Blend", Float) = 1
		[Enum(Overlay,0,Replace,1)]_DetailAlphaMode("Detail Alpha", Float) = 1
		[Space(10)][StyledToggle]_DetailFadeMode("Use Global Alpha and Fade", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_SecondAlbedoTex("Detail Albedo", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_SecondNormalTex("Detail Normal", 2D) = "bump" {}
		[NoScaleOffset][StyledTextureSingleLine]_SecondMaskTex("Detail Mask", 2D) = "white" {}
		[Enum(Main UVs,0,Detail UVs,1,Planar UVs,2)][Space(10)]_SecondUVsMode("Detail UVs", Float) = 0
		[StyledVector(9)]_SecondUVs("Detail UVs", Vector) = (1,1,0,0)
		[StyledToggle]_SecondUVsScaleMode("Use Inverted Tilling Mode", Float) = 0
		[Enum(Constant,0,Dual Color,1)][Space(10)]_SecondColorMode("Detail Color", Float) = 0
		[HDR]_SecondColor("Detail Color", Color) = (1,1,1,1)
		[HDR]_SecondColorTwo("Detail ColorB", Color) = (1,1,1,1)
		_SecondAlbedoValue("Detail Albedo", Range( 0 , 1)) = 1
		_SecondNormalValue("Detail Normal", Range( -8 , 8)) = 1
		_SecondOcclusionValue("Detail Occlusion", Range( 0 , 1)) = 0
		_SecondSmoothnessValue("Detail Smoothness", Range( 0 , 1)) = 0
		[StyledRemapSlider(_SecondMaskMinValue, _SecondMaskMaxValue, 0, 1, 0, 0)]_SecondMaskRemap("Detail Mask Remap", Vector) = (0,0,0,0)
		[HideInInspector]_SecondMaskMinValue("Detail Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_SecondMaskMaxValue("Detail Mask Max", Range( 0 , 1)) = 0
		[Space(10)]_DetailValue("Detail Blend Intensity", Range( 0 , 1)) = 1
		_DetailNormalValue("Detail Blend Normals", Range( 0 , 1)) = 1
		[StyledRemapSlider(_DetailBlendMinValue, _DetailBlendMaxValue,0,1)]_DetailBlendRemap("Detail Blend Remap", Vector) = (0,0,0,0)
		[HideInInspector]_DetailBlendMinValue("Detail Blend Min", Range( 0 , 1)) = 0.4
		[HideInInspector]_DetailBlendMaxValue("Detail Blend Max", Range( 0 , 1)) = 0.6
		[Enum(Vertex Blue,0,Projection,1)][Space(10)]_DetailMeshMode("Detail Surface Mask", Float) = 0
		[StyledRemapSlider(_DetailMeshMinValue, _DetailMeshMaxValue,0,1)]_DetailMeshRemap("Detail Surface Remap", Vector) = (0,0,0,0)
		[Enum(Main Mask,0,Detail Mask,1)]_DetailMaskMode("Detail Texture Mask", Float) = 0
		[HideInInspector]_DetailMeshMinValue("Detail Surface Min", Range( 0 , 1)) = 0
		[HideInInspector]_DetailMeshMaxValue("Detail Surface Max", Range( 0 , 1)) = 1
		[StyledRemapSlider(_DetailMaskMinValue, _DetailMaskMaxValue,0,1)]_DetailMaskRemap("Detail Texture Remap", Vector) = (0,0,0,0)
		[HideInInspector]_DetailMaskMinValue("Detail Texture Min", Range( 0 , 1)) = 0
		[HideInInspector]_DetailMaskMaxValue("Detail Texture Max", Range( 0 , 1)) = 1
		[HideInInspector]_second_uvs_mode("_second_uvs_mode", Vector) = (0,0,0,0)
		[StyledCategory(Terrain Settings)]_CategoryTerrain("[ Category Terrain ]", Float) = 1
		[StyledMessage(Info, Use the Terrain Layer to blend the object with the terrain surface when using the Terrain Shaders Module. Drag the Terrain to the Copy Settings From Object field to copy the settings to the material., 0, 10)]_MessageTerrain("# Message Terrain", Float) = 0
		[Enum(Off,0,On,1)]_TerrainMode("Terrain Mode", Float) = 0
		[Space(10)]_TerrainBlendOffsetValue("Terrain Blend Offset", Range( 0 , 10)) = 1
		_TerrainBlendNormalValue("Terrain Blend Normals", Range( 0 , 1)) = 1
		[StyledRemapSlider(_TerrainBlendMinValue, _TerrainBlendMaxValue, 0, 1)]_TerrainBlendRemap("Terrain Blend Remap", Vector) = (0,0,0,0)
		[HideInInspector]_TerrainBlendMinValue("Terrain Blend Min", Range( 0 , 1)) = 0.4
		[HideInInspector]_TerrainBlendMaxValue("Terrain Blend Max", Range( 0 , 1)) = 0.6
		[HideInInspector]_TerrainSize("Terrain Size", Vector) = (0,0,0,0)
		[HideInInspector]_TerrainPosition("Terrain Position", Vector) = (0,0,0,0)
		[HideInInspector][Enum(4 Layers,4,8 Layers,8,12 Layers,12,16 Layers,16)]_TerrainLayersMode("Terrain Layers", Float) = 4
		[HideInInspector][Enum(Simple,0,Height,1)]_TerrainBlendMode("Terrain Blend", Float) = 1
		[HideInInspector]_TerrainColor("Terrain Color", Color) = (1,1,1,1)
		[HideInInspector][Enum(Default,0,Packed,1)]_TerrainTexMode("Terrain Maps", Float) = 0
		[HideInInspector]_TerrainNormalValue("Terrain Normal", Range( -8 , 8)) = 1
		[HideInInspector]_TerrainOcclusionValue("Terrain Occlusion", Range( 0 , 1)) = 1
		[HideInInspector]_TerrainSmoothnessValue("Terrain Smoothness", Range( 0 , 1)) = 1
		[HideInInspector]_TerrainHeightBlendValue("Terrain Height Blend", Range( 0 , 1)) = 0
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode1("Layer 01 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode2("Layer 02 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode3("Layer 03 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode4("Layer 04 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode5("Layer 05 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode6("Layer 06 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode7("Layer 07 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode8("Layer 08 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode9("Layer 09 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode10("Layer 10 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode11("Layer 11 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode12("Layer 12 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode13("Layer 13 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode14("Layer 14 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode15("Layer 15 Sample", Float) = 10
		[HideInInspector][Enum(Planar,10,Triplanar,20,Stochastic,30,Stochasitc Triplanar,40)]_LayerSampleMode16("Layer 16 Sample", Float) = 10
		[HideInInspector]_ControlTex1("Control 01", 2D) = "black" {}
		[HideInInspector]_ControlTex2("Control 02", 2D) = "black" {}
		[HideInInspector]_ControlTex3("Control 03", 2D) = "black" {}
		[HideInInspector]_ControlTex4("Control 04", 2D) = "black" {}
		[HideInInspector]_AlbedoTex1("Albedo 01", 2D) = "white" {}
		[HideInInspector]_AlbedoTex2("Albedo 02", 2D) = "white" {}
		[HideInInspector]_AlbedoTex3("Albedo 03", 2D) = "white" {}
		[HideInInspector]_AlbedoTex4("Albedo 04", 2D) = "white" {}
		[HideInInspector]_AlbedoTex5("Albedo 05", 2D) = "white" {}
		[HideInInspector]_AlbedoTex6("Albedo 06", 2D) = "white" {}
		[HideInInspector]_AlbedoTex7("Albedo 07", 2D) = "white" {}
		[HideInInspector]_AlbedoTex8("Albedo 08", 2D) = "white" {}
		[HideInInspector]_AlbedoTex9("Albedo 09", 2D) = "white" {}
		[HideInInspector]_AlbedoTex10("Albedo 10", 2D) = "white" {}
		[HideInInspector]_AlbedoTex11("Albedo 11", 2D) = "white" {}
		[HideInInspector]_AlbedoTex12("Albedo 12", 2D) = "white" {}
		[HideInInspector]_AlbedoTex13("Albedo 13", 2D) = "white" {}
		[HideInInspector]_AlbedoTex14("Albedo 14", 2D) = "white" {}
		[HideInInspector]_AlbedoTex15("Albedo 15", 2D) = "white" {}
		[HideInInspector]_AlbedoTex16("Albedo 16", 2D) = "white" {}
		[HideInInspector]_NormalTex1("Normal 01", 2D) = "gray" {}
		[HideInInspector]_NormalTex2("Normal 02", 2D) = "gray" {}
		[HideInInspector]_NormalTex3("Normal 03", 2D) = "gray" {}
		[HideInInspector]_NormalTex4("Normal 04", 2D) = "gray" {}
		[HideInInspector]_NormalTex5("Normal 05", 2D) = "gray" {}
		[HideInInspector]_NormalTex6("Normal 06", 2D) = "gray" {}
		[HideInInspector]_NormalTex7("Normal 07", 2D) = "gray" {}
		[HideInInspector]_NormalTex8("Normal 08", 2D) = "gray" {}
		[HideInInspector]_NormalTex13("Normal 13", 2D) = "gray" {}
		[HideInInspector]_NormalTex9("Normal 09", 2D) = "gray" {}
		[HideInInspector]_NormalTex10("Normal 10", 2D) = "gray" {}
		[HideInInspector]_NormalTex11("Normal 11", 2D) = "gray" {}
		[HideInInspector]_NormalTex12("Normal 12", 2D) = "gray" {}
		[HideInInspector]_NormalTex14("Normal 14", 2D) = "gray" {}
		[HideInInspector]_NormalTex15("Normal 15", 2D) = "gray" {}
		[HideInInspector]_NormalTex16("Normal 16", 2D) = "gray" {}
		[HideInInspector]_MaskTex1("Mask 01", 2D) = "white" {}
		[HideInInspector]_MaskTex2("Mask 02", 2D) = "white" {}
		[HideInInspector]_MaskTex3("Mask 03", 2D) = "white" {}
		[HideInInspector]_MaskTex4("Mask 04", 2D) = "white" {}
		[HideInInspector]_MaskTex5("Mask 05", 2D) = "white" {}
		[HideInInspector]_MaskTex6("Mask 06", 2D) = "white" {}
		[HideInInspector]_MaskTex7("Mask 07", 2D) = "white" {}
		[HideInInspector]_MaskTex8("Mask 08", 2D) = "white" {}
		[HideInInspector]_MaskTex9("Mask 09", 2D) = "white" {}
		[HideInInspector]_MaskTex10("Mask 10", 2D) = "white" {}
		[HideInInspector]_MaskTex11("Mask 11", 2D) = "white" {}
		[HideInInspector]_MaskTex12("Mask 12", 2D) = "white" {}
		[HideInInspector]_MaskTex13("Mask 13", 2D) = "white" {}
		[HideInInspector]_MaskTex14("Mask 14", 2D) = "white" {}
		[HideInInspector]_MaskTex15("Mask 15", 2D) = "white" {}
		[HideInInspector]_MaskTex16("Mask 16", 2D) = "white" {}
		[HideInInspector]_MaskMin1("Mask Min 01", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax1("Mask Max 01", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin2("Mask Min 02", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax2("Mask Max 02", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin3("Mask Min 03", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax3("Mask Max 03", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin4("Mask Min 04", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax4("Mask Max 04", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin5("Mask Min 05", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax5("Mask Max 05", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin6("Mask Min 06", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax6("Mask Max 06", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin7("Mask Min 07", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax7("Mask Max 07", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin8("Mask Min 08", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax8("Mask Max 08", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin9("Mask Min 09", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax9("Mask Max 09", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin10("Mask Min 10", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax10("Mask Max 10", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin11("Mask Min 11", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax11("Mask Max 11", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin12("Mask Min 12", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax12("Mask Max 12", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin13("Mask Min 13", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax13("Mask Max 13", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin14("Mask Min 14", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax14("Mask Max 14", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin15("Mask Min 15", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax15("Mask Max 15", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMin16("Mask Min 16", Vector) = (0,0,0,0)
		[HideInInspector]_MaskMax16("Mask Max 16", Vector) = (0,0,0,0)
		[HideInInspector]_Params1("Params 01", Vector) = (0,0,0,0)
		[HideInInspector]_Params2("Params 02", Vector) = (0,0,0,0)
		[HideInInspector]_Params3("Params 03", Vector) = (0,0,0,0)
		[HideInInspector]_Params4("Params 04", Vector) = (0,0,0,0)
		[HideInInspector]_Params5("Params 05", Vector) = (0,0,0,0)
		[HideInInspector]_Params6("Params 06", Vector) = (0,0,0,0)
		[HideInInspector]_Params7("Params 07", Vector) = (0,0,0,0)
		[HideInInspector]_Params8("Params 08", Vector) = (0,0,0,0)
		[HideInInspector]_Params9("Params 09", Vector) = (0,0,0,0)
		[HideInInspector]_Params10("Params 10", Vector) = (0,0,0,0)
		[HideInInspector]_Params11("Params 11", Vector) = (0,0,0,0)
		[HideInInspector]_Params12("Params 12", Vector) = (0,0,0,0)
		[HideInInspector]_Params13("Params 13", Vector) = (0,0,0,0)
		[HideInInspector]_Params14("Params 14", Vector) = (0,0,0,0)
		[HideInInspector]_Params15("Params 15", Vector) = (0,0,0,0)
		[HideInInspector]_Params16("Params 16", Vector) = (0,0,0,0)
		[HideInInspector]_Coords1("Coords 01", Vector) = (1,1,0,0)
		[HideInInspector]_Coords2("Coords 02", Vector) = (1,1,0,0)
		[HideInInspector]_Coords3("Coords 03", Vector) = (1,1,0,0)
		[HideInInspector]_Coords5("Coords 05", Vector) = (1,1,0,0)
		[HideInInspector]_Coords4("Coords 04", Vector) = (1,1,0,0)
		[HideInInspector]_Coords6("Coords 06", Vector) = (1,1,0,0)
		[HideInInspector]_Coords7("Coords 07", Vector) = (1,1,0,0)
		[HideInInspector]_Coords8("Coords 08", Vector) = (1,1,0,0)
		[HideInInspector]_Coords9("Coords 09", Vector) = (1,1,0,0)
		[HideInInspector]_Coords10("Coords 10", Vector) = (1,1,0,0)
		[HideInInspector]_Coords11("Coords 11", Vector) = (1,1,0,0)
		[HideInInspector]_Coords12("Coords 12", Vector) = (1,1,0,0)
		[HideInInspector]_Coords13("Coords 13", Vector) = (1,1,0,0)
		[HideInInspector]_Coords14("Coords 14", Vector) = (1,1,0,0)
		[HideInInspector]_Coords15("Coords 15", Vector) = (1,1,0,0)
		[HideInInspector]_Coords16("Coords 16", Vector) = (1,1,0,0)
		[HideInInspector]_Specular1("Specular 01", Color) = (0,0,0,0)
		[HideInInspector]_Specular2("Specular 02", Color) = (0,0,0,0)
		[HideInInspector]_Specular3("Specular 03", Color) = (0,0,0,0)
		[HideInInspector]_Specular4("Specular 04", Color) = (0,0,0,0)
		[HideInInspector]_Specular5("Specular 05", Color) = (0,0,0,0)
		[HideInInspector]_Specular6("Specular 06", Color) = (0,0,0,0)
		[HideInInspector]_Specular7("Specular 07", Color) = (0,0,0,0)
		[HideInInspector]_Specular8("Specular 08", Color) = (0,0,0,0)
		[HideInInspector]_Specular9("Specular 09", Color) = (0,0,0,0)
		[HideInInspector]_Specular10("Specular 10", Color) = (0,0,0,0)
		[HideInInspector]_Specular11("Specular 11", Color) = (0,0,0,0)
		[HideInInspector]_Specular12("Specular 12", Color) = (0,0,0,0)
		[HideInInspector]_Specular13("Specular 13", Color) = (0,0,0,0)
		[HideInInspector]_Specular14("Specular 14", Color) = (0,0,0,0)
		[HideInInspector]_Specular15("Specular 15", Color) = (0,0,0,0)
		[HideInInspector]_Specular16("Specular 16", Color) = (0,0,0,0)
		[StyledCategory(Occlusion Settings)]_CategoryOcclusion("[ Category Occlusion ]", Float) = 1
		[StyledMessage(Info, Use the Occlusion Color for tinting and the Occlusion Alpha as Global Color and Global Overlay mask control. The mask is stored in Vertex Green channel. , 0, 10)]_MessageOcclusion("# Message Occlusion", Float) = 0
		[HDR]_VertexOcclusionColor("Occlusion Color", Color) = (1,1,1,0.5019608)
		[StyledRemapSlider(_VertexOcclusionMinValue, _VertexOcclusionMaxValue, 0, 1, 0, 0)]_VertexOcclusionRemap("Occlusion Remap", Vector) = (0,0,0,0)
		[HideInInspector]_VertexOcclusionMinValue("Occlusion Min", Range( 0 , 1)) = 0
		[HideInInspector]_VertexOcclusionMaxValue("Occlusion Max", Range( 0 , 1)) = 1
		[Space(10)][StyledToggle]_VertexOcclusionColorsMode("Use Inverted Mask for Colors", Float) = 0
		[StyledToggle]_VertexOcclusionOverlayMode("Use Inverted Mask for Overlay", Float) = 0
		[StyledCategory(Gradient Settings)]_CategoryGradient("[ Category Gradient ]", Float) = 1
		[HDR]_GradientColorOne("Gradient ColorA", Color) = (1,1,1,1)
		[HDR]_GradientColorTwo("Gradient ColorB", Color) = (1,1,1,1)
		[StyledRemapSlider(_GradientMinValue, _GradientMaxValue, 0, 1)]_GradientMaskRemap("Gradient Mask Remap", Vector) = (0,0,0,0)
		[HideInInspector]_GradientMinValue("Gradient Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_GradientMaxValue("Gradient Mask Max ", Range( 0 , 1)) = 1
		[StyledCategory(Noise Settings)]_CategoryNoise("[ Category Noise ]", Float) = 1
		[StyledRemapSlider(_NoiseMinValue, _NoiseMaxValue, 0, 1)]_NoiseMaskRemap("Noise Mask Remap", Vector) = (0,0,0,0)
		[StyledCategory(Subsurface Settings)]_CategorySubsurface("[ Category Subsurface ]", Float) = 1
		[StyledMessage(Info, In HDRP__ the Subsurface Color and Power are fake effects used for artistic control. For physically correct subsurface scattering the Power slider need to be set to 0., 0, 10)]_MessageSubsurface("# Message Subsurface", Float) = 0
		[DiffusionProfile]_SubsurfaceDiffusion("Subsurface Diffusion", Float) = 0
		[HideInInspector]_SubsurfaceDiffusion_Asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[StyledSpace(10)]_SpaceSubsurface("# SpaceSubsurface", Float) = 0
		_SubsurfaceValue("Subsurface Intensity", Range( 0 , 1)) = 1
		[HDR]_SubsurfaceColor("Subsurface Color", Color) = (1,1,1,1)
		_SubsurfaceScatteringValue("Subsurface Power", Range( 0 , 16)) = 2
		_SubsurfaceAngleValue("Subsurface Angle", Range( 1 , 16)) = 8
		_SubsurfaceDirectValue("Subsurface Direct", Range( 0 , 1)) = 1
		_SubsurfaceNormalValue("Subsurface Normal", Range( 0 , 1)) = 0
		_SubsurfaceAmbientValue("Subsurface Ambient", Range( 0 , 1)) = 0.2
		_SubsurfaceShadowValue("Subsurface Shadow", Range( 0 , 1)) = 1
		_SubsurfaceMaskValue("Subsurface Use Mask", Range( 0 , 1)) = 1
		[StyledCategory(Matcap Settings)]_CategoryMatcap("[ Category Matcap ]", Float) = 1
		[StyledCategory(Rim Light Settings)]_CategoryRimLight("[ Category Rim Light ]", Float) = 1
		[StyledRemapSlider(_RimLightMinValue, _RimLightMaxValue, 0, 1, 0, 0)]_RimLightRemap("Rim Light Remap", Vector) = (0,0,0,0)
		[StyledCategory(Emissive Settings)]_CategoryEmissive("[ Category Emissive]", Float) = 1
		[Enum(Off,0,On,1)]_EmissiveMode("Emissive Mode", Float) = 0
		[Enum(None,0,Any,1,Baked,2,Realtime,3)]_EmissiveFlagMode("Emissive GI", Float) = 0
		[NoScaleOffset][Space(10)][StyledTextureSingleLine]_EmissiveTex("Emissive Texture", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_EmissiveUVs("Emissive UVs", Vector) = (1,1,0,0)
		[HDR]_EmissiveColor("Emissive Color", Color) = (0,0,0,0)
		[Enum(Nits,0,EV100,1)]_EmissiveIntensityMode("Emissive Power", Float) = 0
		_EmissiveIntensityValue("Emissive Power", Float) = 1
		_EmissivePhaseValue("Emissive Phase", Range( 0 , 1)) = 1
		[StyledRemapSlider(_EmissiveTexMinValue, _EmissiveTexMaxValue,0,1)]_EmissiveTexRemap("Emissive Remap", Vector) = (0,0,0,0)
		[HideInInspector]_EmissiveTexMinValue("Emissive Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_EmissiveTexMaxValue("Emissive Mask Max", Range( 0 , 1)) = 1
		[HideInInspector]_emissive_intensity_value("_emissive_intensity_value", Float) = 1
		[StyledCategory(Perspective Settings)]_CategoryPerspective("[ Category Perspective ]", Float) = 1
		_PerspectivePushValue("Perspective Push", Range( 0 , 4)) = 0
		_PerspectiveNoiseValue("Perspective Noise", Range( 0 , 4)) = 0
		_PerspectiveAngleValue("Perspective Angle", Range( 0 , 8)) = 1
		[StyledCategory(Size Fade Settings)]_CategorySizeFade("[ Category Size Fade ]", Float) = 1
		_SizeFadeStartValue("Size Fade Start", Range( 0 , 1000)) = 0
		_SizeFadeEndValue("Size Fade End", Range( 0 , 1000)) = 0
		[StyledCategory(Motion Settings)]_CategoryMotion("[ Category Motion ]", Float) = 1
		[StyledMessage(Info, Procedural variation in use. Use the Scale settings if the Variation is splitting the mesh., 0, 10)]_MessageMotionVariation("# Message Motion Variation", Float) = 0
		[HDR]_MotionHighlightColor("Motion Highlight Color", Color) = (0,0,0,0)
		_MotionFacingValue("Motion Direction Mask", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_SpaceMotionGlobals("# SpaceMotionGlobals", Float) = 0
		_MotionAmplitude_10("Motion Bending", Range( 0 , 2)) = 0.2
		_MotionPosition_10("Motion Rigidity", Range( 0 , 1)) = 0.5
		[IntRange]_MotionSpeed_10("Motion Speed", Range( 0 , 40)) = 2
		_MotionScale_10("Motion Scale", Range( 0 , 20)) = 1
		_MotionVariation_10("Motion Variation", Range( 0 , 20)) = 0
		[Space(10)]_MotionAmplitude_20("Motion Squash", Range( 0 , 2)) = 0.2
		_MotionAmplitude_22("Motion Rolling", Range( 0 , 2)) = 0.2
		[IntRange]_MotionSpeed_20("Motion Speed", Range( 0 , 40)) = 6
		_MotionScale_20("Motion Scale", Range( 0 , 20)) = 3
		_MotionVariation_20("Motion Variation", Range( 0 , 20)) = 0
		[Space(10)]_MotionAmplitude_32("Motion Flutter", Range( 0 , 2)) = 0.2
		[IntRange]_MotionSpeed_32("Motion Speed", Range( 0 , 40)) = 20
		_MotionScale_32("Motion Scale", Range( 0 , 20)) = 10
		_MotionVariation_32("Motion Variation", Range( 0 , 20)) = 0
		[Space(10)]_InteractionAmplitude("Interaction Amplitude", Range( 0 , 2)) = 1
		_InteractionMaskValue("Interaction Use Mask", Range( 0 , 1)) = 0
		[HideInInspector][StyledToggle]_VertexPivotMode("Enable Pre Baked Pivots", Float) = 0
		[HideInInspector][StyledToggle]_VertexDynamicMode("Enable Dynamic Support", Float) = 0
		[HideInInspector]_render_normals("_render_normals", Vector) = (1,1,1,0)
		[HideInInspector]_Cutoff("Legacy Cutoff", Float) = 0.5
		[HideInInspector]_Color("Legacy Color", Color) = (0,0,0,0)
		[HideInInspector]_MainTex("Legacy MainTex", 2D) = "white" {}
		[HideInInspector]_BumpMap("Legacy BumpMap", 2D) = "white" {}
		[HideInInspector]_MotionValue_21("_MotionValue_20", Float) = 1
		[HideInInspector]_MotionValue_31("_MotionValue_30", Float) = 1
		[HideInInspector]_MaxBoundsInfo("_MaxBoundsInfo", Vector) = (1,1,1,1)
		[HideInInspector]_ColorsMaskMinValue("_ColorsMaskMinValue", Range( 0 , 1)) = 1
		[HideInInspector]_ColorsMaskMaxValue("_ColorsMaskMaxValue", Range( 0 , 1)) = 0
		[HideInInspector]_DetailTypeMode("_DetailTypeMode", Float) = 2
		[HideInInspector]_DetailCoordMode("_DetailCoordMode", Float) = 0
		[HideInInspector]_DetailOpaqueMode("_DetailOpaqueMode", Float) = 0
		[HideInInspector]_DetailMeshInvertMode("_DetailMeshInvertMode", Float) = 0
		[HideInInspector]_DetailMaskInvertMode("_DetailMaskInvertMode", Float) = 0
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
		[HideInInspector]_IsBlanketShader("_IsBlanketShader", Float) = 1
		[HideInInspector]_render_cull("_render_cull", Float) = 0
		[HideInInspector]_render_src("_render_src", Float) = 5
		[HideInInspector]_render_dst("_render_dst", Float) = 10
		[HideInInspector]_render_zw("_render_zw", Float) = 1
		[HideInInspector]_render_coverage("_render_coverage", Float) = 0
		[HideInInspector]_IsSubsurfaceShader("_IsSubsurfaceShader", Float) = 1
		[HideInInspector]_IsPlantShader("_IsPlantShader", Float) = 1

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		_TransStrength( "Strength", Range( 0, 50 ) ) = 1
		_TransNormal( "Normal Distortion", Range( 0, 1 ) ) = 0.5
		_TransScattering( "Scattering", Range( 1, 50 ) ) = 2
		_TransDirect( "Direct", Range( 0, 1 ) ) = 0.9
		_TransAmbient( "Ambient", Range( 0, 1 ) ) = 0.1
		_TransShadow( "Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
		//[ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1.0
		//[ToggleOff] _GlossyReflections("Reflections", Float) = 1.0
	}

	SubShader
	{
		
		Tags { "RenderType"="Opaque" "Queue"="Geometry" "DisableBatching"="False" }
	LOD 0

		Cull [_render_cull]
		AlphaToMask [_render_coverage]
		ZWrite [_render_zw]
		ZTest LEqual
		ColorMask RGBA
		
		Blend Off
		

		CGINCLUDE
		#pragma target 4.5

		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		ENDCG

		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			Blend [_render_src] [_render_dst]

			CGPROGRAM
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_TRANSLUCENCY 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
				#define UNITY_PASS_FORWARDBASE
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_TERRAIN
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_TERRAIN_04 TVE_TERRAIN_08 TVE_TERRAIN_12 TVE_TERRAIN_16
			#pragma shader_feature_local_fragment TVE_HEIGHT_BLEND
			#pragma shader_feature_local_fragment TVE_SAMPLE_01_PLANAR_2D TVE_SAMPLE_01_PLANAR_3D TVE_SAMPLE_01_STOCHASTIC_2D TVE_SAMPLE_01_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_02_PLANAR_2D TVE_SAMPLE_02_PLANAR_3D TVE_SAMPLE_02_STOCHASTIC_2D TVE_SAMPLE_02_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_03_PLANAR_2D TVE_SAMPLE_03_PLANAR_3D TVE_SAMPLE_03_STOCHASTIC_2D TVE_SAMPLE_03_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_04_PLANAR_2D TVE_SAMPLE_04_PLANAR_3D TVE_SAMPLE_04_STOCHASTIC_2D TVE_SAMPLE_04_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_05_PLANAR_2D TVE_SAMPLE_05_PLANAR_3D TVE_SAMPLE_05_STOCHASTIC_2D TVE_SAMPLE_05_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_06_PLANAR_2D TVE_SAMPLE_06_PLANAR_3D TVE_SAMPLE_06_STOCHASTIC_2D TVE_SAMPLE_06_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_07_PLANAR_2D TVE_SAMPLE_07_PLANAR_3D TVE_SAMPLE_07_STOCHASTIC_2D TVE_SAMPLE_07_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_08_PLANAR_2D TVE_SAMPLE_08_PLANAR_3D TVE_SAMPLE_08_STOCHASTIC_2D TVE_SAMPLE_08_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_09_PLANAR_2D TVE_SAMPLE_09_PLANAR_3D TVE_SAMPLE_09_STOCHASTIC_2D TVE_SAMPLE_09_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_10_PLANAR_2D TVE_SAMPLE_10_PLANAR_3D TVE_SAMPLE_10_STOCHASTIC_2D TVE_SAMPLE_10_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_11_PLANAR_2D TVE_SAMPLE_11_PLANAR_3D TVE_SAMPLE_11_STOCHASTIC_2D TVE_SAMPLE_11_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_12_PLANAR_2D TVE_SAMPLE_12_PLANAR_3D TVE_SAMPLE_12_STOCHASTIC_2D TVE_SAMPLE_12_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_13_PLANAR_2D TVE_SAMPLE_13_PLANAR_3D TVE_SAMPLE_13_STOCHASTIC_2D TVE_SAMPLE_13_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_14_PLANAR_2D TVE_SAMPLE_14_PLANAR_3D TVE_SAMPLE_14_STOCHASTIC_2D TVE_SAMPLE_14_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_15_PLANAR_2D TVE_SAMPLE_15_PLANAR_3D TVE_SAMPLE_15_STOCHASTIC_2D TVE_SAMPLE_15_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_16_PLANAR_2D TVE_SAMPLE_16_PLANAR_3D TVE_SAMPLE_16_STOCHASTIC_2D TVE_SAMPLE_16_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_PACKED_TEX
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_SUBSURFACE_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if defined(LIGHTMAP_ON) || (!defined(LIGHTMAP_ON) && SHADER_TARGET >= 30)
					float4 lmap : TEXCOORD0;
				#endif
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
					half3 sh : TEXCOORD1;
				#endif
				#if defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS) && UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(2,3)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(2)
					#else
						SHADOW_COORDS(2)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(4)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_color : COLOR;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

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
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_coverage;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_cull;
			uniform half _IsSubsurfaceShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform half _Cutoff;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderZWrite;
			uniform half _RenderClip;
			uniform half _RenderCull;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
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
			uniform half _RenderCoverage;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half _SpaceGlobalLocals;
			uniform half _SpaceSubsurface;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsBlanketShader;
			uniform half4 _Color;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryDetail;
			uniform half _CategoryTerrain;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceMotionGlobals;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMeshInvertMode;
			uniform half _DetailMaskInvertMode;
			uniform half _MotionValue_31;
			uniform half _MotionValue_21;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _DetailBlendRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailMaskRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half4 _RimLightRemap;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half4 _EmissiveTexRemap;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half _MessageSubsurface;
			uniform half _MessageOcclusion;
			uniform half _MessageTerrain;
			uniform half4 _TerrainBlendRemap;
			uniform half _TerrainTexMode;
			uniform half _TerrainBlendMode;
			uniform half _TerrainLayersMode;
			uniform half _LayerSampleMode1;
			uniform half _LayerSampleMode2;
			uniform half _LayerSampleMode3;
			uniform half _LayerSampleMode4;
			uniform half _LayerSampleMode5;
			uniform half _LayerSampleMode6;
			uniform half _LayerSampleMode7;
			uniform half _LayerSampleMode8;
			uniform half _LayerSampleMode9;
			uniform half _LayerSampleMode10;
			uniform half _LayerSampleMode11;
			uniform half _LayerSampleMode12;
			uniform half _LayerSampleMode13;
			uniform half _LayerSampleMode14;
			uniform half _LayerSampleMode15;
			uniform half _LayerSampleMode16;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half _VertexPositionMode;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalOrientation;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half _ConformOffsetMode;
			uniform half _ConformOffsetValue;
			uniform half _GlobalConform;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			uniform float _TerrainBlendOffsetValue;
			uniform float _TerrainBlendNormalValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;
			uniform half _DetailBlendMode;
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _GradientMinValue;
			uniform half _GradientMaxValue;
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex1);
			uniform half4 _TerrainPosition;
			uniform half4 _TerrainSize;
			SamplerState sampler_Linear_Clamp_Aniso8;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex1);
			SamplerState sampler_Linear_Repeat_Aniso8;
			uniform half4 _Coords1;
			uniform half4 _MaskMin1;
			uniform half4 _MaskMax1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex2);
			uniform half4 _Coords2;
			uniform half4 _MaskMin2;
			uniform half4 _MaskMax2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex3);
			uniform half4 _Coords3;
			uniform half4 _MaskMin3;
			uniform half4 _MaskMax3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex4);
			uniform half4 _Coords4;
			uniform half4 _MaskMin4;
			uniform half4 _MaskMax4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex5);
			uniform half4 _Coords5;
			uniform half4 _MaskMin5;
			uniform half4 _MaskMax5;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex6);
			uniform half4 _Coords6;
			uniform half4 _MaskMin6;
			uniform half4 _MaskMax6;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex7);
			uniform half4 _Coords7;
			uniform half4 _MaskMin7;
			uniform half4 _MaskMax7;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex8);
			uniform half4 _Coords8;
			uniform half4 _MaskMin8;
			uniform half4 _MaskMax8;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex9);
			uniform half4 _Coords9;
			uniform half4 _MaskMin9;
			uniform half4 _MaskMax9;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex10);
			uniform half4 _Coords10;
			uniform half4 _MaskMin10;
			uniform half4 _MaskMax10;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex11);
			uniform half4 _Coords11;
			uniform half4 _MaskMin11;
			uniform half4 _MaskMax11;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex12);
			uniform half4 _Coords12;
			uniform half4 _MaskMin12;
			uniform half4 _MaskMax12;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex13);
			uniform half4 _Coords13;
			uniform half4 _MaskMin13;
			uniform half4 _MaskMax13;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex14);
			uniform half4 _Coords14;
			uniform half4 _MaskMin14;
			uniform half4 _MaskMax14;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex15);
			uniform half4 _Coords15;
			uniform half4 _MaskMin15;
			uniform half4 _MaskMax15;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex16);
			uniform half4 _Coords16;
			uniform half4 _MaskMin16;
			uniform half4 _MaskMax16;
			uniform half _TerrainHeightBlendValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex1);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex5);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex6);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex7);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex8);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex9);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex10);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex11);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex12);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex13);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex14);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex15);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex16);
			uniform half4 _TerrainColor;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _TerrainMode;
			uniform half _TerrainBlendMinValue;
			uniform half _TerrainBlendMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half4 _Specular1;
			uniform half4 _Specular2;
			uniform half4 _Specular3;
			uniform half4 _Specular4;
			uniform half4 _Specular5;
			uniform half4 _Specular6;
			uniform half4 _Specular7;
			uniform half4 _Specular8;
			uniform half4 _Specular9;
			uniform half4 _Specular10;
			uniform half4 _Specular11;
			uniform half4 _Specular12;
			uniform half4 _Specular13;
			uniform half4 _Specular14;
			uniform half4 _Specular15;
			uniform half4 _Specular16;
			uniform half _GlobalColors;
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
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex1);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex5);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex6);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex7);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex8);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex9);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex10);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex11);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex12);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex13);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex14);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex15);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex16);
			uniform half4 _Params1;
			uniform half4 _Params2;
			uniform half4 _Params3;
			uniform half4 _Params4;
			uniform half4 _Params5;
			uniform half4 _Params6;
			uniform half4 _Params7;
			uniform half4 _Params8;
			uniform half4 _Params9;
			uniform half4 _Params10;
			uniform half4 _Params11;
			uniform half4 _Params12;
			uniform half4 _Params13;
			uniform half4 _Params14;
			uniform half4 _Params15;
			uniform half4 _Params16;
			uniform half _TerrainNormalValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _MotionHighlightColor;
			uniform half TVE_OverlayNormalValue;
			uniform half TVE_WetnessNormalValue;
			uniform half3 _render_normals;
			uniform half4 _EmissiveColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveTex);
			uniform half4 _EmissiveUVs;
			uniform half _EmissiveTexMinValue;
			uniform half _EmissiveTexMaxValue;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform half _RenderSpecular;
			uniform half _MainOcclusionValue;
			uniform half _SecondOcclusionValue;
			uniform half _TerrainOcclusionValue;
			uniform half _MainSmoothnessValue;
			uniform half _SecondSmoothnessValue;
			uniform half _TerrainSmoothnessValue;
			uniform half TVE_OverlaySmoothness;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			
			void ComputeWorldCoords( half4 Coords, half3 WorldPosition, out half2 ZX, out half2 ZY, out half2 XY )
			{
				ZX = WorldPosition.xz * Coords.xy + Coords.zw;
				ZY = WorldPosition.zy * Coords.xy + Coords.zw; 
				XY = WorldPosition.xy * Coords.xy + Coords.zw;
			}
			
			half4 SamplePlanar2D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half4 tex = SAMPLE_TEXTURE2D( Texture, Sampler, ZX);
				return tex;
			}
			
			void ComputeTriplanarWeights( half3 WorldNormal, out half T1, out half T2, out half T3 )
			{
				half3 powNormal = abs( WorldNormal.xyz );
				half3 weights = max( powNormal * powNormal * powNormal * powNormal * powNormal * powNormal * powNormal * powNormal, 0.000001 );
				weights /= ( weights.x + weights.y + weights.z ).xxx;
				T1 = weights.y;
				T2 = weights.x;
				T3 = weights.z;
			}
			
			half4 SamplePlanar3D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition, half3 WorldNormal )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half T1, T2, T3;
				ComputeTriplanarWeights(WorldNormal, T1, T2, T3);
				half4 tex1 = SAMPLE_TEXTURE2D( Texture, Sampler, ZX);
				half4 tex2 = SAMPLE_TEXTURE2D( Texture, Sampler, ZY);
				half4 tex3 = SAMPLE_TEXTURE2D( Texture, Sampler, XY);
				return tex1 * T1 + tex2 * T2 + tex3 * T3;
			}
			
			void ComputeStochasticCoords( float2 UV, out float2 UV1, out float2 UV2, out float2 UV3, out float W1, out float W2, out float W3 )
			{
				half2 vertex1, vertex2, vertex3;
				// Scaling of the input
				half2 uv = UV * 3.464; // 2 * sqrt (3)
				// Skew input space into simplex triangle grid
				const float2x2 gridToSkewedGrid = float2x2( 1.0, 0.0, -0.57735027, 1.15470054 );
				half2 skewedCoord = mul( gridToSkewedGrid, uv );
				// Compute local triangle vertex IDs and local barycentric coordinates
				int2 baseId = int2( floor( skewedCoord ) );
				half3 temp = half3( frac( skewedCoord ), 0 );
				temp.z = 1.0 - temp.x - temp.y;
				if ( temp.z > 0.0 )
				{
					W1 = temp.z;
					W2 = temp.y;
					W3 = temp.x;
					vertex1 = baseId;
					vertex2 = baseId + int2( 0, 1 );
					vertex3 = baseId + int2( 1, 0 );
				}
				else
				{
					W1 = -temp.z;
					W2 = 1.0 - temp.y;
					W3 = 1.0 - temp.x;
					vertex1 = baseId + int2( 1, 1 );
					vertex2 = baseId + int2( 1, 0 );
					vertex3 = baseId + int2( 0, 1 );
				}
				UV1 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex1 ) ) * 43758.5453 );
				UV2 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex2 ) ) * 43758.5453 );
				UV3 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex3 ) ) * 43758.5453 );
				return;
			}
			
			float4 SampleStochastic2D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half2 UV1, UV2, UV3;
				half W1, W2, W3;
				ComputeStochasticCoords(ZX, UV1, UV2, UV3, W1, W2, W3 );
				half4 tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZX), ddy(ZX));
				half4 tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZX), ddy(ZX));
				half4 tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZX), ddy(ZX));
				return tex1 * W1 + tex2 * W2 + tex3 * W3;
			}
			
			half4 SampleStochastic3D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition, half3 WorldNormal )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half2 UV1, UV2, UV3;
				half W1, W2, W3;
				half4 tex1, tex2, tex3;
				ComputeStochasticCoords(ZX, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZX), ddy(ZX));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZX), ddy(ZX));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZX), ddy(ZX));
				half4 texZX = tex1 * W1 + tex2 * W2 + tex3 * W3;
				ComputeStochasticCoords(ZY, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZY), ddy(ZY));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZY), ddy(ZY));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZY), ddy(ZY));
				half4 texZY = tex1 * W1 + tex2 * W2 + tex3 * W3;
				ComputeStochasticCoords(XY, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(XY), ddy(XY));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(XY), ddy(XY));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(XY), ddy(XY));
				half4 texXY = tex1 * W1 + tex2 * W2 + tex3 * W3;
				half T1, T2, T3;
				ComputeTriplanarWeights(WorldNormal, T1, T2, T3);
				return texZX * T1 + texZY * T2 + texXY * T3;
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g83150 = v.vertex.xyz;
				float3 appendResult60_g83158 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g83150 = ( appendResult60_g83158 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g83150 = Mesh_PivotsData2831_g83150;
				float3 temp_output_2283_0_g83150 = ( VertexPosition3588_g83150 - Mesh_PivotsOS2291_g83150 );
				half3 VertexPos40_g83230 = temp_output_2283_0_g83150;
				half3 VertexPos40_g83231 = VertexPos40_g83230;
				float3 appendResult74_g83231 = (float3(VertexPos40_g83231.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g83231 = appendResult74_g83231;
				float3 break84_g83231 = VertexPos40_g83231;
				float3 appendResult81_g83231 = (float3(0.0 , break84_g83231.y , break84_g83231.z));
				half3 VertexPosOtherAxis82_g83231 = appendResult81_g83231;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g83150 = ase_worldPos;
				float3 WorldPosition3905_g83150 = vertexToFrag3890_g83150;
				float3 WorldPosition_Shifted7477_g83150 = ( WorldPosition3905_g83150 - TVE_WorldOrigin );
				float4x4 break19_g83187 = unity_ObjectToWorld;
				float3 appendResult20_g83187 = (float3(break19_g83187[ 0 ][ 3 ] , break19_g83187[ 1 ][ 3 ] , break19_g83187[ 2 ][ 3 ]));
				float3 temp_output_122_0_g83187 = Mesh_PivotsData2831_g83150;
				float3 PivotsOnly105_g83187 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g83187 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g83189 = ( appendResult20_g83187 + PivotsOnly105_g83187 );
				half3 WorldData19_g83189 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83189 = WorldData19_g83189;
				#else
				float3 staticSwitch14_g83189 = ObjectData20_g83189;
				#endif
				float3 temp_output_114_0_g83187 = staticSwitch14_g83189;
				float3 vertexToFrag4224_g83150 = temp_output_114_0_g83187;
				float3 ObjectPosition4223_g83150 = vertexToFrag4224_g83150;
				float3 ObjectPosition_Shifted7481_g83150 = ( ObjectPosition4223_g83150 - TVE_WorldOrigin );
				float3 lerpResult6766_g83150 = lerp( WorldPosition_Shifted7477_g83150 , ObjectPosition_Shifted7481_g83150 , _MotionPosition_10);
				float3 Motion_10_Position6738_g83150 = lerpResult6766_g83150;
				half3 Input_Position419_g83195 = Motion_10_Position6738_g83150;
				float Input_MotionScale287_g83195 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g83195 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g83195 = (( Input_Position419_g83195 * Input_MotionScale287_g83195 * NoiseTex_Tilling735_g83195 * 0.0075 )).xz;
				float2 temp_output_447_0_g83155 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g83150 = temp_output_447_0_g83155;
				half2 Input_DirectionWS423_g83195 = Global_Wind_DirectionWS4683_g83150;
				float lerpResult128_g83196 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83195 = _MotionSpeed_10;
				half Input_MotionVariation284_g83195 = _MotionVariation_10;
				half3 Input_Position167_g83244 = ObjectPosition_Shifted7481_g83150;
				float dotResult156_g83244 = dot( (Input_Position167_g83244).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g83150 = _VertexDynamicMode;
				half Input_DynamicMode120_g83244 = Vertex_DynamicMode5112_g83150;
				float Postion_Random162_g83244 = ( sin( dotResult156_g83244 ) * ( 1.0 - Input_DynamicMode120_g83244 ) );
				float Mesh_Variation16_g83150 = v.ase_color.r;
				half Input_Variation124_g83244 = Mesh_Variation16_g83150;
				half ObjectData20_g83246 = frac( ( Postion_Random162_g83244 + Input_Variation124_g83244 ) );
				half WorldData19_g83246 = Input_Variation124_g83244;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83246 = WorldData19_g83246;
				#else
				float staticSwitch14_g83246 = ObjectData20_g83246;
				#endif
				float temp_output_112_0_g83244 = staticSwitch14_g83246;
				float clampResult171_g83244 = clamp( temp_output_112_0_g83244 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g83150 = clampResult171_g83244;
				half Input_GlobalMeshVariation569_g83195 = Global_MeshVariation5104_g83150;
				float temp_output_630_0_g83195 = ( ( ( lerpResult128_g83196 * Input_MotionSpeed62_g83195 ) + ( Input_MotionVariation284_g83195 * Input_GlobalMeshVariation569_g83195 ) ) * 0.03 );
				float temp_output_607_0_g83195 = frac( temp_output_630_0_g83195 );
				float4 lerpResult590_g83195 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g83195 + ( -Input_DirectionWS423_g83195 * temp_output_607_0_g83195 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g83195 + ( -Input_DirectionWS423_g83195 * frac( ( temp_output_630_0_g83195 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g83195 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g83195 = lerpResult590_g83195;
				float2 temp_output_645_0_g83195 = ((Noise_Complex703_g83195).rg*2.0 + -1.0);
				float2 break650_g83195 = temp_output_645_0_g83195;
				float3 appendResult649_g83195 = (float3(break650_g83195.x , 0.0 , break650_g83195.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g83150 = (( mul( unity_WorldToObject, float4( appendResult649_g83195 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g83210 = Global_Noise_OS5548_g83150;
				float2 break448_g83155 = temp_output_447_0_g83155;
				float3 appendResult452_g83155 = (float3(break448_g83155.x , 0.0 , break448_g83155.y));
				half2 Global_Wind_DirectionOS5692_g83150 = (( mul( unity_WorldToObject, float4( appendResult452_g83155 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g83210 = Global_Wind_DirectionOS5692_g83150;
				float temp_output_84_0_g83159 = _LayerMotionValue;
				float temp_output_19_0_g83163 = TVE_MotionUsage[(int)temp_output_84_0_g83159];
				float4 temp_output_91_19_g83159 = TVE_MotionCoords;
				half2 UV94_g83159 = ( (temp_output_91_19_g83159).zw + ( (temp_output_91_19_g83159).xy * (ObjectPosition4223_g83150).xz ) );
				float4 tex2DArrayNode50_g83159 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g83159,temp_output_84_0_g83159), 0.0 );
				float4 temp_output_17_0_g83163 = tex2DArrayNode50_g83159;
				float4 temp_output_112_19_g83159 = TVE_MotionParams;
				float4 temp_output_3_0_g83163 = temp_output_112_19_g83159;
				float4 ifLocalVar18_g83163 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83163 >= 0.5 )
				ifLocalVar18_g83163 = temp_output_17_0_g83163;
				else
				ifLocalVar18_g83163 = temp_output_3_0_g83163;
				float4 lerpResult22_g83163 = lerp( temp_output_3_0_g83163 , temp_output_17_0_g83163 , temp_output_19_0_g83163);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83163 = lerpResult22_g83163;
				#else
				float4 staticSwitch24_g83163 = ifLocalVar18_g83163;
				#endif
				half4 Global_Motion_Params3909_g83150 = staticSwitch24_g83163;
				float4 break322_g83155 = Global_Motion_Params3909_g83150;
				float lerpResult457_g83155 = lerp( break322_g83155.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g83155 = ( 1.0 - lerpResult457_g83155 );
				half Global_Wind_Power2223_g83150 = ( 1.0 - ( temp_output_459_0_g83155 * temp_output_459_0_g83155 ) );
				half Input_WindPower449_g83210 = Global_Wind_Power2223_g83150;
				float2 lerpResult516_g83210 = lerp( Input_Noise_DirectionOS487_g83210 , Input_Wind_DirectionOS458_g83210 , ( Input_WindPower449_g83210 * 0.6 ));
				half Mesh_Motion_107613_g83150 = v.ase_color.a;
				half Input_MeshHeight388_g83210 = Mesh_Motion_107613_g83150;
				half ObjectData20_g83211 = Input_MeshHeight388_g83210;
				float enc62_g83205 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g83205 = DecodeFloatToVector2( enc62_g83205 );
				float2 break63_g83205 = ( localDecodeFloatToVector262_g83205 * 100.0 );
				float Bounds_Height5230_g83150 = break63_g83205.x;
				half Input_BoundsHeight390_g83210 = Bounds_Height5230_g83150;
				half WorldData19_g83211 = ( Input_MeshHeight388_g83210 * Input_MeshHeight388_g83210 * Input_BoundsHeight390_g83210 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83211 = WorldData19_g83211;
				#else
				float staticSwitch14_g83211 = ObjectData20_g83211;
				#endif
				half Final_Motion10_Mask321_g83210 = ( staticSwitch14_g83211 * 2.0 );
				half Motion_10_Amplitude2258_g83150 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g83210 = Motion_10_Amplitude2258_g83150;
				half Global_MotionValue640_g83210 = TVE_MotionValue_10;
				half2 Final_Bending631_g83210 = ( lerpResult516_g83210 * ( Final_Motion10_Mask321_g83210 * Input_BendingAmplitude376_g83210 * Input_WindPower449_g83210 * Input_WindPower449_g83210 * Global_MotionValue640_g83210 ) );
				float2 appendResult433_g83155 = (float2(break322_g83155.x , break322_g83155.y));
				float2 temp_output_436_0_g83155 = (appendResult433_g83155*2.0 + -1.0);
				float2 break441_g83155 = temp_output_436_0_g83155;
				float3 appendResult440_g83155 = (float3(break441_g83155.x , 0.0 , break441_g83155.y));
				half2 Global_React_DirectionOS39_g83150 = (( mul( unity_WorldToObject, float4( appendResult440_g83155 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g83210 = Global_React_DirectionOS39_g83150;
				float clampResult17_g83213 = clamp( Input_MeshHeight388_g83210 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83212 = 0.0;
				half Input_InteractionUseMask62_g83210 = _InteractionMaskValue;
				float temp_output_10_0_g83212 = ( Input_InteractionUseMask62_g83210 - temp_output_7_0_g83212 );
				half Final_InteractionRemap594_g83210 = saturate( ( ( clampResult17_g83213 - temp_output_7_0_g83212 ) / ( temp_output_10_0_g83212 + 0.0001 ) ) );
				half ObjectData20_g83214 = Final_InteractionRemap594_g83210;
				half WorldData19_g83214 = ( Final_InteractionRemap594_g83210 * Final_InteractionRemap594_g83210 * Input_BoundsHeight390_g83210 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83214 = WorldData19_g83214;
				#else
				float staticSwitch14_g83214 = ObjectData20_g83214;
				#endif
				half Final_InteractionMask373_g83210 = ( staticSwitch14_g83214 * 2.0 );
				half Interaction_Amplitude7501_g83150 = _InteractionAmplitude;
				half Input_InteractionAmplitude58_g83210 = Interaction_Amplitude7501_g83150;
				half2 Final_Interaction632_g83210 = ( Input_React_DirectionOS358_g83210 * Final_InteractionMask373_g83210 * Input_InteractionAmplitude58_g83210 );
				half Global_Interaction_Mask66_g83150 = ( break322_g83155.w * break322_g83155.w * break322_g83155.w * break322_g83155.w );
				float Input_InteractionGlobalMask330_g83210 = Global_Interaction_Mask66_g83150;
				half Final_InteractionValue525_g83210 = saturate( ( Input_InteractionAmplitude58_g83210 * Input_InteractionGlobalMask330_g83210 ) );
				float2 lerpResult551_g83210 = lerp( Final_Bending631_g83210 , Final_Interaction632_g83210 , Final_InteractionValue525_g83210);
				float2 break364_g83210 = lerpResult551_g83210;
				float3 appendResult638_g83210 = (float3(break364_g83210.x , 0.0 , break364_g83210.y));
				half3 Motion_10_Interaction7519_g83150 = appendResult638_g83210;
				float temp_output_84_0_g83179 = _LayerVertexValue;
				float temp_output_19_0_g83183 = TVE_VertexUsage[(int)temp_output_84_0_g83179];
				float4 temp_output_94_19_g83179 = TVE_VertexCoords;
				float3 lerpResult7575_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _VertexPositionMode);
				half2 UV97_g83179 = ( (temp_output_94_19_g83179).zw + ( (temp_output_94_19_g83179).xy * (lerpResult7575_g83150).xz ) );
				float4 tex2DArrayNode50_g83179 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g83179,temp_output_84_0_g83179), 0.0 );
				float4 temp_output_17_0_g83183 = tex2DArrayNode50_g83179;
				float4 temp_output_111_19_g83179 = TVE_VertexParams;
				float4 temp_output_3_0_g83183 = temp_output_111_19_g83179;
				float4 ifLocalVar18_g83183 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83183 >= 0.5 )
				ifLocalVar18_g83183 = temp_output_17_0_g83183;
				else
				ifLocalVar18_g83183 = temp_output_3_0_g83183;
				float4 lerpResult22_g83183 = lerp( temp_output_3_0_g83183 , temp_output_17_0_g83183 , temp_output_19_0_g83183);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83183 = lerpResult22_g83183;
				#else
				float4 staticSwitch24_g83183 = ifLocalVar18_g83183;
				#endif
				half4 Global_Vertex_Params4173_g83150 = staticSwitch24_g83183;
				float4 break322_g83217 = Global_Vertex_Params4173_g83150;
				float2 appendResult355_g83217 = (float2(break322_g83217.x , break322_g83217.y));
				float2 temp_output_356_0_g83217 = (appendResult355_g83217*2.0 + -1.0);
				float2 break357_g83217 = temp_output_356_0_g83217;
				float3 appendResult361_g83217 = (float3(break357_g83217.x , 0.0 , break357_g83217.y));
				half2 Global_VertexOrientationOS7550_g83150 = (( mul( unity_WorldToObject, float4( appendResult361_g83217 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float2 lerpResult7535_g83150 = lerp( float2( 0,0 ) , Global_VertexOrientationOS7550_g83150 , _GlobalOrientation);
				float2 break7552_g83150 = lerpResult7535_g83150;
				float3 appendResult7553_g83150 = (float3(break7552_g83150.x , 0.0 , break7552_g83150.y));
				half3 Vertex_Orientation7542_g83150 = appendResult7553_g83150;
				half3 Angle44_g83230 = ( Motion_10_Interaction7519_g83150 + Vertex_Orientation7542_g83150 );
				half Angle44_g83231 = (Angle44_g83230).z;
				half3 VertexPos40_g83232 = ( VertexPosRotationAxis50_g83231 + ( VertexPosOtherAxis82_g83231 * cos( Angle44_g83231 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g83231 ) * sin( Angle44_g83231 ) ) );
				float3 appendResult74_g83232 = (float3(0.0 , 0.0 , VertexPos40_g83232.z));
				half3 VertexPosRotationAxis50_g83232 = appendResult74_g83232;
				float3 break84_g83232 = VertexPos40_g83232;
				float3 appendResult81_g83232 = (float3(break84_g83232.x , break84_g83232.y , 0.0));
				half3 VertexPosOtherAxis82_g83232 = appendResult81_g83232;
				half Angle44_g83232 = -(Angle44_g83230).x;
				half3 Input_Position419_g83203 = WorldPosition_Shifted7477_g83150;
				float3 break459_g83203 = Input_Position419_g83203;
				float Sum_Position446_g83203 = ( break459_g83203.x + break459_g83203.y + break459_g83203.z );
				half Input_MotionScale321_g83203 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g83203 = _MotionVariation_20;
				half Input_GlobalVariation400_g83203 = Global_MeshVariation5104_g83150;
				float lerpResult128_g83204 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83203 = _MotionSpeed_20;
				float temp_output_404_0_g83203 = ( lerpResult128_g83204 * Input_MotionSpeed62_g83203 );
				half Motion_SineA450_g83203 = sin( ( ( Sum_Position446_g83203 * Input_MotionScale321_g83203 ) + ( Input_MotionVariation330_g83203 * Input_GlobalVariation400_g83203 ) + temp_output_404_0_g83203 ) );
				half Motion_SineB395_g83203 = sin( ( ( temp_output_404_0_g83203 * 0.6842 ) + ( Sum_Position446_g83203 * Input_MotionScale321_g83203 ) ) );
				half3 Input_Position419_g83242 = VertexPosition3588_g83150;
				float3 normalizeResult518_g83242 = normalize( Input_Position419_g83242 );
				half2 Input_DirectionOS423_g83242 = Global_React_DirectionOS39_g83150;
				float2 break521_g83242 = -Input_DirectionOS423_g83242;
				float3 appendResult522_g83242 = (float3(break521_g83242.x , 0.0 , break521_g83242.y));
				float dotResult519_g83242 = dot( normalizeResult518_g83242 , appendResult522_g83242 );
				half Input_Value62_g83242 = _MotionFacingValue;
				float lerpResult524_g83242 = lerp( 1.0 , (dotResult519_g83242*0.5 + 0.5) , Input_Value62_g83242);
				half ObjectData20_g83243 = max( lerpResult524_g83242 , 0.001 );
				half WorldData19_g83243 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83243 = WorldData19_g83243;
				#else
				float staticSwitch14_g83243 = ObjectData20_g83243;
				#endif
				half Motion_FacingMask5214_g83150 = staticSwitch14_g83243;
				half Motion_20_Amplitude4381_g83150 = Motion_FacingMask5214_g83150;
				half Input_MotionAmplitude384_g83203 = Motion_20_Amplitude4381_g83150;
				half Input_GlobalWind407_g83203 = Global_Wind_Power2223_g83150;
				float4 break638_g83195 = abs( Noise_Complex703_g83195 );
				half Global_Noise_B5526_g83150 = break638_g83195.b;
				half Input_GlobalNoise411_g83203 = Global_Noise_B5526_g83150;
				float lerpResult413_g83203 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g83203);
				half Motion_Amplitude418_g83203 = ( Input_MotionAmplitude384_g83203 * Input_GlobalWind407_g83203 * pow( Input_GlobalNoise411_g83203 , lerpResult413_g83203 ) );
				half Input_Squash58_g83203 = _MotionAmplitude_20;
				float enc59_g83205 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g83205 = DecodeFloatToVector2( enc59_g83205 );
				float2 break61_g83205 = localDecodeFloatToVector259_g83205;
				half Mesh_Motion_2060_g83150 = break61_g83205.x;
				half Input_MeshMotion_20388_g83203 = Mesh_Motion_2060_g83150;
				float Bounds_Radius5231_g83150 = break63_g83205.y;
				half Input_BoundsRadius390_g83203 = Bounds_Radius5231_g83150;
				half Global_MotionValue462_g83203 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g83203 = Global_React_DirectionOS39_g83150;
				float2 break371_g83203 = Input_DirectionOS366_g83203;
				float3 appendResult372_g83203 = (float3(break371_g83203.x , ( Motion_SineA450_g83203 * 0.3 ) , break371_g83203.y));
				half3 Motion_20_Squash4418_g83150 = ( ( (max( Motion_SineA450_g83203 , Motion_SineB395_g83203 )*0.5 + 0.5) * Motion_Amplitude418_g83203 * Input_Squash58_g83203 * Input_MeshMotion_20388_g83203 * Input_BoundsRadius390_g83203 * Global_MotionValue462_g83203 ) * appendResult372_g83203 );
				half3 VertexPos40_g83220 = ( ( VertexPosRotationAxis50_g83232 + ( VertexPosOtherAxis82_g83232 * cos( Angle44_g83232 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g83232 ) * sin( Angle44_g83232 ) ) ) + Motion_20_Squash4418_g83150 );
				float3 appendResult74_g83220 = (float3(0.0 , VertexPos40_g83220.y , 0.0));
				float3 VertexPosRotationAxis50_g83220 = appendResult74_g83220;
				float3 break84_g83220 = VertexPos40_g83220;
				float3 appendResult81_g83220 = (float3(break84_g83220.x , 0.0 , break84_g83220.z));
				float3 VertexPosOtherAxis82_g83220 = appendResult81_g83220;
				half Input_Rolling379_g83203 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g83150 = ( Motion_SineA450_g83203 * Motion_Amplitude418_g83203 * Input_Rolling379_g83203 * Input_MeshMotion_20388_g83203 * Global_MotionValue462_g83203 );
				half Angle44_g83220 = Motion_20_Rolling5257_g83150;
				half3 Input_Position500_g83199 = WorldPosition_Shifted7477_g83150;
				half Input_MotionScale321_g83199 = _MotionScale_32;
				half Input_MotionVariation330_g83199 = _MotionVariation_32;
				half Input_GlobalVariation372_g83199 = Global_MeshVariation5104_g83150;
				float lerpResult128_g83200 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83199 = _MotionSpeed_32;
				float4 tex2DNode460_g83199 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g83199).xz * Input_MotionScale321_g83199 * 0.03 ) + ( Input_MotionVariation330_g83199 * Input_GlobalVariation372_g83199 ) + ( lerpResult128_g83200 * Input_MotionSpeed62_g83199 * 0.02 ) ), 0.0 );
				float3 appendResult462_g83199 = (float3(tex2DNode460_g83199.r , tex2DNode460_g83199.g , tex2DNode460_g83199.b));
				half3 Flutter_Texture489_g83199 = (appendResult462_g83199*2.0 + -1.0);
				float temp_output_7_0_g83185 = TVE_MotionFadeEnd;
				float temp_output_10_0_g83185 = ( TVE_MotionFadeStart - temp_output_7_0_g83185 );
				half Motion_FadeOut4005_g83150 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g83185 ) / ( temp_output_10_0_g83185 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g83150 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g83150 * Motion_FadeOut4005_g83150 );
				half Input_MotionAmplitude58_g83199 = Motion_30_Amplitude4960_g83150;
				half Mesh_Motion_30144_g83150 = break61_g83205.y;
				half Input_MeshMotion_30374_g83199 = Mesh_Motion_30144_g83150;
				half Input_GlobalWind471_g83199 = Global_Wind_Power2223_g83150;
				half Global_MotionValue503_g83199 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g83199 = Global_Noise_B5526_g83150;
				float lerpResult466_g83199 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g83199);
				half Flutter_Amplitude491_g83199 = ( Input_MotionAmplitude58_g83199 * Input_MeshMotion_30374_g83199 * Input_GlobalWind471_g83199 * Global_MotionValue503_g83199 * pow( Input_GlobalNoise472_g83199 , lerpResult466_g83199 ) );
				half3 Motion_30_Flutter263_g83150 = ( Flutter_Texture489_g83199 * Flutter_Amplitude491_g83199 );
				float3 Vertex_Motion_Object833_g83150 = ( ( VertexPosRotationAxis50_g83220 + ( VertexPosOtherAxis82_g83220 * cos( Angle44_g83220 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g83220 ) * sin( Angle44_g83220 ) ) ) + Motion_30_Flutter263_g83150 );
				half3 ObjectData20_g83221 = Vertex_Motion_Object833_g83150;
				float3 temp_output_3474_0_g83150 = ( VertexPosition3588_g83150 - Mesh_PivotsOS2291_g83150 );
				float3 Vertex_Motion_World1118_g83150 = ( ( ( temp_output_3474_0_g83150 + ( Motion_10_Interaction7519_g83150 + Vertex_Orientation7542_g83150 ) ) + Motion_20_Squash4418_g83150 ) + Motion_30_Flutter263_g83150 );
				half3 WorldData19_g83221 = Vertex_Motion_World1118_g83150;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83221 = WorldData19_g83221;
				#else
				float3 staticSwitch14_g83221 = ObjectData20_g83221;
				#endif
				float3 temp_output_7495_0_g83150 = staticSwitch14_g83221;
				float3 Vertex_Motion7493_g83150 = temp_output_7495_0_g83150;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g83150 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g83150 = normalizeResult2169_g83150;
				float3 break2709_g83150 = cross( ViewDirection3963_g83150 , half3(0,1,0) );
				float3 appendResult2710_g83150 = (float3(-break2709_g83150.z , 0.0 , break2709_g83150.x));
				float3 appendResult2667_g83150 = (float3(Global_MeshVariation5104_g83150 , 0.5 , Global_MeshVariation5104_g83150));
				half Mesh_Height1524_g83150 = v.ase_color.a;
				float dotResult2212_g83150 = dot( ViewDirection3963_g83150 , float3(0,1,0) );
				half Mask_HView2656_g83150 = dotResult2212_g83150;
				float saferPower2652_g83150 = abs( Mask_HView2656_g83150 );
				half3 Grass_Perspective2661_g83150 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g83150 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g83150*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g83150 * pow( saferPower2652_g83150 , _PerspectiveAngleValue ) );
				half Global_VertexSize174_g83150 = saturate( break322_g83217.w );
				float lerpResult346_g83150 = lerp( 1.0 , Global_VertexSize174_g83150 , _GlobalSize);
				float3 appendResult3480_g83150 = (float3(lerpResult346_g83150 , lerpResult346_g83150 , lerpResult346_g83150));
				half3 ObjectData20_g83224 = appendResult3480_g83150;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g83224 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83224 = WorldData19_g83224;
				#else
				float3 staticSwitch14_g83224 = ObjectData20_g83224;
				#endif
				half3 Vertex_Size1741_g83150 = staticSwitch14_g83224;
				float temp_output_7_0_g83225 = _SizeFadeEndValue;
				float temp_output_10_0_g83225 = ( _SizeFadeStartValue - temp_output_7_0_g83225 );
				float temp_output_7453_0_g83150 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g83150 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g83225 ) / ( temp_output_10_0_g83225 + 0.0001 ) ) );
				float3 appendResult3482_g83150 = (float3(temp_output_7453_0_g83150 , temp_output_7453_0_g83150 , temp_output_7453_0_g83150));
				half3 ObjectData20_g83223 = appendResult3482_g83150;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g83223 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83223 = WorldData19_g83223;
				#else
				float3 staticSwitch14_g83223 = ObjectData20_g83223;
				#endif
				float3 Vertex_SizeFade1740_g83150 = staticSwitch14_g83223;
				half Global_VertexOffset7549_g83150 = break322_g83217.z;
				float3 ase_objectScale = float3( length( unity_ObjectToWorld[ 0 ].xyz ), length( unity_ObjectToWorld[ 1 ].xyz ), length( unity_ObjectToWorld[ 2 ].xyz ) );
				float3 appendResult7547_g83150 = (float3(0.0 , ( ( ( ( Global_VertexOffset7549_g83150 - ( (ObjectPosition_Shifted7481_g83150).y * _ConformOffsetMode ) ) + _ConformOffsetValue ) / ase_objectScale.y ) * _GlobalConform ) , 0.0));
				half3 Vertex_Offset7544_g83150 = appendResult7547_g83150;
				float3 lerpResult16_g83226 = lerp( VertexPosition3588_g83150 , ( ( ( Vertex_Motion7493_g83150 + Grass_Perspective2661_g83150 ) * Vertex_Size1741_g83150 * Vertex_SizeFade1740_g83150 ) + Mesh_PivotsOS2291_g83150 + Vertex_Offset7544_g83150 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g83150 = lerpResult16_g83226;
				float3 Final_VertexPosition890_g83150 = ( temp_output_4912_0_g83150 + _DisableSRPBatcher );
				
				half2 Global_VertexOrientationWS7551_g83150 = temp_output_356_0_g83217;
				float2 break7779_g83150 = Global_VertexOrientationWS7551_g83150;
				float dotResult8067_g83150 = dot( Global_VertexOrientationWS7551_g83150 , Global_VertexOrientationWS7551_g83150 );
				float3 appendResult7781_g83150 = (float3(break7779_g83150.x , sqrt( ( 1.0 - saturate( dotResult8067_g83150 ) ) ) , break7779_g83150.y));
				float3 normalizeResult8063_g83150 = normalize( appendResult7781_g83150 );
				float3 worldToObjDir7782_g83150 = ASESafeNormalize( mul( unity_WorldToObject, float4( normalizeResult8063_g83150, 0 ) ).xyz );
				half Terrain_Blend_Offset8086_g83150 = _TerrainBlendOffsetValue;
				half Terrain_Mask_Vertex8085_g83150 = saturate( ( ( Global_VertexOffset7549_g83150 + ( Terrain_Blend_Offset8086_g83150 * _TerrainBlendNormalValue ) ) - (WorldPosition_Shifted7477_g83150).y ) );
				float3 lerpResult7784_g83150 = lerp( v.normal , worldToObjDir7782_g83150 , Terrain_Mask_Vertex8085_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7896_g83150 = lerpResult7784_g83150;
				#else
				float3 staticSwitch7896_g83150 = v.normal;
				#endif
				
				float4 break33_g83216 = _second_uvs_mode;
				float2 temp_output_30_0_g83216 = ( v.ase_texcoord.xy * break33_g83216.x );
				float2 appendResult21_g83205 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g83150 = appendResult21_g83205;
				float2 temp_output_29_0_g83216 = ( Mesh_DetailCoord3_g83150 * break33_g83216.y );
				float2 temp_output_31_0_g83216 = ( (WorldPosition_Shifted7477_g83150).xz * break33_g83216.z );
				half2 Second_UVs_Tilling7656_g83150 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7664_g83150 = ( 1.0 / Second_UVs_Tilling7656_g83150 );
				float2 lerpResult7660_g83150 = lerp( Second_UVs_Tilling7656_g83150 , Second_UVs_Scale7664_g83150 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7657_g83150 = (_SecondUVs).zw;
				float2 vertexToFrag11_g83215 = ( ( ( temp_output_30_0_g83216 + temp_output_29_0_g83216 + temp_output_31_0_g83216 ) * lerpResult7660_g83150 ) + Second_UVs_Offset7657_g83150 );
				o.ase_texcoord10.xy = vertexToFrag11_g83215;
				float vertexToFrag11_g83454 = saturate( ( ( Global_VertexOffset7549_g83150 + Terrain_Blend_Offset8086_g83150 ) - (WorldPosition_Shifted7477_g83150).y ) );
				o.ase_texcoord10.z = vertexToFrag11_g83454;
				o.ase_texcoord11.xyz = vertexToFrag3890_g83150;
				o.ase_texcoord12.xyz = vertexToFrag4224_g83150;
				half Global_Noise_A4860_g83150 = break638_g83195.a;
				half Tint_Highlight_Value3231_g83150 = ( Global_Noise_A4860_g83150 * Global_Wind_Power2223_g83150 * Motion_FadeOut4005_g83150 * Mesh_Height1524_g83150 );
				float vertexToFrag11_g83258 = Tint_Highlight_Value3231_g83150;
				o.ase_texcoord10.w = vertexToFrag11_g83258;
				
				o.ase_texcoord9 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g83150;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = staticSwitch7896_g83150;
				v.tangent = v.tangent;

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

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

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
					o.screenPos = ComputeScreenPos(o.pos);
				#endif
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN , bool ase_vface : SV_IsFrontFace
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				half2 Main_UVs15_g83150 = ( ( IN.ase_texcoord9.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g83150 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g83150 );
				float3 lerpResult6223_g83150 = lerp( float3( 1,1,1 ) , (tex2DNode29_g83150).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g83150 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g83150 );
				half Main_Mask57_g83150 = tex2DNode35_g83150.b;
				float clampResult17_g83236 = clamp( Main_Mask57_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83237 = _MainMaskMinValue;
				float temp_output_10_0_g83237 = ( _MainMaskMaxValue - temp_output_7_0_g83237 );
				half Main_Mask_Remap5765_g83150 = saturate( ( ( clampResult17_g83236 - temp_output_7_0_g83237 ) / ( temp_output_10_0_g83237 + 0.0001 ) ) );
				float lerpResult8007_g83150 = lerp( 1.0 , Main_Mask_Remap5765_g83150 , _MainColorMode);
				float4 lerpResult7986_g83150 = lerp( _MainColorTwo , _MainColor , lerpResult8007_g83150);
				half3 Main_Color_RGB7994_g83150 = (lerpResult7986_g83150).rgb;
				half3 Main_Albedo99_g83150 = ( lerpResult6223_g83150 * Main_Color_RGB7994_g83150 );
				float2 vertexToFrag11_g83215 = IN.ase_texcoord10.xy;
				half2 Second_UVs17_g83150 = vertexToFrag11_g83215;
				float4 tex2DNode89_g83150 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g83150 );
				float3 lerpResult6225_g83150 = lerp( float3( 1,1,1 ) , (tex2DNode89_g83150).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g83150 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g83150 );
				half Second_Mask81_g83150 = tex2DNode33_g83150.b;
				float clampResult17_g83239 = clamp( Second_Mask81_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83240 = _SecondMaskMinValue;
				float temp_output_10_0_g83240 = ( _SecondMaskMaxValue - temp_output_7_0_g83240 );
				half Second_Mask_Remap6130_g83150 = saturate( ( ( clampResult17_g83239 - temp_output_7_0_g83240 ) / ( temp_output_10_0_g83240 + 0.0001 ) ) );
				float lerpResult8008_g83150 = lerp( 1.0 , Second_Mask_Remap6130_g83150 , _SecondColorMode);
				float4 lerpResult7997_g83150 = lerp( _SecondColorTwo , _SecondColor , lerpResult8008_g83150);
				half3 Second_Color_RGB8005_g83150 = (lerpResult7997_g83150).rgb;
				half3 Second_Albedo153_g83150 = ( lerpResult6225_g83150 * Second_Color_RGB8005_g83150 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g83249 = 2.0;
				#else
				float staticSwitch1_g83249 = 4.594794;
				#endif
				float3 lerpResult4834_g83150 = lerp( ( Main_Albedo99_g83150 * Second_Albedo153_g83150 * staticSwitch1_g83249 ) , Second_Albedo153_g83150 , _DetailBlendMode);
				float lerpResult6885_g83150 = lerp( Main_Mask57_g83150 , Second_Mask81_g83150 , _DetailMaskMode);
				float clampResult17_g83255 = clamp( lerpResult6885_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83254 = _DetailMaskMinValue;
				float temp_output_10_0_g83254 = ( _DetailMaskMaxValue - temp_output_7_0_g83254 );
				half Detail_Mask_Texture6794_g83150 = saturate( ( ( clampResult17_g83255 - temp_output_7_0_g83254 ) / ( temp_output_10_0_g83254 + 0.0001 ) ) );
				half Mesh_DetailMask90_g83150 = IN.ase_color.b;
				half4 Normal_Packed45_g83235 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g83150 );
				float2 appendResult58_g83235 = (float2(( (Normal_Packed45_g83235).x * (Normal_Packed45_g83235).w ) , (Normal_Packed45_g83235).y));
				half2 Normal_Default50_g83235 = appendResult58_g83235;
				half2 Normal_ASTC41_g83235 = (Normal_Packed45_g83235).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83235 = Normal_ASTC41_g83235;
				#else
				float2 staticSwitch38_g83235 = Normal_Default50_g83235;
				#endif
				half2 Normal_NO_DTX544_g83235 = (Normal_Packed45_g83235).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83235 = Normal_NO_DTX544_g83235;
				#else
				float2 staticSwitch37_g83235 = staticSwitch38_g83235;
				#endif
				float2 temp_output_6555_0_g83150 = ( (staticSwitch37_g83235*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g83150 = (float3(temp_output_6555_0_g83150 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g83150 = appendResult7388_g83150;
				float3 worldNormal7389_g83150 = float3(dot(tanToWorld0,tanNormal7389_g83150), dot(tanToWorld1,tanNormal7389_g83150), dot(tanToWorld2,tanNormal7389_g83150));
				half3 Main_NormalWS7390_g83150 = worldNormal7389_g83150;
				float lerpResult6884_g83150 = lerp( Mesh_DetailMask90_g83150 , ((Main_NormalWS7390_g83150).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g83253 = clamp( lerpResult6884_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83252 = _DetailMeshMinValue;
				float temp_output_10_0_g83252 = ( _DetailMeshMaxValue - temp_output_7_0_g83252 );
				half Detail_Mask_Surface1540_g83150 = saturate( ( ( clampResult17_g83253 - temp_output_7_0_g83252 ) / ( temp_output_10_0_g83252 + 0.0001 ) ) );
				float clampResult17_g83256 = clamp( ( Detail_Mask_Texture6794_g83150 * Detail_Mask_Surface1540_g83150 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g83257 = _DetailBlendMinValue;
				float temp_output_10_0_g83257 = ( _DetailBlendMaxValue - temp_output_7_0_g83257 );
				half Detail_Mask147_g83150 = ( saturate( ( ( clampResult17_g83256 - temp_output_7_0_g83257 ) / ( temp_output_10_0_g83257 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g83150 = lerp( Main_Albedo99_g83150 , lerpResult4834_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g83150 = lerpResult235_g83150;
				#else
				float3 staticSwitch255_g83150 = Main_Albedo99_g83150;
				#endif
				half3 Blend_Albedo_Detail265_g83150 = staticSwitch255_g83150;
				half Mesh_Height1524_g83150 = IN.ase_color.a;
				float temp_output_7_0_g83260 = _GradientMinValue;
				float temp_output_10_0_g83260 = ( _GradientMaxValue - temp_output_7_0_g83260 );
				half Tint_Gradient_Value2784_g83150 = saturate( ( ( Mesh_Height1524_g83150 - temp_output_7_0_g83260 ) / ( temp_output_10_0_g83260 + 0.0001 ) ) );
				float3 lerpResult2779_g83150 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g83150);
				float lerpResult6617_g83150 = lerp( Main_Mask_Remap5765_g83150 , Second_Mask_Remap6130_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g83150 = lerpResult6617_g83150;
				#else
				float staticSwitch6623_g83150 = Main_Mask_Remap5765_g83150;
				#endif
				half Blend_MaskRemap_Detail6621_g83150 = staticSwitch6623_g83150;
				half Tint_Gradient_Mask6207_g83150 = Blend_MaskRemap_Detail6621_g83150;
				float3 lerpResult6208_g83150 = lerp( float3( 1,1,1 ) , lerpResult2779_g83150 , Tint_Gradient_Mask6207_g83150);
				half3 Tint_Gradient_Color5769_g83150 = lerpResult6208_g83150;
				half3 Tint_Noise_Color5770_g83150 = float3(1,1,1);
				half3 Tint_User_Color7335_g83150 = float3(1,1,1);
				float Mesh_Occlusion318_g83150 = IN.ase_color.g;
				float clampResult17_g83259 = clamp( Mesh_Occlusion318_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83261 = _VertexOcclusionMinValue;
				float temp_output_10_0_g83261 = ( _VertexOcclusionMaxValue - temp_output_7_0_g83261 );
				half Occlusion_Mask6432_g83150 = saturate( ( ( clampResult17_g83259 - temp_output_7_0_g83261 ) / ( temp_output_10_0_g83261 + 0.0001 ) ) );
				float3 lerpResult2945_g83150 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g83150);
				half3 Occlusion_Color648_g83150 = lerpResult2945_g83150;
				half3 Matcap_Color7428_g83150 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g83150 = ( ( Blend_Albedo_Detail265_g83150 * Tint_Gradient_Color5769_g83150 * Tint_Noise_Color5770_g83150 * Tint_User_Color7335_g83150 * Occlusion_Color648_g83150 ) + Matcap_Color7428_g83150 );
				float localHeightBasedBlending7362_g83651 = ( 0.0 );
				float4 appendResult9125_g83651 = (float4(_TerrainPosition.x , _TerrainPosition.z , _TerrainSize.x , _TerrainSize.z));
				float4 temp_output_35_0_g83748 = appendResult9125_g83651;
				float2 InputScale48_g83748 = (temp_output_35_0_g83748).zw;
				half2 FinalScale53_g83748 = ( 1.0 / InputScale48_g83748 );
				float2 InputPosition52_g83748 = (temp_output_35_0_g83748).xy;
				half2 FinalPosition58_g83748 = -( FinalScale53_g83748 * InputPosition52_g83748 );
				float2 Terrain_Control_UV7873_g83651 = ( ( (worldPos).xz * FinalScale53_g83748 ) + FinalPosition58_g83748 );
				half4 Terrain_Control_047365_g83651 = SAMPLE_TEXTURE2D( _ControlTex1, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_047362_g83651 = Terrain_Control_047365_g83651;
				half4 Terrain_Control_087366_g83651 = SAMPLE_TEXTURE2D( _ControlTex2, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_087362_g83651 = Terrain_Control_087366_g83651;
				half4 Terrain_Control_127712_g83651 = SAMPLE_TEXTURE2D( _ControlTex3, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_127362_g83651 = Terrain_Control_127712_g83651;
				half4 Terrain_Control_167711_g83651 = SAMPLE_TEXTURE2D( _ControlTex4, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_167362_g83651 = Terrain_Control_167711_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83704) = _MaskTex1;
				SamplerState Sampler238_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_016785_g83651 = _Coords1;
				float4 temp_output_37_0_g83704 = Input_Coords_016785_g83651;
				half4 Coords238_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition238_g83704 = worldPos;
				half4 localSamplePlanar2D238_g83704 = SamplePlanar2D( Texture238_g83704 , Sampler238_g83704 , Coords238_g83704 , WorldPosition238_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83704) = _MaskTex1;
				SamplerState Sampler246_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition246_g83704 = worldPos;
				half3 WorldNormal246_g83704 = WorldNormal;
				half4 localSamplePlanar3D246_g83704 = SamplePlanar3D( Texture246_g83704 , Sampler246_g83704 , Coords246_g83704 , WorldPosition246_g83704 , WorldNormal246_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83704) = _MaskTex1;
				SamplerState Sampler234_g83704 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83704 = temp_output_37_0_g83704;
				float3 WorldPosition234_g83704 = worldPos;
				float4 localSampleStochastic2D234_g83704 = SampleStochastic2D( Texture234_g83704 , Sampler234_g83704 , Coords234_g83704 , WorldPosition234_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83704) = _MaskTex1;
				SamplerState Sampler263_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition263_g83704 = worldPos;
				half3 WorldNormal263_g83704 = WorldNormal;
				half4 localSampleStochastic3D263_g83704 = SampleStochastic3D( Texture263_g83704 , Sampler263_g83704 , Coords263_g83704 , WorldPosition263_g83704 , WorldNormal263_g83704 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8639_g83651 = localSamplePlanar2D238_g83704;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8639_g83651 = localSamplePlanar3D246_g83704;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8639_g83651 = localSampleStochastic2D234_g83704;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8639_g83651 = localSampleStochastic3D263_g83704;
				#else
				float4 staticSwitch8639_g83651 = localSamplePlanar2D238_g83704;
				#endif
				float4 temp_output_7_0_g83653 = _MaskMin1;
				float4 temp_output_10_0_g83653 = ( _MaskMax1 - temp_output_7_0_g83653 );
				float4 temp_output_6970_0_g83651 = saturate( ( ( staticSwitch8639_g83651 - temp_output_7_0_g83653 ) / ( temp_output_10_0_g83653 + 0.0001 ) ) );
				half4 Masks_015_g83661 = temp_output_6970_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83705) = _MaskTex2;
				SamplerState Sampler238_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_026787_g83651 = _Coords2;
				float4 temp_output_37_0_g83705 = Input_Coords_026787_g83651;
				half4 Coords238_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition238_g83705 = worldPos;
				half4 localSamplePlanar2D238_g83705 = SamplePlanar2D( Texture238_g83705 , Sampler238_g83705 , Coords238_g83705 , WorldPosition238_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83705) = _MaskTex2;
				SamplerState Sampler246_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition246_g83705 = worldPos;
				half3 WorldNormal246_g83705 = WorldNormal;
				half4 localSamplePlanar3D246_g83705 = SamplePlanar3D( Texture246_g83705 , Sampler246_g83705 , Coords246_g83705 , WorldPosition246_g83705 , WorldNormal246_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83705) = _MaskTex2;
				SamplerState Sampler234_g83705 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83705 = temp_output_37_0_g83705;
				float3 WorldPosition234_g83705 = worldPos;
				float4 localSampleStochastic2D234_g83705 = SampleStochastic2D( Texture234_g83705 , Sampler234_g83705 , Coords234_g83705 , WorldPosition234_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83705) = _MaskTex2;
				SamplerState Sampler263_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition263_g83705 = worldPos;
				half3 WorldNormal263_g83705 = WorldNormal;
				half4 localSampleStochastic3D263_g83705 = SampleStochastic3D( Texture263_g83705 , Sampler263_g83705 , Coords263_g83705 , WorldPosition263_g83705 , WorldNormal263_g83705 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8640_g83651 = localSamplePlanar2D238_g83705;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8640_g83651 = localSamplePlanar3D246_g83705;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8640_g83651 = localSampleStochastic2D234_g83705;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8640_g83651 = localSampleStochastic3D263_g83705;
				#else
				float4 staticSwitch8640_g83651 = localSamplePlanar2D238_g83705;
				#endif
				float4 temp_output_7_0_g83655 = _MaskMin2;
				float4 temp_output_10_0_g83655 = ( _MaskMax2 - temp_output_7_0_g83655 );
				float4 temp_output_6977_0_g83651 = saturate( ( ( staticSwitch8640_g83651 - temp_output_7_0_g83655 ) / ( temp_output_10_0_g83655 + 0.0001 ) ) );
				half4 Masks_0210_g83661 = temp_output_6977_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83706) = _MaskTex3;
				SamplerState Sampler238_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_036789_g83651 = _Coords3;
				float4 temp_output_37_0_g83706 = Input_Coords_036789_g83651;
				half4 Coords238_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition238_g83706 = worldPos;
				half4 localSamplePlanar2D238_g83706 = SamplePlanar2D( Texture238_g83706 , Sampler238_g83706 , Coords238_g83706 , WorldPosition238_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83706) = _MaskTex3;
				SamplerState Sampler246_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition246_g83706 = worldPos;
				half3 WorldNormal246_g83706 = WorldNormal;
				half4 localSamplePlanar3D246_g83706 = SamplePlanar3D( Texture246_g83706 , Sampler246_g83706 , Coords246_g83706 , WorldPosition246_g83706 , WorldNormal246_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83706) = _MaskTex3;
				SamplerState Sampler234_g83706 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83706 = temp_output_37_0_g83706;
				float3 WorldPosition234_g83706 = worldPos;
				float4 localSampleStochastic2D234_g83706 = SampleStochastic2D( Texture234_g83706 , Sampler234_g83706 , Coords234_g83706 , WorldPosition234_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83706) = _MaskTex3;
				SamplerState Sampler263_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition263_g83706 = worldPos;
				half3 WorldNormal263_g83706 = WorldNormal;
				half4 localSampleStochastic3D263_g83706 = SampleStochastic3D( Texture263_g83706 , Sampler263_g83706 , Coords263_g83706 , WorldPosition263_g83706 , WorldNormal263_g83706 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8641_g83651 = localSamplePlanar2D238_g83706;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8641_g83651 = localSamplePlanar3D246_g83706;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8641_g83651 = localSampleStochastic2D234_g83706;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8641_g83651 = localSampleStochastic3D263_g83706;
				#else
				float4 staticSwitch8641_g83651 = localSamplePlanar2D238_g83706;
				#endif
				float4 temp_output_7_0_g83656 = _MaskMin3;
				float4 temp_output_10_0_g83656 = ( _MaskMax3 - temp_output_7_0_g83656 );
				float4 temp_output_6978_0_g83651 = saturate( ( ( staticSwitch8641_g83651 - temp_output_7_0_g83656 ) / ( temp_output_10_0_g83656 + 0.0001 ) ) );
				half4 Masks_0312_g83661 = temp_output_6978_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83707) = _MaskTex4;
				SamplerState Sampler238_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_046791_g83651 = _Coords4;
				float4 temp_output_37_0_g83707 = Input_Coords_046791_g83651;
				half4 Coords238_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition238_g83707 = worldPos;
				half4 localSamplePlanar2D238_g83707 = SamplePlanar2D( Texture238_g83707 , Sampler238_g83707 , Coords238_g83707 , WorldPosition238_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83707) = _MaskTex4;
				SamplerState Sampler246_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition246_g83707 = worldPos;
				half3 WorldNormal246_g83707 = WorldNormal;
				half4 localSamplePlanar3D246_g83707 = SamplePlanar3D( Texture246_g83707 , Sampler246_g83707 , Coords246_g83707 , WorldPosition246_g83707 , WorldNormal246_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83707) = _MaskTex4;
				SamplerState Sampler234_g83707 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83707 = temp_output_37_0_g83707;
				float3 WorldPosition234_g83707 = worldPos;
				float4 localSampleStochastic2D234_g83707 = SampleStochastic2D( Texture234_g83707 , Sampler234_g83707 , Coords234_g83707 , WorldPosition234_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83707) = _MaskTex4;
				SamplerState Sampler263_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition263_g83707 = worldPos;
				half3 WorldNormal263_g83707 = WorldNormal;
				half4 localSampleStochastic3D263_g83707 = SampleStochastic3D( Texture263_g83707 , Sampler263_g83707 , Coords263_g83707 , WorldPosition263_g83707 , WorldNormal263_g83707 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8642_g83651 = localSamplePlanar2D238_g83707;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8642_g83651 = localSamplePlanar3D246_g83707;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8642_g83651 = localSampleStochastic2D234_g83707;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8642_g83651 = localSampleStochastic3D263_g83707;
				#else
				float4 staticSwitch8642_g83651 = localSamplePlanar2D238_g83707;
				#endif
				float4 temp_output_7_0_g83657 = _MaskMin4;
				float4 temp_output_10_0_g83657 = ( _MaskMax4 - temp_output_7_0_g83657 );
				float4 temp_output_6983_0_g83651 = saturate( ( ( staticSwitch8642_g83651 - temp_output_7_0_g83657 ) / ( temp_output_10_0_g83657 + 0.0001 ) ) );
				half4 Masks_0414_g83661 = temp_output_6983_0_g83651;
				float4 appendResult29_g83661 = (float4((Masks_015_g83661).z , (Masks_0210_g83661).z , (Masks_0312_g83661).z , (Masks_0414_g83661).z));
				half4 Control31_g83661 = Terrain_Control_047365_g83651;
				half4 Terrain_Height_047210_g83651 = ( appendResult29_g83661 * Control31_g83661 );
				float4 heights_047362_g83651 = Terrain_Height_047210_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83716) = _MaskTex5;
				SamplerState Sampler238_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_058750_g83651 = _Coords5;
				float4 temp_output_37_0_g83716 = Input_Coords_058750_g83651;
				half4 Coords238_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition238_g83716 = worldPos;
				half4 localSamplePlanar2D238_g83716 = SamplePlanar2D( Texture238_g83716 , Sampler238_g83716 , Coords238_g83716 , WorldPosition238_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83716) = _MaskTex5;
				SamplerState Sampler246_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition246_g83716 = worldPos;
				half3 WorldNormal246_g83716 = WorldNormal;
				half4 localSamplePlanar3D246_g83716 = SamplePlanar3D( Texture246_g83716 , Sampler246_g83716 , Coords246_g83716 , WorldPosition246_g83716 , WorldNormal246_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83716) = _MaskTex5;
				SamplerState Sampler234_g83716 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83716 = temp_output_37_0_g83716;
				float3 WorldPosition234_g83716 = worldPos;
				float4 localSampleStochastic2D234_g83716 = SampleStochastic2D( Texture234_g83716 , Sampler234_g83716 , Coords234_g83716 , WorldPosition234_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83716) = _MaskTex5;
				SamplerState Sampler263_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition263_g83716 = worldPos;
				half3 WorldNormal263_g83716 = WorldNormal;
				half4 localSampleStochastic3D263_g83716 = SampleStochastic3D( Texture263_g83716 , Sampler263_g83716 , Coords263_g83716 , WorldPosition263_g83716 , WorldNormal263_g83716 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8710_g83651 = localSamplePlanar2D238_g83716;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8710_g83651 = localSamplePlanar3D246_g83716;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8710_g83651 = localSampleStochastic2D234_g83716;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8710_g83651 = localSampleStochastic3D263_g83716;
				#else
				float4 staticSwitch8710_g83651 = localSamplePlanar2D238_g83716;
				#endif
				float4 temp_output_7_0_g83669 = _MaskMin5;
				float4 temp_output_10_0_g83669 = ( _MaskMax5 - temp_output_7_0_g83669 );
				float4 temp_output_8714_0_g83651 = saturate( ( ( staticSwitch8710_g83651 - temp_output_7_0_g83669 ) / ( temp_output_10_0_g83669 + 0.0001 ) ) );
				half4 Masks_015_g83670 = temp_output_8714_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83717) = _MaskTex6;
				SamplerState Sampler238_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_068751_g83651 = _Coords6;
				float4 temp_output_37_0_g83717 = Input_Coords_068751_g83651;
				half4 Coords238_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition238_g83717 = worldPos;
				half4 localSamplePlanar2D238_g83717 = SamplePlanar2D( Texture238_g83717 , Sampler238_g83717 , Coords238_g83717 , WorldPosition238_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83717) = _MaskTex6;
				SamplerState Sampler246_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition246_g83717 = worldPos;
				half3 WorldNormal246_g83717 = WorldNormal;
				half4 localSamplePlanar3D246_g83717 = SamplePlanar3D( Texture246_g83717 , Sampler246_g83717 , Coords246_g83717 , WorldPosition246_g83717 , WorldNormal246_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83717) = _MaskTex6;
				SamplerState Sampler234_g83717 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83717 = temp_output_37_0_g83717;
				float3 WorldPosition234_g83717 = worldPos;
				float4 localSampleStochastic2D234_g83717 = SampleStochastic2D( Texture234_g83717 , Sampler234_g83717 , Coords234_g83717 , WorldPosition234_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83717) = _MaskTex6;
				SamplerState Sampler263_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition263_g83717 = worldPos;
				half3 WorldNormal263_g83717 = WorldNormal;
				half4 localSampleStochastic3D263_g83717 = SampleStochastic3D( Texture263_g83717 , Sampler263_g83717 , Coords263_g83717 , WorldPosition263_g83717 , WorldNormal263_g83717 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8711_g83651 = localSamplePlanar2D238_g83717;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8711_g83651 = localSamplePlanar3D246_g83717;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8711_g83651 = localSampleStochastic2D234_g83717;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8711_g83651 = localSampleStochastic3D263_g83717;
				#else
				float4 staticSwitch8711_g83651 = localSamplePlanar2D238_g83717;
				#endif
				float4 temp_output_7_0_g83672 = _MaskMin6;
				float4 temp_output_10_0_g83672 = ( _MaskMax6 - temp_output_7_0_g83672 );
				float4 temp_output_8721_0_g83651 = saturate( ( ( staticSwitch8711_g83651 - temp_output_7_0_g83672 ) / ( temp_output_10_0_g83672 + 0.0001 ) ) );
				half4 Masks_0210_g83670 = temp_output_8721_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83718) = _MaskTex7;
				SamplerState Sampler238_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_078752_g83651 = _Coords7;
				float4 temp_output_37_0_g83718 = Input_Coords_078752_g83651;
				half4 Coords238_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition238_g83718 = worldPos;
				half4 localSamplePlanar2D238_g83718 = SamplePlanar2D( Texture238_g83718 , Sampler238_g83718 , Coords238_g83718 , WorldPosition238_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83718) = _MaskTex7;
				SamplerState Sampler246_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition246_g83718 = worldPos;
				half3 WorldNormal246_g83718 = WorldNormal;
				half4 localSamplePlanar3D246_g83718 = SamplePlanar3D( Texture246_g83718 , Sampler246_g83718 , Coords246_g83718 , WorldPosition246_g83718 , WorldNormal246_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83718) = _MaskTex7;
				SamplerState Sampler234_g83718 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83718 = temp_output_37_0_g83718;
				float3 WorldPosition234_g83718 = worldPos;
				float4 localSampleStochastic2D234_g83718 = SampleStochastic2D( Texture234_g83718 , Sampler234_g83718 , Coords234_g83718 , WorldPosition234_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83718) = _MaskTex7;
				SamplerState Sampler263_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition263_g83718 = worldPos;
				half3 WorldNormal263_g83718 = WorldNormal;
				half4 localSampleStochastic3D263_g83718 = SampleStochastic3D( Texture263_g83718 , Sampler263_g83718 , Coords263_g83718 , WorldPosition263_g83718 , WorldNormal263_g83718 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8712_g83651 = localSamplePlanar2D238_g83718;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8712_g83651 = localSamplePlanar3D246_g83718;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8712_g83651 = localSampleStochastic2D234_g83718;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8712_g83651 = localSampleStochastic3D263_g83718;
				#else
				float4 staticSwitch8712_g83651 = localSamplePlanar2D238_g83718;
				#endif
				float4 temp_output_7_0_g83673 = _MaskMin7;
				float4 temp_output_10_0_g83673 = ( _MaskMax7 - temp_output_7_0_g83673 );
				float4 temp_output_8724_0_g83651 = saturate( ( ( staticSwitch8712_g83651 - temp_output_7_0_g83673 ) / ( temp_output_10_0_g83673 + 0.0001 ) ) );
				half4 Masks_0312_g83670 = temp_output_8724_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83719) = _MaskTex8;
				SamplerState Sampler238_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_088749_g83651 = _Coords8;
				float4 temp_output_37_0_g83719 = Input_Coords_088749_g83651;
				half4 Coords238_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition238_g83719 = worldPos;
				half4 localSamplePlanar2D238_g83719 = SamplePlanar2D( Texture238_g83719 , Sampler238_g83719 , Coords238_g83719 , WorldPosition238_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83719) = _MaskTex8;
				SamplerState Sampler246_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition246_g83719 = worldPos;
				half3 WorldNormal246_g83719 = WorldNormal;
				half4 localSamplePlanar3D246_g83719 = SamplePlanar3D( Texture246_g83719 , Sampler246_g83719 , Coords246_g83719 , WorldPosition246_g83719 , WorldNormal246_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83719) = _MaskTex8;
				SamplerState Sampler234_g83719 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83719 = temp_output_37_0_g83719;
				float3 WorldPosition234_g83719 = worldPos;
				float4 localSampleStochastic2D234_g83719 = SampleStochastic2D( Texture234_g83719 , Sampler234_g83719 , Coords234_g83719 , WorldPosition234_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83719) = _MaskTex8;
				SamplerState Sampler263_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition263_g83719 = worldPos;
				half3 WorldNormal263_g83719 = WorldNormal;
				half4 localSampleStochastic3D263_g83719 = SampleStochastic3D( Texture263_g83719 , Sampler263_g83719 , Coords263_g83719 , WorldPosition263_g83719 , WorldNormal263_g83719 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8713_g83651 = localSamplePlanar2D238_g83719;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8713_g83651 = localSamplePlanar3D246_g83719;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8713_g83651 = localSampleStochastic2D234_g83719;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8713_g83651 = localSampleStochastic3D263_g83719;
				#else
				float4 staticSwitch8713_g83651 = localSamplePlanar2D238_g83719;
				#endif
				float4 temp_output_7_0_g83674 = _MaskMin8;
				float4 temp_output_10_0_g83674 = ( _MaskMax8 - temp_output_7_0_g83674 );
				float4 temp_output_8727_0_g83651 = saturate( ( ( staticSwitch8713_g83651 - temp_output_7_0_g83674 ) / ( temp_output_10_0_g83674 + 0.0001 ) ) );
				half4 Masks_0414_g83670 = temp_output_8727_0_g83651;
				float4 appendResult29_g83670 = (float4((Masks_015_g83670).z , (Masks_0210_g83670).z , (Masks_0312_g83670).z , (Masks_0414_g83670).z));
				half4 Control31_g83670 = Terrain_Control_087366_g83651;
				half4 Terrain_Height_088731_g83651 = ( appendResult29_g83670 * Control31_g83670 );
				float4 heights_087362_g83651 = Terrain_Height_088731_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83728) = _MaskTex9;
				SamplerState Sampler238_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_098833_g83651 = _Coords9;
				float4 temp_output_37_0_g83728 = Input_Coords_098833_g83651;
				half4 Coords238_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition238_g83728 = worldPos;
				half4 localSamplePlanar2D238_g83728 = SamplePlanar2D( Texture238_g83728 , Sampler238_g83728 , Coords238_g83728 , WorldPosition238_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83728) = _MaskTex9;
				SamplerState Sampler246_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition246_g83728 = worldPos;
				half3 WorldNormal246_g83728 = WorldNormal;
				half4 localSamplePlanar3D246_g83728 = SamplePlanar3D( Texture246_g83728 , Sampler246_g83728 , Coords246_g83728 , WorldPosition246_g83728 , WorldNormal246_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83728) = _MaskTex9;
				SamplerState Sampler234_g83728 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83728 = temp_output_37_0_g83728;
				float3 WorldPosition234_g83728 = worldPos;
				float4 localSampleStochastic2D234_g83728 = SampleStochastic2D( Texture234_g83728 , Sampler234_g83728 , Coords234_g83728 , WorldPosition234_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83728) = _MaskTex9;
				SamplerState Sampler263_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition263_g83728 = worldPos;
				half3 WorldNormal263_g83728 = WorldNormal;
				half4 localSampleStochastic3D263_g83728 = SampleStochastic3D( Texture263_g83728 , Sampler263_g83728 , Coords263_g83728 , WorldPosition263_g83728 , WorldNormal263_g83728 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8878_g83651 = localSamplePlanar2D238_g83728;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8878_g83651 = localSamplePlanar3D246_g83728;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8878_g83651 = localSampleStochastic2D234_g83728;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8878_g83651 = localSampleStochastic3D263_g83728;
				#else
				float4 staticSwitch8878_g83651 = localSamplePlanar2D238_g83728;
				#endif
				float4 temp_output_7_0_g83679 = _MaskMin9;
				float4 temp_output_10_0_g83679 = ( _MaskMax9 - temp_output_7_0_g83679 );
				float4 temp_output_8815_0_g83651 = saturate( ( ( staticSwitch8878_g83651 - temp_output_7_0_g83679 ) / ( temp_output_10_0_g83679 + 0.0001 ) ) );
				half4 Masks_015_g83680 = temp_output_8815_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83729) = _MaskTex10;
				SamplerState Sampler238_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_108834_g83651 = _Coords10;
				float4 temp_output_37_0_g83729 = Input_Coords_108834_g83651;
				half4 Coords238_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition238_g83729 = worldPos;
				half4 localSamplePlanar2D238_g83729 = SamplePlanar2D( Texture238_g83729 , Sampler238_g83729 , Coords238_g83729 , WorldPosition238_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83729) = _MaskTex10;
				SamplerState Sampler246_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition246_g83729 = worldPos;
				half3 WorldNormal246_g83729 = WorldNormal;
				half4 localSamplePlanar3D246_g83729 = SamplePlanar3D( Texture246_g83729 , Sampler246_g83729 , Coords246_g83729 , WorldPosition246_g83729 , WorldNormal246_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83729) = _MaskTex10;
				SamplerState Sampler234_g83729 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83729 = temp_output_37_0_g83729;
				float3 WorldPosition234_g83729 = worldPos;
				float4 localSampleStochastic2D234_g83729 = SampleStochastic2D( Texture234_g83729 , Sampler234_g83729 , Coords234_g83729 , WorldPosition234_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83729) = _MaskTex10;
				SamplerState Sampler263_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition263_g83729 = worldPos;
				half3 WorldNormal263_g83729 = WorldNormal;
				half4 localSampleStochastic3D263_g83729 = SampleStochastic3D( Texture263_g83729 , Sampler263_g83729 , Coords263_g83729 , WorldPosition263_g83729 , WorldNormal263_g83729 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8860_g83651 = localSamplePlanar2D238_g83729;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8860_g83651 = localSamplePlanar3D246_g83729;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8860_g83651 = localSampleStochastic2D234_g83729;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8860_g83651 = localSampleStochastic3D263_g83729;
				#else
				float4 staticSwitch8860_g83651 = localSamplePlanar2D238_g83729;
				#endif
				float4 temp_output_7_0_g83682 = _MaskMin10;
				float4 temp_output_10_0_g83682 = ( _MaskMax10 - temp_output_7_0_g83682 );
				float4 temp_output_8818_0_g83651 = saturate( ( ( staticSwitch8860_g83651 - temp_output_7_0_g83682 ) / ( temp_output_10_0_g83682 + 0.0001 ) ) );
				half4 Masks_0210_g83680 = temp_output_8818_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83730) = _MaskTex11;
				SamplerState Sampler238_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_118835_g83651 = _Coords11;
				float4 temp_output_37_0_g83730 = Input_Coords_118835_g83651;
				half4 Coords238_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition238_g83730 = worldPos;
				half4 localSamplePlanar2D238_g83730 = SamplePlanar2D( Texture238_g83730 , Sampler238_g83730 , Coords238_g83730 , WorldPosition238_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83730) = _MaskTex11;
				SamplerState Sampler246_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition246_g83730 = worldPos;
				half3 WorldNormal246_g83730 = WorldNormal;
				half4 localSamplePlanar3D246_g83730 = SamplePlanar3D( Texture246_g83730 , Sampler246_g83730 , Coords246_g83730 , WorldPosition246_g83730 , WorldNormal246_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83730) = _MaskTex11;
				SamplerState Sampler234_g83730 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83730 = temp_output_37_0_g83730;
				float3 WorldPosition234_g83730 = worldPos;
				float4 localSampleStochastic2D234_g83730 = SampleStochastic2D( Texture234_g83730 , Sampler234_g83730 , Coords234_g83730 , WorldPosition234_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83730) = _MaskTex11;
				SamplerState Sampler263_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition263_g83730 = worldPos;
				half3 WorldNormal263_g83730 = WorldNormal;
				half4 localSampleStochastic3D263_g83730 = SampleStochastic3D( Texture263_g83730 , Sampler263_g83730 , Coords263_g83730 , WorldPosition263_g83730 , WorldNormal263_g83730 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8861_g83651 = localSamplePlanar2D238_g83730;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8861_g83651 = localSamplePlanar3D246_g83730;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8861_g83651 = localSampleStochastic2D234_g83730;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8861_g83651 = localSampleStochastic3D263_g83730;
				#else
				float4 staticSwitch8861_g83651 = localSamplePlanar2D238_g83730;
				#endif
				float4 temp_output_7_0_g83683 = _MaskMin11;
				float4 temp_output_10_0_g83683 = ( _MaskMax11 - temp_output_7_0_g83683 );
				float4 temp_output_8819_0_g83651 = saturate( ( ( staticSwitch8861_g83651 - temp_output_7_0_g83683 ) / ( temp_output_10_0_g83683 + 0.0001 ) ) );
				half4 Masks_0312_g83680 = temp_output_8819_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83731) = _MaskTex12;
				SamplerState Sampler238_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_128836_g83651 = _Coords12;
				float4 temp_output_37_0_g83731 = Input_Coords_128836_g83651;
				half4 Coords238_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition238_g83731 = worldPos;
				half4 localSamplePlanar2D238_g83731 = SamplePlanar2D( Texture238_g83731 , Sampler238_g83731 , Coords238_g83731 , WorldPosition238_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83731) = _MaskTex12;
				SamplerState Sampler246_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition246_g83731 = worldPos;
				half3 WorldNormal246_g83731 = WorldNormal;
				half4 localSamplePlanar3D246_g83731 = SamplePlanar3D( Texture246_g83731 , Sampler246_g83731 , Coords246_g83731 , WorldPosition246_g83731 , WorldNormal246_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83731) = _MaskTex12;
				SamplerState Sampler234_g83731 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83731 = temp_output_37_0_g83731;
				float3 WorldPosition234_g83731 = worldPos;
				float4 localSampleStochastic2D234_g83731 = SampleStochastic2D( Texture234_g83731 , Sampler234_g83731 , Coords234_g83731 , WorldPosition234_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83731) = _MaskTex12;
				SamplerState Sampler263_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition263_g83731 = worldPos;
				half3 WorldNormal263_g83731 = WorldNormal;
				half4 localSampleStochastic3D263_g83731 = SampleStochastic3D( Texture263_g83731 , Sampler263_g83731 , Coords263_g83731 , WorldPosition263_g83731 , WorldNormal263_g83731 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8879_g83651 = localSamplePlanar2D238_g83731;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8879_g83651 = localSamplePlanar3D246_g83731;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8879_g83651 = localSampleStochastic2D234_g83731;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8879_g83651 = localSampleStochastic3D263_g83731;
				#else
				float4 staticSwitch8879_g83651 = localSamplePlanar2D238_g83731;
				#endif
				float4 temp_output_7_0_g83684 = _MaskMin12;
				float4 temp_output_10_0_g83684 = ( _MaskMax12 - temp_output_7_0_g83684 );
				float4 temp_output_8820_0_g83651 = saturate( ( ( staticSwitch8879_g83651 - temp_output_7_0_g83684 ) / ( temp_output_10_0_g83684 + 0.0001 ) ) );
				half4 Masks_0414_g83680 = temp_output_8820_0_g83651;
				float4 appendResult29_g83680 = (float4((Masks_015_g83680).z , (Masks_0210_g83680).z , (Masks_0312_g83680).z , (Masks_0414_g83680).z));
				half4 Control31_g83680 = Terrain_Control_127712_g83651;
				half4 Terrain_Height_128870_g83651 = ( appendResult29_g83680 * Control31_g83680 );
				float4 heights_127362_g83651 = Terrain_Height_128870_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83739) = _MaskTex13;
				SamplerState Sampler238_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_138960_g83651 = _Coords13;
				float4 temp_output_37_0_g83739 = Input_Coords_138960_g83651;
				half4 Coords238_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition238_g83739 = worldPos;
				half4 localSamplePlanar2D238_g83739 = SamplePlanar2D( Texture238_g83739 , Sampler238_g83739 , Coords238_g83739 , WorldPosition238_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83739) = _MaskTex13;
				SamplerState Sampler246_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition246_g83739 = worldPos;
				half3 WorldNormal246_g83739 = WorldNormal;
				half4 localSamplePlanar3D246_g83739 = SamplePlanar3D( Texture246_g83739 , Sampler246_g83739 , Coords246_g83739 , WorldPosition246_g83739 , WorldNormal246_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83739) = _MaskTex13;
				SamplerState Sampler234_g83739 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83739 = temp_output_37_0_g83739;
				float3 WorldPosition234_g83739 = worldPos;
				float4 localSampleStochastic2D234_g83739 = SampleStochastic2D( Texture234_g83739 , Sampler234_g83739 , Coords234_g83739 , WorldPosition234_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83739) = _MaskTex13;
				SamplerState Sampler263_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition263_g83739 = worldPos;
				half3 WorldNormal263_g83739 = WorldNormal;
				half4 localSampleStochastic3D263_g83739 = SampleStochastic3D( Texture263_g83739 , Sampler263_g83739 , Coords263_g83739 , WorldPosition263_g83739 , WorldNormal263_g83739 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch9000_g83651 = localSamplePlanar2D238_g83739;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch9000_g83651 = localSamplePlanar3D246_g83739;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch9000_g83651 = localSampleStochastic2D234_g83739;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch9000_g83651 = localSampleStochastic3D263_g83739;
				#else
				float4 staticSwitch9000_g83651 = localSamplePlanar2D238_g83739;
				#endif
				float4 temp_output_7_0_g83689 = _MaskMin13;
				float4 temp_output_10_0_g83689 = ( _MaskMax13 - temp_output_7_0_g83689 );
				float4 temp_output_8931_0_g83651 = saturate( ( ( staticSwitch9000_g83651 - temp_output_7_0_g83689 ) / ( temp_output_10_0_g83689 + 0.0001 ) ) );
				half4 Masks_015_g83690 = temp_output_8931_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83740) = _MaskTex14;
				SamplerState Sampler238_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_148961_g83651 = _Coords14;
				float4 temp_output_37_0_g83740 = Input_Coords_148961_g83651;
				half4 Coords238_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition238_g83740 = worldPos;
				half4 localSamplePlanar2D238_g83740 = SamplePlanar2D( Texture238_g83740 , Sampler238_g83740 , Coords238_g83740 , WorldPosition238_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83740) = _MaskTex14;
				SamplerState Sampler246_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition246_g83740 = worldPos;
				half3 WorldNormal246_g83740 = WorldNormal;
				half4 localSamplePlanar3D246_g83740 = SamplePlanar3D( Texture246_g83740 , Sampler246_g83740 , Coords246_g83740 , WorldPosition246_g83740 , WorldNormal246_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83740) = _MaskTex14;
				SamplerState Sampler234_g83740 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83740 = temp_output_37_0_g83740;
				float3 WorldPosition234_g83740 = worldPos;
				float4 localSampleStochastic2D234_g83740 = SampleStochastic2D( Texture234_g83740 , Sampler234_g83740 , Coords234_g83740 , WorldPosition234_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83740) = _MaskTex14;
				SamplerState Sampler263_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition263_g83740 = worldPos;
				half3 WorldNormal263_g83740 = WorldNormal;
				half4 localSampleStochastic3D263_g83740 = SampleStochastic3D( Texture263_g83740 , Sampler263_g83740 , Coords263_g83740 , WorldPosition263_g83740 , WorldNormal263_g83740 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch9001_g83651 = localSamplePlanar2D238_g83740;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch9001_g83651 = localSamplePlanar3D246_g83740;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch9001_g83651 = localSampleStochastic2D234_g83740;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch9001_g83651 = localSampleStochastic3D263_g83740;
				#else
				float4 staticSwitch9001_g83651 = localSamplePlanar2D238_g83740;
				#endif
				float4 temp_output_7_0_g83692 = _MaskMin14;
				float4 temp_output_10_0_g83692 = ( _MaskMax14 - temp_output_7_0_g83692 );
				float4 temp_output_8934_0_g83651 = saturate( ( ( staticSwitch9001_g83651 - temp_output_7_0_g83692 ) / ( temp_output_10_0_g83692 + 0.0001 ) ) );
				half4 Masks_0210_g83690 = temp_output_8934_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83741) = _MaskTex15;
				SamplerState Sampler238_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_158962_g83651 = _Coords15;
				float4 temp_output_37_0_g83741 = Input_Coords_158962_g83651;
				half4 Coords238_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition238_g83741 = worldPos;
				half4 localSamplePlanar2D238_g83741 = SamplePlanar2D( Texture238_g83741 , Sampler238_g83741 , Coords238_g83741 , WorldPosition238_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83741) = _MaskTex15;
				SamplerState Sampler246_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition246_g83741 = worldPos;
				half3 WorldNormal246_g83741 = WorldNormal;
				half4 localSamplePlanar3D246_g83741 = SamplePlanar3D( Texture246_g83741 , Sampler246_g83741 , Coords246_g83741 , WorldPosition246_g83741 , WorldNormal246_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83741) = _MaskTex15;
				SamplerState Sampler234_g83741 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83741 = temp_output_37_0_g83741;
				float3 WorldPosition234_g83741 = worldPos;
				float4 localSampleStochastic2D234_g83741 = SampleStochastic2D( Texture234_g83741 , Sampler234_g83741 , Coords234_g83741 , WorldPosition234_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83741) = _MaskTex15;
				SamplerState Sampler263_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition263_g83741 = worldPos;
				half3 WorldNormal263_g83741 = WorldNormal;
				half4 localSampleStochastic3D263_g83741 = SampleStochastic3D( Texture263_g83741 , Sampler263_g83741 , Coords263_g83741 , WorldPosition263_g83741 , WorldNormal263_g83741 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch9002_g83651 = localSamplePlanar2D238_g83741;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch9002_g83651 = localSamplePlanar3D246_g83741;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch9002_g83651 = localSampleStochastic2D234_g83741;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch9002_g83651 = localSampleStochastic3D263_g83741;
				#else
				float4 staticSwitch9002_g83651 = localSamplePlanar2D238_g83741;
				#endif
				float4 temp_output_7_0_g83693 = _MaskMin15;
				float4 temp_output_10_0_g83693 = ( _MaskMax15 - temp_output_7_0_g83693 );
				float4 temp_output_8935_0_g83651 = saturate( ( ( staticSwitch9002_g83651 - temp_output_7_0_g83693 ) / ( temp_output_10_0_g83693 + 0.0001 ) ) );
				half4 Masks_0312_g83690 = temp_output_8935_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83742) = _MaskTex16;
				SamplerState Sampler238_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_168959_g83651 = _Coords16;
				float4 temp_output_37_0_g83742 = Input_Coords_168959_g83651;
				half4 Coords238_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition238_g83742 = worldPos;
				half4 localSamplePlanar2D238_g83742 = SamplePlanar2D( Texture238_g83742 , Sampler238_g83742 , Coords238_g83742 , WorldPosition238_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83742) = _MaskTex16;
				SamplerState Sampler246_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition246_g83742 = worldPos;
				half3 WorldNormal246_g83742 = WorldNormal;
				half4 localSamplePlanar3D246_g83742 = SamplePlanar3D( Texture246_g83742 , Sampler246_g83742 , Coords246_g83742 , WorldPosition246_g83742 , WorldNormal246_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83742) = _MaskTex16;
				SamplerState Sampler234_g83742 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83742 = temp_output_37_0_g83742;
				float3 WorldPosition234_g83742 = worldPos;
				float4 localSampleStochastic2D234_g83742 = SampleStochastic2D( Texture234_g83742 , Sampler234_g83742 , Coords234_g83742 , WorldPosition234_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83742) = _MaskTex16;
				SamplerState Sampler263_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition263_g83742 = worldPos;
				half3 WorldNormal263_g83742 = WorldNormal;
				half4 localSampleStochastic3D263_g83742 = SampleStochastic3D( Texture263_g83742 , Sampler263_g83742 , Coords263_g83742 , WorldPosition263_g83742 , WorldNormal263_g83742 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch9003_g83651 = localSamplePlanar2D238_g83742;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch9003_g83651 = localSamplePlanar3D246_g83742;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch9003_g83651 = localSampleStochastic2D234_g83742;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch9003_g83651 = localSampleStochastic3D263_g83742;
				#else
				float4 staticSwitch9003_g83651 = localSamplePlanar2D238_g83742;
				#endif
				float4 temp_output_7_0_g83694 = _MaskMin16;
				float4 temp_output_10_0_g83694 = ( _MaskMax16 - temp_output_7_0_g83694 );
				float4 temp_output_8936_0_g83651 = saturate( ( ( staticSwitch9003_g83651 - temp_output_7_0_g83694 ) / ( temp_output_10_0_g83694 + 0.0001 ) ) );
				half4 Masks_0414_g83690 = temp_output_8936_0_g83651;
				float4 appendResult29_g83690 = (float4((Masks_015_g83690).z , (Masks_0210_g83690).z , (Masks_0312_g83690).z , (Masks_0414_g83690).z));
				half4 Control31_g83690 = Terrain_Control_167711_g83651;
				half4 Terrain_Height_169015_g83651 = ( appendResult29_g83690 * Control31_g83690 );
				float4 heights_167362_g83651 = Terrain_Height_169015_g83651;
				float heightTransition7362_g83651 = ( 1.0 - _TerrainHeightBlendValue );
				float4 weights_047362_g83651 = float4( 0,0,0,0 );
				float4 weights_087362_g83651 = float4( 0,0,0,0 );
				float4 weights_127362_g83651 = float4( 0,0,0,0 );
				float4 weights_167362_g83651 = float4( 0,0,0,0 );
				{
				//Modified version of the HDRP terrain height based blending
				float maxHeight = 0;
				float4 weightedHeights_04 = float4( 0,0,0,0 );
				float4 weightedHeights_08 = float4( 0,0,0,0 );
				float4 weightedHeights_12 = float4( 0,0,0,0 );
				float4 weightedHeights_16 = float4( 0,0,0,0 );
				maxHeight = heights_047362_g83651.x;
				maxHeight = max(maxHeight, heights_047362_g83651.y);
				maxHeight = max(maxHeight, heights_047362_g83651.z);
				maxHeight = max(maxHeight, heights_047362_g83651.w);
				#ifdef TVE_TERRAIN_08
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				#endif
				#ifdef TVE_TERRAIN_12
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				maxHeight = max(maxHeight, heights_127362_g83651.x);
				maxHeight = max(maxHeight, heights_127362_g83651.y);
				maxHeight = max(maxHeight, heights_127362_g83651.z);
				maxHeight = max(maxHeight, heights_127362_g83651.w);
				#endif
				#ifdef TVE_TERRAIN_16
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				maxHeight = max(maxHeight, heights_127362_g83651.x);
				maxHeight = max(maxHeight, heights_127362_g83651.y);
				maxHeight = max(maxHeight, heights_127362_g83651.z);
				maxHeight = max(maxHeight, heights_127362_g83651.w);
				maxHeight = max(maxHeight, heights_167362_g83651.x);
				maxHeight = max(maxHeight, heights_167362_g83651.y);
				maxHeight = max(maxHeight, heights_167362_g83651.z);
				maxHeight = max(maxHeight, heights_167362_g83651.w);
				#endif
				float transition = max(heightTransition7362_g83651, 0.01);
				weightedHeights_04 = float4 ( heights_047362_g83651.x, heights_047362_g83651.y, heights_047362_g83651.z, heights_047362_g83651.w );
				weightedHeights_04 = weightedHeights_04 - maxHeight.xxxx;
				weightedHeights_04 = (max(0, weightedHeights_04 + transition) + 1e-6) * control_047362_g83651;
				#ifdef TVE_TERRAIN_08
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				#endif
				#ifdef TVE_TERRAIN_12
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				weightedHeights_12 = float4 ( heights_127362_g83651.x, heights_127362_g83651.y, heights_127362_g83651.z, heights_127362_g83651.w );
				weightedHeights_12 = weightedHeights_12 - maxHeight.xxxx;
				weightedHeights_12 = (max(0, weightedHeights_12 + transition) + 1e-6) * control_127362_g83651;
				#endif
				#ifdef TVE_TERRAIN_16
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				weightedHeights_12 = float4 ( heights_127362_g83651.x, heights_127362_g83651.y, heights_127362_g83651.z, heights_127362_g83651.w );
				weightedHeights_12 = weightedHeights_12 - maxHeight.xxxx;
				weightedHeights_12 = (max(0, weightedHeights_12 + transition) + 1e-6) * control_127362_g83651;
				weightedHeights_16 = float4 ( heights_167362_g83651.x, heights_167362_g83651.y, heights_167362_g83651.z, heights_167362_g83651.w );
				weightedHeights_16 = weightedHeights_16 - maxHeight.xxxx;
				weightedHeights_16 = (max(0, weightedHeights_16 + transition) + 1e-6) * control_167362_g83651;
				#endif
				float sumHeight_04 = weightedHeights_04.x + weightedHeights_04.y + weightedHeights_04.z + weightedHeights_04.w;
				float sumHeight_08 = weightedHeights_08.x + weightedHeights_08.y + weightedHeights_08.z + weightedHeights_08.w;
				float sumHeight_12 = weightedHeights_12.x + weightedHeights_12.y + weightedHeights_12.z + weightedHeights_12.w;
				float sumHeight_16 = weightedHeights_16.x + weightedHeights_16.y + weightedHeights_16.z + weightedHeights_16.w;
				float sumHeight = sumHeight_04 + sumHeight_08 + sumHeight_12 + sumHeight_16;
				weights_047362_g83651 = weightedHeights_04 / sumHeight.xxxx;
				#ifdef TVE_TERRAIN_08
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				#endif
				#ifdef TVE_TERRAIN_12
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				weights_127362_g83651 = weightedHeights_12 / sumHeight.xxxx;
				#endif
				#ifdef TVE_TERRAIN_16
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				weights_127362_g83651 = weightedHeights_12 / sumHeight.xxxx;
				weights_167362_g83651 = weightedHeights_16 / sumHeight.xxxx;
				#endif
				}
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8792_g83651 = weights_047362_g83651;
				#else
				float4 staticSwitch8792_g83651 = control_047362_g83651;
				#endif
				half4 Terrain_Weights_046781_g83651 = staticSwitch8792_g83651;
				half4 Weights52_g83660 = Terrain_Weights_046781_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83744) = _AlbedoTex1;
				SamplerState Sampler238_g83744 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83744 = Input_Coords_016785_g83651;
				half4 Coords238_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition238_g83744 = worldPos;
				half4 localSamplePlanar2D238_g83744 = SamplePlanar2D( Texture238_g83744 , Sampler238_g83744 , Coords238_g83744 , WorldPosition238_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83744) = _AlbedoTex1;
				SamplerState Sampler246_g83744 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition246_g83744 = worldPos;
				half3 WorldNormal246_g83744 = WorldNormal;
				half4 localSamplePlanar3D246_g83744 = SamplePlanar3D( Texture246_g83744 , Sampler246_g83744 , Coords246_g83744 , WorldPosition246_g83744 , WorldNormal246_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83744) = _AlbedoTex1;
				SamplerState Sampler234_g83744 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83744 = temp_output_37_0_g83744;
				float3 WorldPosition234_g83744 = worldPos;
				float4 localSampleStochastic2D234_g83744 = SampleStochastic2D( Texture234_g83744 , Sampler234_g83744 , Coords234_g83744 , WorldPosition234_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83744) = _AlbedoTex1;
				SamplerState Sampler263_g83744 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition263_g83744 = worldPos;
				half3 WorldNormal263_g83744 = WorldNormal;
				half4 localSampleStochastic3D263_g83744 = SampleStochastic3D( Texture263_g83744 , Sampler263_g83744 , Coords263_g83744 , WorldPosition263_g83744 , WorldNormal263_g83744 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8614_g83651 = localSamplePlanar2D238_g83744;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8614_g83651 = localSamplePlanar3D246_g83744;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8614_g83651 = localSampleStochastic2D234_g83744;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8614_g83651 = localSampleStochastic3D263_g83744;
				#else
				float4 staticSwitch8614_g83651 = localSamplePlanar2D238_g83744;
				#endif
				half4 Layer133_g83660 = staticSwitch8614_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83697) = _AlbedoTex2;
				SamplerState Sampler238_g83697 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83697 = Input_Coords_026787_g83651;
				half4 Coords238_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition238_g83697 = worldPos;
				half4 localSamplePlanar2D238_g83697 = SamplePlanar2D( Texture238_g83697 , Sampler238_g83697 , Coords238_g83697 , WorldPosition238_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83697) = _AlbedoTex2;
				SamplerState Sampler246_g83697 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition246_g83697 = worldPos;
				half3 WorldNormal246_g83697 = WorldNormal;
				half4 localSamplePlanar3D246_g83697 = SamplePlanar3D( Texture246_g83697 , Sampler246_g83697 , Coords246_g83697 , WorldPosition246_g83697 , WorldNormal246_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83697) = _AlbedoTex2;
				SamplerState Sampler234_g83697 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83697 = temp_output_37_0_g83697;
				float3 WorldPosition234_g83697 = worldPos;
				float4 localSampleStochastic2D234_g83697 = SampleStochastic2D( Texture234_g83697 , Sampler234_g83697 , Coords234_g83697 , WorldPosition234_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83697) = _AlbedoTex2;
				SamplerState Sampler263_g83697 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition263_g83697 = worldPos;
				half3 WorldNormal263_g83697 = WorldNormal;
				half4 localSampleStochastic3D263_g83697 = SampleStochastic3D( Texture263_g83697 , Sampler263_g83697 , Coords263_g83697 , WorldPosition263_g83697 , WorldNormal263_g83697 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8629_g83651 = localSamplePlanar2D238_g83697;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8629_g83651 = localSamplePlanar3D246_g83697;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8629_g83651 = localSampleStochastic2D234_g83697;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8629_g83651 = localSampleStochastic3D263_g83697;
				#else
				float4 staticSwitch8629_g83651 = localSamplePlanar2D238_g83697;
				#endif
				half4 Layer237_g83660 = staticSwitch8629_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83698) = _AlbedoTex3;
				SamplerState Sampler238_g83698 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83698 = Input_Coords_036789_g83651;
				half4 Coords238_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition238_g83698 = worldPos;
				half4 localSamplePlanar2D238_g83698 = SamplePlanar2D( Texture238_g83698 , Sampler238_g83698 , Coords238_g83698 , WorldPosition238_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83698) = _AlbedoTex3;
				SamplerState Sampler246_g83698 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition246_g83698 = worldPos;
				half3 WorldNormal246_g83698 = WorldNormal;
				half4 localSamplePlanar3D246_g83698 = SamplePlanar3D( Texture246_g83698 , Sampler246_g83698 , Coords246_g83698 , WorldPosition246_g83698 , WorldNormal246_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83698) = _AlbedoTex3;
				SamplerState Sampler234_g83698 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83698 = temp_output_37_0_g83698;
				float3 WorldPosition234_g83698 = worldPos;
				float4 localSampleStochastic2D234_g83698 = SampleStochastic2D( Texture234_g83698 , Sampler234_g83698 , Coords234_g83698 , WorldPosition234_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83698) = _AlbedoTex3;
				SamplerState Sampler263_g83698 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition263_g83698 = worldPos;
				half3 WorldNormal263_g83698 = WorldNormal;
				half4 localSampleStochastic3D263_g83698 = SampleStochastic3D( Texture263_g83698 , Sampler263_g83698 , Coords263_g83698 , WorldPosition263_g83698 , WorldNormal263_g83698 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8630_g83651 = localSamplePlanar2D238_g83698;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8630_g83651 = localSamplePlanar3D246_g83698;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8630_g83651 = localSampleStochastic2D234_g83698;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8630_g83651 = localSampleStochastic3D263_g83698;
				#else
				float4 staticSwitch8630_g83651 = localSamplePlanar2D238_g83698;
				#endif
				half4 Layer338_g83660 = staticSwitch8630_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83699) = _AlbedoTex4;
				SamplerState Sampler238_g83699 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83699 = Input_Coords_046791_g83651;
				half4 Coords238_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition238_g83699 = worldPos;
				half4 localSamplePlanar2D238_g83699 = SamplePlanar2D( Texture238_g83699 , Sampler238_g83699 , Coords238_g83699 , WorldPosition238_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83699) = _AlbedoTex4;
				SamplerState Sampler246_g83699 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition246_g83699 = worldPos;
				half3 WorldNormal246_g83699 = WorldNormal;
				half4 localSamplePlanar3D246_g83699 = SamplePlanar3D( Texture246_g83699 , Sampler246_g83699 , Coords246_g83699 , WorldPosition246_g83699 , WorldNormal246_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83699) = _AlbedoTex4;
				SamplerState Sampler234_g83699 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83699 = temp_output_37_0_g83699;
				float3 WorldPosition234_g83699 = worldPos;
				float4 localSampleStochastic2D234_g83699 = SampleStochastic2D( Texture234_g83699 , Sampler234_g83699 , Coords234_g83699 , WorldPosition234_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83699) = _AlbedoTex4;
				SamplerState Sampler263_g83699 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition263_g83699 = worldPos;
				half3 WorldNormal263_g83699 = WorldNormal;
				half4 localSampleStochastic3D263_g83699 = SampleStochastic3D( Texture263_g83699 , Sampler263_g83699 , Coords263_g83699 , WorldPosition263_g83699 , WorldNormal263_g83699 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8631_g83651 = localSamplePlanar2D238_g83699;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8631_g83651 = localSamplePlanar3D246_g83699;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8631_g83651 = localSampleStochastic2D234_g83699;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8631_g83651 = localSampleStochastic3D263_g83699;
				#else
				float4 staticSwitch8631_g83651 = localSamplePlanar2D238_g83699;
				#endif
				half4 Layer439_g83660 = staticSwitch8631_g83651;
				float4 weightedBlendVar31_g83660 = Weights52_g83660;
				float4 weightedBlend31_g83660 = ( weightedBlendVar31_g83660.x*Layer133_g83660 + weightedBlendVar31_g83660.y*Layer237_g83660 + weightedBlendVar31_g83660.z*Layer338_g83660 + weightedBlendVar31_g83660.w*Layer439_g83660 );
				half4 Terrain_Albedo_047200_g83651 = weightedBlend31_g83660;
				half4 Layer_045_g83663 = Terrain_Albedo_047200_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8793_g83651 = weights_087362_g83651;
				#else
				float4 staticSwitch8793_g83651 = control_087362_g83651;
				#endif
				half4 Terrain_Weights_087340_g83651 = staticSwitch8793_g83651;
				half4 Weights52_g83667 = Terrain_Weights_087340_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83708) = _AlbedoTex5;
				SamplerState Sampler238_g83708 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83708 = Input_Coords_058750_g83651;
				half4 Coords238_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition238_g83708 = worldPos;
				half4 localSamplePlanar2D238_g83708 = SamplePlanar2D( Texture238_g83708 , Sampler238_g83708 , Coords238_g83708 , WorldPosition238_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83708) = _AlbedoTex5;
				SamplerState Sampler246_g83708 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition246_g83708 = worldPos;
				half3 WorldNormal246_g83708 = WorldNormal;
				half4 localSamplePlanar3D246_g83708 = SamplePlanar3D( Texture246_g83708 , Sampler246_g83708 , Coords246_g83708 , WorldPosition246_g83708 , WorldNormal246_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83708) = _AlbedoTex5;
				SamplerState Sampler234_g83708 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83708 = temp_output_37_0_g83708;
				float3 WorldPosition234_g83708 = worldPos;
				float4 localSampleStochastic2D234_g83708 = SampleStochastic2D( Texture234_g83708 , Sampler234_g83708 , Coords234_g83708 , WorldPosition234_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83708) = _AlbedoTex5;
				SamplerState Sampler263_g83708 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition263_g83708 = worldPos;
				half3 WorldNormal263_g83708 = WorldNormal;
				half4 localSampleStochastic3D263_g83708 = SampleStochastic3D( Texture263_g83708 , Sampler263_g83708 , Coords263_g83708 , WorldPosition263_g83708 , WorldNormal263_g83708 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8690_g83651 = localSamplePlanar2D238_g83708;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8690_g83651 = localSamplePlanar3D246_g83708;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8690_g83651 = localSampleStochastic2D234_g83708;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8690_g83651 = localSampleStochastic3D263_g83708;
				#else
				float4 staticSwitch8690_g83651 = localSamplePlanar2D238_g83708;
				#endif
				half4 Layer133_g83667 = staticSwitch8690_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83709) = _AlbedoTex6;
				SamplerState Sampler238_g83709 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83709 = Input_Coords_068751_g83651;
				half4 Coords238_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition238_g83709 = worldPos;
				half4 localSamplePlanar2D238_g83709 = SamplePlanar2D( Texture238_g83709 , Sampler238_g83709 , Coords238_g83709 , WorldPosition238_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83709) = _AlbedoTex6;
				SamplerState Sampler246_g83709 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition246_g83709 = worldPos;
				half3 WorldNormal246_g83709 = WorldNormal;
				half4 localSamplePlanar3D246_g83709 = SamplePlanar3D( Texture246_g83709 , Sampler246_g83709 , Coords246_g83709 , WorldPosition246_g83709 , WorldNormal246_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83709) = _AlbedoTex6;
				SamplerState Sampler234_g83709 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83709 = temp_output_37_0_g83709;
				float3 WorldPosition234_g83709 = worldPos;
				float4 localSampleStochastic2D234_g83709 = SampleStochastic2D( Texture234_g83709 , Sampler234_g83709 , Coords234_g83709 , WorldPosition234_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83709) = _AlbedoTex6;
				SamplerState Sampler263_g83709 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition263_g83709 = worldPos;
				half3 WorldNormal263_g83709 = WorldNormal;
				half4 localSampleStochastic3D263_g83709 = SampleStochastic3D( Texture263_g83709 , Sampler263_g83709 , Coords263_g83709 , WorldPosition263_g83709 , WorldNormal263_g83709 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8691_g83651 = localSamplePlanar2D238_g83709;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8691_g83651 = localSamplePlanar3D246_g83709;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8691_g83651 = localSampleStochastic2D234_g83709;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8691_g83651 = localSampleStochastic3D263_g83709;
				#else
				float4 staticSwitch8691_g83651 = localSamplePlanar2D238_g83709;
				#endif
				half4 Layer237_g83667 = staticSwitch8691_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83710) = _AlbedoTex7;
				SamplerState Sampler238_g83710 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83710 = Input_Coords_078752_g83651;
				half4 Coords238_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition238_g83710 = worldPos;
				half4 localSamplePlanar2D238_g83710 = SamplePlanar2D( Texture238_g83710 , Sampler238_g83710 , Coords238_g83710 , WorldPosition238_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83710) = _AlbedoTex7;
				SamplerState Sampler246_g83710 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition246_g83710 = worldPos;
				half3 WorldNormal246_g83710 = WorldNormal;
				half4 localSamplePlanar3D246_g83710 = SamplePlanar3D( Texture246_g83710 , Sampler246_g83710 , Coords246_g83710 , WorldPosition246_g83710 , WorldNormal246_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83710) = _AlbedoTex7;
				SamplerState Sampler234_g83710 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83710 = temp_output_37_0_g83710;
				float3 WorldPosition234_g83710 = worldPos;
				float4 localSampleStochastic2D234_g83710 = SampleStochastic2D( Texture234_g83710 , Sampler234_g83710 , Coords234_g83710 , WorldPosition234_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83710) = _AlbedoTex7;
				SamplerState Sampler263_g83710 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition263_g83710 = worldPos;
				half3 WorldNormal263_g83710 = WorldNormal;
				half4 localSampleStochastic3D263_g83710 = SampleStochastic3D( Texture263_g83710 , Sampler263_g83710 , Coords263_g83710 , WorldPosition263_g83710 , WorldNormal263_g83710 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8692_g83651 = localSamplePlanar2D238_g83710;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8692_g83651 = localSamplePlanar3D246_g83710;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8692_g83651 = localSampleStochastic2D234_g83710;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8692_g83651 = localSampleStochastic3D263_g83710;
				#else
				float4 staticSwitch8692_g83651 = localSamplePlanar2D238_g83710;
				#endif
				half4 Layer338_g83667 = staticSwitch8692_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83711) = _AlbedoTex8;
				SamplerState Sampler238_g83711 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83711 = Input_Coords_088749_g83651;
				half4 Coords238_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition238_g83711 = worldPos;
				half4 localSamplePlanar2D238_g83711 = SamplePlanar2D( Texture238_g83711 , Sampler238_g83711 , Coords238_g83711 , WorldPosition238_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83711) = _AlbedoTex8;
				SamplerState Sampler246_g83711 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition246_g83711 = worldPos;
				half3 WorldNormal246_g83711 = WorldNormal;
				half4 localSamplePlanar3D246_g83711 = SamplePlanar3D( Texture246_g83711 , Sampler246_g83711 , Coords246_g83711 , WorldPosition246_g83711 , WorldNormal246_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83711) = _AlbedoTex8;
				SamplerState Sampler234_g83711 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83711 = temp_output_37_0_g83711;
				float3 WorldPosition234_g83711 = worldPos;
				float4 localSampleStochastic2D234_g83711 = SampleStochastic2D( Texture234_g83711 , Sampler234_g83711 , Coords234_g83711 , WorldPosition234_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83711) = _AlbedoTex8;
				SamplerState Sampler263_g83711 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition263_g83711 = worldPos;
				half3 WorldNormal263_g83711 = WorldNormal;
				half4 localSampleStochastic3D263_g83711 = SampleStochastic3D( Texture263_g83711 , Sampler263_g83711 , Coords263_g83711 , WorldPosition263_g83711 , WorldNormal263_g83711 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8693_g83651 = localSamplePlanar2D238_g83711;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8693_g83651 = localSamplePlanar3D246_g83711;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8693_g83651 = localSampleStochastic2D234_g83711;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8693_g83651 = localSampleStochastic3D263_g83711;
				#else
				float4 staticSwitch8693_g83651 = localSamplePlanar2D238_g83711;
				#endif
				half4 Layer439_g83667 = staticSwitch8693_g83651;
				float4 weightedBlendVar31_g83667 = Weights52_g83667;
				float4 weightedBlend31_g83667 = ( weightedBlendVar31_g83667.x*Layer133_g83667 + weightedBlendVar31_g83667.y*Layer237_g83667 + weightedBlendVar31_g83667.z*Layer338_g83667 + weightedBlendVar31_g83667.w*Layer439_g83667 );
				half4 Terrain_Albedo_088665_g83651 = weightedBlend31_g83667;
				half4 Layer_0810_g83663 = Terrain_Albedo_088665_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8794_g83651 = weights_127362_g83651;
				#else
				float4 staticSwitch8794_g83651 = control_127362_g83651;
				#endif
				half4 Terrain_Weights_127710_g83651 = staticSwitch8794_g83651;
				half4 Weights52_g83677 = Terrain_Weights_127710_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83720) = _AlbedoTex9;
				SamplerState Sampler238_g83720 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83720 = Input_Coords_098833_g83651;
				half4 Coords238_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition238_g83720 = worldPos;
				half4 localSamplePlanar2D238_g83720 = SamplePlanar2D( Texture238_g83720 , Sampler238_g83720 , Coords238_g83720 , WorldPosition238_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83720) = _AlbedoTex9;
				SamplerState Sampler246_g83720 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition246_g83720 = worldPos;
				half3 WorldNormal246_g83720 = WorldNormal;
				half4 localSamplePlanar3D246_g83720 = SamplePlanar3D( Texture246_g83720 , Sampler246_g83720 , Coords246_g83720 , WorldPosition246_g83720 , WorldNormal246_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83720) = _AlbedoTex9;
				SamplerState Sampler234_g83720 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83720 = temp_output_37_0_g83720;
				float3 WorldPosition234_g83720 = worldPos;
				float4 localSampleStochastic2D234_g83720 = SampleStochastic2D( Texture234_g83720 , Sampler234_g83720 , Coords234_g83720 , WorldPosition234_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83720) = _AlbedoTex9;
				SamplerState Sampler263_g83720 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition263_g83720 = worldPos;
				half3 WorldNormal263_g83720 = WorldNormal;
				half4 localSampleStochastic3D263_g83720 = SampleStochastic3D( Texture263_g83720 , Sampler263_g83720 , Coords263_g83720 , WorldPosition263_g83720 , WorldNormal263_g83720 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8872_g83651 = localSamplePlanar2D238_g83720;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8872_g83651 = localSamplePlanar3D246_g83720;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8872_g83651 = localSampleStochastic2D234_g83720;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8872_g83651 = localSampleStochastic3D263_g83720;
				#else
				float4 staticSwitch8872_g83651 = localSamplePlanar2D238_g83720;
				#endif
				half4 Layer133_g83677 = staticSwitch8872_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83721) = _AlbedoTex10;
				SamplerState Sampler238_g83721 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83721 = Input_Coords_108834_g83651;
				half4 Coords238_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition238_g83721 = worldPos;
				half4 localSamplePlanar2D238_g83721 = SamplePlanar2D( Texture238_g83721 , Sampler238_g83721 , Coords238_g83721 , WorldPosition238_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83721) = _AlbedoTex10;
				SamplerState Sampler246_g83721 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition246_g83721 = worldPos;
				half3 WorldNormal246_g83721 = WorldNormal;
				half4 localSamplePlanar3D246_g83721 = SamplePlanar3D( Texture246_g83721 , Sampler246_g83721 , Coords246_g83721 , WorldPosition246_g83721 , WorldNormal246_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83721) = _AlbedoTex10;
				SamplerState Sampler234_g83721 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83721 = temp_output_37_0_g83721;
				float3 WorldPosition234_g83721 = worldPos;
				float4 localSampleStochastic2D234_g83721 = SampleStochastic2D( Texture234_g83721 , Sampler234_g83721 , Coords234_g83721 , WorldPosition234_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83721) = _AlbedoTex10;
				SamplerState Sampler263_g83721 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition263_g83721 = worldPos;
				half3 WorldNormal263_g83721 = WorldNormal;
				half4 localSampleStochastic3D263_g83721 = SampleStochastic3D( Texture263_g83721 , Sampler263_g83721 , Coords263_g83721 , WorldPosition263_g83721 , WorldNormal263_g83721 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8873_g83651 = localSamplePlanar2D238_g83721;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8873_g83651 = localSamplePlanar3D246_g83721;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8873_g83651 = localSampleStochastic2D234_g83721;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8873_g83651 = localSampleStochastic3D263_g83721;
				#else
				float4 staticSwitch8873_g83651 = localSamplePlanar2D238_g83721;
				#endif
				half4 Layer237_g83677 = staticSwitch8873_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83722) = _AlbedoTex11;
				SamplerState Sampler238_g83722 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83722 = Input_Coords_118835_g83651;
				half4 Coords238_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition238_g83722 = worldPos;
				half4 localSamplePlanar2D238_g83722 = SamplePlanar2D( Texture238_g83722 , Sampler238_g83722 , Coords238_g83722 , WorldPosition238_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83722) = _AlbedoTex11;
				SamplerState Sampler246_g83722 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition246_g83722 = worldPos;
				half3 WorldNormal246_g83722 = WorldNormal;
				half4 localSamplePlanar3D246_g83722 = SamplePlanar3D( Texture246_g83722 , Sampler246_g83722 , Coords246_g83722 , WorldPosition246_g83722 , WorldNormal246_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83722) = _AlbedoTex11;
				SamplerState Sampler234_g83722 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83722 = temp_output_37_0_g83722;
				float3 WorldPosition234_g83722 = worldPos;
				float4 localSampleStochastic2D234_g83722 = SampleStochastic2D( Texture234_g83722 , Sampler234_g83722 , Coords234_g83722 , WorldPosition234_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83722) = _AlbedoTex11;
				SamplerState Sampler263_g83722 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition263_g83722 = worldPos;
				half3 WorldNormal263_g83722 = WorldNormal;
				half4 localSampleStochastic3D263_g83722 = SampleStochastic3D( Texture263_g83722 , Sampler263_g83722 , Coords263_g83722 , WorldPosition263_g83722 , WorldNormal263_g83722 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8874_g83651 = localSamplePlanar2D238_g83722;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8874_g83651 = localSamplePlanar3D246_g83722;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8874_g83651 = localSampleStochastic2D234_g83722;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8874_g83651 = localSampleStochastic3D263_g83722;
				#else
				float4 staticSwitch8874_g83651 = localSamplePlanar2D238_g83722;
				#endif
				half4 Layer338_g83677 = staticSwitch8874_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83723) = _AlbedoTex12;
				SamplerState Sampler238_g83723 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83723 = Input_Coords_128836_g83651;
				half4 Coords238_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition238_g83723 = worldPos;
				half4 localSamplePlanar2D238_g83723 = SamplePlanar2D( Texture238_g83723 , Sampler238_g83723 , Coords238_g83723 , WorldPosition238_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83723) = _AlbedoTex12;
				SamplerState Sampler246_g83723 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition246_g83723 = worldPos;
				half3 WorldNormal246_g83723 = WorldNormal;
				half4 localSamplePlanar3D246_g83723 = SamplePlanar3D( Texture246_g83723 , Sampler246_g83723 , Coords246_g83723 , WorldPosition246_g83723 , WorldNormal246_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83723) = _AlbedoTex12;
				SamplerState Sampler234_g83723 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83723 = temp_output_37_0_g83723;
				float3 WorldPosition234_g83723 = worldPos;
				float4 localSampleStochastic2D234_g83723 = SampleStochastic2D( Texture234_g83723 , Sampler234_g83723 , Coords234_g83723 , WorldPosition234_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83723) = _AlbedoTex12;
				SamplerState Sampler263_g83723 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition263_g83723 = worldPos;
				half3 WorldNormal263_g83723 = WorldNormal;
				half4 localSampleStochastic3D263_g83723 = SampleStochastic3D( Texture263_g83723 , Sampler263_g83723 , Coords263_g83723 , WorldPosition263_g83723 , WorldNormal263_g83723 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8875_g83651 = localSamplePlanar2D238_g83723;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8875_g83651 = localSamplePlanar3D246_g83723;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8875_g83651 = localSampleStochastic2D234_g83723;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8875_g83651 = localSampleStochastic3D263_g83723;
				#else
				float4 staticSwitch8875_g83651 = localSamplePlanar2D238_g83723;
				#endif
				half4 Layer439_g83677 = staticSwitch8875_g83651;
				float4 weightedBlendVar31_g83677 = Weights52_g83677;
				float4 weightedBlend31_g83677 = ( weightedBlendVar31_g83677.x*Layer133_g83677 + weightedBlendVar31_g83677.y*Layer237_g83677 + weightedBlendVar31_g83677.z*Layer338_g83677 + weightedBlendVar31_g83677.w*Layer439_g83677 );
				half4 Terrain_Albedo_128851_g83651 = weightedBlend31_g83677;
				half4 Layer_1243_g83663 = Terrain_Albedo_128851_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8795_g83651 = weights_167362_g83651;
				#else
				float4 staticSwitch8795_g83651 = control_167362_g83651;
				#endif
				half4 Terrain_Weights_167709_g83651 = staticSwitch8795_g83651;
				half4 Weights52_g83687 = Terrain_Weights_167709_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83732) = _AlbedoTex13;
				SamplerState Sampler238_g83732 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83732 = Input_Coords_138960_g83651;
				half4 Coords238_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition238_g83732 = worldPos;
				half4 localSamplePlanar2D238_g83732 = SamplePlanar2D( Texture238_g83732 , Sampler238_g83732 , Coords238_g83732 , WorldPosition238_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83732) = _AlbedoTex13;
				SamplerState Sampler246_g83732 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition246_g83732 = worldPos;
				half3 WorldNormal246_g83732 = WorldNormal;
				half4 localSamplePlanar3D246_g83732 = SamplePlanar3D( Texture246_g83732 , Sampler246_g83732 , Coords246_g83732 , WorldPosition246_g83732 , WorldNormal246_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83732) = _AlbedoTex13;
				SamplerState Sampler234_g83732 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83732 = temp_output_37_0_g83732;
				float3 WorldPosition234_g83732 = worldPos;
				float4 localSampleStochastic2D234_g83732 = SampleStochastic2D( Texture234_g83732 , Sampler234_g83732 , Coords234_g83732 , WorldPosition234_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83732) = _AlbedoTex13;
				SamplerState Sampler263_g83732 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition263_g83732 = worldPos;
				half3 WorldNormal263_g83732 = WorldNormal;
				half4 localSampleStochastic3D263_g83732 = SampleStochastic3D( Texture263_g83732 , Sampler263_g83732 , Coords263_g83732 , WorldPosition263_g83732 , WorldNormal263_g83732 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch8972_g83651 = localSamplePlanar2D238_g83732;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch8972_g83651 = localSamplePlanar3D246_g83732;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch8972_g83651 = localSampleStochastic2D234_g83732;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch8972_g83651 = localSampleStochastic3D263_g83732;
				#else
				float4 staticSwitch8972_g83651 = localSamplePlanar2D238_g83732;
				#endif
				half4 Layer133_g83687 = staticSwitch8972_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83733) = _AlbedoTex14;
				SamplerState Sampler238_g83733 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83733 = Input_Coords_148961_g83651;
				half4 Coords238_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition238_g83733 = worldPos;
				half4 localSamplePlanar2D238_g83733 = SamplePlanar2D( Texture238_g83733 , Sampler238_g83733 , Coords238_g83733 , WorldPosition238_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83733) = _AlbedoTex14;
				SamplerState Sampler246_g83733 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition246_g83733 = worldPos;
				half3 WorldNormal246_g83733 = WorldNormal;
				half4 localSamplePlanar3D246_g83733 = SamplePlanar3D( Texture246_g83733 , Sampler246_g83733 , Coords246_g83733 , WorldPosition246_g83733 , WorldNormal246_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83733) = _AlbedoTex14;
				SamplerState Sampler234_g83733 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83733 = temp_output_37_0_g83733;
				float3 WorldPosition234_g83733 = worldPos;
				float4 localSampleStochastic2D234_g83733 = SampleStochastic2D( Texture234_g83733 , Sampler234_g83733 , Coords234_g83733 , WorldPosition234_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83733) = _AlbedoTex14;
				SamplerState Sampler263_g83733 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition263_g83733 = worldPos;
				half3 WorldNormal263_g83733 = WorldNormal;
				half4 localSampleStochastic3D263_g83733 = SampleStochastic3D( Texture263_g83733 , Sampler263_g83733 , Coords263_g83733 , WorldPosition263_g83733 , WorldNormal263_g83733 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch8973_g83651 = localSamplePlanar2D238_g83733;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch8973_g83651 = localSamplePlanar3D246_g83733;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch8973_g83651 = localSampleStochastic2D234_g83733;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch8973_g83651 = localSampleStochastic3D263_g83733;
				#else
				float4 staticSwitch8973_g83651 = localSamplePlanar2D238_g83733;
				#endif
				half4 Layer237_g83687 = staticSwitch8973_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83734) = _AlbedoTex15;
				SamplerState Sampler238_g83734 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83734 = Input_Coords_158962_g83651;
				half4 Coords238_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition238_g83734 = worldPos;
				half4 localSamplePlanar2D238_g83734 = SamplePlanar2D( Texture238_g83734 , Sampler238_g83734 , Coords238_g83734 , WorldPosition238_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83734) = _AlbedoTex15;
				SamplerState Sampler246_g83734 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition246_g83734 = worldPos;
				half3 WorldNormal246_g83734 = WorldNormal;
				half4 localSamplePlanar3D246_g83734 = SamplePlanar3D( Texture246_g83734 , Sampler246_g83734 , Coords246_g83734 , WorldPosition246_g83734 , WorldNormal246_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83734) = _AlbedoTex15;
				SamplerState Sampler234_g83734 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83734 = temp_output_37_0_g83734;
				float3 WorldPosition234_g83734 = worldPos;
				float4 localSampleStochastic2D234_g83734 = SampleStochastic2D( Texture234_g83734 , Sampler234_g83734 , Coords234_g83734 , WorldPosition234_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83734) = _AlbedoTex15;
				SamplerState Sampler263_g83734 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition263_g83734 = worldPos;
				half3 WorldNormal263_g83734 = WorldNormal;
				half4 localSampleStochastic3D263_g83734 = SampleStochastic3D( Texture263_g83734 , Sampler263_g83734 , Coords263_g83734 , WorldPosition263_g83734 , WorldNormal263_g83734 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch8974_g83651 = localSamplePlanar2D238_g83734;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch8974_g83651 = localSamplePlanar3D246_g83734;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch8974_g83651 = localSampleStochastic2D234_g83734;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch8974_g83651 = localSampleStochastic3D263_g83734;
				#else
				float4 staticSwitch8974_g83651 = localSamplePlanar2D238_g83734;
				#endif
				half4 Layer338_g83687 = staticSwitch8974_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83735) = _AlbedoTex16;
				SamplerState Sampler238_g83735 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83735 = Input_Coords_168959_g83651;
				half4 Coords238_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition238_g83735 = worldPos;
				half4 localSamplePlanar2D238_g83735 = SamplePlanar2D( Texture238_g83735 , Sampler238_g83735 , Coords238_g83735 , WorldPosition238_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83735) = _AlbedoTex16;
				SamplerState Sampler246_g83735 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition246_g83735 = worldPos;
				half3 WorldNormal246_g83735 = WorldNormal;
				half4 localSamplePlanar3D246_g83735 = SamplePlanar3D( Texture246_g83735 , Sampler246_g83735 , Coords246_g83735 , WorldPosition246_g83735 , WorldNormal246_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83735) = _AlbedoTex16;
				SamplerState Sampler234_g83735 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83735 = temp_output_37_0_g83735;
				float3 WorldPosition234_g83735 = worldPos;
				float4 localSampleStochastic2D234_g83735 = SampleStochastic2D( Texture234_g83735 , Sampler234_g83735 , Coords234_g83735 , WorldPosition234_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83735) = _AlbedoTex16;
				SamplerState Sampler263_g83735 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition263_g83735 = worldPos;
				half3 WorldNormal263_g83735 = WorldNormal;
				half4 localSampleStochastic3D263_g83735 = SampleStochastic3D( Texture263_g83735 , Sampler263_g83735 , Coords263_g83735 , WorldPosition263_g83735 , WorldNormal263_g83735 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch8975_g83651 = localSamplePlanar2D238_g83735;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch8975_g83651 = localSamplePlanar3D246_g83735;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch8975_g83651 = localSampleStochastic2D234_g83735;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch8975_g83651 = localSampleStochastic3D263_g83735;
				#else
				float4 staticSwitch8975_g83651 = localSamplePlanar2D238_g83735;
				#endif
				half4 Layer439_g83687 = staticSwitch8975_g83651;
				float4 weightedBlendVar31_g83687 = Weights52_g83687;
				float4 weightedBlend31_g83687 = ( weightedBlendVar31_g83687.x*Layer133_g83687 + weightedBlendVar31_g83687.y*Layer237_g83687 + weightedBlendVar31_g83687.z*Layer338_g83687 + weightedBlendVar31_g83687.w*Layer439_g83687 );
				half4 Terrain_Albedo_168986_g83651 = weightedBlend31_g83687;
				half4 Layer_1644_g83663 = Terrain_Albedo_168986_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83663 = Layer_045_g83663;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 + Layer_1243_g83663 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 + Layer_1243_g83663 + Layer_1644_g83663 );
				#else
				float4 staticSwitch40_g83663 = Layer_045_g83663;
				#endif
				half4 Blend_Albedo7468_g83651 = staticSwitch40_g83663;
				half3 Terrain_Albedo8037_g83150 = ( (Blend_Albedo7468_g83651).xyz * (_TerrainColor).rgb );
				float vertexToFrag11_g83454 = IN.ase_texcoord10.z;
				half Terrain_Mask_Pixel7898_g83150 = vertexToFrag11_g83454;
				half2 Main_Normal137_g83150 = temp_output_6555_0_g83150;
				float2 lerpResult3372_g83150 = lerp( float2( 0,0 ) , Main_Normal137_g83150 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g83238 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g83150 );
				float2 appendResult58_g83238 = (float2(( (Normal_Packed45_g83238).x * (Normal_Packed45_g83238).w ) , (Normal_Packed45_g83238).y));
				half2 Normal_Default50_g83238 = appendResult58_g83238;
				half2 Normal_ASTC41_g83238 = (Normal_Packed45_g83238).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83238 = Normal_ASTC41_g83238;
				#else
				float2 staticSwitch38_g83238 = Normal_Default50_g83238;
				#endif
				half2 Normal_NO_DTX544_g83238 = (Normal_Packed45_g83238).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83238 = Normal_NO_DTX544_g83238;
				#else
				float2 staticSwitch37_g83238 = staticSwitch38_g83238;
				#endif
				float2 temp_output_6560_0_g83150 = ( (staticSwitch37_g83238*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g83241 = temp_output_6560_0_g83150;
				float2 break64_g83241 = Normal_Planar45_g83241;
				float3 appendResult65_g83241 = (float3(break64_g83241.x , 0.0 , break64_g83241.y));
				float2 ifLocalVar7655_g83150 = 0;
				if( _SecondUVsMode == 2.0 )
				ifLocalVar7655_g83150 = (mul( ase_worldToTangent, appendResult65_g83241 )).xy;
				else if( _SecondUVsMode < 2.0 )
				ifLocalVar7655_g83150 = temp_output_6560_0_g83150;
				half2 Second_Normal179_g83150 = ifLocalVar7655_g83150;
				float2 temp_output_36_0_g83250 = ( lerpResult3372_g83150 + Second_Normal179_g83150 );
				float2 lerpResult3376_g83150 = lerp( Main_Normal137_g83150 , temp_output_36_0_g83250 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g83150 = lerpResult3376_g83150;
				#else
				float2 staticSwitch267_g83150 = Main_Normal137_g83150;
				#endif
				half2 Blend_Normal_Detail312_g83150 = staticSwitch267_g83150;
				float3 appendResult7888_g83150 = (float3(Blend_Normal_Detail312_g83150 , 1.0));
				float3 tanNormal7889_g83150 = appendResult7888_g83150;
				float3 worldNormal7889_g83150 = float3(dot(tanToWorld0,tanNormal7889_g83150), dot(tanToWorld1,tanNormal7889_g83150), dot(tanToWorld2,tanNormal7889_g83150));
				half3 Blend_NormalWS_Detail7890_g83150 = worldNormal7889_g83150;
				float temp_output_7901_0_g83150 = saturate( (Blend_NormalWS_Detail7890_g83150).y );
				float temp_output_7895_0_g83150 = ( temp_output_7901_0_g83150 * temp_output_7901_0_g83150 * temp_output_7901_0_g83150 * temp_output_7901_0_g83150 );
				half Terrain_Mask_Projection7875_g83150 = ( temp_output_7895_0_g83150 * _TerrainMode );
				float temp_output_7_0_g83284 = _TerrainBlendMinValue;
				float temp_output_10_0_g83284 = ( _TerrainBlendMaxValue - temp_output_7_0_g83284 );
				half Terrain_Mask7747_g83150 = saturate( ( ( saturate( ( Terrain_Mask_Pixel7898_g83150 + ( Terrain_Mask_Pixel7898_g83150 * Terrain_Mask_Projection7875_g83150 ) ) ) - temp_output_7_0_g83284 ) / ( temp_output_10_0_g83284 + 0.0001 ) ) );
				float3 lerpResult7748_g83150 = lerp( Blend_Albedo_Tinted2808_g83150 , Terrain_Albedo8037_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7792_g83150 = lerpResult7748_g83150;
				#else
				float3 staticSwitch7792_g83150 = Blend_Albedo_Tinted2808_g83150;
				#endif
				half3 Blend_Albedo_Terrain7752_g83150 = staticSwitch7792_g83150;
				float3 temp_output_3_0_g83277 = Blend_Albedo_Terrain7752_g83150;
				float dotResult20_g83277 = dot( temp_output_3_0_g83277 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g83150 = dotResult20_g83277;
				float3 temp_cast_10 = (Blend_Albedo_Grayscale5939_g83150).xxx;
				float temp_output_82_0_g83169 = _LayerColorsValue;
				float temp_output_19_0_g83173 = TVE_ColorsUsage[(int)temp_output_82_0_g83169];
				float4 temp_output_91_19_g83169 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g83150 = IN.ase_texcoord11.xyz;
				float3 WorldPosition3905_g83150 = vertexToFrag3890_g83150;
				float3 vertexToFrag4224_g83150 = IN.ase_texcoord12.xyz;
				float3 ObjectPosition4223_g83150 = vertexToFrag4224_g83150;
				float3 lerpResult4822_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _ColorsPositionMode);
				half2 UV94_g83169 = ( (temp_output_91_19_g83169).zw + ( (temp_output_91_19_g83169).xy * (lerpResult4822_g83150).xz ) );
				float4 tex2DArrayNode83_g83169 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g83169,temp_output_82_0_g83169), 0.0 );
				float4 temp_output_17_0_g83173 = tex2DArrayNode83_g83169;
				float4 temp_output_92_86_g83169 = TVE_ColorsParams;
				float4 temp_output_3_0_g83173 = temp_output_92_86_g83169;
				float4 ifLocalVar18_g83173 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83173 >= 0.5 )
				ifLocalVar18_g83173 = temp_output_17_0_g83173;
				else
				ifLocalVar18_g83173 = temp_output_3_0_g83173;
				float4 lerpResult22_g83173 = lerp( temp_output_3_0_g83173 , temp_output_17_0_g83173 , temp_output_19_0_g83173);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83173 = lerpResult22_g83173;
				#else
				float4 staticSwitch24_g83173 = ifLocalVar18_g83173;
				#endif
				half4 Global_Colors_Params5434_g83150 = staticSwitch24_g83173;
				float4 temp_output_346_0_g83157 = Global_Colors_Params5434_g83150;
				half Global_Colors_A1701_g83150 = saturate( (temp_output_346_0_g83157).w );
				half Colors_Influence3668_g83150 = Global_Colors_A1701_g83150;
				float temp_output_6306_0_g83150 = ( 1.0 - Colors_Influence3668_g83150 );
				float3 lerpResult3618_g83150 = lerp( Blend_Albedo_Terrain7752_g83150 , temp_cast_10 , ( 1.0 - ( temp_output_6306_0_g83150 * temp_output_6306_0_g83150 ) ));
				half3 Global_Colors_RGB1700_g83150 = (temp_output_346_0_g83157).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g83266 = 2.0;
				#else
				float staticSwitch1_g83266 = 4.594794;
				#endif
				half3 Colors_RGB1954_g83150 = ( Global_Colors_RGB1700_g83150 * staticSwitch1_g83266 * _ColorsIntensityValue );
				half4 Weights52_g83659 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83659 = _Specular1;
				half4 Layer237_g83659 = _Specular2;
				half4 Layer338_g83659 = _Specular3;
				half4 Layer439_g83659 = _Specular4;
				float4 weightedBlendVar31_g83659 = Weights52_g83659;
				float4 weightedBlend31_g83659 = ( weightedBlendVar31_g83659.x*Layer133_g83659 + weightedBlendVar31_g83659.y*Layer237_g83659 + weightedBlendVar31_g83659.z*Layer338_g83659 + weightedBlendVar31_g83659.w*Layer439_g83659 );
				half4 Terrain_Specular_047390_g83651 = weightedBlend31_g83659;
				half4 Layer_045_g83666 = Terrain_Specular_047390_g83651;
				half4 Weights52_g83676 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83676 = _Specular5;
				half4 Layer237_g83676 = _Specular6;
				half4 Layer338_g83676 = _Specular7;
				half4 Layer439_g83676 = _Specular8;
				float4 weightedBlendVar31_g83676 = Weights52_g83676;
				float4 weightedBlend31_g83676 = ( weightedBlendVar31_g83676.x*Layer133_g83676 + weightedBlendVar31_g83676.y*Layer237_g83676 + weightedBlendVar31_g83676.z*Layer338_g83676 + weightedBlendVar31_g83676.w*Layer439_g83676 );
				half4 Terrain_Specular_088745_g83651 = weightedBlend31_g83676;
				half4 Layer_0810_g83666 = Terrain_Specular_088745_g83651;
				half4 Weights52_g83686 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83686 = _Specular9;
				half4 Layer237_g83686 = _Specular10;
				half4 Layer338_g83686 = _Specular11;
				half4 Layer439_g83686 = _Specular12;
				float4 weightedBlendVar31_g83686 = Weights52_g83686;
				float4 weightedBlend31_g83686 = ( weightedBlendVar31_g83686.x*Layer133_g83686 + weightedBlendVar31_g83686.y*Layer237_g83686 + weightedBlendVar31_g83686.z*Layer338_g83686 + weightedBlendVar31_g83686.w*Layer439_g83686 );
				half4 Terrain_Specular_128869_g83651 = weightedBlend31_g83686;
				half4 Layer_1243_g83666 = Terrain_Specular_128869_g83651;
				half4 Weights52_g83696 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83696 = _Specular13;
				half4 Layer237_g83696 = _Specular14;
				half4 Layer338_g83696 = _Specular15;
				half4 Layer439_g83696 = _Specular16;
				float4 weightedBlendVar31_g83696 = Weights52_g83696;
				float4 weightedBlend31_g83696 = ( weightedBlendVar31_g83696.x*Layer133_g83696 + weightedBlendVar31_g83696.y*Layer237_g83696 + weightedBlendVar31_g83696.z*Layer338_g83696 + weightedBlendVar31_g83696.w*Layer439_g83696 );
				half4 Terrain_Specular_169019_g83651 = weightedBlend31_g83696;
				half4 Layer_1644_g83666 = Terrain_Specular_169019_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83666 = Layer_045_g83666;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 + Layer_1243_g83666 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 + Layer_1243_g83666 + Layer_1644_g83666 );
				#else
				float4 staticSwitch40_g83666 = Layer_045_g83666;
				#endif
				half4 Blend_Specular7446_g83651 = staticSwitch40_g83666;
				half Terrain_ColorsMask7937_g83150 = ( (Blend_Specular7446_g83651).a * (Blend_Albedo7468_g83651).w );
				float lerpResult7939_g83150 = lerp( Blend_MaskRemap_Detail6621_g83150 , Terrain_ColorsMask7937_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float staticSwitch7922_g83150 = lerpResult7939_g83150;
				#else
				float staticSwitch7922_g83150 = Blend_MaskRemap_Detail6621_g83150;
				#endif
				half Blend_ColorsMask_Terrain7921_g83150 = staticSwitch7922_g83150;
				half Colors_Value3692_g83150 = ( Blend_ColorsMask_Terrain7921_g83150 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g83150 = ( ObjectPosition4223_g83150 - TVE_WorldOrigin );
				half3 Input_Position167_g83244 = ObjectPosition_Shifted7481_g83150;
				float dotResult156_g83244 = dot( (Input_Position167_g83244).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g83150 = _VertexDynamicMode;
				half Input_DynamicMode120_g83244 = Vertex_DynamicMode5112_g83150;
				float Postion_Random162_g83244 = ( sin( dotResult156_g83244 ) * ( 1.0 - Input_DynamicMode120_g83244 ) );
				float Mesh_Variation16_g83150 = IN.ase_color.r;
				half Input_Variation124_g83244 = Mesh_Variation16_g83150;
				half ObjectData20_g83246 = frac( ( Postion_Random162_g83244 + Input_Variation124_g83244 ) );
				half WorldData19_g83246 = Input_Variation124_g83244;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83246 = WorldData19_g83246;
				#else
				float staticSwitch14_g83246 = ObjectData20_g83246;
				#endif
				float temp_output_112_0_g83244 = staticSwitch14_g83246;
				float clampResult171_g83244 = clamp( temp_output_112_0_g83244 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g83150 = clampResult171_g83244;
				float lerpResult3870_g83150 = lerp( 1.0 , Global_MeshVariation5104_g83150 , _ColorsVariationValue);
				half Colors_Variation3650_g83150 = lerpResult3870_g83150;
				half Occlusion_Alpha6463_g83150 = _VertexOcclusionColor.a;
				float lerpResult8028_g83150 = lerp( Occlusion_Mask6432_g83150 , ( 1.0 - Occlusion_Mask6432_g83150 ) , _VertexOcclusionColorsMode);
				float lerpResult8026_g83150 = lerp( Occlusion_Alpha6463_g83150 , 1.0 , lerpResult8028_g83150);
				half Occlusion_Colors6450_g83150 = lerpResult8026_g83150;
				float3 temp_output_3_0_g83278 = ( Blend_Albedo_Terrain7752_g83150 * Tint_Gradient_Color5769_g83150 * Tint_Noise_Color5770_g83150 * Tint_User_Color7335_g83150 );
				float dotResult20_g83278 = dot( temp_output_3_0_g83278 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g83150 = clamp( saturate( ( dotResult20_g83278 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g83150 = clampResult6740_g83150;
				float temp_output_7_0_g83274 = 0.1;
				float temp_output_10_0_g83274 = ( 0.2 - temp_output_7_0_g83274 );
				float lerpResult16_g83267 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g83150 * Colors_Influence3668_g83150 * Colors_Variation3650_g83150 * Occlusion_Colors6450_g83150 * Blend_Albedo_Globals6410_g83150 ) - temp_output_7_0_g83274 ) / ( temp_output_10_0_g83274 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g83150 = lerp( Blend_Albedo_Terrain7752_g83150 , ( lerpResult3618_g83150 * Colors_RGB1954_g83150 ) , lerpResult16_g83267);
				half3 Blend_Albedo_Colored_High6027_g83150 = lerpResult3628_g83150;
				half3 Blend_Albedo_Colored863_g83150 = Blend_Albedo_Colored_High6027_g83150;
				half3 Global_OverlayColor1758_g83150 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g83164 = _LayerExtrasValue;
				float temp_output_19_0_g83168 = TVE_ExtrasUsage[(int)temp_output_84_0_g83164];
				float4 temp_output_93_19_g83164 = TVE_ExtrasCoords;
				float3 lerpResult4827_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _ExtrasPositionMode);
				half2 UV96_g83164 = ( (temp_output_93_19_g83164).zw + ( (temp_output_93_19_g83164).xy * (lerpResult4827_g83150).xz ) );
				float4 tex2DArrayNode48_g83164 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g83164,temp_output_84_0_g83164), 0.0 );
				float4 temp_output_17_0_g83168 = tex2DArrayNode48_g83164;
				float4 temp_output_94_85_g83164 = TVE_ExtrasParams;
				float4 temp_output_3_0_g83168 = temp_output_94_85_g83164;
				float4 ifLocalVar18_g83168 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83168 >= 0.5 )
				ifLocalVar18_g83168 = temp_output_17_0_g83168;
				else
				ifLocalVar18_g83168 = temp_output_3_0_g83168;
				float4 lerpResult22_g83168 = lerp( temp_output_3_0_g83168 , temp_output_17_0_g83168 , temp_output_19_0_g83168);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83168 = lerpResult22_g83168;
				#else
				float4 staticSwitch24_g83168 = ifLocalVar18_g83168;
				#endif
				half4 Global_Extras_Params5440_g83150 = staticSwitch24_g83168;
				float4 break456_g83177 = Global_Extras_Params5440_g83150;
				half Global_Extras_Overlay156_g83150 = break456_g83177.z;
				float lerpResult1065_g83150 = lerp( 1.0 , Global_MeshVariation5104_g83150 , _OverlayVariationValue);
				half Overlay_Variation4560_g83150 = lerpResult1065_g83150;
				half Overlay_Value5738_g83150 = ( _GlobalOverlay * Global_Extras_Overlay156_g83150 * Overlay_Variation4560_g83150 );
				half4 Weights52_g83652 = Terrain_Weights_046781_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83700) = _NormalTex1;
				SamplerState Sampler238_g83700 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83700 = Input_Coords_016785_g83651;
				half4 Coords238_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition238_g83700 = worldPos;
				half4 localSamplePlanar2D238_g83700 = SamplePlanar2D( Texture238_g83700 , Sampler238_g83700 , Coords238_g83700 , WorldPosition238_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83700) = _NormalTex1;
				SamplerState Sampler246_g83700 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition246_g83700 = worldPos;
				half3 WorldNormal246_g83700 = WorldNormal;
				half4 localSamplePlanar3D246_g83700 = SamplePlanar3D( Texture246_g83700 , Sampler246_g83700 , Coords246_g83700 , WorldPosition246_g83700 , WorldNormal246_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83700) = _NormalTex1;
				SamplerState Sampler234_g83700 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83700 = temp_output_37_0_g83700;
				float3 WorldPosition234_g83700 = worldPos;
				float4 localSampleStochastic2D234_g83700 = SampleStochastic2D( Texture234_g83700 , Sampler234_g83700 , Coords234_g83700 , WorldPosition234_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83700) = _NormalTex1;
				SamplerState Sampler263_g83700 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition263_g83700 = worldPos;
				half3 WorldNormal263_g83700 = WorldNormal;
				half4 localSampleStochastic3D263_g83700 = SampleStochastic3D( Texture263_g83700 , Sampler263_g83700 , Coords263_g83700 , WorldPosition263_g83700 , WorldNormal263_g83700 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8635_g83651 = localSamplePlanar2D238_g83700;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8635_g83651 = localSamplePlanar3D246_g83700;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8635_g83651 = localSampleStochastic2D234_g83700;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8635_g83651 = localSampleStochastic3D263_g83700;
				#else
				float4 staticSwitch8635_g83651 = localSamplePlanar2D238_g83700;
				#endif
				half4 Layer133_g83652 = staticSwitch8635_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83701) = _NormalTex2;
				SamplerState Sampler238_g83701 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83701 = Input_Coords_026787_g83651;
				half4 Coords238_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition238_g83701 = worldPos;
				half4 localSamplePlanar2D238_g83701 = SamplePlanar2D( Texture238_g83701 , Sampler238_g83701 , Coords238_g83701 , WorldPosition238_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83701) = _NormalTex2;
				SamplerState Sampler246_g83701 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition246_g83701 = worldPos;
				half3 WorldNormal246_g83701 = WorldNormal;
				half4 localSamplePlanar3D246_g83701 = SamplePlanar3D( Texture246_g83701 , Sampler246_g83701 , Coords246_g83701 , WorldPosition246_g83701 , WorldNormal246_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83701) = _NormalTex2;
				SamplerState Sampler234_g83701 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83701 = temp_output_37_0_g83701;
				float3 WorldPosition234_g83701 = worldPos;
				float4 localSampleStochastic2D234_g83701 = SampleStochastic2D( Texture234_g83701 , Sampler234_g83701 , Coords234_g83701 , WorldPosition234_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83701) = _NormalTex2;
				SamplerState Sampler263_g83701 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition263_g83701 = worldPos;
				half3 WorldNormal263_g83701 = WorldNormal;
				half4 localSampleStochastic3D263_g83701 = SampleStochastic3D( Texture263_g83701 , Sampler263_g83701 , Coords263_g83701 , WorldPosition263_g83701 , WorldNormal263_g83701 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8636_g83651 = localSamplePlanar2D238_g83701;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8636_g83651 = localSamplePlanar3D246_g83701;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8636_g83651 = localSampleStochastic2D234_g83701;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8636_g83651 = localSampleStochastic3D263_g83701;
				#else
				float4 staticSwitch8636_g83651 = localSamplePlanar2D238_g83701;
				#endif
				half4 Layer237_g83652 = staticSwitch8636_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83702) = _NormalTex3;
				SamplerState Sampler238_g83702 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83702 = Input_Coords_036789_g83651;
				half4 Coords238_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition238_g83702 = worldPos;
				half4 localSamplePlanar2D238_g83702 = SamplePlanar2D( Texture238_g83702 , Sampler238_g83702 , Coords238_g83702 , WorldPosition238_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83702) = _NormalTex3;
				SamplerState Sampler246_g83702 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition246_g83702 = worldPos;
				half3 WorldNormal246_g83702 = WorldNormal;
				half4 localSamplePlanar3D246_g83702 = SamplePlanar3D( Texture246_g83702 , Sampler246_g83702 , Coords246_g83702 , WorldPosition246_g83702 , WorldNormal246_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83702) = _NormalTex3;
				SamplerState Sampler234_g83702 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83702 = temp_output_37_0_g83702;
				float3 WorldPosition234_g83702 = worldPos;
				float4 localSampleStochastic2D234_g83702 = SampleStochastic2D( Texture234_g83702 , Sampler234_g83702 , Coords234_g83702 , WorldPosition234_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83702) = _NormalTex3;
				SamplerState Sampler263_g83702 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition263_g83702 = worldPos;
				half3 WorldNormal263_g83702 = WorldNormal;
				half4 localSampleStochastic3D263_g83702 = SampleStochastic3D( Texture263_g83702 , Sampler263_g83702 , Coords263_g83702 , WorldPosition263_g83702 , WorldNormal263_g83702 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8637_g83651 = localSamplePlanar2D238_g83702;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8637_g83651 = localSamplePlanar3D246_g83702;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8637_g83651 = localSampleStochastic2D234_g83702;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8637_g83651 = localSampleStochastic3D263_g83702;
				#else
				float4 staticSwitch8637_g83651 = localSamplePlanar2D238_g83702;
				#endif
				half4 Layer338_g83652 = staticSwitch8637_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83703) = _NormalTex4;
				SamplerState Sampler238_g83703 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83703 = Input_Coords_046791_g83651;
				half4 Coords238_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition238_g83703 = worldPos;
				half4 localSamplePlanar2D238_g83703 = SamplePlanar2D( Texture238_g83703 , Sampler238_g83703 , Coords238_g83703 , WorldPosition238_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83703) = _NormalTex4;
				SamplerState Sampler246_g83703 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition246_g83703 = worldPos;
				half3 WorldNormal246_g83703 = WorldNormal;
				half4 localSamplePlanar3D246_g83703 = SamplePlanar3D( Texture246_g83703 , Sampler246_g83703 , Coords246_g83703 , WorldPosition246_g83703 , WorldNormal246_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83703) = _NormalTex4;
				SamplerState Sampler234_g83703 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83703 = temp_output_37_0_g83703;
				float3 WorldPosition234_g83703 = worldPos;
				float4 localSampleStochastic2D234_g83703 = SampleStochastic2D( Texture234_g83703 , Sampler234_g83703 , Coords234_g83703 , WorldPosition234_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83703) = _NormalTex4;
				SamplerState Sampler263_g83703 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition263_g83703 = worldPos;
				half3 WorldNormal263_g83703 = WorldNormal;
				half4 localSampleStochastic3D263_g83703 = SampleStochastic3D( Texture263_g83703 , Sampler263_g83703 , Coords263_g83703 , WorldPosition263_g83703 , WorldNormal263_g83703 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8638_g83651 = localSamplePlanar2D238_g83703;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8638_g83651 = localSamplePlanar3D246_g83703;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8638_g83651 = localSampleStochastic2D234_g83703;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8638_g83651 = localSampleStochastic3D263_g83703;
				#else
				float4 staticSwitch8638_g83651 = localSamplePlanar2D238_g83703;
				#endif
				half4 Layer439_g83652 = staticSwitch8638_g83651;
				float4 weightedBlendVar31_g83652 = Weights52_g83652;
				float4 weightedBlend31_g83652 = ( weightedBlendVar31_g83652.x*Layer133_g83652 + weightedBlendVar31_g83652.y*Layer237_g83652 + weightedBlendVar31_g83652.z*Layer338_g83652 + weightedBlendVar31_g83652.w*Layer439_g83652 );
				half4 Terrain_Normal_047202_g83651 = weightedBlend31_g83652;
				half4 Layer_045_g83662 = Terrain_Normal_047202_g83651;
				half4 Weights52_g83668 = Terrain_Weights_087340_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83712) = _NormalTex5;
				SamplerState Sampler238_g83712 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83712 = Input_Coords_058750_g83651;
				half4 Coords238_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition238_g83712 = worldPos;
				half4 localSamplePlanar2D238_g83712 = SamplePlanar2D( Texture238_g83712 , Sampler238_g83712 , Coords238_g83712 , WorldPosition238_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83712) = _NormalTex5;
				SamplerState Sampler246_g83712 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition246_g83712 = worldPos;
				half3 WorldNormal246_g83712 = WorldNormal;
				half4 localSamplePlanar3D246_g83712 = SamplePlanar3D( Texture246_g83712 , Sampler246_g83712 , Coords246_g83712 , WorldPosition246_g83712 , WorldNormal246_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83712) = _NormalTex5;
				SamplerState Sampler234_g83712 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83712 = temp_output_37_0_g83712;
				float3 WorldPosition234_g83712 = worldPos;
				float4 localSampleStochastic2D234_g83712 = SampleStochastic2D( Texture234_g83712 , Sampler234_g83712 , Coords234_g83712 , WorldPosition234_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83712) = _NormalTex5;
				SamplerState Sampler263_g83712 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition263_g83712 = worldPos;
				half3 WorldNormal263_g83712 = WorldNormal;
				half4 localSampleStochastic3D263_g83712 = SampleStochastic3D( Texture263_g83712 , Sampler263_g83712 , Coords263_g83712 , WorldPosition263_g83712 , WorldNormal263_g83712 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8686_g83651 = localSamplePlanar2D238_g83712;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8686_g83651 = localSamplePlanar3D246_g83712;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8686_g83651 = localSampleStochastic2D234_g83712;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8686_g83651 = localSampleStochastic3D263_g83712;
				#else
				float4 staticSwitch8686_g83651 = localSamplePlanar2D238_g83712;
				#endif
				half4 Layer133_g83668 = staticSwitch8686_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83713) = _NormalTex6;
				SamplerState Sampler238_g83713 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83713 = Input_Coords_068751_g83651;
				half4 Coords238_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition238_g83713 = worldPos;
				half4 localSamplePlanar2D238_g83713 = SamplePlanar2D( Texture238_g83713 , Sampler238_g83713 , Coords238_g83713 , WorldPosition238_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83713) = _NormalTex6;
				SamplerState Sampler246_g83713 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition246_g83713 = worldPos;
				half3 WorldNormal246_g83713 = WorldNormal;
				half4 localSamplePlanar3D246_g83713 = SamplePlanar3D( Texture246_g83713 , Sampler246_g83713 , Coords246_g83713 , WorldPosition246_g83713 , WorldNormal246_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83713) = _NormalTex6;
				SamplerState Sampler234_g83713 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83713 = temp_output_37_0_g83713;
				float3 WorldPosition234_g83713 = worldPos;
				float4 localSampleStochastic2D234_g83713 = SampleStochastic2D( Texture234_g83713 , Sampler234_g83713 , Coords234_g83713 , WorldPosition234_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83713) = _NormalTex6;
				SamplerState Sampler263_g83713 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition263_g83713 = worldPos;
				half3 WorldNormal263_g83713 = WorldNormal;
				half4 localSampleStochastic3D263_g83713 = SampleStochastic3D( Texture263_g83713 , Sampler263_g83713 , Coords263_g83713 , WorldPosition263_g83713 , WorldNormal263_g83713 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8687_g83651 = localSamplePlanar2D238_g83713;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8687_g83651 = localSamplePlanar3D246_g83713;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8687_g83651 = localSampleStochastic2D234_g83713;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8687_g83651 = localSampleStochastic3D263_g83713;
				#else
				float4 staticSwitch8687_g83651 = localSamplePlanar2D238_g83713;
				#endif
				half4 Layer237_g83668 = staticSwitch8687_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83714) = _NormalTex7;
				SamplerState Sampler238_g83714 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83714 = Input_Coords_078752_g83651;
				half4 Coords238_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition238_g83714 = worldPos;
				half4 localSamplePlanar2D238_g83714 = SamplePlanar2D( Texture238_g83714 , Sampler238_g83714 , Coords238_g83714 , WorldPosition238_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83714) = _NormalTex7;
				SamplerState Sampler246_g83714 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition246_g83714 = worldPos;
				half3 WorldNormal246_g83714 = WorldNormal;
				half4 localSamplePlanar3D246_g83714 = SamplePlanar3D( Texture246_g83714 , Sampler246_g83714 , Coords246_g83714 , WorldPosition246_g83714 , WorldNormal246_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83714) = _NormalTex7;
				SamplerState Sampler234_g83714 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83714 = temp_output_37_0_g83714;
				float3 WorldPosition234_g83714 = worldPos;
				float4 localSampleStochastic2D234_g83714 = SampleStochastic2D( Texture234_g83714 , Sampler234_g83714 , Coords234_g83714 , WorldPosition234_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83714) = _NormalTex7;
				SamplerState Sampler263_g83714 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition263_g83714 = worldPos;
				half3 WorldNormal263_g83714 = WorldNormal;
				half4 localSampleStochastic3D263_g83714 = SampleStochastic3D( Texture263_g83714 , Sampler263_g83714 , Coords263_g83714 , WorldPosition263_g83714 , WorldNormal263_g83714 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8688_g83651 = localSamplePlanar2D238_g83714;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8688_g83651 = localSamplePlanar3D246_g83714;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8688_g83651 = localSampleStochastic2D234_g83714;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8688_g83651 = localSampleStochastic3D263_g83714;
				#else
				float4 staticSwitch8688_g83651 = localSamplePlanar2D238_g83714;
				#endif
				half4 Layer338_g83668 = staticSwitch8688_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83715) = _NormalTex8;
				SamplerState Sampler238_g83715 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83715 = Input_Coords_088749_g83651;
				half4 Coords238_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition238_g83715 = worldPos;
				half4 localSamplePlanar2D238_g83715 = SamplePlanar2D( Texture238_g83715 , Sampler238_g83715 , Coords238_g83715 , WorldPosition238_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83715) = _NormalTex8;
				SamplerState Sampler246_g83715 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition246_g83715 = worldPos;
				half3 WorldNormal246_g83715 = WorldNormal;
				half4 localSamplePlanar3D246_g83715 = SamplePlanar3D( Texture246_g83715 , Sampler246_g83715 , Coords246_g83715 , WorldPosition246_g83715 , WorldNormal246_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83715) = _NormalTex8;
				SamplerState Sampler234_g83715 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83715 = temp_output_37_0_g83715;
				float3 WorldPosition234_g83715 = worldPos;
				float4 localSampleStochastic2D234_g83715 = SampleStochastic2D( Texture234_g83715 , Sampler234_g83715 , Coords234_g83715 , WorldPosition234_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83715) = _NormalTex8;
				SamplerState Sampler263_g83715 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition263_g83715 = worldPos;
				half3 WorldNormal263_g83715 = WorldNormal;
				half4 localSampleStochastic3D263_g83715 = SampleStochastic3D( Texture263_g83715 , Sampler263_g83715 , Coords263_g83715 , WorldPosition263_g83715 , WorldNormal263_g83715 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8689_g83651 = localSamplePlanar2D238_g83715;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8689_g83651 = localSamplePlanar3D246_g83715;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8689_g83651 = localSampleStochastic2D234_g83715;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8689_g83651 = localSampleStochastic3D263_g83715;
				#else
				float4 staticSwitch8689_g83651 = localSamplePlanar2D238_g83715;
				#endif
				half4 Layer439_g83668 = staticSwitch8689_g83651;
				float4 weightedBlendVar31_g83668 = Weights52_g83668;
				float4 weightedBlend31_g83668 = ( weightedBlendVar31_g83668.x*Layer133_g83668 + weightedBlendVar31_g83668.y*Layer237_g83668 + weightedBlendVar31_g83668.z*Layer338_g83668 + weightedBlendVar31_g83668.w*Layer439_g83668 );
				half4 Terrain_Normal_088684_g83651 = weightedBlend31_g83668;
				half4 Layer_0810_g83662 = Terrain_Normal_088684_g83651;
				half4 Weights52_g83678 = Terrain_Weights_127710_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83724) = _NormalTex9;
				SamplerState Sampler238_g83724 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83724 = Input_Coords_098833_g83651;
				half4 Coords238_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition238_g83724 = worldPos;
				half4 localSamplePlanar2D238_g83724 = SamplePlanar2D( Texture238_g83724 , Sampler238_g83724 , Coords238_g83724 , WorldPosition238_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83724) = _NormalTex9;
				SamplerState Sampler246_g83724 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition246_g83724 = worldPos;
				half3 WorldNormal246_g83724 = WorldNormal;
				half4 localSamplePlanar3D246_g83724 = SamplePlanar3D( Texture246_g83724 , Sampler246_g83724 , Coords246_g83724 , WorldPosition246_g83724 , WorldNormal246_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83724) = _NormalTex9;
				SamplerState Sampler234_g83724 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83724 = temp_output_37_0_g83724;
				float3 WorldPosition234_g83724 = worldPos;
				float4 localSampleStochastic2D234_g83724 = SampleStochastic2D( Texture234_g83724 , Sampler234_g83724 , Coords234_g83724 , WorldPosition234_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83724) = _NormalTex9;
				SamplerState Sampler263_g83724 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition263_g83724 = worldPos;
				half3 WorldNormal263_g83724 = WorldNormal;
				half4 localSampleStochastic3D263_g83724 = SampleStochastic3D( Texture263_g83724 , Sampler263_g83724 , Coords263_g83724 , WorldPosition263_g83724 , WorldNormal263_g83724 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8849_g83651 = localSamplePlanar2D238_g83724;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8849_g83651 = localSamplePlanar3D246_g83724;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8849_g83651 = localSampleStochastic2D234_g83724;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8849_g83651 = localSampleStochastic3D263_g83724;
				#else
				float4 staticSwitch8849_g83651 = localSamplePlanar2D238_g83724;
				#endif
				half4 Layer133_g83678 = staticSwitch8849_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83725) = _NormalTex10;
				SamplerState Sampler238_g83725 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83725 = Input_Coords_108834_g83651;
				half4 Coords238_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition238_g83725 = worldPos;
				half4 localSamplePlanar2D238_g83725 = SamplePlanar2D( Texture238_g83725 , Sampler238_g83725 , Coords238_g83725 , WorldPosition238_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83725) = _NormalTex10;
				SamplerState Sampler246_g83725 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition246_g83725 = worldPos;
				half3 WorldNormal246_g83725 = WorldNormal;
				half4 localSamplePlanar3D246_g83725 = SamplePlanar3D( Texture246_g83725 , Sampler246_g83725 , Coords246_g83725 , WorldPosition246_g83725 , WorldNormal246_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83725) = _NormalTex10;
				SamplerState Sampler234_g83725 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83725 = temp_output_37_0_g83725;
				float3 WorldPosition234_g83725 = worldPos;
				float4 localSampleStochastic2D234_g83725 = SampleStochastic2D( Texture234_g83725 , Sampler234_g83725 , Coords234_g83725 , WorldPosition234_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83725) = _NormalTex10;
				SamplerState Sampler263_g83725 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition263_g83725 = worldPos;
				half3 WorldNormal263_g83725 = WorldNormal;
				half4 localSampleStochastic3D263_g83725 = SampleStochastic3D( Texture263_g83725 , Sampler263_g83725 , Coords263_g83725 , WorldPosition263_g83725 , WorldNormal263_g83725 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8876_g83651 = localSamplePlanar2D238_g83725;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8876_g83651 = localSamplePlanar3D246_g83725;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8876_g83651 = localSampleStochastic2D234_g83725;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8876_g83651 = localSampleStochastic3D263_g83725;
				#else
				float4 staticSwitch8876_g83651 = localSamplePlanar2D238_g83725;
				#endif
				half4 Layer237_g83678 = staticSwitch8876_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83726) = _NormalTex11;
				SamplerState Sampler238_g83726 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83726 = Input_Coords_118835_g83651;
				half4 Coords238_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition238_g83726 = worldPos;
				half4 localSamplePlanar2D238_g83726 = SamplePlanar2D( Texture238_g83726 , Sampler238_g83726 , Coords238_g83726 , WorldPosition238_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83726) = _NormalTex11;
				SamplerState Sampler246_g83726 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition246_g83726 = worldPos;
				half3 WorldNormal246_g83726 = WorldNormal;
				half4 localSamplePlanar3D246_g83726 = SamplePlanar3D( Texture246_g83726 , Sampler246_g83726 , Coords246_g83726 , WorldPosition246_g83726 , WorldNormal246_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83726) = _NormalTex11;
				SamplerState Sampler234_g83726 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83726 = temp_output_37_0_g83726;
				float3 WorldPosition234_g83726 = worldPos;
				float4 localSampleStochastic2D234_g83726 = SampleStochastic2D( Texture234_g83726 , Sampler234_g83726 , Coords234_g83726 , WorldPosition234_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83726) = _NormalTex11;
				SamplerState Sampler263_g83726 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition263_g83726 = worldPos;
				half3 WorldNormal263_g83726 = WorldNormal;
				half4 localSampleStochastic3D263_g83726 = SampleStochastic3D( Texture263_g83726 , Sampler263_g83726 , Coords263_g83726 , WorldPosition263_g83726 , WorldNormal263_g83726 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8850_g83651 = localSamplePlanar2D238_g83726;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8850_g83651 = localSamplePlanar3D246_g83726;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8850_g83651 = localSampleStochastic2D234_g83726;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8850_g83651 = localSampleStochastic3D263_g83726;
				#else
				float4 staticSwitch8850_g83651 = localSamplePlanar2D238_g83726;
				#endif
				half4 Layer338_g83678 = staticSwitch8850_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83727) = _NormalTex12;
				SamplerState Sampler238_g83727 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83727 = Input_Coords_128836_g83651;
				half4 Coords238_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition238_g83727 = worldPos;
				half4 localSamplePlanar2D238_g83727 = SamplePlanar2D( Texture238_g83727 , Sampler238_g83727 , Coords238_g83727 , WorldPosition238_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83727) = _NormalTex12;
				SamplerState Sampler246_g83727 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition246_g83727 = worldPos;
				half3 WorldNormal246_g83727 = WorldNormal;
				half4 localSamplePlanar3D246_g83727 = SamplePlanar3D( Texture246_g83727 , Sampler246_g83727 , Coords246_g83727 , WorldPosition246_g83727 , WorldNormal246_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83727) = _NormalTex12;
				SamplerState Sampler234_g83727 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83727 = temp_output_37_0_g83727;
				float3 WorldPosition234_g83727 = worldPos;
				float4 localSampleStochastic2D234_g83727 = SampleStochastic2D( Texture234_g83727 , Sampler234_g83727 , Coords234_g83727 , WorldPosition234_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83727) = _NormalTex12;
				SamplerState Sampler263_g83727 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition263_g83727 = worldPos;
				half3 WorldNormal263_g83727 = WorldNormal;
				half4 localSampleStochastic3D263_g83727 = SampleStochastic3D( Texture263_g83727 , Sampler263_g83727 , Coords263_g83727 , WorldPosition263_g83727 , WorldNormal263_g83727 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8877_g83651 = localSamplePlanar2D238_g83727;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8877_g83651 = localSamplePlanar3D246_g83727;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8877_g83651 = localSampleStochastic2D234_g83727;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8877_g83651 = localSampleStochastic3D263_g83727;
				#else
				float4 staticSwitch8877_g83651 = localSamplePlanar2D238_g83727;
				#endif
				half4 Layer439_g83678 = staticSwitch8877_g83651;
				float4 weightedBlendVar31_g83678 = Weights52_g83678;
				float4 weightedBlend31_g83678 = ( weightedBlendVar31_g83678.x*Layer133_g83678 + weightedBlendVar31_g83678.y*Layer237_g83678 + weightedBlendVar31_g83678.z*Layer338_g83678 + weightedBlendVar31_g83678.w*Layer439_g83678 );
				half4 Terrain_Normal_128865_g83651 = weightedBlend31_g83678;
				half4 Layer_1243_g83662 = Terrain_Normal_128865_g83651;
				half4 Weights52_g83688 = Terrain_Weights_167709_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83743) = _NormalTex13;
				SamplerState Sampler238_g83743 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83743 = Input_Coords_138960_g83651;
				half4 Coords238_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition238_g83743 = worldPos;
				half4 localSamplePlanar2D238_g83743 = SamplePlanar2D( Texture238_g83743 , Sampler238_g83743 , Coords238_g83743 , WorldPosition238_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83743) = _NormalTex13;
				SamplerState Sampler246_g83743 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition246_g83743 = worldPos;
				half3 WorldNormal246_g83743 = WorldNormal;
				half4 localSamplePlanar3D246_g83743 = SamplePlanar3D( Texture246_g83743 , Sampler246_g83743 , Coords246_g83743 , WorldPosition246_g83743 , WorldNormal246_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83743) = _NormalTex13;
				SamplerState Sampler234_g83743 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83743 = temp_output_37_0_g83743;
				float3 WorldPosition234_g83743 = worldPos;
				float4 localSampleStochastic2D234_g83743 = SampleStochastic2D( Texture234_g83743 , Sampler234_g83743 , Coords234_g83743 , WorldPosition234_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83743) = _NormalTex13;
				SamplerState Sampler263_g83743 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition263_g83743 = worldPos;
				half3 WorldNormal263_g83743 = WorldNormal;
				half4 localSampleStochastic3D263_g83743 = SampleStochastic3D( Texture263_g83743 , Sampler263_g83743 , Coords263_g83743 , WorldPosition263_g83743 , WorldNormal263_g83743 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch8991_g83651 = localSamplePlanar2D238_g83743;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch8991_g83651 = localSamplePlanar3D246_g83743;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch8991_g83651 = localSampleStochastic2D234_g83743;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch8991_g83651 = localSampleStochastic3D263_g83743;
				#else
				float4 staticSwitch8991_g83651 = localSamplePlanar2D238_g83743;
				#endif
				half4 Layer133_g83688 = staticSwitch8991_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83736) = _NormalTex14;
				SamplerState Sampler238_g83736 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83736 = Input_Coords_148961_g83651;
				half4 Coords238_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition238_g83736 = worldPos;
				half4 localSamplePlanar2D238_g83736 = SamplePlanar2D( Texture238_g83736 , Sampler238_g83736 , Coords238_g83736 , WorldPosition238_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83736) = _NormalTex14;
				SamplerState Sampler246_g83736 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition246_g83736 = worldPos;
				half3 WorldNormal246_g83736 = WorldNormal;
				half4 localSamplePlanar3D246_g83736 = SamplePlanar3D( Texture246_g83736 , Sampler246_g83736 , Coords246_g83736 , WorldPosition246_g83736 , WorldNormal246_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83736) = _NormalTex14;
				SamplerState Sampler234_g83736 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83736 = temp_output_37_0_g83736;
				float3 WorldPosition234_g83736 = worldPos;
				float4 localSampleStochastic2D234_g83736 = SampleStochastic2D( Texture234_g83736 , Sampler234_g83736 , Coords234_g83736 , WorldPosition234_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83736) = _NormalTex14;
				SamplerState Sampler263_g83736 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition263_g83736 = worldPos;
				half3 WorldNormal263_g83736 = WorldNormal;
				half4 localSampleStochastic3D263_g83736 = SampleStochastic3D( Texture263_g83736 , Sampler263_g83736 , Coords263_g83736 , WorldPosition263_g83736 , WorldNormal263_g83736 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch8990_g83651 = localSamplePlanar2D238_g83736;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch8990_g83651 = localSamplePlanar3D246_g83736;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch8990_g83651 = localSampleStochastic2D234_g83736;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch8990_g83651 = localSampleStochastic3D263_g83736;
				#else
				float4 staticSwitch8990_g83651 = localSamplePlanar2D238_g83736;
				#endif
				half4 Layer237_g83688 = staticSwitch8990_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83737) = _NormalTex15;
				SamplerState Sampler238_g83737 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83737 = Input_Coords_158962_g83651;
				half4 Coords238_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition238_g83737 = worldPos;
				half4 localSamplePlanar2D238_g83737 = SamplePlanar2D( Texture238_g83737 , Sampler238_g83737 , Coords238_g83737 , WorldPosition238_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83737) = _NormalTex15;
				SamplerState Sampler246_g83737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition246_g83737 = worldPos;
				half3 WorldNormal246_g83737 = WorldNormal;
				half4 localSamplePlanar3D246_g83737 = SamplePlanar3D( Texture246_g83737 , Sampler246_g83737 , Coords246_g83737 , WorldPosition246_g83737 , WorldNormal246_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83737) = _NormalTex15;
				SamplerState Sampler234_g83737 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83737 = temp_output_37_0_g83737;
				float3 WorldPosition234_g83737 = worldPos;
				float4 localSampleStochastic2D234_g83737 = SampleStochastic2D( Texture234_g83737 , Sampler234_g83737 , Coords234_g83737 , WorldPosition234_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83737) = _NormalTex15;
				SamplerState Sampler263_g83737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition263_g83737 = worldPos;
				half3 WorldNormal263_g83737 = WorldNormal;
				half4 localSampleStochastic3D263_g83737 = SampleStochastic3D( Texture263_g83737 , Sampler263_g83737 , Coords263_g83737 , WorldPosition263_g83737 , WorldNormal263_g83737 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch8989_g83651 = localSamplePlanar2D238_g83737;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch8989_g83651 = localSamplePlanar3D246_g83737;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch8989_g83651 = localSampleStochastic2D234_g83737;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch8989_g83651 = localSampleStochastic3D263_g83737;
				#else
				float4 staticSwitch8989_g83651 = localSamplePlanar2D238_g83737;
				#endif
				half4 Layer338_g83688 = staticSwitch8989_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83738) = _NormalTex16;
				SamplerState Sampler238_g83738 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83738 = Input_Coords_168959_g83651;
				half4 Coords238_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition238_g83738 = worldPos;
				half4 localSamplePlanar2D238_g83738 = SamplePlanar2D( Texture238_g83738 , Sampler238_g83738 , Coords238_g83738 , WorldPosition238_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83738) = _NormalTex16;
				SamplerState Sampler246_g83738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition246_g83738 = worldPos;
				half3 WorldNormal246_g83738 = WorldNormal;
				half4 localSamplePlanar3D246_g83738 = SamplePlanar3D( Texture246_g83738 , Sampler246_g83738 , Coords246_g83738 , WorldPosition246_g83738 , WorldNormal246_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83738) = _NormalTex16;
				SamplerState Sampler234_g83738 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83738 = temp_output_37_0_g83738;
				float3 WorldPosition234_g83738 = worldPos;
				float4 localSampleStochastic2D234_g83738 = SampleStochastic2D( Texture234_g83738 , Sampler234_g83738 , Coords234_g83738 , WorldPosition234_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83738) = _NormalTex16;
				SamplerState Sampler263_g83738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition263_g83738 = worldPos;
				half3 WorldNormal263_g83738 = WorldNormal;
				half4 localSampleStochastic3D263_g83738 = SampleStochastic3D( Texture263_g83738 , Sampler263_g83738 , Coords263_g83738 , WorldPosition263_g83738 , WorldNormal263_g83738 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch8988_g83651 = localSamplePlanar2D238_g83738;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch8988_g83651 = localSamplePlanar3D246_g83738;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch8988_g83651 = localSampleStochastic2D234_g83738;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch8988_g83651 = localSampleStochastic3D263_g83738;
				#else
				float4 staticSwitch8988_g83651 = localSamplePlanar2D238_g83738;
				#endif
				half4 Layer439_g83688 = staticSwitch8988_g83651;
				float4 weightedBlendVar31_g83688 = Weights52_g83688;
				float4 weightedBlend31_g83688 = ( weightedBlendVar31_g83688.x*Layer133_g83688 + weightedBlendVar31_g83688.y*Layer237_g83688 + weightedBlendVar31_g83688.z*Layer338_g83688 + weightedBlendVar31_g83688.w*Layer439_g83688 );
				half4 Terrain_Normal_168987_g83651 = weightedBlend31_g83688;
				half4 Layer_1644_g83662 = Terrain_Normal_168987_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83662 = Layer_045_g83662;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 + Layer_1243_g83662 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 + Layer_1243_g83662 + Layer_1644_g83662 );
				#else
				float4 staticSwitch40_g83662 = Layer_045_g83662;
				#endif
				half4 Blend_Normal7512_g83651 = staticSwitch40_g83662;
				half4 Normal_Packed45_g83746 = Blend_Normal7512_g83651;
				float2 appendResult58_g83746 = (float2(( (Normal_Packed45_g83746).x * (Normal_Packed45_g83746).w ) , (Normal_Packed45_g83746).y));
				half2 Normal_Default50_g83746 = appendResult58_g83746;
				half2 Normal_ASTC41_g83746 = (Normal_Packed45_g83746).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83746 = Normal_ASTC41_g83746;
				#else
				float2 staticSwitch38_g83746 = Normal_Default50_g83746;
				#endif
				half2 Normal_NO_DTX544_g83746 = (Normal_Packed45_g83746).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83746 = Normal_NO_DTX544_g83746;
				#else
				float2 staticSwitch37_g83746 = staticSwitch38_g83746;
				#endif
				half4 Weights52_g83654 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83654 = temp_output_6970_0_g83651;
				half4 Layer237_g83654 = temp_output_6977_0_g83651;
				half4 Layer338_g83654 = temp_output_6978_0_g83651;
				half4 Layer439_g83654 = temp_output_6983_0_g83651;
				float4 weightedBlendVar31_g83654 = Weights52_g83654;
				float4 weightedBlend31_g83654 = ( weightedBlendVar31_g83654.x*Layer133_g83654 + weightedBlendVar31_g83654.y*Layer237_g83654 + weightedBlendVar31_g83654.z*Layer338_g83654 + weightedBlendVar31_g83654.w*Layer439_g83654 );
				half4 Terrain_Masks_047203_g83651 = weightedBlend31_g83654;
				half4 Layer_045_g83664 = Terrain_Masks_047203_g83651;
				half4 Weights52_g83671 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83671 = temp_output_8714_0_g83651;
				half4 Layer237_g83671 = temp_output_8721_0_g83651;
				half4 Layer338_g83671 = temp_output_8724_0_g83651;
				half4 Layer439_g83671 = temp_output_8727_0_g83651;
				float4 weightedBlendVar31_g83671 = Weights52_g83671;
				float4 weightedBlend31_g83671 = ( weightedBlendVar31_g83671.x*Layer133_g83671 + weightedBlendVar31_g83671.y*Layer237_g83671 + weightedBlendVar31_g83671.z*Layer338_g83671 + weightedBlendVar31_g83671.w*Layer439_g83671 );
				half4 Terrain_Masks_088730_g83651 = weightedBlend31_g83671;
				half4 Layer_0810_g83664 = Terrain_Masks_088730_g83651;
				half4 Weights52_g83681 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83681 = temp_output_8815_0_g83651;
				half4 Layer237_g83681 = temp_output_8818_0_g83651;
				half4 Layer338_g83681 = temp_output_8819_0_g83651;
				half4 Layer439_g83681 = temp_output_8820_0_g83651;
				float4 weightedBlendVar31_g83681 = Weights52_g83681;
				float4 weightedBlend31_g83681 = ( weightedBlendVar31_g83681.x*Layer133_g83681 + weightedBlendVar31_g83681.y*Layer237_g83681 + weightedBlendVar31_g83681.z*Layer338_g83681 + weightedBlendVar31_g83681.w*Layer439_g83681 );
				half4 Terrain_Masks_128871_g83651 = weightedBlend31_g83681;
				half4 Layer_1243_g83664 = Terrain_Masks_128871_g83651;
				half4 Weights52_g83691 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83691 = temp_output_8931_0_g83651;
				half4 Layer237_g83691 = temp_output_8934_0_g83651;
				half4 Layer338_g83691 = temp_output_8935_0_g83651;
				half4 Layer439_g83691 = temp_output_8936_0_g83651;
				float4 weightedBlendVar31_g83691 = Weights52_g83691;
				float4 weightedBlend31_g83691 = ( weightedBlendVar31_g83691.x*Layer133_g83691 + weightedBlendVar31_g83691.y*Layer237_g83691 + weightedBlendVar31_g83691.z*Layer338_g83691 + weightedBlendVar31_g83691.w*Layer439_g83691 );
				half4 Terrain_Masks_169014_g83651 = weightedBlend31_g83691;
				half4 Layer_1644_g83664 = Terrain_Masks_169014_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83664 = Layer_045_g83664;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 + Layer_1243_g83664 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 + Layer_1243_g83664 + Layer_1644_g83664 );
				#else
				float4 staticSwitch40_g83664 = Layer_045_g83664;
				#endif
				half4 Blend_Masks7420_g83651 = staticSwitch40_g83664;
				half4 Normal_Packed45_g83745 = Blend_Masks7420_g83651;
				half2 Normal_NO_DTX544_g83745 = (Normal_Packed45_g83745).wy;
				#ifdef TVE_PACKED_TEX
				float2 staticSwitch9080_g83651 = (Normal_NO_DTX544_g83745*2.0 + -1.0);
				#else
				float2 staticSwitch9080_g83651 = (staticSwitch37_g83746*2.0 + -1.0);
				#endif
				half4 Weights52_g83658 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83658 = _Params1;
				half4 Layer237_g83658 = _Params2;
				half4 Layer338_g83658 = _Params3;
				half4 Layer439_g83658 = _Params4;
				float4 weightedBlendVar31_g83658 = Weights52_g83658;
				float4 weightedBlend31_g83658 = ( weightedBlendVar31_g83658.x*Layer133_g83658 + weightedBlendVar31_g83658.y*Layer237_g83658 + weightedBlendVar31_g83658.z*Layer338_g83658 + weightedBlendVar31_g83658.w*Layer439_g83658 );
				half4 Terrain_Params_047533_g83651 = weightedBlend31_g83658;
				half4 Layer_045_g83665 = Terrain_Params_047533_g83651;
				half4 Weights52_g83675 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83675 = _Params5;
				half4 Layer237_g83675 = _Params6;
				half4 Layer338_g83675 = _Params7;
				half4 Layer439_g83675 = _Params8;
				float4 weightedBlendVar31_g83675 = Weights52_g83675;
				float4 weightedBlend31_g83675 = ( weightedBlendVar31_g83675.x*Layer133_g83675 + weightedBlendVar31_g83675.y*Layer237_g83675 + weightedBlendVar31_g83675.z*Layer338_g83675 + weightedBlendVar31_g83675.w*Layer439_g83675 );
				half4 Terrain_Params_088739_g83651 = weightedBlend31_g83675;
				half4 Layer_0810_g83665 = Terrain_Params_088739_g83651;
				half4 Weights52_g83685 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83685 = _Params9;
				half4 Layer237_g83685 = _Params10;
				half4 Layer338_g83685 = _Params11;
				half4 Layer439_g83685 = _Params12;
				float4 weightedBlendVar31_g83685 = Weights52_g83685;
				float4 weightedBlend31_g83685 = ( weightedBlendVar31_g83685.x*Layer133_g83685 + weightedBlendVar31_g83685.y*Layer237_g83685 + weightedBlendVar31_g83685.z*Layer338_g83685 + weightedBlendVar31_g83685.w*Layer439_g83685 );
				half4 Terrain_Params_128867_g83651 = weightedBlend31_g83685;
				half4 Layer_1243_g83665 = Terrain_Params_128867_g83651;
				half4 Weights52_g83695 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83695 = _Params13;
				half4 Layer237_g83695 = _Params14;
				half4 Layer338_g83695 = _Params15;
				half4 Layer439_g83695 = _Params16;
				float4 weightedBlendVar31_g83695 = Weights52_g83695;
				float4 weightedBlend31_g83695 = ( weightedBlendVar31_g83695.x*Layer133_g83695 + weightedBlendVar31_g83695.y*Layer237_g83695 + weightedBlendVar31_g83695.z*Layer338_g83695 + weightedBlendVar31_g83695.w*Layer439_g83695 );
				half4 Terrain_Params_169017_g83651 = weightedBlend31_g83695;
				half4 Layer_1644_g83665 = Terrain_Params_169017_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83665 = Layer_045_g83665;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 + Layer_1243_g83665 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 + Layer_1243_g83665 + Layer_1644_g83665 );
				#else
				float4 staticSwitch40_g83665 = Layer_045_g83665;
				#endif
				half4 Blend_Params7547_g83651 = staticSwitch40_g83665;
				half2 Normal_Planar45_g83747 = ( staticSwitch9080_g83651 * (Blend_Params7547_g83651).z );
				float2 break64_g83747 = Normal_Planar45_g83747;
				float3 appendResult65_g83747 = (float3(break64_g83747.x , 0.0 , break64_g83747.y));
				half2 Terrain_Normal8038_g83150 = ( (mul( ase_worldToTangent, appendResult65_g83747 )).xy * _TerrainNormalValue );
				float2 lerpResult7797_g83150 = lerp( Blend_Normal_Detail312_g83150 , Terrain_Normal8038_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float2 staticSwitch7796_g83150 = lerpResult7797_g83150;
				#else
				float2 staticSwitch7796_g83150 = Blend_Normal_Detail312_g83150;
				#endif
				half2 Blend_Normal_Terrain7762_g83150 = staticSwitch7796_g83150;
				float3 appendResult7377_g83150 = (float3(Blend_Normal_Terrain7762_g83150 , 1.0));
				float3 tanNormal7376_g83150 = appendResult7377_g83150;
				float3 worldNormal7376_g83150 = float3(dot(tanToWorld0,tanNormal7376_g83150), dot(tanToWorld1,tanNormal7376_g83150), dot(tanToWorld2,tanNormal7376_g83150));
				half3 Blend_NormalWS_Terrain7375_g83150 = worldNormal7376_g83150;
				float lerpResult7446_g83150 = lerp( (Blend_NormalWS_Terrain7375_g83150).y , IN.ase_normal.y , Vertex_DynamicMode5112_g83150);
				float lerpResult6757_g83150 = lerp( 1.0 , saturate( lerpResult7446_g83150 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g83150 = lerpResult6757_g83150;
				half Overlay_Shading6688_g83150 = Blend_Albedo_Globals6410_g83150;
				half Overlay_Custom6707_g83150 = 1.0;
				float lerpResult8034_g83150 = lerp( Occlusion_Mask6432_g83150 , ( 1.0 - Occlusion_Mask6432_g83150 ) , _VertexOcclusionOverlayMode);
				float lerpResult8032_g83150 = lerp( Occlusion_Alpha6463_g83150 , 1.0 , lerpResult8034_g83150);
				half Occlusion_Overlay6471_g83150 = lerpResult8032_g83150;
				float temp_output_7_0_g83273 = 0.1;
				float temp_output_10_0_g83273 = ( 0.2 - temp_output_7_0_g83273 );
				half Overlay_Mask_High6064_g83150 = saturate( ( ( ( Overlay_Value5738_g83150 * Overlay_Projection6081_g83150 * Overlay_Shading6688_g83150 * Overlay_Custom6707_g83150 * Occlusion_Overlay6471_g83150 ) - temp_output_7_0_g83273 ) / ( temp_output_10_0_g83273 + 0.0001 ) ) );
				half Overlay_Mask269_g83150 = Overlay_Mask_High6064_g83150;
				float3 lerpResult336_g83150 = lerp( Blend_Albedo_Colored863_g83150 , Global_OverlayColor1758_g83150 , Overlay_Mask269_g83150);
				half3 Blend_Albedo_Overlay359_g83150 = lerpResult336_g83150;
				half Global_WetnessContrast6502_g83150 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g83150 = break456_g83177.y;
				half Wetness_Value6343_g83150 = ( Global_Extras_Wetness305_g83150 * _GlobalWetness );
				float3 lerpResult6367_g83150 = lerp( Blend_Albedo_Overlay359_g83150 , ( Blend_Albedo_Overlay359_g83150 * Blend_Albedo_Overlay359_g83150 ) , ( Global_WetnessContrast6502_g83150 * Wetness_Value6343_g83150 ));
				half3 Blend_Albedo_Wetness6351_g83150 = lerpResult6367_g83150;
				float vertexToFrag11_g83258 = IN.ase_texcoord10.w;
				half3 Tint_Highlight_Color5771_g83150 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g83258 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g83150 = ( Blend_Albedo_Wetness6351_g83150 * Tint_Highlight_Color5771_g83150 );
				half3 Blend_Albedo_Subsurface149_g83150 = temp_output_6309_0_g83150;
				half3 Blend_Albedo_RimLight7316_g83150 = Blend_Albedo_Subsurface149_g83150;
				
				half Global_OverlayNormalScale6581_g83150 = TVE_OverlayNormalValue;
				float lerpResult6585_g83150 = lerp( 1.0 , Global_OverlayNormalScale6581_g83150 , Overlay_Mask269_g83150);
				half2 Blend_Normal_Overlay366_g83150 = ( Blend_Normal_Terrain7762_g83150 * lerpResult6585_g83150 );
				half Global_WetnessNormalScale6571_g83150 = TVE_WetnessNormalValue;
				float lerpResult6579_g83150 = lerp( 1.0 , Global_WetnessNormalScale6571_g83150 , ( Wetness_Value6343_g83150 * Wetness_Value6343_g83150 ));
				half2 Blend_Normal_Wetness6372_g83150 = ( Blend_Normal_Overlay366_g83150 * lerpResult6579_g83150 );
				float3 appendResult6568_g83150 = (float3(Blend_Normal_Wetness6372_g83150 , 1.0));
				float3 temp_output_13_0_g83178 = appendResult6568_g83150;
				float3 temp_output_33_0_g83178 = ( temp_output_13_0_g83178 * _render_normals );
				float3 switchResult12_g83178 = (((ase_vface>0)?(temp_output_13_0_g83178):(temp_output_33_0_g83178)));
				
				float3 temp_cast_19 = (0.0).xxx;
				half3 Emissive_Color7162_g83150 = (_EmissiveColor).rgb;
				half2 Emissive_UVs2468_g83150 = ( ( IN.ase_texcoord9.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g83282 = _EmissiveTexMinValue;
				float3 temp_cast_20 = (temp_output_7_0_g83282).xxx;
				float temp_output_10_0_g83282 = ( _EmissiveTexMaxValue - temp_output_7_0_g83282 );
				half3 Emissive_Texture7022_g83150 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g83150 )).rgb - temp_cast_20 ) / ( temp_output_10_0_g83282 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g83150 = break456_g83177.x;
				float lerpResult4206_g83150 = lerp( 1.0 , Global_Extras_Emissive4203_g83150 , _GlobalEmissive);
				half Emissive_Value7024_g83150 = ( ( lerpResult4206_g83150 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g83150 = saturate( ( Emissive_Texture7022_g83150 + Emissive_Value7024_g83150 ) );
				float3 temp_output_3_0_g83281 = ( Emissive_Color7162_g83150 * Emissive_Mask6968_g83150 );
				float temp_output_15_0_g83281 = _emissive_intensity_value;
				float3 temp_output_23_0_g83281 = ( temp_output_3_0_g83281 * temp_output_15_0_g83281 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch8018_g83150 = temp_output_23_0_g83281;
				#else
				float3 staticSwitch8018_g83150 = temp_cast_19;
				#endif
				half3 Blend_Emissive2476_g83150 = staticSwitch8018_g83150;
				half3 Terrain_Emissive7933_g83150 = ( (Blend_Specular7446_g83651).rgb * (Blend_Albedo7468_g83651).xyz );
				float3 lerpResult7927_g83150 = lerp( Blend_Emissive2476_g83150 , Terrain_Emissive7933_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7912_g83150 = lerpResult7927_g83150;
				#else
				float3 staticSwitch7912_g83150 = Blend_Emissive2476_g83150;
				#endif
				half3 Blend_Emissive_Terrain7909_g83150 = staticSwitch7912_g83150;
				
				half Render_Specular4861_g83150 = _RenderSpecular;
				float3 temp_cast_21 = (( 0.04 * Render_Specular4861_g83150 )).xxx;
				
				float lerpResult240_g83150 = lerp( 1.0 , tex2DNode35_g83150.g , _MainOcclusionValue);
				half Main_Occlusion247_g83150 = lerpResult240_g83150;
				float lerpResult239_g83150 = lerp( 1.0 , tex2DNode33_g83150.g , _SecondOcclusionValue);
				half Second_Occlusion251_g83150 = lerpResult239_g83150;
				float lerpResult294_g83150 = lerp( Main_Occlusion247_g83150 , Second_Occlusion251_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch310_g83150 = lerpResult294_g83150;
				#else
				float staticSwitch310_g83150 = Main_Occlusion247_g83150;
				#endif
				half Blend_Occlusion_Detail323_g83150 = staticSwitch310_g83150;
				#ifdef TVE_PACKED_TEX
				float staticSwitch9097_g83651 = 1.0;
				#else
				float staticSwitch9097_g83651 = ( (Blend_Masks7420_g83651).y * _TerrainOcclusionValue );
				#endif
				half Terrain_Occlusion8041_g83150 = staticSwitch9097_g83651;
				float lerpResult7815_g83150 = lerp( Blend_Occlusion_Detail323_g83150 , Terrain_Occlusion8041_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float staticSwitch7814_g83150 = lerpResult7815_g83150;
				#else
				float staticSwitch7814_g83150 = Blend_Occlusion_Detail323_g83150;
				#endif
				half Blend_Occlusion_Terrain7820_g83150 = staticSwitch7814_g83150;
				
				half Main_Smoothness227_g83150 = ( tex2DNode35_g83150.a * _MainSmoothnessValue );
				half Second_Smoothness236_g83150 = ( tex2DNode33_g83150.a * _SecondSmoothnessValue );
				float lerpResult266_g83150 = lerp( Main_Smoothness227_g83150 , Second_Smoothness236_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch297_g83150 = lerpResult266_g83150;
				#else
				float staticSwitch297_g83150 = Main_Smoothness227_g83150;
				#endif
				half Blend_Smoothness_Detail314_g83150 = staticSwitch297_g83150;
				#ifdef TVE_PACKED_TEX
				float staticSwitch9105_g83651 = (Blend_Masks7420_g83651).x;
				#else
				float staticSwitch9105_g83651 = (Blend_Masks7420_g83651).w;
				#endif
				half Terrain_Smoothness8042_g83150 = ( staticSwitch9105_g83651 * (Blend_Params7547_g83651).w * _TerrainSmoothnessValue );
				float lerpResult7801_g83150 = lerp( Blend_Smoothness_Detail314_g83150 , Terrain_Smoothness8042_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float staticSwitch7800_g83150 = lerpResult7801_g83150;
				#else
				float staticSwitch7800_g83150 = Blend_Smoothness_Detail314_g83150;
				#endif
				half Blend_Smoothness_Terrain7806_g83150 = staticSwitch7800_g83150;
				half Global_OverlaySmoothness311_g83150 = TVE_OverlaySmoothness;
				float lerpResult343_g83150 = lerp( Blend_Smoothness_Terrain7806_g83150 , Global_OverlaySmoothness311_g83150 , Overlay_Mask269_g83150);
				half Blend_Smoothness_Overlay371_g83150 = lerpResult343_g83150;
				float temp_output_6499_0_g83150 = ( 1.0 - Wetness_Value6343_g83150 );
				half Blend_Smoothness_Wetness4130_g83150 = saturate( ( Blend_Smoothness_Overlay371_g83150 + ( 1.0 - ( temp_output_6499_0_g83150 * temp_output_6499_0_g83150 ) ) ) );
				
				float localCustomAlphaClip19_g83272 = ( 0.0 );
				half Main_Alpha316_g83150 = tex2DNode29_g83150.a;
				half Second_Alpha5007_g83150 = tex2DNode89_g83150.a;
				float lerpResult6153_g83150 = lerp( Main_Alpha316_g83150 , Second_Alpha5007_g83150 , Detail_Mask147_g83150);
				float lerpResult6785_g83150 = lerp( ( Main_Alpha316_g83150 * Second_Alpha5007_g83150 ) , lerpResult6153_g83150 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g83150 = lerpResult6785_g83150;
				#else
				float staticSwitch6158_g83150 = Main_Alpha316_g83150;
				#endif
				half Blend_Alpha_Detail6157_g83150 = staticSwitch6158_g83150;
				half AlphaTreshold2132_g83150 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g83150 = saturate( break456_g83177.w );
				float lerpResult5154_g83150 = lerp( 0.0 , Global_MeshVariation5104_g83150 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g83150 = lerpResult5154_g83150;
				float Emissive_Alpha7942_g83150 = 0.0;
				float lerpResult6866_g83150 = lerp( ( 1.0 - Detail_Mask147_g83150 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g83150 = lerpResult6866_g83150;
				#else
				float staticSwitch6612_g83150 = 1.0;
				#endif
				half Detail_Mask_Invert6260_g83150 = staticSwitch6612_g83150;
				half Alpha_Mask6234_g83150 = ( 1.0 * Detail_Mask_Invert6260_g83150 );
				float lerpResult5203_g83150 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g83150 - saturate( ( Global_Alpha_Variation5158_g83150 + Emissive_Alpha7942_g83150 ) ) ) + ( Global_Extras_Alpha1033_g83150 * 0.1 ) ) ) , ( Alpha_Mask6234_g83150 * _GlobalAlpha ));
				float lerpResult16_g83269 = lerp( 1.0 , lerpResult5203_g83150 , TVE_IsEnabled);
				half Global_Alpha315_g83150 = lerpResult16_g83269;
				half Fade_Alpha3727_g83150 = 1.0;
				half Final_Alpha7344_g83150 = min( ( ( Blend_Alpha_Detail6157_g83150 - AlphaTreshold2132_g83150 ) * Global_Alpha315_g83150 ) , Fade_Alpha3727_g83150 );
				float temp_output_3_0_g83272 = Final_Alpha7344_g83150;
				float Alpha19_g83272 = temp_output_3_0_g83272;
				float temp_output_15_0_g83272 = 0.01;
				float Treshold19_g83272 = temp_output_15_0_g83272;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g83272 - Treshold19_g83272);
				#endif
				#else
				clip(Alpha19_g83272 - Treshold19_g83272);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g83150 = (lerpResult7986_g83150).a;
				half Second_Color_Alpha6152_g83150 = (lerpResult7997_g83150).a;
				float lerpResult6168_g83150 = lerp( Main_Color_Alpha6121_g83150 , Second_Color_Alpha6152_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g83150 = lerpResult6168_g83150;
				#else
				float staticSwitch6174_g83150 = Main_Color_Alpha6121_g83150;
				#endif
				half Blend_ColorAlpha_Detail6167_g83150 = staticSwitch6174_g83150;
				half Final_Clip914_g83150 = saturate( ( Alpha19_g83272 * Blend_ColorAlpha_Detail6167_g83150 ) );
				
				half3 Subsurface_Color1722_g83150 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g83150 );
				half Global_Subsurface4041_g83150 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g83150 = TVE_OverlaySubsurface;
				float lerpResult7362_g83150 = lerp( 1.0 , Global_OverlaySubsurface5667_g83150 , Overlay_Value5738_g83150);
				half Overlay_Subsurface7361_g83150 = lerpResult7362_g83150;
				half Subsurface_Intensity1752_g83150 = ( _SubsurfaceValue * Global_Subsurface4041_g83150 * Overlay_Subsurface7361_g83150 );
				float lerpResult8014_g83150 = lerp( 1.0 , Blend_MaskRemap_Detail6621_g83150 , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g83150 = lerpResult8014_g83150;
				half3 Subsurface_Translucency884_g83150 = ( Subsurface_Color1722_g83150 * Subsurface_Intensity1752_g83150 * Subsurface_Mask1557_g83150 * 10.0 );
				
				o.Albedo = Blend_Albedo_RimLight7316_g83150;
				o.Normal = switchResult12_g83178;
				o.Emission = Blend_Emissive_Terrain7909_g83150;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = temp_cast_21;
					#else
						o.Metallic = 0;
					#endif
					o.Occlusion = Blend_Occlusion_Terrain7820_g83150;
					o.Smoothness = Blend_Smoothness_Wetness4130_g83150;
				#endif

				o.Alpha = Final_Clip914_g83150;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = Subsurface_Translucency884_g83150;

				#ifdef _ALPHATEST_ON
					clip( o.Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed4 c = 0;
				float3 worldN;
				worldN.x = dot(IN.tSpace0.xyz, o.Normal);
				worldN.y = dot(IN.tSpace1.xyz, o.Normal);
				worldN.z = dot(IN.tSpace2.xyz, o.Normal);
				worldN = normalize(worldN);
				o.Normal = worldN;

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
				#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
					giInput.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif
				#ifdef UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMax[0] = unity_SpecCube0_BoxMax;
					giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
					giInput.boxMax[1] = unity_SpecCube1_BoxMax;
					giInput.boxMin[1] = unity_SpecCube1_BoxMin;
					giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					#if defined(_SPECULAR_SETUP)
						LightingBlinnPhong_GI(o, giInput, gi);
					#else
						LightingLambert_GI(o, giInput, gi);
					#endif
				#else
					#if defined(_SPECULAR_SETUP)
						LightingStandardSpecular_GI(o, giInput, gi);
					#else
						LightingStandard_GI(o, giInput, gi);
					#endif
				#endif

				#ifdef ASE_BAKEDGI
					gi.indirect.diffuse = BakedGI;
				#endif

				#if UNITY_SHOULD_SAMPLE_SH && !defined(LIGHTMAP_ON) && defined(ASE_NO_AMBIENT)
					gi.indirect.diffuse = 0;
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					#if defined(_SPECULAR_SETUP)
						c += LightingBlinnPhong (o, worldViewDir, gi);
					#else
						c += LightingLambert( o, gi );
					#endif
				#else
					#if defined(_SPECULAR_SETUP)
						c += LightingStandardSpecular (o, worldViewDir, gi);
					#else
						c += LightingStandard(o, worldViewDir, gi);
					#endif
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;
					#ifdef DIRECTIONAL
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 transmission = max(0 , -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
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
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow( saturate( dot( worldViewDir, -lightDir ) ), scattering );
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				//#ifdef ASE_REFRACTION
				//	float4 projScreenPos = ScreenPos / ScreenPos.w;
				//	float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, WorldNormal ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
				//	projScreenPos.xy += refractionOffset.xy;
				//	float3 refraction = UNITY_SAMPLE_SCREENSPACE_TEXTURE( _GrabTexture, projScreenPos ) * RefractionColor;
				//	color.rgb = lerp( refraction, color.rgb, color.a );
				//	color.a = 1;
				//#endif

				c.rgb += o.Emission;

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
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
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_TRANSLUCENCY 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma skip_variants INSTANCING_ON
			#pragma multi_compile_fwdadd_fullshadows
			#ifndef UNITY_PASS_FORWARDADD
				#define UNITY_PASS_FORWARDADD
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_TERRAIN
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_TERRAIN_04 TVE_TERRAIN_08 TVE_TERRAIN_12 TVE_TERRAIN_16
			#pragma shader_feature_local_fragment TVE_HEIGHT_BLEND
			#pragma shader_feature_local_fragment TVE_SAMPLE_01_PLANAR_2D TVE_SAMPLE_01_PLANAR_3D TVE_SAMPLE_01_STOCHASTIC_2D TVE_SAMPLE_01_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_02_PLANAR_2D TVE_SAMPLE_02_PLANAR_3D TVE_SAMPLE_02_STOCHASTIC_2D TVE_SAMPLE_02_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_03_PLANAR_2D TVE_SAMPLE_03_PLANAR_3D TVE_SAMPLE_03_STOCHASTIC_2D TVE_SAMPLE_03_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_04_PLANAR_2D TVE_SAMPLE_04_PLANAR_3D TVE_SAMPLE_04_STOCHASTIC_2D TVE_SAMPLE_04_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_05_PLANAR_2D TVE_SAMPLE_05_PLANAR_3D TVE_SAMPLE_05_STOCHASTIC_2D TVE_SAMPLE_05_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_06_PLANAR_2D TVE_SAMPLE_06_PLANAR_3D TVE_SAMPLE_06_STOCHASTIC_2D TVE_SAMPLE_06_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_07_PLANAR_2D TVE_SAMPLE_07_PLANAR_3D TVE_SAMPLE_07_STOCHASTIC_2D TVE_SAMPLE_07_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_08_PLANAR_2D TVE_SAMPLE_08_PLANAR_3D TVE_SAMPLE_08_STOCHASTIC_2D TVE_SAMPLE_08_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_09_PLANAR_2D TVE_SAMPLE_09_PLANAR_3D TVE_SAMPLE_09_STOCHASTIC_2D TVE_SAMPLE_09_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_10_PLANAR_2D TVE_SAMPLE_10_PLANAR_3D TVE_SAMPLE_10_STOCHASTIC_2D TVE_SAMPLE_10_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_11_PLANAR_2D TVE_SAMPLE_11_PLANAR_3D TVE_SAMPLE_11_STOCHASTIC_2D TVE_SAMPLE_11_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_12_PLANAR_2D TVE_SAMPLE_12_PLANAR_3D TVE_SAMPLE_12_STOCHASTIC_2D TVE_SAMPLE_12_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_13_PLANAR_2D TVE_SAMPLE_13_PLANAR_3D TVE_SAMPLE_13_STOCHASTIC_2D TVE_SAMPLE_13_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_14_PLANAR_2D TVE_SAMPLE_14_PLANAR_3D TVE_SAMPLE_14_STOCHASTIC_2D TVE_SAMPLE_14_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_15_PLANAR_2D TVE_SAMPLE_15_PLANAR_3D TVE_SAMPLE_15_STOCHASTIC_2D TVE_SAMPLE_15_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_16_PLANAR_2D TVE_SAMPLE_16_PLANAR_3D TVE_SAMPLE_16_STOCHASTIC_2D TVE_SAMPLE_16_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_PACKED_TEX
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_SUBSURFACE_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(1,2)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(1)
					#else
						SHADOW_COORDS(1)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(3)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_color : COLOR;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

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
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_coverage;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_cull;
			uniform half _IsSubsurfaceShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform half _Cutoff;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderZWrite;
			uniform half _RenderClip;
			uniform half _RenderCull;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
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
			uniform half _RenderCoverage;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half _SpaceGlobalLocals;
			uniform half _SpaceSubsurface;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsBlanketShader;
			uniform half4 _Color;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryDetail;
			uniform half _CategoryTerrain;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceMotionGlobals;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMeshInvertMode;
			uniform half _DetailMaskInvertMode;
			uniform half _MotionValue_31;
			uniform half _MotionValue_21;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _DetailBlendRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailMaskRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half4 _RimLightRemap;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half4 _EmissiveTexRemap;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half _MessageSubsurface;
			uniform half _MessageOcclusion;
			uniform half _MessageTerrain;
			uniform half4 _TerrainBlendRemap;
			uniform half _TerrainTexMode;
			uniform half _TerrainBlendMode;
			uniform half _TerrainLayersMode;
			uniform half _LayerSampleMode1;
			uniform half _LayerSampleMode2;
			uniform half _LayerSampleMode3;
			uniform half _LayerSampleMode4;
			uniform half _LayerSampleMode5;
			uniform half _LayerSampleMode6;
			uniform half _LayerSampleMode7;
			uniform half _LayerSampleMode8;
			uniform half _LayerSampleMode9;
			uniform half _LayerSampleMode10;
			uniform half _LayerSampleMode11;
			uniform half _LayerSampleMode12;
			uniform half _LayerSampleMode13;
			uniform half _LayerSampleMode14;
			uniform half _LayerSampleMode15;
			uniform half _LayerSampleMode16;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half _VertexPositionMode;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalOrientation;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half _ConformOffsetMode;
			uniform half _ConformOffsetValue;
			uniform half _GlobalConform;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			uniform float _TerrainBlendOffsetValue;
			uniform float _TerrainBlendNormalValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;
			uniform half _DetailBlendMode;
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _GradientMinValue;
			uniform half _GradientMaxValue;
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex1);
			uniform half4 _TerrainPosition;
			uniform half4 _TerrainSize;
			SamplerState sampler_Linear_Clamp_Aniso8;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex1);
			SamplerState sampler_Linear_Repeat_Aniso8;
			uniform half4 _Coords1;
			uniform half4 _MaskMin1;
			uniform half4 _MaskMax1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex2);
			uniform half4 _Coords2;
			uniform half4 _MaskMin2;
			uniform half4 _MaskMax2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex3);
			uniform half4 _Coords3;
			uniform half4 _MaskMin3;
			uniform half4 _MaskMax3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex4);
			uniform half4 _Coords4;
			uniform half4 _MaskMin4;
			uniform half4 _MaskMax4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex5);
			uniform half4 _Coords5;
			uniform half4 _MaskMin5;
			uniform half4 _MaskMax5;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex6);
			uniform half4 _Coords6;
			uniform half4 _MaskMin6;
			uniform half4 _MaskMax6;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex7);
			uniform half4 _Coords7;
			uniform half4 _MaskMin7;
			uniform half4 _MaskMax7;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex8);
			uniform half4 _Coords8;
			uniform half4 _MaskMin8;
			uniform half4 _MaskMax8;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex9);
			uniform half4 _Coords9;
			uniform half4 _MaskMin9;
			uniform half4 _MaskMax9;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex10);
			uniform half4 _Coords10;
			uniform half4 _MaskMin10;
			uniform half4 _MaskMax10;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex11);
			uniform half4 _Coords11;
			uniform half4 _MaskMin11;
			uniform half4 _MaskMax11;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex12);
			uniform half4 _Coords12;
			uniform half4 _MaskMin12;
			uniform half4 _MaskMax12;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex13);
			uniform half4 _Coords13;
			uniform half4 _MaskMin13;
			uniform half4 _MaskMax13;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex14);
			uniform half4 _Coords14;
			uniform half4 _MaskMin14;
			uniform half4 _MaskMax14;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex15);
			uniform half4 _Coords15;
			uniform half4 _MaskMin15;
			uniform half4 _MaskMax15;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex16);
			uniform half4 _Coords16;
			uniform half4 _MaskMin16;
			uniform half4 _MaskMax16;
			uniform half _TerrainHeightBlendValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex1);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex5);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex6);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex7);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex8);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex9);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex10);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex11);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex12);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex13);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex14);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex15);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex16);
			uniform half4 _TerrainColor;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _TerrainMode;
			uniform half _TerrainBlendMinValue;
			uniform half _TerrainBlendMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half4 _Specular1;
			uniform half4 _Specular2;
			uniform half4 _Specular3;
			uniform half4 _Specular4;
			uniform half4 _Specular5;
			uniform half4 _Specular6;
			uniform half4 _Specular7;
			uniform half4 _Specular8;
			uniform half4 _Specular9;
			uniform half4 _Specular10;
			uniform half4 _Specular11;
			uniform half4 _Specular12;
			uniform half4 _Specular13;
			uniform half4 _Specular14;
			uniform half4 _Specular15;
			uniform half4 _Specular16;
			uniform half _GlobalColors;
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
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex1);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex5);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex6);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex7);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex8);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex9);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex10);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex11);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex12);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex13);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex14);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex15);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex16);
			uniform half4 _Params1;
			uniform half4 _Params2;
			uniform half4 _Params3;
			uniform half4 _Params4;
			uniform half4 _Params5;
			uniform half4 _Params6;
			uniform half4 _Params7;
			uniform half4 _Params8;
			uniform half4 _Params9;
			uniform half4 _Params10;
			uniform half4 _Params11;
			uniform half4 _Params12;
			uniform half4 _Params13;
			uniform half4 _Params14;
			uniform half4 _Params15;
			uniform half4 _Params16;
			uniform half _TerrainNormalValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _MotionHighlightColor;
			uniform half TVE_OverlayNormalValue;
			uniform half TVE_WetnessNormalValue;
			uniform half3 _render_normals;
			uniform half4 _EmissiveColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveTex);
			uniform half4 _EmissiveUVs;
			uniform half _EmissiveTexMinValue;
			uniform half _EmissiveTexMaxValue;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform half _RenderSpecular;
			uniform half _MainOcclusionValue;
			uniform half _SecondOcclusionValue;
			uniform half _TerrainOcclusionValue;
			uniform half _MainSmoothnessValue;
			uniform half _SecondSmoothnessValue;
			uniform half _TerrainSmoothnessValue;
			uniform half TVE_OverlaySmoothness;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			
			void ComputeWorldCoords( half4 Coords, half3 WorldPosition, out half2 ZX, out half2 ZY, out half2 XY )
			{
				ZX = WorldPosition.xz * Coords.xy + Coords.zw;
				ZY = WorldPosition.zy * Coords.xy + Coords.zw; 
				XY = WorldPosition.xy * Coords.xy + Coords.zw;
			}
			
			half4 SamplePlanar2D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half4 tex = SAMPLE_TEXTURE2D( Texture, Sampler, ZX);
				return tex;
			}
			
			void ComputeTriplanarWeights( half3 WorldNormal, out half T1, out half T2, out half T3 )
			{
				half3 powNormal = abs( WorldNormal.xyz );
				half3 weights = max( powNormal * powNormal * powNormal * powNormal * powNormal * powNormal * powNormal * powNormal, 0.000001 );
				weights /= ( weights.x + weights.y + weights.z ).xxx;
				T1 = weights.y;
				T2 = weights.x;
				T3 = weights.z;
			}
			
			half4 SamplePlanar3D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition, half3 WorldNormal )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half T1, T2, T3;
				ComputeTriplanarWeights(WorldNormal, T1, T2, T3);
				half4 tex1 = SAMPLE_TEXTURE2D( Texture, Sampler, ZX);
				half4 tex2 = SAMPLE_TEXTURE2D( Texture, Sampler, ZY);
				half4 tex3 = SAMPLE_TEXTURE2D( Texture, Sampler, XY);
				return tex1 * T1 + tex2 * T2 + tex3 * T3;
			}
			
			void ComputeStochasticCoords( float2 UV, out float2 UV1, out float2 UV2, out float2 UV3, out float W1, out float W2, out float W3 )
			{
				half2 vertex1, vertex2, vertex3;
				// Scaling of the input
				half2 uv = UV * 3.464; // 2 * sqrt (3)
				// Skew input space into simplex triangle grid
				const float2x2 gridToSkewedGrid = float2x2( 1.0, 0.0, -0.57735027, 1.15470054 );
				half2 skewedCoord = mul( gridToSkewedGrid, uv );
				// Compute local triangle vertex IDs and local barycentric coordinates
				int2 baseId = int2( floor( skewedCoord ) );
				half3 temp = half3( frac( skewedCoord ), 0 );
				temp.z = 1.0 - temp.x - temp.y;
				if ( temp.z > 0.0 )
				{
					W1 = temp.z;
					W2 = temp.y;
					W3 = temp.x;
					vertex1 = baseId;
					vertex2 = baseId + int2( 0, 1 );
					vertex3 = baseId + int2( 1, 0 );
				}
				else
				{
					W1 = -temp.z;
					W2 = 1.0 - temp.y;
					W3 = 1.0 - temp.x;
					vertex1 = baseId + int2( 1, 1 );
					vertex2 = baseId + int2( 1, 0 );
					vertex3 = baseId + int2( 0, 1 );
				}
				UV1 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex1 ) ) * 43758.5453 );
				UV2 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex2 ) ) * 43758.5453 );
				UV3 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex3 ) ) * 43758.5453 );
				return;
			}
			
			float4 SampleStochastic2D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half2 UV1, UV2, UV3;
				half W1, W2, W3;
				ComputeStochasticCoords(ZX, UV1, UV2, UV3, W1, W2, W3 );
				half4 tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZX), ddy(ZX));
				half4 tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZX), ddy(ZX));
				half4 tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZX), ddy(ZX));
				return tex1 * W1 + tex2 * W2 + tex3 * W3;
			}
			
			half4 SampleStochastic3D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition, half3 WorldNormal )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half2 UV1, UV2, UV3;
				half W1, W2, W3;
				half4 tex1, tex2, tex3;
				ComputeStochasticCoords(ZX, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZX), ddy(ZX));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZX), ddy(ZX));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZX), ddy(ZX));
				half4 texZX = tex1 * W1 + tex2 * W2 + tex3 * W3;
				ComputeStochasticCoords(ZY, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZY), ddy(ZY));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZY), ddy(ZY));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZY), ddy(ZY));
				half4 texZY = tex1 * W1 + tex2 * W2 + tex3 * W3;
				ComputeStochasticCoords(XY, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(XY), ddy(XY));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(XY), ddy(XY));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(XY), ddy(XY));
				half4 texXY = tex1 * W1 + tex2 * W2 + tex3 * W3;
				half T1, T2, T3;
				ComputeTriplanarWeights(WorldNormal, T1, T2, T3);
				return texZX * T1 + texZY * T2 + texXY * T3;
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g83150 = v.vertex.xyz;
				float3 appendResult60_g83158 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g83150 = ( appendResult60_g83158 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g83150 = Mesh_PivotsData2831_g83150;
				float3 temp_output_2283_0_g83150 = ( VertexPosition3588_g83150 - Mesh_PivotsOS2291_g83150 );
				half3 VertexPos40_g83230 = temp_output_2283_0_g83150;
				half3 VertexPos40_g83231 = VertexPos40_g83230;
				float3 appendResult74_g83231 = (float3(VertexPos40_g83231.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g83231 = appendResult74_g83231;
				float3 break84_g83231 = VertexPos40_g83231;
				float3 appendResult81_g83231 = (float3(0.0 , break84_g83231.y , break84_g83231.z));
				half3 VertexPosOtherAxis82_g83231 = appendResult81_g83231;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g83150 = ase_worldPos;
				float3 WorldPosition3905_g83150 = vertexToFrag3890_g83150;
				float3 WorldPosition_Shifted7477_g83150 = ( WorldPosition3905_g83150 - TVE_WorldOrigin );
				float4x4 break19_g83187 = unity_ObjectToWorld;
				float3 appendResult20_g83187 = (float3(break19_g83187[ 0 ][ 3 ] , break19_g83187[ 1 ][ 3 ] , break19_g83187[ 2 ][ 3 ]));
				float3 temp_output_122_0_g83187 = Mesh_PivotsData2831_g83150;
				float3 PivotsOnly105_g83187 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g83187 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g83189 = ( appendResult20_g83187 + PivotsOnly105_g83187 );
				half3 WorldData19_g83189 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83189 = WorldData19_g83189;
				#else
				float3 staticSwitch14_g83189 = ObjectData20_g83189;
				#endif
				float3 temp_output_114_0_g83187 = staticSwitch14_g83189;
				float3 vertexToFrag4224_g83150 = temp_output_114_0_g83187;
				float3 ObjectPosition4223_g83150 = vertexToFrag4224_g83150;
				float3 ObjectPosition_Shifted7481_g83150 = ( ObjectPosition4223_g83150 - TVE_WorldOrigin );
				float3 lerpResult6766_g83150 = lerp( WorldPosition_Shifted7477_g83150 , ObjectPosition_Shifted7481_g83150 , _MotionPosition_10);
				float3 Motion_10_Position6738_g83150 = lerpResult6766_g83150;
				half3 Input_Position419_g83195 = Motion_10_Position6738_g83150;
				float Input_MotionScale287_g83195 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g83195 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g83195 = (( Input_Position419_g83195 * Input_MotionScale287_g83195 * NoiseTex_Tilling735_g83195 * 0.0075 )).xz;
				float2 temp_output_447_0_g83155 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g83150 = temp_output_447_0_g83155;
				half2 Input_DirectionWS423_g83195 = Global_Wind_DirectionWS4683_g83150;
				float lerpResult128_g83196 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83195 = _MotionSpeed_10;
				half Input_MotionVariation284_g83195 = _MotionVariation_10;
				half3 Input_Position167_g83244 = ObjectPosition_Shifted7481_g83150;
				float dotResult156_g83244 = dot( (Input_Position167_g83244).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g83150 = _VertexDynamicMode;
				half Input_DynamicMode120_g83244 = Vertex_DynamicMode5112_g83150;
				float Postion_Random162_g83244 = ( sin( dotResult156_g83244 ) * ( 1.0 - Input_DynamicMode120_g83244 ) );
				float Mesh_Variation16_g83150 = v.ase_color.r;
				half Input_Variation124_g83244 = Mesh_Variation16_g83150;
				half ObjectData20_g83246 = frac( ( Postion_Random162_g83244 + Input_Variation124_g83244 ) );
				half WorldData19_g83246 = Input_Variation124_g83244;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83246 = WorldData19_g83246;
				#else
				float staticSwitch14_g83246 = ObjectData20_g83246;
				#endif
				float temp_output_112_0_g83244 = staticSwitch14_g83246;
				float clampResult171_g83244 = clamp( temp_output_112_0_g83244 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g83150 = clampResult171_g83244;
				half Input_GlobalMeshVariation569_g83195 = Global_MeshVariation5104_g83150;
				float temp_output_630_0_g83195 = ( ( ( lerpResult128_g83196 * Input_MotionSpeed62_g83195 ) + ( Input_MotionVariation284_g83195 * Input_GlobalMeshVariation569_g83195 ) ) * 0.03 );
				float temp_output_607_0_g83195 = frac( temp_output_630_0_g83195 );
				float4 lerpResult590_g83195 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g83195 + ( -Input_DirectionWS423_g83195 * temp_output_607_0_g83195 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g83195 + ( -Input_DirectionWS423_g83195 * frac( ( temp_output_630_0_g83195 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g83195 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g83195 = lerpResult590_g83195;
				float2 temp_output_645_0_g83195 = ((Noise_Complex703_g83195).rg*2.0 + -1.0);
				float2 break650_g83195 = temp_output_645_0_g83195;
				float3 appendResult649_g83195 = (float3(break650_g83195.x , 0.0 , break650_g83195.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g83150 = (( mul( unity_WorldToObject, float4( appendResult649_g83195 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g83210 = Global_Noise_OS5548_g83150;
				float2 break448_g83155 = temp_output_447_0_g83155;
				float3 appendResult452_g83155 = (float3(break448_g83155.x , 0.0 , break448_g83155.y));
				half2 Global_Wind_DirectionOS5692_g83150 = (( mul( unity_WorldToObject, float4( appendResult452_g83155 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g83210 = Global_Wind_DirectionOS5692_g83150;
				float temp_output_84_0_g83159 = _LayerMotionValue;
				float temp_output_19_0_g83163 = TVE_MotionUsage[(int)temp_output_84_0_g83159];
				float4 temp_output_91_19_g83159 = TVE_MotionCoords;
				half2 UV94_g83159 = ( (temp_output_91_19_g83159).zw + ( (temp_output_91_19_g83159).xy * (ObjectPosition4223_g83150).xz ) );
				float4 tex2DArrayNode50_g83159 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g83159,temp_output_84_0_g83159), 0.0 );
				float4 temp_output_17_0_g83163 = tex2DArrayNode50_g83159;
				float4 temp_output_112_19_g83159 = TVE_MotionParams;
				float4 temp_output_3_0_g83163 = temp_output_112_19_g83159;
				float4 ifLocalVar18_g83163 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83163 >= 0.5 )
				ifLocalVar18_g83163 = temp_output_17_0_g83163;
				else
				ifLocalVar18_g83163 = temp_output_3_0_g83163;
				float4 lerpResult22_g83163 = lerp( temp_output_3_0_g83163 , temp_output_17_0_g83163 , temp_output_19_0_g83163);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83163 = lerpResult22_g83163;
				#else
				float4 staticSwitch24_g83163 = ifLocalVar18_g83163;
				#endif
				half4 Global_Motion_Params3909_g83150 = staticSwitch24_g83163;
				float4 break322_g83155 = Global_Motion_Params3909_g83150;
				float lerpResult457_g83155 = lerp( break322_g83155.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g83155 = ( 1.0 - lerpResult457_g83155 );
				half Global_Wind_Power2223_g83150 = ( 1.0 - ( temp_output_459_0_g83155 * temp_output_459_0_g83155 ) );
				half Input_WindPower449_g83210 = Global_Wind_Power2223_g83150;
				float2 lerpResult516_g83210 = lerp( Input_Noise_DirectionOS487_g83210 , Input_Wind_DirectionOS458_g83210 , ( Input_WindPower449_g83210 * 0.6 ));
				half Mesh_Motion_107613_g83150 = v.ase_color.a;
				half Input_MeshHeight388_g83210 = Mesh_Motion_107613_g83150;
				half ObjectData20_g83211 = Input_MeshHeight388_g83210;
				float enc62_g83205 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g83205 = DecodeFloatToVector2( enc62_g83205 );
				float2 break63_g83205 = ( localDecodeFloatToVector262_g83205 * 100.0 );
				float Bounds_Height5230_g83150 = break63_g83205.x;
				half Input_BoundsHeight390_g83210 = Bounds_Height5230_g83150;
				half WorldData19_g83211 = ( Input_MeshHeight388_g83210 * Input_MeshHeight388_g83210 * Input_BoundsHeight390_g83210 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83211 = WorldData19_g83211;
				#else
				float staticSwitch14_g83211 = ObjectData20_g83211;
				#endif
				half Final_Motion10_Mask321_g83210 = ( staticSwitch14_g83211 * 2.0 );
				half Motion_10_Amplitude2258_g83150 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g83210 = Motion_10_Amplitude2258_g83150;
				half Global_MotionValue640_g83210 = TVE_MotionValue_10;
				half2 Final_Bending631_g83210 = ( lerpResult516_g83210 * ( Final_Motion10_Mask321_g83210 * Input_BendingAmplitude376_g83210 * Input_WindPower449_g83210 * Input_WindPower449_g83210 * Global_MotionValue640_g83210 ) );
				float2 appendResult433_g83155 = (float2(break322_g83155.x , break322_g83155.y));
				float2 temp_output_436_0_g83155 = (appendResult433_g83155*2.0 + -1.0);
				float2 break441_g83155 = temp_output_436_0_g83155;
				float3 appendResult440_g83155 = (float3(break441_g83155.x , 0.0 , break441_g83155.y));
				half2 Global_React_DirectionOS39_g83150 = (( mul( unity_WorldToObject, float4( appendResult440_g83155 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g83210 = Global_React_DirectionOS39_g83150;
				float clampResult17_g83213 = clamp( Input_MeshHeight388_g83210 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83212 = 0.0;
				half Input_InteractionUseMask62_g83210 = _InteractionMaskValue;
				float temp_output_10_0_g83212 = ( Input_InteractionUseMask62_g83210 - temp_output_7_0_g83212 );
				half Final_InteractionRemap594_g83210 = saturate( ( ( clampResult17_g83213 - temp_output_7_0_g83212 ) / ( temp_output_10_0_g83212 + 0.0001 ) ) );
				half ObjectData20_g83214 = Final_InteractionRemap594_g83210;
				half WorldData19_g83214 = ( Final_InteractionRemap594_g83210 * Final_InteractionRemap594_g83210 * Input_BoundsHeight390_g83210 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83214 = WorldData19_g83214;
				#else
				float staticSwitch14_g83214 = ObjectData20_g83214;
				#endif
				half Final_InteractionMask373_g83210 = ( staticSwitch14_g83214 * 2.0 );
				half Interaction_Amplitude7501_g83150 = _InteractionAmplitude;
				half Input_InteractionAmplitude58_g83210 = Interaction_Amplitude7501_g83150;
				half2 Final_Interaction632_g83210 = ( Input_React_DirectionOS358_g83210 * Final_InteractionMask373_g83210 * Input_InteractionAmplitude58_g83210 );
				half Global_Interaction_Mask66_g83150 = ( break322_g83155.w * break322_g83155.w * break322_g83155.w * break322_g83155.w );
				float Input_InteractionGlobalMask330_g83210 = Global_Interaction_Mask66_g83150;
				half Final_InteractionValue525_g83210 = saturate( ( Input_InteractionAmplitude58_g83210 * Input_InteractionGlobalMask330_g83210 ) );
				float2 lerpResult551_g83210 = lerp( Final_Bending631_g83210 , Final_Interaction632_g83210 , Final_InteractionValue525_g83210);
				float2 break364_g83210 = lerpResult551_g83210;
				float3 appendResult638_g83210 = (float3(break364_g83210.x , 0.0 , break364_g83210.y));
				half3 Motion_10_Interaction7519_g83150 = appendResult638_g83210;
				float temp_output_84_0_g83179 = _LayerVertexValue;
				float temp_output_19_0_g83183 = TVE_VertexUsage[(int)temp_output_84_0_g83179];
				float4 temp_output_94_19_g83179 = TVE_VertexCoords;
				float3 lerpResult7575_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _VertexPositionMode);
				half2 UV97_g83179 = ( (temp_output_94_19_g83179).zw + ( (temp_output_94_19_g83179).xy * (lerpResult7575_g83150).xz ) );
				float4 tex2DArrayNode50_g83179 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g83179,temp_output_84_0_g83179), 0.0 );
				float4 temp_output_17_0_g83183 = tex2DArrayNode50_g83179;
				float4 temp_output_111_19_g83179 = TVE_VertexParams;
				float4 temp_output_3_0_g83183 = temp_output_111_19_g83179;
				float4 ifLocalVar18_g83183 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83183 >= 0.5 )
				ifLocalVar18_g83183 = temp_output_17_0_g83183;
				else
				ifLocalVar18_g83183 = temp_output_3_0_g83183;
				float4 lerpResult22_g83183 = lerp( temp_output_3_0_g83183 , temp_output_17_0_g83183 , temp_output_19_0_g83183);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83183 = lerpResult22_g83183;
				#else
				float4 staticSwitch24_g83183 = ifLocalVar18_g83183;
				#endif
				half4 Global_Vertex_Params4173_g83150 = staticSwitch24_g83183;
				float4 break322_g83217 = Global_Vertex_Params4173_g83150;
				float2 appendResult355_g83217 = (float2(break322_g83217.x , break322_g83217.y));
				float2 temp_output_356_0_g83217 = (appendResult355_g83217*2.0 + -1.0);
				float2 break357_g83217 = temp_output_356_0_g83217;
				float3 appendResult361_g83217 = (float3(break357_g83217.x , 0.0 , break357_g83217.y));
				half2 Global_VertexOrientationOS7550_g83150 = (( mul( unity_WorldToObject, float4( appendResult361_g83217 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float2 lerpResult7535_g83150 = lerp( float2( 0,0 ) , Global_VertexOrientationOS7550_g83150 , _GlobalOrientation);
				float2 break7552_g83150 = lerpResult7535_g83150;
				float3 appendResult7553_g83150 = (float3(break7552_g83150.x , 0.0 , break7552_g83150.y));
				half3 Vertex_Orientation7542_g83150 = appendResult7553_g83150;
				half3 Angle44_g83230 = ( Motion_10_Interaction7519_g83150 + Vertex_Orientation7542_g83150 );
				half Angle44_g83231 = (Angle44_g83230).z;
				half3 VertexPos40_g83232 = ( VertexPosRotationAxis50_g83231 + ( VertexPosOtherAxis82_g83231 * cos( Angle44_g83231 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g83231 ) * sin( Angle44_g83231 ) ) );
				float3 appendResult74_g83232 = (float3(0.0 , 0.0 , VertexPos40_g83232.z));
				half3 VertexPosRotationAxis50_g83232 = appendResult74_g83232;
				float3 break84_g83232 = VertexPos40_g83232;
				float3 appendResult81_g83232 = (float3(break84_g83232.x , break84_g83232.y , 0.0));
				half3 VertexPosOtherAxis82_g83232 = appendResult81_g83232;
				half Angle44_g83232 = -(Angle44_g83230).x;
				half3 Input_Position419_g83203 = WorldPosition_Shifted7477_g83150;
				float3 break459_g83203 = Input_Position419_g83203;
				float Sum_Position446_g83203 = ( break459_g83203.x + break459_g83203.y + break459_g83203.z );
				half Input_MotionScale321_g83203 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g83203 = _MotionVariation_20;
				half Input_GlobalVariation400_g83203 = Global_MeshVariation5104_g83150;
				float lerpResult128_g83204 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83203 = _MotionSpeed_20;
				float temp_output_404_0_g83203 = ( lerpResult128_g83204 * Input_MotionSpeed62_g83203 );
				half Motion_SineA450_g83203 = sin( ( ( Sum_Position446_g83203 * Input_MotionScale321_g83203 ) + ( Input_MotionVariation330_g83203 * Input_GlobalVariation400_g83203 ) + temp_output_404_0_g83203 ) );
				half Motion_SineB395_g83203 = sin( ( ( temp_output_404_0_g83203 * 0.6842 ) + ( Sum_Position446_g83203 * Input_MotionScale321_g83203 ) ) );
				half3 Input_Position419_g83242 = VertexPosition3588_g83150;
				float3 normalizeResult518_g83242 = normalize( Input_Position419_g83242 );
				half2 Input_DirectionOS423_g83242 = Global_React_DirectionOS39_g83150;
				float2 break521_g83242 = -Input_DirectionOS423_g83242;
				float3 appendResult522_g83242 = (float3(break521_g83242.x , 0.0 , break521_g83242.y));
				float dotResult519_g83242 = dot( normalizeResult518_g83242 , appendResult522_g83242 );
				half Input_Value62_g83242 = _MotionFacingValue;
				float lerpResult524_g83242 = lerp( 1.0 , (dotResult519_g83242*0.5 + 0.5) , Input_Value62_g83242);
				half ObjectData20_g83243 = max( lerpResult524_g83242 , 0.001 );
				half WorldData19_g83243 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83243 = WorldData19_g83243;
				#else
				float staticSwitch14_g83243 = ObjectData20_g83243;
				#endif
				half Motion_FacingMask5214_g83150 = staticSwitch14_g83243;
				half Motion_20_Amplitude4381_g83150 = Motion_FacingMask5214_g83150;
				half Input_MotionAmplitude384_g83203 = Motion_20_Amplitude4381_g83150;
				half Input_GlobalWind407_g83203 = Global_Wind_Power2223_g83150;
				float4 break638_g83195 = abs( Noise_Complex703_g83195 );
				half Global_Noise_B5526_g83150 = break638_g83195.b;
				half Input_GlobalNoise411_g83203 = Global_Noise_B5526_g83150;
				float lerpResult413_g83203 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g83203);
				half Motion_Amplitude418_g83203 = ( Input_MotionAmplitude384_g83203 * Input_GlobalWind407_g83203 * pow( Input_GlobalNoise411_g83203 , lerpResult413_g83203 ) );
				half Input_Squash58_g83203 = _MotionAmplitude_20;
				float enc59_g83205 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g83205 = DecodeFloatToVector2( enc59_g83205 );
				float2 break61_g83205 = localDecodeFloatToVector259_g83205;
				half Mesh_Motion_2060_g83150 = break61_g83205.x;
				half Input_MeshMotion_20388_g83203 = Mesh_Motion_2060_g83150;
				float Bounds_Radius5231_g83150 = break63_g83205.y;
				half Input_BoundsRadius390_g83203 = Bounds_Radius5231_g83150;
				half Global_MotionValue462_g83203 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g83203 = Global_React_DirectionOS39_g83150;
				float2 break371_g83203 = Input_DirectionOS366_g83203;
				float3 appendResult372_g83203 = (float3(break371_g83203.x , ( Motion_SineA450_g83203 * 0.3 ) , break371_g83203.y));
				half3 Motion_20_Squash4418_g83150 = ( ( (max( Motion_SineA450_g83203 , Motion_SineB395_g83203 )*0.5 + 0.5) * Motion_Amplitude418_g83203 * Input_Squash58_g83203 * Input_MeshMotion_20388_g83203 * Input_BoundsRadius390_g83203 * Global_MotionValue462_g83203 ) * appendResult372_g83203 );
				half3 VertexPos40_g83220 = ( ( VertexPosRotationAxis50_g83232 + ( VertexPosOtherAxis82_g83232 * cos( Angle44_g83232 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g83232 ) * sin( Angle44_g83232 ) ) ) + Motion_20_Squash4418_g83150 );
				float3 appendResult74_g83220 = (float3(0.0 , VertexPos40_g83220.y , 0.0));
				float3 VertexPosRotationAxis50_g83220 = appendResult74_g83220;
				float3 break84_g83220 = VertexPos40_g83220;
				float3 appendResult81_g83220 = (float3(break84_g83220.x , 0.0 , break84_g83220.z));
				float3 VertexPosOtherAxis82_g83220 = appendResult81_g83220;
				half Input_Rolling379_g83203 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g83150 = ( Motion_SineA450_g83203 * Motion_Amplitude418_g83203 * Input_Rolling379_g83203 * Input_MeshMotion_20388_g83203 * Global_MotionValue462_g83203 );
				half Angle44_g83220 = Motion_20_Rolling5257_g83150;
				half3 Input_Position500_g83199 = WorldPosition_Shifted7477_g83150;
				half Input_MotionScale321_g83199 = _MotionScale_32;
				half Input_MotionVariation330_g83199 = _MotionVariation_32;
				half Input_GlobalVariation372_g83199 = Global_MeshVariation5104_g83150;
				float lerpResult128_g83200 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83199 = _MotionSpeed_32;
				float4 tex2DNode460_g83199 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g83199).xz * Input_MotionScale321_g83199 * 0.03 ) + ( Input_MotionVariation330_g83199 * Input_GlobalVariation372_g83199 ) + ( lerpResult128_g83200 * Input_MotionSpeed62_g83199 * 0.02 ) ), 0.0 );
				float3 appendResult462_g83199 = (float3(tex2DNode460_g83199.r , tex2DNode460_g83199.g , tex2DNode460_g83199.b));
				half3 Flutter_Texture489_g83199 = (appendResult462_g83199*2.0 + -1.0);
				float temp_output_7_0_g83185 = TVE_MotionFadeEnd;
				float temp_output_10_0_g83185 = ( TVE_MotionFadeStart - temp_output_7_0_g83185 );
				half Motion_FadeOut4005_g83150 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g83185 ) / ( temp_output_10_0_g83185 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g83150 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g83150 * Motion_FadeOut4005_g83150 );
				half Input_MotionAmplitude58_g83199 = Motion_30_Amplitude4960_g83150;
				half Mesh_Motion_30144_g83150 = break61_g83205.y;
				half Input_MeshMotion_30374_g83199 = Mesh_Motion_30144_g83150;
				half Input_GlobalWind471_g83199 = Global_Wind_Power2223_g83150;
				half Global_MotionValue503_g83199 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g83199 = Global_Noise_B5526_g83150;
				float lerpResult466_g83199 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g83199);
				half Flutter_Amplitude491_g83199 = ( Input_MotionAmplitude58_g83199 * Input_MeshMotion_30374_g83199 * Input_GlobalWind471_g83199 * Global_MotionValue503_g83199 * pow( Input_GlobalNoise472_g83199 , lerpResult466_g83199 ) );
				half3 Motion_30_Flutter263_g83150 = ( Flutter_Texture489_g83199 * Flutter_Amplitude491_g83199 );
				float3 Vertex_Motion_Object833_g83150 = ( ( VertexPosRotationAxis50_g83220 + ( VertexPosOtherAxis82_g83220 * cos( Angle44_g83220 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g83220 ) * sin( Angle44_g83220 ) ) ) + Motion_30_Flutter263_g83150 );
				half3 ObjectData20_g83221 = Vertex_Motion_Object833_g83150;
				float3 temp_output_3474_0_g83150 = ( VertexPosition3588_g83150 - Mesh_PivotsOS2291_g83150 );
				float3 Vertex_Motion_World1118_g83150 = ( ( ( temp_output_3474_0_g83150 + ( Motion_10_Interaction7519_g83150 + Vertex_Orientation7542_g83150 ) ) + Motion_20_Squash4418_g83150 ) + Motion_30_Flutter263_g83150 );
				half3 WorldData19_g83221 = Vertex_Motion_World1118_g83150;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83221 = WorldData19_g83221;
				#else
				float3 staticSwitch14_g83221 = ObjectData20_g83221;
				#endif
				float3 temp_output_7495_0_g83150 = staticSwitch14_g83221;
				float3 Vertex_Motion7493_g83150 = temp_output_7495_0_g83150;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g83150 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g83150 = normalizeResult2169_g83150;
				float3 break2709_g83150 = cross( ViewDirection3963_g83150 , half3(0,1,0) );
				float3 appendResult2710_g83150 = (float3(-break2709_g83150.z , 0.0 , break2709_g83150.x));
				float3 appendResult2667_g83150 = (float3(Global_MeshVariation5104_g83150 , 0.5 , Global_MeshVariation5104_g83150));
				half Mesh_Height1524_g83150 = v.ase_color.a;
				float dotResult2212_g83150 = dot( ViewDirection3963_g83150 , float3(0,1,0) );
				half Mask_HView2656_g83150 = dotResult2212_g83150;
				float saferPower2652_g83150 = abs( Mask_HView2656_g83150 );
				half3 Grass_Perspective2661_g83150 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g83150 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g83150*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g83150 * pow( saferPower2652_g83150 , _PerspectiveAngleValue ) );
				half Global_VertexSize174_g83150 = saturate( break322_g83217.w );
				float lerpResult346_g83150 = lerp( 1.0 , Global_VertexSize174_g83150 , _GlobalSize);
				float3 appendResult3480_g83150 = (float3(lerpResult346_g83150 , lerpResult346_g83150 , lerpResult346_g83150));
				half3 ObjectData20_g83224 = appendResult3480_g83150;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g83224 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83224 = WorldData19_g83224;
				#else
				float3 staticSwitch14_g83224 = ObjectData20_g83224;
				#endif
				half3 Vertex_Size1741_g83150 = staticSwitch14_g83224;
				float temp_output_7_0_g83225 = _SizeFadeEndValue;
				float temp_output_10_0_g83225 = ( _SizeFadeStartValue - temp_output_7_0_g83225 );
				float temp_output_7453_0_g83150 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g83150 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g83225 ) / ( temp_output_10_0_g83225 + 0.0001 ) ) );
				float3 appendResult3482_g83150 = (float3(temp_output_7453_0_g83150 , temp_output_7453_0_g83150 , temp_output_7453_0_g83150));
				half3 ObjectData20_g83223 = appendResult3482_g83150;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g83223 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83223 = WorldData19_g83223;
				#else
				float3 staticSwitch14_g83223 = ObjectData20_g83223;
				#endif
				float3 Vertex_SizeFade1740_g83150 = staticSwitch14_g83223;
				half Global_VertexOffset7549_g83150 = break322_g83217.z;
				float3 ase_objectScale = float3( length( unity_ObjectToWorld[ 0 ].xyz ), length( unity_ObjectToWorld[ 1 ].xyz ), length( unity_ObjectToWorld[ 2 ].xyz ) );
				float3 appendResult7547_g83150 = (float3(0.0 , ( ( ( ( Global_VertexOffset7549_g83150 - ( (ObjectPosition_Shifted7481_g83150).y * _ConformOffsetMode ) ) + _ConformOffsetValue ) / ase_objectScale.y ) * _GlobalConform ) , 0.0));
				half3 Vertex_Offset7544_g83150 = appendResult7547_g83150;
				float3 lerpResult16_g83226 = lerp( VertexPosition3588_g83150 , ( ( ( Vertex_Motion7493_g83150 + Grass_Perspective2661_g83150 ) * Vertex_Size1741_g83150 * Vertex_SizeFade1740_g83150 ) + Mesh_PivotsOS2291_g83150 + Vertex_Offset7544_g83150 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g83150 = lerpResult16_g83226;
				float3 Final_VertexPosition890_g83150 = ( temp_output_4912_0_g83150 + _DisableSRPBatcher );
				
				half2 Global_VertexOrientationWS7551_g83150 = temp_output_356_0_g83217;
				float2 break7779_g83150 = Global_VertexOrientationWS7551_g83150;
				float dotResult8067_g83150 = dot( Global_VertexOrientationWS7551_g83150 , Global_VertexOrientationWS7551_g83150 );
				float3 appendResult7781_g83150 = (float3(break7779_g83150.x , sqrt( ( 1.0 - saturate( dotResult8067_g83150 ) ) ) , break7779_g83150.y));
				float3 normalizeResult8063_g83150 = normalize( appendResult7781_g83150 );
				float3 worldToObjDir7782_g83150 = ASESafeNormalize( mul( unity_WorldToObject, float4( normalizeResult8063_g83150, 0 ) ).xyz );
				half Terrain_Blend_Offset8086_g83150 = _TerrainBlendOffsetValue;
				half Terrain_Mask_Vertex8085_g83150 = saturate( ( ( Global_VertexOffset7549_g83150 + ( Terrain_Blend_Offset8086_g83150 * _TerrainBlendNormalValue ) ) - (WorldPosition_Shifted7477_g83150).y ) );
				float3 lerpResult7784_g83150 = lerp( v.normal , worldToObjDir7782_g83150 , Terrain_Mask_Vertex8085_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7896_g83150 = lerpResult7784_g83150;
				#else
				float3 staticSwitch7896_g83150 = v.normal;
				#endif
				
				float4 break33_g83216 = _second_uvs_mode;
				float2 temp_output_30_0_g83216 = ( v.ase_texcoord.xy * break33_g83216.x );
				float2 appendResult21_g83205 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g83150 = appendResult21_g83205;
				float2 temp_output_29_0_g83216 = ( Mesh_DetailCoord3_g83150 * break33_g83216.y );
				float2 temp_output_31_0_g83216 = ( (WorldPosition_Shifted7477_g83150).xz * break33_g83216.z );
				half2 Second_UVs_Tilling7656_g83150 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7664_g83150 = ( 1.0 / Second_UVs_Tilling7656_g83150 );
				float2 lerpResult7660_g83150 = lerp( Second_UVs_Tilling7656_g83150 , Second_UVs_Scale7664_g83150 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7657_g83150 = (_SecondUVs).zw;
				float2 vertexToFrag11_g83215 = ( ( ( temp_output_30_0_g83216 + temp_output_29_0_g83216 + temp_output_31_0_g83216 ) * lerpResult7660_g83150 ) + Second_UVs_Offset7657_g83150 );
				o.ase_texcoord10.xy = vertexToFrag11_g83215;
				float vertexToFrag11_g83454 = saturate( ( ( Global_VertexOffset7549_g83150 + Terrain_Blend_Offset8086_g83150 ) - (WorldPosition_Shifted7477_g83150).y ) );
				o.ase_texcoord10.z = vertexToFrag11_g83454;
				o.ase_texcoord11.xyz = vertexToFrag3890_g83150;
				o.ase_texcoord12.xyz = vertexToFrag4224_g83150;
				half Global_Noise_A4860_g83150 = break638_g83195.a;
				half Tint_Highlight_Value3231_g83150 = ( Global_Noise_A4860_g83150 * Global_Wind_Power2223_g83150 * Motion_FadeOut4005_g83150 * Mesh_Height1524_g83150 );
				float vertexToFrag11_g83258 = Tint_Highlight_Value3231_g83150;
				o.ase_texcoord10.w = vertexToFrag11_g83258;
				
				o.ase_texcoord9 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g83150;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = staticSwitch7896_g83150;
				v.tangent = v.tangent;

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
					o.screenPos = ComputeScreenPos(o.pos);
				#endif
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag ( v2f IN , bool ase_vface : SV_IsFrontFace
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif


				half2 Main_UVs15_g83150 = ( ( IN.ase_texcoord9.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g83150 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g83150 );
				float3 lerpResult6223_g83150 = lerp( float3( 1,1,1 ) , (tex2DNode29_g83150).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g83150 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g83150 );
				half Main_Mask57_g83150 = tex2DNode35_g83150.b;
				float clampResult17_g83236 = clamp( Main_Mask57_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83237 = _MainMaskMinValue;
				float temp_output_10_0_g83237 = ( _MainMaskMaxValue - temp_output_7_0_g83237 );
				half Main_Mask_Remap5765_g83150 = saturate( ( ( clampResult17_g83236 - temp_output_7_0_g83237 ) / ( temp_output_10_0_g83237 + 0.0001 ) ) );
				float lerpResult8007_g83150 = lerp( 1.0 , Main_Mask_Remap5765_g83150 , _MainColorMode);
				float4 lerpResult7986_g83150 = lerp( _MainColorTwo , _MainColor , lerpResult8007_g83150);
				half3 Main_Color_RGB7994_g83150 = (lerpResult7986_g83150).rgb;
				half3 Main_Albedo99_g83150 = ( lerpResult6223_g83150 * Main_Color_RGB7994_g83150 );
				float2 vertexToFrag11_g83215 = IN.ase_texcoord10.xy;
				half2 Second_UVs17_g83150 = vertexToFrag11_g83215;
				float4 tex2DNode89_g83150 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g83150 );
				float3 lerpResult6225_g83150 = lerp( float3( 1,1,1 ) , (tex2DNode89_g83150).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g83150 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g83150 );
				half Second_Mask81_g83150 = tex2DNode33_g83150.b;
				float clampResult17_g83239 = clamp( Second_Mask81_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83240 = _SecondMaskMinValue;
				float temp_output_10_0_g83240 = ( _SecondMaskMaxValue - temp_output_7_0_g83240 );
				half Second_Mask_Remap6130_g83150 = saturate( ( ( clampResult17_g83239 - temp_output_7_0_g83240 ) / ( temp_output_10_0_g83240 + 0.0001 ) ) );
				float lerpResult8008_g83150 = lerp( 1.0 , Second_Mask_Remap6130_g83150 , _SecondColorMode);
				float4 lerpResult7997_g83150 = lerp( _SecondColorTwo , _SecondColor , lerpResult8008_g83150);
				half3 Second_Color_RGB8005_g83150 = (lerpResult7997_g83150).rgb;
				half3 Second_Albedo153_g83150 = ( lerpResult6225_g83150 * Second_Color_RGB8005_g83150 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g83249 = 2.0;
				#else
				float staticSwitch1_g83249 = 4.594794;
				#endif
				float3 lerpResult4834_g83150 = lerp( ( Main_Albedo99_g83150 * Second_Albedo153_g83150 * staticSwitch1_g83249 ) , Second_Albedo153_g83150 , _DetailBlendMode);
				float lerpResult6885_g83150 = lerp( Main_Mask57_g83150 , Second_Mask81_g83150 , _DetailMaskMode);
				float clampResult17_g83255 = clamp( lerpResult6885_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83254 = _DetailMaskMinValue;
				float temp_output_10_0_g83254 = ( _DetailMaskMaxValue - temp_output_7_0_g83254 );
				half Detail_Mask_Texture6794_g83150 = saturate( ( ( clampResult17_g83255 - temp_output_7_0_g83254 ) / ( temp_output_10_0_g83254 + 0.0001 ) ) );
				half Mesh_DetailMask90_g83150 = IN.ase_color.b;
				half4 Normal_Packed45_g83235 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g83150 );
				float2 appendResult58_g83235 = (float2(( (Normal_Packed45_g83235).x * (Normal_Packed45_g83235).w ) , (Normal_Packed45_g83235).y));
				half2 Normal_Default50_g83235 = appendResult58_g83235;
				half2 Normal_ASTC41_g83235 = (Normal_Packed45_g83235).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83235 = Normal_ASTC41_g83235;
				#else
				float2 staticSwitch38_g83235 = Normal_Default50_g83235;
				#endif
				half2 Normal_NO_DTX544_g83235 = (Normal_Packed45_g83235).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83235 = Normal_NO_DTX544_g83235;
				#else
				float2 staticSwitch37_g83235 = staticSwitch38_g83235;
				#endif
				float2 temp_output_6555_0_g83150 = ( (staticSwitch37_g83235*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g83150 = (float3(temp_output_6555_0_g83150 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g83150 = appendResult7388_g83150;
				float3 worldNormal7389_g83150 = float3(dot(tanToWorld0,tanNormal7389_g83150), dot(tanToWorld1,tanNormal7389_g83150), dot(tanToWorld2,tanNormal7389_g83150));
				half3 Main_NormalWS7390_g83150 = worldNormal7389_g83150;
				float lerpResult6884_g83150 = lerp( Mesh_DetailMask90_g83150 , ((Main_NormalWS7390_g83150).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g83253 = clamp( lerpResult6884_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83252 = _DetailMeshMinValue;
				float temp_output_10_0_g83252 = ( _DetailMeshMaxValue - temp_output_7_0_g83252 );
				half Detail_Mask_Surface1540_g83150 = saturate( ( ( clampResult17_g83253 - temp_output_7_0_g83252 ) / ( temp_output_10_0_g83252 + 0.0001 ) ) );
				float clampResult17_g83256 = clamp( ( Detail_Mask_Texture6794_g83150 * Detail_Mask_Surface1540_g83150 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g83257 = _DetailBlendMinValue;
				float temp_output_10_0_g83257 = ( _DetailBlendMaxValue - temp_output_7_0_g83257 );
				half Detail_Mask147_g83150 = ( saturate( ( ( clampResult17_g83256 - temp_output_7_0_g83257 ) / ( temp_output_10_0_g83257 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g83150 = lerp( Main_Albedo99_g83150 , lerpResult4834_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g83150 = lerpResult235_g83150;
				#else
				float3 staticSwitch255_g83150 = Main_Albedo99_g83150;
				#endif
				half3 Blend_Albedo_Detail265_g83150 = staticSwitch255_g83150;
				half Mesh_Height1524_g83150 = IN.ase_color.a;
				float temp_output_7_0_g83260 = _GradientMinValue;
				float temp_output_10_0_g83260 = ( _GradientMaxValue - temp_output_7_0_g83260 );
				half Tint_Gradient_Value2784_g83150 = saturate( ( ( Mesh_Height1524_g83150 - temp_output_7_0_g83260 ) / ( temp_output_10_0_g83260 + 0.0001 ) ) );
				float3 lerpResult2779_g83150 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g83150);
				float lerpResult6617_g83150 = lerp( Main_Mask_Remap5765_g83150 , Second_Mask_Remap6130_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g83150 = lerpResult6617_g83150;
				#else
				float staticSwitch6623_g83150 = Main_Mask_Remap5765_g83150;
				#endif
				half Blend_MaskRemap_Detail6621_g83150 = staticSwitch6623_g83150;
				half Tint_Gradient_Mask6207_g83150 = Blend_MaskRemap_Detail6621_g83150;
				float3 lerpResult6208_g83150 = lerp( float3( 1,1,1 ) , lerpResult2779_g83150 , Tint_Gradient_Mask6207_g83150);
				half3 Tint_Gradient_Color5769_g83150 = lerpResult6208_g83150;
				half3 Tint_Noise_Color5770_g83150 = float3(1,1,1);
				half3 Tint_User_Color7335_g83150 = float3(1,1,1);
				float Mesh_Occlusion318_g83150 = IN.ase_color.g;
				float clampResult17_g83259 = clamp( Mesh_Occlusion318_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83261 = _VertexOcclusionMinValue;
				float temp_output_10_0_g83261 = ( _VertexOcclusionMaxValue - temp_output_7_0_g83261 );
				half Occlusion_Mask6432_g83150 = saturate( ( ( clampResult17_g83259 - temp_output_7_0_g83261 ) / ( temp_output_10_0_g83261 + 0.0001 ) ) );
				float3 lerpResult2945_g83150 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g83150);
				half3 Occlusion_Color648_g83150 = lerpResult2945_g83150;
				half3 Matcap_Color7428_g83150 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g83150 = ( ( Blend_Albedo_Detail265_g83150 * Tint_Gradient_Color5769_g83150 * Tint_Noise_Color5770_g83150 * Tint_User_Color7335_g83150 * Occlusion_Color648_g83150 ) + Matcap_Color7428_g83150 );
				float localHeightBasedBlending7362_g83651 = ( 0.0 );
				float4 appendResult9125_g83651 = (float4(_TerrainPosition.x , _TerrainPosition.z , _TerrainSize.x , _TerrainSize.z));
				float4 temp_output_35_0_g83748 = appendResult9125_g83651;
				float2 InputScale48_g83748 = (temp_output_35_0_g83748).zw;
				half2 FinalScale53_g83748 = ( 1.0 / InputScale48_g83748 );
				float2 InputPosition52_g83748 = (temp_output_35_0_g83748).xy;
				half2 FinalPosition58_g83748 = -( FinalScale53_g83748 * InputPosition52_g83748 );
				float2 Terrain_Control_UV7873_g83651 = ( ( (worldPos).xz * FinalScale53_g83748 ) + FinalPosition58_g83748 );
				half4 Terrain_Control_047365_g83651 = SAMPLE_TEXTURE2D( _ControlTex1, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_047362_g83651 = Terrain_Control_047365_g83651;
				half4 Terrain_Control_087366_g83651 = SAMPLE_TEXTURE2D( _ControlTex2, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_087362_g83651 = Terrain_Control_087366_g83651;
				half4 Terrain_Control_127712_g83651 = SAMPLE_TEXTURE2D( _ControlTex3, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_127362_g83651 = Terrain_Control_127712_g83651;
				half4 Terrain_Control_167711_g83651 = SAMPLE_TEXTURE2D( _ControlTex4, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_167362_g83651 = Terrain_Control_167711_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83704) = _MaskTex1;
				SamplerState Sampler238_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_016785_g83651 = _Coords1;
				float4 temp_output_37_0_g83704 = Input_Coords_016785_g83651;
				half4 Coords238_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition238_g83704 = worldPos;
				half4 localSamplePlanar2D238_g83704 = SamplePlanar2D( Texture238_g83704 , Sampler238_g83704 , Coords238_g83704 , WorldPosition238_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83704) = _MaskTex1;
				SamplerState Sampler246_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition246_g83704 = worldPos;
				half3 WorldNormal246_g83704 = WorldNormal;
				half4 localSamplePlanar3D246_g83704 = SamplePlanar3D( Texture246_g83704 , Sampler246_g83704 , Coords246_g83704 , WorldPosition246_g83704 , WorldNormal246_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83704) = _MaskTex1;
				SamplerState Sampler234_g83704 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83704 = temp_output_37_0_g83704;
				float3 WorldPosition234_g83704 = worldPos;
				float4 localSampleStochastic2D234_g83704 = SampleStochastic2D( Texture234_g83704 , Sampler234_g83704 , Coords234_g83704 , WorldPosition234_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83704) = _MaskTex1;
				SamplerState Sampler263_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition263_g83704 = worldPos;
				half3 WorldNormal263_g83704 = WorldNormal;
				half4 localSampleStochastic3D263_g83704 = SampleStochastic3D( Texture263_g83704 , Sampler263_g83704 , Coords263_g83704 , WorldPosition263_g83704 , WorldNormal263_g83704 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8639_g83651 = localSamplePlanar2D238_g83704;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8639_g83651 = localSamplePlanar3D246_g83704;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8639_g83651 = localSampleStochastic2D234_g83704;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8639_g83651 = localSampleStochastic3D263_g83704;
				#else
				float4 staticSwitch8639_g83651 = localSamplePlanar2D238_g83704;
				#endif
				float4 temp_output_7_0_g83653 = _MaskMin1;
				float4 temp_output_10_0_g83653 = ( _MaskMax1 - temp_output_7_0_g83653 );
				float4 temp_output_6970_0_g83651 = saturate( ( ( staticSwitch8639_g83651 - temp_output_7_0_g83653 ) / ( temp_output_10_0_g83653 + 0.0001 ) ) );
				half4 Masks_015_g83661 = temp_output_6970_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83705) = _MaskTex2;
				SamplerState Sampler238_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_026787_g83651 = _Coords2;
				float4 temp_output_37_0_g83705 = Input_Coords_026787_g83651;
				half4 Coords238_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition238_g83705 = worldPos;
				half4 localSamplePlanar2D238_g83705 = SamplePlanar2D( Texture238_g83705 , Sampler238_g83705 , Coords238_g83705 , WorldPosition238_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83705) = _MaskTex2;
				SamplerState Sampler246_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition246_g83705 = worldPos;
				half3 WorldNormal246_g83705 = WorldNormal;
				half4 localSamplePlanar3D246_g83705 = SamplePlanar3D( Texture246_g83705 , Sampler246_g83705 , Coords246_g83705 , WorldPosition246_g83705 , WorldNormal246_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83705) = _MaskTex2;
				SamplerState Sampler234_g83705 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83705 = temp_output_37_0_g83705;
				float3 WorldPosition234_g83705 = worldPos;
				float4 localSampleStochastic2D234_g83705 = SampleStochastic2D( Texture234_g83705 , Sampler234_g83705 , Coords234_g83705 , WorldPosition234_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83705) = _MaskTex2;
				SamplerState Sampler263_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition263_g83705 = worldPos;
				half3 WorldNormal263_g83705 = WorldNormal;
				half4 localSampleStochastic3D263_g83705 = SampleStochastic3D( Texture263_g83705 , Sampler263_g83705 , Coords263_g83705 , WorldPosition263_g83705 , WorldNormal263_g83705 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8640_g83651 = localSamplePlanar2D238_g83705;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8640_g83651 = localSamplePlanar3D246_g83705;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8640_g83651 = localSampleStochastic2D234_g83705;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8640_g83651 = localSampleStochastic3D263_g83705;
				#else
				float4 staticSwitch8640_g83651 = localSamplePlanar2D238_g83705;
				#endif
				float4 temp_output_7_0_g83655 = _MaskMin2;
				float4 temp_output_10_0_g83655 = ( _MaskMax2 - temp_output_7_0_g83655 );
				float4 temp_output_6977_0_g83651 = saturate( ( ( staticSwitch8640_g83651 - temp_output_7_0_g83655 ) / ( temp_output_10_0_g83655 + 0.0001 ) ) );
				half4 Masks_0210_g83661 = temp_output_6977_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83706) = _MaskTex3;
				SamplerState Sampler238_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_036789_g83651 = _Coords3;
				float4 temp_output_37_0_g83706 = Input_Coords_036789_g83651;
				half4 Coords238_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition238_g83706 = worldPos;
				half4 localSamplePlanar2D238_g83706 = SamplePlanar2D( Texture238_g83706 , Sampler238_g83706 , Coords238_g83706 , WorldPosition238_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83706) = _MaskTex3;
				SamplerState Sampler246_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition246_g83706 = worldPos;
				half3 WorldNormal246_g83706 = WorldNormal;
				half4 localSamplePlanar3D246_g83706 = SamplePlanar3D( Texture246_g83706 , Sampler246_g83706 , Coords246_g83706 , WorldPosition246_g83706 , WorldNormal246_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83706) = _MaskTex3;
				SamplerState Sampler234_g83706 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83706 = temp_output_37_0_g83706;
				float3 WorldPosition234_g83706 = worldPos;
				float4 localSampleStochastic2D234_g83706 = SampleStochastic2D( Texture234_g83706 , Sampler234_g83706 , Coords234_g83706 , WorldPosition234_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83706) = _MaskTex3;
				SamplerState Sampler263_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition263_g83706 = worldPos;
				half3 WorldNormal263_g83706 = WorldNormal;
				half4 localSampleStochastic3D263_g83706 = SampleStochastic3D( Texture263_g83706 , Sampler263_g83706 , Coords263_g83706 , WorldPosition263_g83706 , WorldNormal263_g83706 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8641_g83651 = localSamplePlanar2D238_g83706;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8641_g83651 = localSamplePlanar3D246_g83706;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8641_g83651 = localSampleStochastic2D234_g83706;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8641_g83651 = localSampleStochastic3D263_g83706;
				#else
				float4 staticSwitch8641_g83651 = localSamplePlanar2D238_g83706;
				#endif
				float4 temp_output_7_0_g83656 = _MaskMin3;
				float4 temp_output_10_0_g83656 = ( _MaskMax3 - temp_output_7_0_g83656 );
				float4 temp_output_6978_0_g83651 = saturate( ( ( staticSwitch8641_g83651 - temp_output_7_0_g83656 ) / ( temp_output_10_0_g83656 + 0.0001 ) ) );
				half4 Masks_0312_g83661 = temp_output_6978_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83707) = _MaskTex4;
				SamplerState Sampler238_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_046791_g83651 = _Coords4;
				float4 temp_output_37_0_g83707 = Input_Coords_046791_g83651;
				half4 Coords238_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition238_g83707 = worldPos;
				half4 localSamplePlanar2D238_g83707 = SamplePlanar2D( Texture238_g83707 , Sampler238_g83707 , Coords238_g83707 , WorldPosition238_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83707) = _MaskTex4;
				SamplerState Sampler246_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition246_g83707 = worldPos;
				half3 WorldNormal246_g83707 = WorldNormal;
				half4 localSamplePlanar3D246_g83707 = SamplePlanar3D( Texture246_g83707 , Sampler246_g83707 , Coords246_g83707 , WorldPosition246_g83707 , WorldNormal246_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83707) = _MaskTex4;
				SamplerState Sampler234_g83707 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83707 = temp_output_37_0_g83707;
				float3 WorldPosition234_g83707 = worldPos;
				float4 localSampleStochastic2D234_g83707 = SampleStochastic2D( Texture234_g83707 , Sampler234_g83707 , Coords234_g83707 , WorldPosition234_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83707) = _MaskTex4;
				SamplerState Sampler263_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition263_g83707 = worldPos;
				half3 WorldNormal263_g83707 = WorldNormal;
				half4 localSampleStochastic3D263_g83707 = SampleStochastic3D( Texture263_g83707 , Sampler263_g83707 , Coords263_g83707 , WorldPosition263_g83707 , WorldNormal263_g83707 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8642_g83651 = localSamplePlanar2D238_g83707;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8642_g83651 = localSamplePlanar3D246_g83707;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8642_g83651 = localSampleStochastic2D234_g83707;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8642_g83651 = localSampleStochastic3D263_g83707;
				#else
				float4 staticSwitch8642_g83651 = localSamplePlanar2D238_g83707;
				#endif
				float4 temp_output_7_0_g83657 = _MaskMin4;
				float4 temp_output_10_0_g83657 = ( _MaskMax4 - temp_output_7_0_g83657 );
				float4 temp_output_6983_0_g83651 = saturate( ( ( staticSwitch8642_g83651 - temp_output_7_0_g83657 ) / ( temp_output_10_0_g83657 + 0.0001 ) ) );
				half4 Masks_0414_g83661 = temp_output_6983_0_g83651;
				float4 appendResult29_g83661 = (float4((Masks_015_g83661).z , (Masks_0210_g83661).z , (Masks_0312_g83661).z , (Masks_0414_g83661).z));
				half4 Control31_g83661 = Terrain_Control_047365_g83651;
				half4 Terrain_Height_047210_g83651 = ( appendResult29_g83661 * Control31_g83661 );
				float4 heights_047362_g83651 = Terrain_Height_047210_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83716) = _MaskTex5;
				SamplerState Sampler238_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_058750_g83651 = _Coords5;
				float4 temp_output_37_0_g83716 = Input_Coords_058750_g83651;
				half4 Coords238_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition238_g83716 = worldPos;
				half4 localSamplePlanar2D238_g83716 = SamplePlanar2D( Texture238_g83716 , Sampler238_g83716 , Coords238_g83716 , WorldPosition238_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83716) = _MaskTex5;
				SamplerState Sampler246_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition246_g83716 = worldPos;
				half3 WorldNormal246_g83716 = WorldNormal;
				half4 localSamplePlanar3D246_g83716 = SamplePlanar3D( Texture246_g83716 , Sampler246_g83716 , Coords246_g83716 , WorldPosition246_g83716 , WorldNormal246_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83716) = _MaskTex5;
				SamplerState Sampler234_g83716 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83716 = temp_output_37_0_g83716;
				float3 WorldPosition234_g83716 = worldPos;
				float4 localSampleStochastic2D234_g83716 = SampleStochastic2D( Texture234_g83716 , Sampler234_g83716 , Coords234_g83716 , WorldPosition234_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83716) = _MaskTex5;
				SamplerState Sampler263_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition263_g83716 = worldPos;
				half3 WorldNormal263_g83716 = WorldNormal;
				half4 localSampleStochastic3D263_g83716 = SampleStochastic3D( Texture263_g83716 , Sampler263_g83716 , Coords263_g83716 , WorldPosition263_g83716 , WorldNormal263_g83716 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8710_g83651 = localSamplePlanar2D238_g83716;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8710_g83651 = localSamplePlanar3D246_g83716;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8710_g83651 = localSampleStochastic2D234_g83716;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8710_g83651 = localSampleStochastic3D263_g83716;
				#else
				float4 staticSwitch8710_g83651 = localSamplePlanar2D238_g83716;
				#endif
				float4 temp_output_7_0_g83669 = _MaskMin5;
				float4 temp_output_10_0_g83669 = ( _MaskMax5 - temp_output_7_0_g83669 );
				float4 temp_output_8714_0_g83651 = saturate( ( ( staticSwitch8710_g83651 - temp_output_7_0_g83669 ) / ( temp_output_10_0_g83669 + 0.0001 ) ) );
				half4 Masks_015_g83670 = temp_output_8714_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83717) = _MaskTex6;
				SamplerState Sampler238_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_068751_g83651 = _Coords6;
				float4 temp_output_37_0_g83717 = Input_Coords_068751_g83651;
				half4 Coords238_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition238_g83717 = worldPos;
				half4 localSamplePlanar2D238_g83717 = SamplePlanar2D( Texture238_g83717 , Sampler238_g83717 , Coords238_g83717 , WorldPosition238_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83717) = _MaskTex6;
				SamplerState Sampler246_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition246_g83717 = worldPos;
				half3 WorldNormal246_g83717 = WorldNormal;
				half4 localSamplePlanar3D246_g83717 = SamplePlanar3D( Texture246_g83717 , Sampler246_g83717 , Coords246_g83717 , WorldPosition246_g83717 , WorldNormal246_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83717) = _MaskTex6;
				SamplerState Sampler234_g83717 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83717 = temp_output_37_0_g83717;
				float3 WorldPosition234_g83717 = worldPos;
				float4 localSampleStochastic2D234_g83717 = SampleStochastic2D( Texture234_g83717 , Sampler234_g83717 , Coords234_g83717 , WorldPosition234_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83717) = _MaskTex6;
				SamplerState Sampler263_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition263_g83717 = worldPos;
				half3 WorldNormal263_g83717 = WorldNormal;
				half4 localSampleStochastic3D263_g83717 = SampleStochastic3D( Texture263_g83717 , Sampler263_g83717 , Coords263_g83717 , WorldPosition263_g83717 , WorldNormal263_g83717 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8711_g83651 = localSamplePlanar2D238_g83717;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8711_g83651 = localSamplePlanar3D246_g83717;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8711_g83651 = localSampleStochastic2D234_g83717;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8711_g83651 = localSampleStochastic3D263_g83717;
				#else
				float4 staticSwitch8711_g83651 = localSamplePlanar2D238_g83717;
				#endif
				float4 temp_output_7_0_g83672 = _MaskMin6;
				float4 temp_output_10_0_g83672 = ( _MaskMax6 - temp_output_7_0_g83672 );
				float4 temp_output_8721_0_g83651 = saturate( ( ( staticSwitch8711_g83651 - temp_output_7_0_g83672 ) / ( temp_output_10_0_g83672 + 0.0001 ) ) );
				half4 Masks_0210_g83670 = temp_output_8721_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83718) = _MaskTex7;
				SamplerState Sampler238_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_078752_g83651 = _Coords7;
				float4 temp_output_37_0_g83718 = Input_Coords_078752_g83651;
				half4 Coords238_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition238_g83718 = worldPos;
				half4 localSamplePlanar2D238_g83718 = SamplePlanar2D( Texture238_g83718 , Sampler238_g83718 , Coords238_g83718 , WorldPosition238_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83718) = _MaskTex7;
				SamplerState Sampler246_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition246_g83718 = worldPos;
				half3 WorldNormal246_g83718 = WorldNormal;
				half4 localSamplePlanar3D246_g83718 = SamplePlanar3D( Texture246_g83718 , Sampler246_g83718 , Coords246_g83718 , WorldPosition246_g83718 , WorldNormal246_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83718) = _MaskTex7;
				SamplerState Sampler234_g83718 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83718 = temp_output_37_0_g83718;
				float3 WorldPosition234_g83718 = worldPos;
				float4 localSampleStochastic2D234_g83718 = SampleStochastic2D( Texture234_g83718 , Sampler234_g83718 , Coords234_g83718 , WorldPosition234_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83718) = _MaskTex7;
				SamplerState Sampler263_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition263_g83718 = worldPos;
				half3 WorldNormal263_g83718 = WorldNormal;
				half4 localSampleStochastic3D263_g83718 = SampleStochastic3D( Texture263_g83718 , Sampler263_g83718 , Coords263_g83718 , WorldPosition263_g83718 , WorldNormal263_g83718 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8712_g83651 = localSamplePlanar2D238_g83718;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8712_g83651 = localSamplePlanar3D246_g83718;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8712_g83651 = localSampleStochastic2D234_g83718;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8712_g83651 = localSampleStochastic3D263_g83718;
				#else
				float4 staticSwitch8712_g83651 = localSamplePlanar2D238_g83718;
				#endif
				float4 temp_output_7_0_g83673 = _MaskMin7;
				float4 temp_output_10_0_g83673 = ( _MaskMax7 - temp_output_7_0_g83673 );
				float4 temp_output_8724_0_g83651 = saturate( ( ( staticSwitch8712_g83651 - temp_output_7_0_g83673 ) / ( temp_output_10_0_g83673 + 0.0001 ) ) );
				half4 Masks_0312_g83670 = temp_output_8724_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83719) = _MaskTex8;
				SamplerState Sampler238_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_088749_g83651 = _Coords8;
				float4 temp_output_37_0_g83719 = Input_Coords_088749_g83651;
				half4 Coords238_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition238_g83719 = worldPos;
				half4 localSamplePlanar2D238_g83719 = SamplePlanar2D( Texture238_g83719 , Sampler238_g83719 , Coords238_g83719 , WorldPosition238_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83719) = _MaskTex8;
				SamplerState Sampler246_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition246_g83719 = worldPos;
				half3 WorldNormal246_g83719 = WorldNormal;
				half4 localSamplePlanar3D246_g83719 = SamplePlanar3D( Texture246_g83719 , Sampler246_g83719 , Coords246_g83719 , WorldPosition246_g83719 , WorldNormal246_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83719) = _MaskTex8;
				SamplerState Sampler234_g83719 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83719 = temp_output_37_0_g83719;
				float3 WorldPosition234_g83719 = worldPos;
				float4 localSampleStochastic2D234_g83719 = SampleStochastic2D( Texture234_g83719 , Sampler234_g83719 , Coords234_g83719 , WorldPosition234_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83719) = _MaskTex8;
				SamplerState Sampler263_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition263_g83719 = worldPos;
				half3 WorldNormal263_g83719 = WorldNormal;
				half4 localSampleStochastic3D263_g83719 = SampleStochastic3D( Texture263_g83719 , Sampler263_g83719 , Coords263_g83719 , WorldPosition263_g83719 , WorldNormal263_g83719 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8713_g83651 = localSamplePlanar2D238_g83719;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8713_g83651 = localSamplePlanar3D246_g83719;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8713_g83651 = localSampleStochastic2D234_g83719;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8713_g83651 = localSampleStochastic3D263_g83719;
				#else
				float4 staticSwitch8713_g83651 = localSamplePlanar2D238_g83719;
				#endif
				float4 temp_output_7_0_g83674 = _MaskMin8;
				float4 temp_output_10_0_g83674 = ( _MaskMax8 - temp_output_7_0_g83674 );
				float4 temp_output_8727_0_g83651 = saturate( ( ( staticSwitch8713_g83651 - temp_output_7_0_g83674 ) / ( temp_output_10_0_g83674 + 0.0001 ) ) );
				half4 Masks_0414_g83670 = temp_output_8727_0_g83651;
				float4 appendResult29_g83670 = (float4((Masks_015_g83670).z , (Masks_0210_g83670).z , (Masks_0312_g83670).z , (Masks_0414_g83670).z));
				half4 Control31_g83670 = Terrain_Control_087366_g83651;
				half4 Terrain_Height_088731_g83651 = ( appendResult29_g83670 * Control31_g83670 );
				float4 heights_087362_g83651 = Terrain_Height_088731_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83728) = _MaskTex9;
				SamplerState Sampler238_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_098833_g83651 = _Coords9;
				float4 temp_output_37_0_g83728 = Input_Coords_098833_g83651;
				half4 Coords238_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition238_g83728 = worldPos;
				half4 localSamplePlanar2D238_g83728 = SamplePlanar2D( Texture238_g83728 , Sampler238_g83728 , Coords238_g83728 , WorldPosition238_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83728) = _MaskTex9;
				SamplerState Sampler246_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition246_g83728 = worldPos;
				half3 WorldNormal246_g83728 = WorldNormal;
				half4 localSamplePlanar3D246_g83728 = SamplePlanar3D( Texture246_g83728 , Sampler246_g83728 , Coords246_g83728 , WorldPosition246_g83728 , WorldNormal246_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83728) = _MaskTex9;
				SamplerState Sampler234_g83728 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83728 = temp_output_37_0_g83728;
				float3 WorldPosition234_g83728 = worldPos;
				float4 localSampleStochastic2D234_g83728 = SampleStochastic2D( Texture234_g83728 , Sampler234_g83728 , Coords234_g83728 , WorldPosition234_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83728) = _MaskTex9;
				SamplerState Sampler263_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition263_g83728 = worldPos;
				half3 WorldNormal263_g83728 = WorldNormal;
				half4 localSampleStochastic3D263_g83728 = SampleStochastic3D( Texture263_g83728 , Sampler263_g83728 , Coords263_g83728 , WorldPosition263_g83728 , WorldNormal263_g83728 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8878_g83651 = localSamplePlanar2D238_g83728;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8878_g83651 = localSamplePlanar3D246_g83728;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8878_g83651 = localSampleStochastic2D234_g83728;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8878_g83651 = localSampleStochastic3D263_g83728;
				#else
				float4 staticSwitch8878_g83651 = localSamplePlanar2D238_g83728;
				#endif
				float4 temp_output_7_0_g83679 = _MaskMin9;
				float4 temp_output_10_0_g83679 = ( _MaskMax9 - temp_output_7_0_g83679 );
				float4 temp_output_8815_0_g83651 = saturate( ( ( staticSwitch8878_g83651 - temp_output_7_0_g83679 ) / ( temp_output_10_0_g83679 + 0.0001 ) ) );
				half4 Masks_015_g83680 = temp_output_8815_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83729) = _MaskTex10;
				SamplerState Sampler238_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_108834_g83651 = _Coords10;
				float4 temp_output_37_0_g83729 = Input_Coords_108834_g83651;
				half4 Coords238_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition238_g83729 = worldPos;
				half4 localSamplePlanar2D238_g83729 = SamplePlanar2D( Texture238_g83729 , Sampler238_g83729 , Coords238_g83729 , WorldPosition238_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83729) = _MaskTex10;
				SamplerState Sampler246_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition246_g83729 = worldPos;
				half3 WorldNormal246_g83729 = WorldNormal;
				half4 localSamplePlanar3D246_g83729 = SamplePlanar3D( Texture246_g83729 , Sampler246_g83729 , Coords246_g83729 , WorldPosition246_g83729 , WorldNormal246_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83729) = _MaskTex10;
				SamplerState Sampler234_g83729 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83729 = temp_output_37_0_g83729;
				float3 WorldPosition234_g83729 = worldPos;
				float4 localSampleStochastic2D234_g83729 = SampleStochastic2D( Texture234_g83729 , Sampler234_g83729 , Coords234_g83729 , WorldPosition234_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83729) = _MaskTex10;
				SamplerState Sampler263_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition263_g83729 = worldPos;
				half3 WorldNormal263_g83729 = WorldNormal;
				half4 localSampleStochastic3D263_g83729 = SampleStochastic3D( Texture263_g83729 , Sampler263_g83729 , Coords263_g83729 , WorldPosition263_g83729 , WorldNormal263_g83729 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8860_g83651 = localSamplePlanar2D238_g83729;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8860_g83651 = localSamplePlanar3D246_g83729;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8860_g83651 = localSampleStochastic2D234_g83729;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8860_g83651 = localSampleStochastic3D263_g83729;
				#else
				float4 staticSwitch8860_g83651 = localSamplePlanar2D238_g83729;
				#endif
				float4 temp_output_7_0_g83682 = _MaskMin10;
				float4 temp_output_10_0_g83682 = ( _MaskMax10 - temp_output_7_0_g83682 );
				float4 temp_output_8818_0_g83651 = saturate( ( ( staticSwitch8860_g83651 - temp_output_7_0_g83682 ) / ( temp_output_10_0_g83682 + 0.0001 ) ) );
				half4 Masks_0210_g83680 = temp_output_8818_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83730) = _MaskTex11;
				SamplerState Sampler238_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_118835_g83651 = _Coords11;
				float4 temp_output_37_0_g83730 = Input_Coords_118835_g83651;
				half4 Coords238_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition238_g83730 = worldPos;
				half4 localSamplePlanar2D238_g83730 = SamplePlanar2D( Texture238_g83730 , Sampler238_g83730 , Coords238_g83730 , WorldPosition238_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83730) = _MaskTex11;
				SamplerState Sampler246_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition246_g83730 = worldPos;
				half3 WorldNormal246_g83730 = WorldNormal;
				half4 localSamplePlanar3D246_g83730 = SamplePlanar3D( Texture246_g83730 , Sampler246_g83730 , Coords246_g83730 , WorldPosition246_g83730 , WorldNormal246_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83730) = _MaskTex11;
				SamplerState Sampler234_g83730 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83730 = temp_output_37_0_g83730;
				float3 WorldPosition234_g83730 = worldPos;
				float4 localSampleStochastic2D234_g83730 = SampleStochastic2D( Texture234_g83730 , Sampler234_g83730 , Coords234_g83730 , WorldPosition234_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83730) = _MaskTex11;
				SamplerState Sampler263_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition263_g83730 = worldPos;
				half3 WorldNormal263_g83730 = WorldNormal;
				half4 localSampleStochastic3D263_g83730 = SampleStochastic3D( Texture263_g83730 , Sampler263_g83730 , Coords263_g83730 , WorldPosition263_g83730 , WorldNormal263_g83730 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8861_g83651 = localSamplePlanar2D238_g83730;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8861_g83651 = localSamplePlanar3D246_g83730;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8861_g83651 = localSampleStochastic2D234_g83730;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8861_g83651 = localSampleStochastic3D263_g83730;
				#else
				float4 staticSwitch8861_g83651 = localSamplePlanar2D238_g83730;
				#endif
				float4 temp_output_7_0_g83683 = _MaskMin11;
				float4 temp_output_10_0_g83683 = ( _MaskMax11 - temp_output_7_0_g83683 );
				float4 temp_output_8819_0_g83651 = saturate( ( ( staticSwitch8861_g83651 - temp_output_7_0_g83683 ) / ( temp_output_10_0_g83683 + 0.0001 ) ) );
				half4 Masks_0312_g83680 = temp_output_8819_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83731) = _MaskTex12;
				SamplerState Sampler238_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_128836_g83651 = _Coords12;
				float4 temp_output_37_0_g83731 = Input_Coords_128836_g83651;
				half4 Coords238_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition238_g83731 = worldPos;
				half4 localSamplePlanar2D238_g83731 = SamplePlanar2D( Texture238_g83731 , Sampler238_g83731 , Coords238_g83731 , WorldPosition238_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83731) = _MaskTex12;
				SamplerState Sampler246_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition246_g83731 = worldPos;
				half3 WorldNormal246_g83731 = WorldNormal;
				half4 localSamplePlanar3D246_g83731 = SamplePlanar3D( Texture246_g83731 , Sampler246_g83731 , Coords246_g83731 , WorldPosition246_g83731 , WorldNormal246_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83731) = _MaskTex12;
				SamplerState Sampler234_g83731 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83731 = temp_output_37_0_g83731;
				float3 WorldPosition234_g83731 = worldPos;
				float4 localSampleStochastic2D234_g83731 = SampleStochastic2D( Texture234_g83731 , Sampler234_g83731 , Coords234_g83731 , WorldPosition234_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83731) = _MaskTex12;
				SamplerState Sampler263_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition263_g83731 = worldPos;
				half3 WorldNormal263_g83731 = WorldNormal;
				half4 localSampleStochastic3D263_g83731 = SampleStochastic3D( Texture263_g83731 , Sampler263_g83731 , Coords263_g83731 , WorldPosition263_g83731 , WorldNormal263_g83731 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8879_g83651 = localSamplePlanar2D238_g83731;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8879_g83651 = localSamplePlanar3D246_g83731;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8879_g83651 = localSampleStochastic2D234_g83731;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8879_g83651 = localSampleStochastic3D263_g83731;
				#else
				float4 staticSwitch8879_g83651 = localSamplePlanar2D238_g83731;
				#endif
				float4 temp_output_7_0_g83684 = _MaskMin12;
				float4 temp_output_10_0_g83684 = ( _MaskMax12 - temp_output_7_0_g83684 );
				float4 temp_output_8820_0_g83651 = saturate( ( ( staticSwitch8879_g83651 - temp_output_7_0_g83684 ) / ( temp_output_10_0_g83684 + 0.0001 ) ) );
				half4 Masks_0414_g83680 = temp_output_8820_0_g83651;
				float4 appendResult29_g83680 = (float4((Masks_015_g83680).z , (Masks_0210_g83680).z , (Masks_0312_g83680).z , (Masks_0414_g83680).z));
				half4 Control31_g83680 = Terrain_Control_127712_g83651;
				half4 Terrain_Height_128870_g83651 = ( appendResult29_g83680 * Control31_g83680 );
				float4 heights_127362_g83651 = Terrain_Height_128870_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83739) = _MaskTex13;
				SamplerState Sampler238_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_138960_g83651 = _Coords13;
				float4 temp_output_37_0_g83739 = Input_Coords_138960_g83651;
				half4 Coords238_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition238_g83739 = worldPos;
				half4 localSamplePlanar2D238_g83739 = SamplePlanar2D( Texture238_g83739 , Sampler238_g83739 , Coords238_g83739 , WorldPosition238_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83739) = _MaskTex13;
				SamplerState Sampler246_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition246_g83739 = worldPos;
				half3 WorldNormal246_g83739 = WorldNormal;
				half4 localSamplePlanar3D246_g83739 = SamplePlanar3D( Texture246_g83739 , Sampler246_g83739 , Coords246_g83739 , WorldPosition246_g83739 , WorldNormal246_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83739) = _MaskTex13;
				SamplerState Sampler234_g83739 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83739 = temp_output_37_0_g83739;
				float3 WorldPosition234_g83739 = worldPos;
				float4 localSampleStochastic2D234_g83739 = SampleStochastic2D( Texture234_g83739 , Sampler234_g83739 , Coords234_g83739 , WorldPosition234_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83739) = _MaskTex13;
				SamplerState Sampler263_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition263_g83739 = worldPos;
				half3 WorldNormal263_g83739 = WorldNormal;
				half4 localSampleStochastic3D263_g83739 = SampleStochastic3D( Texture263_g83739 , Sampler263_g83739 , Coords263_g83739 , WorldPosition263_g83739 , WorldNormal263_g83739 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch9000_g83651 = localSamplePlanar2D238_g83739;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch9000_g83651 = localSamplePlanar3D246_g83739;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch9000_g83651 = localSampleStochastic2D234_g83739;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch9000_g83651 = localSampleStochastic3D263_g83739;
				#else
				float4 staticSwitch9000_g83651 = localSamplePlanar2D238_g83739;
				#endif
				float4 temp_output_7_0_g83689 = _MaskMin13;
				float4 temp_output_10_0_g83689 = ( _MaskMax13 - temp_output_7_0_g83689 );
				float4 temp_output_8931_0_g83651 = saturate( ( ( staticSwitch9000_g83651 - temp_output_7_0_g83689 ) / ( temp_output_10_0_g83689 + 0.0001 ) ) );
				half4 Masks_015_g83690 = temp_output_8931_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83740) = _MaskTex14;
				SamplerState Sampler238_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_148961_g83651 = _Coords14;
				float4 temp_output_37_0_g83740 = Input_Coords_148961_g83651;
				half4 Coords238_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition238_g83740 = worldPos;
				half4 localSamplePlanar2D238_g83740 = SamplePlanar2D( Texture238_g83740 , Sampler238_g83740 , Coords238_g83740 , WorldPosition238_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83740) = _MaskTex14;
				SamplerState Sampler246_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition246_g83740 = worldPos;
				half3 WorldNormal246_g83740 = WorldNormal;
				half4 localSamplePlanar3D246_g83740 = SamplePlanar3D( Texture246_g83740 , Sampler246_g83740 , Coords246_g83740 , WorldPosition246_g83740 , WorldNormal246_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83740) = _MaskTex14;
				SamplerState Sampler234_g83740 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83740 = temp_output_37_0_g83740;
				float3 WorldPosition234_g83740 = worldPos;
				float4 localSampleStochastic2D234_g83740 = SampleStochastic2D( Texture234_g83740 , Sampler234_g83740 , Coords234_g83740 , WorldPosition234_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83740) = _MaskTex14;
				SamplerState Sampler263_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition263_g83740 = worldPos;
				half3 WorldNormal263_g83740 = WorldNormal;
				half4 localSampleStochastic3D263_g83740 = SampleStochastic3D( Texture263_g83740 , Sampler263_g83740 , Coords263_g83740 , WorldPosition263_g83740 , WorldNormal263_g83740 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch9001_g83651 = localSamplePlanar2D238_g83740;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch9001_g83651 = localSamplePlanar3D246_g83740;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch9001_g83651 = localSampleStochastic2D234_g83740;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch9001_g83651 = localSampleStochastic3D263_g83740;
				#else
				float4 staticSwitch9001_g83651 = localSamplePlanar2D238_g83740;
				#endif
				float4 temp_output_7_0_g83692 = _MaskMin14;
				float4 temp_output_10_0_g83692 = ( _MaskMax14 - temp_output_7_0_g83692 );
				float4 temp_output_8934_0_g83651 = saturate( ( ( staticSwitch9001_g83651 - temp_output_7_0_g83692 ) / ( temp_output_10_0_g83692 + 0.0001 ) ) );
				half4 Masks_0210_g83690 = temp_output_8934_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83741) = _MaskTex15;
				SamplerState Sampler238_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_158962_g83651 = _Coords15;
				float4 temp_output_37_0_g83741 = Input_Coords_158962_g83651;
				half4 Coords238_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition238_g83741 = worldPos;
				half4 localSamplePlanar2D238_g83741 = SamplePlanar2D( Texture238_g83741 , Sampler238_g83741 , Coords238_g83741 , WorldPosition238_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83741) = _MaskTex15;
				SamplerState Sampler246_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition246_g83741 = worldPos;
				half3 WorldNormal246_g83741 = WorldNormal;
				half4 localSamplePlanar3D246_g83741 = SamplePlanar3D( Texture246_g83741 , Sampler246_g83741 , Coords246_g83741 , WorldPosition246_g83741 , WorldNormal246_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83741) = _MaskTex15;
				SamplerState Sampler234_g83741 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83741 = temp_output_37_0_g83741;
				float3 WorldPosition234_g83741 = worldPos;
				float4 localSampleStochastic2D234_g83741 = SampleStochastic2D( Texture234_g83741 , Sampler234_g83741 , Coords234_g83741 , WorldPosition234_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83741) = _MaskTex15;
				SamplerState Sampler263_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition263_g83741 = worldPos;
				half3 WorldNormal263_g83741 = WorldNormal;
				half4 localSampleStochastic3D263_g83741 = SampleStochastic3D( Texture263_g83741 , Sampler263_g83741 , Coords263_g83741 , WorldPosition263_g83741 , WorldNormal263_g83741 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch9002_g83651 = localSamplePlanar2D238_g83741;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch9002_g83651 = localSamplePlanar3D246_g83741;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch9002_g83651 = localSampleStochastic2D234_g83741;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch9002_g83651 = localSampleStochastic3D263_g83741;
				#else
				float4 staticSwitch9002_g83651 = localSamplePlanar2D238_g83741;
				#endif
				float4 temp_output_7_0_g83693 = _MaskMin15;
				float4 temp_output_10_0_g83693 = ( _MaskMax15 - temp_output_7_0_g83693 );
				float4 temp_output_8935_0_g83651 = saturate( ( ( staticSwitch9002_g83651 - temp_output_7_0_g83693 ) / ( temp_output_10_0_g83693 + 0.0001 ) ) );
				half4 Masks_0312_g83690 = temp_output_8935_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83742) = _MaskTex16;
				SamplerState Sampler238_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_168959_g83651 = _Coords16;
				float4 temp_output_37_0_g83742 = Input_Coords_168959_g83651;
				half4 Coords238_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition238_g83742 = worldPos;
				half4 localSamplePlanar2D238_g83742 = SamplePlanar2D( Texture238_g83742 , Sampler238_g83742 , Coords238_g83742 , WorldPosition238_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83742) = _MaskTex16;
				SamplerState Sampler246_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition246_g83742 = worldPos;
				half3 WorldNormal246_g83742 = WorldNormal;
				half4 localSamplePlanar3D246_g83742 = SamplePlanar3D( Texture246_g83742 , Sampler246_g83742 , Coords246_g83742 , WorldPosition246_g83742 , WorldNormal246_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83742) = _MaskTex16;
				SamplerState Sampler234_g83742 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83742 = temp_output_37_0_g83742;
				float3 WorldPosition234_g83742 = worldPos;
				float4 localSampleStochastic2D234_g83742 = SampleStochastic2D( Texture234_g83742 , Sampler234_g83742 , Coords234_g83742 , WorldPosition234_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83742) = _MaskTex16;
				SamplerState Sampler263_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition263_g83742 = worldPos;
				half3 WorldNormal263_g83742 = WorldNormal;
				half4 localSampleStochastic3D263_g83742 = SampleStochastic3D( Texture263_g83742 , Sampler263_g83742 , Coords263_g83742 , WorldPosition263_g83742 , WorldNormal263_g83742 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch9003_g83651 = localSamplePlanar2D238_g83742;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch9003_g83651 = localSamplePlanar3D246_g83742;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch9003_g83651 = localSampleStochastic2D234_g83742;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch9003_g83651 = localSampleStochastic3D263_g83742;
				#else
				float4 staticSwitch9003_g83651 = localSamplePlanar2D238_g83742;
				#endif
				float4 temp_output_7_0_g83694 = _MaskMin16;
				float4 temp_output_10_0_g83694 = ( _MaskMax16 - temp_output_7_0_g83694 );
				float4 temp_output_8936_0_g83651 = saturate( ( ( staticSwitch9003_g83651 - temp_output_7_0_g83694 ) / ( temp_output_10_0_g83694 + 0.0001 ) ) );
				half4 Masks_0414_g83690 = temp_output_8936_0_g83651;
				float4 appendResult29_g83690 = (float4((Masks_015_g83690).z , (Masks_0210_g83690).z , (Masks_0312_g83690).z , (Masks_0414_g83690).z));
				half4 Control31_g83690 = Terrain_Control_167711_g83651;
				half4 Terrain_Height_169015_g83651 = ( appendResult29_g83690 * Control31_g83690 );
				float4 heights_167362_g83651 = Terrain_Height_169015_g83651;
				float heightTransition7362_g83651 = ( 1.0 - _TerrainHeightBlendValue );
				float4 weights_047362_g83651 = float4( 0,0,0,0 );
				float4 weights_087362_g83651 = float4( 0,0,0,0 );
				float4 weights_127362_g83651 = float4( 0,0,0,0 );
				float4 weights_167362_g83651 = float4( 0,0,0,0 );
				{
				//Modified version of the HDRP terrain height based blending
				float maxHeight = 0;
				float4 weightedHeights_04 = float4( 0,0,0,0 );
				float4 weightedHeights_08 = float4( 0,0,0,0 );
				float4 weightedHeights_12 = float4( 0,0,0,0 );
				float4 weightedHeights_16 = float4( 0,0,0,0 );
				maxHeight = heights_047362_g83651.x;
				maxHeight = max(maxHeight, heights_047362_g83651.y);
				maxHeight = max(maxHeight, heights_047362_g83651.z);
				maxHeight = max(maxHeight, heights_047362_g83651.w);
				#ifdef TVE_TERRAIN_08
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				#endif
				#ifdef TVE_TERRAIN_12
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				maxHeight = max(maxHeight, heights_127362_g83651.x);
				maxHeight = max(maxHeight, heights_127362_g83651.y);
				maxHeight = max(maxHeight, heights_127362_g83651.z);
				maxHeight = max(maxHeight, heights_127362_g83651.w);
				#endif
				#ifdef TVE_TERRAIN_16
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				maxHeight = max(maxHeight, heights_127362_g83651.x);
				maxHeight = max(maxHeight, heights_127362_g83651.y);
				maxHeight = max(maxHeight, heights_127362_g83651.z);
				maxHeight = max(maxHeight, heights_127362_g83651.w);
				maxHeight = max(maxHeight, heights_167362_g83651.x);
				maxHeight = max(maxHeight, heights_167362_g83651.y);
				maxHeight = max(maxHeight, heights_167362_g83651.z);
				maxHeight = max(maxHeight, heights_167362_g83651.w);
				#endif
				float transition = max(heightTransition7362_g83651, 0.01);
				weightedHeights_04 = float4 ( heights_047362_g83651.x, heights_047362_g83651.y, heights_047362_g83651.z, heights_047362_g83651.w );
				weightedHeights_04 = weightedHeights_04 - maxHeight.xxxx;
				weightedHeights_04 = (max(0, weightedHeights_04 + transition) + 1e-6) * control_047362_g83651;
				#ifdef TVE_TERRAIN_08
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				#endif
				#ifdef TVE_TERRAIN_12
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				weightedHeights_12 = float4 ( heights_127362_g83651.x, heights_127362_g83651.y, heights_127362_g83651.z, heights_127362_g83651.w );
				weightedHeights_12 = weightedHeights_12 - maxHeight.xxxx;
				weightedHeights_12 = (max(0, weightedHeights_12 + transition) + 1e-6) * control_127362_g83651;
				#endif
				#ifdef TVE_TERRAIN_16
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				weightedHeights_12 = float4 ( heights_127362_g83651.x, heights_127362_g83651.y, heights_127362_g83651.z, heights_127362_g83651.w );
				weightedHeights_12 = weightedHeights_12 - maxHeight.xxxx;
				weightedHeights_12 = (max(0, weightedHeights_12 + transition) + 1e-6) * control_127362_g83651;
				weightedHeights_16 = float4 ( heights_167362_g83651.x, heights_167362_g83651.y, heights_167362_g83651.z, heights_167362_g83651.w );
				weightedHeights_16 = weightedHeights_16 - maxHeight.xxxx;
				weightedHeights_16 = (max(0, weightedHeights_16 + transition) + 1e-6) * control_167362_g83651;
				#endif
				float sumHeight_04 = weightedHeights_04.x + weightedHeights_04.y + weightedHeights_04.z + weightedHeights_04.w;
				float sumHeight_08 = weightedHeights_08.x + weightedHeights_08.y + weightedHeights_08.z + weightedHeights_08.w;
				float sumHeight_12 = weightedHeights_12.x + weightedHeights_12.y + weightedHeights_12.z + weightedHeights_12.w;
				float sumHeight_16 = weightedHeights_16.x + weightedHeights_16.y + weightedHeights_16.z + weightedHeights_16.w;
				float sumHeight = sumHeight_04 + sumHeight_08 + sumHeight_12 + sumHeight_16;
				weights_047362_g83651 = weightedHeights_04 / sumHeight.xxxx;
				#ifdef TVE_TERRAIN_08
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				#endif
				#ifdef TVE_TERRAIN_12
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				weights_127362_g83651 = weightedHeights_12 / sumHeight.xxxx;
				#endif
				#ifdef TVE_TERRAIN_16
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				weights_127362_g83651 = weightedHeights_12 / sumHeight.xxxx;
				weights_167362_g83651 = weightedHeights_16 / sumHeight.xxxx;
				#endif
				}
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8792_g83651 = weights_047362_g83651;
				#else
				float4 staticSwitch8792_g83651 = control_047362_g83651;
				#endif
				half4 Terrain_Weights_046781_g83651 = staticSwitch8792_g83651;
				half4 Weights52_g83660 = Terrain_Weights_046781_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83744) = _AlbedoTex1;
				SamplerState Sampler238_g83744 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83744 = Input_Coords_016785_g83651;
				half4 Coords238_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition238_g83744 = worldPos;
				half4 localSamplePlanar2D238_g83744 = SamplePlanar2D( Texture238_g83744 , Sampler238_g83744 , Coords238_g83744 , WorldPosition238_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83744) = _AlbedoTex1;
				SamplerState Sampler246_g83744 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition246_g83744 = worldPos;
				half3 WorldNormal246_g83744 = WorldNormal;
				half4 localSamplePlanar3D246_g83744 = SamplePlanar3D( Texture246_g83744 , Sampler246_g83744 , Coords246_g83744 , WorldPosition246_g83744 , WorldNormal246_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83744) = _AlbedoTex1;
				SamplerState Sampler234_g83744 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83744 = temp_output_37_0_g83744;
				float3 WorldPosition234_g83744 = worldPos;
				float4 localSampleStochastic2D234_g83744 = SampleStochastic2D( Texture234_g83744 , Sampler234_g83744 , Coords234_g83744 , WorldPosition234_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83744) = _AlbedoTex1;
				SamplerState Sampler263_g83744 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition263_g83744 = worldPos;
				half3 WorldNormal263_g83744 = WorldNormal;
				half4 localSampleStochastic3D263_g83744 = SampleStochastic3D( Texture263_g83744 , Sampler263_g83744 , Coords263_g83744 , WorldPosition263_g83744 , WorldNormal263_g83744 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8614_g83651 = localSamplePlanar2D238_g83744;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8614_g83651 = localSamplePlanar3D246_g83744;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8614_g83651 = localSampleStochastic2D234_g83744;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8614_g83651 = localSampleStochastic3D263_g83744;
				#else
				float4 staticSwitch8614_g83651 = localSamplePlanar2D238_g83744;
				#endif
				half4 Layer133_g83660 = staticSwitch8614_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83697) = _AlbedoTex2;
				SamplerState Sampler238_g83697 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83697 = Input_Coords_026787_g83651;
				half4 Coords238_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition238_g83697 = worldPos;
				half4 localSamplePlanar2D238_g83697 = SamplePlanar2D( Texture238_g83697 , Sampler238_g83697 , Coords238_g83697 , WorldPosition238_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83697) = _AlbedoTex2;
				SamplerState Sampler246_g83697 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition246_g83697 = worldPos;
				half3 WorldNormal246_g83697 = WorldNormal;
				half4 localSamplePlanar3D246_g83697 = SamplePlanar3D( Texture246_g83697 , Sampler246_g83697 , Coords246_g83697 , WorldPosition246_g83697 , WorldNormal246_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83697) = _AlbedoTex2;
				SamplerState Sampler234_g83697 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83697 = temp_output_37_0_g83697;
				float3 WorldPosition234_g83697 = worldPos;
				float4 localSampleStochastic2D234_g83697 = SampleStochastic2D( Texture234_g83697 , Sampler234_g83697 , Coords234_g83697 , WorldPosition234_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83697) = _AlbedoTex2;
				SamplerState Sampler263_g83697 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition263_g83697 = worldPos;
				half3 WorldNormal263_g83697 = WorldNormal;
				half4 localSampleStochastic3D263_g83697 = SampleStochastic3D( Texture263_g83697 , Sampler263_g83697 , Coords263_g83697 , WorldPosition263_g83697 , WorldNormal263_g83697 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8629_g83651 = localSamplePlanar2D238_g83697;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8629_g83651 = localSamplePlanar3D246_g83697;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8629_g83651 = localSampleStochastic2D234_g83697;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8629_g83651 = localSampleStochastic3D263_g83697;
				#else
				float4 staticSwitch8629_g83651 = localSamplePlanar2D238_g83697;
				#endif
				half4 Layer237_g83660 = staticSwitch8629_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83698) = _AlbedoTex3;
				SamplerState Sampler238_g83698 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83698 = Input_Coords_036789_g83651;
				half4 Coords238_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition238_g83698 = worldPos;
				half4 localSamplePlanar2D238_g83698 = SamplePlanar2D( Texture238_g83698 , Sampler238_g83698 , Coords238_g83698 , WorldPosition238_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83698) = _AlbedoTex3;
				SamplerState Sampler246_g83698 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition246_g83698 = worldPos;
				half3 WorldNormal246_g83698 = WorldNormal;
				half4 localSamplePlanar3D246_g83698 = SamplePlanar3D( Texture246_g83698 , Sampler246_g83698 , Coords246_g83698 , WorldPosition246_g83698 , WorldNormal246_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83698) = _AlbedoTex3;
				SamplerState Sampler234_g83698 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83698 = temp_output_37_0_g83698;
				float3 WorldPosition234_g83698 = worldPos;
				float4 localSampleStochastic2D234_g83698 = SampleStochastic2D( Texture234_g83698 , Sampler234_g83698 , Coords234_g83698 , WorldPosition234_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83698) = _AlbedoTex3;
				SamplerState Sampler263_g83698 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition263_g83698 = worldPos;
				half3 WorldNormal263_g83698 = WorldNormal;
				half4 localSampleStochastic3D263_g83698 = SampleStochastic3D( Texture263_g83698 , Sampler263_g83698 , Coords263_g83698 , WorldPosition263_g83698 , WorldNormal263_g83698 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8630_g83651 = localSamplePlanar2D238_g83698;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8630_g83651 = localSamplePlanar3D246_g83698;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8630_g83651 = localSampleStochastic2D234_g83698;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8630_g83651 = localSampleStochastic3D263_g83698;
				#else
				float4 staticSwitch8630_g83651 = localSamplePlanar2D238_g83698;
				#endif
				half4 Layer338_g83660 = staticSwitch8630_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83699) = _AlbedoTex4;
				SamplerState Sampler238_g83699 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83699 = Input_Coords_046791_g83651;
				half4 Coords238_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition238_g83699 = worldPos;
				half4 localSamplePlanar2D238_g83699 = SamplePlanar2D( Texture238_g83699 , Sampler238_g83699 , Coords238_g83699 , WorldPosition238_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83699) = _AlbedoTex4;
				SamplerState Sampler246_g83699 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition246_g83699 = worldPos;
				half3 WorldNormal246_g83699 = WorldNormal;
				half4 localSamplePlanar3D246_g83699 = SamplePlanar3D( Texture246_g83699 , Sampler246_g83699 , Coords246_g83699 , WorldPosition246_g83699 , WorldNormal246_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83699) = _AlbedoTex4;
				SamplerState Sampler234_g83699 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83699 = temp_output_37_0_g83699;
				float3 WorldPosition234_g83699 = worldPos;
				float4 localSampleStochastic2D234_g83699 = SampleStochastic2D( Texture234_g83699 , Sampler234_g83699 , Coords234_g83699 , WorldPosition234_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83699) = _AlbedoTex4;
				SamplerState Sampler263_g83699 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition263_g83699 = worldPos;
				half3 WorldNormal263_g83699 = WorldNormal;
				half4 localSampleStochastic3D263_g83699 = SampleStochastic3D( Texture263_g83699 , Sampler263_g83699 , Coords263_g83699 , WorldPosition263_g83699 , WorldNormal263_g83699 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8631_g83651 = localSamplePlanar2D238_g83699;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8631_g83651 = localSamplePlanar3D246_g83699;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8631_g83651 = localSampleStochastic2D234_g83699;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8631_g83651 = localSampleStochastic3D263_g83699;
				#else
				float4 staticSwitch8631_g83651 = localSamplePlanar2D238_g83699;
				#endif
				half4 Layer439_g83660 = staticSwitch8631_g83651;
				float4 weightedBlendVar31_g83660 = Weights52_g83660;
				float4 weightedBlend31_g83660 = ( weightedBlendVar31_g83660.x*Layer133_g83660 + weightedBlendVar31_g83660.y*Layer237_g83660 + weightedBlendVar31_g83660.z*Layer338_g83660 + weightedBlendVar31_g83660.w*Layer439_g83660 );
				half4 Terrain_Albedo_047200_g83651 = weightedBlend31_g83660;
				half4 Layer_045_g83663 = Terrain_Albedo_047200_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8793_g83651 = weights_087362_g83651;
				#else
				float4 staticSwitch8793_g83651 = control_087362_g83651;
				#endif
				half4 Terrain_Weights_087340_g83651 = staticSwitch8793_g83651;
				half4 Weights52_g83667 = Terrain_Weights_087340_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83708) = _AlbedoTex5;
				SamplerState Sampler238_g83708 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83708 = Input_Coords_058750_g83651;
				half4 Coords238_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition238_g83708 = worldPos;
				half4 localSamplePlanar2D238_g83708 = SamplePlanar2D( Texture238_g83708 , Sampler238_g83708 , Coords238_g83708 , WorldPosition238_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83708) = _AlbedoTex5;
				SamplerState Sampler246_g83708 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition246_g83708 = worldPos;
				half3 WorldNormal246_g83708 = WorldNormal;
				half4 localSamplePlanar3D246_g83708 = SamplePlanar3D( Texture246_g83708 , Sampler246_g83708 , Coords246_g83708 , WorldPosition246_g83708 , WorldNormal246_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83708) = _AlbedoTex5;
				SamplerState Sampler234_g83708 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83708 = temp_output_37_0_g83708;
				float3 WorldPosition234_g83708 = worldPos;
				float4 localSampleStochastic2D234_g83708 = SampleStochastic2D( Texture234_g83708 , Sampler234_g83708 , Coords234_g83708 , WorldPosition234_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83708) = _AlbedoTex5;
				SamplerState Sampler263_g83708 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition263_g83708 = worldPos;
				half3 WorldNormal263_g83708 = WorldNormal;
				half4 localSampleStochastic3D263_g83708 = SampleStochastic3D( Texture263_g83708 , Sampler263_g83708 , Coords263_g83708 , WorldPosition263_g83708 , WorldNormal263_g83708 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8690_g83651 = localSamplePlanar2D238_g83708;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8690_g83651 = localSamplePlanar3D246_g83708;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8690_g83651 = localSampleStochastic2D234_g83708;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8690_g83651 = localSampleStochastic3D263_g83708;
				#else
				float4 staticSwitch8690_g83651 = localSamplePlanar2D238_g83708;
				#endif
				half4 Layer133_g83667 = staticSwitch8690_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83709) = _AlbedoTex6;
				SamplerState Sampler238_g83709 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83709 = Input_Coords_068751_g83651;
				half4 Coords238_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition238_g83709 = worldPos;
				half4 localSamplePlanar2D238_g83709 = SamplePlanar2D( Texture238_g83709 , Sampler238_g83709 , Coords238_g83709 , WorldPosition238_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83709) = _AlbedoTex6;
				SamplerState Sampler246_g83709 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition246_g83709 = worldPos;
				half3 WorldNormal246_g83709 = WorldNormal;
				half4 localSamplePlanar3D246_g83709 = SamplePlanar3D( Texture246_g83709 , Sampler246_g83709 , Coords246_g83709 , WorldPosition246_g83709 , WorldNormal246_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83709) = _AlbedoTex6;
				SamplerState Sampler234_g83709 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83709 = temp_output_37_0_g83709;
				float3 WorldPosition234_g83709 = worldPos;
				float4 localSampleStochastic2D234_g83709 = SampleStochastic2D( Texture234_g83709 , Sampler234_g83709 , Coords234_g83709 , WorldPosition234_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83709) = _AlbedoTex6;
				SamplerState Sampler263_g83709 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition263_g83709 = worldPos;
				half3 WorldNormal263_g83709 = WorldNormal;
				half4 localSampleStochastic3D263_g83709 = SampleStochastic3D( Texture263_g83709 , Sampler263_g83709 , Coords263_g83709 , WorldPosition263_g83709 , WorldNormal263_g83709 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8691_g83651 = localSamplePlanar2D238_g83709;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8691_g83651 = localSamplePlanar3D246_g83709;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8691_g83651 = localSampleStochastic2D234_g83709;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8691_g83651 = localSampleStochastic3D263_g83709;
				#else
				float4 staticSwitch8691_g83651 = localSamplePlanar2D238_g83709;
				#endif
				half4 Layer237_g83667 = staticSwitch8691_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83710) = _AlbedoTex7;
				SamplerState Sampler238_g83710 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83710 = Input_Coords_078752_g83651;
				half4 Coords238_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition238_g83710 = worldPos;
				half4 localSamplePlanar2D238_g83710 = SamplePlanar2D( Texture238_g83710 , Sampler238_g83710 , Coords238_g83710 , WorldPosition238_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83710) = _AlbedoTex7;
				SamplerState Sampler246_g83710 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition246_g83710 = worldPos;
				half3 WorldNormal246_g83710 = WorldNormal;
				half4 localSamplePlanar3D246_g83710 = SamplePlanar3D( Texture246_g83710 , Sampler246_g83710 , Coords246_g83710 , WorldPosition246_g83710 , WorldNormal246_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83710) = _AlbedoTex7;
				SamplerState Sampler234_g83710 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83710 = temp_output_37_0_g83710;
				float3 WorldPosition234_g83710 = worldPos;
				float4 localSampleStochastic2D234_g83710 = SampleStochastic2D( Texture234_g83710 , Sampler234_g83710 , Coords234_g83710 , WorldPosition234_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83710) = _AlbedoTex7;
				SamplerState Sampler263_g83710 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition263_g83710 = worldPos;
				half3 WorldNormal263_g83710 = WorldNormal;
				half4 localSampleStochastic3D263_g83710 = SampleStochastic3D( Texture263_g83710 , Sampler263_g83710 , Coords263_g83710 , WorldPosition263_g83710 , WorldNormal263_g83710 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8692_g83651 = localSamplePlanar2D238_g83710;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8692_g83651 = localSamplePlanar3D246_g83710;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8692_g83651 = localSampleStochastic2D234_g83710;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8692_g83651 = localSampleStochastic3D263_g83710;
				#else
				float4 staticSwitch8692_g83651 = localSamplePlanar2D238_g83710;
				#endif
				half4 Layer338_g83667 = staticSwitch8692_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83711) = _AlbedoTex8;
				SamplerState Sampler238_g83711 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83711 = Input_Coords_088749_g83651;
				half4 Coords238_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition238_g83711 = worldPos;
				half4 localSamplePlanar2D238_g83711 = SamplePlanar2D( Texture238_g83711 , Sampler238_g83711 , Coords238_g83711 , WorldPosition238_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83711) = _AlbedoTex8;
				SamplerState Sampler246_g83711 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition246_g83711 = worldPos;
				half3 WorldNormal246_g83711 = WorldNormal;
				half4 localSamplePlanar3D246_g83711 = SamplePlanar3D( Texture246_g83711 , Sampler246_g83711 , Coords246_g83711 , WorldPosition246_g83711 , WorldNormal246_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83711) = _AlbedoTex8;
				SamplerState Sampler234_g83711 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83711 = temp_output_37_0_g83711;
				float3 WorldPosition234_g83711 = worldPos;
				float4 localSampleStochastic2D234_g83711 = SampleStochastic2D( Texture234_g83711 , Sampler234_g83711 , Coords234_g83711 , WorldPosition234_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83711) = _AlbedoTex8;
				SamplerState Sampler263_g83711 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition263_g83711 = worldPos;
				half3 WorldNormal263_g83711 = WorldNormal;
				half4 localSampleStochastic3D263_g83711 = SampleStochastic3D( Texture263_g83711 , Sampler263_g83711 , Coords263_g83711 , WorldPosition263_g83711 , WorldNormal263_g83711 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8693_g83651 = localSamplePlanar2D238_g83711;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8693_g83651 = localSamplePlanar3D246_g83711;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8693_g83651 = localSampleStochastic2D234_g83711;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8693_g83651 = localSampleStochastic3D263_g83711;
				#else
				float4 staticSwitch8693_g83651 = localSamplePlanar2D238_g83711;
				#endif
				half4 Layer439_g83667 = staticSwitch8693_g83651;
				float4 weightedBlendVar31_g83667 = Weights52_g83667;
				float4 weightedBlend31_g83667 = ( weightedBlendVar31_g83667.x*Layer133_g83667 + weightedBlendVar31_g83667.y*Layer237_g83667 + weightedBlendVar31_g83667.z*Layer338_g83667 + weightedBlendVar31_g83667.w*Layer439_g83667 );
				half4 Terrain_Albedo_088665_g83651 = weightedBlend31_g83667;
				half4 Layer_0810_g83663 = Terrain_Albedo_088665_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8794_g83651 = weights_127362_g83651;
				#else
				float4 staticSwitch8794_g83651 = control_127362_g83651;
				#endif
				half4 Terrain_Weights_127710_g83651 = staticSwitch8794_g83651;
				half4 Weights52_g83677 = Terrain_Weights_127710_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83720) = _AlbedoTex9;
				SamplerState Sampler238_g83720 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83720 = Input_Coords_098833_g83651;
				half4 Coords238_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition238_g83720 = worldPos;
				half4 localSamplePlanar2D238_g83720 = SamplePlanar2D( Texture238_g83720 , Sampler238_g83720 , Coords238_g83720 , WorldPosition238_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83720) = _AlbedoTex9;
				SamplerState Sampler246_g83720 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition246_g83720 = worldPos;
				half3 WorldNormal246_g83720 = WorldNormal;
				half4 localSamplePlanar3D246_g83720 = SamplePlanar3D( Texture246_g83720 , Sampler246_g83720 , Coords246_g83720 , WorldPosition246_g83720 , WorldNormal246_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83720) = _AlbedoTex9;
				SamplerState Sampler234_g83720 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83720 = temp_output_37_0_g83720;
				float3 WorldPosition234_g83720 = worldPos;
				float4 localSampleStochastic2D234_g83720 = SampleStochastic2D( Texture234_g83720 , Sampler234_g83720 , Coords234_g83720 , WorldPosition234_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83720) = _AlbedoTex9;
				SamplerState Sampler263_g83720 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition263_g83720 = worldPos;
				half3 WorldNormal263_g83720 = WorldNormal;
				half4 localSampleStochastic3D263_g83720 = SampleStochastic3D( Texture263_g83720 , Sampler263_g83720 , Coords263_g83720 , WorldPosition263_g83720 , WorldNormal263_g83720 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8872_g83651 = localSamplePlanar2D238_g83720;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8872_g83651 = localSamplePlanar3D246_g83720;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8872_g83651 = localSampleStochastic2D234_g83720;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8872_g83651 = localSampleStochastic3D263_g83720;
				#else
				float4 staticSwitch8872_g83651 = localSamplePlanar2D238_g83720;
				#endif
				half4 Layer133_g83677 = staticSwitch8872_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83721) = _AlbedoTex10;
				SamplerState Sampler238_g83721 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83721 = Input_Coords_108834_g83651;
				half4 Coords238_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition238_g83721 = worldPos;
				half4 localSamplePlanar2D238_g83721 = SamplePlanar2D( Texture238_g83721 , Sampler238_g83721 , Coords238_g83721 , WorldPosition238_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83721) = _AlbedoTex10;
				SamplerState Sampler246_g83721 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition246_g83721 = worldPos;
				half3 WorldNormal246_g83721 = WorldNormal;
				half4 localSamplePlanar3D246_g83721 = SamplePlanar3D( Texture246_g83721 , Sampler246_g83721 , Coords246_g83721 , WorldPosition246_g83721 , WorldNormal246_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83721) = _AlbedoTex10;
				SamplerState Sampler234_g83721 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83721 = temp_output_37_0_g83721;
				float3 WorldPosition234_g83721 = worldPos;
				float4 localSampleStochastic2D234_g83721 = SampleStochastic2D( Texture234_g83721 , Sampler234_g83721 , Coords234_g83721 , WorldPosition234_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83721) = _AlbedoTex10;
				SamplerState Sampler263_g83721 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition263_g83721 = worldPos;
				half3 WorldNormal263_g83721 = WorldNormal;
				half4 localSampleStochastic3D263_g83721 = SampleStochastic3D( Texture263_g83721 , Sampler263_g83721 , Coords263_g83721 , WorldPosition263_g83721 , WorldNormal263_g83721 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8873_g83651 = localSamplePlanar2D238_g83721;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8873_g83651 = localSamplePlanar3D246_g83721;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8873_g83651 = localSampleStochastic2D234_g83721;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8873_g83651 = localSampleStochastic3D263_g83721;
				#else
				float4 staticSwitch8873_g83651 = localSamplePlanar2D238_g83721;
				#endif
				half4 Layer237_g83677 = staticSwitch8873_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83722) = _AlbedoTex11;
				SamplerState Sampler238_g83722 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83722 = Input_Coords_118835_g83651;
				half4 Coords238_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition238_g83722 = worldPos;
				half4 localSamplePlanar2D238_g83722 = SamplePlanar2D( Texture238_g83722 , Sampler238_g83722 , Coords238_g83722 , WorldPosition238_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83722) = _AlbedoTex11;
				SamplerState Sampler246_g83722 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition246_g83722 = worldPos;
				half3 WorldNormal246_g83722 = WorldNormal;
				half4 localSamplePlanar3D246_g83722 = SamplePlanar3D( Texture246_g83722 , Sampler246_g83722 , Coords246_g83722 , WorldPosition246_g83722 , WorldNormal246_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83722) = _AlbedoTex11;
				SamplerState Sampler234_g83722 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83722 = temp_output_37_0_g83722;
				float3 WorldPosition234_g83722 = worldPos;
				float4 localSampleStochastic2D234_g83722 = SampleStochastic2D( Texture234_g83722 , Sampler234_g83722 , Coords234_g83722 , WorldPosition234_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83722) = _AlbedoTex11;
				SamplerState Sampler263_g83722 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition263_g83722 = worldPos;
				half3 WorldNormal263_g83722 = WorldNormal;
				half4 localSampleStochastic3D263_g83722 = SampleStochastic3D( Texture263_g83722 , Sampler263_g83722 , Coords263_g83722 , WorldPosition263_g83722 , WorldNormal263_g83722 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8874_g83651 = localSamplePlanar2D238_g83722;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8874_g83651 = localSamplePlanar3D246_g83722;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8874_g83651 = localSampleStochastic2D234_g83722;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8874_g83651 = localSampleStochastic3D263_g83722;
				#else
				float4 staticSwitch8874_g83651 = localSamplePlanar2D238_g83722;
				#endif
				half4 Layer338_g83677 = staticSwitch8874_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83723) = _AlbedoTex12;
				SamplerState Sampler238_g83723 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83723 = Input_Coords_128836_g83651;
				half4 Coords238_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition238_g83723 = worldPos;
				half4 localSamplePlanar2D238_g83723 = SamplePlanar2D( Texture238_g83723 , Sampler238_g83723 , Coords238_g83723 , WorldPosition238_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83723) = _AlbedoTex12;
				SamplerState Sampler246_g83723 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition246_g83723 = worldPos;
				half3 WorldNormal246_g83723 = WorldNormal;
				half4 localSamplePlanar3D246_g83723 = SamplePlanar3D( Texture246_g83723 , Sampler246_g83723 , Coords246_g83723 , WorldPosition246_g83723 , WorldNormal246_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83723) = _AlbedoTex12;
				SamplerState Sampler234_g83723 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83723 = temp_output_37_0_g83723;
				float3 WorldPosition234_g83723 = worldPos;
				float4 localSampleStochastic2D234_g83723 = SampleStochastic2D( Texture234_g83723 , Sampler234_g83723 , Coords234_g83723 , WorldPosition234_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83723) = _AlbedoTex12;
				SamplerState Sampler263_g83723 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition263_g83723 = worldPos;
				half3 WorldNormal263_g83723 = WorldNormal;
				half4 localSampleStochastic3D263_g83723 = SampleStochastic3D( Texture263_g83723 , Sampler263_g83723 , Coords263_g83723 , WorldPosition263_g83723 , WorldNormal263_g83723 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8875_g83651 = localSamplePlanar2D238_g83723;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8875_g83651 = localSamplePlanar3D246_g83723;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8875_g83651 = localSampleStochastic2D234_g83723;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8875_g83651 = localSampleStochastic3D263_g83723;
				#else
				float4 staticSwitch8875_g83651 = localSamplePlanar2D238_g83723;
				#endif
				half4 Layer439_g83677 = staticSwitch8875_g83651;
				float4 weightedBlendVar31_g83677 = Weights52_g83677;
				float4 weightedBlend31_g83677 = ( weightedBlendVar31_g83677.x*Layer133_g83677 + weightedBlendVar31_g83677.y*Layer237_g83677 + weightedBlendVar31_g83677.z*Layer338_g83677 + weightedBlendVar31_g83677.w*Layer439_g83677 );
				half4 Terrain_Albedo_128851_g83651 = weightedBlend31_g83677;
				half4 Layer_1243_g83663 = Terrain_Albedo_128851_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8795_g83651 = weights_167362_g83651;
				#else
				float4 staticSwitch8795_g83651 = control_167362_g83651;
				#endif
				half4 Terrain_Weights_167709_g83651 = staticSwitch8795_g83651;
				half4 Weights52_g83687 = Terrain_Weights_167709_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83732) = _AlbedoTex13;
				SamplerState Sampler238_g83732 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83732 = Input_Coords_138960_g83651;
				half4 Coords238_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition238_g83732 = worldPos;
				half4 localSamplePlanar2D238_g83732 = SamplePlanar2D( Texture238_g83732 , Sampler238_g83732 , Coords238_g83732 , WorldPosition238_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83732) = _AlbedoTex13;
				SamplerState Sampler246_g83732 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition246_g83732 = worldPos;
				half3 WorldNormal246_g83732 = WorldNormal;
				half4 localSamplePlanar3D246_g83732 = SamplePlanar3D( Texture246_g83732 , Sampler246_g83732 , Coords246_g83732 , WorldPosition246_g83732 , WorldNormal246_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83732) = _AlbedoTex13;
				SamplerState Sampler234_g83732 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83732 = temp_output_37_0_g83732;
				float3 WorldPosition234_g83732 = worldPos;
				float4 localSampleStochastic2D234_g83732 = SampleStochastic2D( Texture234_g83732 , Sampler234_g83732 , Coords234_g83732 , WorldPosition234_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83732) = _AlbedoTex13;
				SamplerState Sampler263_g83732 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition263_g83732 = worldPos;
				half3 WorldNormal263_g83732 = WorldNormal;
				half4 localSampleStochastic3D263_g83732 = SampleStochastic3D( Texture263_g83732 , Sampler263_g83732 , Coords263_g83732 , WorldPosition263_g83732 , WorldNormal263_g83732 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch8972_g83651 = localSamplePlanar2D238_g83732;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch8972_g83651 = localSamplePlanar3D246_g83732;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch8972_g83651 = localSampleStochastic2D234_g83732;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch8972_g83651 = localSampleStochastic3D263_g83732;
				#else
				float4 staticSwitch8972_g83651 = localSamplePlanar2D238_g83732;
				#endif
				half4 Layer133_g83687 = staticSwitch8972_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83733) = _AlbedoTex14;
				SamplerState Sampler238_g83733 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83733 = Input_Coords_148961_g83651;
				half4 Coords238_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition238_g83733 = worldPos;
				half4 localSamplePlanar2D238_g83733 = SamplePlanar2D( Texture238_g83733 , Sampler238_g83733 , Coords238_g83733 , WorldPosition238_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83733) = _AlbedoTex14;
				SamplerState Sampler246_g83733 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition246_g83733 = worldPos;
				half3 WorldNormal246_g83733 = WorldNormal;
				half4 localSamplePlanar3D246_g83733 = SamplePlanar3D( Texture246_g83733 , Sampler246_g83733 , Coords246_g83733 , WorldPosition246_g83733 , WorldNormal246_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83733) = _AlbedoTex14;
				SamplerState Sampler234_g83733 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83733 = temp_output_37_0_g83733;
				float3 WorldPosition234_g83733 = worldPos;
				float4 localSampleStochastic2D234_g83733 = SampleStochastic2D( Texture234_g83733 , Sampler234_g83733 , Coords234_g83733 , WorldPosition234_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83733) = _AlbedoTex14;
				SamplerState Sampler263_g83733 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition263_g83733 = worldPos;
				half3 WorldNormal263_g83733 = WorldNormal;
				half4 localSampleStochastic3D263_g83733 = SampleStochastic3D( Texture263_g83733 , Sampler263_g83733 , Coords263_g83733 , WorldPosition263_g83733 , WorldNormal263_g83733 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch8973_g83651 = localSamplePlanar2D238_g83733;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch8973_g83651 = localSamplePlanar3D246_g83733;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch8973_g83651 = localSampleStochastic2D234_g83733;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch8973_g83651 = localSampleStochastic3D263_g83733;
				#else
				float4 staticSwitch8973_g83651 = localSamplePlanar2D238_g83733;
				#endif
				half4 Layer237_g83687 = staticSwitch8973_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83734) = _AlbedoTex15;
				SamplerState Sampler238_g83734 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83734 = Input_Coords_158962_g83651;
				half4 Coords238_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition238_g83734 = worldPos;
				half4 localSamplePlanar2D238_g83734 = SamplePlanar2D( Texture238_g83734 , Sampler238_g83734 , Coords238_g83734 , WorldPosition238_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83734) = _AlbedoTex15;
				SamplerState Sampler246_g83734 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition246_g83734 = worldPos;
				half3 WorldNormal246_g83734 = WorldNormal;
				half4 localSamplePlanar3D246_g83734 = SamplePlanar3D( Texture246_g83734 , Sampler246_g83734 , Coords246_g83734 , WorldPosition246_g83734 , WorldNormal246_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83734) = _AlbedoTex15;
				SamplerState Sampler234_g83734 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83734 = temp_output_37_0_g83734;
				float3 WorldPosition234_g83734 = worldPos;
				float4 localSampleStochastic2D234_g83734 = SampleStochastic2D( Texture234_g83734 , Sampler234_g83734 , Coords234_g83734 , WorldPosition234_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83734) = _AlbedoTex15;
				SamplerState Sampler263_g83734 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition263_g83734 = worldPos;
				half3 WorldNormal263_g83734 = WorldNormal;
				half4 localSampleStochastic3D263_g83734 = SampleStochastic3D( Texture263_g83734 , Sampler263_g83734 , Coords263_g83734 , WorldPosition263_g83734 , WorldNormal263_g83734 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch8974_g83651 = localSamplePlanar2D238_g83734;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch8974_g83651 = localSamplePlanar3D246_g83734;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch8974_g83651 = localSampleStochastic2D234_g83734;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch8974_g83651 = localSampleStochastic3D263_g83734;
				#else
				float4 staticSwitch8974_g83651 = localSamplePlanar2D238_g83734;
				#endif
				half4 Layer338_g83687 = staticSwitch8974_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83735) = _AlbedoTex16;
				SamplerState Sampler238_g83735 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83735 = Input_Coords_168959_g83651;
				half4 Coords238_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition238_g83735 = worldPos;
				half4 localSamplePlanar2D238_g83735 = SamplePlanar2D( Texture238_g83735 , Sampler238_g83735 , Coords238_g83735 , WorldPosition238_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83735) = _AlbedoTex16;
				SamplerState Sampler246_g83735 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition246_g83735 = worldPos;
				half3 WorldNormal246_g83735 = WorldNormal;
				half4 localSamplePlanar3D246_g83735 = SamplePlanar3D( Texture246_g83735 , Sampler246_g83735 , Coords246_g83735 , WorldPosition246_g83735 , WorldNormal246_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83735) = _AlbedoTex16;
				SamplerState Sampler234_g83735 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83735 = temp_output_37_0_g83735;
				float3 WorldPosition234_g83735 = worldPos;
				float4 localSampleStochastic2D234_g83735 = SampleStochastic2D( Texture234_g83735 , Sampler234_g83735 , Coords234_g83735 , WorldPosition234_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83735) = _AlbedoTex16;
				SamplerState Sampler263_g83735 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition263_g83735 = worldPos;
				half3 WorldNormal263_g83735 = WorldNormal;
				half4 localSampleStochastic3D263_g83735 = SampleStochastic3D( Texture263_g83735 , Sampler263_g83735 , Coords263_g83735 , WorldPosition263_g83735 , WorldNormal263_g83735 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch8975_g83651 = localSamplePlanar2D238_g83735;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch8975_g83651 = localSamplePlanar3D246_g83735;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch8975_g83651 = localSampleStochastic2D234_g83735;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch8975_g83651 = localSampleStochastic3D263_g83735;
				#else
				float4 staticSwitch8975_g83651 = localSamplePlanar2D238_g83735;
				#endif
				half4 Layer439_g83687 = staticSwitch8975_g83651;
				float4 weightedBlendVar31_g83687 = Weights52_g83687;
				float4 weightedBlend31_g83687 = ( weightedBlendVar31_g83687.x*Layer133_g83687 + weightedBlendVar31_g83687.y*Layer237_g83687 + weightedBlendVar31_g83687.z*Layer338_g83687 + weightedBlendVar31_g83687.w*Layer439_g83687 );
				half4 Terrain_Albedo_168986_g83651 = weightedBlend31_g83687;
				half4 Layer_1644_g83663 = Terrain_Albedo_168986_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83663 = Layer_045_g83663;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 + Layer_1243_g83663 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 + Layer_1243_g83663 + Layer_1644_g83663 );
				#else
				float4 staticSwitch40_g83663 = Layer_045_g83663;
				#endif
				half4 Blend_Albedo7468_g83651 = staticSwitch40_g83663;
				half3 Terrain_Albedo8037_g83150 = ( (Blend_Albedo7468_g83651).xyz * (_TerrainColor).rgb );
				float vertexToFrag11_g83454 = IN.ase_texcoord10.z;
				half Terrain_Mask_Pixel7898_g83150 = vertexToFrag11_g83454;
				half2 Main_Normal137_g83150 = temp_output_6555_0_g83150;
				float2 lerpResult3372_g83150 = lerp( float2( 0,0 ) , Main_Normal137_g83150 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g83238 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g83150 );
				float2 appendResult58_g83238 = (float2(( (Normal_Packed45_g83238).x * (Normal_Packed45_g83238).w ) , (Normal_Packed45_g83238).y));
				half2 Normal_Default50_g83238 = appendResult58_g83238;
				half2 Normal_ASTC41_g83238 = (Normal_Packed45_g83238).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83238 = Normal_ASTC41_g83238;
				#else
				float2 staticSwitch38_g83238 = Normal_Default50_g83238;
				#endif
				half2 Normal_NO_DTX544_g83238 = (Normal_Packed45_g83238).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83238 = Normal_NO_DTX544_g83238;
				#else
				float2 staticSwitch37_g83238 = staticSwitch38_g83238;
				#endif
				float2 temp_output_6560_0_g83150 = ( (staticSwitch37_g83238*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g83241 = temp_output_6560_0_g83150;
				float2 break64_g83241 = Normal_Planar45_g83241;
				float3 appendResult65_g83241 = (float3(break64_g83241.x , 0.0 , break64_g83241.y));
				float2 ifLocalVar7655_g83150 = 0;
				if( _SecondUVsMode == 2.0 )
				ifLocalVar7655_g83150 = (mul( ase_worldToTangent, appendResult65_g83241 )).xy;
				else if( _SecondUVsMode < 2.0 )
				ifLocalVar7655_g83150 = temp_output_6560_0_g83150;
				half2 Second_Normal179_g83150 = ifLocalVar7655_g83150;
				float2 temp_output_36_0_g83250 = ( lerpResult3372_g83150 + Second_Normal179_g83150 );
				float2 lerpResult3376_g83150 = lerp( Main_Normal137_g83150 , temp_output_36_0_g83250 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g83150 = lerpResult3376_g83150;
				#else
				float2 staticSwitch267_g83150 = Main_Normal137_g83150;
				#endif
				half2 Blend_Normal_Detail312_g83150 = staticSwitch267_g83150;
				float3 appendResult7888_g83150 = (float3(Blend_Normal_Detail312_g83150 , 1.0));
				float3 tanNormal7889_g83150 = appendResult7888_g83150;
				float3 worldNormal7889_g83150 = float3(dot(tanToWorld0,tanNormal7889_g83150), dot(tanToWorld1,tanNormal7889_g83150), dot(tanToWorld2,tanNormal7889_g83150));
				half3 Blend_NormalWS_Detail7890_g83150 = worldNormal7889_g83150;
				float temp_output_7901_0_g83150 = saturate( (Blend_NormalWS_Detail7890_g83150).y );
				float temp_output_7895_0_g83150 = ( temp_output_7901_0_g83150 * temp_output_7901_0_g83150 * temp_output_7901_0_g83150 * temp_output_7901_0_g83150 );
				half Terrain_Mask_Projection7875_g83150 = ( temp_output_7895_0_g83150 * _TerrainMode );
				float temp_output_7_0_g83284 = _TerrainBlendMinValue;
				float temp_output_10_0_g83284 = ( _TerrainBlendMaxValue - temp_output_7_0_g83284 );
				half Terrain_Mask7747_g83150 = saturate( ( ( saturate( ( Terrain_Mask_Pixel7898_g83150 + ( Terrain_Mask_Pixel7898_g83150 * Terrain_Mask_Projection7875_g83150 ) ) ) - temp_output_7_0_g83284 ) / ( temp_output_10_0_g83284 + 0.0001 ) ) );
				float3 lerpResult7748_g83150 = lerp( Blend_Albedo_Tinted2808_g83150 , Terrain_Albedo8037_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7792_g83150 = lerpResult7748_g83150;
				#else
				float3 staticSwitch7792_g83150 = Blend_Albedo_Tinted2808_g83150;
				#endif
				half3 Blend_Albedo_Terrain7752_g83150 = staticSwitch7792_g83150;
				float3 temp_output_3_0_g83277 = Blend_Albedo_Terrain7752_g83150;
				float dotResult20_g83277 = dot( temp_output_3_0_g83277 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g83150 = dotResult20_g83277;
				float3 temp_cast_10 = (Blend_Albedo_Grayscale5939_g83150).xxx;
				float temp_output_82_0_g83169 = _LayerColorsValue;
				float temp_output_19_0_g83173 = TVE_ColorsUsage[(int)temp_output_82_0_g83169];
				float4 temp_output_91_19_g83169 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g83150 = IN.ase_texcoord11.xyz;
				float3 WorldPosition3905_g83150 = vertexToFrag3890_g83150;
				float3 vertexToFrag4224_g83150 = IN.ase_texcoord12.xyz;
				float3 ObjectPosition4223_g83150 = vertexToFrag4224_g83150;
				float3 lerpResult4822_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _ColorsPositionMode);
				half2 UV94_g83169 = ( (temp_output_91_19_g83169).zw + ( (temp_output_91_19_g83169).xy * (lerpResult4822_g83150).xz ) );
				float4 tex2DArrayNode83_g83169 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g83169,temp_output_82_0_g83169), 0.0 );
				float4 temp_output_17_0_g83173 = tex2DArrayNode83_g83169;
				float4 temp_output_92_86_g83169 = TVE_ColorsParams;
				float4 temp_output_3_0_g83173 = temp_output_92_86_g83169;
				float4 ifLocalVar18_g83173 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83173 >= 0.5 )
				ifLocalVar18_g83173 = temp_output_17_0_g83173;
				else
				ifLocalVar18_g83173 = temp_output_3_0_g83173;
				float4 lerpResult22_g83173 = lerp( temp_output_3_0_g83173 , temp_output_17_0_g83173 , temp_output_19_0_g83173);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83173 = lerpResult22_g83173;
				#else
				float4 staticSwitch24_g83173 = ifLocalVar18_g83173;
				#endif
				half4 Global_Colors_Params5434_g83150 = staticSwitch24_g83173;
				float4 temp_output_346_0_g83157 = Global_Colors_Params5434_g83150;
				half Global_Colors_A1701_g83150 = saturate( (temp_output_346_0_g83157).w );
				half Colors_Influence3668_g83150 = Global_Colors_A1701_g83150;
				float temp_output_6306_0_g83150 = ( 1.0 - Colors_Influence3668_g83150 );
				float3 lerpResult3618_g83150 = lerp( Blend_Albedo_Terrain7752_g83150 , temp_cast_10 , ( 1.0 - ( temp_output_6306_0_g83150 * temp_output_6306_0_g83150 ) ));
				half3 Global_Colors_RGB1700_g83150 = (temp_output_346_0_g83157).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g83266 = 2.0;
				#else
				float staticSwitch1_g83266 = 4.594794;
				#endif
				half3 Colors_RGB1954_g83150 = ( Global_Colors_RGB1700_g83150 * staticSwitch1_g83266 * _ColorsIntensityValue );
				half4 Weights52_g83659 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83659 = _Specular1;
				half4 Layer237_g83659 = _Specular2;
				half4 Layer338_g83659 = _Specular3;
				half4 Layer439_g83659 = _Specular4;
				float4 weightedBlendVar31_g83659 = Weights52_g83659;
				float4 weightedBlend31_g83659 = ( weightedBlendVar31_g83659.x*Layer133_g83659 + weightedBlendVar31_g83659.y*Layer237_g83659 + weightedBlendVar31_g83659.z*Layer338_g83659 + weightedBlendVar31_g83659.w*Layer439_g83659 );
				half4 Terrain_Specular_047390_g83651 = weightedBlend31_g83659;
				half4 Layer_045_g83666 = Terrain_Specular_047390_g83651;
				half4 Weights52_g83676 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83676 = _Specular5;
				half4 Layer237_g83676 = _Specular6;
				half4 Layer338_g83676 = _Specular7;
				half4 Layer439_g83676 = _Specular8;
				float4 weightedBlendVar31_g83676 = Weights52_g83676;
				float4 weightedBlend31_g83676 = ( weightedBlendVar31_g83676.x*Layer133_g83676 + weightedBlendVar31_g83676.y*Layer237_g83676 + weightedBlendVar31_g83676.z*Layer338_g83676 + weightedBlendVar31_g83676.w*Layer439_g83676 );
				half4 Terrain_Specular_088745_g83651 = weightedBlend31_g83676;
				half4 Layer_0810_g83666 = Terrain_Specular_088745_g83651;
				half4 Weights52_g83686 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83686 = _Specular9;
				half4 Layer237_g83686 = _Specular10;
				half4 Layer338_g83686 = _Specular11;
				half4 Layer439_g83686 = _Specular12;
				float4 weightedBlendVar31_g83686 = Weights52_g83686;
				float4 weightedBlend31_g83686 = ( weightedBlendVar31_g83686.x*Layer133_g83686 + weightedBlendVar31_g83686.y*Layer237_g83686 + weightedBlendVar31_g83686.z*Layer338_g83686 + weightedBlendVar31_g83686.w*Layer439_g83686 );
				half4 Terrain_Specular_128869_g83651 = weightedBlend31_g83686;
				half4 Layer_1243_g83666 = Terrain_Specular_128869_g83651;
				half4 Weights52_g83696 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83696 = _Specular13;
				half4 Layer237_g83696 = _Specular14;
				half4 Layer338_g83696 = _Specular15;
				half4 Layer439_g83696 = _Specular16;
				float4 weightedBlendVar31_g83696 = Weights52_g83696;
				float4 weightedBlend31_g83696 = ( weightedBlendVar31_g83696.x*Layer133_g83696 + weightedBlendVar31_g83696.y*Layer237_g83696 + weightedBlendVar31_g83696.z*Layer338_g83696 + weightedBlendVar31_g83696.w*Layer439_g83696 );
				half4 Terrain_Specular_169019_g83651 = weightedBlend31_g83696;
				half4 Layer_1644_g83666 = Terrain_Specular_169019_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83666 = Layer_045_g83666;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 + Layer_1243_g83666 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 + Layer_1243_g83666 + Layer_1644_g83666 );
				#else
				float4 staticSwitch40_g83666 = Layer_045_g83666;
				#endif
				half4 Blend_Specular7446_g83651 = staticSwitch40_g83666;
				half Terrain_ColorsMask7937_g83150 = ( (Blend_Specular7446_g83651).a * (Blend_Albedo7468_g83651).w );
				float lerpResult7939_g83150 = lerp( Blend_MaskRemap_Detail6621_g83150 , Terrain_ColorsMask7937_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float staticSwitch7922_g83150 = lerpResult7939_g83150;
				#else
				float staticSwitch7922_g83150 = Blend_MaskRemap_Detail6621_g83150;
				#endif
				half Blend_ColorsMask_Terrain7921_g83150 = staticSwitch7922_g83150;
				half Colors_Value3692_g83150 = ( Blend_ColorsMask_Terrain7921_g83150 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g83150 = ( ObjectPosition4223_g83150 - TVE_WorldOrigin );
				half3 Input_Position167_g83244 = ObjectPosition_Shifted7481_g83150;
				float dotResult156_g83244 = dot( (Input_Position167_g83244).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g83150 = _VertexDynamicMode;
				half Input_DynamicMode120_g83244 = Vertex_DynamicMode5112_g83150;
				float Postion_Random162_g83244 = ( sin( dotResult156_g83244 ) * ( 1.0 - Input_DynamicMode120_g83244 ) );
				float Mesh_Variation16_g83150 = IN.ase_color.r;
				half Input_Variation124_g83244 = Mesh_Variation16_g83150;
				half ObjectData20_g83246 = frac( ( Postion_Random162_g83244 + Input_Variation124_g83244 ) );
				half WorldData19_g83246 = Input_Variation124_g83244;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83246 = WorldData19_g83246;
				#else
				float staticSwitch14_g83246 = ObjectData20_g83246;
				#endif
				float temp_output_112_0_g83244 = staticSwitch14_g83246;
				float clampResult171_g83244 = clamp( temp_output_112_0_g83244 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g83150 = clampResult171_g83244;
				float lerpResult3870_g83150 = lerp( 1.0 , Global_MeshVariation5104_g83150 , _ColorsVariationValue);
				half Colors_Variation3650_g83150 = lerpResult3870_g83150;
				half Occlusion_Alpha6463_g83150 = _VertexOcclusionColor.a;
				float lerpResult8028_g83150 = lerp( Occlusion_Mask6432_g83150 , ( 1.0 - Occlusion_Mask6432_g83150 ) , _VertexOcclusionColorsMode);
				float lerpResult8026_g83150 = lerp( Occlusion_Alpha6463_g83150 , 1.0 , lerpResult8028_g83150);
				half Occlusion_Colors6450_g83150 = lerpResult8026_g83150;
				float3 temp_output_3_0_g83278 = ( Blend_Albedo_Terrain7752_g83150 * Tint_Gradient_Color5769_g83150 * Tint_Noise_Color5770_g83150 * Tint_User_Color7335_g83150 );
				float dotResult20_g83278 = dot( temp_output_3_0_g83278 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g83150 = clamp( saturate( ( dotResult20_g83278 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g83150 = clampResult6740_g83150;
				float temp_output_7_0_g83274 = 0.1;
				float temp_output_10_0_g83274 = ( 0.2 - temp_output_7_0_g83274 );
				float lerpResult16_g83267 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g83150 * Colors_Influence3668_g83150 * Colors_Variation3650_g83150 * Occlusion_Colors6450_g83150 * Blend_Albedo_Globals6410_g83150 ) - temp_output_7_0_g83274 ) / ( temp_output_10_0_g83274 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g83150 = lerp( Blend_Albedo_Terrain7752_g83150 , ( lerpResult3618_g83150 * Colors_RGB1954_g83150 ) , lerpResult16_g83267);
				half3 Blend_Albedo_Colored_High6027_g83150 = lerpResult3628_g83150;
				half3 Blend_Albedo_Colored863_g83150 = Blend_Albedo_Colored_High6027_g83150;
				half3 Global_OverlayColor1758_g83150 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g83164 = _LayerExtrasValue;
				float temp_output_19_0_g83168 = TVE_ExtrasUsage[(int)temp_output_84_0_g83164];
				float4 temp_output_93_19_g83164 = TVE_ExtrasCoords;
				float3 lerpResult4827_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _ExtrasPositionMode);
				half2 UV96_g83164 = ( (temp_output_93_19_g83164).zw + ( (temp_output_93_19_g83164).xy * (lerpResult4827_g83150).xz ) );
				float4 tex2DArrayNode48_g83164 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g83164,temp_output_84_0_g83164), 0.0 );
				float4 temp_output_17_0_g83168 = tex2DArrayNode48_g83164;
				float4 temp_output_94_85_g83164 = TVE_ExtrasParams;
				float4 temp_output_3_0_g83168 = temp_output_94_85_g83164;
				float4 ifLocalVar18_g83168 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83168 >= 0.5 )
				ifLocalVar18_g83168 = temp_output_17_0_g83168;
				else
				ifLocalVar18_g83168 = temp_output_3_0_g83168;
				float4 lerpResult22_g83168 = lerp( temp_output_3_0_g83168 , temp_output_17_0_g83168 , temp_output_19_0_g83168);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83168 = lerpResult22_g83168;
				#else
				float4 staticSwitch24_g83168 = ifLocalVar18_g83168;
				#endif
				half4 Global_Extras_Params5440_g83150 = staticSwitch24_g83168;
				float4 break456_g83177 = Global_Extras_Params5440_g83150;
				half Global_Extras_Overlay156_g83150 = break456_g83177.z;
				float lerpResult1065_g83150 = lerp( 1.0 , Global_MeshVariation5104_g83150 , _OverlayVariationValue);
				half Overlay_Variation4560_g83150 = lerpResult1065_g83150;
				half Overlay_Value5738_g83150 = ( _GlobalOverlay * Global_Extras_Overlay156_g83150 * Overlay_Variation4560_g83150 );
				half4 Weights52_g83652 = Terrain_Weights_046781_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83700) = _NormalTex1;
				SamplerState Sampler238_g83700 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83700 = Input_Coords_016785_g83651;
				half4 Coords238_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition238_g83700 = worldPos;
				half4 localSamplePlanar2D238_g83700 = SamplePlanar2D( Texture238_g83700 , Sampler238_g83700 , Coords238_g83700 , WorldPosition238_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83700) = _NormalTex1;
				SamplerState Sampler246_g83700 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition246_g83700 = worldPos;
				half3 WorldNormal246_g83700 = WorldNormal;
				half4 localSamplePlanar3D246_g83700 = SamplePlanar3D( Texture246_g83700 , Sampler246_g83700 , Coords246_g83700 , WorldPosition246_g83700 , WorldNormal246_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83700) = _NormalTex1;
				SamplerState Sampler234_g83700 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83700 = temp_output_37_0_g83700;
				float3 WorldPosition234_g83700 = worldPos;
				float4 localSampleStochastic2D234_g83700 = SampleStochastic2D( Texture234_g83700 , Sampler234_g83700 , Coords234_g83700 , WorldPosition234_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83700) = _NormalTex1;
				SamplerState Sampler263_g83700 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition263_g83700 = worldPos;
				half3 WorldNormal263_g83700 = WorldNormal;
				half4 localSampleStochastic3D263_g83700 = SampleStochastic3D( Texture263_g83700 , Sampler263_g83700 , Coords263_g83700 , WorldPosition263_g83700 , WorldNormal263_g83700 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8635_g83651 = localSamplePlanar2D238_g83700;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8635_g83651 = localSamplePlanar3D246_g83700;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8635_g83651 = localSampleStochastic2D234_g83700;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8635_g83651 = localSampleStochastic3D263_g83700;
				#else
				float4 staticSwitch8635_g83651 = localSamplePlanar2D238_g83700;
				#endif
				half4 Layer133_g83652 = staticSwitch8635_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83701) = _NormalTex2;
				SamplerState Sampler238_g83701 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83701 = Input_Coords_026787_g83651;
				half4 Coords238_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition238_g83701 = worldPos;
				half4 localSamplePlanar2D238_g83701 = SamplePlanar2D( Texture238_g83701 , Sampler238_g83701 , Coords238_g83701 , WorldPosition238_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83701) = _NormalTex2;
				SamplerState Sampler246_g83701 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition246_g83701 = worldPos;
				half3 WorldNormal246_g83701 = WorldNormal;
				half4 localSamplePlanar3D246_g83701 = SamplePlanar3D( Texture246_g83701 , Sampler246_g83701 , Coords246_g83701 , WorldPosition246_g83701 , WorldNormal246_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83701) = _NormalTex2;
				SamplerState Sampler234_g83701 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83701 = temp_output_37_0_g83701;
				float3 WorldPosition234_g83701 = worldPos;
				float4 localSampleStochastic2D234_g83701 = SampleStochastic2D( Texture234_g83701 , Sampler234_g83701 , Coords234_g83701 , WorldPosition234_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83701) = _NormalTex2;
				SamplerState Sampler263_g83701 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition263_g83701 = worldPos;
				half3 WorldNormal263_g83701 = WorldNormal;
				half4 localSampleStochastic3D263_g83701 = SampleStochastic3D( Texture263_g83701 , Sampler263_g83701 , Coords263_g83701 , WorldPosition263_g83701 , WorldNormal263_g83701 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8636_g83651 = localSamplePlanar2D238_g83701;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8636_g83651 = localSamplePlanar3D246_g83701;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8636_g83651 = localSampleStochastic2D234_g83701;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8636_g83651 = localSampleStochastic3D263_g83701;
				#else
				float4 staticSwitch8636_g83651 = localSamplePlanar2D238_g83701;
				#endif
				half4 Layer237_g83652 = staticSwitch8636_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83702) = _NormalTex3;
				SamplerState Sampler238_g83702 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83702 = Input_Coords_036789_g83651;
				half4 Coords238_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition238_g83702 = worldPos;
				half4 localSamplePlanar2D238_g83702 = SamplePlanar2D( Texture238_g83702 , Sampler238_g83702 , Coords238_g83702 , WorldPosition238_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83702) = _NormalTex3;
				SamplerState Sampler246_g83702 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition246_g83702 = worldPos;
				half3 WorldNormal246_g83702 = WorldNormal;
				half4 localSamplePlanar3D246_g83702 = SamplePlanar3D( Texture246_g83702 , Sampler246_g83702 , Coords246_g83702 , WorldPosition246_g83702 , WorldNormal246_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83702) = _NormalTex3;
				SamplerState Sampler234_g83702 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83702 = temp_output_37_0_g83702;
				float3 WorldPosition234_g83702 = worldPos;
				float4 localSampleStochastic2D234_g83702 = SampleStochastic2D( Texture234_g83702 , Sampler234_g83702 , Coords234_g83702 , WorldPosition234_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83702) = _NormalTex3;
				SamplerState Sampler263_g83702 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition263_g83702 = worldPos;
				half3 WorldNormal263_g83702 = WorldNormal;
				half4 localSampleStochastic3D263_g83702 = SampleStochastic3D( Texture263_g83702 , Sampler263_g83702 , Coords263_g83702 , WorldPosition263_g83702 , WorldNormal263_g83702 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8637_g83651 = localSamplePlanar2D238_g83702;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8637_g83651 = localSamplePlanar3D246_g83702;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8637_g83651 = localSampleStochastic2D234_g83702;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8637_g83651 = localSampleStochastic3D263_g83702;
				#else
				float4 staticSwitch8637_g83651 = localSamplePlanar2D238_g83702;
				#endif
				half4 Layer338_g83652 = staticSwitch8637_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83703) = _NormalTex4;
				SamplerState Sampler238_g83703 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83703 = Input_Coords_046791_g83651;
				half4 Coords238_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition238_g83703 = worldPos;
				half4 localSamplePlanar2D238_g83703 = SamplePlanar2D( Texture238_g83703 , Sampler238_g83703 , Coords238_g83703 , WorldPosition238_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83703) = _NormalTex4;
				SamplerState Sampler246_g83703 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition246_g83703 = worldPos;
				half3 WorldNormal246_g83703 = WorldNormal;
				half4 localSamplePlanar3D246_g83703 = SamplePlanar3D( Texture246_g83703 , Sampler246_g83703 , Coords246_g83703 , WorldPosition246_g83703 , WorldNormal246_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83703) = _NormalTex4;
				SamplerState Sampler234_g83703 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83703 = temp_output_37_0_g83703;
				float3 WorldPosition234_g83703 = worldPos;
				float4 localSampleStochastic2D234_g83703 = SampleStochastic2D( Texture234_g83703 , Sampler234_g83703 , Coords234_g83703 , WorldPosition234_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83703) = _NormalTex4;
				SamplerState Sampler263_g83703 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition263_g83703 = worldPos;
				half3 WorldNormal263_g83703 = WorldNormal;
				half4 localSampleStochastic3D263_g83703 = SampleStochastic3D( Texture263_g83703 , Sampler263_g83703 , Coords263_g83703 , WorldPosition263_g83703 , WorldNormal263_g83703 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8638_g83651 = localSamplePlanar2D238_g83703;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8638_g83651 = localSamplePlanar3D246_g83703;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8638_g83651 = localSampleStochastic2D234_g83703;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8638_g83651 = localSampleStochastic3D263_g83703;
				#else
				float4 staticSwitch8638_g83651 = localSamplePlanar2D238_g83703;
				#endif
				half4 Layer439_g83652 = staticSwitch8638_g83651;
				float4 weightedBlendVar31_g83652 = Weights52_g83652;
				float4 weightedBlend31_g83652 = ( weightedBlendVar31_g83652.x*Layer133_g83652 + weightedBlendVar31_g83652.y*Layer237_g83652 + weightedBlendVar31_g83652.z*Layer338_g83652 + weightedBlendVar31_g83652.w*Layer439_g83652 );
				half4 Terrain_Normal_047202_g83651 = weightedBlend31_g83652;
				half4 Layer_045_g83662 = Terrain_Normal_047202_g83651;
				half4 Weights52_g83668 = Terrain_Weights_087340_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83712) = _NormalTex5;
				SamplerState Sampler238_g83712 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83712 = Input_Coords_058750_g83651;
				half4 Coords238_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition238_g83712 = worldPos;
				half4 localSamplePlanar2D238_g83712 = SamplePlanar2D( Texture238_g83712 , Sampler238_g83712 , Coords238_g83712 , WorldPosition238_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83712) = _NormalTex5;
				SamplerState Sampler246_g83712 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition246_g83712 = worldPos;
				half3 WorldNormal246_g83712 = WorldNormal;
				half4 localSamplePlanar3D246_g83712 = SamplePlanar3D( Texture246_g83712 , Sampler246_g83712 , Coords246_g83712 , WorldPosition246_g83712 , WorldNormal246_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83712) = _NormalTex5;
				SamplerState Sampler234_g83712 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83712 = temp_output_37_0_g83712;
				float3 WorldPosition234_g83712 = worldPos;
				float4 localSampleStochastic2D234_g83712 = SampleStochastic2D( Texture234_g83712 , Sampler234_g83712 , Coords234_g83712 , WorldPosition234_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83712) = _NormalTex5;
				SamplerState Sampler263_g83712 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition263_g83712 = worldPos;
				half3 WorldNormal263_g83712 = WorldNormal;
				half4 localSampleStochastic3D263_g83712 = SampleStochastic3D( Texture263_g83712 , Sampler263_g83712 , Coords263_g83712 , WorldPosition263_g83712 , WorldNormal263_g83712 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8686_g83651 = localSamplePlanar2D238_g83712;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8686_g83651 = localSamplePlanar3D246_g83712;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8686_g83651 = localSampleStochastic2D234_g83712;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8686_g83651 = localSampleStochastic3D263_g83712;
				#else
				float4 staticSwitch8686_g83651 = localSamplePlanar2D238_g83712;
				#endif
				half4 Layer133_g83668 = staticSwitch8686_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83713) = _NormalTex6;
				SamplerState Sampler238_g83713 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83713 = Input_Coords_068751_g83651;
				half4 Coords238_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition238_g83713 = worldPos;
				half4 localSamplePlanar2D238_g83713 = SamplePlanar2D( Texture238_g83713 , Sampler238_g83713 , Coords238_g83713 , WorldPosition238_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83713) = _NormalTex6;
				SamplerState Sampler246_g83713 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition246_g83713 = worldPos;
				half3 WorldNormal246_g83713 = WorldNormal;
				half4 localSamplePlanar3D246_g83713 = SamplePlanar3D( Texture246_g83713 , Sampler246_g83713 , Coords246_g83713 , WorldPosition246_g83713 , WorldNormal246_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83713) = _NormalTex6;
				SamplerState Sampler234_g83713 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83713 = temp_output_37_0_g83713;
				float3 WorldPosition234_g83713 = worldPos;
				float4 localSampleStochastic2D234_g83713 = SampleStochastic2D( Texture234_g83713 , Sampler234_g83713 , Coords234_g83713 , WorldPosition234_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83713) = _NormalTex6;
				SamplerState Sampler263_g83713 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition263_g83713 = worldPos;
				half3 WorldNormal263_g83713 = WorldNormal;
				half4 localSampleStochastic3D263_g83713 = SampleStochastic3D( Texture263_g83713 , Sampler263_g83713 , Coords263_g83713 , WorldPosition263_g83713 , WorldNormal263_g83713 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8687_g83651 = localSamplePlanar2D238_g83713;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8687_g83651 = localSamplePlanar3D246_g83713;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8687_g83651 = localSampleStochastic2D234_g83713;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8687_g83651 = localSampleStochastic3D263_g83713;
				#else
				float4 staticSwitch8687_g83651 = localSamplePlanar2D238_g83713;
				#endif
				half4 Layer237_g83668 = staticSwitch8687_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83714) = _NormalTex7;
				SamplerState Sampler238_g83714 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83714 = Input_Coords_078752_g83651;
				half4 Coords238_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition238_g83714 = worldPos;
				half4 localSamplePlanar2D238_g83714 = SamplePlanar2D( Texture238_g83714 , Sampler238_g83714 , Coords238_g83714 , WorldPosition238_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83714) = _NormalTex7;
				SamplerState Sampler246_g83714 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition246_g83714 = worldPos;
				half3 WorldNormal246_g83714 = WorldNormal;
				half4 localSamplePlanar3D246_g83714 = SamplePlanar3D( Texture246_g83714 , Sampler246_g83714 , Coords246_g83714 , WorldPosition246_g83714 , WorldNormal246_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83714) = _NormalTex7;
				SamplerState Sampler234_g83714 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83714 = temp_output_37_0_g83714;
				float3 WorldPosition234_g83714 = worldPos;
				float4 localSampleStochastic2D234_g83714 = SampleStochastic2D( Texture234_g83714 , Sampler234_g83714 , Coords234_g83714 , WorldPosition234_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83714) = _NormalTex7;
				SamplerState Sampler263_g83714 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition263_g83714 = worldPos;
				half3 WorldNormal263_g83714 = WorldNormal;
				half4 localSampleStochastic3D263_g83714 = SampleStochastic3D( Texture263_g83714 , Sampler263_g83714 , Coords263_g83714 , WorldPosition263_g83714 , WorldNormal263_g83714 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8688_g83651 = localSamplePlanar2D238_g83714;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8688_g83651 = localSamplePlanar3D246_g83714;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8688_g83651 = localSampleStochastic2D234_g83714;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8688_g83651 = localSampleStochastic3D263_g83714;
				#else
				float4 staticSwitch8688_g83651 = localSamplePlanar2D238_g83714;
				#endif
				half4 Layer338_g83668 = staticSwitch8688_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83715) = _NormalTex8;
				SamplerState Sampler238_g83715 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83715 = Input_Coords_088749_g83651;
				half4 Coords238_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition238_g83715 = worldPos;
				half4 localSamplePlanar2D238_g83715 = SamplePlanar2D( Texture238_g83715 , Sampler238_g83715 , Coords238_g83715 , WorldPosition238_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83715) = _NormalTex8;
				SamplerState Sampler246_g83715 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition246_g83715 = worldPos;
				half3 WorldNormal246_g83715 = WorldNormal;
				half4 localSamplePlanar3D246_g83715 = SamplePlanar3D( Texture246_g83715 , Sampler246_g83715 , Coords246_g83715 , WorldPosition246_g83715 , WorldNormal246_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83715) = _NormalTex8;
				SamplerState Sampler234_g83715 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83715 = temp_output_37_0_g83715;
				float3 WorldPosition234_g83715 = worldPos;
				float4 localSampleStochastic2D234_g83715 = SampleStochastic2D( Texture234_g83715 , Sampler234_g83715 , Coords234_g83715 , WorldPosition234_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83715) = _NormalTex8;
				SamplerState Sampler263_g83715 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition263_g83715 = worldPos;
				half3 WorldNormal263_g83715 = WorldNormal;
				half4 localSampleStochastic3D263_g83715 = SampleStochastic3D( Texture263_g83715 , Sampler263_g83715 , Coords263_g83715 , WorldPosition263_g83715 , WorldNormal263_g83715 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8689_g83651 = localSamplePlanar2D238_g83715;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8689_g83651 = localSamplePlanar3D246_g83715;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8689_g83651 = localSampleStochastic2D234_g83715;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8689_g83651 = localSampleStochastic3D263_g83715;
				#else
				float4 staticSwitch8689_g83651 = localSamplePlanar2D238_g83715;
				#endif
				half4 Layer439_g83668 = staticSwitch8689_g83651;
				float4 weightedBlendVar31_g83668 = Weights52_g83668;
				float4 weightedBlend31_g83668 = ( weightedBlendVar31_g83668.x*Layer133_g83668 + weightedBlendVar31_g83668.y*Layer237_g83668 + weightedBlendVar31_g83668.z*Layer338_g83668 + weightedBlendVar31_g83668.w*Layer439_g83668 );
				half4 Terrain_Normal_088684_g83651 = weightedBlend31_g83668;
				half4 Layer_0810_g83662 = Terrain_Normal_088684_g83651;
				half4 Weights52_g83678 = Terrain_Weights_127710_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83724) = _NormalTex9;
				SamplerState Sampler238_g83724 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83724 = Input_Coords_098833_g83651;
				half4 Coords238_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition238_g83724 = worldPos;
				half4 localSamplePlanar2D238_g83724 = SamplePlanar2D( Texture238_g83724 , Sampler238_g83724 , Coords238_g83724 , WorldPosition238_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83724) = _NormalTex9;
				SamplerState Sampler246_g83724 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition246_g83724 = worldPos;
				half3 WorldNormal246_g83724 = WorldNormal;
				half4 localSamplePlanar3D246_g83724 = SamplePlanar3D( Texture246_g83724 , Sampler246_g83724 , Coords246_g83724 , WorldPosition246_g83724 , WorldNormal246_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83724) = _NormalTex9;
				SamplerState Sampler234_g83724 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83724 = temp_output_37_0_g83724;
				float3 WorldPosition234_g83724 = worldPos;
				float4 localSampleStochastic2D234_g83724 = SampleStochastic2D( Texture234_g83724 , Sampler234_g83724 , Coords234_g83724 , WorldPosition234_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83724) = _NormalTex9;
				SamplerState Sampler263_g83724 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition263_g83724 = worldPos;
				half3 WorldNormal263_g83724 = WorldNormal;
				half4 localSampleStochastic3D263_g83724 = SampleStochastic3D( Texture263_g83724 , Sampler263_g83724 , Coords263_g83724 , WorldPosition263_g83724 , WorldNormal263_g83724 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8849_g83651 = localSamplePlanar2D238_g83724;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8849_g83651 = localSamplePlanar3D246_g83724;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8849_g83651 = localSampleStochastic2D234_g83724;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8849_g83651 = localSampleStochastic3D263_g83724;
				#else
				float4 staticSwitch8849_g83651 = localSamplePlanar2D238_g83724;
				#endif
				half4 Layer133_g83678 = staticSwitch8849_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83725) = _NormalTex10;
				SamplerState Sampler238_g83725 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83725 = Input_Coords_108834_g83651;
				half4 Coords238_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition238_g83725 = worldPos;
				half4 localSamplePlanar2D238_g83725 = SamplePlanar2D( Texture238_g83725 , Sampler238_g83725 , Coords238_g83725 , WorldPosition238_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83725) = _NormalTex10;
				SamplerState Sampler246_g83725 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition246_g83725 = worldPos;
				half3 WorldNormal246_g83725 = WorldNormal;
				half4 localSamplePlanar3D246_g83725 = SamplePlanar3D( Texture246_g83725 , Sampler246_g83725 , Coords246_g83725 , WorldPosition246_g83725 , WorldNormal246_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83725) = _NormalTex10;
				SamplerState Sampler234_g83725 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83725 = temp_output_37_0_g83725;
				float3 WorldPosition234_g83725 = worldPos;
				float4 localSampleStochastic2D234_g83725 = SampleStochastic2D( Texture234_g83725 , Sampler234_g83725 , Coords234_g83725 , WorldPosition234_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83725) = _NormalTex10;
				SamplerState Sampler263_g83725 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition263_g83725 = worldPos;
				half3 WorldNormal263_g83725 = WorldNormal;
				half4 localSampleStochastic3D263_g83725 = SampleStochastic3D( Texture263_g83725 , Sampler263_g83725 , Coords263_g83725 , WorldPosition263_g83725 , WorldNormal263_g83725 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8876_g83651 = localSamplePlanar2D238_g83725;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8876_g83651 = localSamplePlanar3D246_g83725;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8876_g83651 = localSampleStochastic2D234_g83725;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8876_g83651 = localSampleStochastic3D263_g83725;
				#else
				float4 staticSwitch8876_g83651 = localSamplePlanar2D238_g83725;
				#endif
				half4 Layer237_g83678 = staticSwitch8876_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83726) = _NormalTex11;
				SamplerState Sampler238_g83726 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83726 = Input_Coords_118835_g83651;
				half4 Coords238_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition238_g83726 = worldPos;
				half4 localSamplePlanar2D238_g83726 = SamplePlanar2D( Texture238_g83726 , Sampler238_g83726 , Coords238_g83726 , WorldPosition238_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83726) = _NormalTex11;
				SamplerState Sampler246_g83726 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition246_g83726 = worldPos;
				half3 WorldNormal246_g83726 = WorldNormal;
				half4 localSamplePlanar3D246_g83726 = SamplePlanar3D( Texture246_g83726 , Sampler246_g83726 , Coords246_g83726 , WorldPosition246_g83726 , WorldNormal246_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83726) = _NormalTex11;
				SamplerState Sampler234_g83726 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83726 = temp_output_37_0_g83726;
				float3 WorldPosition234_g83726 = worldPos;
				float4 localSampleStochastic2D234_g83726 = SampleStochastic2D( Texture234_g83726 , Sampler234_g83726 , Coords234_g83726 , WorldPosition234_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83726) = _NormalTex11;
				SamplerState Sampler263_g83726 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition263_g83726 = worldPos;
				half3 WorldNormal263_g83726 = WorldNormal;
				half4 localSampleStochastic3D263_g83726 = SampleStochastic3D( Texture263_g83726 , Sampler263_g83726 , Coords263_g83726 , WorldPosition263_g83726 , WorldNormal263_g83726 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8850_g83651 = localSamplePlanar2D238_g83726;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8850_g83651 = localSamplePlanar3D246_g83726;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8850_g83651 = localSampleStochastic2D234_g83726;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8850_g83651 = localSampleStochastic3D263_g83726;
				#else
				float4 staticSwitch8850_g83651 = localSamplePlanar2D238_g83726;
				#endif
				half4 Layer338_g83678 = staticSwitch8850_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83727) = _NormalTex12;
				SamplerState Sampler238_g83727 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83727 = Input_Coords_128836_g83651;
				half4 Coords238_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition238_g83727 = worldPos;
				half4 localSamplePlanar2D238_g83727 = SamplePlanar2D( Texture238_g83727 , Sampler238_g83727 , Coords238_g83727 , WorldPosition238_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83727) = _NormalTex12;
				SamplerState Sampler246_g83727 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition246_g83727 = worldPos;
				half3 WorldNormal246_g83727 = WorldNormal;
				half4 localSamplePlanar3D246_g83727 = SamplePlanar3D( Texture246_g83727 , Sampler246_g83727 , Coords246_g83727 , WorldPosition246_g83727 , WorldNormal246_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83727) = _NormalTex12;
				SamplerState Sampler234_g83727 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83727 = temp_output_37_0_g83727;
				float3 WorldPosition234_g83727 = worldPos;
				float4 localSampleStochastic2D234_g83727 = SampleStochastic2D( Texture234_g83727 , Sampler234_g83727 , Coords234_g83727 , WorldPosition234_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83727) = _NormalTex12;
				SamplerState Sampler263_g83727 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition263_g83727 = worldPos;
				half3 WorldNormal263_g83727 = WorldNormal;
				half4 localSampleStochastic3D263_g83727 = SampleStochastic3D( Texture263_g83727 , Sampler263_g83727 , Coords263_g83727 , WorldPosition263_g83727 , WorldNormal263_g83727 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8877_g83651 = localSamplePlanar2D238_g83727;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8877_g83651 = localSamplePlanar3D246_g83727;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8877_g83651 = localSampleStochastic2D234_g83727;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8877_g83651 = localSampleStochastic3D263_g83727;
				#else
				float4 staticSwitch8877_g83651 = localSamplePlanar2D238_g83727;
				#endif
				half4 Layer439_g83678 = staticSwitch8877_g83651;
				float4 weightedBlendVar31_g83678 = Weights52_g83678;
				float4 weightedBlend31_g83678 = ( weightedBlendVar31_g83678.x*Layer133_g83678 + weightedBlendVar31_g83678.y*Layer237_g83678 + weightedBlendVar31_g83678.z*Layer338_g83678 + weightedBlendVar31_g83678.w*Layer439_g83678 );
				half4 Terrain_Normal_128865_g83651 = weightedBlend31_g83678;
				half4 Layer_1243_g83662 = Terrain_Normal_128865_g83651;
				half4 Weights52_g83688 = Terrain_Weights_167709_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83743) = _NormalTex13;
				SamplerState Sampler238_g83743 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83743 = Input_Coords_138960_g83651;
				half4 Coords238_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition238_g83743 = worldPos;
				half4 localSamplePlanar2D238_g83743 = SamplePlanar2D( Texture238_g83743 , Sampler238_g83743 , Coords238_g83743 , WorldPosition238_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83743) = _NormalTex13;
				SamplerState Sampler246_g83743 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition246_g83743 = worldPos;
				half3 WorldNormal246_g83743 = WorldNormal;
				half4 localSamplePlanar3D246_g83743 = SamplePlanar3D( Texture246_g83743 , Sampler246_g83743 , Coords246_g83743 , WorldPosition246_g83743 , WorldNormal246_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83743) = _NormalTex13;
				SamplerState Sampler234_g83743 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83743 = temp_output_37_0_g83743;
				float3 WorldPosition234_g83743 = worldPos;
				float4 localSampleStochastic2D234_g83743 = SampleStochastic2D( Texture234_g83743 , Sampler234_g83743 , Coords234_g83743 , WorldPosition234_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83743) = _NormalTex13;
				SamplerState Sampler263_g83743 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition263_g83743 = worldPos;
				half3 WorldNormal263_g83743 = WorldNormal;
				half4 localSampleStochastic3D263_g83743 = SampleStochastic3D( Texture263_g83743 , Sampler263_g83743 , Coords263_g83743 , WorldPosition263_g83743 , WorldNormal263_g83743 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch8991_g83651 = localSamplePlanar2D238_g83743;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch8991_g83651 = localSamplePlanar3D246_g83743;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch8991_g83651 = localSampleStochastic2D234_g83743;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch8991_g83651 = localSampleStochastic3D263_g83743;
				#else
				float4 staticSwitch8991_g83651 = localSamplePlanar2D238_g83743;
				#endif
				half4 Layer133_g83688 = staticSwitch8991_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83736) = _NormalTex14;
				SamplerState Sampler238_g83736 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83736 = Input_Coords_148961_g83651;
				half4 Coords238_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition238_g83736 = worldPos;
				half4 localSamplePlanar2D238_g83736 = SamplePlanar2D( Texture238_g83736 , Sampler238_g83736 , Coords238_g83736 , WorldPosition238_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83736) = _NormalTex14;
				SamplerState Sampler246_g83736 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition246_g83736 = worldPos;
				half3 WorldNormal246_g83736 = WorldNormal;
				half4 localSamplePlanar3D246_g83736 = SamplePlanar3D( Texture246_g83736 , Sampler246_g83736 , Coords246_g83736 , WorldPosition246_g83736 , WorldNormal246_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83736) = _NormalTex14;
				SamplerState Sampler234_g83736 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83736 = temp_output_37_0_g83736;
				float3 WorldPosition234_g83736 = worldPos;
				float4 localSampleStochastic2D234_g83736 = SampleStochastic2D( Texture234_g83736 , Sampler234_g83736 , Coords234_g83736 , WorldPosition234_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83736) = _NormalTex14;
				SamplerState Sampler263_g83736 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition263_g83736 = worldPos;
				half3 WorldNormal263_g83736 = WorldNormal;
				half4 localSampleStochastic3D263_g83736 = SampleStochastic3D( Texture263_g83736 , Sampler263_g83736 , Coords263_g83736 , WorldPosition263_g83736 , WorldNormal263_g83736 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch8990_g83651 = localSamplePlanar2D238_g83736;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch8990_g83651 = localSamplePlanar3D246_g83736;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch8990_g83651 = localSampleStochastic2D234_g83736;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch8990_g83651 = localSampleStochastic3D263_g83736;
				#else
				float4 staticSwitch8990_g83651 = localSamplePlanar2D238_g83736;
				#endif
				half4 Layer237_g83688 = staticSwitch8990_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83737) = _NormalTex15;
				SamplerState Sampler238_g83737 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83737 = Input_Coords_158962_g83651;
				half4 Coords238_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition238_g83737 = worldPos;
				half4 localSamplePlanar2D238_g83737 = SamplePlanar2D( Texture238_g83737 , Sampler238_g83737 , Coords238_g83737 , WorldPosition238_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83737) = _NormalTex15;
				SamplerState Sampler246_g83737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition246_g83737 = worldPos;
				half3 WorldNormal246_g83737 = WorldNormal;
				half4 localSamplePlanar3D246_g83737 = SamplePlanar3D( Texture246_g83737 , Sampler246_g83737 , Coords246_g83737 , WorldPosition246_g83737 , WorldNormal246_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83737) = _NormalTex15;
				SamplerState Sampler234_g83737 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83737 = temp_output_37_0_g83737;
				float3 WorldPosition234_g83737 = worldPos;
				float4 localSampleStochastic2D234_g83737 = SampleStochastic2D( Texture234_g83737 , Sampler234_g83737 , Coords234_g83737 , WorldPosition234_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83737) = _NormalTex15;
				SamplerState Sampler263_g83737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition263_g83737 = worldPos;
				half3 WorldNormal263_g83737 = WorldNormal;
				half4 localSampleStochastic3D263_g83737 = SampleStochastic3D( Texture263_g83737 , Sampler263_g83737 , Coords263_g83737 , WorldPosition263_g83737 , WorldNormal263_g83737 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch8989_g83651 = localSamplePlanar2D238_g83737;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch8989_g83651 = localSamplePlanar3D246_g83737;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch8989_g83651 = localSampleStochastic2D234_g83737;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch8989_g83651 = localSampleStochastic3D263_g83737;
				#else
				float4 staticSwitch8989_g83651 = localSamplePlanar2D238_g83737;
				#endif
				half4 Layer338_g83688 = staticSwitch8989_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83738) = _NormalTex16;
				SamplerState Sampler238_g83738 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83738 = Input_Coords_168959_g83651;
				half4 Coords238_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition238_g83738 = worldPos;
				half4 localSamplePlanar2D238_g83738 = SamplePlanar2D( Texture238_g83738 , Sampler238_g83738 , Coords238_g83738 , WorldPosition238_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83738) = _NormalTex16;
				SamplerState Sampler246_g83738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition246_g83738 = worldPos;
				half3 WorldNormal246_g83738 = WorldNormal;
				half4 localSamplePlanar3D246_g83738 = SamplePlanar3D( Texture246_g83738 , Sampler246_g83738 , Coords246_g83738 , WorldPosition246_g83738 , WorldNormal246_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83738) = _NormalTex16;
				SamplerState Sampler234_g83738 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83738 = temp_output_37_0_g83738;
				float3 WorldPosition234_g83738 = worldPos;
				float4 localSampleStochastic2D234_g83738 = SampleStochastic2D( Texture234_g83738 , Sampler234_g83738 , Coords234_g83738 , WorldPosition234_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83738) = _NormalTex16;
				SamplerState Sampler263_g83738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition263_g83738 = worldPos;
				half3 WorldNormal263_g83738 = WorldNormal;
				half4 localSampleStochastic3D263_g83738 = SampleStochastic3D( Texture263_g83738 , Sampler263_g83738 , Coords263_g83738 , WorldPosition263_g83738 , WorldNormal263_g83738 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch8988_g83651 = localSamplePlanar2D238_g83738;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch8988_g83651 = localSamplePlanar3D246_g83738;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch8988_g83651 = localSampleStochastic2D234_g83738;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch8988_g83651 = localSampleStochastic3D263_g83738;
				#else
				float4 staticSwitch8988_g83651 = localSamplePlanar2D238_g83738;
				#endif
				half4 Layer439_g83688 = staticSwitch8988_g83651;
				float4 weightedBlendVar31_g83688 = Weights52_g83688;
				float4 weightedBlend31_g83688 = ( weightedBlendVar31_g83688.x*Layer133_g83688 + weightedBlendVar31_g83688.y*Layer237_g83688 + weightedBlendVar31_g83688.z*Layer338_g83688 + weightedBlendVar31_g83688.w*Layer439_g83688 );
				half4 Terrain_Normal_168987_g83651 = weightedBlend31_g83688;
				half4 Layer_1644_g83662 = Terrain_Normal_168987_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83662 = Layer_045_g83662;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 + Layer_1243_g83662 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 + Layer_1243_g83662 + Layer_1644_g83662 );
				#else
				float4 staticSwitch40_g83662 = Layer_045_g83662;
				#endif
				half4 Blend_Normal7512_g83651 = staticSwitch40_g83662;
				half4 Normal_Packed45_g83746 = Blend_Normal7512_g83651;
				float2 appendResult58_g83746 = (float2(( (Normal_Packed45_g83746).x * (Normal_Packed45_g83746).w ) , (Normal_Packed45_g83746).y));
				half2 Normal_Default50_g83746 = appendResult58_g83746;
				half2 Normal_ASTC41_g83746 = (Normal_Packed45_g83746).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83746 = Normal_ASTC41_g83746;
				#else
				float2 staticSwitch38_g83746 = Normal_Default50_g83746;
				#endif
				half2 Normal_NO_DTX544_g83746 = (Normal_Packed45_g83746).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83746 = Normal_NO_DTX544_g83746;
				#else
				float2 staticSwitch37_g83746 = staticSwitch38_g83746;
				#endif
				half4 Weights52_g83654 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83654 = temp_output_6970_0_g83651;
				half4 Layer237_g83654 = temp_output_6977_0_g83651;
				half4 Layer338_g83654 = temp_output_6978_0_g83651;
				half4 Layer439_g83654 = temp_output_6983_0_g83651;
				float4 weightedBlendVar31_g83654 = Weights52_g83654;
				float4 weightedBlend31_g83654 = ( weightedBlendVar31_g83654.x*Layer133_g83654 + weightedBlendVar31_g83654.y*Layer237_g83654 + weightedBlendVar31_g83654.z*Layer338_g83654 + weightedBlendVar31_g83654.w*Layer439_g83654 );
				half4 Terrain_Masks_047203_g83651 = weightedBlend31_g83654;
				half4 Layer_045_g83664 = Terrain_Masks_047203_g83651;
				half4 Weights52_g83671 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83671 = temp_output_8714_0_g83651;
				half4 Layer237_g83671 = temp_output_8721_0_g83651;
				half4 Layer338_g83671 = temp_output_8724_0_g83651;
				half4 Layer439_g83671 = temp_output_8727_0_g83651;
				float4 weightedBlendVar31_g83671 = Weights52_g83671;
				float4 weightedBlend31_g83671 = ( weightedBlendVar31_g83671.x*Layer133_g83671 + weightedBlendVar31_g83671.y*Layer237_g83671 + weightedBlendVar31_g83671.z*Layer338_g83671 + weightedBlendVar31_g83671.w*Layer439_g83671 );
				half4 Terrain_Masks_088730_g83651 = weightedBlend31_g83671;
				half4 Layer_0810_g83664 = Terrain_Masks_088730_g83651;
				half4 Weights52_g83681 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83681 = temp_output_8815_0_g83651;
				half4 Layer237_g83681 = temp_output_8818_0_g83651;
				half4 Layer338_g83681 = temp_output_8819_0_g83651;
				half4 Layer439_g83681 = temp_output_8820_0_g83651;
				float4 weightedBlendVar31_g83681 = Weights52_g83681;
				float4 weightedBlend31_g83681 = ( weightedBlendVar31_g83681.x*Layer133_g83681 + weightedBlendVar31_g83681.y*Layer237_g83681 + weightedBlendVar31_g83681.z*Layer338_g83681 + weightedBlendVar31_g83681.w*Layer439_g83681 );
				half4 Terrain_Masks_128871_g83651 = weightedBlend31_g83681;
				half4 Layer_1243_g83664 = Terrain_Masks_128871_g83651;
				half4 Weights52_g83691 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83691 = temp_output_8931_0_g83651;
				half4 Layer237_g83691 = temp_output_8934_0_g83651;
				half4 Layer338_g83691 = temp_output_8935_0_g83651;
				half4 Layer439_g83691 = temp_output_8936_0_g83651;
				float4 weightedBlendVar31_g83691 = Weights52_g83691;
				float4 weightedBlend31_g83691 = ( weightedBlendVar31_g83691.x*Layer133_g83691 + weightedBlendVar31_g83691.y*Layer237_g83691 + weightedBlendVar31_g83691.z*Layer338_g83691 + weightedBlendVar31_g83691.w*Layer439_g83691 );
				half4 Terrain_Masks_169014_g83651 = weightedBlend31_g83691;
				half4 Layer_1644_g83664 = Terrain_Masks_169014_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83664 = Layer_045_g83664;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 + Layer_1243_g83664 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 + Layer_1243_g83664 + Layer_1644_g83664 );
				#else
				float4 staticSwitch40_g83664 = Layer_045_g83664;
				#endif
				half4 Blend_Masks7420_g83651 = staticSwitch40_g83664;
				half4 Normal_Packed45_g83745 = Blend_Masks7420_g83651;
				half2 Normal_NO_DTX544_g83745 = (Normal_Packed45_g83745).wy;
				#ifdef TVE_PACKED_TEX
				float2 staticSwitch9080_g83651 = (Normal_NO_DTX544_g83745*2.0 + -1.0);
				#else
				float2 staticSwitch9080_g83651 = (staticSwitch37_g83746*2.0 + -1.0);
				#endif
				half4 Weights52_g83658 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83658 = _Params1;
				half4 Layer237_g83658 = _Params2;
				half4 Layer338_g83658 = _Params3;
				half4 Layer439_g83658 = _Params4;
				float4 weightedBlendVar31_g83658 = Weights52_g83658;
				float4 weightedBlend31_g83658 = ( weightedBlendVar31_g83658.x*Layer133_g83658 + weightedBlendVar31_g83658.y*Layer237_g83658 + weightedBlendVar31_g83658.z*Layer338_g83658 + weightedBlendVar31_g83658.w*Layer439_g83658 );
				half4 Terrain_Params_047533_g83651 = weightedBlend31_g83658;
				half4 Layer_045_g83665 = Terrain_Params_047533_g83651;
				half4 Weights52_g83675 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83675 = _Params5;
				half4 Layer237_g83675 = _Params6;
				half4 Layer338_g83675 = _Params7;
				half4 Layer439_g83675 = _Params8;
				float4 weightedBlendVar31_g83675 = Weights52_g83675;
				float4 weightedBlend31_g83675 = ( weightedBlendVar31_g83675.x*Layer133_g83675 + weightedBlendVar31_g83675.y*Layer237_g83675 + weightedBlendVar31_g83675.z*Layer338_g83675 + weightedBlendVar31_g83675.w*Layer439_g83675 );
				half4 Terrain_Params_088739_g83651 = weightedBlend31_g83675;
				half4 Layer_0810_g83665 = Terrain_Params_088739_g83651;
				half4 Weights52_g83685 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83685 = _Params9;
				half4 Layer237_g83685 = _Params10;
				half4 Layer338_g83685 = _Params11;
				half4 Layer439_g83685 = _Params12;
				float4 weightedBlendVar31_g83685 = Weights52_g83685;
				float4 weightedBlend31_g83685 = ( weightedBlendVar31_g83685.x*Layer133_g83685 + weightedBlendVar31_g83685.y*Layer237_g83685 + weightedBlendVar31_g83685.z*Layer338_g83685 + weightedBlendVar31_g83685.w*Layer439_g83685 );
				half4 Terrain_Params_128867_g83651 = weightedBlend31_g83685;
				half4 Layer_1243_g83665 = Terrain_Params_128867_g83651;
				half4 Weights52_g83695 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83695 = _Params13;
				half4 Layer237_g83695 = _Params14;
				half4 Layer338_g83695 = _Params15;
				half4 Layer439_g83695 = _Params16;
				float4 weightedBlendVar31_g83695 = Weights52_g83695;
				float4 weightedBlend31_g83695 = ( weightedBlendVar31_g83695.x*Layer133_g83695 + weightedBlendVar31_g83695.y*Layer237_g83695 + weightedBlendVar31_g83695.z*Layer338_g83695 + weightedBlendVar31_g83695.w*Layer439_g83695 );
				half4 Terrain_Params_169017_g83651 = weightedBlend31_g83695;
				half4 Layer_1644_g83665 = Terrain_Params_169017_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83665 = Layer_045_g83665;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 + Layer_1243_g83665 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 + Layer_1243_g83665 + Layer_1644_g83665 );
				#else
				float4 staticSwitch40_g83665 = Layer_045_g83665;
				#endif
				half4 Blend_Params7547_g83651 = staticSwitch40_g83665;
				half2 Normal_Planar45_g83747 = ( staticSwitch9080_g83651 * (Blend_Params7547_g83651).z );
				float2 break64_g83747 = Normal_Planar45_g83747;
				float3 appendResult65_g83747 = (float3(break64_g83747.x , 0.0 , break64_g83747.y));
				half2 Terrain_Normal8038_g83150 = ( (mul( ase_worldToTangent, appendResult65_g83747 )).xy * _TerrainNormalValue );
				float2 lerpResult7797_g83150 = lerp( Blend_Normal_Detail312_g83150 , Terrain_Normal8038_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float2 staticSwitch7796_g83150 = lerpResult7797_g83150;
				#else
				float2 staticSwitch7796_g83150 = Blend_Normal_Detail312_g83150;
				#endif
				half2 Blend_Normal_Terrain7762_g83150 = staticSwitch7796_g83150;
				float3 appendResult7377_g83150 = (float3(Blend_Normal_Terrain7762_g83150 , 1.0));
				float3 tanNormal7376_g83150 = appendResult7377_g83150;
				float3 worldNormal7376_g83150 = float3(dot(tanToWorld0,tanNormal7376_g83150), dot(tanToWorld1,tanNormal7376_g83150), dot(tanToWorld2,tanNormal7376_g83150));
				half3 Blend_NormalWS_Terrain7375_g83150 = worldNormal7376_g83150;
				float lerpResult7446_g83150 = lerp( (Blend_NormalWS_Terrain7375_g83150).y , IN.ase_normal.y , Vertex_DynamicMode5112_g83150);
				float lerpResult6757_g83150 = lerp( 1.0 , saturate( lerpResult7446_g83150 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g83150 = lerpResult6757_g83150;
				half Overlay_Shading6688_g83150 = Blend_Albedo_Globals6410_g83150;
				half Overlay_Custom6707_g83150 = 1.0;
				float lerpResult8034_g83150 = lerp( Occlusion_Mask6432_g83150 , ( 1.0 - Occlusion_Mask6432_g83150 ) , _VertexOcclusionOverlayMode);
				float lerpResult8032_g83150 = lerp( Occlusion_Alpha6463_g83150 , 1.0 , lerpResult8034_g83150);
				half Occlusion_Overlay6471_g83150 = lerpResult8032_g83150;
				float temp_output_7_0_g83273 = 0.1;
				float temp_output_10_0_g83273 = ( 0.2 - temp_output_7_0_g83273 );
				half Overlay_Mask_High6064_g83150 = saturate( ( ( ( Overlay_Value5738_g83150 * Overlay_Projection6081_g83150 * Overlay_Shading6688_g83150 * Overlay_Custom6707_g83150 * Occlusion_Overlay6471_g83150 ) - temp_output_7_0_g83273 ) / ( temp_output_10_0_g83273 + 0.0001 ) ) );
				half Overlay_Mask269_g83150 = Overlay_Mask_High6064_g83150;
				float3 lerpResult336_g83150 = lerp( Blend_Albedo_Colored863_g83150 , Global_OverlayColor1758_g83150 , Overlay_Mask269_g83150);
				half3 Blend_Albedo_Overlay359_g83150 = lerpResult336_g83150;
				half Global_WetnessContrast6502_g83150 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g83150 = break456_g83177.y;
				half Wetness_Value6343_g83150 = ( Global_Extras_Wetness305_g83150 * _GlobalWetness );
				float3 lerpResult6367_g83150 = lerp( Blend_Albedo_Overlay359_g83150 , ( Blend_Albedo_Overlay359_g83150 * Blend_Albedo_Overlay359_g83150 ) , ( Global_WetnessContrast6502_g83150 * Wetness_Value6343_g83150 ));
				half3 Blend_Albedo_Wetness6351_g83150 = lerpResult6367_g83150;
				float vertexToFrag11_g83258 = IN.ase_texcoord10.w;
				half3 Tint_Highlight_Color5771_g83150 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g83258 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g83150 = ( Blend_Albedo_Wetness6351_g83150 * Tint_Highlight_Color5771_g83150 );
				half3 Blend_Albedo_Subsurface149_g83150 = temp_output_6309_0_g83150;
				half3 Blend_Albedo_RimLight7316_g83150 = Blend_Albedo_Subsurface149_g83150;
				
				half Global_OverlayNormalScale6581_g83150 = TVE_OverlayNormalValue;
				float lerpResult6585_g83150 = lerp( 1.0 , Global_OverlayNormalScale6581_g83150 , Overlay_Mask269_g83150);
				half2 Blend_Normal_Overlay366_g83150 = ( Blend_Normal_Terrain7762_g83150 * lerpResult6585_g83150 );
				half Global_WetnessNormalScale6571_g83150 = TVE_WetnessNormalValue;
				float lerpResult6579_g83150 = lerp( 1.0 , Global_WetnessNormalScale6571_g83150 , ( Wetness_Value6343_g83150 * Wetness_Value6343_g83150 ));
				half2 Blend_Normal_Wetness6372_g83150 = ( Blend_Normal_Overlay366_g83150 * lerpResult6579_g83150 );
				float3 appendResult6568_g83150 = (float3(Blend_Normal_Wetness6372_g83150 , 1.0));
				float3 temp_output_13_0_g83178 = appendResult6568_g83150;
				float3 temp_output_33_0_g83178 = ( temp_output_13_0_g83178 * _render_normals );
				float3 switchResult12_g83178 = (((ase_vface>0)?(temp_output_13_0_g83178):(temp_output_33_0_g83178)));
				
				float3 temp_cast_19 = (0.0).xxx;
				half3 Emissive_Color7162_g83150 = (_EmissiveColor).rgb;
				half2 Emissive_UVs2468_g83150 = ( ( IN.ase_texcoord9.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g83282 = _EmissiveTexMinValue;
				float3 temp_cast_20 = (temp_output_7_0_g83282).xxx;
				float temp_output_10_0_g83282 = ( _EmissiveTexMaxValue - temp_output_7_0_g83282 );
				half3 Emissive_Texture7022_g83150 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g83150 )).rgb - temp_cast_20 ) / ( temp_output_10_0_g83282 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g83150 = break456_g83177.x;
				float lerpResult4206_g83150 = lerp( 1.0 , Global_Extras_Emissive4203_g83150 , _GlobalEmissive);
				half Emissive_Value7024_g83150 = ( ( lerpResult4206_g83150 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g83150 = saturate( ( Emissive_Texture7022_g83150 + Emissive_Value7024_g83150 ) );
				float3 temp_output_3_0_g83281 = ( Emissive_Color7162_g83150 * Emissive_Mask6968_g83150 );
				float temp_output_15_0_g83281 = _emissive_intensity_value;
				float3 temp_output_23_0_g83281 = ( temp_output_3_0_g83281 * temp_output_15_0_g83281 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch8018_g83150 = temp_output_23_0_g83281;
				#else
				float3 staticSwitch8018_g83150 = temp_cast_19;
				#endif
				half3 Blend_Emissive2476_g83150 = staticSwitch8018_g83150;
				half3 Terrain_Emissive7933_g83150 = ( (Blend_Specular7446_g83651).rgb * (Blend_Albedo7468_g83651).xyz );
				float3 lerpResult7927_g83150 = lerp( Blend_Emissive2476_g83150 , Terrain_Emissive7933_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7912_g83150 = lerpResult7927_g83150;
				#else
				float3 staticSwitch7912_g83150 = Blend_Emissive2476_g83150;
				#endif
				half3 Blend_Emissive_Terrain7909_g83150 = staticSwitch7912_g83150;
				
				half Render_Specular4861_g83150 = _RenderSpecular;
				float3 temp_cast_21 = (( 0.04 * Render_Specular4861_g83150 )).xxx;
				
				float lerpResult240_g83150 = lerp( 1.0 , tex2DNode35_g83150.g , _MainOcclusionValue);
				half Main_Occlusion247_g83150 = lerpResult240_g83150;
				float lerpResult239_g83150 = lerp( 1.0 , tex2DNode33_g83150.g , _SecondOcclusionValue);
				half Second_Occlusion251_g83150 = lerpResult239_g83150;
				float lerpResult294_g83150 = lerp( Main_Occlusion247_g83150 , Second_Occlusion251_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch310_g83150 = lerpResult294_g83150;
				#else
				float staticSwitch310_g83150 = Main_Occlusion247_g83150;
				#endif
				half Blend_Occlusion_Detail323_g83150 = staticSwitch310_g83150;
				#ifdef TVE_PACKED_TEX
				float staticSwitch9097_g83651 = 1.0;
				#else
				float staticSwitch9097_g83651 = ( (Blend_Masks7420_g83651).y * _TerrainOcclusionValue );
				#endif
				half Terrain_Occlusion8041_g83150 = staticSwitch9097_g83651;
				float lerpResult7815_g83150 = lerp( Blend_Occlusion_Detail323_g83150 , Terrain_Occlusion8041_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float staticSwitch7814_g83150 = lerpResult7815_g83150;
				#else
				float staticSwitch7814_g83150 = Blend_Occlusion_Detail323_g83150;
				#endif
				half Blend_Occlusion_Terrain7820_g83150 = staticSwitch7814_g83150;
				
				half Main_Smoothness227_g83150 = ( tex2DNode35_g83150.a * _MainSmoothnessValue );
				half Second_Smoothness236_g83150 = ( tex2DNode33_g83150.a * _SecondSmoothnessValue );
				float lerpResult266_g83150 = lerp( Main_Smoothness227_g83150 , Second_Smoothness236_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch297_g83150 = lerpResult266_g83150;
				#else
				float staticSwitch297_g83150 = Main_Smoothness227_g83150;
				#endif
				half Blend_Smoothness_Detail314_g83150 = staticSwitch297_g83150;
				#ifdef TVE_PACKED_TEX
				float staticSwitch9105_g83651 = (Blend_Masks7420_g83651).x;
				#else
				float staticSwitch9105_g83651 = (Blend_Masks7420_g83651).w;
				#endif
				half Terrain_Smoothness8042_g83150 = ( staticSwitch9105_g83651 * (Blend_Params7547_g83651).w * _TerrainSmoothnessValue );
				float lerpResult7801_g83150 = lerp( Blend_Smoothness_Detail314_g83150 , Terrain_Smoothness8042_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float staticSwitch7800_g83150 = lerpResult7801_g83150;
				#else
				float staticSwitch7800_g83150 = Blend_Smoothness_Detail314_g83150;
				#endif
				half Blend_Smoothness_Terrain7806_g83150 = staticSwitch7800_g83150;
				half Global_OverlaySmoothness311_g83150 = TVE_OverlaySmoothness;
				float lerpResult343_g83150 = lerp( Blend_Smoothness_Terrain7806_g83150 , Global_OverlaySmoothness311_g83150 , Overlay_Mask269_g83150);
				half Blend_Smoothness_Overlay371_g83150 = lerpResult343_g83150;
				float temp_output_6499_0_g83150 = ( 1.0 - Wetness_Value6343_g83150 );
				half Blend_Smoothness_Wetness4130_g83150 = saturate( ( Blend_Smoothness_Overlay371_g83150 + ( 1.0 - ( temp_output_6499_0_g83150 * temp_output_6499_0_g83150 ) ) ) );
				
				float localCustomAlphaClip19_g83272 = ( 0.0 );
				half Main_Alpha316_g83150 = tex2DNode29_g83150.a;
				half Second_Alpha5007_g83150 = tex2DNode89_g83150.a;
				float lerpResult6153_g83150 = lerp( Main_Alpha316_g83150 , Second_Alpha5007_g83150 , Detail_Mask147_g83150);
				float lerpResult6785_g83150 = lerp( ( Main_Alpha316_g83150 * Second_Alpha5007_g83150 ) , lerpResult6153_g83150 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g83150 = lerpResult6785_g83150;
				#else
				float staticSwitch6158_g83150 = Main_Alpha316_g83150;
				#endif
				half Blend_Alpha_Detail6157_g83150 = staticSwitch6158_g83150;
				half AlphaTreshold2132_g83150 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g83150 = saturate( break456_g83177.w );
				float lerpResult5154_g83150 = lerp( 0.0 , Global_MeshVariation5104_g83150 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g83150 = lerpResult5154_g83150;
				float Emissive_Alpha7942_g83150 = 0.0;
				float lerpResult6866_g83150 = lerp( ( 1.0 - Detail_Mask147_g83150 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g83150 = lerpResult6866_g83150;
				#else
				float staticSwitch6612_g83150 = 1.0;
				#endif
				half Detail_Mask_Invert6260_g83150 = staticSwitch6612_g83150;
				half Alpha_Mask6234_g83150 = ( 1.0 * Detail_Mask_Invert6260_g83150 );
				float lerpResult5203_g83150 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g83150 - saturate( ( Global_Alpha_Variation5158_g83150 + Emissive_Alpha7942_g83150 ) ) ) + ( Global_Extras_Alpha1033_g83150 * 0.1 ) ) ) , ( Alpha_Mask6234_g83150 * _GlobalAlpha ));
				float lerpResult16_g83269 = lerp( 1.0 , lerpResult5203_g83150 , TVE_IsEnabled);
				half Global_Alpha315_g83150 = lerpResult16_g83269;
				half Fade_Alpha3727_g83150 = 1.0;
				half Final_Alpha7344_g83150 = min( ( ( Blend_Alpha_Detail6157_g83150 - AlphaTreshold2132_g83150 ) * Global_Alpha315_g83150 ) , Fade_Alpha3727_g83150 );
				float temp_output_3_0_g83272 = Final_Alpha7344_g83150;
				float Alpha19_g83272 = temp_output_3_0_g83272;
				float temp_output_15_0_g83272 = 0.01;
				float Treshold19_g83272 = temp_output_15_0_g83272;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g83272 - Treshold19_g83272);
				#endif
				#else
				clip(Alpha19_g83272 - Treshold19_g83272);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g83150 = (lerpResult7986_g83150).a;
				half Second_Color_Alpha6152_g83150 = (lerpResult7997_g83150).a;
				float lerpResult6168_g83150 = lerp( Main_Color_Alpha6121_g83150 , Second_Color_Alpha6152_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g83150 = lerpResult6168_g83150;
				#else
				float staticSwitch6174_g83150 = Main_Color_Alpha6121_g83150;
				#endif
				half Blend_ColorAlpha_Detail6167_g83150 = staticSwitch6174_g83150;
				half Final_Clip914_g83150 = saturate( ( Alpha19_g83272 * Blend_ColorAlpha_Detail6167_g83150 ) );
				
				half3 Subsurface_Color1722_g83150 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g83150 );
				half Global_Subsurface4041_g83150 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g83150 = TVE_OverlaySubsurface;
				float lerpResult7362_g83150 = lerp( 1.0 , Global_OverlaySubsurface5667_g83150 , Overlay_Value5738_g83150);
				half Overlay_Subsurface7361_g83150 = lerpResult7362_g83150;
				half Subsurface_Intensity1752_g83150 = ( _SubsurfaceValue * Global_Subsurface4041_g83150 * Overlay_Subsurface7361_g83150 );
				float lerpResult8014_g83150 = lerp( 1.0 , Blend_MaskRemap_Detail6621_g83150 , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g83150 = lerpResult8014_g83150;
				half3 Subsurface_Translucency884_g83150 = ( Subsurface_Color1722_g83150 * Subsurface_Intensity1752_g83150 * Subsurface_Mask1557_g83150 * 10.0 );
				
				o.Albedo = Blend_Albedo_RimLight7316_g83150;
				o.Normal = switchResult12_g83178;
				o.Emission = Blend_Emissive_Terrain7909_g83150;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = temp_cast_21;
					#else
						o.Metallic = 0;
					#endif
					o.Occlusion = Blend_Occlusion_Terrain7820_g83150;
					o.Smoothness = Blend_Smoothness_Wetness4130_g83150;
				#endif

				o.Alpha = Final_Clip914_g83150;
				float AlphaClipThreshold = 0.5;
				float3 Transmission = 1;
				float3 Translucency = Subsurface_Translucency884_g83150;

				#ifdef _ALPHATEST_ON
					clip( o.Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed4 c = 0;
				float3 worldN;
				worldN.x = dot(IN.tSpace0.xyz, o.Normal);
				worldN.y = dot(IN.tSpace1.xyz, o.Normal);
				worldN.z = dot(IN.tSpace2.xyz, o.Normal);
				worldN = normalize(worldN);
				o.Normal = worldN;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = _LightColor0.rgb;
				gi.light.dir = lightDir;
				gi.light.color *= atten;

				#if defined(ASE_LIGHTING_SIMPLE)
					#if defined(_SPECULAR_SETUP)
						c += LightingBlinnPhong (o, worldViewDir, gi);
					#else
						c += LightingLambert( o, gi );
					#endif
				#else
					#if defined(_SPECULAR_SETUP)
						c += LightingStandardSpecular (o, worldViewDir, gi);
					#else
						c += LightingStandard( o, worldViewDir, gi );
					#endif
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;
					#ifdef DIRECTIONAL
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 transmission = max(0 , -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
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
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow( saturate( dot( worldViewDir, -lightDir ) ), scattering );
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				//#ifdef ASE_REFRACTION
				//	float4 projScreenPos = ScreenPos / ScreenPos.w;
				//	float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, WorldNormal ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
				//	projScreenPos.xy += refractionOffset.xy;
				//	float3 refraction = UNITY_SAMPLE_SCREENSPACE_TEXTURE( _GrabTexture, projScreenPos ) * RefractionColor;
				//	color.rgb = lerp( refraction, color.rgb, color.a );
				//	color.a = 1;
				//#endif

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
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
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_TRANSLUCENCY 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma shader_feature EDITOR_VISUALIZATION
			#ifndef UNITY_PASS_META
				#define UNITY_PASS_META
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "UnityMetaPass.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_TERRAIN
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_TERRAIN_04 TVE_TERRAIN_08 TVE_TERRAIN_12 TVE_TERRAIN_16
			#pragma shader_feature_local_fragment TVE_HEIGHT_BLEND
			#pragma shader_feature_local_fragment TVE_SAMPLE_01_PLANAR_2D TVE_SAMPLE_01_PLANAR_3D TVE_SAMPLE_01_STOCHASTIC_2D TVE_SAMPLE_01_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_02_PLANAR_2D TVE_SAMPLE_02_PLANAR_3D TVE_SAMPLE_02_STOCHASTIC_2D TVE_SAMPLE_02_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_03_PLANAR_2D TVE_SAMPLE_03_PLANAR_3D TVE_SAMPLE_03_STOCHASTIC_2D TVE_SAMPLE_03_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_04_PLANAR_2D TVE_SAMPLE_04_PLANAR_3D TVE_SAMPLE_04_STOCHASTIC_2D TVE_SAMPLE_04_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_05_PLANAR_2D TVE_SAMPLE_05_PLANAR_3D TVE_SAMPLE_05_STOCHASTIC_2D TVE_SAMPLE_05_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_06_PLANAR_2D TVE_SAMPLE_06_PLANAR_3D TVE_SAMPLE_06_STOCHASTIC_2D TVE_SAMPLE_06_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_07_PLANAR_2D TVE_SAMPLE_07_PLANAR_3D TVE_SAMPLE_07_STOCHASTIC_2D TVE_SAMPLE_07_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_08_PLANAR_2D TVE_SAMPLE_08_PLANAR_3D TVE_SAMPLE_08_STOCHASTIC_2D TVE_SAMPLE_08_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_09_PLANAR_2D TVE_SAMPLE_09_PLANAR_3D TVE_SAMPLE_09_STOCHASTIC_2D TVE_SAMPLE_09_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_10_PLANAR_2D TVE_SAMPLE_10_PLANAR_3D TVE_SAMPLE_10_STOCHASTIC_2D TVE_SAMPLE_10_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_11_PLANAR_2D TVE_SAMPLE_11_PLANAR_3D TVE_SAMPLE_11_STOCHASTIC_2D TVE_SAMPLE_11_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_12_PLANAR_2D TVE_SAMPLE_12_PLANAR_3D TVE_SAMPLE_12_STOCHASTIC_2D TVE_SAMPLE_12_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_13_PLANAR_2D TVE_SAMPLE_13_PLANAR_3D TVE_SAMPLE_13_STOCHASTIC_2D TVE_SAMPLE_13_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_14_PLANAR_2D TVE_SAMPLE_14_PLANAR_3D TVE_SAMPLE_14_STOCHASTIC_2D TVE_SAMPLE_14_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_15_PLANAR_2D TVE_SAMPLE_15_PLANAR_3D TVE_SAMPLE_15_STOCHASTIC_2D TVE_SAMPLE_15_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SAMPLE_16_PLANAR_2D TVE_SAMPLE_16_PLANAR_3D TVE_SAMPLE_16_STOCHASTIC_2D TVE_SAMPLE_16_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_PACKED_TEX
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_SUBSURFACE_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float2 vizUV : TEXCOORD1;
					float4 lightCoord : TEXCOORD2;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_coverage;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_cull;
			uniform half _IsSubsurfaceShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform half _Cutoff;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderZWrite;
			uniform half _RenderClip;
			uniform half _RenderCull;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
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
			uniform half _RenderCoverage;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half _SpaceGlobalLocals;
			uniform half _SpaceSubsurface;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsBlanketShader;
			uniform half4 _Color;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryDetail;
			uniform half _CategoryTerrain;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceMotionGlobals;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMeshInvertMode;
			uniform half _DetailMaskInvertMode;
			uniform half _MotionValue_31;
			uniform half _MotionValue_21;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _DetailBlendRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailMaskRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half4 _RimLightRemap;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half4 _EmissiveTexRemap;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half _MessageSubsurface;
			uniform half _MessageOcclusion;
			uniform half _MessageTerrain;
			uniform half4 _TerrainBlendRemap;
			uniform half _TerrainTexMode;
			uniform half _TerrainBlendMode;
			uniform half _TerrainLayersMode;
			uniform half _LayerSampleMode1;
			uniform half _LayerSampleMode2;
			uniform half _LayerSampleMode3;
			uniform half _LayerSampleMode4;
			uniform half _LayerSampleMode5;
			uniform half _LayerSampleMode6;
			uniform half _LayerSampleMode7;
			uniform half _LayerSampleMode8;
			uniform half _LayerSampleMode9;
			uniform half _LayerSampleMode10;
			uniform half _LayerSampleMode11;
			uniform half _LayerSampleMode12;
			uniform half _LayerSampleMode13;
			uniform half _LayerSampleMode14;
			uniform half _LayerSampleMode15;
			uniform half _LayerSampleMode16;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half _VertexPositionMode;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalOrientation;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half _ConformOffsetMode;
			uniform half _ConformOffsetValue;
			uniform half _GlobalConform;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			uniform float _TerrainBlendOffsetValue;
			uniform float _TerrainBlendNormalValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;
			uniform half _DetailBlendMode;
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _GradientMinValue;
			uniform half _GradientMaxValue;
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex1);
			uniform half4 _TerrainPosition;
			uniform half4 _TerrainSize;
			SamplerState sampler_Linear_Clamp_Aniso8;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ControlTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex1);
			SamplerState sampler_Linear_Repeat_Aniso8;
			uniform half4 _Coords1;
			uniform half4 _MaskMin1;
			uniform half4 _MaskMax1;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex2);
			uniform half4 _Coords2;
			uniform half4 _MaskMin2;
			uniform half4 _MaskMax2;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex3);
			uniform half4 _Coords3;
			uniform half4 _MaskMin3;
			uniform half4 _MaskMax3;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex4);
			uniform half4 _Coords4;
			uniform half4 _MaskMin4;
			uniform half4 _MaskMax4;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex5);
			uniform half4 _Coords5;
			uniform half4 _MaskMin5;
			uniform half4 _MaskMax5;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex6);
			uniform half4 _Coords6;
			uniform half4 _MaskMin6;
			uniform half4 _MaskMax6;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex7);
			uniform half4 _Coords7;
			uniform half4 _MaskMin7;
			uniform half4 _MaskMax7;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex8);
			uniform half4 _Coords8;
			uniform half4 _MaskMin8;
			uniform half4 _MaskMax8;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex9);
			uniform half4 _Coords9;
			uniform half4 _MaskMin9;
			uniform half4 _MaskMax9;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex10);
			uniform half4 _Coords10;
			uniform half4 _MaskMin10;
			uniform half4 _MaskMax10;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex11);
			uniform half4 _Coords11;
			uniform half4 _MaskMin11;
			uniform half4 _MaskMax11;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex12);
			uniform half4 _Coords12;
			uniform half4 _MaskMin12;
			uniform half4 _MaskMax12;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex13);
			uniform half4 _Coords13;
			uniform half4 _MaskMin13;
			uniform half4 _MaskMax13;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex14);
			uniform half4 _Coords14;
			uniform half4 _MaskMin14;
			uniform half4 _MaskMax14;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex15);
			uniform half4 _Coords15;
			uniform half4 _MaskMin15;
			uniform half4 _MaskMax15;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MaskTex16);
			uniform half4 _Coords16;
			uniform half4 _MaskMin16;
			uniform half4 _MaskMax16;
			uniform half _TerrainHeightBlendValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex1);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex5);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex6);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex7);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex8);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex9);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex10);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex11);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex12);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex13);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex14);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex15);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_AlbedoTex16);
			uniform half4 _TerrainColor;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _TerrainMode;
			uniform half _TerrainBlendMinValue;
			uniform half _TerrainBlendMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half4 _Specular1;
			uniform half4 _Specular2;
			uniform half4 _Specular3;
			uniform half4 _Specular4;
			uniform half4 _Specular5;
			uniform half4 _Specular6;
			uniform half4 _Specular7;
			uniform half4 _Specular8;
			uniform half4 _Specular9;
			uniform half4 _Specular10;
			uniform half4 _Specular11;
			uniform half4 _Specular12;
			uniform half4 _Specular13;
			uniform half4 _Specular14;
			uniform half4 _Specular15;
			uniform half4 _Specular16;
			uniform half _GlobalColors;
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
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex1);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex2);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex3);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex4);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex5);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex6);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex7);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex8);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex9);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex10);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex11);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex12);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex13);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex14);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex15);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_NormalTex16);
			uniform half4 _Params1;
			uniform half4 _Params2;
			uniform half4 _Params3;
			uniform half4 _Params4;
			uniform half4 _Params5;
			uniform half4 _Params6;
			uniform half4 _Params7;
			uniform half4 _Params8;
			uniform half4 _Params9;
			uniform half4 _Params10;
			uniform half4 _Params11;
			uniform half4 _Params12;
			uniform half4 _Params13;
			uniform half4 _Params14;
			uniform half4 _Params15;
			uniform half4 _Params16;
			uniform half _TerrainNormalValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _MotionHighlightColor;
			uniform half4 _EmissiveColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveTex);
			uniform half4 _EmissiveUVs;
			uniform half _EmissiveTexMinValue;
			uniform half _EmissiveTexMaxValue;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			
			void ComputeWorldCoords( half4 Coords, half3 WorldPosition, out half2 ZX, out half2 ZY, out half2 XY )
			{
				ZX = WorldPosition.xz * Coords.xy + Coords.zw;
				ZY = WorldPosition.zy * Coords.xy + Coords.zw; 
				XY = WorldPosition.xy * Coords.xy + Coords.zw;
			}
			
			half4 SamplePlanar2D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half4 tex = SAMPLE_TEXTURE2D( Texture, Sampler, ZX);
				return tex;
			}
			
			void ComputeTriplanarWeights( half3 WorldNormal, out half T1, out half T2, out half T3 )
			{
				half3 powNormal = abs( WorldNormal.xyz );
				half3 weights = max( powNormal * powNormal * powNormal * powNormal * powNormal * powNormal * powNormal * powNormal, 0.000001 );
				weights /= ( weights.x + weights.y + weights.z ).xxx;
				T1 = weights.y;
				T2 = weights.x;
				T3 = weights.z;
			}
			
			half4 SamplePlanar3D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition, half3 WorldNormal )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half T1, T2, T3;
				ComputeTriplanarWeights(WorldNormal, T1, T2, T3);
				half4 tex1 = SAMPLE_TEXTURE2D( Texture, Sampler, ZX);
				half4 tex2 = SAMPLE_TEXTURE2D( Texture, Sampler, ZY);
				half4 tex3 = SAMPLE_TEXTURE2D( Texture, Sampler, XY);
				return tex1 * T1 + tex2 * T2 + tex3 * T3;
			}
			
			void ComputeStochasticCoords( float2 UV, out float2 UV1, out float2 UV2, out float2 UV3, out float W1, out float W2, out float W3 )
			{
				half2 vertex1, vertex2, vertex3;
				// Scaling of the input
				half2 uv = UV * 3.464; // 2 * sqrt (3)
				// Skew input space into simplex triangle grid
				const float2x2 gridToSkewedGrid = float2x2( 1.0, 0.0, -0.57735027, 1.15470054 );
				half2 skewedCoord = mul( gridToSkewedGrid, uv );
				// Compute local triangle vertex IDs and local barycentric coordinates
				int2 baseId = int2( floor( skewedCoord ) );
				half3 temp = half3( frac( skewedCoord ), 0 );
				temp.z = 1.0 - temp.x - temp.y;
				if ( temp.z > 0.0 )
				{
					W1 = temp.z;
					W2 = temp.y;
					W3 = temp.x;
					vertex1 = baseId;
					vertex2 = baseId + int2( 0, 1 );
					vertex3 = baseId + int2( 1, 0 );
				}
				else
				{
					W1 = -temp.z;
					W2 = 1.0 - temp.y;
					W3 = 1.0 - temp.x;
					vertex1 = baseId + int2( 1, 1 );
					vertex2 = baseId + int2( 1, 0 );
					vertex3 = baseId + int2( 0, 1 );
				}
				UV1 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex1 ) ) * 43758.5453 );
				UV2 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex2 ) ) * 43758.5453 );
				UV3 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex3 ) ) * 43758.5453 );
				return;
			}
			
			float4 SampleStochastic2D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half2 UV1, UV2, UV3;
				half W1, W2, W3;
				ComputeStochasticCoords(ZX, UV1, UV2, UV3, W1, W2, W3 );
				half4 tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZX), ddy(ZX));
				half4 tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZX), ddy(ZX));
				half4 tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZX), ddy(ZX));
				return tex1 * W1 + tex2 * W2 + tex3 * W3;
			}
			
			half4 SampleStochastic3D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half3 WorldPosition, half3 WorldNormal )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half2 UV1, UV2, UV3;
				half W1, W2, W3;
				half4 tex1, tex2, tex3;
				ComputeStochasticCoords(ZX, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZX), ddy(ZX));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZX), ddy(ZX));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZX), ddy(ZX));
				half4 texZX = tex1 * W1 + tex2 * W2 + tex3 * W3;
				ComputeStochasticCoords(ZY, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZY), ddy(ZY));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZY), ddy(ZY));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZY), ddy(ZY));
				half4 texZY = tex1 * W1 + tex2 * W2 + tex3 * W3;
				ComputeStochasticCoords(XY, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(XY), ddy(XY));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(XY), ddy(XY));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(XY), ddy(XY));
				half4 texXY = tex1 * W1 + tex2 * W2 + tex3 * W3;
				half T1, T2, T3;
				ComputeTriplanarWeights(WorldNormal, T1, T2, T3);
				return texZX * T1 + texZY * T2 + texXY * T3;
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g83150 = v.vertex.xyz;
				float3 appendResult60_g83158 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g83150 = ( appendResult60_g83158 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g83150 = Mesh_PivotsData2831_g83150;
				float3 temp_output_2283_0_g83150 = ( VertexPosition3588_g83150 - Mesh_PivotsOS2291_g83150 );
				half3 VertexPos40_g83230 = temp_output_2283_0_g83150;
				half3 VertexPos40_g83231 = VertexPos40_g83230;
				float3 appendResult74_g83231 = (float3(VertexPos40_g83231.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g83231 = appendResult74_g83231;
				float3 break84_g83231 = VertexPos40_g83231;
				float3 appendResult81_g83231 = (float3(0.0 , break84_g83231.y , break84_g83231.z));
				half3 VertexPosOtherAxis82_g83231 = appendResult81_g83231;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g83150 = ase_worldPos;
				float3 WorldPosition3905_g83150 = vertexToFrag3890_g83150;
				float3 WorldPosition_Shifted7477_g83150 = ( WorldPosition3905_g83150 - TVE_WorldOrigin );
				float4x4 break19_g83187 = unity_ObjectToWorld;
				float3 appendResult20_g83187 = (float3(break19_g83187[ 0 ][ 3 ] , break19_g83187[ 1 ][ 3 ] , break19_g83187[ 2 ][ 3 ]));
				float3 temp_output_122_0_g83187 = Mesh_PivotsData2831_g83150;
				float3 PivotsOnly105_g83187 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g83187 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g83189 = ( appendResult20_g83187 + PivotsOnly105_g83187 );
				half3 WorldData19_g83189 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83189 = WorldData19_g83189;
				#else
				float3 staticSwitch14_g83189 = ObjectData20_g83189;
				#endif
				float3 temp_output_114_0_g83187 = staticSwitch14_g83189;
				float3 vertexToFrag4224_g83150 = temp_output_114_0_g83187;
				float3 ObjectPosition4223_g83150 = vertexToFrag4224_g83150;
				float3 ObjectPosition_Shifted7481_g83150 = ( ObjectPosition4223_g83150 - TVE_WorldOrigin );
				float3 lerpResult6766_g83150 = lerp( WorldPosition_Shifted7477_g83150 , ObjectPosition_Shifted7481_g83150 , _MotionPosition_10);
				float3 Motion_10_Position6738_g83150 = lerpResult6766_g83150;
				half3 Input_Position419_g83195 = Motion_10_Position6738_g83150;
				float Input_MotionScale287_g83195 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g83195 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g83195 = (( Input_Position419_g83195 * Input_MotionScale287_g83195 * NoiseTex_Tilling735_g83195 * 0.0075 )).xz;
				float2 temp_output_447_0_g83155 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g83150 = temp_output_447_0_g83155;
				half2 Input_DirectionWS423_g83195 = Global_Wind_DirectionWS4683_g83150;
				float lerpResult128_g83196 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83195 = _MotionSpeed_10;
				half Input_MotionVariation284_g83195 = _MotionVariation_10;
				half3 Input_Position167_g83244 = ObjectPosition_Shifted7481_g83150;
				float dotResult156_g83244 = dot( (Input_Position167_g83244).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g83150 = _VertexDynamicMode;
				half Input_DynamicMode120_g83244 = Vertex_DynamicMode5112_g83150;
				float Postion_Random162_g83244 = ( sin( dotResult156_g83244 ) * ( 1.0 - Input_DynamicMode120_g83244 ) );
				float Mesh_Variation16_g83150 = v.ase_color.r;
				half Input_Variation124_g83244 = Mesh_Variation16_g83150;
				half ObjectData20_g83246 = frac( ( Postion_Random162_g83244 + Input_Variation124_g83244 ) );
				half WorldData19_g83246 = Input_Variation124_g83244;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83246 = WorldData19_g83246;
				#else
				float staticSwitch14_g83246 = ObjectData20_g83246;
				#endif
				float temp_output_112_0_g83244 = staticSwitch14_g83246;
				float clampResult171_g83244 = clamp( temp_output_112_0_g83244 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g83150 = clampResult171_g83244;
				half Input_GlobalMeshVariation569_g83195 = Global_MeshVariation5104_g83150;
				float temp_output_630_0_g83195 = ( ( ( lerpResult128_g83196 * Input_MotionSpeed62_g83195 ) + ( Input_MotionVariation284_g83195 * Input_GlobalMeshVariation569_g83195 ) ) * 0.03 );
				float temp_output_607_0_g83195 = frac( temp_output_630_0_g83195 );
				float4 lerpResult590_g83195 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g83195 + ( -Input_DirectionWS423_g83195 * temp_output_607_0_g83195 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g83195 + ( -Input_DirectionWS423_g83195 * frac( ( temp_output_630_0_g83195 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g83195 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g83195 = lerpResult590_g83195;
				float2 temp_output_645_0_g83195 = ((Noise_Complex703_g83195).rg*2.0 + -1.0);
				float2 break650_g83195 = temp_output_645_0_g83195;
				float3 appendResult649_g83195 = (float3(break650_g83195.x , 0.0 , break650_g83195.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g83150 = (( mul( unity_WorldToObject, float4( appendResult649_g83195 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g83210 = Global_Noise_OS5548_g83150;
				float2 break448_g83155 = temp_output_447_0_g83155;
				float3 appendResult452_g83155 = (float3(break448_g83155.x , 0.0 , break448_g83155.y));
				half2 Global_Wind_DirectionOS5692_g83150 = (( mul( unity_WorldToObject, float4( appendResult452_g83155 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g83210 = Global_Wind_DirectionOS5692_g83150;
				float temp_output_84_0_g83159 = _LayerMotionValue;
				float temp_output_19_0_g83163 = TVE_MotionUsage[(int)temp_output_84_0_g83159];
				float4 temp_output_91_19_g83159 = TVE_MotionCoords;
				half2 UV94_g83159 = ( (temp_output_91_19_g83159).zw + ( (temp_output_91_19_g83159).xy * (ObjectPosition4223_g83150).xz ) );
				float4 tex2DArrayNode50_g83159 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g83159,temp_output_84_0_g83159), 0.0 );
				float4 temp_output_17_0_g83163 = tex2DArrayNode50_g83159;
				float4 temp_output_112_19_g83159 = TVE_MotionParams;
				float4 temp_output_3_0_g83163 = temp_output_112_19_g83159;
				float4 ifLocalVar18_g83163 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83163 >= 0.5 )
				ifLocalVar18_g83163 = temp_output_17_0_g83163;
				else
				ifLocalVar18_g83163 = temp_output_3_0_g83163;
				float4 lerpResult22_g83163 = lerp( temp_output_3_0_g83163 , temp_output_17_0_g83163 , temp_output_19_0_g83163);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83163 = lerpResult22_g83163;
				#else
				float4 staticSwitch24_g83163 = ifLocalVar18_g83163;
				#endif
				half4 Global_Motion_Params3909_g83150 = staticSwitch24_g83163;
				float4 break322_g83155 = Global_Motion_Params3909_g83150;
				float lerpResult457_g83155 = lerp( break322_g83155.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g83155 = ( 1.0 - lerpResult457_g83155 );
				half Global_Wind_Power2223_g83150 = ( 1.0 - ( temp_output_459_0_g83155 * temp_output_459_0_g83155 ) );
				half Input_WindPower449_g83210 = Global_Wind_Power2223_g83150;
				float2 lerpResult516_g83210 = lerp( Input_Noise_DirectionOS487_g83210 , Input_Wind_DirectionOS458_g83210 , ( Input_WindPower449_g83210 * 0.6 ));
				half Mesh_Motion_107613_g83150 = v.ase_color.a;
				half Input_MeshHeight388_g83210 = Mesh_Motion_107613_g83150;
				half ObjectData20_g83211 = Input_MeshHeight388_g83210;
				float enc62_g83205 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g83205 = DecodeFloatToVector2( enc62_g83205 );
				float2 break63_g83205 = ( localDecodeFloatToVector262_g83205 * 100.0 );
				float Bounds_Height5230_g83150 = break63_g83205.x;
				half Input_BoundsHeight390_g83210 = Bounds_Height5230_g83150;
				half WorldData19_g83211 = ( Input_MeshHeight388_g83210 * Input_MeshHeight388_g83210 * Input_BoundsHeight390_g83210 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83211 = WorldData19_g83211;
				#else
				float staticSwitch14_g83211 = ObjectData20_g83211;
				#endif
				half Final_Motion10_Mask321_g83210 = ( staticSwitch14_g83211 * 2.0 );
				half Motion_10_Amplitude2258_g83150 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g83210 = Motion_10_Amplitude2258_g83150;
				half Global_MotionValue640_g83210 = TVE_MotionValue_10;
				half2 Final_Bending631_g83210 = ( lerpResult516_g83210 * ( Final_Motion10_Mask321_g83210 * Input_BendingAmplitude376_g83210 * Input_WindPower449_g83210 * Input_WindPower449_g83210 * Global_MotionValue640_g83210 ) );
				float2 appendResult433_g83155 = (float2(break322_g83155.x , break322_g83155.y));
				float2 temp_output_436_0_g83155 = (appendResult433_g83155*2.0 + -1.0);
				float2 break441_g83155 = temp_output_436_0_g83155;
				float3 appendResult440_g83155 = (float3(break441_g83155.x , 0.0 , break441_g83155.y));
				half2 Global_React_DirectionOS39_g83150 = (( mul( unity_WorldToObject, float4( appendResult440_g83155 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g83210 = Global_React_DirectionOS39_g83150;
				float clampResult17_g83213 = clamp( Input_MeshHeight388_g83210 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83212 = 0.0;
				half Input_InteractionUseMask62_g83210 = _InteractionMaskValue;
				float temp_output_10_0_g83212 = ( Input_InteractionUseMask62_g83210 - temp_output_7_0_g83212 );
				half Final_InteractionRemap594_g83210 = saturate( ( ( clampResult17_g83213 - temp_output_7_0_g83212 ) / ( temp_output_10_0_g83212 + 0.0001 ) ) );
				half ObjectData20_g83214 = Final_InteractionRemap594_g83210;
				half WorldData19_g83214 = ( Final_InteractionRemap594_g83210 * Final_InteractionRemap594_g83210 * Input_BoundsHeight390_g83210 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83214 = WorldData19_g83214;
				#else
				float staticSwitch14_g83214 = ObjectData20_g83214;
				#endif
				half Final_InteractionMask373_g83210 = ( staticSwitch14_g83214 * 2.0 );
				half Interaction_Amplitude7501_g83150 = _InteractionAmplitude;
				half Input_InteractionAmplitude58_g83210 = Interaction_Amplitude7501_g83150;
				half2 Final_Interaction632_g83210 = ( Input_React_DirectionOS358_g83210 * Final_InteractionMask373_g83210 * Input_InteractionAmplitude58_g83210 );
				half Global_Interaction_Mask66_g83150 = ( break322_g83155.w * break322_g83155.w * break322_g83155.w * break322_g83155.w );
				float Input_InteractionGlobalMask330_g83210 = Global_Interaction_Mask66_g83150;
				half Final_InteractionValue525_g83210 = saturate( ( Input_InteractionAmplitude58_g83210 * Input_InteractionGlobalMask330_g83210 ) );
				float2 lerpResult551_g83210 = lerp( Final_Bending631_g83210 , Final_Interaction632_g83210 , Final_InteractionValue525_g83210);
				float2 break364_g83210 = lerpResult551_g83210;
				float3 appendResult638_g83210 = (float3(break364_g83210.x , 0.0 , break364_g83210.y));
				half3 Motion_10_Interaction7519_g83150 = appendResult638_g83210;
				float temp_output_84_0_g83179 = _LayerVertexValue;
				float temp_output_19_0_g83183 = TVE_VertexUsage[(int)temp_output_84_0_g83179];
				float4 temp_output_94_19_g83179 = TVE_VertexCoords;
				float3 lerpResult7575_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _VertexPositionMode);
				half2 UV97_g83179 = ( (temp_output_94_19_g83179).zw + ( (temp_output_94_19_g83179).xy * (lerpResult7575_g83150).xz ) );
				float4 tex2DArrayNode50_g83179 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g83179,temp_output_84_0_g83179), 0.0 );
				float4 temp_output_17_0_g83183 = tex2DArrayNode50_g83179;
				float4 temp_output_111_19_g83179 = TVE_VertexParams;
				float4 temp_output_3_0_g83183 = temp_output_111_19_g83179;
				float4 ifLocalVar18_g83183 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83183 >= 0.5 )
				ifLocalVar18_g83183 = temp_output_17_0_g83183;
				else
				ifLocalVar18_g83183 = temp_output_3_0_g83183;
				float4 lerpResult22_g83183 = lerp( temp_output_3_0_g83183 , temp_output_17_0_g83183 , temp_output_19_0_g83183);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83183 = lerpResult22_g83183;
				#else
				float4 staticSwitch24_g83183 = ifLocalVar18_g83183;
				#endif
				half4 Global_Vertex_Params4173_g83150 = staticSwitch24_g83183;
				float4 break322_g83217 = Global_Vertex_Params4173_g83150;
				float2 appendResult355_g83217 = (float2(break322_g83217.x , break322_g83217.y));
				float2 temp_output_356_0_g83217 = (appendResult355_g83217*2.0 + -1.0);
				float2 break357_g83217 = temp_output_356_0_g83217;
				float3 appendResult361_g83217 = (float3(break357_g83217.x , 0.0 , break357_g83217.y));
				half2 Global_VertexOrientationOS7550_g83150 = (( mul( unity_WorldToObject, float4( appendResult361_g83217 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float2 lerpResult7535_g83150 = lerp( float2( 0,0 ) , Global_VertexOrientationOS7550_g83150 , _GlobalOrientation);
				float2 break7552_g83150 = lerpResult7535_g83150;
				float3 appendResult7553_g83150 = (float3(break7552_g83150.x , 0.0 , break7552_g83150.y));
				half3 Vertex_Orientation7542_g83150 = appendResult7553_g83150;
				half3 Angle44_g83230 = ( Motion_10_Interaction7519_g83150 + Vertex_Orientation7542_g83150 );
				half Angle44_g83231 = (Angle44_g83230).z;
				half3 VertexPos40_g83232 = ( VertexPosRotationAxis50_g83231 + ( VertexPosOtherAxis82_g83231 * cos( Angle44_g83231 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g83231 ) * sin( Angle44_g83231 ) ) );
				float3 appendResult74_g83232 = (float3(0.0 , 0.0 , VertexPos40_g83232.z));
				half3 VertexPosRotationAxis50_g83232 = appendResult74_g83232;
				float3 break84_g83232 = VertexPos40_g83232;
				float3 appendResult81_g83232 = (float3(break84_g83232.x , break84_g83232.y , 0.0));
				half3 VertexPosOtherAxis82_g83232 = appendResult81_g83232;
				half Angle44_g83232 = -(Angle44_g83230).x;
				half3 Input_Position419_g83203 = WorldPosition_Shifted7477_g83150;
				float3 break459_g83203 = Input_Position419_g83203;
				float Sum_Position446_g83203 = ( break459_g83203.x + break459_g83203.y + break459_g83203.z );
				half Input_MotionScale321_g83203 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g83203 = _MotionVariation_20;
				half Input_GlobalVariation400_g83203 = Global_MeshVariation5104_g83150;
				float lerpResult128_g83204 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83203 = _MotionSpeed_20;
				float temp_output_404_0_g83203 = ( lerpResult128_g83204 * Input_MotionSpeed62_g83203 );
				half Motion_SineA450_g83203 = sin( ( ( Sum_Position446_g83203 * Input_MotionScale321_g83203 ) + ( Input_MotionVariation330_g83203 * Input_GlobalVariation400_g83203 ) + temp_output_404_0_g83203 ) );
				half Motion_SineB395_g83203 = sin( ( ( temp_output_404_0_g83203 * 0.6842 ) + ( Sum_Position446_g83203 * Input_MotionScale321_g83203 ) ) );
				half3 Input_Position419_g83242 = VertexPosition3588_g83150;
				float3 normalizeResult518_g83242 = normalize( Input_Position419_g83242 );
				half2 Input_DirectionOS423_g83242 = Global_React_DirectionOS39_g83150;
				float2 break521_g83242 = -Input_DirectionOS423_g83242;
				float3 appendResult522_g83242 = (float3(break521_g83242.x , 0.0 , break521_g83242.y));
				float dotResult519_g83242 = dot( normalizeResult518_g83242 , appendResult522_g83242 );
				half Input_Value62_g83242 = _MotionFacingValue;
				float lerpResult524_g83242 = lerp( 1.0 , (dotResult519_g83242*0.5 + 0.5) , Input_Value62_g83242);
				half ObjectData20_g83243 = max( lerpResult524_g83242 , 0.001 );
				half WorldData19_g83243 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83243 = WorldData19_g83243;
				#else
				float staticSwitch14_g83243 = ObjectData20_g83243;
				#endif
				half Motion_FacingMask5214_g83150 = staticSwitch14_g83243;
				half Motion_20_Amplitude4381_g83150 = Motion_FacingMask5214_g83150;
				half Input_MotionAmplitude384_g83203 = Motion_20_Amplitude4381_g83150;
				half Input_GlobalWind407_g83203 = Global_Wind_Power2223_g83150;
				float4 break638_g83195 = abs( Noise_Complex703_g83195 );
				half Global_Noise_B5526_g83150 = break638_g83195.b;
				half Input_GlobalNoise411_g83203 = Global_Noise_B5526_g83150;
				float lerpResult413_g83203 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g83203);
				half Motion_Amplitude418_g83203 = ( Input_MotionAmplitude384_g83203 * Input_GlobalWind407_g83203 * pow( Input_GlobalNoise411_g83203 , lerpResult413_g83203 ) );
				half Input_Squash58_g83203 = _MotionAmplitude_20;
				float enc59_g83205 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g83205 = DecodeFloatToVector2( enc59_g83205 );
				float2 break61_g83205 = localDecodeFloatToVector259_g83205;
				half Mesh_Motion_2060_g83150 = break61_g83205.x;
				half Input_MeshMotion_20388_g83203 = Mesh_Motion_2060_g83150;
				float Bounds_Radius5231_g83150 = break63_g83205.y;
				half Input_BoundsRadius390_g83203 = Bounds_Radius5231_g83150;
				half Global_MotionValue462_g83203 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g83203 = Global_React_DirectionOS39_g83150;
				float2 break371_g83203 = Input_DirectionOS366_g83203;
				float3 appendResult372_g83203 = (float3(break371_g83203.x , ( Motion_SineA450_g83203 * 0.3 ) , break371_g83203.y));
				half3 Motion_20_Squash4418_g83150 = ( ( (max( Motion_SineA450_g83203 , Motion_SineB395_g83203 )*0.5 + 0.5) * Motion_Amplitude418_g83203 * Input_Squash58_g83203 * Input_MeshMotion_20388_g83203 * Input_BoundsRadius390_g83203 * Global_MotionValue462_g83203 ) * appendResult372_g83203 );
				half3 VertexPos40_g83220 = ( ( VertexPosRotationAxis50_g83232 + ( VertexPosOtherAxis82_g83232 * cos( Angle44_g83232 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g83232 ) * sin( Angle44_g83232 ) ) ) + Motion_20_Squash4418_g83150 );
				float3 appendResult74_g83220 = (float3(0.0 , VertexPos40_g83220.y , 0.0));
				float3 VertexPosRotationAxis50_g83220 = appendResult74_g83220;
				float3 break84_g83220 = VertexPos40_g83220;
				float3 appendResult81_g83220 = (float3(break84_g83220.x , 0.0 , break84_g83220.z));
				float3 VertexPosOtherAxis82_g83220 = appendResult81_g83220;
				half Input_Rolling379_g83203 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g83150 = ( Motion_SineA450_g83203 * Motion_Amplitude418_g83203 * Input_Rolling379_g83203 * Input_MeshMotion_20388_g83203 * Global_MotionValue462_g83203 );
				half Angle44_g83220 = Motion_20_Rolling5257_g83150;
				half3 Input_Position500_g83199 = WorldPosition_Shifted7477_g83150;
				half Input_MotionScale321_g83199 = _MotionScale_32;
				half Input_MotionVariation330_g83199 = _MotionVariation_32;
				half Input_GlobalVariation372_g83199 = Global_MeshVariation5104_g83150;
				float lerpResult128_g83200 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83199 = _MotionSpeed_32;
				float4 tex2DNode460_g83199 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g83199).xz * Input_MotionScale321_g83199 * 0.03 ) + ( Input_MotionVariation330_g83199 * Input_GlobalVariation372_g83199 ) + ( lerpResult128_g83200 * Input_MotionSpeed62_g83199 * 0.02 ) ), 0.0 );
				float3 appendResult462_g83199 = (float3(tex2DNode460_g83199.r , tex2DNode460_g83199.g , tex2DNode460_g83199.b));
				half3 Flutter_Texture489_g83199 = (appendResult462_g83199*2.0 + -1.0);
				float temp_output_7_0_g83185 = TVE_MotionFadeEnd;
				float temp_output_10_0_g83185 = ( TVE_MotionFadeStart - temp_output_7_0_g83185 );
				half Motion_FadeOut4005_g83150 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g83185 ) / ( temp_output_10_0_g83185 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g83150 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g83150 * Motion_FadeOut4005_g83150 );
				half Input_MotionAmplitude58_g83199 = Motion_30_Amplitude4960_g83150;
				half Mesh_Motion_30144_g83150 = break61_g83205.y;
				half Input_MeshMotion_30374_g83199 = Mesh_Motion_30144_g83150;
				half Input_GlobalWind471_g83199 = Global_Wind_Power2223_g83150;
				half Global_MotionValue503_g83199 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g83199 = Global_Noise_B5526_g83150;
				float lerpResult466_g83199 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g83199);
				half Flutter_Amplitude491_g83199 = ( Input_MotionAmplitude58_g83199 * Input_MeshMotion_30374_g83199 * Input_GlobalWind471_g83199 * Global_MotionValue503_g83199 * pow( Input_GlobalNoise472_g83199 , lerpResult466_g83199 ) );
				half3 Motion_30_Flutter263_g83150 = ( Flutter_Texture489_g83199 * Flutter_Amplitude491_g83199 );
				float3 Vertex_Motion_Object833_g83150 = ( ( VertexPosRotationAxis50_g83220 + ( VertexPosOtherAxis82_g83220 * cos( Angle44_g83220 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g83220 ) * sin( Angle44_g83220 ) ) ) + Motion_30_Flutter263_g83150 );
				half3 ObjectData20_g83221 = Vertex_Motion_Object833_g83150;
				float3 temp_output_3474_0_g83150 = ( VertexPosition3588_g83150 - Mesh_PivotsOS2291_g83150 );
				float3 Vertex_Motion_World1118_g83150 = ( ( ( temp_output_3474_0_g83150 + ( Motion_10_Interaction7519_g83150 + Vertex_Orientation7542_g83150 ) ) + Motion_20_Squash4418_g83150 ) + Motion_30_Flutter263_g83150 );
				half3 WorldData19_g83221 = Vertex_Motion_World1118_g83150;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83221 = WorldData19_g83221;
				#else
				float3 staticSwitch14_g83221 = ObjectData20_g83221;
				#endif
				float3 temp_output_7495_0_g83150 = staticSwitch14_g83221;
				float3 Vertex_Motion7493_g83150 = temp_output_7495_0_g83150;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g83150 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g83150 = normalizeResult2169_g83150;
				float3 break2709_g83150 = cross( ViewDirection3963_g83150 , half3(0,1,0) );
				float3 appendResult2710_g83150 = (float3(-break2709_g83150.z , 0.0 , break2709_g83150.x));
				float3 appendResult2667_g83150 = (float3(Global_MeshVariation5104_g83150 , 0.5 , Global_MeshVariation5104_g83150));
				half Mesh_Height1524_g83150 = v.ase_color.a;
				float dotResult2212_g83150 = dot( ViewDirection3963_g83150 , float3(0,1,0) );
				half Mask_HView2656_g83150 = dotResult2212_g83150;
				float saferPower2652_g83150 = abs( Mask_HView2656_g83150 );
				half3 Grass_Perspective2661_g83150 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g83150 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g83150*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g83150 * pow( saferPower2652_g83150 , _PerspectiveAngleValue ) );
				half Global_VertexSize174_g83150 = saturate( break322_g83217.w );
				float lerpResult346_g83150 = lerp( 1.0 , Global_VertexSize174_g83150 , _GlobalSize);
				float3 appendResult3480_g83150 = (float3(lerpResult346_g83150 , lerpResult346_g83150 , lerpResult346_g83150));
				half3 ObjectData20_g83224 = appendResult3480_g83150;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g83224 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83224 = WorldData19_g83224;
				#else
				float3 staticSwitch14_g83224 = ObjectData20_g83224;
				#endif
				half3 Vertex_Size1741_g83150 = staticSwitch14_g83224;
				float temp_output_7_0_g83225 = _SizeFadeEndValue;
				float temp_output_10_0_g83225 = ( _SizeFadeStartValue - temp_output_7_0_g83225 );
				float temp_output_7453_0_g83150 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g83150 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g83225 ) / ( temp_output_10_0_g83225 + 0.0001 ) ) );
				float3 appendResult3482_g83150 = (float3(temp_output_7453_0_g83150 , temp_output_7453_0_g83150 , temp_output_7453_0_g83150));
				half3 ObjectData20_g83223 = appendResult3482_g83150;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g83223 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83223 = WorldData19_g83223;
				#else
				float3 staticSwitch14_g83223 = ObjectData20_g83223;
				#endif
				float3 Vertex_SizeFade1740_g83150 = staticSwitch14_g83223;
				half Global_VertexOffset7549_g83150 = break322_g83217.z;
				float3 ase_objectScale = float3( length( unity_ObjectToWorld[ 0 ].xyz ), length( unity_ObjectToWorld[ 1 ].xyz ), length( unity_ObjectToWorld[ 2 ].xyz ) );
				float3 appendResult7547_g83150 = (float3(0.0 , ( ( ( ( Global_VertexOffset7549_g83150 - ( (ObjectPosition_Shifted7481_g83150).y * _ConformOffsetMode ) ) + _ConformOffsetValue ) / ase_objectScale.y ) * _GlobalConform ) , 0.0));
				half3 Vertex_Offset7544_g83150 = appendResult7547_g83150;
				float3 lerpResult16_g83226 = lerp( VertexPosition3588_g83150 , ( ( ( Vertex_Motion7493_g83150 + Grass_Perspective2661_g83150 ) * Vertex_Size1741_g83150 * Vertex_SizeFade1740_g83150 ) + Mesh_PivotsOS2291_g83150 + Vertex_Offset7544_g83150 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g83150 = lerpResult16_g83226;
				float3 Final_VertexPosition890_g83150 = ( temp_output_4912_0_g83150 + _DisableSRPBatcher );
				
				half2 Global_VertexOrientationWS7551_g83150 = temp_output_356_0_g83217;
				float2 break7779_g83150 = Global_VertexOrientationWS7551_g83150;
				float dotResult8067_g83150 = dot( Global_VertexOrientationWS7551_g83150 , Global_VertexOrientationWS7551_g83150 );
				float3 appendResult7781_g83150 = (float3(break7779_g83150.x , sqrt( ( 1.0 - saturate( dotResult8067_g83150 ) ) ) , break7779_g83150.y));
				float3 normalizeResult8063_g83150 = normalize( appendResult7781_g83150 );
				float3 worldToObjDir7782_g83150 = ASESafeNormalize( mul( unity_WorldToObject, float4( normalizeResult8063_g83150, 0 ) ).xyz );
				half Terrain_Blend_Offset8086_g83150 = _TerrainBlendOffsetValue;
				half Terrain_Mask_Vertex8085_g83150 = saturate( ( ( Global_VertexOffset7549_g83150 + ( Terrain_Blend_Offset8086_g83150 * _TerrainBlendNormalValue ) ) - (WorldPosition_Shifted7477_g83150).y ) );
				float3 lerpResult7784_g83150 = lerp( v.normal , worldToObjDir7782_g83150 , Terrain_Mask_Vertex8085_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7896_g83150 = lerpResult7784_g83150;
				#else
				float3 staticSwitch7896_g83150 = v.normal;
				#endif
				
				float4 break33_g83216 = _second_uvs_mode;
				float2 temp_output_30_0_g83216 = ( v.ase_texcoord.xy * break33_g83216.x );
				float2 appendResult21_g83205 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g83150 = appendResult21_g83205;
				float2 temp_output_29_0_g83216 = ( Mesh_DetailCoord3_g83150 * break33_g83216.y );
				float2 temp_output_31_0_g83216 = ( (WorldPosition_Shifted7477_g83150).xz * break33_g83216.z );
				half2 Second_UVs_Tilling7656_g83150 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7664_g83150 = ( 1.0 / Second_UVs_Tilling7656_g83150 );
				float2 lerpResult7660_g83150 = lerp( Second_UVs_Tilling7656_g83150 , Second_UVs_Scale7664_g83150 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7657_g83150 = (_SecondUVs).zw;
				float2 vertexToFrag11_g83215 = ( ( ( temp_output_30_0_g83216 + temp_output_29_0_g83216 + temp_output_31_0_g83216 ) * lerpResult7660_g83150 ) + Second_UVs_Offset7657_g83150 );
				o.ase_texcoord4.xy = vertexToFrag11_g83215;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord6.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord7.xyz = ase_worldBitangent;
				o.ase_texcoord8.xyz = ase_worldPos;
				float vertexToFrag11_g83454 = saturate( ( ( Global_VertexOffset7549_g83150 + Terrain_Blend_Offset8086_g83150 ) - (WorldPosition_Shifted7477_g83150).y ) );
				o.ase_texcoord4.z = vertexToFrag11_g83454;
				o.ase_texcoord9.xyz = vertexToFrag3890_g83150;
				o.ase_texcoord10.xyz = vertexToFrag4224_g83150;
				half Global_Noise_A4860_g83150 = break638_g83195.a;
				half Tint_Highlight_Value3231_g83150 = ( Global_Noise_A4860_g83150 * Global_Wind_Power2223_g83150 * Motion_FadeOut4005_g83150 * Mesh_Height1524_g83150 );
				float vertexToFrag11_g83258 = Tint_Highlight_Value3231_g83150;
				o.ase_texcoord4.w = vertexToFrag11_g83258;
				
				o.ase_texcoord3 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;
				o.ase_texcoord9.w = 0;
				o.ase_texcoord10.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g83150;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = staticSwitch7896_g83150;
				v.tangent = v.tangent;

				#ifdef EDITOR_VISUALIZATION
					o.vizUV = 0;
					o.lightCoord = 0;
					if (unity_VisualizationMode == EDITORVIZ_TEXTURE)
						o.vizUV = UnityMetaVizUV(unity_EditorViz_UVIndex, v.texcoord.xy, v.texcoord1.xy, v.texcoord2.xy, unity_EditorViz_Texture_ST);
					else if (unity_VisualizationMode == EDITORVIZ_SHOWLIGHTMASK)
					{
						o.vizUV = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
						o.lightCoord = mul(unity_EditorViz_WorldToLight, mul(unity_ObjectToWorld, float4(v.vertex.xyz, 1)));
					}
				#endif

				o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN 
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				half2 Main_UVs15_g83150 = ( ( IN.ase_texcoord3.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g83150 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g83150 );
				float3 lerpResult6223_g83150 = lerp( float3( 1,1,1 ) , (tex2DNode29_g83150).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g83150 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g83150 );
				half Main_Mask57_g83150 = tex2DNode35_g83150.b;
				float clampResult17_g83236 = clamp( Main_Mask57_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83237 = _MainMaskMinValue;
				float temp_output_10_0_g83237 = ( _MainMaskMaxValue - temp_output_7_0_g83237 );
				half Main_Mask_Remap5765_g83150 = saturate( ( ( clampResult17_g83236 - temp_output_7_0_g83237 ) / ( temp_output_10_0_g83237 + 0.0001 ) ) );
				float lerpResult8007_g83150 = lerp( 1.0 , Main_Mask_Remap5765_g83150 , _MainColorMode);
				float4 lerpResult7986_g83150 = lerp( _MainColorTwo , _MainColor , lerpResult8007_g83150);
				half3 Main_Color_RGB7994_g83150 = (lerpResult7986_g83150).rgb;
				half3 Main_Albedo99_g83150 = ( lerpResult6223_g83150 * Main_Color_RGB7994_g83150 );
				float2 vertexToFrag11_g83215 = IN.ase_texcoord4.xy;
				half2 Second_UVs17_g83150 = vertexToFrag11_g83215;
				float4 tex2DNode89_g83150 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g83150 );
				float3 lerpResult6225_g83150 = lerp( float3( 1,1,1 ) , (tex2DNode89_g83150).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g83150 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g83150 );
				half Second_Mask81_g83150 = tex2DNode33_g83150.b;
				float clampResult17_g83239 = clamp( Second_Mask81_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83240 = _SecondMaskMinValue;
				float temp_output_10_0_g83240 = ( _SecondMaskMaxValue - temp_output_7_0_g83240 );
				half Second_Mask_Remap6130_g83150 = saturate( ( ( clampResult17_g83239 - temp_output_7_0_g83240 ) / ( temp_output_10_0_g83240 + 0.0001 ) ) );
				float lerpResult8008_g83150 = lerp( 1.0 , Second_Mask_Remap6130_g83150 , _SecondColorMode);
				float4 lerpResult7997_g83150 = lerp( _SecondColorTwo , _SecondColor , lerpResult8008_g83150);
				half3 Second_Color_RGB8005_g83150 = (lerpResult7997_g83150).rgb;
				half3 Second_Albedo153_g83150 = ( lerpResult6225_g83150 * Second_Color_RGB8005_g83150 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g83249 = 2.0;
				#else
				float staticSwitch1_g83249 = 4.594794;
				#endif
				float3 lerpResult4834_g83150 = lerp( ( Main_Albedo99_g83150 * Second_Albedo153_g83150 * staticSwitch1_g83249 ) , Second_Albedo153_g83150 , _DetailBlendMode);
				float lerpResult6885_g83150 = lerp( Main_Mask57_g83150 , Second_Mask81_g83150 , _DetailMaskMode);
				float clampResult17_g83255 = clamp( lerpResult6885_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83254 = _DetailMaskMinValue;
				float temp_output_10_0_g83254 = ( _DetailMaskMaxValue - temp_output_7_0_g83254 );
				half Detail_Mask_Texture6794_g83150 = saturate( ( ( clampResult17_g83255 - temp_output_7_0_g83254 ) / ( temp_output_10_0_g83254 + 0.0001 ) ) );
				half Mesh_DetailMask90_g83150 = IN.ase_color.b;
				half4 Normal_Packed45_g83235 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g83150 );
				float2 appendResult58_g83235 = (float2(( (Normal_Packed45_g83235).x * (Normal_Packed45_g83235).w ) , (Normal_Packed45_g83235).y));
				half2 Normal_Default50_g83235 = appendResult58_g83235;
				half2 Normal_ASTC41_g83235 = (Normal_Packed45_g83235).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83235 = Normal_ASTC41_g83235;
				#else
				float2 staticSwitch38_g83235 = Normal_Default50_g83235;
				#endif
				half2 Normal_NO_DTX544_g83235 = (Normal_Packed45_g83235).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83235 = Normal_NO_DTX544_g83235;
				#else
				float2 staticSwitch37_g83235 = staticSwitch38_g83235;
				#endif
				float2 temp_output_6555_0_g83150 = ( (staticSwitch37_g83235*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g83150 = (float3(temp_output_6555_0_g83150 , 1.0));
				float3 ase_worldTangent = IN.ase_texcoord5.xyz;
				float3 ase_worldNormal = IN.ase_texcoord6.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal7389_g83150 = appendResult7388_g83150;
				float3 worldNormal7389_g83150 = float3(dot(tanToWorld0,tanNormal7389_g83150), dot(tanToWorld1,tanNormal7389_g83150), dot(tanToWorld2,tanNormal7389_g83150));
				half3 Main_NormalWS7390_g83150 = worldNormal7389_g83150;
				float lerpResult6884_g83150 = lerp( Mesh_DetailMask90_g83150 , ((Main_NormalWS7390_g83150).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g83253 = clamp( lerpResult6884_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83252 = _DetailMeshMinValue;
				float temp_output_10_0_g83252 = ( _DetailMeshMaxValue - temp_output_7_0_g83252 );
				half Detail_Mask_Surface1540_g83150 = saturate( ( ( clampResult17_g83253 - temp_output_7_0_g83252 ) / ( temp_output_10_0_g83252 + 0.0001 ) ) );
				float clampResult17_g83256 = clamp( ( Detail_Mask_Texture6794_g83150 * Detail_Mask_Surface1540_g83150 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g83257 = _DetailBlendMinValue;
				float temp_output_10_0_g83257 = ( _DetailBlendMaxValue - temp_output_7_0_g83257 );
				half Detail_Mask147_g83150 = ( saturate( ( ( clampResult17_g83256 - temp_output_7_0_g83257 ) / ( temp_output_10_0_g83257 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g83150 = lerp( Main_Albedo99_g83150 , lerpResult4834_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g83150 = lerpResult235_g83150;
				#else
				float3 staticSwitch255_g83150 = Main_Albedo99_g83150;
				#endif
				half3 Blend_Albedo_Detail265_g83150 = staticSwitch255_g83150;
				half Mesh_Height1524_g83150 = IN.ase_color.a;
				float temp_output_7_0_g83260 = _GradientMinValue;
				float temp_output_10_0_g83260 = ( _GradientMaxValue - temp_output_7_0_g83260 );
				half Tint_Gradient_Value2784_g83150 = saturate( ( ( Mesh_Height1524_g83150 - temp_output_7_0_g83260 ) / ( temp_output_10_0_g83260 + 0.0001 ) ) );
				float3 lerpResult2779_g83150 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g83150);
				float lerpResult6617_g83150 = lerp( Main_Mask_Remap5765_g83150 , Second_Mask_Remap6130_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g83150 = lerpResult6617_g83150;
				#else
				float staticSwitch6623_g83150 = Main_Mask_Remap5765_g83150;
				#endif
				half Blend_MaskRemap_Detail6621_g83150 = staticSwitch6623_g83150;
				half Tint_Gradient_Mask6207_g83150 = Blend_MaskRemap_Detail6621_g83150;
				float3 lerpResult6208_g83150 = lerp( float3( 1,1,1 ) , lerpResult2779_g83150 , Tint_Gradient_Mask6207_g83150);
				half3 Tint_Gradient_Color5769_g83150 = lerpResult6208_g83150;
				half3 Tint_Noise_Color5770_g83150 = float3(1,1,1);
				half3 Tint_User_Color7335_g83150 = float3(1,1,1);
				float Mesh_Occlusion318_g83150 = IN.ase_color.g;
				float clampResult17_g83259 = clamp( Mesh_Occlusion318_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83261 = _VertexOcclusionMinValue;
				float temp_output_10_0_g83261 = ( _VertexOcclusionMaxValue - temp_output_7_0_g83261 );
				half Occlusion_Mask6432_g83150 = saturate( ( ( clampResult17_g83259 - temp_output_7_0_g83261 ) / ( temp_output_10_0_g83261 + 0.0001 ) ) );
				float3 lerpResult2945_g83150 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g83150);
				half3 Occlusion_Color648_g83150 = lerpResult2945_g83150;
				half3 Matcap_Color7428_g83150 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g83150 = ( ( Blend_Albedo_Detail265_g83150 * Tint_Gradient_Color5769_g83150 * Tint_Noise_Color5770_g83150 * Tint_User_Color7335_g83150 * Occlusion_Color648_g83150 ) + Matcap_Color7428_g83150 );
				float localHeightBasedBlending7362_g83651 = ( 0.0 );
				float3 ase_worldPos = IN.ase_texcoord8.xyz;
				float4 appendResult9125_g83651 = (float4(_TerrainPosition.x , _TerrainPosition.z , _TerrainSize.x , _TerrainSize.z));
				float4 temp_output_35_0_g83748 = appendResult9125_g83651;
				float2 InputScale48_g83748 = (temp_output_35_0_g83748).zw;
				half2 FinalScale53_g83748 = ( 1.0 / InputScale48_g83748 );
				float2 InputPosition52_g83748 = (temp_output_35_0_g83748).xy;
				half2 FinalPosition58_g83748 = -( FinalScale53_g83748 * InputPosition52_g83748 );
				float2 Terrain_Control_UV7873_g83651 = ( ( (ase_worldPos).xz * FinalScale53_g83748 ) + FinalPosition58_g83748 );
				half4 Terrain_Control_047365_g83651 = SAMPLE_TEXTURE2D( _ControlTex1, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_047362_g83651 = Terrain_Control_047365_g83651;
				half4 Terrain_Control_087366_g83651 = SAMPLE_TEXTURE2D( _ControlTex2, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_087362_g83651 = Terrain_Control_087366_g83651;
				half4 Terrain_Control_127712_g83651 = SAMPLE_TEXTURE2D( _ControlTex3, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_127362_g83651 = Terrain_Control_127712_g83651;
				half4 Terrain_Control_167711_g83651 = SAMPLE_TEXTURE2D( _ControlTex4, sampler_Linear_Clamp_Aniso8, Terrain_Control_UV7873_g83651 );
				float4 control_167362_g83651 = Terrain_Control_167711_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83704) = _MaskTex1;
				SamplerState Sampler238_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_016785_g83651 = _Coords1;
				float4 temp_output_37_0_g83704 = Input_Coords_016785_g83651;
				half4 Coords238_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition238_g83704 = ase_worldPos;
				half4 localSamplePlanar2D238_g83704 = SamplePlanar2D( Texture238_g83704 , Sampler238_g83704 , Coords238_g83704 , WorldPosition238_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83704) = _MaskTex1;
				SamplerState Sampler246_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition246_g83704 = ase_worldPos;
				half3 WorldNormal246_g83704 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83704 = SamplePlanar3D( Texture246_g83704 , Sampler246_g83704 , Coords246_g83704 , WorldPosition246_g83704 , WorldNormal246_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83704) = _MaskTex1;
				SamplerState Sampler234_g83704 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83704 = temp_output_37_0_g83704;
				float3 WorldPosition234_g83704 = ase_worldPos;
				float4 localSampleStochastic2D234_g83704 = SampleStochastic2D( Texture234_g83704 , Sampler234_g83704 , Coords234_g83704 , WorldPosition234_g83704 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83704) = _MaskTex1;
				SamplerState Sampler263_g83704 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83704 = temp_output_37_0_g83704;
				half3 WorldPosition263_g83704 = ase_worldPos;
				half3 WorldNormal263_g83704 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83704 = SampleStochastic3D( Texture263_g83704 , Sampler263_g83704 , Coords263_g83704 , WorldPosition263_g83704 , WorldNormal263_g83704 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8639_g83651 = localSamplePlanar2D238_g83704;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8639_g83651 = localSamplePlanar3D246_g83704;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8639_g83651 = localSampleStochastic2D234_g83704;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8639_g83651 = localSampleStochastic3D263_g83704;
				#else
				float4 staticSwitch8639_g83651 = localSamplePlanar2D238_g83704;
				#endif
				float4 temp_output_7_0_g83653 = _MaskMin1;
				float4 temp_output_10_0_g83653 = ( _MaskMax1 - temp_output_7_0_g83653 );
				float4 temp_output_6970_0_g83651 = saturate( ( ( staticSwitch8639_g83651 - temp_output_7_0_g83653 ) / ( temp_output_10_0_g83653 + 0.0001 ) ) );
				half4 Masks_015_g83661 = temp_output_6970_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83705) = _MaskTex2;
				SamplerState Sampler238_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_026787_g83651 = _Coords2;
				float4 temp_output_37_0_g83705 = Input_Coords_026787_g83651;
				half4 Coords238_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition238_g83705 = ase_worldPos;
				half4 localSamplePlanar2D238_g83705 = SamplePlanar2D( Texture238_g83705 , Sampler238_g83705 , Coords238_g83705 , WorldPosition238_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83705) = _MaskTex2;
				SamplerState Sampler246_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition246_g83705 = ase_worldPos;
				half3 WorldNormal246_g83705 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83705 = SamplePlanar3D( Texture246_g83705 , Sampler246_g83705 , Coords246_g83705 , WorldPosition246_g83705 , WorldNormal246_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83705) = _MaskTex2;
				SamplerState Sampler234_g83705 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83705 = temp_output_37_0_g83705;
				float3 WorldPosition234_g83705 = ase_worldPos;
				float4 localSampleStochastic2D234_g83705 = SampleStochastic2D( Texture234_g83705 , Sampler234_g83705 , Coords234_g83705 , WorldPosition234_g83705 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83705) = _MaskTex2;
				SamplerState Sampler263_g83705 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83705 = temp_output_37_0_g83705;
				half3 WorldPosition263_g83705 = ase_worldPos;
				half3 WorldNormal263_g83705 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83705 = SampleStochastic3D( Texture263_g83705 , Sampler263_g83705 , Coords263_g83705 , WorldPosition263_g83705 , WorldNormal263_g83705 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8640_g83651 = localSamplePlanar2D238_g83705;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8640_g83651 = localSamplePlanar3D246_g83705;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8640_g83651 = localSampleStochastic2D234_g83705;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8640_g83651 = localSampleStochastic3D263_g83705;
				#else
				float4 staticSwitch8640_g83651 = localSamplePlanar2D238_g83705;
				#endif
				float4 temp_output_7_0_g83655 = _MaskMin2;
				float4 temp_output_10_0_g83655 = ( _MaskMax2 - temp_output_7_0_g83655 );
				float4 temp_output_6977_0_g83651 = saturate( ( ( staticSwitch8640_g83651 - temp_output_7_0_g83655 ) / ( temp_output_10_0_g83655 + 0.0001 ) ) );
				half4 Masks_0210_g83661 = temp_output_6977_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83706) = _MaskTex3;
				SamplerState Sampler238_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_036789_g83651 = _Coords3;
				float4 temp_output_37_0_g83706 = Input_Coords_036789_g83651;
				half4 Coords238_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition238_g83706 = ase_worldPos;
				half4 localSamplePlanar2D238_g83706 = SamplePlanar2D( Texture238_g83706 , Sampler238_g83706 , Coords238_g83706 , WorldPosition238_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83706) = _MaskTex3;
				SamplerState Sampler246_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition246_g83706 = ase_worldPos;
				half3 WorldNormal246_g83706 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83706 = SamplePlanar3D( Texture246_g83706 , Sampler246_g83706 , Coords246_g83706 , WorldPosition246_g83706 , WorldNormal246_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83706) = _MaskTex3;
				SamplerState Sampler234_g83706 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83706 = temp_output_37_0_g83706;
				float3 WorldPosition234_g83706 = ase_worldPos;
				float4 localSampleStochastic2D234_g83706 = SampleStochastic2D( Texture234_g83706 , Sampler234_g83706 , Coords234_g83706 , WorldPosition234_g83706 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83706) = _MaskTex3;
				SamplerState Sampler263_g83706 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83706 = temp_output_37_0_g83706;
				half3 WorldPosition263_g83706 = ase_worldPos;
				half3 WorldNormal263_g83706 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83706 = SampleStochastic3D( Texture263_g83706 , Sampler263_g83706 , Coords263_g83706 , WorldPosition263_g83706 , WorldNormal263_g83706 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8641_g83651 = localSamplePlanar2D238_g83706;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8641_g83651 = localSamplePlanar3D246_g83706;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8641_g83651 = localSampleStochastic2D234_g83706;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8641_g83651 = localSampleStochastic3D263_g83706;
				#else
				float4 staticSwitch8641_g83651 = localSamplePlanar2D238_g83706;
				#endif
				float4 temp_output_7_0_g83656 = _MaskMin3;
				float4 temp_output_10_0_g83656 = ( _MaskMax3 - temp_output_7_0_g83656 );
				float4 temp_output_6978_0_g83651 = saturate( ( ( staticSwitch8641_g83651 - temp_output_7_0_g83656 ) / ( temp_output_10_0_g83656 + 0.0001 ) ) );
				half4 Masks_0312_g83661 = temp_output_6978_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83707) = _MaskTex4;
				SamplerState Sampler238_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_046791_g83651 = _Coords4;
				float4 temp_output_37_0_g83707 = Input_Coords_046791_g83651;
				half4 Coords238_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition238_g83707 = ase_worldPos;
				half4 localSamplePlanar2D238_g83707 = SamplePlanar2D( Texture238_g83707 , Sampler238_g83707 , Coords238_g83707 , WorldPosition238_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83707) = _MaskTex4;
				SamplerState Sampler246_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition246_g83707 = ase_worldPos;
				half3 WorldNormal246_g83707 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83707 = SamplePlanar3D( Texture246_g83707 , Sampler246_g83707 , Coords246_g83707 , WorldPosition246_g83707 , WorldNormal246_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83707) = _MaskTex4;
				SamplerState Sampler234_g83707 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83707 = temp_output_37_0_g83707;
				float3 WorldPosition234_g83707 = ase_worldPos;
				float4 localSampleStochastic2D234_g83707 = SampleStochastic2D( Texture234_g83707 , Sampler234_g83707 , Coords234_g83707 , WorldPosition234_g83707 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83707) = _MaskTex4;
				SamplerState Sampler263_g83707 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83707 = temp_output_37_0_g83707;
				half3 WorldPosition263_g83707 = ase_worldPos;
				half3 WorldNormal263_g83707 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83707 = SampleStochastic3D( Texture263_g83707 , Sampler263_g83707 , Coords263_g83707 , WorldPosition263_g83707 , WorldNormal263_g83707 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8642_g83651 = localSamplePlanar2D238_g83707;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8642_g83651 = localSamplePlanar3D246_g83707;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8642_g83651 = localSampleStochastic2D234_g83707;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8642_g83651 = localSampleStochastic3D263_g83707;
				#else
				float4 staticSwitch8642_g83651 = localSamplePlanar2D238_g83707;
				#endif
				float4 temp_output_7_0_g83657 = _MaskMin4;
				float4 temp_output_10_0_g83657 = ( _MaskMax4 - temp_output_7_0_g83657 );
				float4 temp_output_6983_0_g83651 = saturate( ( ( staticSwitch8642_g83651 - temp_output_7_0_g83657 ) / ( temp_output_10_0_g83657 + 0.0001 ) ) );
				half4 Masks_0414_g83661 = temp_output_6983_0_g83651;
				float4 appendResult29_g83661 = (float4((Masks_015_g83661).z , (Masks_0210_g83661).z , (Masks_0312_g83661).z , (Masks_0414_g83661).z));
				half4 Control31_g83661 = Terrain_Control_047365_g83651;
				half4 Terrain_Height_047210_g83651 = ( appendResult29_g83661 * Control31_g83661 );
				float4 heights_047362_g83651 = Terrain_Height_047210_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83716) = _MaskTex5;
				SamplerState Sampler238_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_058750_g83651 = _Coords5;
				float4 temp_output_37_0_g83716 = Input_Coords_058750_g83651;
				half4 Coords238_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition238_g83716 = ase_worldPos;
				half4 localSamplePlanar2D238_g83716 = SamplePlanar2D( Texture238_g83716 , Sampler238_g83716 , Coords238_g83716 , WorldPosition238_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83716) = _MaskTex5;
				SamplerState Sampler246_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition246_g83716 = ase_worldPos;
				half3 WorldNormal246_g83716 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83716 = SamplePlanar3D( Texture246_g83716 , Sampler246_g83716 , Coords246_g83716 , WorldPosition246_g83716 , WorldNormal246_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83716) = _MaskTex5;
				SamplerState Sampler234_g83716 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83716 = temp_output_37_0_g83716;
				float3 WorldPosition234_g83716 = ase_worldPos;
				float4 localSampleStochastic2D234_g83716 = SampleStochastic2D( Texture234_g83716 , Sampler234_g83716 , Coords234_g83716 , WorldPosition234_g83716 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83716) = _MaskTex5;
				SamplerState Sampler263_g83716 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83716 = temp_output_37_0_g83716;
				half3 WorldPosition263_g83716 = ase_worldPos;
				half3 WorldNormal263_g83716 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83716 = SampleStochastic3D( Texture263_g83716 , Sampler263_g83716 , Coords263_g83716 , WorldPosition263_g83716 , WorldNormal263_g83716 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8710_g83651 = localSamplePlanar2D238_g83716;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8710_g83651 = localSamplePlanar3D246_g83716;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8710_g83651 = localSampleStochastic2D234_g83716;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8710_g83651 = localSampleStochastic3D263_g83716;
				#else
				float4 staticSwitch8710_g83651 = localSamplePlanar2D238_g83716;
				#endif
				float4 temp_output_7_0_g83669 = _MaskMin5;
				float4 temp_output_10_0_g83669 = ( _MaskMax5 - temp_output_7_0_g83669 );
				float4 temp_output_8714_0_g83651 = saturate( ( ( staticSwitch8710_g83651 - temp_output_7_0_g83669 ) / ( temp_output_10_0_g83669 + 0.0001 ) ) );
				half4 Masks_015_g83670 = temp_output_8714_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83717) = _MaskTex6;
				SamplerState Sampler238_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_068751_g83651 = _Coords6;
				float4 temp_output_37_0_g83717 = Input_Coords_068751_g83651;
				half4 Coords238_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition238_g83717 = ase_worldPos;
				half4 localSamplePlanar2D238_g83717 = SamplePlanar2D( Texture238_g83717 , Sampler238_g83717 , Coords238_g83717 , WorldPosition238_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83717) = _MaskTex6;
				SamplerState Sampler246_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition246_g83717 = ase_worldPos;
				half3 WorldNormal246_g83717 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83717 = SamplePlanar3D( Texture246_g83717 , Sampler246_g83717 , Coords246_g83717 , WorldPosition246_g83717 , WorldNormal246_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83717) = _MaskTex6;
				SamplerState Sampler234_g83717 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83717 = temp_output_37_0_g83717;
				float3 WorldPosition234_g83717 = ase_worldPos;
				float4 localSampleStochastic2D234_g83717 = SampleStochastic2D( Texture234_g83717 , Sampler234_g83717 , Coords234_g83717 , WorldPosition234_g83717 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83717) = _MaskTex6;
				SamplerState Sampler263_g83717 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83717 = temp_output_37_0_g83717;
				half3 WorldPosition263_g83717 = ase_worldPos;
				half3 WorldNormal263_g83717 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83717 = SampleStochastic3D( Texture263_g83717 , Sampler263_g83717 , Coords263_g83717 , WorldPosition263_g83717 , WorldNormal263_g83717 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8711_g83651 = localSamplePlanar2D238_g83717;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8711_g83651 = localSamplePlanar3D246_g83717;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8711_g83651 = localSampleStochastic2D234_g83717;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8711_g83651 = localSampleStochastic3D263_g83717;
				#else
				float4 staticSwitch8711_g83651 = localSamplePlanar2D238_g83717;
				#endif
				float4 temp_output_7_0_g83672 = _MaskMin6;
				float4 temp_output_10_0_g83672 = ( _MaskMax6 - temp_output_7_0_g83672 );
				float4 temp_output_8721_0_g83651 = saturate( ( ( staticSwitch8711_g83651 - temp_output_7_0_g83672 ) / ( temp_output_10_0_g83672 + 0.0001 ) ) );
				half4 Masks_0210_g83670 = temp_output_8721_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83718) = _MaskTex7;
				SamplerState Sampler238_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_078752_g83651 = _Coords7;
				float4 temp_output_37_0_g83718 = Input_Coords_078752_g83651;
				half4 Coords238_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition238_g83718 = ase_worldPos;
				half4 localSamplePlanar2D238_g83718 = SamplePlanar2D( Texture238_g83718 , Sampler238_g83718 , Coords238_g83718 , WorldPosition238_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83718) = _MaskTex7;
				SamplerState Sampler246_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition246_g83718 = ase_worldPos;
				half3 WorldNormal246_g83718 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83718 = SamplePlanar3D( Texture246_g83718 , Sampler246_g83718 , Coords246_g83718 , WorldPosition246_g83718 , WorldNormal246_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83718) = _MaskTex7;
				SamplerState Sampler234_g83718 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83718 = temp_output_37_0_g83718;
				float3 WorldPosition234_g83718 = ase_worldPos;
				float4 localSampleStochastic2D234_g83718 = SampleStochastic2D( Texture234_g83718 , Sampler234_g83718 , Coords234_g83718 , WorldPosition234_g83718 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83718) = _MaskTex7;
				SamplerState Sampler263_g83718 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83718 = temp_output_37_0_g83718;
				half3 WorldPosition263_g83718 = ase_worldPos;
				half3 WorldNormal263_g83718 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83718 = SampleStochastic3D( Texture263_g83718 , Sampler263_g83718 , Coords263_g83718 , WorldPosition263_g83718 , WorldNormal263_g83718 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8712_g83651 = localSamplePlanar2D238_g83718;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8712_g83651 = localSamplePlanar3D246_g83718;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8712_g83651 = localSampleStochastic2D234_g83718;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8712_g83651 = localSampleStochastic3D263_g83718;
				#else
				float4 staticSwitch8712_g83651 = localSamplePlanar2D238_g83718;
				#endif
				float4 temp_output_7_0_g83673 = _MaskMin7;
				float4 temp_output_10_0_g83673 = ( _MaskMax7 - temp_output_7_0_g83673 );
				float4 temp_output_8724_0_g83651 = saturate( ( ( staticSwitch8712_g83651 - temp_output_7_0_g83673 ) / ( temp_output_10_0_g83673 + 0.0001 ) ) );
				half4 Masks_0312_g83670 = temp_output_8724_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83719) = _MaskTex8;
				SamplerState Sampler238_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_088749_g83651 = _Coords8;
				float4 temp_output_37_0_g83719 = Input_Coords_088749_g83651;
				half4 Coords238_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition238_g83719 = ase_worldPos;
				half4 localSamplePlanar2D238_g83719 = SamplePlanar2D( Texture238_g83719 , Sampler238_g83719 , Coords238_g83719 , WorldPosition238_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83719) = _MaskTex8;
				SamplerState Sampler246_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition246_g83719 = ase_worldPos;
				half3 WorldNormal246_g83719 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83719 = SamplePlanar3D( Texture246_g83719 , Sampler246_g83719 , Coords246_g83719 , WorldPosition246_g83719 , WorldNormal246_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83719) = _MaskTex8;
				SamplerState Sampler234_g83719 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83719 = temp_output_37_0_g83719;
				float3 WorldPosition234_g83719 = ase_worldPos;
				float4 localSampleStochastic2D234_g83719 = SampleStochastic2D( Texture234_g83719 , Sampler234_g83719 , Coords234_g83719 , WorldPosition234_g83719 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83719) = _MaskTex8;
				SamplerState Sampler263_g83719 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83719 = temp_output_37_0_g83719;
				half3 WorldPosition263_g83719 = ase_worldPos;
				half3 WorldNormal263_g83719 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83719 = SampleStochastic3D( Texture263_g83719 , Sampler263_g83719 , Coords263_g83719 , WorldPosition263_g83719 , WorldNormal263_g83719 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8713_g83651 = localSamplePlanar2D238_g83719;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8713_g83651 = localSamplePlanar3D246_g83719;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8713_g83651 = localSampleStochastic2D234_g83719;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8713_g83651 = localSampleStochastic3D263_g83719;
				#else
				float4 staticSwitch8713_g83651 = localSamplePlanar2D238_g83719;
				#endif
				float4 temp_output_7_0_g83674 = _MaskMin8;
				float4 temp_output_10_0_g83674 = ( _MaskMax8 - temp_output_7_0_g83674 );
				float4 temp_output_8727_0_g83651 = saturate( ( ( staticSwitch8713_g83651 - temp_output_7_0_g83674 ) / ( temp_output_10_0_g83674 + 0.0001 ) ) );
				half4 Masks_0414_g83670 = temp_output_8727_0_g83651;
				float4 appendResult29_g83670 = (float4((Masks_015_g83670).z , (Masks_0210_g83670).z , (Masks_0312_g83670).z , (Masks_0414_g83670).z));
				half4 Control31_g83670 = Terrain_Control_087366_g83651;
				half4 Terrain_Height_088731_g83651 = ( appendResult29_g83670 * Control31_g83670 );
				float4 heights_087362_g83651 = Terrain_Height_088731_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83728) = _MaskTex9;
				SamplerState Sampler238_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_098833_g83651 = _Coords9;
				float4 temp_output_37_0_g83728 = Input_Coords_098833_g83651;
				half4 Coords238_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition238_g83728 = ase_worldPos;
				half4 localSamplePlanar2D238_g83728 = SamplePlanar2D( Texture238_g83728 , Sampler238_g83728 , Coords238_g83728 , WorldPosition238_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83728) = _MaskTex9;
				SamplerState Sampler246_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition246_g83728 = ase_worldPos;
				half3 WorldNormal246_g83728 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83728 = SamplePlanar3D( Texture246_g83728 , Sampler246_g83728 , Coords246_g83728 , WorldPosition246_g83728 , WorldNormal246_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83728) = _MaskTex9;
				SamplerState Sampler234_g83728 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83728 = temp_output_37_0_g83728;
				float3 WorldPosition234_g83728 = ase_worldPos;
				float4 localSampleStochastic2D234_g83728 = SampleStochastic2D( Texture234_g83728 , Sampler234_g83728 , Coords234_g83728 , WorldPosition234_g83728 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83728) = _MaskTex9;
				SamplerState Sampler263_g83728 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83728 = temp_output_37_0_g83728;
				half3 WorldPosition263_g83728 = ase_worldPos;
				half3 WorldNormal263_g83728 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83728 = SampleStochastic3D( Texture263_g83728 , Sampler263_g83728 , Coords263_g83728 , WorldPosition263_g83728 , WorldNormal263_g83728 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8878_g83651 = localSamplePlanar2D238_g83728;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8878_g83651 = localSamplePlanar3D246_g83728;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8878_g83651 = localSampleStochastic2D234_g83728;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8878_g83651 = localSampleStochastic3D263_g83728;
				#else
				float4 staticSwitch8878_g83651 = localSamplePlanar2D238_g83728;
				#endif
				float4 temp_output_7_0_g83679 = _MaskMin9;
				float4 temp_output_10_0_g83679 = ( _MaskMax9 - temp_output_7_0_g83679 );
				float4 temp_output_8815_0_g83651 = saturate( ( ( staticSwitch8878_g83651 - temp_output_7_0_g83679 ) / ( temp_output_10_0_g83679 + 0.0001 ) ) );
				half4 Masks_015_g83680 = temp_output_8815_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83729) = _MaskTex10;
				SamplerState Sampler238_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_108834_g83651 = _Coords10;
				float4 temp_output_37_0_g83729 = Input_Coords_108834_g83651;
				half4 Coords238_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition238_g83729 = ase_worldPos;
				half4 localSamplePlanar2D238_g83729 = SamplePlanar2D( Texture238_g83729 , Sampler238_g83729 , Coords238_g83729 , WorldPosition238_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83729) = _MaskTex10;
				SamplerState Sampler246_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition246_g83729 = ase_worldPos;
				half3 WorldNormal246_g83729 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83729 = SamplePlanar3D( Texture246_g83729 , Sampler246_g83729 , Coords246_g83729 , WorldPosition246_g83729 , WorldNormal246_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83729) = _MaskTex10;
				SamplerState Sampler234_g83729 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83729 = temp_output_37_0_g83729;
				float3 WorldPosition234_g83729 = ase_worldPos;
				float4 localSampleStochastic2D234_g83729 = SampleStochastic2D( Texture234_g83729 , Sampler234_g83729 , Coords234_g83729 , WorldPosition234_g83729 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83729) = _MaskTex10;
				SamplerState Sampler263_g83729 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83729 = temp_output_37_0_g83729;
				half3 WorldPosition263_g83729 = ase_worldPos;
				half3 WorldNormal263_g83729 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83729 = SampleStochastic3D( Texture263_g83729 , Sampler263_g83729 , Coords263_g83729 , WorldPosition263_g83729 , WorldNormal263_g83729 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8860_g83651 = localSamplePlanar2D238_g83729;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8860_g83651 = localSamplePlanar3D246_g83729;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8860_g83651 = localSampleStochastic2D234_g83729;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8860_g83651 = localSampleStochastic3D263_g83729;
				#else
				float4 staticSwitch8860_g83651 = localSamplePlanar2D238_g83729;
				#endif
				float4 temp_output_7_0_g83682 = _MaskMin10;
				float4 temp_output_10_0_g83682 = ( _MaskMax10 - temp_output_7_0_g83682 );
				float4 temp_output_8818_0_g83651 = saturate( ( ( staticSwitch8860_g83651 - temp_output_7_0_g83682 ) / ( temp_output_10_0_g83682 + 0.0001 ) ) );
				half4 Masks_0210_g83680 = temp_output_8818_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83730) = _MaskTex11;
				SamplerState Sampler238_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_118835_g83651 = _Coords11;
				float4 temp_output_37_0_g83730 = Input_Coords_118835_g83651;
				half4 Coords238_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition238_g83730 = ase_worldPos;
				half4 localSamplePlanar2D238_g83730 = SamplePlanar2D( Texture238_g83730 , Sampler238_g83730 , Coords238_g83730 , WorldPosition238_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83730) = _MaskTex11;
				SamplerState Sampler246_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition246_g83730 = ase_worldPos;
				half3 WorldNormal246_g83730 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83730 = SamplePlanar3D( Texture246_g83730 , Sampler246_g83730 , Coords246_g83730 , WorldPosition246_g83730 , WorldNormal246_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83730) = _MaskTex11;
				SamplerState Sampler234_g83730 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83730 = temp_output_37_0_g83730;
				float3 WorldPosition234_g83730 = ase_worldPos;
				float4 localSampleStochastic2D234_g83730 = SampleStochastic2D( Texture234_g83730 , Sampler234_g83730 , Coords234_g83730 , WorldPosition234_g83730 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83730) = _MaskTex11;
				SamplerState Sampler263_g83730 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83730 = temp_output_37_0_g83730;
				half3 WorldPosition263_g83730 = ase_worldPos;
				half3 WorldNormal263_g83730 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83730 = SampleStochastic3D( Texture263_g83730 , Sampler263_g83730 , Coords263_g83730 , WorldPosition263_g83730 , WorldNormal263_g83730 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8861_g83651 = localSamplePlanar2D238_g83730;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8861_g83651 = localSamplePlanar3D246_g83730;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8861_g83651 = localSampleStochastic2D234_g83730;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8861_g83651 = localSampleStochastic3D263_g83730;
				#else
				float4 staticSwitch8861_g83651 = localSamplePlanar2D238_g83730;
				#endif
				float4 temp_output_7_0_g83683 = _MaskMin11;
				float4 temp_output_10_0_g83683 = ( _MaskMax11 - temp_output_7_0_g83683 );
				float4 temp_output_8819_0_g83651 = saturate( ( ( staticSwitch8861_g83651 - temp_output_7_0_g83683 ) / ( temp_output_10_0_g83683 + 0.0001 ) ) );
				half4 Masks_0312_g83680 = temp_output_8819_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83731) = _MaskTex12;
				SamplerState Sampler238_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_128836_g83651 = _Coords12;
				float4 temp_output_37_0_g83731 = Input_Coords_128836_g83651;
				half4 Coords238_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition238_g83731 = ase_worldPos;
				half4 localSamplePlanar2D238_g83731 = SamplePlanar2D( Texture238_g83731 , Sampler238_g83731 , Coords238_g83731 , WorldPosition238_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83731) = _MaskTex12;
				SamplerState Sampler246_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition246_g83731 = ase_worldPos;
				half3 WorldNormal246_g83731 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83731 = SamplePlanar3D( Texture246_g83731 , Sampler246_g83731 , Coords246_g83731 , WorldPosition246_g83731 , WorldNormal246_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83731) = _MaskTex12;
				SamplerState Sampler234_g83731 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83731 = temp_output_37_0_g83731;
				float3 WorldPosition234_g83731 = ase_worldPos;
				float4 localSampleStochastic2D234_g83731 = SampleStochastic2D( Texture234_g83731 , Sampler234_g83731 , Coords234_g83731 , WorldPosition234_g83731 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83731) = _MaskTex12;
				SamplerState Sampler263_g83731 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83731 = temp_output_37_0_g83731;
				half3 WorldPosition263_g83731 = ase_worldPos;
				half3 WorldNormal263_g83731 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83731 = SampleStochastic3D( Texture263_g83731 , Sampler263_g83731 , Coords263_g83731 , WorldPosition263_g83731 , WorldNormal263_g83731 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8879_g83651 = localSamplePlanar2D238_g83731;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8879_g83651 = localSamplePlanar3D246_g83731;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8879_g83651 = localSampleStochastic2D234_g83731;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8879_g83651 = localSampleStochastic3D263_g83731;
				#else
				float4 staticSwitch8879_g83651 = localSamplePlanar2D238_g83731;
				#endif
				float4 temp_output_7_0_g83684 = _MaskMin12;
				float4 temp_output_10_0_g83684 = ( _MaskMax12 - temp_output_7_0_g83684 );
				float4 temp_output_8820_0_g83651 = saturate( ( ( staticSwitch8879_g83651 - temp_output_7_0_g83684 ) / ( temp_output_10_0_g83684 + 0.0001 ) ) );
				half4 Masks_0414_g83680 = temp_output_8820_0_g83651;
				float4 appendResult29_g83680 = (float4((Masks_015_g83680).z , (Masks_0210_g83680).z , (Masks_0312_g83680).z , (Masks_0414_g83680).z));
				half4 Control31_g83680 = Terrain_Control_127712_g83651;
				half4 Terrain_Height_128870_g83651 = ( appendResult29_g83680 * Control31_g83680 );
				float4 heights_127362_g83651 = Terrain_Height_128870_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83739) = _MaskTex13;
				SamplerState Sampler238_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_138960_g83651 = _Coords13;
				float4 temp_output_37_0_g83739 = Input_Coords_138960_g83651;
				half4 Coords238_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition238_g83739 = ase_worldPos;
				half4 localSamplePlanar2D238_g83739 = SamplePlanar2D( Texture238_g83739 , Sampler238_g83739 , Coords238_g83739 , WorldPosition238_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83739) = _MaskTex13;
				SamplerState Sampler246_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition246_g83739 = ase_worldPos;
				half3 WorldNormal246_g83739 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83739 = SamplePlanar3D( Texture246_g83739 , Sampler246_g83739 , Coords246_g83739 , WorldPosition246_g83739 , WorldNormal246_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83739) = _MaskTex13;
				SamplerState Sampler234_g83739 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83739 = temp_output_37_0_g83739;
				float3 WorldPosition234_g83739 = ase_worldPos;
				float4 localSampleStochastic2D234_g83739 = SampleStochastic2D( Texture234_g83739 , Sampler234_g83739 , Coords234_g83739 , WorldPosition234_g83739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83739) = _MaskTex13;
				SamplerState Sampler263_g83739 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83739 = temp_output_37_0_g83739;
				half3 WorldPosition263_g83739 = ase_worldPos;
				half3 WorldNormal263_g83739 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83739 = SampleStochastic3D( Texture263_g83739 , Sampler263_g83739 , Coords263_g83739 , WorldPosition263_g83739 , WorldNormal263_g83739 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch9000_g83651 = localSamplePlanar2D238_g83739;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch9000_g83651 = localSamplePlanar3D246_g83739;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch9000_g83651 = localSampleStochastic2D234_g83739;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch9000_g83651 = localSampleStochastic3D263_g83739;
				#else
				float4 staticSwitch9000_g83651 = localSamplePlanar2D238_g83739;
				#endif
				float4 temp_output_7_0_g83689 = _MaskMin13;
				float4 temp_output_10_0_g83689 = ( _MaskMax13 - temp_output_7_0_g83689 );
				float4 temp_output_8931_0_g83651 = saturate( ( ( staticSwitch9000_g83651 - temp_output_7_0_g83689 ) / ( temp_output_10_0_g83689 + 0.0001 ) ) );
				half4 Masks_015_g83690 = temp_output_8931_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83740) = _MaskTex14;
				SamplerState Sampler238_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_148961_g83651 = _Coords14;
				float4 temp_output_37_0_g83740 = Input_Coords_148961_g83651;
				half4 Coords238_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition238_g83740 = ase_worldPos;
				half4 localSamplePlanar2D238_g83740 = SamplePlanar2D( Texture238_g83740 , Sampler238_g83740 , Coords238_g83740 , WorldPosition238_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83740) = _MaskTex14;
				SamplerState Sampler246_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition246_g83740 = ase_worldPos;
				half3 WorldNormal246_g83740 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83740 = SamplePlanar3D( Texture246_g83740 , Sampler246_g83740 , Coords246_g83740 , WorldPosition246_g83740 , WorldNormal246_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83740) = _MaskTex14;
				SamplerState Sampler234_g83740 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83740 = temp_output_37_0_g83740;
				float3 WorldPosition234_g83740 = ase_worldPos;
				float4 localSampleStochastic2D234_g83740 = SampleStochastic2D( Texture234_g83740 , Sampler234_g83740 , Coords234_g83740 , WorldPosition234_g83740 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83740) = _MaskTex14;
				SamplerState Sampler263_g83740 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83740 = temp_output_37_0_g83740;
				half3 WorldPosition263_g83740 = ase_worldPos;
				half3 WorldNormal263_g83740 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83740 = SampleStochastic3D( Texture263_g83740 , Sampler263_g83740 , Coords263_g83740 , WorldPosition263_g83740 , WorldNormal263_g83740 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch9001_g83651 = localSamplePlanar2D238_g83740;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch9001_g83651 = localSamplePlanar3D246_g83740;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch9001_g83651 = localSampleStochastic2D234_g83740;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch9001_g83651 = localSampleStochastic3D263_g83740;
				#else
				float4 staticSwitch9001_g83651 = localSamplePlanar2D238_g83740;
				#endif
				float4 temp_output_7_0_g83692 = _MaskMin14;
				float4 temp_output_10_0_g83692 = ( _MaskMax14 - temp_output_7_0_g83692 );
				float4 temp_output_8934_0_g83651 = saturate( ( ( staticSwitch9001_g83651 - temp_output_7_0_g83692 ) / ( temp_output_10_0_g83692 + 0.0001 ) ) );
				half4 Masks_0210_g83690 = temp_output_8934_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83741) = _MaskTex15;
				SamplerState Sampler238_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_158962_g83651 = _Coords15;
				float4 temp_output_37_0_g83741 = Input_Coords_158962_g83651;
				half4 Coords238_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition238_g83741 = ase_worldPos;
				half4 localSamplePlanar2D238_g83741 = SamplePlanar2D( Texture238_g83741 , Sampler238_g83741 , Coords238_g83741 , WorldPosition238_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83741) = _MaskTex15;
				SamplerState Sampler246_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition246_g83741 = ase_worldPos;
				half3 WorldNormal246_g83741 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83741 = SamplePlanar3D( Texture246_g83741 , Sampler246_g83741 , Coords246_g83741 , WorldPosition246_g83741 , WorldNormal246_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83741) = _MaskTex15;
				SamplerState Sampler234_g83741 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83741 = temp_output_37_0_g83741;
				float3 WorldPosition234_g83741 = ase_worldPos;
				float4 localSampleStochastic2D234_g83741 = SampleStochastic2D( Texture234_g83741 , Sampler234_g83741 , Coords234_g83741 , WorldPosition234_g83741 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83741) = _MaskTex15;
				SamplerState Sampler263_g83741 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83741 = temp_output_37_0_g83741;
				half3 WorldPosition263_g83741 = ase_worldPos;
				half3 WorldNormal263_g83741 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83741 = SampleStochastic3D( Texture263_g83741 , Sampler263_g83741 , Coords263_g83741 , WorldPosition263_g83741 , WorldNormal263_g83741 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch9002_g83651 = localSamplePlanar2D238_g83741;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch9002_g83651 = localSamplePlanar3D246_g83741;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch9002_g83651 = localSampleStochastic2D234_g83741;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch9002_g83651 = localSampleStochastic3D263_g83741;
				#else
				float4 staticSwitch9002_g83651 = localSamplePlanar2D238_g83741;
				#endif
				float4 temp_output_7_0_g83693 = _MaskMin15;
				float4 temp_output_10_0_g83693 = ( _MaskMax15 - temp_output_7_0_g83693 );
				float4 temp_output_8935_0_g83651 = saturate( ( ( staticSwitch9002_g83651 - temp_output_7_0_g83693 ) / ( temp_output_10_0_g83693 + 0.0001 ) ) );
				half4 Masks_0312_g83690 = temp_output_8935_0_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83742) = _MaskTex16;
				SamplerState Sampler238_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Input_Coords_168959_g83651 = _Coords16;
				float4 temp_output_37_0_g83742 = Input_Coords_168959_g83651;
				half4 Coords238_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition238_g83742 = ase_worldPos;
				half4 localSamplePlanar2D238_g83742 = SamplePlanar2D( Texture238_g83742 , Sampler238_g83742 , Coords238_g83742 , WorldPosition238_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83742) = _MaskTex16;
				SamplerState Sampler246_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition246_g83742 = ase_worldPos;
				half3 WorldNormal246_g83742 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83742 = SamplePlanar3D( Texture246_g83742 , Sampler246_g83742 , Coords246_g83742 , WorldPosition246_g83742 , WorldNormal246_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83742) = _MaskTex16;
				SamplerState Sampler234_g83742 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83742 = temp_output_37_0_g83742;
				float3 WorldPosition234_g83742 = ase_worldPos;
				float4 localSampleStochastic2D234_g83742 = SampleStochastic2D( Texture234_g83742 , Sampler234_g83742 , Coords234_g83742 , WorldPosition234_g83742 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83742) = _MaskTex16;
				SamplerState Sampler263_g83742 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83742 = temp_output_37_0_g83742;
				half3 WorldPosition263_g83742 = ase_worldPos;
				half3 WorldNormal263_g83742 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83742 = SampleStochastic3D( Texture263_g83742 , Sampler263_g83742 , Coords263_g83742 , WorldPosition263_g83742 , WorldNormal263_g83742 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch9003_g83651 = localSamplePlanar2D238_g83742;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch9003_g83651 = localSamplePlanar3D246_g83742;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch9003_g83651 = localSampleStochastic2D234_g83742;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch9003_g83651 = localSampleStochastic3D263_g83742;
				#else
				float4 staticSwitch9003_g83651 = localSamplePlanar2D238_g83742;
				#endif
				float4 temp_output_7_0_g83694 = _MaskMin16;
				float4 temp_output_10_0_g83694 = ( _MaskMax16 - temp_output_7_0_g83694 );
				float4 temp_output_8936_0_g83651 = saturate( ( ( staticSwitch9003_g83651 - temp_output_7_0_g83694 ) / ( temp_output_10_0_g83694 + 0.0001 ) ) );
				half4 Masks_0414_g83690 = temp_output_8936_0_g83651;
				float4 appendResult29_g83690 = (float4((Masks_015_g83690).z , (Masks_0210_g83690).z , (Masks_0312_g83690).z , (Masks_0414_g83690).z));
				half4 Control31_g83690 = Terrain_Control_167711_g83651;
				half4 Terrain_Height_169015_g83651 = ( appendResult29_g83690 * Control31_g83690 );
				float4 heights_167362_g83651 = Terrain_Height_169015_g83651;
				float heightTransition7362_g83651 = ( 1.0 - _TerrainHeightBlendValue );
				float4 weights_047362_g83651 = float4( 0,0,0,0 );
				float4 weights_087362_g83651 = float4( 0,0,0,0 );
				float4 weights_127362_g83651 = float4( 0,0,0,0 );
				float4 weights_167362_g83651 = float4( 0,0,0,0 );
				{
				//Modified version of the HDRP terrain height based blending
				float maxHeight = 0;
				float4 weightedHeights_04 = float4( 0,0,0,0 );
				float4 weightedHeights_08 = float4( 0,0,0,0 );
				float4 weightedHeights_12 = float4( 0,0,0,0 );
				float4 weightedHeights_16 = float4( 0,0,0,0 );
				maxHeight = heights_047362_g83651.x;
				maxHeight = max(maxHeight, heights_047362_g83651.y);
				maxHeight = max(maxHeight, heights_047362_g83651.z);
				maxHeight = max(maxHeight, heights_047362_g83651.w);
				#ifdef TVE_TERRAIN_08
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				#endif
				#ifdef TVE_TERRAIN_12
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				maxHeight = max(maxHeight, heights_127362_g83651.x);
				maxHeight = max(maxHeight, heights_127362_g83651.y);
				maxHeight = max(maxHeight, heights_127362_g83651.z);
				maxHeight = max(maxHeight, heights_127362_g83651.w);
				#endif
				#ifdef TVE_TERRAIN_16
				maxHeight = max(maxHeight, heights_087362_g83651.x);
				maxHeight = max(maxHeight, heights_087362_g83651.y);
				maxHeight = max(maxHeight, heights_087362_g83651.z);
				maxHeight = max(maxHeight, heights_087362_g83651.w);
				maxHeight = max(maxHeight, heights_127362_g83651.x);
				maxHeight = max(maxHeight, heights_127362_g83651.y);
				maxHeight = max(maxHeight, heights_127362_g83651.z);
				maxHeight = max(maxHeight, heights_127362_g83651.w);
				maxHeight = max(maxHeight, heights_167362_g83651.x);
				maxHeight = max(maxHeight, heights_167362_g83651.y);
				maxHeight = max(maxHeight, heights_167362_g83651.z);
				maxHeight = max(maxHeight, heights_167362_g83651.w);
				#endif
				float transition = max(heightTransition7362_g83651, 0.01);
				weightedHeights_04 = float4 ( heights_047362_g83651.x, heights_047362_g83651.y, heights_047362_g83651.z, heights_047362_g83651.w );
				weightedHeights_04 = weightedHeights_04 - maxHeight.xxxx;
				weightedHeights_04 = (max(0, weightedHeights_04 + transition) + 1e-6) * control_047362_g83651;
				#ifdef TVE_TERRAIN_08
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				#endif
				#ifdef TVE_TERRAIN_12
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				weightedHeights_12 = float4 ( heights_127362_g83651.x, heights_127362_g83651.y, heights_127362_g83651.z, heights_127362_g83651.w );
				weightedHeights_12 = weightedHeights_12 - maxHeight.xxxx;
				weightedHeights_12 = (max(0, weightedHeights_12 + transition) + 1e-6) * control_127362_g83651;
				#endif
				#ifdef TVE_TERRAIN_16
				weightedHeights_08 = float4 ( heights_087362_g83651.x, heights_087362_g83651.y, heights_087362_g83651.z, heights_087362_g83651.w );
				weightedHeights_08 = weightedHeights_08 - maxHeight.xxxx;
				weightedHeights_08 = (max(0, weightedHeights_08 + transition) + 1e-6) * control_087362_g83651;
				weightedHeights_12 = float4 ( heights_127362_g83651.x, heights_127362_g83651.y, heights_127362_g83651.z, heights_127362_g83651.w );
				weightedHeights_12 = weightedHeights_12 - maxHeight.xxxx;
				weightedHeights_12 = (max(0, weightedHeights_12 + transition) + 1e-6) * control_127362_g83651;
				weightedHeights_16 = float4 ( heights_167362_g83651.x, heights_167362_g83651.y, heights_167362_g83651.z, heights_167362_g83651.w );
				weightedHeights_16 = weightedHeights_16 - maxHeight.xxxx;
				weightedHeights_16 = (max(0, weightedHeights_16 + transition) + 1e-6) * control_167362_g83651;
				#endif
				float sumHeight_04 = weightedHeights_04.x + weightedHeights_04.y + weightedHeights_04.z + weightedHeights_04.w;
				float sumHeight_08 = weightedHeights_08.x + weightedHeights_08.y + weightedHeights_08.z + weightedHeights_08.w;
				float sumHeight_12 = weightedHeights_12.x + weightedHeights_12.y + weightedHeights_12.z + weightedHeights_12.w;
				float sumHeight_16 = weightedHeights_16.x + weightedHeights_16.y + weightedHeights_16.z + weightedHeights_16.w;
				float sumHeight = sumHeight_04 + sumHeight_08 + sumHeight_12 + sumHeight_16;
				weights_047362_g83651 = weightedHeights_04 / sumHeight.xxxx;
				#ifdef TVE_TERRAIN_08
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				#endif
				#ifdef TVE_TERRAIN_12
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				weights_127362_g83651 = weightedHeights_12 / sumHeight.xxxx;
				#endif
				#ifdef TVE_TERRAIN_16
				weights_087362_g83651 = weightedHeights_08 / sumHeight.xxxx;
				weights_127362_g83651 = weightedHeights_12 / sumHeight.xxxx;
				weights_167362_g83651 = weightedHeights_16 / sumHeight.xxxx;
				#endif
				}
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8792_g83651 = weights_047362_g83651;
				#else
				float4 staticSwitch8792_g83651 = control_047362_g83651;
				#endif
				half4 Terrain_Weights_046781_g83651 = staticSwitch8792_g83651;
				half4 Weights52_g83660 = Terrain_Weights_046781_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83744) = _AlbedoTex1;
				SamplerState Sampler238_g83744 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83744 = Input_Coords_016785_g83651;
				half4 Coords238_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition238_g83744 = ase_worldPos;
				half4 localSamplePlanar2D238_g83744 = SamplePlanar2D( Texture238_g83744 , Sampler238_g83744 , Coords238_g83744 , WorldPosition238_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83744) = _AlbedoTex1;
				SamplerState Sampler246_g83744 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition246_g83744 = ase_worldPos;
				half3 WorldNormal246_g83744 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83744 = SamplePlanar3D( Texture246_g83744 , Sampler246_g83744 , Coords246_g83744 , WorldPosition246_g83744 , WorldNormal246_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83744) = _AlbedoTex1;
				SamplerState Sampler234_g83744 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83744 = temp_output_37_0_g83744;
				float3 WorldPosition234_g83744 = ase_worldPos;
				float4 localSampleStochastic2D234_g83744 = SampleStochastic2D( Texture234_g83744 , Sampler234_g83744 , Coords234_g83744 , WorldPosition234_g83744 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83744) = _AlbedoTex1;
				SamplerState Sampler263_g83744 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83744 = temp_output_37_0_g83744;
				half3 WorldPosition263_g83744 = ase_worldPos;
				half3 WorldNormal263_g83744 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83744 = SampleStochastic3D( Texture263_g83744 , Sampler263_g83744 , Coords263_g83744 , WorldPosition263_g83744 , WorldNormal263_g83744 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8614_g83651 = localSamplePlanar2D238_g83744;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8614_g83651 = localSamplePlanar3D246_g83744;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8614_g83651 = localSampleStochastic2D234_g83744;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8614_g83651 = localSampleStochastic3D263_g83744;
				#else
				float4 staticSwitch8614_g83651 = localSamplePlanar2D238_g83744;
				#endif
				half4 Layer133_g83660 = staticSwitch8614_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83697) = _AlbedoTex2;
				SamplerState Sampler238_g83697 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83697 = Input_Coords_026787_g83651;
				half4 Coords238_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition238_g83697 = ase_worldPos;
				half4 localSamplePlanar2D238_g83697 = SamplePlanar2D( Texture238_g83697 , Sampler238_g83697 , Coords238_g83697 , WorldPosition238_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83697) = _AlbedoTex2;
				SamplerState Sampler246_g83697 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition246_g83697 = ase_worldPos;
				half3 WorldNormal246_g83697 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83697 = SamplePlanar3D( Texture246_g83697 , Sampler246_g83697 , Coords246_g83697 , WorldPosition246_g83697 , WorldNormal246_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83697) = _AlbedoTex2;
				SamplerState Sampler234_g83697 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83697 = temp_output_37_0_g83697;
				float3 WorldPosition234_g83697 = ase_worldPos;
				float4 localSampleStochastic2D234_g83697 = SampleStochastic2D( Texture234_g83697 , Sampler234_g83697 , Coords234_g83697 , WorldPosition234_g83697 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83697) = _AlbedoTex2;
				SamplerState Sampler263_g83697 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83697 = temp_output_37_0_g83697;
				half3 WorldPosition263_g83697 = ase_worldPos;
				half3 WorldNormal263_g83697 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83697 = SampleStochastic3D( Texture263_g83697 , Sampler263_g83697 , Coords263_g83697 , WorldPosition263_g83697 , WorldNormal263_g83697 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8629_g83651 = localSamplePlanar2D238_g83697;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8629_g83651 = localSamplePlanar3D246_g83697;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8629_g83651 = localSampleStochastic2D234_g83697;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8629_g83651 = localSampleStochastic3D263_g83697;
				#else
				float4 staticSwitch8629_g83651 = localSamplePlanar2D238_g83697;
				#endif
				half4 Layer237_g83660 = staticSwitch8629_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83698) = _AlbedoTex3;
				SamplerState Sampler238_g83698 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83698 = Input_Coords_036789_g83651;
				half4 Coords238_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition238_g83698 = ase_worldPos;
				half4 localSamplePlanar2D238_g83698 = SamplePlanar2D( Texture238_g83698 , Sampler238_g83698 , Coords238_g83698 , WorldPosition238_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83698) = _AlbedoTex3;
				SamplerState Sampler246_g83698 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition246_g83698 = ase_worldPos;
				half3 WorldNormal246_g83698 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83698 = SamplePlanar3D( Texture246_g83698 , Sampler246_g83698 , Coords246_g83698 , WorldPosition246_g83698 , WorldNormal246_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83698) = _AlbedoTex3;
				SamplerState Sampler234_g83698 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83698 = temp_output_37_0_g83698;
				float3 WorldPosition234_g83698 = ase_worldPos;
				float4 localSampleStochastic2D234_g83698 = SampleStochastic2D( Texture234_g83698 , Sampler234_g83698 , Coords234_g83698 , WorldPosition234_g83698 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83698) = _AlbedoTex3;
				SamplerState Sampler263_g83698 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83698 = temp_output_37_0_g83698;
				half3 WorldPosition263_g83698 = ase_worldPos;
				half3 WorldNormal263_g83698 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83698 = SampleStochastic3D( Texture263_g83698 , Sampler263_g83698 , Coords263_g83698 , WorldPosition263_g83698 , WorldNormal263_g83698 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8630_g83651 = localSamplePlanar2D238_g83698;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8630_g83651 = localSamplePlanar3D246_g83698;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8630_g83651 = localSampleStochastic2D234_g83698;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8630_g83651 = localSampleStochastic3D263_g83698;
				#else
				float4 staticSwitch8630_g83651 = localSamplePlanar2D238_g83698;
				#endif
				half4 Layer338_g83660 = staticSwitch8630_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83699) = _AlbedoTex4;
				SamplerState Sampler238_g83699 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83699 = Input_Coords_046791_g83651;
				half4 Coords238_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition238_g83699 = ase_worldPos;
				half4 localSamplePlanar2D238_g83699 = SamplePlanar2D( Texture238_g83699 , Sampler238_g83699 , Coords238_g83699 , WorldPosition238_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83699) = _AlbedoTex4;
				SamplerState Sampler246_g83699 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition246_g83699 = ase_worldPos;
				half3 WorldNormal246_g83699 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83699 = SamplePlanar3D( Texture246_g83699 , Sampler246_g83699 , Coords246_g83699 , WorldPosition246_g83699 , WorldNormal246_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83699) = _AlbedoTex4;
				SamplerState Sampler234_g83699 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83699 = temp_output_37_0_g83699;
				float3 WorldPosition234_g83699 = ase_worldPos;
				float4 localSampleStochastic2D234_g83699 = SampleStochastic2D( Texture234_g83699 , Sampler234_g83699 , Coords234_g83699 , WorldPosition234_g83699 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83699) = _AlbedoTex4;
				SamplerState Sampler263_g83699 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83699 = temp_output_37_0_g83699;
				half3 WorldPosition263_g83699 = ase_worldPos;
				half3 WorldNormal263_g83699 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83699 = SampleStochastic3D( Texture263_g83699 , Sampler263_g83699 , Coords263_g83699 , WorldPosition263_g83699 , WorldNormal263_g83699 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8631_g83651 = localSamplePlanar2D238_g83699;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8631_g83651 = localSamplePlanar3D246_g83699;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8631_g83651 = localSampleStochastic2D234_g83699;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8631_g83651 = localSampleStochastic3D263_g83699;
				#else
				float4 staticSwitch8631_g83651 = localSamplePlanar2D238_g83699;
				#endif
				half4 Layer439_g83660 = staticSwitch8631_g83651;
				float4 weightedBlendVar31_g83660 = Weights52_g83660;
				float4 weightedBlend31_g83660 = ( weightedBlendVar31_g83660.x*Layer133_g83660 + weightedBlendVar31_g83660.y*Layer237_g83660 + weightedBlendVar31_g83660.z*Layer338_g83660 + weightedBlendVar31_g83660.w*Layer439_g83660 );
				half4 Terrain_Albedo_047200_g83651 = weightedBlend31_g83660;
				half4 Layer_045_g83663 = Terrain_Albedo_047200_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8793_g83651 = weights_087362_g83651;
				#else
				float4 staticSwitch8793_g83651 = control_087362_g83651;
				#endif
				half4 Terrain_Weights_087340_g83651 = staticSwitch8793_g83651;
				half4 Weights52_g83667 = Terrain_Weights_087340_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83708) = _AlbedoTex5;
				SamplerState Sampler238_g83708 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83708 = Input_Coords_058750_g83651;
				half4 Coords238_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition238_g83708 = ase_worldPos;
				half4 localSamplePlanar2D238_g83708 = SamplePlanar2D( Texture238_g83708 , Sampler238_g83708 , Coords238_g83708 , WorldPosition238_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83708) = _AlbedoTex5;
				SamplerState Sampler246_g83708 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition246_g83708 = ase_worldPos;
				half3 WorldNormal246_g83708 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83708 = SamplePlanar3D( Texture246_g83708 , Sampler246_g83708 , Coords246_g83708 , WorldPosition246_g83708 , WorldNormal246_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83708) = _AlbedoTex5;
				SamplerState Sampler234_g83708 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83708 = temp_output_37_0_g83708;
				float3 WorldPosition234_g83708 = ase_worldPos;
				float4 localSampleStochastic2D234_g83708 = SampleStochastic2D( Texture234_g83708 , Sampler234_g83708 , Coords234_g83708 , WorldPosition234_g83708 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83708) = _AlbedoTex5;
				SamplerState Sampler263_g83708 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83708 = temp_output_37_0_g83708;
				half3 WorldPosition263_g83708 = ase_worldPos;
				half3 WorldNormal263_g83708 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83708 = SampleStochastic3D( Texture263_g83708 , Sampler263_g83708 , Coords263_g83708 , WorldPosition263_g83708 , WorldNormal263_g83708 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8690_g83651 = localSamplePlanar2D238_g83708;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8690_g83651 = localSamplePlanar3D246_g83708;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8690_g83651 = localSampleStochastic2D234_g83708;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8690_g83651 = localSampleStochastic3D263_g83708;
				#else
				float4 staticSwitch8690_g83651 = localSamplePlanar2D238_g83708;
				#endif
				half4 Layer133_g83667 = staticSwitch8690_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83709) = _AlbedoTex6;
				SamplerState Sampler238_g83709 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83709 = Input_Coords_068751_g83651;
				half4 Coords238_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition238_g83709 = ase_worldPos;
				half4 localSamplePlanar2D238_g83709 = SamplePlanar2D( Texture238_g83709 , Sampler238_g83709 , Coords238_g83709 , WorldPosition238_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83709) = _AlbedoTex6;
				SamplerState Sampler246_g83709 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition246_g83709 = ase_worldPos;
				half3 WorldNormal246_g83709 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83709 = SamplePlanar3D( Texture246_g83709 , Sampler246_g83709 , Coords246_g83709 , WorldPosition246_g83709 , WorldNormal246_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83709) = _AlbedoTex6;
				SamplerState Sampler234_g83709 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83709 = temp_output_37_0_g83709;
				float3 WorldPosition234_g83709 = ase_worldPos;
				float4 localSampleStochastic2D234_g83709 = SampleStochastic2D( Texture234_g83709 , Sampler234_g83709 , Coords234_g83709 , WorldPosition234_g83709 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83709) = _AlbedoTex6;
				SamplerState Sampler263_g83709 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83709 = temp_output_37_0_g83709;
				half3 WorldPosition263_g83709 = ase_worldPos;
				half3 WorldNormal263_g83709 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83709 = SampleStochastic3D( Texture263_g83709 , Sampler263_g83709 , Coords263_g83709 , WorldPosition263_g83709 , WorldNormal263_g83709 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8691_g83651 = localSamplePlanar2D238_g83709;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8691_g83651 = localSamplePlanar3D246_g83709;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8691_g83651 = localSampleStochastic2D234_g83709;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8691_g83651 = localSampleStochastic3D263_g83709;
				#else
				float4 staticSwitch8691_g83651 = localSamplePlanar2D238_g83709;
				#endif
				half4 Layer237_g83667 = staticSwitch8691_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83710) = _AlbedoTex7;
				SamplerState Sampler238_g83710 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83710 = Input_Coords_078752_g83651;
				half4 Coords238_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition238_g83710 = ase_worldPos;
				half4 localSamplePlanar2D238_g83710 = SamplePlanar2D( Texture238_g83710 , Sampler238_g83710 , Coords238_g83710 , WorldPosition238_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83710) = _AlbedoTex7;
				SamplerState Sampler246_g83710 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition246_g83710 = ase_worldPos;
				half3 WorldNormal246_g83710 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83710 = SamplePlanar3D( Texture246_g83710 , Sampler246_g83710 , Coords246_g83710 , WorldPosition246_g83710 , WorldNormal246_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83710) = _AlbedoTex7;
				SamplerState Sampler234_g83710 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83710 = temp_output_37_0_g83710;
				float3 WorldPosition234_g83710 = ase_worldPos;
				float4 localSampleStochastic2D234_g83710 = SampleStochastic2D( Texture234_g83710 , Sampler234_g83710 , Coords234_g83710 , WorldPosition234_g83710 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83710) = _AlbedoTex7;
				SamplerState Sampler263_g83710 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83710 = temp_output_37_0_g83710;
				half3 WorldPosition263_g83710 = ase_worldPos;
				half3 WorldNormal263_g83710 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83710 = SampleStochastic3D( Texture263_g83710 , Sampler263_g83710 , Coords263_g83710 , WorldPosition263_g83710 , WorldNormal263_g83710 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8692_g83651 = localSamplePlanar2D238_g83710;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8692_g83651 = localSamplePlanar3D246_g83710;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8692_g83651 = localSampleStochastic2D234_g83710;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8692_g83651 = localSampleStochastic3D263_g83710;
				#else
				float4 staticSwitch8692_g83651 = localSamplePlanar2D238_g83710;
				#endif
				half4 Layer338_g83667 = staticSwitch8692_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83711) = _AlbedoTex8;
				SamplerState Sampler238_g83711 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83711 = Input_Coords_088749_g83651;
				half4 Coords238_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition238_g83711 = ase_worldPos;
				half4 localSamplePlanar2D238_g83711 = SamplePlanar2D( Texture238_g83711 , Sampler238_g83711 , Coords238_g83711 , WorldPosition238_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83711) = _AlbedoTex8;
				SamplerState Sampler246_g83711 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition246_g83711 = ase_worldPos;
				half3 WorldNormal246_g83711 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83711 = SamplePlanar3D( Texture246_g83711 , Sampler246_g83711 , Coords246_g83711 , WorldPosition246_g83711 , WorldNormal246_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83711) = _AlbedoTex8;
				SamplerState Sampler234_g83711 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83711 = temp_output_37_0_g83711;
				float3 WorldPosition234_g83711 = ase_worldPos;
				float4 localSampleStochastic2D234_g83711 = SampleStochastic2D( Texture234_g83711 , Sampler234_g83711 , Coords234_g83711 , WorldPosition234_g83711 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83711) = _AlbedoTex8;
				SamplerState Sampler263_g83711 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83711 = temp_output_37_0_g83711;
				half3 WorldPosition263_g83711 = ase_worldPos;
				half3 WorldNormal263_g83711 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83711 = SampleStochastic3D( Texture263_g83711 , Sampler263_g83711 , Coords263_g83711 , WorldPosition263_g83711 , WorldNormal263_g83711 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8693_g83651 = localSamplePlanar2D238_g83711;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8693_g83651 = localSamplePlanar3D246_g83711;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8693_g83651 = localSampleStochastic2D234_g83711;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8693_g83651 = localSampleStochastic3D263_g83711;
				#else
				float4 staticSwitch8693_g83651 = localSamplePlanar2D238_g83711;
				#endif
				half4 Layer439_g83667 = staticSwitch8693_g83651;
				float4 weightedBlendVar31_g83667 = Weights52_g83667;
				float4 weightedBlend31_g83667 = ( weightedBlendVar31_g83667.x*Layer133_g83667 + weightedBlendVar31_g83667.y*Layer237_g83667 + weightedBlendVar31_g83667.z*Layer338_g83667 + weightedBlendVar31_g83667.w*Layer439_g83667 );
				half4 Terrain_Albedo_088665_g83651 = weightedBlend31_g83667;
				half4 Layer_0810_g83663 = Terrain_Albedo_088665_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8794_g83651 = weights_127362_g83651;
				#else
				float4 staticSwitch8794_g83651 = control_127362_g83651;
				#endif
				half4 Terrain_Weights_127710_g83651 = staticSwitch8794_g83651;
				half4 Weights52_g83677 = Terrain_Weights_127710_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83720) = _AlbedoTex9;
				SamplerState Sampler238_g83720 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83720 = Input_Coords_098833_g83651;
				half4 Coords238_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition238_g83720 = ase_worldPos;
				half4 localSamplePlanar2D238_g83720 = SamplePlanar2D( Texture238_g83720 , Sampler238_g83720 , Coords238_g83720 , WorldPosition238_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83720) = _AlbedoTex9;
				SamplerState Sampler246_g83720 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition246_g83720 = ase_worldPos;
				half3 WorldNormal246_g83720 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83720 = SamplePlanar3D( Texture246_g83720 , Sampler246_g83720 , Coords246_g83720 , WorldPosition246_g83720 , WorldNormal246_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83720) = _AlbedoTex9;
				SamplerState Sampler234_g83720 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83720 = temp_output_37_0_g83720;
				float3 WorldPosition234_g83720 = ase_worldPos;
				float4 localSampleStochastic2D234_g83720 = SampleStochastic2D( Texture234_g83720 , Sampler234_g83720 , Coords234_g83720 , WorldPosition234_g83720 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83720) = _AlbedoTex9;
				SamplerState Sampler263_g83720 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83720 = temp_output_37_0_g83720;
				half3 WorldPosition263_g83720 = ase_worldPos;
				half3 WorldNormal263_g83720 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83720 = SampleStochastic3D( Texture263_g83720 , Sampler263_g83720 , Coords263_g83720 , WorldPosition263_g83720 , WorldNormal263_g83720 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8872_g83651 = localSamplePlanar2D238_g83720;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8872_g83651 = localSamplePlanar3D246_g83720;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8872_g83651 = localSampleStochastic2D234_g83720;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8872_g83651 = localSampleStochastic3D263_g83720;
				#else
				float4 staticSwitch8872_g83651 = localSamplePlanar2D238_g83720;
				#endif
				half4 Layer133_g83677 = staticSwitch8872_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83721) = _AlbedoTex10;
				SamplerState Sampler238_g83721 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83721 = Input_Coords_108834_g83651;
				half4 Coords238_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition238_g83721 = ase_worldPos;
				half4 localSamplePlanar2D238_g83721 = SamplePlanar2D( Texture238_g83721 , Sampler238_g83721 , Coords238_g83721 , WorldPosition238_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83721) = _AlbedoTex10;
				SamplerState Sampler246_g83721 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition246_g83721 = ase_worldPos;
				half3 WorldNormal246_g83721 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83721 = SamplePlanar3D( Texture246_g83721 , Sampler246_g83721 , Coords246_g83721 , WorldPosition246_g83721 , WorldNormal246_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83721) = _AlbedoTex10;
				SamplerState Sampler234_g83721 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83721 = temp_output_37_0_g83721;
				float3 WorldPosition234_g83721 = ase_worldPos;
				float4 localSampleStochastic2D234_g83721 = SampleStochastic2D( Texture234_g83721 , Sampler234_g83721 , Coords234_g83721 , WorldPosition234_g83721 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83721) = _AlbedoTex10;
				SamplerState Sampler263_g83721 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83721 = temp_output_37_0_g83721;
				half3 WorldPosition263_g83721 = ase_worldPos;
				half3 WorldNormal263_g83721 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83721 = SampleStochastic3D( Texture263_g83721 , Sampler263_g83721 , Coords263_g83721 , WorldPosition263_g83721 , WorldNormal263_g83721 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8873_g83651 = localSamplePlanar2D238_g83721;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8873_g83651 = localSamplePlanar3D246_g83721;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8873_g83651 = localSampleStochastic2D234_g83721;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8873_g83651 = localSampleStochastic3D263_g83721;
				#else
				float4 staticSwitch8873_g83651 = localSamplePlanar2D238_g83721;
				#endif
				half4 Layer237_g83677 = staticSwitch8873_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83722) = _AlbedoTex11;
				SamplerState Sampler238_g83722 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83722 = Input_Coords_118835_g83651;
				half4 Coords238_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition238_g83722 = ase_worldPos;
				half4 localSamplePlanar2D238_g83722 = SamplePlanar2D( Texture238_g83722 , Sampler238_g83722 , Coords238_g83722 , WorldPosition238_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83722) = _AlbedoTex11;
				SamplerState Sampler246_g83722 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition246_g83722 = ase_worldPos;
				half3 WorldNormal246_g83722 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83722 = SamplePlanar3D( Texture246_g83722 , Sampler246_g83722 , Coords246_g83722 , WorldPosition246_g83722 , WorldNormal246_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83722) = _AlbedoTex11;
				SamplerState Sampler234_g83722 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83722 = temp_output_37_0_g83722;
				float3 WorldPosition234_g83722 = ase_worldPos;
				float4 localSampleStochastic2D234_g83722 = SampleStochastic2D( Texture234_g83722 , Sampler234_g83722 , Coords234_g83722 , WorldPosition234_g83722 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83722) = _AlbedoTex11;
				SamplerState Sampler263_g83722 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83722 = temp_output_37_0_g83722;
				half3 WorldPosition263_g83722 = ase_worldPos;
				half3 WorldNormal263_g83722 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83722 = SampleStochastic3D( Texture263_g83722 , Sampler263_g83722 , Coords263_g83722 , WorldPosition263_g83722 , WorldNormal263_g83722 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8874_g83651 = localSamplePlanar2D238_g83722;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8874_g83651 = localSamplePlanar3D246_g83722;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8874_g83651 = localSampleStochastic2D234_g83722;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8874_g83651 = localSampleStochastic3D263_g83722;
				#else
				float4 staticSwitch8874_g83651 = localSamplePlanar2D238_g83722;
				#endif
				half4 Layer338_g83677 = staticSwitch8874_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83723) = _AlbedoTex12;
				SamplerState Sampler238_g83723 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83723 = Input_Coords_128836_g83651;
				half4 Coords238_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition238_g83723 = ase_worldPos;
				half4 localSamplePlanar2D238_g83723 = SamplePlanar2D( Texture238_g83723 , Sampler238_g83723 , Coords238_g83723 , WorldPosition238_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83723) = _AlbedoTex12;
				SamplerState Sampler246_g83723 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition246_g83723 = ase_worldPos;
				half3 WorldNormal246_g83723 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83723 = SamplePlanar3D( Texture246_g83723 , Sampler246_g83723 , Coords246_g83723 , WorldPosition246_g83723 , WorldNormal246_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83723) = _AlbedoTex12;
				SamplerState Sampler234_g83723 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83723 = temp_output_37_0_g83723;
				float3 WorldPosition234_g83723 = ase_worldPos;
				float4 localSampleStochastic2D234_g83723 = SampleStochastic2D( Texture234_g83723 , Sampler234_g83723 , Coords234_g83723 , WorldPosition234_g83723 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83723) = _AlbedoTex12;
				SamplerState Sampler263_g83723 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83723 = temp_output_37_0_g83723;
				half3 WorldPosition263_g83723 = ase_worldPos;
				half3 WorldNormal263_g83723 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83723 = SampleStochastic3D( Texture263_g83723 , Sampler263_g83723 , Coords263_g83723 , WorldPosition263_g83723 , WorldNormal263_g83723 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8875_g83651 = localSamplePlanar2D238_g83723;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8875_g83651 = localSamplePlanar3D246_g83723;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8875_g83651 = localSampleStochastic2D234_g83723;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8875_g83651 = localSampleStochastic3D263_g83723;
				#else
				float4 staticSwitch8875_g83651 = localSamplePlanar2D238_g83723;
				#endif
				half4 Layer439_g83677 = staticSwitch8875_g83651;
				float4 weightedBlendVar31_g83677 = Weights52_g83677;
				float4 weightedBlend31_g83677 = ( weightedBlendVar31_g83677.x*Layer133_g83677 + weightedBlendVar31_g83677.y*Layer237_g83677 + weightedBlendVar31_g83677.z*Layer338_g83677 + weightedBlendVar31_g83677.w*Layer439_g83677 );
				half4 Terrain_Albedo_128851_g83651 = weightedBlend31_g83677;
				half4 Layer_1243_g83663 = Terrain_Albedo_128851_g83651;
				#ifdef TVE_HEIGHT_BLEND
				float4 staticSwitch8795_g83651 = weights_167362_g83651;
				#else
				float4 staticSwitch8795_g83651 = control_167362_g83651;
				#endif
				half4 Terrain_Weights_167709_g83651 = staticSwitch8795_g83651;
				half4 Weights52_g83687 = Terrain_Weights_167709_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83732) = _AlbedoTex13;
				SamplerState Sampler238_g83732 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83732 = Input_Coords_138960_g83651;
				half4 Coords238_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition238_g83732 = ase_worldPos;
				half4 localSamplePlanar2D238_g83732 = SamplePlanar2D( Texture238_g83732 , Sampler238_g83732 , Coords238_g83732 , WorldPosition238_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83732) = _AlbedoTex13;
				SamplerState Sampler246_g83732 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition246_g83732 = ase_worldPos;
				half3 WorldNormal246_g83732 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83732 = SamplePlanar3D( Texture246_g83732 , Sampler246_g83732 , Coords246_g83732 , WorldPosition246_g83732 , WorldNormal246_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83732) = _AlbedoTex13;
				SamplerState Sampler234_g83732 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83732 = temp_output_37_0_g83732;
				float3 WorldPosition234_g83732 = ase_worldPos;
				float4 localSampleStochastic2D234_g83732 = SampleStochastic2D( Texture234_g83732 , Sampler234_g83732 , Coords234_g83732 , WorldPosition234_g83732 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83732) = _AlbedoTex13;
				SamplerState Sampler263_g83732 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83732 = temp_output_37_0_g83732;
				half3 WorldPosition263_g83732 = ase_worldPos;
				half3 WorldNormal263_g83732 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83732 = SampleStochastic3D( Texture263_g83732 , Sampler263_g83732 , Coords263_g83732 , WorldPosition263_g83732 , WorldNormal263_g83732 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch8972_g83651 = localSamplePlanar2D238_g83732;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch8972_g83651 = localSamplePlanar3D246_g83732;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch8972_g83651 = localSampleStochastic2D234_g83732;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch8972_g83651 = localSampleStochastic3D263_g83732;
				#else
				float4 staticSwitch8972_g83651 = localSamplePlanar2D238_g83732;
				#endif
				half4 Layer133_g83687 = staticSwitch8972_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83733) = _AlbedoTex14;
				SamplerState Sampler238_g83733 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83733 = Input_Coords_148961_g83651;
				half4 Coords238_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition238_g83733 = ase_worldPos;
				half4 localSamplePlanar2D238_g83733 = SamplePlanar2D( Texture238_g83733 , Sampler238_g83733 , Coords238_g83733 , WorldPosition238_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83733) = _AlbedoTex14;
				SamplerState Sampler246_g83733 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition246_g83733 = ase_worldPos;
				half3 WorldNormal246_g83733 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83733 = SamplePlanar3D( Texture246_g83733 , Sampler246_g83733 , Coords246_g83733 , WorldPosition246_g83733 , WorldNormal246_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83733) = _AlbedoTex14;
				SamplerState Sampler234_g83733 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83733 = temp_output_37_0_g83733;
				float3 WorldPosition234_g83733 = ase_worldPos;
				float4 localSampleStochastic2D234_g83733 = SampleStochastic2D( Texture234_g83733 , Sampler234_g83733 , Coords234_g83733 , WorldPosition234_g83733 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83733) = _AlbedoTex14;
				SamplerState Sampler263_g83733 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83733 = temp_output_37_0_g83733;
				half3 WorldPosition263_g83733 = ase_worldPos;
				half3 WorldNormal263_g83733 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83733 = SampleStochastic3D( Texture263_g83733 , Sampler263_g83733 , Coords263_g83733 , WorldPosition263_g83733 , WorldNormal263_g83733 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch8973_g83651 = localSamplePlanar2D238_g83733;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch8973_g83651 = localSamplePlanar3D246_g83733;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch8973_g83651 = localSampleStochastic2D234_g83733;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch8973_g83651 = localSampleStochastic3D263_g83733;
				#else
				float4 staticSwitch8973_g83651 = localSamplePlanar2D238_g83733;
				#endif
				half4 Layer237_g83687 = staticSwitch8973_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83734) = _AlbedoTex15;
				SamplerState Sampler238_g83734 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83734 = Input_Coords_158962_g83651;
				half4 Coords238_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition238_g83734 = ase_worldPos;
				half4 localSamplePlanar2D238_g83734 = SamplePlanar2D( Texture238_g83734 , Sampler238_g83734 , Coords238_g83734 , WorldPosition238_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83734) = _AlbedoTex15;
				SamplerState Sampler246_g83734 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition246_g83734 = ase_worldPos;
				half3 WorldNormal246_g83734 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83734 = SamplePlanar3D( Texture246_g83734 , Sampler246_g83734 , Coords246_g83734 , WorldPosition246_g83734 , WorldNormal246_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83734) = _AlbedoTex15;
				SamplerState Sampler234_g83734 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83734 = temp_output_37_0_g83734;
				float3 WorldPosition234_g83734 = ase_worldPos;
				float4 localSampleStochastic2D234_g83734 = SampleStochastic2D( Texture234_g83734 , Sampler234_g83734 , Coords234_g83734 , WorldPosition234_g83734 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83734) = _AlbedoTex15;
				SamplerState Sampler263_g83734 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83734 = temp_output_37_0_g83734;
				half3 WorldPosition263_g83734 = ase_worldPos;
				half3 WorldNormal263_g83734 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83734 = SampleStochastic3D( Texture263_g83734 , Sampler263_g83734 , Coords263_g83734 , WorldPosition263_g83734 , WorldNormal263_g83734 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch8974_g83651 = localSamplePlanar2D238_g83734;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch8974_g83651 = localSamplePlanar3D246_g83734;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch8974_g83651 = localSampleStochastic2D234_g83734;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch8974_g83651 = localSampleStochastic3D263_g83734;
				#else
				float4 staticSwitch8974_g83651 = localSamplePlanar2D238_g83734;
				#endif
				half4 Layer338_g83687 = staticSwitch8974_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83735) = _AlbedoTex16;
				SamplerState Sampler238_g83735 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83735 = Input_Coords_168959_g83651;
				half4 Coords238_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition238_g83735 = ase_worldPos;
				half4 localSamplePlanar2D238_g83735 = SamplePlanar2D( Texture238_g83735 , Sampler238_g83735 , Coords238_g83735 , WorldPosition238_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83735) = _AlbedoTex16;
				SamplerState Sampler246_g83735 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition246_g83735 = ase_worldPos;
				half3 WorldNormal246_g83735 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83735 = SamplePlanar3D( Texture246_g83735 , Sampler246_g83735 , Coords246_g83735 , WorldPosition246_g83735 , WorldNormal246_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83735) = _AlbedoTex16;
				SamplerState Sampler234_g83735 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83735 = temp_output_37_0_g83735;
				float3 WorldPosition234_g83735 = ase_worldPos;
				float4 localSampleStochastic2D234_g83735 = SampleStochastic2D( Texture234_g83735 , Sampler234_g83735 , Coords234_g83735 , WorldPosition234_g83735 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83735) = _AlbedoTex16;
				SamplerState Sampler263_g83735 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83735 = temp_output_37_0_g83735;
				half3 WorldPosition263_g83735 = ase_worldPos;
				half3 WorldNormal263_g83735 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83735 = SampleStochastic3D( Texture263_g83735 , Sampler263_g83735 , Coords263_g83735 , WorldPosition263_g83735 , WorldNormal263_g83735 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch8975_g83651 = localSamplePlanar2D238_g83735;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch8975_g83651 = localSamplePlanar3D246_g83735;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch8975_g83651 = localSampleStochastic2D234_g83735;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch8975_g83651 = localSampleStochastic3D263_g83735;
				#else
				float4 staticSwitch8975_g83651 = localSamplePlanar2D238_g83735;
				#endif
				half4 Layer439_g83687 = staticSwitch8975_g83651;
				float4 weightedBlendVar31_g83687 = Weights52_g83687;
				float4 weightedBlend31_g83687 = ( weightedBlendVar31_g83687.x*Layer133_g83687 + weightedBlendVar31_g83687.y*Layer237_g83687 + weightedBlendVar31_g83687.z*Layer338_g83687 + weightedBlendVar31_g83687.w*Layer439_g83687 );
				half4 Terrain_Albedo_168986_g83651 = weightedBlend31_g83687;
				half4 Layer_1644_g83663 = Terrain_Albedo_168986_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83663 = Layer_045_g83663;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 + Layer_1243_g83663 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83663 = ( Layer_045_g83663 + Layer_0810_g83663 + Layer_1243_g83663 + Layer_1644_g83663 );
				#else
				float4 staticSwitch40_g83663 = Layer_045_g83663;
				#endif
				half4 Blend_Albedo7468_g83651 = staticSwitch40_g83663;
				half3 Terrain_Albedo8037_g83150 = ( (Blend_Albedo7468_g83651).xyz * (_TerrainColor).rgb );
				float vertexToFrag11_g83454 = IN.ase_texcoord4.z;
				half Terrain_Mask_Pixel7898_g83150 = vertexToFrag11_g83454;
				half2 Main_Normal137_g83150 = temp_output_6555_0_g83150;
				float2 lerpResult3372_g83150 = lerp( float2( 0,0 ) , Main_Normal137_g83150 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				half4 Normal_Packed45_g83238 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g83150 );
				float2 appendResult58_g83238 = (float2(( (Normal_Packed45_g83238).x * (Normal_Packed45_g83238).w ) , (Normal_Packed45_g83238).y));
				half2 Normal_Default50_g83238 = appendResult58_g83238;
				half2 Normal_ASTC41_g83238 = (Normal_Packed45_g83238).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83238 = Normal_ASTC41_g83238;
				#else
				float2 staticSwitch38_g83238 = Normal_Default50_g83238;
				#endif
				half2 Normal_NO_DTX544_g83238 = (Normal_Packed45_g83238).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83238 = Normal_NO_DTX544_g83238;
				#else
				float2 staticSwitch37_g83238 = staticSwitch38_g83238;
				#endif
				float2 temp_output_6560_0_g83150 = ( (staticSwitch37_g83238*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g83241 = temp_output_6560_0_g83150;
				float2 break64_g83241 = Normal_Planar45_g83241;
				float3 appendResult65_g83241 = (float3(break64_g83241.x , 0.0 , break64_g83241.y));
				float2 ifLocalVar7655_g83150 = 0;
				if( _SecondUVsMode == 2.0 )
				ifLocalVar7655_g83150 = (mul( ase_worldToTangent, appendResult65_g83241 )).xy;
				else if( _SecondUVsMode < 2.0 )
				ifLocalVar7655_g83150 = temp_output_6560_0_g83150;
				half2 Second_Normal179_g83150 = ifLocalVar7655_g83150;
				float2 temp_output_36_0_g83250 = ( lerpResult3372_g83150 + Second_Normal179_g83150 );
				float2 lerpResult3376_g83150 = lerp( Main_Normal137_g83150 , temp_output_36_0_g83250 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g83150 = lerpResult3376_g83150;
				#else
				float2 staticSwitch267_g83150 = Main_Normal137_g83150;
				#endif
				half2 Blend_Normal_Detail312_g83150 = staticSwitch267_g83150;
				float3 appendResult7888_g83150 = (float3(Blend_Normal_Detail312_g83150 , 1.0));
				float3 tanNormal7889_g83150 = appendResult7888_g83150;
				float3 worldNormal7889_g83150 = float3(dot(tanToWorld0,tanNormal7889_g83150), dot(tanToWorld1,tanNormal7889_g83150), dot(tanToWorld2,tanNormal7889_g83150));
				half3 Blend_NormalWS_Detail7890_g83150 = worldNormal7889_g83150;
				float temp_output_7901_0_g83150 = saturate( (Blend_NormalWS_Detail7890_g83150).y );
				float temp_output_7895_0_g83150 = ( temp_output_7901_0_g83150 * temp_output_7901_0_g83150 * temp_output_7901_0_g83150 * temp_output_7901_0_g83150 );
				half Terrain_Mask_Projection7875_g83150 = ( temp_output_7895_0_g83150 * _TerrainMode );
				float temp_output_7_0_g83284 = _TerrainBlendMinValue;
				float temp_output_10_0_g83284 = ( _TerrainBlendMaxValue - temp_output_7_0_g83284 );
				half Terrain_Mask7747_g83150 = saturate( ( ( saturate( ( Terrain_Mask_Pixel7898_g83150 + ( Terrain_Mask_Pixel7898_g83150 * Terrain_Mask_Projection7875_g83150 ) ) ) - temp_output_7_0_g83284 ) / ( temp_output_10_0_g83284 + 0.0001 ) ) );
				float3 lerpResult7748_g83150 = lerp( Blend_Albedo_Tinted2808_g83150 , Terrain_Albedo8037_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7792_g83150 = lerpResult7748_g83150;
				#else
				float3 staticSwitch7792_g83150 = Blend_Albedo_Tinted2808_g83150;
				#endif
				half3 Blend_Albedo_Terrain7752_g83150 = staticSwitch7792_g83150;
				float3 temp_output_3_0_g83277 = Blend_Albedo_Terrain7752_g83150;
				float dotResult20_g83277 = dot( temp_output_3_0_g83277 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g83150 = dotResult20_g83277;
				float3 temp_cast_10 = (Blend_Albedo_Grayscale5939_g83150).xxx;
				float temp_output_82_0_g83169 = _LayerColorsValue;
				float temp_output_19_0_g83173 = TVE_ColorsUsage[(int)temp_output_82_0_g83169];
				float4 temp_output_91_19_g83169 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g83150 = IN.ase_texcoord9.xyz;
				float3 WorldPosition3905_g83150 = vertexToFrag3890_g83150;
				float3 vertexToFrag4224_g83150 = IN.ase_texcoord10.xyz;
				float3 ObjectPosition4223_g83150 = vertexToFrag4224_g83150;
				float3 lerpResult4822_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _ColorsPositionMode);
				half2 UV94_g83169 = ( (temp_output_91_19_g83169).zw + ( (temp_output_91_19_g83169).xy * (lerpResult4822_g83150).xz ) );
				float4 tex2DArrayNode83_g83169 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g83169,temp_output_82_0_g83169), 0.0 );
				float4 temp_output_17_0_g83173 = tex2DArrayNode83_g83169;
				float4 temp_output_92_86_g83169 = TVE_ColorsParams;
				float4 temp_output_3_0_g83173 = temp_output_92_86_g83169;
				float4 ifLocalVar18_g83173 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83173 >= 0.5 )
				ifLocalVar18_g83173 = temp_output_17_0_g83173;
				else
				ifLocalVar18_g83173 = temp_output_3_0_g83173;
				float4 lerpResult22_g83173 = lerp( temp_output_3_0_g83173 , temp_output_17_0_g83173 , temp_output_19_0_g83173);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83173 = lerpResult22_g83173;
				#else
				float4 staticSwitch24_g83173 = ifLocalVar18_g83173;
				#endif
				half4 Global_Colors_Params5434_g83150 = staticSwitch24_g83173;
				float4 temp_output_346_0_g83157 = Global_Colors_Params5434_g83150;
				half Global_Colors_A1701_g83150 = saturate( (temp_output_346_0_g83157).w );
				half Colors_Influence3668_g83150 = Global_Colors_A1701_g83150;
				float temp_output_6306_0_g83150 = ( 1.0 - Colors_Influence3668_g83150 );
				float3 lerpResult3618_g83150 = lerp( Blend_Albedo_Terrain7752_g83150 , temp_cast_10 , ( 1.0 - ( temp_output_6306_0_g83150 * temp_output_6306_0_g83150 ) ));
				half3 Global_Colors_RGB1700_g83150 = (temp_output_346_0_g83157).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g83266 = 2.0;
				#else
				float staticSwitch1_g83266 = 4.594794;
				#endif
				half3 Colors_RGB1954_g83150 = ( Global_Colors_RGB1700_g83150 * staticSwitch1_g83266 * _ColorsIntensityValue );
				half4 Weights52_g83659 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83659 = _Specular1;
				half4 Layer237_g83659 = _Specular2;
				half4 Layer338_g83659 = _Specular3;
				half4 Layer439_g83659 = _Specular4;
				float4 weightedBlendVar31_g83659 = Weights52_g83659;
				float4 weightedBlend31_g83659 = ( weightedBlendVar31_g83659.x*Layer133_g83659 + weightedBlendVar31_g83659.y*Layer237_g83659 + weightedBlendVar31_g83659.z*Layer338_g83659 + weightedBlendVar31_g83659.w*Layer439_g83659 );
				half4 Terrain_Specular_047390_g83651 = weightedBlend31_g83659;
				half4 Layer_045_g83666 = Terrain_Specular_047390_g83651;
				half4 Weights52_g83676 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83676 = _Specular5;
				half4 Layer237_g83676 = _Specular6;
				half4 Layer338_g83676 = _Specular7;
				half4 Layer439_g83676 = _Specular8;
				float4 weightedBlendVar31_g83676 = Weights52_g83676;
				float4 weightedBlend31_g83676 = ( weightedBlendVar31_g83676.x*Layer133_g83676 + weightedBlendVar31_g83676.y*Layer237_g83676 + weightedBlendVar31_g83676.z*Layer338_g83676 + weightedBlendVar31_g83676.w*Layer439_g83676 );
				half4 Terrain_Specular_088745_g83651 = weightedBlend31_g83676;
				half4 Layer_0810_g83666 = Terrain_Specular_088745_g83651;
				half4 Weights52_g83686 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83686 = _Specular9;
				half4 Layer237_g83686 = _Specular10;
				half4 Layer338_g83686 = _Specular11;
				half4 Layer439_g83686 = _Specular12;
				float4 weightedBlendVar31_g83686 = Weights52_g83686;
				float4 weightedBlend31_g83686 = ( weightedBlendVar31_g83686.x*Layer133_g83686 + weightedBlendVar31_g83686.y*Layer237_g83686 + weightedBlendVar31_g83686.z*Layer338_g83686 + weightedBlendVar31_g83686.w*Layer439_g83686 );
				half4 Terrain_Specular_128869_g83651 = weightedBlend31_g83686;
				half4 Layer_1243_g83666 = Terrain_Specular_128869_g83651;
				half4 Weights52_g83696 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83696 = _Specular13;
				half4 Layer237_g83696 = _Specular14;
				half4 Layer338_g83696 = _Specular15;
				half4 Layer439_g83696 = _Specular16;
				float4 weightedBlendVar31_g83696 = Weights52_g83696;
				float4 weightedBlend31_g83696 = ( weightedBlendVar31_g83696.x*Layer133_g83696 + weightedBlendVar31_g83696.y*Layer237_g83696 + weightedBlendVar31_g83696.z*Layer338_g83696 + weightedBlendVar31_g83696.w*Layer439_g83696 );
				half4 Terrain_Specular_169019_g83651 = weightedBlend31_g83696;
				half4 Layer_1644_g83666 = Terrain_Specular_169019_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83666 = Layer_045_g83666;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 + Layer_1243_g83666 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83666 = ( Layer_045_g83666 + Layer_0810_g83666 + Layer_1243_g83666 + Layer_1644_g83666 );
				#else
				float4 staticSwitch40_g83666 = Layer_045_g83666;
				#endif
				half4 Blend_Specular7446_g83651 = staticSwitch40_g83666;
				half Terrain_ColorsMask7937_g83150 = ( (Blend_Specular7446_g83651).a * (Blend_Albedo7468_g83651).w );
				float lerpResult7939_g83150 = lerp( Blend_MaskRemap_Detail6621_g83150 , Terrain_ColorsMask7937_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float staticSwitch7922_g83150 = lerpResult7939_g83150;
				#else
				float staticSwitch7922_g83150 = Blend_MaskRemap_Detail6621_g83150;
				#endif
				half Blend_ColorsMask_Terrain7921_g83150 = staticSwitch7922_g83150;
				half Colors_Value3692_g83150 = ( Blend_ColorsMask_Terrain7921_g83150 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g83150 = ( ObjectPosition4223_g83150 - TVE_WorldOrigin );
				half3 Input_Position167_g83244 = ObjectPosition_Shifted7481_g83150;
				float dotResult156_g83244 = dot( (Input_Position167_g83244).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g83150 = _VertexDynamicMode;
				half Input_DynamicMode120_g83244 = Vertex_DynamicMode5112_g83150;
				float Postion_Random162_g83244 = ( sin( dotResult156_g83244 ) * ( 1.0 - Input_DynamicMode120_g83244 ) );
				float Mesh_Variation16_g83150 = IN.ase_color.r;
				half Input_Variation124_g83244 = Mesh_Variation16_g83150;
				half ObjectData20_g83246 = frac( ( Postion_Random162_g83244 + Input_Variation124_g83244 ) );
				half WorldData19_g83246 = Input_Variation124_g83244;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83246 = WorldData19_g83246;
				#else
				float staticSwitch14_g83246 = ObjectData20_g83246;
				#endif
				float temp_output_112_0_g83244 = staticSwitch14_g83246;
				float clampResult171_g83244 = clamp( temp_output_112_0_g83244 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g83150 = clampResult171_g83244;
				float lerpResult3870_g83150 = lerp( 1.0 , Global_MeshVariation5104_g83150 , _ColorsVariationValue);
				half Colors_Variation3650_g83150 = lerpResult3870_g83150;
				half Occlusion_Alpha6463_g83150 = _VertexOcclusionColor.a;
				float lerpResult8028_g83150 = lerp( Occlusion_Mask6432_g83150 , ( 1.0 - Occlusion_Mask6432_g83150 ) , _VertexOcclusionColorsMode);
				float lerpResult8026_g83150 = lerp( Occlusion_Alpha6463_g83150 , 1.0 , lerpResult8028_g83150);
				half Occlusion_Colors6450_g83150 = lerpResult8026_g83150;
				float3 temp_output_3_0_g83278 = ( Blend_Albedo_Terrain7752_g83150 * Tint_Gradient_Color5769_g83150 * Tint_Noise_Color5770_g83150 * Tint_User_Color7335_g83150 );
				float dotResult20_g83278 = dot( temp_output_3_0_g83278 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g83150 = clamp( saturate( ( dotResult20_g83278 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g83150 = clampResult6740_g83150;
				float temp_output_7_0_g83274 = 0.1;
				float temp_output_10_0_g83274 = ( 0.2 - temp_output_7_0_g83274 );
				float lerpResult16_g83267 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g83150 * Colors_Influence3668_g83150 * Colors_Variation3650_g83150 * Occlusion_Colors6450_g83150 * Blend_Albedo_Globals6410_g83150 ) - temp_output_7_0_g83274 ) / ( temp_output_10_0_g83274 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g83150 = lerp( Blend_Albedo_Terrain7752_g83150 , ( lerpResult3618_g83150 * Colors_RGB1954_g83150 ) , lerpResult16_g83267);
				half3 Blend_Albedo_Colored_High6027_g83150 = lerpResult3628_g83150;
				half3 Blend_Albedo_Colored863_g83150 = Blend_Albedo_Colored_High6027_g83150;
				half3 Global_OverlayColor1758_g83150 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g83164 = _LayerExtrasValue;
				float temp_output_19_0_g83168 = TVE_ExtrasUsage[(int)temp_output_84_0_g83164];
				float4 temp_output_93_19_g83164 = TVE_ExtrasCoords;
				float3 lerpResult4827_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _ExtrasPositionMode);
				half2 UV96_g83164 = ( (temp_output_93_19_g83164).zw + ( (temp_output_93_19_g83164).xy * (lerpResult4827_g83150).xz ) );
				float4 tex2DArrayNode48_g83164 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g83164,temp_output_84_0_g83164), 0.0 );
				float4 temp_output_17_0_g83168 = tex2DArrayNode48_g83164;
				float4 temp_output_94_85_g83164 = TVE_ExtrasParams;
				float4 temp_output_3_0_g83168 = temp_output_94_85_g83164;
				float4 ifLocalVar18_g83168 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83168 >= 0.5 )
				ifLocalVar18_g83168 = temp_output_17_0_g83168;
				else
				ifLocalVar18_g83168 = temp_output_3_0_g83168;
				float4 lerpResult22_g83168 = lerp( temp_output_3_0_g83168 , temp_output_17_0_g83168 , temp_output_19_0_g83168);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83168 = lerpResult22_g83168;
				#else
				float4 staticSwitch24_g83168 = ifLocalVar18_g83168;
				#endif
				half4 Global_Extras_Params5440_g83150 = staticSwitch24_g83168;
				float4 break456_g83177 = Global_Extras_Params5440_g83150;
				half Global_Extras_Overlay156_g83150 = break456_g83177.z;
				float lerpResult1065_g83150 = lerp( 1.0 , Global_MeshVariation5104_g83150 , _OverlayVariationValue);
				half Overlay_Variation4560_g83150 = lerpResult1065_g83150;
				half Overlay_Value5738_g83150 = ( _GlobalOverlay * Global_Extras_Overlay156_g83150 * Overlay_Variation4560_g83150 );
				half4 Weights52_g83652 = Terrain_Weights_046781_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83700) = _NormalTex1;
				SamplerState Sampler238_g83700 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83700 = Input_Coords_016785_g83651;
				half4 Coords238_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition238_g83700 = ase_worldPos;
				half4 localSamplePlanar2D238_g83700 = SamplePlanar2D( Texture238_g83700 , Sampler238_g83700 , Coords238_g83700 , WorldPosition238_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83700) = _NormalTex1;
				SamplerState Sampler246_g83700 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition246_g83700 = ase_worldPos;
				half3 WorldNormal246_g83700 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83700 = SamplePlanar3D( Texture246_g83700 , Sampler246_g83700 , Coords246_g83700 , WorldPosition246_g83700 , WorldNormal246_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83700) = _NormalTex1;
				SamplerState Sampler234_g83700 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83700 = temp_output_37_0_g83700;
				float3 WorldPosition234_g83700 = ase_worldPos;
				float4 localSampleStochastic2D234_g83700 = SampleStochastic2D( Texture234_g83700 , Sampler234_g83700 , Coords234_g83700 , WorldPosition234_g83700 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83700) = _NormalTex1;
				SamplerState Sampler263_g83700 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83700 = temp_output_37_0_g83700;
				half3 WorldPosition263_g83700 = ase_worldPos;
				half3 WorldNormal263_g83700 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83700 = SampleStochastic3D( Texture263_g83700 , Sampler263_g83700 , Coords263_g83700 , WorldPosition263_g83700 , WorldNormal263_g83700 );
				#if defined(TVE_SAMPLE_01_PLANAR_2D)
				float4 staticSwitch8635_g83651 = localSamplePlanar2D238_g83700;
				#elif defined(TVE_SAMPLE_01_PLANAR_3D)
				float4 staticSwitch8635_g83651 = localSamplePlanar3D246_g83700;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_2D)
				float4 staticSwitch8635_g83651 = localSampleStochastic2D234_g83700;
				#elif defined(TVE_SAMPLE_01_STOCHASTIC_3D)
				float4 staticSwitch8635_g83651 = localSampleStochastic3D263_g83700;
				#else
				float4 staticSwitch8635_g83651 = localSamplePlanar2D238_g83700;
				#endif
				half4 Layer133_g83652 = staticSwitch8635_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83701) = _NormalTex2;
				SamplerState Sampler238_g83701 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83701 = Input_Coords_026787_g83651;
				half4 Coords238_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition238_g83701 = ase_worldPos;
				half4 localSamplePlanar2D238_g83701 = SamplePlanar2D( Texture238_g83701 , Sampler238_g83701 , Coords238_g83701 , WorldPosition238_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83701) = _NormalTex2;
				SamplerState Sampler246_g83701 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition246_g83701 = ase_worldPos;
				half3 WorldNormal246_g83701 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83701 = SamplePlanar3D( Texture246_g83701 , Sampler246_g83701 , Coords246_g83701 , WorldPosition246_g83701 , WorldNormal246_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83701) = _NormalTex2;
				SamplerState Sampler234_g83701 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83701 = temp_output_37_0_g83701;
				float3 WorldPosition234_g83701 = ase_worldPos;
				float4 localSampleStochastic2D234_g83701 = SampleStochastic2D( Texture234_g83701 , Sampler234_g83701 , Coords234_g83701 , WorldPosition234_g83701 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83701) = _NormalTex2;
				SamplerState Sampler263_g83701 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83701 = temp_output_37_0_g83701;
				half3 WorldPosition263_g83701 = ase_worldPos;
				half3 WorldNormal263_g83701 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83701 = SampleStochastic3D( Texture263_g83701 , Sampler263_g83701 , Coords263_g83701 , WorldPosition263_g83701 , WorldNormal263_g83701 );
				#if defined(TVE_SAMPLE_02_PLANAR_2D)
				float4 staticSwitch8636_g83651 = localSamplePlanar2D238_g83701;
				#elif defined(TVE_SAMPLE_02_PLANAR_3D)
				float4 staticSwitch8636_g83651 = localSamplePlanar3D246_g83701;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_2D)
				float4 staticSwitch8636_g83651 = localSampleStochastic2D234_g83701;
				#elif defined(TVE_SAMPLE_02_STOCHASTIC_3D)
				float4 staticSwitch8636_g83651 = localSampleStochastic3D263_g83701;
				#else
				float4 staticSwitch8636_g83651 = localSamplePlanar2D238_g83701;
				#endif
				half4 Layer237_g83652 = staticSwitch8636_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83702) = _NormalTex3;
				SamplerState Sampler238_g83702 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83702 = Input_Coords_036789_g83651;
				half4 Coords238_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition238_g83702 = ase_worldPos;
				half4 localSamplePlanar2D238_g83702 = SamplePlanar2D( Texture238_g83702 , Sampler238_g83702 , Coords238_g83702 , WorldPosition238_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83702) = _NormalTex3;
				SamplerState Sampler246_g83702 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition246_g83702 = ase_worldPos;
				half3 WorldNormal246_g83702 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83702 = SamplePlanar3D( Texture246_g83702 , Sampler246_g83702 , Coords246_g83702 , WorldPosition246_g83702 , WorldNormal246_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83702) = _NormalTex3;
				SamplerState Sampler234_g83702 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83702 = temp_output_37_0_g83702;
				float3 WorldPosition234_g83702 = ase_worldPos;
				float4 localSampleStochastic2D234_g83702 = SampleStochastic2D( Texture234_g83702 , Sampler234_g83702 , Coords234_g83702 , WorldPosition234_g83702 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83702) = _NormalTex3;
				SamplerState Sampler263_g83702 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83702 = temp_output_37_0_g83702;
				half3 WorldPosition263_g83702 = ase_worldPos;
				half3 WorldNormal263_g83702 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83702 = SampleStochastic3D( Texture263_g83702 , Sampler263_g83702 , Coords263_g83702 , WorldPosition263_g83702 , WorldNormal263_g83702 );
				#if defined(TVE_SAMPLE_03_PLANAR_2D)
				float4 staticSwitch8637_g83651 = localSamplePlanar2D238_g83702;
				#elif defined(TVE_SAMPLE_03_PLANAR_3D)
				float4 staticSwitch8637_g83651 = localSamplePlanar3D246_g83702;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_2D)
				float4 staticSwitch8637_g83651 = localSampleStochastic2D234_g83702;
				#elif defined(TVE_SAMPLE_03_STOCHASTIC_3D)
				float4 staticSwitch8637_g83651 = localSampleStochastic3D263_g83702;
				#else
				float4 staticSwitch8637_g83651 = localSamplePlanar2D238_g83702;
				#endif
				half4 Layer338_g83652 = staticSwitch8637_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83703) = _NormalTex4;
				SamplerState Sampler238_g83703 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83703 = Input_Coords_046791_g83651;
				half4 Coords238_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition238_g83703 = ase_worldPos;
				half4 localSamplePlanar2D238_g83703 = SamplePlanar2D( Texture238_g83703 , Sampler238_g83703 , Coords238_g83703 , WorldPosition238_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83703) = _NormalTex4;
				SamplerState Sampler246_g83703 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition246_g83703 = ase_worldPos;
				half3 WorldNormal246_g83703 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83703 = SamplePlanar3D( Texture246_g83703 , Sampler246_g83703 , Coords246_g83703 , WorldPosition246_g83703 , WorldNormal246_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83703) = _NormalTex4;
				SamplerState Sampler234_g83703 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83703 = temp_output_37_0_g83703;
				float3 WorldPosition234_g83703 = ase_worldPos;
				float4 localSampleStochastic2D234_g83703 = SampleStochastic2D( Texture234_g83703 , Sampler234_g83703 , Coords234_g83703 , WorldPosition234_g83703 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83703) = _NormalTex4;
				SamplerState Sampler263_g83703 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83703 = temp_output_37_0_g83703;
				half3 WorldPosition263_g83703 = ase_worldPos;
				half3 WorldNormal263_g83703 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83703 = SampleStochastic3D( Texture263_g83703 , Sampler263_g83703 , Coords263_g83703 , WorldPosition263_g83703 , WorldNormal263_g83703 );
				#if defined(TVE_SAMPLE_04_PLANAR_2D)
				float4 staticSwitch8638_g83651 = localSamplePlanar2D238_g83703;
				#elif defined(TVE_SAMPLE_04_PLANAR_3D)
				float4 staticSwitch8638_g83651 = localSamplePlanar3D246_g83703;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_2D)
				float4 staticSwitch8638_g83651 = localSampleStochastic2D234_g83703;
				#elif defined(TVE_SAMPLE_04_STOCHASTIC_3D)
				float4 staticSwitch8638_g83651 = localSampleStochastic3D263_g83703;
				#else
				float4 staticSwitch8638_g83651 = localSamplePlanar2D238_g83703;
				#endif
				half4 Layer439_g83652 = staticSwitch8638_g83651;
				float4 weightedBlendVar31_g83652 = Weights52_g83652;
				float4 weightedBlend31_g83652 = ( weightedBlendVar31_g83652.x*Layer133_g83652 + weightedBlendVar31_g83652.y*Layer237_g83652 + weightedBlendVar31_g83652.z*Layer338_g83652 + weightedBlendVar31_g83652.w*Layer439_g83652 );
				half4 Terrain_Normal_047202_g83651 = weightedBlend31_g83652;
				half4 Layer_045_g83662 = Terrain_Normal_047202_g83651;
				half4 Weights52_g83668 = Terrain_Weights_087340_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83712) = _NormalTex5;
				SamplerState Sampler238_g83712 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83712 = Input_Coords_058750_g83651;
				half4 Coords238_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition238_g83712 = ase_worldPos;
				half4 localSamplePlanar2D238_g83712 = SamplePlanar2D( Texture238_g83712 , Sampler238_g83712 , Coords238_g83712 , WorldPosition238_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83712) = _NormalTex5;
				SamplerState Sampler246_g83712 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition246_g83712 = ase_worldPos;
				half3 WorldNormal246_g83712 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83712 = SamplePlanar3D( Texture246_g83712 , Sampler246_g83712 , Coords246_g83712 , WorldPosition246_g83712 , WorldNormal246_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83712) = _NormalTex5;
				SamplerState Sampler234_g83712 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83712 = temp_output_37_0_g83712;
				float3 WorldPosition234_g83712 = ase_worldPos;
				float4 localSampleStochastic2D234_g83712 = SampleStochastic2D( Texture234_g83712 , Sampler234_g83712 , Coords234_g83712 , WorldPosition234_g83712 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83712) = _NormalTex5;
				SamplerState Sampler263_g83712 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83712 = temp_output_37_0_g83712;
				half3 WorldPosition263_g83712 = ase_worldPos;
				half3 WorldNormal263_g83712 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83712 = SampleStochastic3D( Texture263_g83712 , Sampler263_g83712 , Coords263_g83712 , WorldPosition263_g83712 , WorldNormal263_g83712 );
				#if defined(TVE_SAMPLE_05_PLANAR_2D)
				float4 staticSwitch8686_g83651 = localSamplePlanar2D238_g83712;
				#elif defined(TVE_SAMPLE_05_PLANAR_3D)
				float4 staticSwitch8686_g83651 = localSamplePlanar3D246_g83712;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_2D)
				float4 staticSwitch8686_g83651 = localSampleStochastic2D234_g83712;
				#elif defined(TVE_SAMPLE_05_STOCHASTIC_3D)
				float4 staticSwitch8686_g83651 = localSampleStochastic3D263_g83712;
				#else
				float4 staticSwitch8686_g83651 = localSamplePlanar2D238_g83712;
				#endif
				half4 Layer133_g83668 = staticSwitch8686_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83713) = _NormalTex6;
				SamplerState Sampler238_g83713 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83713 = Input_Coords_068751_g83651;
				half4 Coords238_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition238_g83713 = ase_worldPos;
				half4 localSamplePlanar2D238_g83713 = SamplePlanar2D( Texture238_g83713 , Sampler238_g83713 , Coords238_g83713 , WorldPosition238_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83713) = _NormalTex6;
				SamplerState Sampler246_g83713 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition246_g83713 = ase_worldPos;
				half3 WorldNormal246_g83713 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83713 = SamplePlanar3D( Texture246_g83713 , Sampler246_g83713 , Coords246_g83713 , WorldPosition246_g83713 , WorldNormal246_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83713) = _NormalTex6;
				SamplerState Sampler234_g83713 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83713 = temp_output_37_0_g83713;
				float3 WorldPosition234_g83713 = ase_worldPos;
				float4 localSampleStochastic2D234_g83713 = SampleStochastic2D( Texture234_g83713 , Sampler234_g83713 , Coords234_g83713 , WorldPosition234_g83713 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83713) = _NormalTex6;
				SamplerState Sampler263_g83713 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83713 = temp_output_37_0_g83713;
				half3 WorldPosition263_g83713 = ase_worldPos;
				half3 WorldNormal263_g83713 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83713 = SampleStochastic3D( Texture263_g83713 , Sampler263_g83713 , Coords263_g83713 , WorldPosition263_g83713 , WorldNormal263_g83713 );
				#if defined(TVE_SAMPLE_06_PLANAR_2D)
				float4 staticSwitch8687_g83651 = localSamplePlanar2D238_g83713;
				#elif defined(TVE_SAMPLE_06_PLANAR_3D)
				float4 staticSwitch8687_g83651 = localSamplePlanar3D246_g83713;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_2D)
				float4 staticSwitch8687_g83651 = localSampleStochastic2D234_g83713;
				#elif defined(TVE_SAMPLE_06_STOCHASTIC_3D)
				float4 staticSwitch8687_g83651 = localSampleStochastic3D263_g83713;
				#else
				float4 staticSwitch8687_g83651 = localSamplePlanar2D238_g83713;
				#endif
				half4 Layer237_g83668 = staticSwitch8687_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83714) = _NormalTex7;
				SamplerState Sampler238_g83714 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83714 = Input_Coords_078752_g83651;
				half4 Coords238_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition238_g83714 = ase_worldPos;
				half4 localSamplePlanar2D238_g83714 = SamplePlanar2D( Texture238_g83714 , Sampler238_g83714 , Coords238_g83714 , WorldPosition238_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83714) = _NormalTex7;
				SamplerState Sampler246_g83714 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition246_g83714 = ase_worldPos;
				half3 WorldNormal246_g83714 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83714 = SamplePlanar3D( Texture246_g83714 , Sampler246_g83714 , Coords246_g83714 , WorldPosition246_g83714 , WorldNormal246_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83714) = _NormalTex7;
				SamplerState Sampler234_g83714 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83714 = temp_output_37_0_g83714;
				float3 WorldPosition234_g83714 = ase_worldPos;
				float4 localSampleStochastic2D234_g83714 = SampleStochastic2D( Texture234_g83714 , Sampler234_g83714 , Coords234_g83714 , WorldPosition234_g83714 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83714) = _NormalTex7;
				SamplerState Sampler263_g83714 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83714 = temp_output_37_0_g83714;
				half3 WorldPosition263_g83714 = ase_worldPos;
				half3 WorldNormal263_g83714 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83714 = SampleStochastic3D( Texture263_g83714 , Sampler263_g83714 , Coords263_g83714 , WorldPosition263_g83714 , WorldNormal263_g83714 );
				#if defined(TVE_SAMPLE_07_PLANAR_2D)
				float4 staticSwitch8688_g83651 = localSamplePlanar2D238_g83714;
				#elif defined(TVE_SAMPLE_07_PLANAR_3D)
				float4 staticSwitch8688_g83651 = localSamplePlanar3D246_g83714;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_2D)
				float4 staticSwitch8688_g83651 = localSampleStochastic2D234_g83714;
				#elif defined(TVE_SAMPLE_07_STOCHASTIC_3D)
				float4 staticSwitch8688_g83651 = localSampleStochastic3D263_g83714;
				#else
				float4 staticSwitch8688_g83651 = localSamplePlanar2D238_g83714;
				#endif
				half4 Layer338_g83668 = staticSwitch8688_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83715) = _NormalTex8;
				SamplerState Sampler238_g83715 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83715 = Input_Coords_088749_g83651;
				half4 Coords238_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition238_g83715 = ase_worldPos;
				half4 localSamplePlanar2D238_g83715 = SamplePlanar2D( Texture238_g83715 , Sampler238_g83715 , Coords238_g83715 , WorldPosition238_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83715) = _NormalTex8;
				SamplerState Sampler246_g83715 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition246_g83715 = ase_worldPos;
				half3 WorldNormal246_g83715 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83715 = SamplePlanar3D( Texture246_g83715 , Sampler246_g83715 , Coords246_g83715 , WorldPosition246_g83715 , WorldNormal246_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83715) = _NormalTex8;
				SamplerState Sampler234_g83715 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83715 = temp_output_37_0_g83715;
				float3 WorldPosition234_g83715 = ase_worldPos;
				float4 localSampleStochastic2D234_g83715 = SampleStochastic2D( Texture234_g83715 , Sampler234_g83715 , Coords234_g83715 , WorldPosition234_g83715 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83715) = _NormalTex8;
				SamplerState Sampler263_g83715 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83715 = temp_output_37_0_g83715;
				half3 WorldPosition263_g83715 = ase_worldPos;
				half3 WorldNormal263_g83715 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83715 = SampleStochastic3D( Texture263_g83715 , Sampler263_g83715 , Coords263_g83715 , WorldPosition263_g83715 , WorldNormal263_g83715 );
				#if defined(TVE_SAMPLE_08_PLANAR_2D)
				float4 staticSwitch8689_g83651 = localSamplePlanar2D238_g83715;
				#elif defined(TVE_SAMPLE_08_PLANAR_3D)
				float4 staticSwitch8689_g83651 = localSamplePlanar3D246_g83715;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_2D)
				float4 staticSwitch8689_g83651 = localSampleStochastic2D234_g83715;
				#elif defined(TVE_SAMPLE_08_STOCHASTIC_3D)
				float4 staticSwitch8689_g83651 = localSampleStochastic3D263_g83715;
				#else
				float4 staticSwitch8689_g83651 = localSamplePlanar2D238_g83715;
				#endif
				half4 Layer439_g83668 = staticSwitch8689_g83651;
				float4 weightedBlendVar31_g83668 = Weights52_g83668;
				float4 weightedBlend31_g83668 = ( weightedBlendVar31_g83668.x*Layer133_g83668 + weightedBlendVar31_g83668.y*Layer237_g83668 + weightedBlendVar31_g83668.z*Layer338_g83668 + weightedBlendVar31_g83668.w*Layer439_g83668 );
				half4 Terrain_Normal_088684_g83651 = weightedBlend31_g83668;
				half4 Layer_0810_g83662 = Terrain_Normal_088684_g83651;
				half4 Weights52_g83678 = Terrain_Weights_127710_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83724) = _NormalTex9;
				SamplerState Sampler238_g83724 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83724 = Input_Coords_098833_g83651;
				half4 Coords238_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition238_g83724 = ase_worldPos;
				half4 localSamplePlanar2D238_g83724 = SamplePlanar2D( Texture238_g83724 , Sampler238_g83724 , Coords238_g83724 , WorldPosition238_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83724) = _NormalTex9;
				SamplerState Sampler246_g83724 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition246_g83724 = ase_worldPos;
				half3 WorldNormal246_g83724 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83724 = SamplePlanar3D( Texture246_g83724 , Sampler246_g83724 , Coords246_g83724 , WorldPosition246_g83724 , WorldNormal246_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83724) = _NormalTex9;
				SamplerState Sampler234_g83724 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83724 = temp_output_37_0_g83724;
				float3 WorldPosition234_g83724 = ase_worldPos;
				float4 localSampleStochastic2D234_g83724 = SampleStochastic2D( Texture234_g83724 , Sampler234_g83724 , Coords234_g83724 , WorldPosition234_g83724 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83724) = _NormalTex9;
				SamplerState Sampler263_g83724 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83724 = temp_output_37_0_g83724;
				half3 WorldPosition263_g83724 = ase_worldPos;
				half3 WorldNormal263_g83724 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83724 = SampleStochastic3D( Texture263_g83724 , Sampler263_g83724 , Coords263_g83724 , WorldPosition263_g83724 , WorldNormal263_g83724 );
				#if defined(TVE_SAMPLE_09_PLANAR_2D)
				float4 staticSwitch8849_g83651 = localSamplePlanar2D238_g83724;
				#elif defined(TVE_SAMPLE_09_PLANAR_3D)
				float4 staticSwitch8849_g83651 = localSamplePlanar3D246_g83724;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_2D)
				float4 staticSwitch8849_g83651 = localSampleStochastic2D234_g83724;
				#elif defined(TVE_SAMPLE_09_STOCHASTIC_3D)
				float4 staticSwitch8849_g83651 = localSampleStochastic3D263_g83724;
				#else
				float4 staticSwitch8849_g83651 = localSamplePlanar2D238_g83724;
				#endif
				half4 Layer133_g83678 = staticSwitch8849_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83725) = _NormalTex10;
				SamplerState Sampler238_g83725 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83725 = Input_Coords_108834_g83651;
				half4 Coords238_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition238_g83725 = ase_worldPos;
				half4 localSamplePlanar2D238_g83725 = SamplePlanar2D( Texture238_g83725 , Sampler238_g83725 , Coords238_g83725 , WorldPosition238_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83725) = _NormalTex10;
				SamplerState Sampler246_g83725 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition246_g83725 = ase_worldPos;
				half3 WorldNormal246_g83725 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83725 = SamplePlanar3D( Texture246_g83725 , Sampler246_g83725 , Coords246_g83725 , WorldPosition246_g83725 , WorldNormal246_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83725) = _NormalTex10;
				SamplerState Sampler234_g83725 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83725 = temp_output_37_0_g83725;
				float3 WorldPosition234_g83725 = ase_worldPos;
				float4 localSampleStochastic2D234_g83725 = SampleStochastic2D( Texture234_g83725 , Sampler234_g83725 , Coords234_g83725 , WorldPosition234_g83725 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83725) = _NormalTex10;
				SamplerState Sampler263_g83725 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83725 = temp_output_37_0_g83725;
				half3 WorldPosition263_g83725 = ase_worldPos;
				half3 WorldNormal263_g83725 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83725 = SampleStochastic3D( Texture263_g83725 , Sampler263_g83725 , Coords263_g83725 , WorldPosition263_g83725 , WorldNormal263_g83725 );
				#if defined(TVE_SAMPLE_10_PLANAR_2D)
				float4 staticSwitch8876_g83651 = localSamplePlanar2D238_g83725;
				#elif defined(TVE_SAMPLE_10_PLANAR_3D)
				float4 staticSwitch8876_g83651 = localSamplePlanar3D246_g83725;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_2D)
				float4 staticSwitch8876_g83651 = localSampleStochastic2D234_g83725;
				#elif defined(TVE_SAMPLE_10_STOCHASTIC_3D)
				float4 staticSwitch8876_g83651 = localSampleStochastic3D263_g83725;
				#else
				float4 staticSwitch8876_g83651 = localSamplePlanar2D238_g83725;
				#endif
				half4 Layer237_g83678 = staticSwitch8876_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83726) = _NormalTex11;
				SamplerState Sampler238_g83726 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83726 = Input_Coords_118835_g83651;
				half4 Coords238_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition238_g83726 = ase_worldPos;
				half4 localSamplePlanar2D238_g83726 = SamplePlanar2D( Texture238_g83726 , Sampler238_g83726 , Coords238_g83726 , WorldPosition238_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83726) = _NormalTex11;
				SamplerState Sampler246_g83726 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition246_g83726 = ase_worldPos;
				half3 WorldNormal246_g83726 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83726 = SamplePlanar3D( Texture246_g83726 , Sampler246_g83726 , Coords246_g83726 , WorldPosition246_g83726 , WorldNormal246_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83726) = _NormalTex11;
				SamplerState Sampler234_g83726 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83726 = temp_output_37_0_g83726;
				float3 WorldPosition234_g83726 = ase_worldPos;
				float4 localSampleStochastic2D234_g83726 = SampleStochastic2D( Texture234_g83726 , Sampler234_g83726 , Coords234_g83726 , WorldPosition234_g83726 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83726) = _NormalTex11;
				SamplerState Sampler263_g83726 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83726 = temp_output_37_0_g83726;
				half3 WorldPosition263_g83726 = ase_worldPos;
				half3 WorldNormal263_g83726 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83726 = SampleStochastic3D( Texture263_g83726 , Sampler263_g83726 , Coords263_g83726 , WorldPosition263_g83726 , WorldNormal263_g83726 );
				#if defined(TVE_SAMPLE_11_PLANAR_2D)
				float4 staticSwitch8850_g83651 = localSamplePlanar2D238_g83726;
				#elif defined(TVE_SAMPLE_11_PLANAR_3D)
				float4 staticSwitch8850_g83651 = localSamplePlanar3D246_g83726;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_2D)
				float4 staticSwitch8850_g83651 = localSampleStochastic2D234_g83726;
				#elif defined(TVE_SAMPLE_11_STOCHASTIC_3D)
				float4 staticSwitch8850_g83651 = localSampleStochastic3D263_g83726;
				#else
				float4 staticSwitch8850_g83651 = localSamplePlanar2D238_g83726;
				#endif
				half4 Layer338_g83678 = staticSwitch8850_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83727) = _NormalTex12;
				SamplerState Sampler238_g83727 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83727 = Input_Coords_128836_g83651;
				half4 Coords238_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition238_g83727 = ase_worldPos;
				half4 localSamplePlanar2D238_g83727 = SamplePlanar2D( Texture238_g83727 , Sampler238_g83727 , Coords238_g83727 , WorldPosition238_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83727) = _NormalTex12;
				SamplerState Sampler246_g83727 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition246_g83727 = ase_worldPos;
				half3 WorldNormal246_g83727 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83727 = SamplePlanar3D( Texture246_g83727 , Sampler246_g83727 , Coords246_g83727 , WorldPosition246_g83727 , WorldNormal246_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83727) = _NormalTex12;
				SamplerState Sampler234_g83727 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83727 = temp_output_37_0_g83727;
				float3 WorldPosition234_g83727 = ase_worldPos;
				float4 localSampleStochastic2D234_g83727 = SampleStochastic2D( Texture234_g83727 , Sampler234_g83727 , Coords234_g83727 , WorldPosition234_g83727 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83727) = _NormalTex12;
				SamplerState Sampler263_g83727 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83727 = temp_output_37_0_g83727;
				half3 WorldPosition263_g83727 = ase_worldPos;
				half3 WorldNormal263_g83727 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83727 = SampleStochastic3D( Texture263_g83727 , Sampler263_g83727 , Coords263_g83727 , WorldPosition263_g83727 , WorldNormal263_g83727 );
				#if defined(TVE_SAMPLE_12_PLANAR_2D)
				float4 staticSwitch8877_g83651 = localSamplePlanar2D238_g83727;
				#elif defined(TVE_SAMPLE_12_PLANAR_3D)
				float4 staticSwitch8877_g83651 = localSamplePlanar3D246_g83727;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_2D)
				float4 staticSwitch8877_g83651 = localSampleStochastic2D234_g83727;
				#elif defined(TVE_SAMPLE_12_STOCHASTIC_3D)
				float4 staticSwitch8877_g83651 = localSampleStochastic3D263_g83727;
				#else
				float4 staticSwitch8877_g83651 = localSamplePlanar2D238_g83727;
				#endif
				half4 Layer439_g83678 = staticSwitch8877_g83651;
				float4 weightedBlendVar31_g83678 = Weights52_g83678;
				float4 weightedBlend31_g83678 = ( weightedBlendVar31_g83678.x*Layer133_g83678 + weightedBlendVar31_g83678.y*Layer237_g83678 + weightedBlendVar31_g83678.z*Layer338_g83678 + weightedBlendVar31_g83678.w*Layer439_g83678 );
				half4 Terrain_Normal_128865_g83651 = weightedBlend31_g83678;
				half4 Layer_1243_g83662 = Terrain_Normal_128865_g83651;
				half4 Weights52_g83688 = Terrain_Weights_167709_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83743) = _NormalTex13;
				SamplerState Sampler238_g83743 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83743 = Input_Coords_138960_g83651;
				half4 Coords238_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition238_g83743 = ase_worldPos;
				half4 localSamplePlanar2D238_g83743 = SamplePlanar2D( Texture238_g83743 , Sampler238_g83743 , Coords238_g83743 , WorldPosition238_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83743) = _NormalTex13;
				SamplerState Sampler246_g83743 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition246_g83743 = ase_worldPos;
				half3 WorldNormal246_g83743 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83743 = SamplePlanar3D( Texture246_g83743 , Sampler246_g83743 , Coords246_g83743 , WorldPosition246_g83743 , WorldNormal246_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83743) = _NormalTex13;
				SamplerState Sampler234_g83743 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83743 = temp_output_37_0_g83743;
				float3 WorldPosition234_g83743 = ase_worldPos;
				float4 localSampleStochastic2D234_g83743 = SampleStochastic2D( Texture234_g83743 , Sampler234_g83743 , Coords234_g83743 , WorldPosition234_g83743 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83743) = _NormalTex13;
				SamplerState Sampler263_g83743 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83743 = temp_output_37_0_g83743;
				half3 WorldPosition263_g83743 = ase_worldPos;
				half3 WorldNormal263_g83743 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83743 = SampleStochastic3D( Texture263_g83743 , Sampler263_g83743 , Coords263_g83743 , WorldPosition263_g83743 , WorldNormal263_g83743 );
				#if defined(TVE_SAMPLE_13_PLANAR_2D)
				float4 staticSwitch8991_g83651 = localSamplePlanar2D238_g83743;
				#elif defined(TVE_SAMPLE_13_PLANAR_3D)
				float4 staticSwitch8991_g83651 = localSamplePlanar3D246_g83743;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_2D)
				float4 staticSwitch8991_g83651 = localSampleStochastic2D234_g83743;
				#elif defined(TVE_SAMPLE_13_STOCHASTIC_3D)
				float4 staticSwitch8991_g83651 = localSampleStochastic3D263_g83743;
				#else
				float4 staticSwitch8991_g83651 = localSamplePlanar2D238_g83743;
				#endif
				half4 Layer133_g83688 = staticSwitch8991_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83736) = _NormalTex14;
				SamplerState Sampler238_g83736 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83736 = Input_Coords_148961_g83651;
				half4 Coords238_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition238_g83736 = ase_worldPos;
				half4 localSamplePlanar2D238_g83736 = SamplePlanar2D( Texture238_g83736 , Sampler238_g83736 , Coords238_g83736 , WorldPosition238_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83736) = _NormalTex14;
				SamplerState Sampler246_g83736 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition246_g83736 = ase_worldPos;
				half3 WorldNormal246_g83736 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83736 = SamplePlanar3D( Texture246_g83736 , Sampler246_g83736 , Coords246_g83736 , WorldPosition246_g83736 , WorldNormal246_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83736) = _NormalTex14;
				SamplerState Sampler234_g83736 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83736 = temp_output_37_0_g83736;
				float3 WorldPosition234_g83736 = ase_worldPos;
				float4 localSampleStochastic2D234_g83736 = SampleStochastic2D( Texture234_g83736 , Sampler234_g83736 , Coords234_g83736 , WorldPosition234_g83736 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83736) = _NormalTex14;
				SamplerState Sampler263_g83736 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83736 = temp_output_37_0_g83736;
				half3 WorldPosition263_g83736 = ase_worldPos;
				half3 WorldNormal263_g83736 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83736 = SampleStochastic3D( Texture263_g83736 , Sampler263_g83736 , Coords263_g83736 , WorldPosition263_g83736 , WorldNormal263_g83736 );
				#if defined(TVE_SAMPLE_14_PLANAR_2D)
				float4 staticSwitch8990_g83651 = localSamplePlanar2D238_g83736;
				#elif defined(TVE_SAMPLE_14_PLANAR_3D)
				float4 staticSwitch8990_g83651 = localSamplePlanar3D246_g83736;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_2D)
				float4 staticSwitch8990_g83651 = localSampleStochastic2D234_g83736;
				#elif defined(TVE_SAMPLE_14_STOCHASTIC_3D)
				float4 staticSwitch8990_g83651 = localSampleStochastic3D263_g83736;
				#else
				float4 staticSwitch8990_g83651 = localSamplePlanar2D238_g83736;
				#endif
				half4 Layer237_g83688 = staticSwitch8990_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83737) = _NormalTex15;
				SamplerState Sampler238_g83737 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83737 = Input_Coords_158962_g83651;
				half4 Coords238_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition238_g83737 = ase_worldPos;
				half4 localSamplePlanar2D238_g83737 = SamplePlanar2D( Texture238_g83737 , Sampler238_g83737 , Coords238_g83737 , WorldPosition238_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83737) = _NormalTex15;
				SamplerState Sampler246_g83737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition246_g83737 = ase_worldPos;
				half3 WorldNormal246_g83737 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83737 = SamplePlanar3D( Texture246_g83737 , Sampler246_g83737 , Coords246_g83737 , WorldPosition246_g83737 , WorldNormal246_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83737) = _NormalTex15;
				SamplerState Sampler234_g83737 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83737 = temp_output_37_0_g83737;
				float3 WorldPosition234_g83737 = ase_worldPos;
				float4 localSampleStochastic2D234_g83737 = SampleStochastic2D( Texture234_g83737 , Sampler234_g83737 , Coords234_g83737 , WorldPosition234_g83737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83737) = _NormalTex15;
				SamplerState Sampler263_g83737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83737 = temp_output_37_0_g83737;
				half3 WorldPosition263_g83737 = ase_worldPos;
				half3 WorldNormal263_g83737 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83737 = SampleStochastic3D( Texture263_g83737 , Sampler263_g83737 , Coords263_g83737 , WorldPosition263_g83737 , WorldNormal263_g83737 );
				#if defined(TVE_SAMPLE_15_PLANAR_2D)
				float4 staticSwitch8989_g83651 = localSamplePlanar2D238_g83737;
				#elif defined(TVE_SAMPLE_15_PLANAR_3D)
				float4 staticSwitch8989_g83651 = localSamplePlanar3D246_g83737;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_2D)
				float4 staticSwitch8989_g83651 = localSampleStochastic2D234_g83737;
				#elif defined(TVE_SAMPLE_15_STOCHASTIC_3D)
				float4 staticSwitch8989_g83651 = localSampleStochastic3D263_g83737;
				#else
				float4 staticSwitch8989_g83651 = localSamplePlanar2D238_g83737;
				#endif
				half4 Layer338_g83688 = staticSwitch8989_g83651;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g83738) = _NormalTex16;
				SamplerState Sampler238_g83738 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g83738 = Input_Coords_168959_g83651;
				half4 Coords238_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition238_g83738 = ase_worldPos;
				half4 localSamplePlanar2D238_g83738 = SamplePlanar2D( Texture238_g83738 , Sampler238_g83738 , Coords238_g83738 , WorldPosition238_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g83738) = _NormalTex16;
				SamplerState Sampler246_g83738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition246_g83738 = ase_worldPos;
				half3 WorldNormal246_g83738 = ase_worldNormal;
				half4 localSamplePlanar3D246_g83738 = SamplePlanar3D( Texture246_g83738 , Sampler246_g83738 , Coords246_g83738 , WorldPosition246_g83738 , WorldNormal246_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g83738) = _NormalTex16;
				SamplerState Sampler234_g83738 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g83738 = temp_output_37_0_g83738;
				float3 WorldPosition234_g83738 = ase_worldPos;
				float4 localSampleStochastic2D234_g83738 = SampleStochastic2D( Texture234_g83738 , Sampler234_g83738 , Coords234_g83738 , WorldPosition234_g83738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g83738) = _NormalTex16;
				SamplerState Sampler263_g83738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g83738 = temp_output_37_0_g83738;
				half3 WorldPosition263_g83738 = ase_worldPos;
				half3 WorldNormal263_g83738 = ase_worldNormal;
				half4 localSampleStochastic3D263_g83738 = SampleStochastic3D( Texture263_g83738 , Sampler263_g83738 , Coords263_g83738 , WorldPosition263_g83738 , WorldNormal263_g83738 );
				#if defined(TVE_SAMPLE_16_PLANAR_2D)
				float4 staticSwitch8988_g83651 = localSamplePlanar2D238_g83738;
				#elif defined(TVE_SAMPLE_16_PLANAR_3D)
				float4 staticSwitch8988_g83651 = localSamplePlanar3D246_g83738;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_2D)
				float4 staticSwitch8988_g83651 = localSampleStochastic2D234_g83738;
				#elif defined(TVE_SAMPLE_16_STOCHASTIC_3D)
				float4 staticSwitch8988_g83651 = localSampleStochastic3D263_g83738;
				#else
				float4 staticSwitch8988_g83651 = localSamplePlanar2D238_g83738;
				#endif
				half4 Layer439_g83688 = staticSwitch8988_g83651;
				float4 weightedBlendVar31_g83688 = Weights52_g83688;
				float4 weightedBlend31_g83688 = ( weightedBlendVar31_g83688.x*Layer133_g83688 + weightedBlendVar31_g83688.y*Layer237_g83688 + weightedBlendVar31_g83688.z*Layer338_g83688 + weightedBlendVar31_g83688.w*Layer439_g83688 );
				half4 Terrain_Normal_168987_g83651 = weightedBlend31_g83688;
				half4 Layer_1644_g83662 = Terrain_Normal_168987_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83662 = Layer_045_g83662;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 + Layer_1243_g83662 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83662 = ( Layer_045_g83662 + Layer_0810_g83662 + Layer_1243_g83662 + Layer_1644_g83662 );
				#else
				float4 staticSwitch40_g83662 = Layer_045_g83662;
				#endif
				half4 Blend_Normal7512_g83651 = staticSwitch40_g83662;
				half4 Normal_Packed45_g83746 = Blend_Normal7512_g83651;
				float2 appendResult58_g83746 = (float2(( (Normal_Packed45_g83746).x * (Normal_Packed45_g83746).w ) , (Normal_Packed45_g83746).y));
				half2 Normal_Default50_g83746 = appendResult58_g83746;
				half2 Normal_ASTC41_g83746 = (Normal_Packed45_g83746).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83746 = Normal_ASTC41_g83746;
				#else
				float2 staticSwitch38_g83746 = Normal_Default50_g83746;
				#endif
				half2 Normal_NO_DTX544_g83746 = (Normal_Packed45_g83746).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83746 = Normal_NO_DTX544_g83746;
				#else
				float2 staticSwitch37_g83746 = staticSwitch38_g83746;
				#endif
				half4 Weights52_g83654 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83654 = temp_output_6970_0_g83651;
				half4 Layer237_g83654 = temp_output_6977_0_g83651;
				half4 Layer338_g83654 = temp_output_6978_0_g83651;
				half4 Layer439_g83654 = temp_output_6983_0_g83651;
				float4 weightedBlendVar31_g83654 = Weights52_g83654;
				float4 weightedBlend31_g83654 = ( weightedBlendVar31_g83654.x*Layer133_g83654 + weightedBlendVar31_g83654.y*Layer237_g83654 + weightedBlendVar31_g83654.z*Layer338_g83654 + weightedBlendVar31_g83654.w*Layer439_g83654 );
				half4 Terrain_Masks_047203_g83651 = weightedBlend31_g83654;
				half4 Layer_045_g83664 = Terrain_Masks_047203_g83651;
				half4 Weights52_g83671 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83671 = temp_output_8714_0_g83651;
				half4 Layer237_g83671 = temp_output_8721_0_g83651;
				half4 Layer338_g83671 = temp_output_8724_0_g83651;
				half4 Layer439_g83671 = temp_output_8727_0_g83651;
				float4 weightedBlendVar31_g83671 = Weights52_g83671;
				float4 weightedBlend31_g83671 = ( weightedBlendVar31_g83671.x*Layer133_g83671 + weightedBlendVar31_g83671.y*Layer237_g83671 + weightedBlendVar31_g83671.z*Layer338_g83671 + weightedBlendVar31_g83671.w*Layer439_g83671 );
				half4 Terrain_Masks_088730_g83651 = weightedBlend31_g83671;
				half4 Layer_0810_g83664 = Terrain_Masks_088730_g83651;
				half4 Weights52_g83681 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83681 = temp_output_8815_0_g83651;
				half4 Layer237_g83681 = temp_output_8818_0_g83651;
				half4 Layer338_g83681 = temp_output_8819_0_g83651;
				half4 Layer439_g83681 = temp_output_8820_0_g83651;
				float4 weightedBlendVar31_g83681 = Weights52_g83681;
				float4 weightedBlend31_g83681 = ( weightedBlendVar31_g83681.x*Layer133_g83681 + weightedBlendVar31_g83681.y*Layer237_g83681 + weightedBlendVar31_g83681.z*Layer338_g83681 + weightedBlendVar31_g83681.w*Layer439_g83681 );
				half4 Terrain_Masks_128871_g83651 = weightedBlend31_g83681;
				half4 Layer_1243_g83664 = Terrain_Masks_128871_g83651;
				half4 Weights52_g83691 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83691 = temp_output_8931_0_g83651;
				half4 Layer237_g83691 = temp_output_8934_0_g83651;
				half4 Layer338_g83691 = temp_output_8935_0_g83651;
				half4 Layer439_g83691 = temp_output_8936_0_g83651;
				float4 weightedBlendVar31_g83691 = Weights52_g83691;
				float4 weightedBlend31_g83691 = ( weightedBlendVar31_g83691.x*Layer133_g83691 + weightedBlendVar31_g83691.y*Layer237_g83691 + weightedBlendVar31_g83691.z*Layer338_g83691 + weightedBlendVar31_g83691.w*Layer439_g83691 );
				half4 Terrain_Masks_169014_g83651 = weightedBlend31_g83691;
				half4 Layer_1644_g83664 = Terrain_Masks_169014_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83664 = Layer_045_g83664;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 + Layer_1243_g83664 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83664 = ( Layer_045_g83664 + Layer_0810_g83664 + Layer_1243_g83664 + Layer_1644_g83664 );
				#else
				float4 staticSwitch40_g83664 = Layer_045_g83664;
				#endif
				half4 Blend_Masks7420_g83651 = staticSwitch40_g83664;
				half4 Normal_Packed45_g83745 = Blend_Masks7420_g83651;
				half2 Normal_NO_DTX544_g83745 = (Normal_Packed45_g83745).wy;
				#ifdef TVE_PACKED_TEX
				float2 staticSwitch9080_g83651 = (Normal_NO_DTX544_g83745*2.0 + -1.0);
				#else
				float2 staticSwitch9080_g83651 = (staticSwitch37_g83746*2.0 + -1.0);
				#endif
				half4 Weights52_g83658 = Terrain_Weights_046781_g83651;
				half4 Layer133_g83658 = _Params1;
				half4 Layer237_g83658 = _Params2;
				half4 Layer338_g83658 = _Params3;
				half4 Layer439_g83658 = _Params4;
				float4 weightedBlendVar31_g83658 = Weights52_g83658;
				float4 weightedBlend31_g83658 = ( weightedBlendVar31_g83658.x*Layer133_g83658 + weightedBlendVar31_g83658.y*Layer237_g83658 + weightedBlendVar31_g83658.z*Layer338_g83658 + weightedBlendVar31_g83658.w*Layer439_g83658 );
				half4 Terrain_Params_047533_g83651 = weightedBlend31_g83658;
				half4 Layer_045_g83665 = Terrain_Params_047533_g83651;
				half4 Weights52_g83675 = Terrain_Weights_087340_g83651;
				half4 Layer133_g83675 = _Params5;
				half4 Layer237_g83675 = _Params6;
				half4 Layer338_g83675 = _Params7;
				half4 Layer439_g83675 = _Params8;
				float4 weightedBlendVar31_g83675 = Weights52_g83675;
				float4 weightedBlend31_g83675 = ( weightedBlendVar31_g83675.x*Layer133_g83675 + weightedBlendVar31_g83675.y*Layer237_g83675 + weightedBlendVar31_g83675.z*Layer338_g83675 + weightedBlendVar31_g83675.w*Layer439_g83675 );
				half4 Terrain_Params_088739_g83651 = weightedBlend31_g83675;
				half4 Layer_0810_g83665 = Terrain_Params_088739_g83651;
				half4 Weights52_g83685 = Terrain_Weights_127710_g83651;
				half4 Layer133_g83685 = _Params9;
				half4 Layer237_g83685 = _Params10;
				half4 Layer338_g83685 = _Params11;
				half4 Layer439_g83685 = _Params12;
				float4 weightedBlendVar31_g83685 = Weights52_g83685;
				float4 weightedBlend31_g83685 = ( weightedBlendVar31_g83685.x*Layer133_g83685 + weightedBlendVar31_g83685.y*Layer237_g83685 + weightedBlendVar31_g83685.z*Layer338_g83685 + weightedBlendVar31_g83685.w*Layer439_g83685 );
				half4 Terrain_Params_128867_g83651 = weightedBlend31_g83685;
				half4 Layer_1243_g83665 = Terrain_Params_128867_g83651;
				half4 Weights52_g83695 = Terrain_Weights_167709_g83651;
				half4 Layer133_g83695 = _Params13;
				half4 Layer237_g83695 = _Params14;
				half4 Layer338_g83695 = _Params15;
				half4 Layer439_g83695 = _Params16;
				float4 weightedBlendVar31_g83695 = Weights52_g83695;
				float4 weightedBlend31_g83695 = ( weightedBlendVar31_g83695.x*Layer133_g83695 + weightedBlendVar31_g83695.y*Layer237_g83695 + weightedBlendVar31_g83695.z*Layer338_g83695 + weightedBlendVar31_g83695.w*Layer439_g83695 );
				half4 Terrain_Params_169017_g83651 = weightedBlend31_g83695;
				half4 Layer_1644_g83665 = Terrain_Params_169017_g83651;
				#if defined(TVE_TERRAIN_04)
				float4 staticSwitch40_g83665 = Layer_045_g83665;
				#elif defined(TVE_TERRAIN_08)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 );
				#elif defined(TVE_TERRAIN_12)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 + Layer_1243_g83665 );
				#elif defined(TVE_TERRAIN_16)
				float4 staticSwitch40_g83665 = ( Layer_045_g83665 + Layer_0810_g83665 + Layer_1243_g83665 + Layer_1644_g83665 );
				#else
				float4 staticSwitch40_g83665 = Layer_045_g83665;
				#endif
				half4 Blend_Params7547_g83651 = staticSwitch40_g83665;
				half2 Normal_Planar45_g83747 = ( staticSwitch9080_g83651 * (Blend_Params7547_g83651).z );
				float2 break64_g83747 = Normal_Planar45_g83747;
				float3 appendResult65_g83747 = (float3(break64_g83747.x , 0.0 , break64_g83747.y));
				half2 Terrain_Normal8038_g83150 = ( (mul( ase_worldToTangent, appendResult65_g83747 )).xy * _TerrainNormalValue );
				float2 lerpResult7797_g83150 = lerp( Blend_Normal_Detail312_g83150 , Terrain_Normal8038_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float2 staticSwitch7796_g83150 = lerpResult7797_g83150;
				#else
				float2 staticSwitch7796_g83150 = Blend_Normal_Detail312_g83150;
				#endif
				half2 Blend_Normal_Terrain7762_g83150 = staticSwitch7796_g83150;
				float3 appendResult7377_g83150 = (float3(Blend_Normal_Terrain7762_g83150 , 1.0));
				float3 tanNormal7376_g83150 = appendResult7377_g83150;
				float3 worldNormal7376_g83150 = float3(dot(tanToWorld0,tanNormal7376_g83150), dot(tanToWorld1,tanNormal7376_g83150), dot(tanToWorld2,tanNormal7376_g83150));
				half3 Blend_NormalWS_Terrain7375_g83150 = worldNormal7376_g83150;
				float lerpResult7446_g83150 = lerp( (Blend_NormalWS_Terrain7375_g83150).y , IN.ase_normal.y , Vertex_DynamicMode5112_g83150);
				float lerpResult6757_g83150 = lerp( 1.0 , saturate( lerpResult7446_g83150 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g83150 = lerpResult6757_g83150;
				half Overlay_Shading6688_g83150 = Blend_Albedo_Globals6410_g83150;
				half Overlay_Custom6707_g83150 = 1.0;
				float lerpResult8034_g83150 = lerp( Occlusion_Mask6432_g83150 , ( 1.0 - Occlusion_Mask6432_g83150 ) , _VertexOcclusionOverlayMode);
				float lerpResult8032_g83150 = lerp( Occlusion_Alpha6463_g83150 , 1.0 , lerpResult8034_g83150);
				half Occlusion_Overlay6471_g83150 = lerpResult8032_g83150;
				float temp_output_7_0_g83273 = 0.1;
				float temp_output_10_0_g83273 = ( 0.2 - temp_output_7_0_g83273 );
				half Overlay_Mask_High6064_g83150 = saturate( ( ( ( Overlay_Value5738_g83150 * Overlay_Projection6081_g83150 * Overlay_Shading6688_g83150 * Overlay_Custom6707_g83150 * Occlusion_Overlay6471_g83150 ) - temp_output_7_0_g83273 ) / ( temp_output_10_0_g83273 + 0.0001 ) ) );
				half Overlay_Mask269_g83150 = Overlay_Mask_High6064_g83150;
				float3 lerpResult336_g83150 = lerp( Blend_Albedo_Colored863_g83150 , Global_OverlayColor1758_g83150 , Overlay_Mask269_g83150);
				half3 Blend_Albedo_Overlay359_g83150 = lerpResult336_g83150;
				half Global_WetnessContrast6502_g83150 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g83150 = break456_g83177.y;
				half Wetness_Value6343_g83150 = ( Global_Extras_Wetness305_g83150 * _GlobalWetness );
				float3 lerpResult6367_g83150 = lerp( Blend_Albedo_Overlay359_g83150 , ( Blend_Albedo_Overlay359_g83150 * Blend_Albedo_Overlay359_g83150 ) , ( Global_WetnessContrast6502_g83150 * Wetness_Value6343_g83150 ));
				half3 Blend_Albedo_Wetness6351_g83150 = lerpResult6367_g83150;
				float vertexToFrag11_g83258 = IN.ase_texcoord4.w;
				half3 Tint_Highlight_Color5771_g83150 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g83258 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g83150 = ( Blend_Albedo_Wetness6351_g83150 * Tint_Highlight_Color5771_g83150 );
				half3 Blend_Albedo_Subsurface149_g83150 = temp_output_6309_0_g83150;
				half3 Blend_Albedo_RimLight7316_g83150 = Blend_Albedo_Subsurface149_g83150;
				
				float3 temp_cast_19 = (0.0).xxx;
				half3 Emissive_Color7162_g83150 = (_EmissiveColor).rgb;
				half2 Emissive_UVs2468_g83150 = ( ( IN.ase_texcoord3.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g83282 = _EmissiveTexMinValue;
				float3 temp_cast_20 = (temp_output_7_0_g83282).xxx;
				float temp_output_10_0_g83282 = ( _EmissiveTexMaxValue - temp_output_7_0_g83282 );
				half3 Emissive_Texture7022_g83150 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g83150 )).rgb - temp_cast_20 ) / ( temp_output_10_0_g83282 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g83150 = break456_g83177.x;
				float lerpResult4206_g83150 = lerp( 1.0 , Global_Extras_Emissive4203_g83150 , _GlobalEmissive);
				half Emissive_Value7024_g83150 = ( ( lerpResult4206_g83150 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g83150 = saturate( ( Emissive_Texture7022_g83150 + Emissive_Value7024_g83150 ) );
				float3 temp_output_3_0_g83281 = ( Emissive_Color7162_g83150 * Emissive_Mask6968_g83150 );
				float temp_output_15_0_g83281 = _emissive_intensity_value;
				float3 temp_output_23_0_g83281 = ( temp_output_3_0_g83281 * temp_output_15_0_g83281 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch8018_g83150 = temp_output_23_0_g83281;
				#else
				float3 staticSwitch8018_g83150 = temp_cast_19;
				#endif
				half3 Blend_Emissive2476_g83150 = staticSwitch8018_g83150;
				half3 Terrain_Emissive7933_g83150 = ( (Blend_Specular7446_g83651).rgb * (Blend_Albedo7468_g83651).xyz );
				float3 lerpResult7927_g83150 = lerp( Blend_Emissive2476_g83150 , Terrain_Emissive7933_g83150 , Terrain_Mask7747_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7912_g83150 = lerpResult7927_g83150;
				#else
				float3 staticSwitch7912_g83150 = Blend_Emissive2476_g83150;
				#endif
				half3 Blend_Emissive_Terrain7909_g83150 = staticSwitch7912_g83150;
				
				float localCustomAlphaClip19_g83272 = ( 0.0 );
				half Main_Alpha316_g83150 = tex2DNode29_g83150.a;
				half Second_Alpha5007_g83150 = tex2DNode89_g83150.a;
				float lerpResult6153_g83150 = lerp( Main_Alpha316_g83150 , Second_Alpha5007_g83150 , Detail_Mask147_g83150);
				float lerpResult6785_g83150 = lerp( ( Main_Alpha316_g83150 * Second_Alpha5007_g83150 ) , lerpResult6153_g83150 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g83150 = lerpResult6785_g83150;
				#else
				float staticSwitch6158_g83150 = Main_Alpha316_g83150;
				#endif
				half Blend_Alpha_Detail6157_g83150 = staticSwitch6158_g83150;
				half AlphaTreshold2132_g83150 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g83150 = saturate( break456_g83177.w );
				float lerpResult5154_g83150 = lerp( 0.0 , Global_MeshVariation5104_g83150 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g83150 = lerpResult5154_g83150;
				float Emissive_Alpha7942_g83150 = 0.0;
				float lerpResult6866_g83150 = lerp( ( 1.0 - Detail_Mask147_g83150 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g83150 = lerpResult6866_g83150;
				#else
				float staticSwitch6612_g83150 = 1.0;
				#endif
				half Detail_Mask_Invert6260_g83150 = staticSwitch6612_g83150;
				half Alpha_Mask6234_g83150 = ( 1.0 * Detail_Mask_Invert6260_g83150 );
				float lerpResult5203_g83150 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g83150 - saturate( ( Global_Alpha_Variation5158_g83150 + Emissive_Alpha7942_g83150 ) ) ) + ( Global_Extras_Alpha1033_g83150 * 0.1 ) ) ) , ( Alpha_Mask6234_g83150 * _GlobalAlpha ));
				float lerpResult16_g83269 = lerp( 1.0 , lerpResult5203_g83150 , TVE_IsEnabled);
				half Global_Alpha315_g83150 = lerpResult16_g83269;
				half Fade_Alpha3727_g83150 = 1.0;
				half Final_Alpha7344_g83150 = min( ( ( Blend_Alpha_Detail6157_g83150 - AlphaTreshold2132_g83150 ) * Global_Alpha315_g83150 ) , Fade_Alpha3727_g83150 );
				float temp_output_3_0_g83272 = Final_Alpha7344_g83150;
				float Alpha19_g83272 = temp_output_3_0_g83272;
				float temp_output_15_0_g83272 = 0.01;
				float Treshold19_g83272 = temp_output_15_0_g83272;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g83272 - Treshold19_g83272);
				#endif
				#else
				clip(Alpha19_g83272 - Treshold19_g83272);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g83150 = (lerpResult7986_g83150).a;
				half Second_Color_Alpha6152_g83150 = (lerpResult7997_g83150).a;
				float lerpResult6168_g83150 = lerp( Main_Color_Alpha6121_g83150 , Second_Color_Alpha6152_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g83150 = lerpResult6168_g83150;
				#else
				float staticSwitch6174_g83150 = Main_Color_Alpha6121_g83150;
				#endif
				half Blend_ColorAlpha_Detail6167_g83150 = staticSwitch6174_g83150;
				half Final_Clip914_g83150 = saturate( ( Alpha19_g83272 * Blend_ColorAlpha_Detail6167_g83150 ) );
				
				o.Albedo = Blend_Albedo_RimLight7316_g83150;
				o.Normal = fixed3( 0, 0, 1 );
				o.Emission = Blend_Emissive_Terrain7909_g83150;
				o.Alpha = Final_Clip914_g83150;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip( o.Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				UnityMetaInput metaIN;
				UNITY_INITIALIZE_OUTPUT(UnityMetaInput, metaIN);
				metaIN.Albedo = o.Albedo;
				metaIN.Emission = o.Emission;
				#ifdef EDITOR_VISUALIZATION
					metaIN.VizUV = IN.vizUV;
					metaIN.LightCoord = IN.lightCoord;
				#endif
				return UnityMetaFragment(metaIN);
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On
			ZTest LEqual
			AlphaToMask Off

			CGPROGRAM
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_TRANSLUCENCY 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_shadowcaster
			#ifndef UNITY_PASS_SHADOWCASTER
				#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_TERRAIN
			#pragma shader_feature_local TVE_DETAIL
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_SUBSURFACE_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				V2F_SHADOW_CASTER;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef UNITY_STANDARD_USE_DITHER_MASK
				sampler3D _DitherMaskLOD;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_coverage;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_cull;
			uniform half _IsSubsurfaceShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform half _Cutoff;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderZWrite;
			uniform half _RenderClip;
			uniform half _RenderCull;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
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
			uniform half _RenderCoverage;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half _SpaceGlobalLocals;
			uniform half _SpaceSubsurface;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsBlanketShader;
			uniform half4 _Color;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryDetail;
			uniform half _CategoryTerrain;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceMotionGlobals;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMeshInvertMode;
			uniform half _DetailMaskInvertMode;
			uniform half _MotionValue_31;
			uniform half _MotionValue_21;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _DetailBlendRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailMaskRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half4 _RimLightRemap;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half4 _EmissiveTexRemap;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half _MessageSubsurface;
			uniform half _MessageOcclusion;
			uniform half _MessageTerrain;
			uniform half4 _TerrainBlendRemap;
			uniform half _TerrainTexMode;
			uniform half _TerrainBlendMode;
			uniform half _TerrainLayersMode;
			uniform half _LayerSampleMode1;
			uniform half _LayerSampleMode2;
			uniform half _LayerSampleMode3;
			uniform half _LayerSampleMode4;
			uniform half _LayerSampleMode5;
			uniform half _LayerSampleMode6;
			uniform half _LayerSampleMode7;
			uniform half _LayerSampleMode8;
			uniform half _LayerSampleMode9;
			uniform half _LayerSampleMode10;
			uniform half _LayerSampleMode11;
			uniform half _LayerSampleMode12;
			uniform half _LayerSampleMode13;
			uniform half _LayerSampleMode14;
			uniform half _LayerSampleMode15;
			uniform half _LayerSampleMode16;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half _VertexPositionMode;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalOrientation;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half _ConformOffsetMode;
			uniform half _ConformOffsetValue;
			uniform half _GlobalConform;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			uniform float _TerrainBlendOffsetValue;
			uniform float _TerrainBlendNormalValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g83150 = v.vertex.xyz;
				float3 appendResult60_g83158 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g83150 = ( appendResult60_g83158 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g83150 = Mesh_PivotsData2831_g83150;
				float3 temp_output_2283_0_g83150 = ( VertexPosition3588_g83150 - Mesh_PivotsOS2291_g83150 );
				half3 VertexPos40_g83230 = temp_output_2283_0_g83150;
				half3 VertexPos40_g83231 = VertexPos40_g83230;
				float3 appendResult74_g83231 = (float3(VertexPos40_g83231.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g83231 = appendResult74_g83231;
				float3 break84_g83231 = VertexPos40_g83231;
				float3 appendResult81_g83231 = (float3(0.0 , break84_g83231.y , break84_g83231.z));
				half3 VertexPosOtherAxis82_g83231 = appendResult81_g83231;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g83150 = ase_worldPos;
				float3 WorldPosition3905_g83150 = vertexToFrag3890_g83150;
				float3 WorldPosition_Shifted7477_g83150 = ( WorldPosition3905_g83150 - TVE_WorldOrigin );
				float4x4 break19_g83187 = unity_ObjectToWorld;
				float3 appendResult20_g83187 = (float3(break19_g83187[ 0 ][ 3 ] , break19_g83187[ 1 ][ 3 ] , break19_g83187[ 2 ][ 3 ]));
				float3 temp_output_122_0_g83187 = Mesh_PivotsData2831_g83150;
				float3 PivotsOnly105_g83187 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g83187 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g83189 = ( appendResult20_g83187 + PivotsOnly105_g83187 );
				half3 WorldData19_g83189 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83189 = WorldData19_g83189;
				#else
				float3 staticSwitch14_g83189 = ObjectData20_g83189;
				#endif
				float3 temp_output_114_0_g83187 = staticSwitch14_g83189;
				float3 vertexToFrag4224_g83150 = temp_output_114_0_g83187;
				float3 ObjectPosition4223_g83150 = vertexToFrag4224_g83150;
				float3 ObjectPosition_Shifted7481_g83150 = ( ObjectPosition4223_g83150 - TVE_WorldOrigin );
				float3 lerpResult6766_g83150 = lerp( WorldPosition_Shifted7477_g83150 , ObjectPosition_Shifted7481_g83150 , _MotionPosition_10);
				float3 Motion_10_Position6738_g83150 = lerpResult6766_g83150;
				half3 Input_Position419_g83195 = Motion_10_Position6738_g83150;
				float Input_MotionScale287_g83195 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g83195 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g83195 = (( Input_Position419_g83195 * Input_MotionScale287_g83195 * NoiseTex_Tilling735_g83195 * 0.0075 )).xz;
				float2 temp_output_447_0_g83155 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g83150 = temp_output_447_0_g83155;
				half2 Input_DirectionWS423_g83195 = Global_Wind_DirectionWS4683_g83150;
				float lerpResult128_g83196 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83195 = _MotionSpeed_10;
				half Input_MotionVariation284_g83195 = _MotionVariation_10;
				half3 Input_Position167_g83244 = ObjectPosition_Shifted7481_g83150;
				float dotResult156_g83244 = dot( (Input_Position167_g83244).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g83150 = _VertexDynamicMode;
				half Input_DynamicMode120_g83244 = Vertex_DynamicMode5112_g83150;
				float Postion_Random162_g83244 = ( sin( dotResult156_g83244 ) * ( 1.0 - Input_DynamicMode120_g83244 ) );
				float Mesh_Variation16_g83150 = v.ase_color.r;
				half Input_Variation124_g83244 = Mesh_Variation16_g83150;
				half ObjectData20_g83246 = frac( ( Postion_Random162_g83244 + Input_Variation124_g83244 ) );
				half WorldData19_g83246 = Input_Variation124_g83244;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83246 = WorldData19_g83246;
				#else
				float staticSwitch14_g83246 = ObjectData20_g83246;
				#endif
				float temp_output_112_0_g83244 = staticSwitch14_g83246;
				float clampResult171_g83244 = clamp( temp_output_112_0_g83244 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g83150 = clampResult171_g83244;
				half Input_GlobalMeshVariation569_g83195 = Global_MeshVariation5104_g83150;
				float temp_output_630_0_g83195 = ( ( ( lerpResult128_g83196 * Input_MotionSpeed62_g83195 ) + ( Input_MotionVariation284_g83195 * Input_GlobalMeshVariation569_g83195 ) ) * 0.03 );
				float temp_output_607_0_g83195 = frac( temp_output_630_0_g83195 );
				float4 lerpResult590_g83195 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g83195 + ( -Input_DirectionWS423_g83195 * temp_output_607_0_g83195 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g83195 + ( -Input_DirectionWS423_g83195 * frac( ( temp_output_630_0_g83195 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g83195 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g83195 = lerpResult590_g83195;
				float2 temp_output_645_0_g83195 = ((Noise_Complex703_g83195).rg*2.0 + -1.0);
				float2 break650_g83195 = temp_output_645_0_g83195;
				float3 appendResult649_g83195 = (float3(break650_g83195.x , 0.0 , break650_g83195.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g83150 = (( mul( unity_WorldToObject, float4( appendResult649_g83195 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g83210 = Global_Noise_OS5548_g83150;
				float2 break448_g83155 = temp_output_447_0_g83155;
				float3 appendResult452_g83155 = (float3(break448_g83155.x , 0.0 , break448_g83155.y));
				half2 Global_Wind_DirectionOS5692_g83150 = (( mul( unity_WorldToObject, float4( appendResult452_g83155 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g83210 = Global_Wind_DirectionOS5692_g83150;
				float temp_output_84_0_g83159 = _LayerMotionValue;
				float temp_output_19_0_g83163 = TVE_MotionUsage[(int)temp_output_84_0_g83159];
				float4 temp_output_91_19_g83159 = TVE_MotionCoords;
				half2 UV94_g83159 = ( (temp_output_91_19_g83159).zw + ( (temp_output_91_19_g83159).xy * (ObjectPosition4223_g83150).xz ) );
				float4 tex2DArrayNode50_g83159 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g83159,temp_output_84_0_g83159), 0.0 );
				float4 temp_output_17_0_g83163 = tex2DArrayNode50_g83159;
				float4 temp_output_112_19_g83159 = TVE_MotionParams;
				float4 temp_output_3_0_g83163 = temp_output_112_19_g83159;
				float4 ifLocalVar18_g83163 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83163 >= 0.5 )
				ifLocalVar18_g83163 = temp_output_17_0_g83163;
				else
				ifLocalVar18_g83163 = temp_output_3_0_g83163;
				float4 lerpResult22_g83163 = lerp( temp_output_3_0_g83163 , temp_output_17_0_g83163 , temp_output_19_0_g83163);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83163 = lerpResult22_g83163;
				#else
				float4 staticSwitch24_g83163 = ifLocalVar18_g83163;
				#endif
				half4 Global_Motion_Params3909_g83150 = staticSwitch24_g83163;
				float4 break322_g83155 = Global_Motion_Params3909_g83150;
				float lerpResult457_g83155 = lerp( break322_g83155.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g83155 = ( 1.0 - lerpResult457_g83155 );
				half Global_Wind_Power2223_g83150 = ( 1.0 - ( temp_output_459_0_g83155 * temp_output_459_0_g83155 ) );
				half Input_WindPower449_g83210 = Global_Wind_Power2223_g83150;
				float2 lerpResult516_g83210 = lerp( Input_Noise_DirectionOS487_g83210 , Input_Wind_DirectionOS458_g83210 , ( Input_WindPower449_g83210 * 0.6 ));
				half Mesh_Motion_107613_g83150 = v.ase_color.a;
				half Input_MeshHeight388_g83210 = Mesh_Motion_107613_g83150;
				half ObjectData20_g83211 = Input_MeshHeight388_g83210;
				float enc62_g83205 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g83205 = DecodeFloatToVector2( enc62_g83205 );
				float2 break63_g83205 = ( localDecodeFloatToVector262_g83205 * 100.0 );
				float Bounds_Height5230_g83150 = break63_g83205.x;
				half Input_BoundsHeight390_g83210 = Bounds_Height5230_g83150;
				half WorldData19_g83211 = ( Input_MeshHeight388_g83210 * Input_MeshHeight388_g83210 * Input_BoundsHeight390_g83210 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83211 = WorldData19_g83211;
				#else
				float staticSwitch14_g83211 = ObjectData20_g83211;
				#endif
				half Final_Motion10_Mask321_g83210 = ( staticSwitch14_g83211 * 2.0 );
				half Motion_10_Amplitude2258_g83150 = _MotionAmplitude_10;
				half Input_BendingAmplitude376_g83210 = Motion_10_Amplitude2258_g83150;
				half Global_MotionValue640_g83210 = TVE_MotionValue_10;
				half2 Final_Bending631_g83210 = ( lerpResult516_g83210 * ( Final_Motion10_Mask321_g83210 * Input_BendingAmplitude376_g83210 * Input_WindPower449_g83210 * Input_WindPower449_g83210 * Global_MotionValue640_g83210 ) );
				float2 appendResult433_g83155 = (float2(break322_g83155.x , break322_g83155.y));
				float2 temp_output_436_0_g83155 = (appendResult433_g83155*2.0 + -1.0);
				float2 break441_g83155 = temp_output_436_0_g83155;
				float3 appendResult440_g83155 = (float3(break441_g83155.x , 0.0 , break441_g83155.y));
				half2 Global_React_DirectionOS39_g83150 = (( mul( unity_WorldToObject, float4( appendResult440_g83155 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g83210 = Global_React_DirectionOS39_g83150;
				float clampResult17_g83213 = clamp( Input_MeshHeight388_g83210 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83212 = 0.0;
				half Input_InteractionUseMask62_g83210 = _InteractionMaskValue;
				float temp_output_10_0_g83212 = ( Input_InteractionUseMask62_g83210 - temp_output_7_0_g83212 );
				half Final_InteractionRemap594_g83210 = saturate( ( ( clampResult17_g83213 - temp_output_7_0_g83212 ) / ( temp_output_10_0_g83212 + 0.0001 ) ) );
				half ObjectData20_g83214 = Final_InteractionRemap594_g83210;
				half WorldData19_g83214 = ( Final_InteractionRemap594_g83210 * Final_InteractionRemap594_g83210 * Input_BoundsHeight390_g83210 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83214 = WorldData19_g83214;
				#else
				float staticSwitch14_g83214 = ObjectData20_g83214;
				#endif
				half Final_InteractionMask373_g83210 = ( staticSwitch14_g83214 * 2.0 );
				half Interaction_Amplitude7501_g83150 = _InteractionAmplitude;
				half Input_InteractionAmplitude58_g83210 = Interaction_Amplitude7501_g83150;
				half2 Final_Interaction632_g83210 = ( Input_React_DirectionOS358_g83210 * Final_InteractionMask373_g83210 * Input_InteractionAmplitude58_g83210 );
				half Global_Interaction_Mask66_g83150 = ( break322_g83155.w * break322_g83155.w * break322_g83155.w * break322_g83155.w );
				float Input_InteractionGlobalMask330_g83210 = Global_Interaction_Mask66_g83150;
				half Final_InteractionValue525_g83210 = saturate( ( Input_InteractionAmplitude58_g83210 * Input_InteractionGlobalMask330_g83210 ) );
				float2 lerpResult551_g83210 = lerp( Final_Bending631_g83210 , Final_Interaction632_g83210 , Final_InteractionValue525_g83210);
				float2 break364_g83210 = lerpResult551_g83210;
				float3 appendResult638_g83210 = (float3(break364_g83210.x , 0.0 , break364_g83210.y));
				half3 Motion_10_Interaction7519_g83150 = appendResult638_g83210;
				float temp_output_84_0_g83179 = _LayerVertexValue;
				float temp_output_19_0_g83183 = TVE_VertexUsage[(int)temp_output_84_0_g83179];
				float4 temp_output_94_19_g83179 = TVE_VertexCoords;
				float3 lerpResult7575_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _VertexPositionMode);
				half2 UV97_g83179 = ( (temp_output_94_19_g83179).zw + ( (temp_output_94_19_g83179).xy * (lerpResult7575_g83150).xz ) );
				float4 tex2DArrayNode50_g83179 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g83179,temp_output_84_0_g83179), 0.0 );
				float4 temp_output_17_0_g83183 = tex2DArrayNode50_g83179;
				float4 temp_output_111_19_g83179 = TVE_VertexParams;
				float4 temp_output_3_0_g83183 = temp_output_111_19_g83179;
				float4 ifLocalVar18_g83183 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83183 >= 0.5 )
				ifLocalVar18_g83183 = temp_output_17_0_g83183;
				else
				ifLocalVar18_g83183 = temp_output_3_0_g83183;
				float4 lerpResult22_g83183 = lerp( temp_output_3_0_g83183 , temp_output_17_0_g83183 , temp_output_19_0_g83183);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83183 = lerpResult22_g83183;
				#else
				float4 staticSwitch24_g83183 = ifLocalVar18_g83183;
				#endif
				half4 Global_Vertex_Params4173_g83150 = staticSwitch24_g83183;
				float4 break322_g83217 = Global_Vertex_Params4173_g83150;
				float2 appendResult355_g83217 = (float2(break322_g83217.x , break322_g83217.y));
				float2 temp_output_356_0_g83217 = (appendResult355_g83217*2.0 + -1.0);
				float2 break357_g83217 = temp_output_356_0_g83217;
				float3 appendResult361_g83217 = (float3(break357_g83217.x , 0.0 , break357_g83217.y));
				half2 Global_VertexOrientationOS7550_g83150 = (( mul( unity_WorldToObject, float4( appendResult361_g83217 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float2 lerpResult7535_g83150 = lerp( float2( 0,0 ) , Global_VertexOrientationOS7550_g83150 , _GlobalOrientation);
				float2 break7552_g83150 = lerpResult7535_g83150;
				float3 appendResult7553_g83150 = (float3(break7552_g83150.x , 0.0 , break7552_g83150.y));
				half3 Vertex_Orientation7542_g83150 = appendResult7553_g83150;
				half3 Angle44_g83230 = ( Motion_10_Interaction7519_g83150 + Vertex_Orientation7542_g83150 );
				half Angle44_g83231 = (Angle44_g83230).z;
				half3 VertexPos40_g83232 = ( VertexPosRotationAxis50_g83231 + ( VertexPosOtherAxis82_g83231 * cos( Angle44_g83231 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g83231 ) * sin( Angle44_g83231 ) ) );
				float3 appendResult74_g83232 = (float3(0.0 , 0.0 , VertexPos40_g83232.z));
				half3 VertexPosRotationAxis50_g83232 = appendResult74_g83232;
				float3 break84_g83232 = VertexPos40_g83232;
				float3 appendResult81_g83232 = (float3(break84_g83232.x , break84_g83232.y , 0.0));
				half3 VertexPosOtherAxis82_g83232 = appendResult81_g83232;
				half Angle44_g83232 = -(Angle44_g83230).x;
				half3 Input_Position419_g83203 = WorldPosition_Shifted7477_g83150;
				float3 break459_g83203 = Input_Position419_g83203;
				float Sum_Position446_g83203 = ( break459_g83203.x + break459_g83203.y + break459_g83203.z );
				half Input_MotionScale321_g83203 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g83203 = _MotionVariation_20;
				half Input_GlobalVariation400_g83203 = Global_MeshVariation5104_g83150;
				float lerpResult128_g83204 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83203 = _MotionSpeed_20;
				float temp_output_404_0_g83203 = ( lerpResult128_g83204 * Input_MotionSpeed62_g83203 );
				half Motion_SineA450_g83203 = sin( ( ( Sum_Position446_g83203 * Input_MotionScale321_g83203 ) + ( Input_MotionVariation330_g83203 * Input_GlobalVariation400_g83203 ) + temp_output_404_0_g83203 ) );
				half Motion_SineB395_g83203 = sin( ( ( temp_output_404_0_g83203 * 0.6842 ) + ( Sum_Position446_g83203 * Input_MotionScale321_g83203 ) ) );
				half3 Input_Position419_g83242 = VertexPosition3588_g83150;
				float3 normalizeResult518_g83242 = normalize( Input_Position419_g83242 );
				half2 Input_DirectionOS423_g83242 = Global_React_DirectionOS39_g83150;
				float2 break521_g83242 = -Input_DirectionOS423_g83242;
				float3 appendResult522_g83242 = (float3(break521_g83242.x , 0.0 , break521_g83242.y));
				float dotResult519_g83242 = dot( normalizeResult518_g83242 , appendResult522_g83242 );
				half Input_Value62_g83242 = _MotionFacingValue;
				float lerpResult524_g83242 = lerp( 1.0 , (dotResult519_g83242*0.5 + 0.5) , Input_Value62_g83242);
				half ObjectData20_g83243 = max( lerpResult524_g83242 , 0.001 );
				half WorldData19_g83243 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83243 = WorldData19_g83243;
				#else
				float staticSwitch14_g83243 = ObjectData20_g83243;
				#endif
				half Motion_FacingMask5214_g83150 = staticSwitch14_g83243;
				half Motion_20_Amplitude4381_g83150 = Motion_FacingMask5214_g83150;
				half Input_MotionAmplitude384_g83203 = Motion_20_Amplitude4381_g83150;
				half Input_GlobalWind407_g83203 = Global_Wind_Power2223_g83150;
				float4 break638_g83195 = abs( Noise_Complex703_g83195 );
				half Global_Noise_B5526_g83150 = break638_g83195.b;
				half Input_GlobalNoise411_g83203 = Global_Noise_B5526_g83150;
				float lerpResult413_g83203 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g83203);
				half Motion_Amplitude418_g83203 = ( Input_MotionAmplitude384_g83203 * Input_GlobalWind407_g83203 * pow( Input_GlobalNoise411_g83203 , lerpResult413_g83203 ) );
				half Input_Squash58_g83203 = _MotionAmplitude_20;
				float enc59_g83205 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g83205 = DecodeFloatToVector2( enc59_g83205 );
				float2 break61_g83205 = localDecodeFloatToVector259_g83205;
				half Mesh_Motion_2060_g83150 = break61_g83205.x;
				half Input_MeshMotion_20388_g83203 = Mesh_Motion_2060_g83150;
				float Bounds_Radius5231_g83150 = break63_g83205.y;
				half Input_BoundsRadius390_g83203 = Bounds_Radius5231_g83150;
				half Global_MotionValue462_g83203 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g83203 = Global_React_DirectionOS39_g83150;
				float2 break371_g83203 = Input_DirectionOS366_g83203;
				float3 appendResult372_g83203 = (float3(break371_g83203.x , ( Motion_SineA450_g83203 * 0.3 ) , break371_g83203.y));
				half3 Motion_20_Squash4418_g83150 = ( ( (max( Motion_SineA450_g83203 , Motion_SineB395_g83203 )*0.5 + 0.5) * Motion_Amplitude418_g83203 * Input_Squash58_g83203 * Input_MeshMotion_20388_g83203 * Input_BoundsRadius390_g83203 * Global_MotionValue462_g83203 ) * appendResult372_g83203 );
				half3 VertexPos40_g83220 = ( ( VertexPosRotationAxis50_g83232 + ( VertexPosOtherAxis82_g83232 * cos( Angle44_g83232 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g83232 ) * sin( Angle44_g83232 ) ) ) + Motion_20_Squash4418_g83150 );
				float3 appendResult74_g83220 = (float3(0.0 , VertexPos40_g83220.y , 0.0));
				float3 VertexPosRotationAxis50_g83220 = appendResult74_g83220;
				float3 break84_g83220 = VertexPos40_g83220;
				float3 appendResult81_g83220 = (float3(break84_g83220.x , 0.0 , break84_g83220.z));
				float3 VertexPosOtherAxis82_g83220 = appendResult81_g83220;
				half Input_Rolling379_g83203 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g83150 = ( Motion_SineA450_g83203 * Motion_Amplitude418_g83203 * Input_Rolling379_g83203 * Input_MeshMotion_20388_g83203 * Global_MotionValue462_g83203 );
				half Angle44_g83220 = Motion_20_Rolling5257_g83150;
				half3 Input_Position500_g83199 = WorldPosition_Shifted7477_g83150;
				half Input_MotionScale321_g83199 = _MotionScale_32;
				half Input_MotionVariation330_g83199 = _MotionVariation_32;
				half Input_GlobalVariation372_g83199 = Global_MeshVariation5104_g83150;
				float lerpResult128_g83200 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g83199 = _MotionSpeed_32;
				float4 tex2DNode460_g83199 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g83199).xz * Input_MotionScale321_g83199 * 0.03 ) + ( Input_MotionVariation330_g83199 * Input_GlobalVariation372_g83199 ) + ( lerpResult128_g83200 * Input_MotionSpeed62_g83199 * 0.02 ) ), 0.0 );
				float3 appendResult462_g83199 = (float3(tex2DNode460_g83199.r , tex2DNode460_g83199.g , tex2DNode460_g83199.b));
				half3 Flutter_Texture489_g83199 = (appendResult462_g83199*2.0 + -1.0);
				float temp_output_7_0_g83185 = TVE_MotionFadeEnd;
				float temp_output_10_0_g83185 = ( TVE_MotionFadeStart - temp_output_7_0_g83185 );
				half Motion_FadeOut4005_g83150 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g83185 ) / ( temp_output_10_0_g83185 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g83150 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g83150 * Motion_FadeOut4005_g83150 );
				half Input_MotionAmplitude58_g83199 = Motion_30_Amplitude4960_g83150;
				half Mesh_Motion_30144_g83150 = break61_g83205.y;
				half Input_MeshMotion_30374_g83199 = Mesh_Motion_30144_g83150;
				half Input_GlobalWind471_g83199 = Global_Wind_Power2223_g83150;
				half Global_MotionValue503_g83199 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g83199 = Global_Noise_B5526_g83150;
				float lerpResult466_g83199 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g83199);
				half Flutter_Amplitude491_g83199 = ( Input_MotionAmplitude58_g83199 * Input_MeshMotion_30374_g83199 * Input_GlobalWind471_g83199 * Global_MotionValue503_g83199 * pow( Input_GlobalNoise472_g83199 , lerpResult466_g83199 ) );
				half3 Motion_30_Flutter263_g83150 = ( Flutter_Texture489_g83199 * Flutter_Amplitude491_g83199 );
				float3 Vertex_Motion_Object833_g83150 = ( ( VertexPosRotationAxis50_g83220 + ( VertexPosOtherAxis82_g83220 * cos( Angle44_g83220 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g83220 ) * sin( Angle44_g83220 ) ) ) + Motion_30_Flutter263_g83150 );
				half3 ObjectData20_g83221 = Vertex_Motion_Object833_g83150;
				float3 temp_output_3474_0_g83150 = ( VertexPosition3588_g83150 - Mesh_PivotsOS2291_g83150 );
				float3 Vertex_Motion_World1118_g83150 = ( ( ( temp_output_3474_0_g83150 + ( Motion_10_Interaction7519_g83150 + Vertex_Orientation7542_g83150 ) ) + Motion_20_Squash4418_g83150 ) + Motion_30_Flutter263_g83150 );
				half3 WorldData19_g83221 = Vertex_Motion_World1118_g83150;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83221 = WorldData19_g83221;
				#else
				float3 staticSwitch14_g83221 = ObjectData20_g83221;
				#endif
				float3 temp_output_7495_0_g83150 = staticSwitch14_g83221;
				float3 Vertex_Motion7493_g83150 = temp_output_7495_0_g83150;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g83150 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g83150 = normalizeResult2169_g83150;
				float3 break2709_g83150 = cross( ViewDirection3963_g83150 , half3(0,1,0) );
				float3 appendResult2710_g83150 = (float3(-break2709_g83150.z , 0.0 , break2709_g83150.x));
				float3 appendResult2667_g83150 = (float3(Global_MeshVariation5104_g83150 , 0.5 , Global_MeshVariation5104_g83150));
				half Mesh_Height1524_g83150 = v.ase_color.a;
				float dotResult2212_g83150 = dot( ViewDirection3963_g83150 , float3(0,1,0) );
				half Mask_HView2656_g83150 = dotResult2212_g83150;
				float saferPower2652_g83150 = abs( Mask_HView2656_g83150 );
				half3 Grass_Perspective2661_g83150 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g83150 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g83150*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g83150 * pow( saferPower2652_g83150 , _PerspectiveAngleValue ) );
				half Global_VertexSize174_g83150 = saturate( break322_g83217.w );
				float lerpResult346_g83150 = lerp( 1.0 , Global_VertexSize174_g83150 , _GlobalSize);
				float3 appendResult3480_g83150 = (float3(lerpResult346_g83150 , lerpResult346_g83150 , lerpResult346_g83150));
				half3 ObjectData20_g83224 = appendResult3480_g83150;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g83224 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83224 = WorldData19_g83224;
				#else
				float3 staticSwitch14_g83224 = ObjectData20_g83224;
				#endif
				half3 Vertex_Size1741_g83150 = staticSwitch14_g83224;
				float temp_output_7_0_g83225 = _SizeFadeEndValue;
				float temp_output_10_0_g83225 = ( _SizeFadeStartValue - temp_output_7_0_g83225 );
				float temp_output_7453_0_g83150 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g83150 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g83225 ) / ( temp_output_10_0_g83225 + 0.0001 ) ) );
				float3 appendResult3482_g83150 = (float3(temp_output_7453_0_g83150 , temp_output_7453_0_g83150 , temp_output_7453_0_g83150));
				half3 ObjectData20_g83223 = appendResult3482_g83150;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g83223 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g83223 = WorldData19_g83223;
				#else
				float3 staticSwitch14_g83223 = ObjectData20_g83223;
				#endif
				float3 Vertex_SizeFade1740_g83150 = staticSwitch14_g83223;
				half Global_VertexOffset7549_g83150 = break322_g83217.z;
				float3 ase_objectScale = float3( length( unity_ObjectToWorld[ 0 ].xyz ), length( unity_ObjectToWorld[ 1 ].xyz ), length( unity_ObjectToWorld[ 2 ].xyz ) );
				float3 appendResult7547_g83150 = (float3(0.0 , ( ( ( ( Global_VertexOffset7549_g83150 - ( (ObjectPosition_Shifted7481_g83150).y * _ConformOffsetMode ) ) + _ConformOffsetValue ) / ase_objectScale.y ) * _GlobalConform ) , 0.0));
				half3 Vertex_Offset7544_g83150 = appendResult7547_g83150;
				float3 lerpResult16_g83226 = lerp( VertexPosition3588_g83150 , ( ( ( Vertex_Motion7493_g83150 + Grass_Perspective2661_g83150 ) * Vertex_Size1741_g83150 * Vertex_SizeFade1740_g83150 ) + Mesh_PivotsOS2291_g83150 + Vertex_Offset7544_g83150 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g83150 = lerpResult16_g83226;
				float3 Final_VertexPosition890_g83150 = ( temp_output_4912_0_g83150 + _DisableSRPBatcher );
				
				half2 Global_VertexOrientationWS7551_g83150 = temp_output_356_0_g83217;
				float2 break7779_g83150 = Global_VertexOrientationWS7551_g83150;
				float dotResult8067_g83150 = dot( Global_VertexOrientationWS7551_g83150 , Global_VertexOrientationWS7551_g83150 );
				float3 appendResult7781_g83150 = (float3(break7779_g83150.x , sqrt( ( 1.0 - saturate( dotResult8067_g83150 ) ) ) , break7779_g83150.y));
				float3 normalizeResult8063_g83150 = normalize( appendResult7781_g83150 );
				float3 worldToObjDir7782_g83150 = ASESafeNormalize( mul( unity_WorldToObject, float4( normalizeResult8063_g83150, 0 ) ).xyz );
				half Terrain_Blend_Offset8086_g83150 = _TerrainBlendOffsetValue;
				half Terrain_Mask_Vertex8085_g83150 = saturate( ( ( Global_VertexOffset7549_g83150 + ( Terrain_Blend_Offset8086_g83150 * _TerrainBlendNormalValue ) ) - (WorldPosition_Shifted7477_g83150).y ) );
				float3 lerpResult7784_g83150 = lerp( v.normal , worldToObjDir7782_g83150 , Terrain_Mask_Vertex8085_g83150);
				#ifdef TVE_TERRAIN
				float3 staticSwitch7896_g83150 = lerpResult7784_g83150;
				#else
				float3 staticSwitch7896_g83150 = v.normal;
				#endif
				
				float4 break33_g83216 = _second_uvs_mode;
				float2 temp_output_30_0_g83216 = ( v.ase_texcoord.xy * break33_g83216.x );
				float2 appendResult21_g83205 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g83150 = appendResult21_g83205;
				float2 temp_output_29_0_g83216 = ( Mesh_DetailCoord3_g83150 * break33_g83216.y );
				float2 temp_output_31_0_g83216 = ( (WorldPosition_Shifted7477_g83150).xz * break33_g83216.z );
				half2 Second_UVs_Tilling7656_g83150 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7664_g83150 = ( 1.0 / Second_UVs_Tilling7656_g83150 );
				float2 lerpResult7660_g83150 = lerp( Second_UVs_Tilling7656_g83150 , Second_UVs_Scale7664_g83150 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7657_g83150 = (_SecondUVs).zw;
				float2 vertexToFrag11_g83215 = ( ( ( temp_output_30_0_g83216 + temp_output_29_0_g83216 + temp_output_31_0_g83216 ) * lerpResult7660_g83150 ) + Second_UVs_Offset7657_g83150 );
				o.ase_texcoord3.xy = vertexToFrag11_g83215;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.tangent);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				o.ase_texcoord7.xyz = vertexToFrag3890_g83150;
				o.ase_texcoord8.xyz = vertexToFrag4224_g83150;
				
				o.ase_texcoord2 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g83150;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = staticSwitch7896_g83150;
				v.tangent = v.tangent;

				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN 
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				#if !defined( CAN_SKIP_VPOS )
				, UNITY_VPOS_TYPE vpos : VPOS
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				float localCustomAlphaClip19_g83272 = ( 0.0 );
				half2 Main_UVs15_g83150 = ( ( IN.ase_texcoord2.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g83150 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g83150 );
				half Main_Alpha316_g83150 = tex2DNode29_g83150.a;
				float2 vertexToFrag11_g83215 = IN.ase_texcoord3.xy;
				half2 Second_UVs17_g83150 = vertexToFrag11_g83215;
				float4 tex2DNode89_g83150 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g83150 );
				half Second_Alpha5007_g83150 = tex2DNode89_g83150.a;
				float4 tex2DNode35_g83150 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g83150 );
				half Main_Mask57_g83150 = tex2DNode35_g83150.b;
				float4 tex2DNode33_g83150 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g83150 );
				half Second_Mask81_g83150 = tex2DNode33_g83150.b;
				float lerpResult6885_g83150 = lerp( Main_Mask57_g83150 , Second_Mask81_g83150 , _DetailMaskMode);
				float clampResult17_g83255 = clamp( lerpResult6885_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83254 = _DetailMaskMinValue;
				float temp_output_10_0_g83254 = ( _DetailMaskMaxValue - temp_output_7_0_g83254 );
				half Detail_Mask_Texture6794_g83150 = saturate( ( ( clampResult17_g83255 - temp_output_7_0_g83254 ) / ( temp_output_10_0_g83254 + 0.0001 ) ) );
				half Mesh_DetailMask90_g83150 = IN.ase_color.b;
				half4 Normal_Packed45_g83235 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g83150 );
				float2 appendResult58_g83235 = (float2(( (Normal_Packed45_g83235).x * (Normal_Packed45_g83235).w ) , (Normal_Packed45_g83235).y));
				half2 Normal_Default50_g83235 = appendResult58_g83235;
				half2 Normal_ASTC41_g83235 = (Normal_Packed45_g83235).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g83235 = Normal_ASTC41_g83235;
				#else
				float2 staticSwitch38_g83235 = Normal_Default50_g83235;
				#endif
				half2 Normal_NO_DTX544_g83235 = (Normal_Packed45_g83235).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g83235 = Normal_NO_DTX544_g83235;
				#else
				float2 staticSwitch37_g83235 = staticSwitch38_g83235;
				#endif
				float2 temp_output_6555_0_g83150 = ( (staticSwitch37_g83235*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g83150 = (float3(temp_output_6555_0_g83150 , 1.0));
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldNormal = IN.ase_texcoord5.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal7389_g83150 = appendResult7388_g83150;
				float3 worldNormal7389_g83150 = float3(dot(tanToWorld0,tanNormal7389_g83150), dot(tanToWorld1,tanNormal7389_g83150), dot(tanToWorld2,tanNormal7389_g83150));
				half3 Main_NormalWS7390_g83150 = worldNormal7389_g83150;
				float lerpResult6884_g83150 = lerp( Mesh_DetailMask90_g83150 , ((Main_NormalWS7390_g83150).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g83253 = clamp( lerpResult6884_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83252 = _DetailMeshMinValue;
				float temp_output_10_0_g83252 = ( _DetailMeshMaxValue - temp_output_7_0_g83252 );
				half Detail_Mask_Surface1540_g83150 = saturate( ( ( clampResult17_g83253 - temp_output_7_0_g83252 ) / ( temp_output_10_0_g83252 + 0.0001 ) ) );
				float clampResult17_g83256 = clamp( ( Detail_Mask_Texture6794_g83150 * Detail_Mask_Surface1540_g83150 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g83257 = _DetailBlendMinValue;
				float temp_output_10_0_g83257 = ( _DetailBlendMaxValue - temp_output_7_0_g83257 );
				half Detail_Mask147_g83150 = ( saturate( ( ( clampResult17_g83256 - temp_output_7_0_g83257 ) / ( temp_output_10_0_g83257 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float lerpResult6153_g83150 = lerp( Main_Alpha316_g83150 , Second_Alpha5007_g83150 , Detail_Mask147_g83150);
				float lerpResult6785_g83150 = lerp( ( Main_Alpha316_g83150 * Second_Alpha5007_g83150 ) , lerpResult6153_g83150 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g83150 = lerpResult6785_g83150;
				#else
				float staticSwitch6158_g83150 = Main_Alpha316_g83150;
				#endif
				half Blend_Alpha_Detail6157_g83150 = staticSwitch6158_g83150;
				half AlphaTreshold2132_g83150 = _AlphaClipValue;
				float temp_output_84_0_g83164 = _LayerExtrasValue;
				float temp_output_19_0_g83168 = TVE_ExtrasUsage[(int)temp_output_84_0_g83164];
				float4 temp_output_93_19_g83164 = TVE_ExtrasCoords;
				float3 vertexToFrag3890_g83150 = IN.ase_texcoord7.xyz;
				float3 WorldPosition3905_g83150 = vertexToFrag3890_g83150;
				float3 vertexToFrag4224_g83150 = IN.ase_texcoord8.xyz;
				float3 ObjectPosition4223_g83150 = vertexToFrag4224_g83150;
				float3 lerpResult4827_g83150 = lerp( WorldPosition3905_g83150 , ObjectPosition4223_g83150 , _ExtrasPositionMode);
				half2 UV96_g83164 = ( (temp_output_93_19_g83164).zw + ( (temp_output_93_19_g83164).xy * (lerpResult4827_g83150).xz ) );
				float4 tex2DArrayNode48_g83164 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g83164,temp_output_84_0_g83164), 0.0 );
				float4 temp_output_17_0_g83168 = tex2DArrayNode48_g83164;
				float4 temp_output_94_85_g83164 = TVE_ExtrasParams;
				float4 temp_output_3_0_g83168 = temp_output_94_85_g83164;
				float4 ifLocalVar18_g83168 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g83168 >= 0.5 )
				ifLocalVar18_g83168 = temp_output_17_0_g83168;
				else
				ifLocalVar18_g83168 = temp_output_3_0_g83168;
				float4 lerpResult22_g83168 = lerp( temp_output_3_0_g83168 , temp_output_17_0_g83168 , temp_output_19_0_g83168);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g83168 = lerpResult22_g83168;
				#else
				float4 staticSwitch24_g83168 = ifLocalVar18_g83168;
				#endif
				half4 Global_Extras_Params5440_g83150 = staticSwitch24_g83168;
				float4 break456_g83177 = Global_Extras_Params5440_g83150;
				half Global_Extras_Alpha1033_g83150 = saturate( break456_g83177.w );
				float3 ObjectPosition_Shifted7481_g83150 = ( ObjectPosition4223_g83150 - TVE_WorldOrigin );
				half3 Input_Position167_g83244 = ObjectPosition_Shifted7481_g83150;
				float dotResult156_g83244 = dot( (Input_Position167_g83244).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g83150 = _VertexDynamicMode;
				half Input_DynamicMode120_g83244 = Vertex_DynamicMode5112_g83150;
				float Postion_Random162_g83244 = ( sin( dotResult156_g83244 ) * ( 1.0 - Input_DynamicMode120_g83244 ) );
				float Mesh_Variation16_g83150 = IN.ase_color.r;
				half Input_Variation124_g83244 = Mesh_Variation16_g83150;
				half ObjectData20_g83246 = frac( ( Postion_Random162_g83244 + Input_Variation124_g83244 ) );
				half WorldData19_g83246 = Input_Variation124_g83244;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g83246 = WorldData19_g83246;
				#else
				float staticSwitch14_g83246 = ObjectData20_g83246;
				#endif
				float temp_output_112_0_g83244 = staticSwitch14_g83246;
				float clampResult171_g83244 = clamp( temp_output_112_0_g83244 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g83150 = clampResult171_g83244;
				float lerpResult5154_g83150 = lerp( 0.0 , Global_MeshVariation5104_g83150 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g83150 = lerpResult5154_g83150;
				float Emissive_Alpha7942_g83150 = 0.0;
				float lerpResult6866_g83150 = lerp( ( 1.0 - Detail_Mask147_g83150 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g83150 = lerpResult6866_g83150;
				#else
				float staticSwitch6612_g83150 = 1.0;
				#endif
				half Detail_Mask_Invert6260_g83150 = staticSwitch6612_g83150;
				half Alpha_Mask6234_g83150 = ( 1.0 * Detail_Mask_Invert6260_g83150 );
				float lerpResult5203_g83150 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g83150 - saturate( ( Global_Alpha_Variation5158_g83150 + Emissive_Alpha7942_g83150 ) ) ) + ( Global_Extras_Alpha1033_g83150 * 0.1 ) ) ) , ( Alpha_Mask6234_g83150 * _GlobalAlpha ));
				float lerpResult16_g83269 = lerp( 1.0 , lerpResult5203_g83150 , TVE_IsEnabled);
				half Global_Alpha315_g83150 = lerpResult16_g83269;
				half Fade_Alpha3727_g83150 = 1.0;
				half Final_Alpha7344_g83150 = min( ( ( Blend_Alpha_Detail6157_g83150 - AlphaTreshold2132_g83150 ) * Global_Alpha315_g83150 ) , Fade_Alpha3727_g83150 );
				float temp_output_3_0_g83272 = Final_Alpha7344_g83150;
				float Alpha19_g83272 = temp_output_3_0_g83272;
				float temp_output_15_0_g83272 = 0.01;
				float Treshold19_g83272 = temp_output_15_0_g83272;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g83272 - Treshold19_g83272);
				#endif
				#else
				clip(Alpha19_g83272 - Treshold19_g83272);
				#endif
				#endif
				}
				float clampResult17_g83236 = clamp( Main_Mask57_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83237 = _MainMaskMinValue;
				float temp_output_10_0_g83237 = ( _MainMaskMaxValue - temp_output_7_0_g83237 );
				half Main_Mask_Remap5765_g83150 = saturate( ( ( clampResult17_g83236 - temp_output_7_0_g83237 ) / ( temp_output_10_0_g83237 + 0.0001 ) ) );
				float lerpResult8007_g83150 = lerp( 1.0 , Main_Mask_Remap5765_g83150 , _MainColorMode);
				float4 lerpResult7986_g83150 = lerp( _MainColorTwo , _MainColor , lerpResult8007_g83150);
				half Main_Color_Alpha6121_g83150 = (lerpResult7986_g83150).a;
				float clampResult17_g83239 = clamp( Second_Mask81_g83150 , 0.0001 , 0.9999 );
				float temp_output_7_0_g83240 = _SecondMaskMinValue;
				float temp_output_10_0_g83240 = ( _SecondMaskMaxValue - temp_output_7_0_g83240 );
				half Second_Mask_Remap6130_g83150 = saturate( ( ( clampResult17_g83239 - temp_output_7_0_g83240 ) / ( temp_output_10_0_g83240 + 0.0001 ) ) );
				float lerpResult8008_g83150 = lerp( 1.0 , Second_Mask_Remap6130_g83150 , _SecondColorMode);
				float4 lerpResult7997_g83150 = lerp( _SecondColorTwo , _SecondColor , lerpResult8008_g83150);
				half Second_Color_Alpha6152_g83150 = (lerpResult7997_g83150).a;
				float lerpResult6168_g83150 = lerp( Main_Color_Alpha6121_g83150 , Second_Color_Alpha6152_g83150 , Detail_Mask147_g83150);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g83150 = lerpResult6168_g83150;
				#else
				float staticSwitch6174_g83150 = Main_Color_Alpha6121_g83150;
				#endif
				half Blend_ColorAlpha_Detail6167_g83150 = staticSwitch6174_g83150;
				half Final_Clip914_g83150 = saturate( ( Alpha19_g83272 * Blend_ColorAlpha_Detail6167_g83150 ) );
				
				o.Normal = fixed3( 0, 0, 1 );
				#if !defined(ASE_LIGHTING_SIMPLE)
					o.Occlusion = 1;
				#endif
				o.Alpha = Final_Clip914_g83150;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef _ALPHATEST_SHADOW_ON
					if (unity_LightShadowBias.z != 0.0)
						clip(o.Alpha - AlphaClipThresholdShadow);
					#ifdef _ALPHATEST_ON
					else
						clip(o.Alpha - AlphaClipThreshold);
					#endif
				#else
					#ifdef _ALPHATEST_ON
						clip(o.Alpha - AlphaClipThreshold);
					#endif
				#endif

				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif

				#ifdef UNITY_STANDARD_USE_DITHER_MASK
					half alphaRef = tex3D(_DitherMaskLOD, float3(vpos.xy*0.25,o.Alpha*0.9375)).a;
					clip(alphaRef - 0.01);
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				SHADOW_CASTER_FRAGMENT(IN)
			}
			ENDCG
		}
		
	}
	CustomEditor "TVEShaderCoreGUI"
	
	Fallback "Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback"
}
/*ASEBEGIN
Version=19202
Node;AmplifyShaderEditor.RangedFloatNode;1355;-1408,-640;Half;False;Property;_render_coverage;_render_coverage;431;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1808,-640;Half;False;Property;_render_dst;_render_dst;429;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;17;-1632,-640;Half;False;Property;_render_zw;_render_zw;430;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;20;-2000,-640;Half;False;Property;_render_src;_render_src;428;1;[HideInInspector];Create;True;0;0;0;True;0;False;5;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-2176,-640;Half;False;Property;_render_cull;_render_cull;427;1;[HideInInspector];Create;True;0;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;449;-2176,512;Inherit;False;1279.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-768;Inherit;False;1280.392;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2174,-384;Inherit;False;1276.392;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.FunctionNode;1081;-2176,640;Inherit;False;Define Pipeline Standard;-1;;76903;9af03ae8defe78d448ef2a4ef3601e12;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;1087;-1088,640;Inherit;False;Compile All Shaders;-1;;76904;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2104;-1920,640;Inherit;False;Define Lighting Subsurface;432;;76906;77137addbb4a22f4c818adc8782926be;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;471;-1664,640;Inherit;False;Define ShaderType Plant;434;;76907;b458122dd75182d488380bd0f592b9e6;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2111;-1280,640;Inherit;False;Compile Blanket;-1;;79914;bff24eccb6f21f7419015d541a074b70;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2132;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ExtraPrePass;0;0;ExtraPrePass;6;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2133;-1152,-256;Float;False;True;-1;2;TVEShaderCoreGUI;0;18;BOXOPHOBIC/The Vegetation Engine/Geometry/Plant Subsurface Lit (Blanket);28cd5599e02859647ae1798e4fcaef6c;True;ForwardBase;0;1;ForwardBase;20;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;1;True;_render_coverage;True;True;2;True;_render_cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;1;True;_render_zw;True;0;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;5;False;0;True;True;1;1;True;_render_src;0;True;_render_dst;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;False;0;Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback;0;0;Standard;41;Category;0;0;Workflow;1;0;Surface;0;0;  Blend;0;0;  Refraction Model;0;0;  Dither Shadows;1;0;Two Sided;0;638375491606345539;Deferred Pass;0;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;1;638375492056084706;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;  Use Shadow Threshold;0;0;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;Ambient Light;1;0;Meta Pass;1;0;Add Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Fwd Specular Highlights Toggle;0;0;Fwd Reflections Toggle;0;0;Disable Batching;0;0;Vertex Position,InvertActionOnDeselection;0;638375492116985663;0;6;False;True;True;False;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2134;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ForwardAdd;0;2;ForwardAdd;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2135;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Deferred;0;3;Deferred;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2136;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Meta;0;4;Meta;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2137;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ShadowCaster;0;5;ShadowCaster;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.FunctionNode;2138;-2176,-256;Inherit;False;Base Blanket;0;;83150;ec9d184f5c74f2c41b1d23a5abd72b0a;105,7343,0,3880,1,4028,1,3900,1,3908,1,4172,1,8021,1,8022,1,4179,1,1298,1,6791,1,6792,1,1300,1,3586,0,4499,1,1708,1,6056,1,3509,1,3873,1,893,1,6230,0,5156,1,5345,0,1715,1,1714,1,1718,1,1717,1,6116,1,5075,1,7607,1,6076,1,6592,1,6068,1,6692,0,6729,1,1776,1,6378,1,3475,1,6352,1,6655,1,4210,1,1745,1,3479,0,1646,0,3501,1,2807,1,6206,1,7606,1,4999,0,6194,1,3887,0,7321,0,7332,0,3957,0,6647,0,6257,0,5357,0,2172,1,3883,0,3728,1,5350,0,2658,1,7669,0,1742,1,3484,0,6320,1,1734,1,4837,1,6848,1,6161,1,6166,1,1735,1,1736,1,6622,1,1737,1,7817,1,7913,1,7923,1,7810,1,7803,1,7791,1,7795,1,7897,1,7429,0,7941,0,6721,1,860,1,2260,1,2261,1,2054,1,2032,1,5258,1,2062,1,2039,1,7588,1,7586,1,3243,1,5220,1,4217,1,6699,1,5339,0,8019,1,7492,0,5090,1,4242,1;9;7333;FLOAT3;1,1,1;False;6196;FLOAT;1;False;6693;FLOAT;1;False;6201;FLOAT;1;False;6205;FLOAT;1;False;5143;FLOAT;1;False;6231;FLOAT;1;False;6198;FLOAT;1;False;5340;FLOAT3;0,0,0;False;24;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;531;FLOAT;4842;FLOAT;529;FLOAT;3678;FLOAT;530;FLOAT;4122;FLOAT;4134;FLOAT;1235;FLOAT;532;FLOAT;5389;FLOAT;721;FLOAT3;1230;FLOAT;5296;FLOAT;1461;FLOAT;1290;FLOAT;629;FLOAT3;534;FLOAT3;7780;FLOAT;4867;FLOAT4;5246;FLOAT4;4841
WireConnection;2133;0;2138;0
WireConnection;2133;1;2138;528
WireConnection;2133;2;2138;2489
WireConnection;2133;3;2138;3678
WireConnection;2133;6;2138;531
WireConnection;2133;5;2138;530
WireConnection;2133;7;2138;532
WireConnection;2133;14;2138;1230
WireConnection;2133;15;2138;534
WireConnection;2133;16;2138;7780
ASEEND*/
//CHKSM=C7B2C8259F94431F0DE6CBDFB14C3E69C77445EA