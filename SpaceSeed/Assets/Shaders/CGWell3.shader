// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33440,y:32649,varname:node_3138,prsc:2|emission-2095-OUT,voffset-518-OUT;n:type:ShaderForge.SFN_TexCoord,id:1504,x:31771,y:32804,varname:node_1504,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Panner,id:9948,x:31994,y:32804,varname:node_9948,prsc:2,spu:0,spv:1|UVIN-1504-UVOUT,DIST-9705-OUT;n:type:ShaderForge.SFN_VertexColor,id:9510,x:32000,y:32453,varname:node_9510,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9705,x:32243,y:32584,varname:node_9705,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-9510-A;n:type:ShaderForge.SFN_Multiply,id:5057,x:32943,y:32582,varname:node_5057,prsc:2|A-4202-OUT,B-9303-OUT,C-9510-RGB;n:type:ShaderForge.SFN_Tex2d,id:4722,x:32223,y:32804,ptovrint:False,ptlb:node_4722,ptin:_node_4722,varname:node_4722,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:feb28a5af78197547a4b968fd1b283cd,ntxv:0,isnm:False|UVIN-9948-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4202,x:32467,y:32804,varname:node_4202,prsc:2|A-4722-RGB,B-4722-A;n:type:ShaderForge.SFN_Vector1,id:9303,x:32756,y:32777,varname:node_9303,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:2095,x:33173,y:32754,varname:node_2095,prsc:2|A-5057-OUT,B-2563-OUT,C-5340-RGB;n:type:ShaderForge.SFN_Vector1,id:2563,x:32756,y:32855,varname:node_2563,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Color,id:5340,x:32756,y:33008,ptovrint:False,ptlb:node_5340,ptin:_node_5340,varname:node_5340,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.08088237,c2:0.08088237,c3:0.08088237,c4:1;n:type:ShaderForge.SFN_Vector1,id:8201,x:32811,y:33217,varname:node_8201,prsc:2,v1:0.2;n:type:ShaderForge.SFN_NormalVector,id:639,x:32811,y:33309,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:518,x:33079,y:33193,varname:node_518,prsc:2|A-4202-OUT,B-8201-OUT,C-639-OUT;proporder:4722-5340;pass:END;sub:END;*/

Shader "Shader Forge/CGWell3" {
    Properties {
        _node_4722 ("node_4722", 2D) = "white" {}
        _node_5340 ("node_5340", Color) = (0.08088237,0.08088237,0.08088237,1)
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
            uniform sampler2D _node_4722; uniform float4 _node_4722_ST;
            uniform float4 _node_5340;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_9948 = (o.uv1+(o.vertexColor.a*1.0+-0.5)*float2(0,1));
                float4 _node_4722_var = tex2Dlod(_node_4722,float4(TRANSFORM_TEX(node_9948, _node_4722),0.0,0));
                float3 node_4202 = (_node_4722_var.rgb*_node_4722_var.a);
                v.vertex.xyz += (node_4202*0.2*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float2 node_9948 = (i.uv1+(i.vertexColor.a*1.0+-0.5)*float2(0,1));
                float4 _node_4722_var = tex2D(_node_4722,TRANSFORM_TEX(node_9948, _node_4722));
                float3 node_4202 = (_node_4722_var.rgb*_node_4722_var.a);
                float3 emissive = ((node_4202*1.0*i.vertexColor.rgb)+0.5+_node_5340.rgb);
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
            uniform sampler2D _node_4722; uniform float4 _node_4722_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv1 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_9948 = (o.uv1+(o.vertexColor.a*1.0+-0.5)*float2(0,1));
                float4 _node_4722_var = tex2Dlod(_node_4722,float4(TRANSFORM_TEX(node_9948, _node_4722),0.0,0));
                float3 node_4202 = (_node_4722_var.rgb*_node_4722_var.a);
                v.vertex.xyz += (node_4202*0.2*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
