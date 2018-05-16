// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33593,y:33128,varname:node_2865,prsc:2|diff-8977-RGB,spec-2208-OUT,gloss-5078-OUT,normal-8246-OUT,emission-3536-OUT,lwrap-9839-OUT,alpha-9839-OUT,refract-6177-OUT;n:type:ShaderForge.SFN_Tex2d,id:5964,x:31861,y:32813,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ffaae45f573b7144ab71db8734fa7a9c,ntxv:3,isnm:True|UVIN-5432-UVOUT;n:type:ShaderForge.SFN_Color,id:8977,x:31945,y:32362,ptovrint:False,ptlb:Base_Colour,ptin:_Base_Colour,varname:node_8977,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:8753,x:31596,y:33338,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_8753,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Fresnel,id:9839,x:32013,y:33088,varname:node_9839,prsc:2|NRM-8809-OUT,EXP-3652-OUT;n:type:ShaderForge.SFN_NormalVector,id:6066,x:31259,y:33051,prsc:2,pt:False;n:type:ShaderForge.SFN_NormalBlend,id:8809,x:31608,y:32985,varname:node_8809,prsc:2|BSE-6066-OUT,DTL-5964-RGB;n:type:ShaderForge.SFN_Append,id:2364,x:32611,y:33137,varname:node_2364,prsc:2|A-5964-R,B-5964-G;n:type:ShaderForge.SFN_Slider,id:3652,x:31524,y:33196,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_3652,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:6177,x:32818,y:33089,varname:node_6177,prsc:2|A-2364-OUT,B-8753-OUT;n:type:ShaderForge.SFN_NormalVector,id:9381,x:30897,y:32476,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:9822,x:31329,y:32447,varname:node_9822,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9457-OUT;n:type:ShaderForge.SFN_RemapRange,id:6728,x:31510,y:32447,varname:node_6728,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:10|IN-9822-OUT;n:type:ShaderForge.SFN_Slider,id:728,x:31095,y:32714,ptovrint:False,ptlb:Amount,ptin:_Amount,varname:node_2844,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Subtract,id:5779,x:31451,y:32705,varname:node_5779,prsc:2|A-6728-OUT,B-728-OUT;n:type:ShaderForge.SFN_RemapRange,id:8930,x:31627,y:32705,varname:node_8930,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:-0.5|IN-5779-OUT;n:type:ShaderForge.SFN_NormalBlend,id:9457,x:31154,y:32447,varname:node_9457,prsc:2|BSE-9381-OUT,DTL-5964-RGB;n:type:ShaderForge.SFN_Tex2d,id:5147,x:31853,y:32542,ptovrint:False,ptlb:Normal_Map_2,ptin:_Normal_Map_2,varname:node_5147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:de4ae3e500102164ab6117b4b4afd90d,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalBlend,id:9079,x:32291,y:32656,varname:node_9079,prsc:2|BSE-5964-RGB,DTL-9834-OUT;n:type:ShaderForge.SFN_Multiply,id:9834,x:32087,y:32542,varname:node_9834,prsc:2|A-5147-RGB,B-9960-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9960,x:31928,y:32714,ptovrint:False,ptlb:Normal_Intensity,ptin:_Normal_Intensity,varname:node_9960,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Normalize,id:8246,x:32488,y:32795,varname:node_8246,prsc:2|IN-9079-OUT;n:type:ShaderForge.SFN_Slider,id:5078,x:32633,y:32503,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5078,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2208,x:32617,y:32389,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_2208,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:4352,x:31795,y:33514,varname:node_4352,prsc:2,uv:0;n:type:ShaderForge.SFN_Distance,id:4608,x:31990,y:33514,varname:node_4608,prsc:2|A-4352-UVOUT,B-6875-OUT;n:type:ShaderForge.SFN_Vector2,id:6875,x:31795,y:33657,varname:node_6875,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Multiply,id:3580,x:32184,y:33577,varname:node_3580,prsc:2|A-4608-OUT,B-9420-OUT;n:type:ShaderForge.SFN_Vector1,id:9420,x:31990,y:33645,varname:node_9420,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:3199,x:32344,y:33577,varname:node_3199,prsc:2|IN-3580-OUT;n:type:ShaderForge.SFN_Slider,id:625,x:31467,y:33831,ptovrint:False,ptlb:Rotation_Angle,ptin:_Rotation_Angle,varname:node_5644,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.240444,max:5;n:type:ShaderForge.SFN_Clamp01,id:8095,x:31952,y:33772,varname:node_8095,prsc:2|IN-3199-OUT;n:type:ShaderForge.SFN_Multiply,id:3359,x:31990,y:33913,varname:node_3359,prsc:2|A-625-OUT,B-2387-OUT,C-8095-OUT;n:type:ShaderForge.SFN_Rotator,id:8775,x:32184,y:33772,varname:node_8775,prsc:2|UVIN-4352-UVOUT,PIV-6875-OUT,ANG-3359-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9662,x:31367,y:34010,ptovrint:False,ptlb:CW,ptin:_CW,varname:node_4384,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_ValueProperty,id:3869,x:31367,y:34099,ptovrint:False,ptlb:CCW,ptin:_CCW,varname:node_5911,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:2387,x:31612,y:34080,ptovrint:False,ptlb:Rotation_Dir,ptin:_Rotation_Dir,varname:node_6501,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9662-OUT,B-3869-OUT;n:type:ShaderForge.SFN_Time,id:5311,x:31910,y:34126,varname:node_5311,prsc:2;n:type:ShaderForge.SFN_Panner,id:5432,x:32361,y:34074,varname:node_5432,prsc:2,spu:-1,spv:0|UVIN-8775-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3067,x:32155,y:34158,varname:node_3067,prsc:2|A-5311-T,B-5551-OUT;n:type:ShaderForge.SFN_Slider,id:5551,x:31889,y:34391,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_4074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:6347,x:32540,y:33596,ptovrint:False,ptlb:Depth_Blend,ptin:_Depth_Blend,varname:node_2265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_DepthBlend,id:4621,x:32718,y:33703,varname:node_4621,prsc:2|DIST-6347-OUT;n:type:ShaderForge.SFN_OneMinus,id:4780,x:32892,y:33717,varname:node_4780,prsc:2|IN-4621-OUT;n:type:ShaderForge.SFN_Lerp,id:3536,x:32892,y:33525,varname:node_3536,prsc:2|A-7396-RGB,B-1351-OUT,T-4780-OUT;n:type:ShaderForge.SFN_Multiply,id:1351,x:32507,y:33376,varname:node_1351,prsc:2|A-6185-RGB,B-3205-OUT;n:type:ShaderForge.SFN_Slider,id:3205,x:32140,y:33507,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:node_2857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6011076,max:10;n:type:ShaderForge.SFN_Color,id:6185,x:32178,y:33324,ptovrint:False,ptlb:Emissive_Colour,ptin:_Emissive_Colour,varname:_Colour_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7279412,c2:0.3318555,c3:0.3318555,c4:1;n:type:ShaderForge.SFN_Color,id:7396,x:32178,y:33159,ptovrint:False,ptlb:Colour,ptin:_Colour,varname:node_7590,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5808823,c2:0.2263733,c3:0.2263733,c4:1;proporder:5964-8977-8753-3652-728-5147-9960-2208-5078-625-9662-3869-2387-6347-3205-6185-7396;pass:END;sub:END;*/

Shader "Shader Forge/Refraction" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Base_Colour ("Base_Colour", Color) = (1,1,1,1)
        _Refraction ("Refraction", Range(0, 1)) = 0
        _Fresnel ("Fresnel", Range(0, 1)) = 1
        _Amount ("Amount", Range(0, 10)) = 0
        _Normal_Map_2 ("Normal_Map_2", 2D) = "bump" {}
        _Normal_Intensity ("Normal_Intensity", Float ) = 3
        _Specular ("Specular", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Rotation_Angle ("Rotation_Angle", Range(0, 5)) = 1.240444
        _CW ("CW", Float ) = -1
        _CCW ("CCW", Float ) = 1
        [MaterialToggle] _Rotation_Dir ("Rotation_Dir", Float ) = -1
        _Depth_Blend ("Depth_Blend", Range(0, 5)) = 0
        _Emissive ("Emissive", Range(0, 10)) = 0.6011076
        _Emissive_Colour ("Emissive_Colour", Color) = (0.7279412,0.3318555,0.3318555,1)
        _Colour ("Colour", Color) = (0.5808823,0.2263733,0.2263733,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float4 _Base_Colour;
            uniform float _Refraction;
            uniform float _Fresnel;
            uniform sampler2D _Normal_Map_2; uniform float4 _Normal_Map_2_ST;
            uniform float _Normal_Intensity;
            uniform float _Gloss;
            uniform float _Specular;
            uniform float _Rotation_Angle;
            uniform float _CW;
            uniform float _CCW;
            uniform fixed _Rotation_Dir;
            uniform float _Depth_Blend;
            uniform float _Emissive;
            uniform float4 _Emissive_Colour;
            uniform float4 _Colour;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                float4 projPos : TEXCOORD8;
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_1572 = _Time + _TimeEditor;
                float2 node_6875 = float2(0.5,0.5);
                float node_8775_ang = (_Rotation_Angle*lerp( _CW, _CCW, _Rotation_Dir )*saturate((1.0 - (distance(i.uv0,node_6875)*2.0))));
                float node_8775_spd = 1.0;
                float node_8775_cos = cos(node_8775_spd*node_8775_ang);
                float node_8775_sin = sin(node_8775_spd*node_8775_ang);
                float2 node_8775_piv = node_6875;
                float2 node_8775 = (mul(i.uv0-node_8775_piv,float2x2( node_8775_cos, -node_8775_sin, node_8775_sin, node_8775_cos))+node_8775_piv);
                float2 node_5432 = (node_8775+node_1572.g*float2(-1,0));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_5432, _BumpMap)));
                float3 _Normal_Map_2_var = UnpackNormal(tex2D(_Normal_Map_2,TRANSFORM_TEX(i.uv0, _Normal_Map_2)));
                float3 node_9079_nrm_base = _BumpMap_var.rgb + float3(0,0,1);
                float3 node_9079_nrm_detail = (_Normal_Map_2_var.rgb*_Normal_Intensity) * float3(-1,-1,1);
                float3 node_9079_nrm_combined = node_9079_nrm_base*dot(node_9079_nrm_base, node_9079_nrm_detail)/node_9079_nrm_base.z - node_9079_nrm_detail;
                float3 node_9079 = node_9079_nrm_combined;
                float3 normalLocal = normalize(node_9079);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (float2(_BumpMap_var.r,_BumpMap_var.g)*_Refraction);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 1.0 - _Gloss; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 node_8809_nrm_base = i.normalDir + float3(0,0,1);
                float3 node_8809_nrm_detail = _BumpMap_var.rgb * float3(-1,-1,1);
                float3 node_8809_nrm_combined = node_8809_nrm_base*dot(node_8809_nrm_base, node_8809_nrm_detail)/node_8809_nrm_base.z - node_8809_nrm_detail;
                float3 node_8809 = node_8809_nrm_combined;
                float node_9839 = pow(1.0-max(0,dot(node_8809, viewDirection)),_Fresnel);
                float3 w = float3(node_9839,node_9839,node_9839)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = forwardLight * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuseColor = _Base_Colour.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = lerp(_Colour.rgb,(_Emissive_Colour.rgb*_Emissive),(1.0 - saturate((sceneZ-partZ)/_Depth_Blend)));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,node_9839),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float4 _Base_Colour;
            uniform float _Refraction;
            uniform float _Fresnel;
            uniform sampler2D _Normal_Map_2; uniform float4 _Normal_Map_2_ST;
            uniform float _Normal_Intensity;
            uniform float _Gloss;
            uniform float _Specular;
            uniform float _Rotation_Angle;
            uniform float _CW;
            uniform float _CCW;
            uniform fixed _Rotation_Dir;
            uniform float _Depth_Blend;
            uniform float _Emissive;
            uniform float4 _Emissive_Colour;
            uniform float4 _Colour;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                float4 projPos : TEXCOORD8;
                LIGHTING_COORDS(9,10)
                UNITY_FOG_COORDS(11)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_6193 = _Time + _TimeEditor;
                float2 node_6875 = float2(0.5,0.5);
                float node_8775_ang = (_Rotation_Angle*lerp( _CW, _CCW, _Rotation_Dir )*saturate((1.0 - (distance(i.uv0,node_6875)*2.0))));
                float node_8775_spd = 1.0;
                float node_8775_cos = cos(node_8775_spd*node_8775_ang);
                float node_8775_sin = sin(node_8775_spd*node_8775_ang);
                float2 node_8775_piv = node_6875;
                float2 node_8775 = (mul(i.uv0-node_8775_piv,float2x2( node_8775_cos, -node_8775_sin, node_8775_sin, node_8775_cos))+node_8775_piv);
                float2 node_5432 = (node_8775+node_6193.g*float2(-1,0));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_5432, _BumpMap)));
                float3 _Normal_Map_2_var = UnpackNormal(tex2D(_Normal_Map_2,TRANSFORM_TEX(i.uv0, _Normal_Map_2)));
                float3 node_9079_nrm_base = _BumpMap_var.rgb + float3(0,0,1);
                float3 node_9079_nrm_detail = (_Normal_Map_2_var.rgb*_Normal_Intensity) * float3(-1,-1,1);
                float3 node_9079_nrm_combined = node_9079_nrm_base*dot(node_9079_nrm_base, node_9079_nrm_detail)/node_9079_nrm_base.z - node_9079_nrm_detail;
                float3 node_9079 = node_9079_nrm_combined;
                float3 normalLocal = normalize(node_9079);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (float2(_BumpMap_var.r,_BumpMap_var.g)*_Refraction);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 1.0 - _Gloss; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 node_8809_nrm_base = i.normalDir + float3(0,0,1);
                float3 node_8809_nrm_detail = _BumpMap_var.rgb * float3(-1,-1,1);
                float3 node_8809_nrm_combined = node_8809_nrm_base*dot(node_8809_nrm_base, node_8809_nrm_detail)/node_8809_nrm_base.z - node_8809_nrm_detail;
                float3 node_8809 = node_8809_nrm_combined;
                float node_9839 = pow(1.0-max(0,dot(node_8809, viewDirection)),_Fresnel);
                float3 w = float3(node_9839,node_9839,node_9839)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = forwardLight * attenColor;
                float3 diffuseColor = _Base_Colour.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * node_9839,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Base_Colour;
            uniform float _Gloss;
            uniform float _Specular;
            uniform float _Depth_Blend;
            uniform float _Emissive;
            uniform float4 _Emissive_Colour;
            uniform float4 _Colour;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = lerp(_Colour.rgb,(_Emissive_Colour.rgb*_Emissive),(1.0 - saturate((sceneZ-partZ)/_Depth_Blend)));
                
                float3 diffColor = _Base_Colour.rgb;
                float3 specColor = float3(_Specular,_Specular,_Specular);
                float roughness = _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
