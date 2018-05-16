// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33095,y:32577,varname:node_3138,prsc:2|emission-9316-OUT,clip-8525-OUT;n:type:ShaderForge.SFN_TexCoord,id:6294,x:30879,y:32979,varname:node_6294,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:9316,x:32462,y:32523,varname:node_9316,prsc:2|A-7896-RGB,B-9825-RGB,T-8929-OUT;n:type:ShaderForge.SFN_Color,id:7896,x:31930,y:32194,ptovrint:False,ptlb:node_7896,ptin:_node_7896,varname:node_7896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1586208,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9825,x:31912,y:32378,ptovrint:False,ptlb:node_9825,ptin:_node_9825,varname:node_9825,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.2689654,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:8929,x:31518,y:32499,ptovrint:False,ptlb:node_8929,ptin:_node_8929,varname:node_8929,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6027342,max:1;n:type:ShaderForge.SFN_RemapRange,id:5987,x:31063,y:32979,varname:node_5987,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6294-UVOUT;n:type:ShaderForge.SFN_Length,id:8875,x:31600,y:33009,varname:node_8875,prsc:2|IN-5987-OUT;n:type:ShaderForge.SFN_Multiply,id:8720,x:32665,y:32682,varname:node_8720,prsc:2|A-9316-OUT,B-8525-OUT;n:type:ShaderForge.SFN_Floor,id:1713,x:32103,y:33098,varname:node_1713,prsc:2|IN-8875-OUT;n:type:ShaderForge.SFN_OneMinus,id:3222,x:32270,y:33098,varname:node_3222,prsc:2|IN-1713-OUT;n:type:ShaderForge.SFN_Add,id:726,x:31928,y:32935,varname:node_726,prsc:2|A-4415-OUT,B-8875-OUT;n:type:ShaderForge.SFN_Vector1,id:4415,x:31757,y:32889,varname:node_4415,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Floor,id:637,x:32103,y:32935,varname:node_637,prsc:2|IN-726-OUT;n:type:ShaderForge.SFN_Multiply,id:8525,x:32480,y:32881,varname:node_8525,prsc:2|A-637-OUT,B-3222-OUT,C-1402-OUT;n:type:ShaderForge.SFN_ArcTan2,id:2918,x:31596,y:32696,varname:node_2918,prsc:2,attp:2|A-49-G,B-49-R;n:type:ShaderForge.SFN_ComponentMask,id:49,x:31398,y:32696,varname:node_49,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5987-OUT;n:type:ShaderForge.SFN_Add,id:6390,x:31858,y:32661,varname:node_6390,prsc:2|A-8929-OUT,B-2918-OUT;n:type:ShaderForge.SFN_Floor,id:6645,x:32049,y:32676,varname:node_6645,prsc:2|IN-6390-OUT;n:type:ShaderForge.SFN_OneMinus,id:1402,x:32264,y:32647,varname:node_1402,prsc:2|IN-6645-OUT;proporder:9825-7896-8929;pass:END;sub:END;*/

Shader "Shader Forge/HealthBar" {
    Properties {
        _node_9825 ("node_9825", Color) = (1,0.2689654,0,1)
        _node_7896 ("node_7896", Color) = (0.1586208,1,0,1)
        _node_8929 ("node_8929", Range(0, 1)) = 0.6027342
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _node_7896;
            uniform float4 _node_9825;
            uniform float _node_8929;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_5987 = (i.uv0*2.0+-1.0);
                float node_8875 = length(node_5987);
                float2 node_49 = node_5987.rg;
                float node_8525 = (floor((0.3+node_8875))*(1.0 - floor(node_8875))*(1.0 - floor((_node_8929+((atan2(node_49.g,node_49.r)/6.28318530718)+0.5)))));
                clip(node_8525 - 0.5);
////// Lighting:
////// Emissive:
                float3 node_9316 = lerp(_node_7896.rgb,_node_9825.rgb,_node_8929);
                float3 emissive = node_9316;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _node_8929;
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
            float4 frag(VertexOutput i) : COLOR {
                float2 node_5987 = (i.uv0*2.0+-1.0);
                float node_8875 = length(node_5987);
                float2 node_49 = node_5987.rg;
                float node_8525 = (floor((0.3+node_8875))*(1.0 - floor(node_8875))*(1.0 - floor((_node_8929+((atan2(node_49.g,node_49.r)/6.28318530718)+0.5)))));
                clip(node_8525 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
