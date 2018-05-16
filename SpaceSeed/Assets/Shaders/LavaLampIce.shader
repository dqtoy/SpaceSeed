// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33326,y:32723,varname:node_3138,prsc:2|emission-3993-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31984,y:32559,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:1017,x:31923,y:32761,ptovrint:False,ptlb:node_1017,ptin:_node_1017,varname:node_1017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3,c3:0.7,c4:1;n:type:ShaderForge.SFN_Lerp,id:2259,x:32315,y:32734,varname:node_2259,prsc:2|A-7241-RGB,B-1017-RGB,T-7406-OUT;n:type:ShaderForge.SFN_Vector1,id:9636,x:31843,y:33129,varname:node_9636,prsc:2,v1:2;n:type:ShaderForge.SFN_Fresnel,id:7406,x:32109,y:32964,varname:node_7406,prsc:2|EXP-9636-OUT;n:type:ShaderForge.SFN_Cubemap,id:5836,x:32405,y:32977,ptovrint:False,ptlb:node_5836,ptin:_node_5836,varname:node_5836,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:06851315dcd536b4e89be297fc210934,pvfc:0;n:type:ShaderForge.SFN_Blend,id:3993,x:32780,y:32806,varname:node_3993,prsc:2,blmd:10,clmp:True|SRC-8181-OUT,DST-2259-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1433,x:32352,y:33197,ptovrint:False,ptlb:node_1433,ptin:_node_1433,varname:node_1433,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:8181,x:32617,y:33051,varname:node_8181,prsc:2|A-5836-RGB,B-1433-OUT;proporder:7241-1017-5836-1433;pass:END;sub:END;*/

Shader "Shader Forge/LavaLampIce" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _node_1017 ("node_1017", Color) = (0,0.3,0.7,1)
        _node_5836 ("node_5836", Cube) = "_Skybox" {}
        _node_1433 ("node_1433", Float ) = 0.1
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
            uniform float4 _Color;
            uniform float4 _node_1017;
            uniform samplerCUBE _node_5836;
            uniform float _node_1433;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float3 emissive = saturate(( lerp(_Color.rgb,_node_1017.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0)) > 0.5 ? (1.0-(1.0-2.0*(lerp(_Color.rgb,_node_1017.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0))-0.5))*(1.0-(texCUBE(_node_5836,viewReflectDirection).rgb*_node_1433))) : (2.0*lerp(_Color.rgb,_node_1017.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0))*(texCUBE(_node_5836,viewReflectDirection).rgb*_node_1433)) ));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
