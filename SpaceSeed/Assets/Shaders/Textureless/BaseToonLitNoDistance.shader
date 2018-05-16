// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34255,y:32727,varname:node_3138,prsc:2|emission-7043-OUT;n:type:ShaderForge.SFN_Slider,id:8723,x:30329,y:33179,ptovrint:False,ptlb:top_rim_blur,ptin:_top_rim_blur,varname:node_8723,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:7270,x:30725,y:33227,varname:node_7270,prsc:2|A-8723-OUT,B-7242-V;n:type:ShaderForge.SFN_Add,id:6038,x:30973,y:33248,varname:node_6038,prsc:2|A-7270-OUT,B-1252-OUT;n:type:ShaderForge.SFN_Slider,id:1252,x:30624,y:33422,ptovrint:False,ptlb:top_rim_offset,ptin:_top_rim_offset,varname:node_1252,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Fresnel,id:9569,x:31123,y:33393,varname:node_9569,prsc:2|EXP-6686-OUT;n:type:ShaderForge.SFN_Multiply,id:5920,x:31332,y:33244,varname:node_5920,prsc:2|A-6038-OUT,B-9569-OUT;n:type:ShaderForge.SFN_Vector1,id:4326,x:31594,y:33382,varname:node_4326,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:7242,x:30419,y:33259,varname:node_7242,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_TexCoord,id:5565,x:30250,y:32156,varname:node_5565,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7909,x:30580,y:32196,varname:node_7909,prsc:2|A-5565-V,B-9256-OUT;n:type:ShaderForge.SFN_Slider,id:9256,x:30423,y:32353,ptovrint:False,ptlb:height_blur,ptin:_height_blur,varname:node_9256,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:9757,x:31008,y:32196,varname:node_9757,prsc:2|A-7909-OUT,B-7836-OUT;n:type:ShaderForge.SFN_Slider,id:7836,x:30851,y:32363,ptovrint:False,ptlb:base_height,ptin:_base_height,varname:node_7836,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Clamp,id:989,x:31240,y:32196,varname:node_989,prsc:2|IN-9757-OUT,MIN-4426-OUT,MAX-1706-OUT;n:type:ShaderForge.SFN_Vector1,id:4426,x:31240,y:32323,varname:node_4426,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1706,x:31240,y:32376,varname:node_1706,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp,id:2534,x:31594,y:33246,varname:node_2534,prsc:2|IN-5920-OUT,MIN-4326-OUT,MAX-2355-OUT;n:type:ShaderForge.SFN_Lerp,id:7189,x:31603,y:32200,varname:node_7189,prsc:2|A-328-RGB,B-9938-RGB,T-989-OUT;n:type:ShaderForge.SFN_Color,id:328,x:31603,y:32522,ptovrint:False,ptlb:bottom_color,ptin:_bottom_color,varname:node_328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.7103448,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:9938,x:31603,y:32357,ptovrint:False,ptlb:top_color,ptin:_top_color,varname:node_9938,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1655172,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:3276,x:32007,y:32815,varname:node_3276,prsc:2|A-7189-OUT,B-6552-OUT,T-2534-OUT;n:type:ShaderForge.SFN_Color,id:4009,x:31328,y:32830,ptovrint:False,ptlb:rim_color,ptin:_rim_color,varname:node_4009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9862069,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7043,x:33423,y:32824,varname:node_7043,prsc:2|A-3276-OUT,B-5255-RGB,C-1671-OUT;n:type:ShaderForge.SFN_VertexColor,id:5255,x:33423,y:32967,varname:node_5255,prsc:2;n:type:ShaderForge.SFN_Slider,id:6686,x:30780,y:33593,ptovrint:False,ptlb:rim_power,ptin:_rim_power,varname:node_6686,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.965369,max:5;n:type:ShaderForge.SFN_Slider,id:683,x:31171,y:33005,ptovrint:False,ptlb:EmitPower,ptin:_EmitPower,varname:node_683,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:4;n:type:ShaderForge.SFN_Multiply,id:6552,x:31523,y:32830,varname:node_6552,prsc:2|A-4009-RGB,B-683-OUT;n:type:ShaderForge.SFN_Vector1,id:2355,x:31594,y:33439,varname:node_2355,prsc:2,v1:1;n:type:ShaderForge.SFN_Depth,id:8178,x:32676,y:34551,varname:node_8178,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5711,x:32851,y:34601,varname:node_5711,prsc:2|A-8178-OUT,B-9170-OUT;n:type:ShaderForge.SFN_Clamp01,id:7976,x:33034,y:34601,cmnt:DistanceFade,varname:node_7976,prsc:2|IN-5711-OUT;n:type:ShaderForge.SFN_Slider,id:1671,x:33266,y:33109,ptovrint:False,ptlb:OverallBrightness,ptin:_OverallBrightness,varname:node_1671,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:4;n:type:ShaderForge.SFN_Slider,id:9170,x:32519,y:34707,ptovrint:False,ptlb:DistanceMulOld,ptin:_DistanceMulOld,varname:node_9170,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.07923865,max:1;n:type:ShaderForge.SFN_Exp,id:7056,x:33017,y:33348,varname:node_7056,prsc:2,et:0|IN-4940-OUT;n:type:ShaderForge.SFN_Depth,id:1614,x:32271,y:33300,varname:node_1614,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5777,x:32446,y:33338,varname:node_5777,prsc:2|A-1614-OUT,B-4489-OUT,C-2434-OUT;n:type:ShaderForge.SFN_Clamp01,id:7301,x:32629,y:33338,varname:node_7301,prsc:2|IN-5777-OUT;n:type:ShaderForge.SFN_Slider,id:4489,x:32114,y:33450,ptovrint:False,ptlb:DistanceMul_copy,ptin:_DistanceMul_copy,varname:_DistanceMul_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:11.39761,max:100;n:type:ShaderForge.SFN_Multiply,id:4940,x:32836,y:33348,varname:node_4940,prsc:2|A-7301-OUT,B-9845-OUT;n:type:ShaderForge.SFN_Vector1,id:9845,x:32629,y:33476,varname:node_9845,prsc:2,v1:-1;n:type:ShaderForge.SFN_OneMinus,id:4207,x:33204,y:33348,varname:node_4207,prsc:2|IN-7056-OUT;n:type:ShaderForge.SFN_Multiply,id:3951,x:33436,y:33348,cmnt:Distance Amplify,varname:node_3951,prsc:2|A-4207-OUT,B-4719-OUT;n:type:ShaderForge.SFN_Slider,id:4719,x:33047,y:33539,ptovrint:False,ptlb:DistanceAmplify,ptin:_DistanceAmplify,varname:node_4719,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:10;n:type:ShaderForge.SFN_Vector1,id:2434,x:32271,y:33527,varname:node_2434,prsc:2,v1:0.001;proporder:8723-1252-9256-7836-328-9938-4009-6686-683-1671-9170-4489-4719;pass:END;sub:END;*/

Shader "C1/TextureLessNoDistance" {
    Properties {
        _top_rim_blur ("top_rim_blur", Range(0, 1)) = 1
        _top_rim_offset ("top_rim_offset", Range(-1, 1)) = 0
        _height_blur ("height_blur", Range(0, 1)) = 1
        _base_height ("base_height", Range(-1, 1)) = 0
        _bottom_color ("bottom_color", Color) = (0,0.7103448,1,1)
        _top_color ("top_color", Color) = (1,0.1655172,0,1)
        _rim_color ("rim_color", Color) = (0.9862069,1,0,1)
        _rim_power ("rim_power", Range(0, 5)) = 2.965369
        _EmitPower ("EmitPower", Range(0, 4)) = 4
        _OverallBrightness ("OverallBrightness", Range(0, 4)) = 2
        _DistanceMulOld ("DistanceMulOld", Range(0, 1)) = 0.07923865
        _DistanceMul_copy ("DistanceMul_copy", Range(0, 100)) = 11.39761
        _DistanceAmplify ("DistanceAmplify", Range(0, 10)) = 2
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _top_rim_blur;
            uniform float _top_rim_offset;
            uniform float _height_blur;
            uniform float _base_height;
            uniform float4 _bottom_color;
            uniform float4 _top_color;
            uniform float4 _rim_color;
            uniform float _rim_power;
            uniform float _EmitPower;
            uniform float _OverallBrightness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = (lerp(lerp(_bottom_color.rgb,_top_color.rgb,clamp(((i.uv0.g*_height_blur)+_base_height),0.0,1.0)),(_rim_color.rgb*_EmitPower),clamp((((_top_rim_blur*i.uv0.g)+_top_rim_offset)*pow(1.0-max(0,dot(normalDirection, viewDirection)),_rim_power)),0.0,1.0))*i.vertexColor.rgb*_OverallBrightness);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
