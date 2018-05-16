// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33222,y:32656,varname:node_4013,prsc:2|emission-133-OUT,custl-2961-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31770,y:32503,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_LightVector,id:154,x:30793,y:33130,varname:node_154,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:5101,x:31770,y:32685,ptovrint:False,ptlb:node_5101,ptin:_node_5101,varname:node_5101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b9b4e784e0499544a8c9e6a5d5aea09d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7902,x:32017,y:33213,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_7902,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c705796ff4ebc1f4f8dd710bbf53bd19,ntxv:0,isnm:False|UVIN-4566-OUT;n:type:ShaderForge.SFN_NormalVector,id:5844,x:30793,y:33286,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:108,x:31006,y:33214,varname:node_108,prsc:2,dt:0|A-154-OUT,B-5844-OUT;n:type:ShaderForge.SFN_Append,id:4566,x:31810,y:33213,varname:node_4566,prsc:2|A-2624-OUT,B-119-OUT;n:type:ShaderForge.SFN_Multiply,id:133,x:32037,y:32566,varname:node_133,prsc:2|A-1304-RGB,B-5101-RGB;n:type:ShaderForge.SFN_AmbientLight,id:1433,x:32565,y:32793,varname:node_1433,prsc:2;n:type:ShaderForge.SFN_Vector1,id:119,x:31810,y:33343,varname:node_119,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:405,x:32565,y:32660,varname:node_405,prsc:2|A-133-OUT,B-1433-RGB;n:type:ShaderForge.SFN_Multiply,id:2961,x:32405,y:33176,varname:node_2961,prsc:2|A-133-OUT,B-6352-RGB,C-7902-RGB,D-8331-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:4573,x:32017,y:33408,varname:node_4573,prsc:2;n:type:ShaderForge.SFN_LightColor,id:6352,x:32017,y:33052,varname:node_6352,prsc:2;n:type:ShaderForge.SFN_Slider,id:4505,x:31860,y:33574,ptovrint:False,ptlb:Light Atten Param,ptin:_LightAttenParam,varname:node_4505,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;n:type:ShaderForge.SFN_Vector1,id:4595,x:31253,y:33344,varname:node_4595,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:8068,x:31489,y:33344,varname:node_8068,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:2624,x:31489,y:33214,varname:node_2624,prsc:2|A-1315-OUT,B-8068-OUT;n:type:ShaderForge.SFN_Multiply,id:1315,x:31253,y:33214,varname:node_1315,prsc:2|A-108-OUT,B-4595-OUT;n:type:ShaderForge.SFN_Multiply,id:8331,x:32215,y:33466,varname:node_8331,prsc:2|A-4573-OUT,B-4505-OUT;proporder:1304-5101-7902-4505;pass:END;sub:END;*/

Shader "C1/ToonLit" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_5101 ("node_5101", 2D) = "white" {}
        _Ramp ("Ramp", 2D) = "white" {}
        _LightAttenParam ("Light Atten Param", Range(0, 5)) = 2
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 2.0
            uniform float4 _Color;
            uniform sampler2D _node_5101; uniform float4 _node_5101_ST;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float _LightAttenParam;
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
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _node_5101_var = tex2D(_node_5101,TRANSFORM_TEX(i.uv0, _node_5101));
                float3 node_133 = (_Color.rgb*_node_5101_var.rgb);
                float3 emissive = node_133;
                float2 node_4566 = float2(((dot(lightDirection,i.normalDir)*0.5)+0.5),0.0);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_4566, _Ramp));
                float3 finalColor = emissive + (node_133*_LightColor0.rgb*_Ramp_var.rgb*(attenuation*_LightAttenParam));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
