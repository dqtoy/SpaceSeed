// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33713,y:32659,varname:node_3138,prsc:2|emission-5038-RGB;n:type:ShaderForge.SFN_ScreenPos,id:9789,x:31982,y:32600,varname:node_9789,prsc:2,sctp:0;n:type:ShaderForge.SFN_Vector1,id:4464,x:31982,y:32844,varname:node_4464,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:4333,x:32244,y:32720,varname:node_4333,prsc:2|A-9789-UVOUT,B-4464-OUT;n:type:ShaderForge.SFN_Tex2d,id:490,x:32479,y:32720,ptovrint:False,ptlb:node_490,ptin:_node_490,varname:node_490,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False|UVIN-4333-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9076,x:32709,y:32720,varname:node_9076,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-490-RGB;n:type:ShaderForge.SFN_Multiply,id:7736,x:32913,y:32896,varname:node_7736,prsc:2|A-9076-OUT,B-927-OUT;n:type:ShaderForge.SFN_Vector1,id:927,x:32509,y:33092,varname:node_927,prsc:2,v1:0.2;n:type:ShaderForge.SFN_TexCoord,id:1301,x:32913,y:33080,varname:node_1301,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:7226,x:33132,y:32971,varname:node_7226,prsc:2|A-7736-OUT,B-1301-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5038,x:33408,y:32840,ptovrint:False,ptlb:node_5038,ptin:_node_5038,varname:node_5038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:61c0b9c0523734e0e91bc6043c72a490,ntxv:0,isnm:False|UVIN-7226-OUT;proporder:490-5038;pass:END;sub:END;*/

Shader "Shader Forge/CartoonFire" {
    Properties {
        _node_490 ("node_490", 2D) = "white" {}
        _node_5038 ("node_5038", 2D) = "white" {}
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
            uniform sampler2D _node_490; uniform float4 _node_490_ST;
            uniform sampler2D _node_5038; uniform float4 _node_5038_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
////// Lighting:
////// Emissive:
                float2 node_4333 = (i.screenPos.rg*0.1);
                float4 _node_490_var = tex2D(_node_490,TRANSFORM_TEX(node_4333, _node_490));
                float2 node_7226 = ((_node_490_var.rgb.rg*0.2)+i.uv0);
                float4 _node_5038_var = tex2D(_node_5038,TRANSFORM_TEX(node_7226, _node_5038));
                float3 emissive = _node_5038_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
