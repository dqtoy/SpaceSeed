// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:34188,y:32794,varname:node_2865,prsc:2|emission-8047-OUT,custl-4043-OUT,alpha-8152-OUT;n:type:ShaderForge.SFN_DepthBlend,id:5783,x:32592,y:33185,varname:node_5783,prsc:2|DIST-4297-OUT;n:type:ShaderForge.SFN_Slider,id:4297,x:32251,y:33232,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_4297,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:8152,x:32858,y:32992,varname:node_8152,prsc:2|A-9756-OUT,B-5783-OUT;n:type:ShaderForge.SFN_Tex2d,id:3215,x:32332,y:32816,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_3215,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:76b1f016590abc440ad5fe08716ae7e8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:8702,x:32358,y:32616,varname:node_8702,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2158,x:32708,y:32715,varname:node_2158,prsc:2|A-8702-RGB,B-1309-OUT;n:type:ShaderForge.SFN_Slider,id:1309,x:32296,y:33066,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:node_1309,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;n:type:ShaderForge.SFN_Multiply,id:8079,x:32651,y:32922,varname:node_8079,prsc:2|A-8702-A,B-3215-A,C-3215-R;n:type:ShaderForge.SFN_NormalVector,id:2063,x:32774,y:33185,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2627,x:32673,y:33377,varname:node_2627,prsc:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:4212,x:32858,y:33379,varname:node_4212,prsc:2;n:type:ShaderForge.SFN_Dot,id:7008,x:33038,y:33149,varname:node_7008,prsc:2,dt:1|A-2063-OUT,B-4212-OUT;n:type:ShaderForge.SFN_Dot,id:4078,x:33038,y:33318,varname:node_4078,prsc:2,dt:1|A-4212-OUT,B-2063-OUT;n:type:ShaderForge.SFN_Add,id:5596,x:33274,y:33262,varname:node_5596,prsc:2|A-7008-OUT,B-4078-OUT;n:type:ShaderForge.SFN_Multiply,id:9874,x:33579,y:33253,varname:node_9874,prsc:2|A-5596-OUT,B-4398-OUT,C-6903-OUT;n:type:ShaderForge.SFN_LightColor,id:8355,x:33227,y:33403,varname:node_8355,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:6903,x:33227,y:33531,varname:node_6903,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8047,x:33092,y:32656,varname:node_8047,prsc:2|A-3363-RGB,B-6257-OUT;n:type:ShaderForge.SFN_AmbientLight,id:3363,x:32679,y:32429,varname:node_3363,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5343,x:33227,y:33072,varname:node_5343,prsc:2|A-6257-OUT,B-7008-OUT;n:type:ShaderForge.SFN_Add,id:9755,x:33442,y:33072,varname:node_9755,prsc:2|A-5343-OUT,B-4078-OUT;n:type:ShaderForge.SFN_Multiply,id:4043,x:33647,y:33072,varname:node_4043,prsc:2|A-9755-OUT,B-9874-OUT;n:type:ShaderForge.SFN_Multiply,id:6257,x:32897,y:32782,varname:node_6257,prsc:2|A-2158-OUT,B-3297-OUT;n:type:ShaderForge.SFN_Vector1,id:3297,x:32724,y:32852,varname:node_3297,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4398,x:33504,y:33464,varname:node_4398,prsc:2|A-8355-RGB,B-4618-OUT;n:type:ShaderForge.SFN_Vector1,id:4618,x:33346,y:33718,varname:node_4618,prsc:2,v1:0.05;n:type:ShaderForge.SFN_Multiply,id:9756,x:33210,y:32861,varname:node_9756,prsc:2|A-8079-OUT,B-9641-OUT;n:type:ShaderForge.SFN_Slider,id:9641,x:32838,y:32930,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_9641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:4297-1309-3215-9641;pass:END;sub:END;*/

Shader "Shader Forge/Particle_Emissive_Lit.shader" {
    Properties {
        _Depth ("Depth", Range(0, 5)) = 0
        _Emissive ("Emissive", Range(0, 20)) = 0
        _Texture ("Texture", 2D) = "white" {}
        _Opacity ("Opacity", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _Depth;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Emissive;
            uniform float _Opacity;
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
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
////// Emissive:
                float3 node_6257 = ((i.vertexColor.rgb*_Emissive)*1.0);
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*node_6257);
                float node_7008 = max(0,dot(i.normalDir,viewReflectDirection));
                float node_4078 = max(0,dot(viewReflectDirection,i.normalDir));
                float3 finalColor = emissive + (((node_6257*node_7008)+node_4078)*((node_7008+node_4078)*(_LightColor0.rgb*0.05)*attenuation));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                fixed4 finalRGBA = fixed4(finalColor,(((i.vertexColor.a*_Texture_var.a*_Texture_var.r)*_Opacity)*saturate((sceneZ-partZ)/_Depth)));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _Depth;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Emissive;
            uniform float _Opacity;
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
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 node_6257 = ((i.vertexColor.rgb*_Emissive)*1.0);
                float node_7008 = max(0,dot(i.normalDir,viewReflectDirection));
                float node_4078 = max(0,dot(viewReflectDirection,i.normalDir));
                float3 finalColor = (((node_6257*node_7008)+node_4078)*((node_7008+node_4078)*(_LightColor0.rgb*0.05)*attenuation));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                fixed4 finalRGBA = fixed4(finalColor * (((i.vertexColor.a*_Texture_var.a*_Texture_var.r)*_Opacity)*saturate((sceneZ-partZ)/_Depth)),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _Emissive;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float3 node_6257 = ((i.vertexColor.rgb*_Emissive)*1.0);
                o.Emission = (UNITY_LIGHTMODEL_AMBIENT.rgb*node_6257);
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
