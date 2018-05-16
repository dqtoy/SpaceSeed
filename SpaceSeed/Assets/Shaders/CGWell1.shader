// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34077,y:32527,varname:node_3138,prsc:2|emission-2038-OUT,clip-9805-OUT;n:type:ShaderForge.SFN_TexCoord,id:7656,x:31736,y:32671,varname:node_7656,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:5427,x:32374,y:32588,varname:node_5427,prsc:2|A-7656-UVOUT,B-5658-OUT;n:type:ShaderForge.SFN_Vector1,id:8039,x:31737,y:32924,varname:node_8039,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:4741,x:31997,y:32778,varname:node_4741,prsc:2|A-7656-UVOUT,B-8039-OUT;n:type:ShaderForge.SFN_Divide,id:5658,x:32189,y:32778,varname:node_5658,prsc:2|A-4741-OUT,B-9249-OUT;n:type:ShaderForge.SFN_Slider,id:9249,x:31960,y:33105,ptovrint:False,ptlb:node_9249,ptin:_node_9249,varname:node_9249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5632324,max:1;n:type:ShaderForge.SFN_Lerp,id:3311,x:32601,y:32776,varname:node_3311,prsc:2|A-5427-OUT,B-8039-OUT,T-9249-OUT;n:type:ShaderForge.SFN_Clamp01,id:8601,x:32780,y:32776,varname:node_8601,prsc:2|IN-3311-OUT;n:type:ShaderForge.SFN_Tex2d,id:2168,x:33003,y:32776,ptovrint:False,ptlb:WaveTexture,ptin:_WaveTexture,varname:node_2168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a985dfcd1d3ca94e9753748ed65c697,ntxv:0,isnm:False|UVIN-8601-OUT;n:type:ShaderForge.SFN_Tex2d,id:4000,x:32851,y:31951,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_4000,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5798ded558355430c8a9b13ee12a847c,ntxv:0,isnm:False|UVIN-1415-OUT;n:type:ShaderForge.SFN_Color,id:6855,x:32851,y:32167,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_6855,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03448272,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:3919,x:33088,y:32091,varname:node_3919,prsc:2|A-4000-RGB,B-6855-RGB;n:type:ShaderForge.SFN_Tex2d,id:8362,x:33003,y:32987,ptovrint:False,ptlb:NoiseTextureNotUsed,ptin:_NoiseTextureNotUsed,varname:node_8362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e28dc97a9541e3642a48c0e3886688c5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6298,x:33295,y:32936,varname:node_6298,prsc:2|A-2168-R,B-8362-R;n:type:ShaderForge.SFN_Multiply,id:2038,x:33432,y:32439,varname:node_2038,prsc:2|A-3919-OUT,B-2168-R;n:type:ShaderForge.SFN_ComponentMask,id:9805,x:33635,y:32599,varname:node_9805,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2038-OUT;n:type:ShaderForge.SFN_TexCoord,id:7166,x:32208,y:31957,varname:node_7166,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1415,x:32424,y:32023,varname:node_1415,prsc:2|A-7166-UVOUT,B-7752-OUT;n:type:ShaderForge.SFN_Slider,id:7752,x:32051,y:32161,ptovrint:False,ptlb:UVValue,ptin:_UVValue,varname:node_7752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;proporder:9249-2168-4000-6855-8362-7752;pass:END;sub:END;*/

Shader "Shader Forge/CGWell1" {
    Properties {
        _node_9249 ("node_9249", Range(0, 1)) = 0.5632324
        _WaveTexture ("WaveTexture", 2D) = "white" {}
        _MainTexture ("MainTexture", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (0.03448272,1,0,1)
        _NoiseTextureNotUsed ("NoiseTextureNotUsed", 2D) = "white" {}
        _UVValue ("UVValue", Range(0, 5)) = 2
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
            uniform float _node_9249;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float4 _MainColor;
            uniform float _UVValue;
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
                float2 node_1415 = (i.uv0*_UVValue);
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_1415, _MainTexture));
                float node_8039 = 0.5;
                float2 node_8601 = saturate(lerp((i.uv0+((i.uv0-node_8039)/_node_9249)),float2(node_8039,node_8039),_node_9249));
                float4 _WaveTexture_var = tex2D(_WaveTexture,TRANSFORM_TEX(node_8601, _WaveTexture));
                float3 node_2038 = ((_MainTexture_var.rgb*_MainColor.rgb)*_WaveTexture_var.r);
                clip(node_2038.g - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = node_2038;
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
            uniform float _node_9249;
            uniform sampler2D _WaveTexture; uniform float4 _WaveTexture_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float4 _MainColor;
            uniform float _UVValue;
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
                float2 node_1415 = (i.uv0*_UVValue);
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_1415, _MainTexture));
                float node_8039 = 0.5;
                float2 node_8601 = saturate(lerp((i.uv0+((i.uv0-node_8039)/_node_9249)),float2(node_8039,node_8039),_node_9249));
                float4 _WaveTexture_var = tex2D(_WaveTexture,TRANSFORM_TEX(node_8601, _WaveTexture));
                float3 node_2038 = ((_MainTexture_var.rgb*_MainColor.rgb)*_WaveTexture_var.r);
                clip(node_2038.g - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
