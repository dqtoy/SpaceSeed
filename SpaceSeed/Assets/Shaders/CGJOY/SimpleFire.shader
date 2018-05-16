// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:35220,y:32641,varname:node_9361,prsc:2|custl-1010-OUT,clip-1580-OUT;n:type:ShaderForge.SFN_TexCoord,id:2701,x:32377,y:32777,varname:node_2701,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9281,x:32621,y:32777,varname:node_9281,prsc:2,spu:0,spv:-0.5|UVIN-2701-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7037,x:32834,y:32777,varname:node_7037,prsc:2,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False|UVIN-9281-UVOUT,TEX-5652-TEX;n:type:ShaderForge.SFN_Color,id:8509,x:33666,y:32603,ptovrint:False,ptlb:BaseColor,ptin:_BaseColor,varname:node_8509,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5849898,c3:0.3161765,c4:1;n:type:ShaderForge.SFN_Multiply,id:6799,x:33666,y:32753,varname:node_6799,prsc:2|A-8509-RGB,B-7037-RGB;n:type:ShaderForge.SFN_Step,id:4813,x:33707,y:33065,varname:node_4813,prsc:2|A-9825-OUT,B-1392-OUT;n:type:ShaderForge.SFN_Multiply,id:1392,x:33410,y:33218,varname:node_1392,prsc:2|A-7037-R,B-398-OUT;n:type:ShaderForge.SFN_Slider,id:9825,x:33550,y:32994,ptovrint:False,ptlb:FireTextureSize,ptin:_FireTextureSize,varname:node_9825,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Subtract,id:9045,x:33927,y:33214,varname:node_9045,prsc:2|A-9825-OUT,B-8555-OUT;n:type:ShaderForge.SFN_Slider,id:8555,x:33559,y:33414,ptovrint:False,ptlb:RimSize,ptin:_RimSize,varname:node_8555,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Step,id:1580,x:33716,y:33488,varname:node_1580,prsc:2|A-9045-OUT,B-1392-OUT;n:type:ShaderForge.SFN_Subtract,id:38,x:34175,y:32961,varname:node_38,prsc:2|A-1580-OUT,B-4813-OUT;n:type:ShaderForge.SFN_Add,id:1010,x:34709,y:32841,varname:node_1010,prsc:2|A-6799-OUT,B-5446-OUT;n:type:ShaderForge.SFN_Color,id:9405,x:34175,y:33118,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:node_9405,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5446,x:34397,y:33030,varname:node_5446,prsc:2|A-38-OUT,B-9405-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:5652,x:33129,y:31775,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_5652,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:8576,x:32190,y:33367,varname:node_8576,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:1524,x:32190,y:33248,varname:node_1524,prsc:2,v1:0.5,v2:0.2;n:type:ShaderForge.SFN_Distance,id:2978,x:32407,y:33315,varname:node_2978,prsc:2|A-1524-OUT,B-8576-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:5527,x:32589,y:33315,varname:node_5527,prsc:2|IN-2978-OUT;n:type:ShaderForge.SFN_Slider,id:9898,x:32304,y:33635,ptovrint:False,ptlb:MainSize,ptin:_MainSize,varname:node_9898,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.062276,max:5;n:type:ShaderForge.SFN_Power,id:398,x:32891,y:33400,varname:node_398,prsc:2|VAL-5527-OUT,EXP-3378-OUT;n:type:ShaderForge.SFN_Vector1,id:3747,x:32461,y:33541,varname:node_3747,prsc:2,v1:5;n:type:ShaderForge.SFN_Subtract,id:3378,x:32632,y:33565,varname:node_3378,prsc:2|A-3747-OUT,B-9898-OUT;proporder:8509-9825-8555-9405-5652-9898;pass:END;sub:END;*/

Shader "Beginner/SimpleFire" {
    Properties {
        [HDR]_BaseColor ("BaseColor", Color) = (1,0.5849898,0.3161765,1)
        _FireTextureSize ("FireTextureSize", Range(0, 1)) = 0.3
        _RimSize ("RimSize", Range(0, 1)) = 0.1
        [HDR]_RimColor ("RimColor", Color) = (0,1,1,1)
        _MainTexture ("MainTexture", 2D) = "white" {}
        _MainSize ("MainSize", Range(0, 5)) = 3.062276
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _BaseColor;
            uniform float _FireTextureSize;
            uniform float _RimSize;
            uniform float4 _RimColor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float _MainSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_8348 = _Time + _TimeEditor;
                float2 node_9281 = (i.uv0+node_8348.g*float2(0,-0.5));
                float4 node_7037 = tex2D(_MainTexture,TRANSFORM_TEX(node_9281, _MainTexture));
                float node_1392 = (node_7037.r*pow((1.0 - distance(float2(0.5,0.2),i.uv0)),(5.0-_MainSize)));
                float node_1580 = step((_FireTextureSize-_RimSize),node_1392);
                clip(node_1580 - 0.5);
////// Lighting:
                float3 finalColor = ((_BaseColor.rgb*node_7037.rgb)+((node_1580-step(_FireTextureSize,node_1392))*_RimColor.rgb));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _FireTextureSize;
            uniform float _RimSize;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float _MainSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_7707 = _Time + _TimeEditor;
                float2 node_9281 = (i.uv0+node_7707.g*float2(0,-0.5));
                float4 node_7037 = tex2D(_MainTexture,TRANSFORM_TEX(node_9281, _MainTexture));
                float node_1392 = (node_7037.r*pow((1.0 - distance(float2(0.5,0.2),i.uv0)),(5.0-_MainSize)));
                float node_1580 = step((_FireTextureSize-_RimSize),node_1392);
                clip(node_1580 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
