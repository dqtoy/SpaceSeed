// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33074,y:32687,varname:node_3138,prsc:2|diff-6864-OUT,clip-8206-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32333,y:32577,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8207,x:31389,y:32973,ptovrint:False,ptlb:node_8207,ptin:_node_8207,varname:node_8207,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:131,x:32333,y:32403,ptovrint:False,ptlb:node_131,ptin:_node_131,varname:node_131,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6864,x:32654,y:32503,varname:node_6864,prsc:2|A-131-RGB,B-7241-RGB,T-5624-OUT;n:type:ShaderForge.SFN_RemapRange,id:3504,x:32169,y:32795,varname:node_3504,prsc:2,frmn:0.4,frmx:0.6,tomn:0,tomx:1|IN-4180-OUT;n:type:ShaderForge.SFN_OneMinus,id:4180,x:32004,y:32795,varname:node_4180,prsc:2|IN-8206-OUT;n:type:ShaderForge.SFN_Add,id:4044,x:31606,y:33073,varname:node_4044,prsc:2|A-8207-R,B-8990-OUT;n:type:ShaderForge.SFN_Slider,id:5797,x:31058,y:33155,ptovrint:False,ptlb:node_5797,ptin:_node_5797,varname:node_5797,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_RemapRange,id:8990,x:31389,y:33155,varname:node_8990,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5797-OUT;n:type:ShaderForge.SFN_Clamp01,id:8206,x:31799,y:33073,varname:node_8206,prsc:2|IN-4044-OUT;n:type:ShaderForge.SFN_Multiply,id:3241,x:32399,y:32812,varname:node_3241,prsc:2|A-3504-OUT,B-6358-OUT;n:type:ShaderForge.SFN_Clamp01,id:5624,x:32583,y:32812,varname:node_5624,prsc:2|IN-3241-OUT;n:type:ShaderForge.SFN_Slider,id:6358,x:32242,y:32963,ptovrint:False,ptlb:node_6358,ptin:_node_6358,varname:node_6358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9362605,max:4;proporder:7241-8207-131-5797-6358;pass:END;sub:END;*/

Shader "Shader Forge/DissolveBasic" {
    Properties {
        _Color ("Color", Color) = (1,0,0,1)
        _node_8207 ("node_8207", 2D) = "white" {}
        _node_131 ("node_131", 2D) = "black" {}
        _node_5797 ("node_5797", Range(0, 1)) = 0.5
        _node_6358 ("node_6358", Range(0, 4)) = 0.9362605
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform sampler2D _node_8207; uniform float4 _node_8207_ST;
            uniform sampler2D _node_131; uniform float4 _node_131_ST;
            uniform float _node_5797;
            uniform float _node_6358;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _node_8207_var = tex2D(_node_8207,TRANSFORM_TEX(i.uv0, _node_8207));
                float node_8206 = saturate((_node_8207_var.r+(_node_5797*2.0+-1.0)));
                clip(node_8206 - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _node_131_var = tex2D(_node_131,TRANSFORM_TEX(i.uv0, _node_131));
                float node_3241 = (((1.0 - node_8206)*5.0+-2.0)*_node_6358);
                float3 diffuseColor = lerp(_node_131_var.rgb,_Color.rgb,saturate(node_3241));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform sampler2D _node_8207; uniform float4 _node_8207_ST;
            uniform sampler2D _node_131; uniform float4 _node_131_ST;
            uniform float _node_5797;
            uniform float _node_6358;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _node_8207_var = tex2D(_node_8207,TRANSFORM_TEX(i.uv0, _node_8207));
                float node_8206 = saturate((_node_8207_var.r+(_node_5797*2.0+-1.0)));
                clip(node_8206 - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _node_131_var = tex2D(_node_131,TRANSFORM_TEX(i.uv0, _node_131));
                float node_3241 = (((1.0 - node_8206)*5.0+-2.0)*_node_6358);
                float3 diffuseColor = lerp(_node_131_var.rgb,_Color.rgb,saturate(node_3241));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
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
            uniform sampler2D _node_8207; uniform float4 _node_8207_ST;
            uniform float _node_5797;
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
                float4 _node_8207_var = tex2D(_node_8207,TRANSFORM_TEX(i.uv0, _node_8207));
                float node_8206 = saturate((_node_8207_var.r+(_node_5797*2.0+-1.0)));
                clip(node_8206 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
