// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33222,y:32656,varname:node_4013,prsc:2|emission-271-OUT,custl-2961-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31936,y:32177,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_LightVector,id:154,x:30747,y:33203,varname:node_154,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:5101,x:31936,y:32357,ptovrint:False,ptlb:Base,ptin:_Base,varname:node_5101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b9b4e784e0499544a8c9e6a5d5aea09d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6399,x:31729,y:32559,ptovrint:False,ptlb:Emit,ptin:_Emit,varname:node_6399,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b4c119f277aec894d9d28c7e1b49ed8e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7902,x:32047,y:33287,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_7902,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c705796ff4ebc1f4f8dd710bbf53bd19,ntxv:0,isnm:False|UVIN-4566-OUT;n:type:ShaderForge.SFN_NormalVector,id:5844,x:30747,y:33359,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:108,x:30960,y:33287,varname:node_108,prsc:2,dt:0|A-154-OUT,B-5844-OUT;n:type:ShaderForge.SFN_Append,id:4566,x:31807,y:33287,varname:node_4566,prsc:2|A-2624-OUT,B-119-OUT;n:type:ShaderForge.SFN_Multiply,id:133,x:32203,y:32240,varname:node_133,prsc:2|A-1304-RGB,B-5101-RGB;n:type:ShaderForge.SFN_AmbientLight,id:1433,x:32477,y:32550,varname:node_1433,prsc:2;n:type:ShaderForge.SFN_Vector1,id:119,x:31807,y:33414,varname:node_119,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:405,x:32477,y:32402,varname:node_405,prsc:2|A-133-OUT,B-2674-OUT;n:type:ShaderForge.SFN_Multiply,id:2961,x:32505,y:33323,varname:node_2961,prsc:2|A-133-OUT,B-6352-RGB,C-7902-RGB,D-8417-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:4573,x:32047,y:33473,varname:node_4573,prsc:2;n:type:ShaderForge.SFN_LightColor,id:6352,x:32047,y:33147,varname:node_6352,prsc:2;n:type:ShaderForge.SFN_Slider,id:4505,x:31890,y:33630,ptovrint:False,ptlb:Light Atten Param,ptin:_LightAttenParam,varname:node_4505,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;n:type:ShaderForge.SFN_Vector1,id:4595,x:31241,y:33435,varname:node_4595,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:8068,x:31528,y:33427,varname:node_8068,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:2624,x:31528,y:33285,varname:node_2624,prsc:2|A-1315-OUT,B-8068-OUT;n:type:ShaderForge.SFN_Multiply,id:1315,x:31241,y:33285,varname:node_1315,prsc:2|A-108-OUT,B-4595-OUT;n:type:ShaderForge.SFN_Vector1,id:5874,x:31729,y:32720,varname:node_5874,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Color,id:3966,x:31729,y:32805,ptovrint:False,ptlb:EmitTint,ptin:_EmitTint,varname:node_3966,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_If,id:2674,x:32112,y:32704,varname:node_2674,prsc:2|A-6399-RGB,B-5874-OUT,GT-3966-RGB,EQ-3966-RGB,LT-7241-OUT;n:type:ShaderForge.SFN_Vector4,id:7241,x:31729,y:32958,varname:node_7241,prsc:2,v1:1,v2:1,v3:1,v4:1;n:type:ShaderForge.SFN_Multiply,id:8417,x:32228,y:33521,varname:node_8417,prsc:2|A-4573-OUT,B-4505-OUT;n:type:ShaderForge.SFN_Add,id:271,x:32677,y:32485,varname:node_271,prsc:2|A-405-OUT,B-1433-RGB;proporder:1304-5101-7902-6399-4505-3966;pass:END;sub:END;*/

Shader "C1/ToonLitEmit" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _Base ("Base", 2D) = "white" {}
        _Ramp ("Ramp", 2D) = "white" {}
        _Emit ("Emit", 2D) = "white" {}
        _LightAttenParam ("Light Atten Param", Range(0, 5)) = 2
        [HDR]_EmitTint ("EmitTint", Color) = (1,1,1,1)
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
            uniform sampler2D _Base; uniform float4 _Base_ST;
            uniform sampler2D _Emit; uniform float4 _Emit_ST;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float _LightAttenParam;
            uniform float4 _EmitTint;
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
                float4 _Base_var = tex2D(_Base,TRANSFORM_TEX(i.uv0, _Base));
                float3 node_133 = (_Color.rgb*_Base_var.rgb);
                float4 _Emit_var = tex2D(_Emit,TRANSFORM_TEX(i.uv0, _Emit));
                float node_2674_if_leA = step(_Emit_var.rgb,0.1);
                float node_2674_if_leB = step(0.1,_Emit_var.rgb);
                float3 emissive = ((node_133*lerp((node_2674_if_leA*float4(1,1,1,1))+(node_2674_if_leB*_EmitTint.rgb),_EmitTint.rgb,node_2674_if_leA*node_2674_if_leB))+UNITY_LIGHTMODEL_AMBIENT.rgb).rgb;
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
