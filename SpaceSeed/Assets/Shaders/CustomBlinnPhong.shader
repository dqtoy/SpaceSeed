// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32822,y:32694,varname:node_3138,prsc:2|normal-9214-RGB,emission-5217-OUT,custl-784-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:798,x:32381,y:33258,varname:node_798,prsc:2;n:type:ShaderForge.SFN_LightColor,id:722,x:32381,y:33128,varname:node_722,prsc:2;n:type:ShaderForge.SFN_Multiply,id:784,x:32555,y:32991,varname:node_784,prsc:2|A-6189-OUT,B-722-RGB,C-798-OUT;n:type:ShaderForge.SFN_LightVector,id:5076,x:31585,y:32883,varname:node_5076,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4725,x:31585,y:33021,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7786,x:31786,y:32966,varname:node_7786,prsc:2,dt:1|A-5076-OUT,B-4725-OUT;n:type:ShaderForge.SFN_Tex2d,id:2109,x:31786,y:32620,ptovrint:False,ptlb:node_2m,ptin:_node_2m,varname:node_2109,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6470,x:32000,y:32769,cmnt:Diffuse Contrib,varname:node_6470,prsc:2|A-2109-RGB,B-7786-OUT;n:type:ShaderForge.SFN_Tex2d,id:9214,x:32552,y:32521,ptovrint:False,ptlb:node_9214,ptin:_node_9214,varname:node_9214,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_HalfVector,id:2870,x:31585,y:33177,varname:node_2870,prsc:2;n:type:ShaderForge.SFN_Dot,id:4519,x:31786,y:33133,varname:node_4519,prsc:2,dt:1|A-4725-OUT,B-2870-OUT;n:type:ShaderForge.SFN_Power,id:558,x:31982,y:33074,varname:node_558,prsc:2|VAL-4519-OUT,EXP-3298-OUT;n:type:ShaderForge.SFN_Add,id:6189,x:32381,y:32879,varname:node_6189,prsc:2|A-6470-OUT,B-6343-OUT;n:type:ShaderForge.SFN_Slider,id:4359,x:31495,y:33371,ptovrint:False,ptlb:NormalHalfDotPower,ptin:_NormalHalfDotPower,varname:node_4359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:2.5,max:11;n:type:ShaderForge.SFN_Slider,id:5722,x:32006,y:33335,ptovrint:False,ptlb:SpecularityLevel,ptin:_SpecularityLevel,varname:node_5722,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:4;n:type:ShaderForge.SFN_Multiply,id:6343,x:32189,y:33074,cmnt:Spec Contrib,varname:node_6343,prsc:2|A-558-OUT,B-5722-OUT;n:type:ShaderForge.SFN_Exp,id:3298,x:31811,y:33313,cmnt:make input more linear,varname:node_3298,prsc:2,et:0|IN-4359-OUT;n:type:ShaderForge.SFN_AmbientLight,id:4193,x:31786,y:32455,varname:node_4193,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5217,x:32026,y:32514,varname:node_5217,prsc:2|A-4193-RGB,B-2109-RGB;proporder:2109-9214-4359-5722;pass:END;sub:END;*/

Shader "Shader Forge/CustomBlinnPhong" {
    Properties {
        _node_2m ("node_2m", 2D) = "white" {}
        _node_9214 ("node_9214", 2D) = "bump" {}
        _NormalHalfDotPower ("NormalHalfDotPower", Range(1, 11)) = 2.5
        _SpecularityLevel ("SpecularityLevel", Range(0, 4)) = 1
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_2m; uniform float4 _node_2m_ST;
            uniform sampler2D _node_9214; uniform float4 _node_9214_ST;
            uniform float _NormalHalfDotPower;
            uniform float _SpecularityLevel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _node_9214_var = UnpackNormal(tex2D(_node_9214,TRANSFORM_TEX(i.uv0, _node_9214)));
                float3 normalLocal = _node_9214_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _node_2m_var = tex2D(_node_2m,TRANSFORM_TEX(i.uv0, _node_2m));
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*_node_2m_var.rgb);
                float3 finalColor = emissive + (((_node_2m_var.rgb*max(0,dot(lightDirection,normalDirection)))+(pow(max(0,dot(normalDirection,halfDirection)),exp(_NormalHalfDotPower))*_SpecularityLevel))*_LightColor0.rgb*attenuation);
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_2m; uniform float4 _node_2m_ST;
            uniform sampler2D _node_9214; uniform float4 _node_9214_ST;
            uniform float _NormalHalfDotPower;
            uniform float _SpecularityLevel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _node_9214_var = UnpackNormal(tex2D(_node_9214,TRANSFORM_TEX(i.uv0, _node_9214)));
                float3 normalLocal = _node_9214_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _node_2m_var = tex2D(_node_2m,TRANSFORM_TEX(i.uv0, _node_2m));
                float3 finalColor = (((_node_2m_var.rgb*max(0,dot(lightDirection,normalDirection)))+(pow(max(0,dot(normalDirection,halfDirection)),exp(_NormalHalfDotPower))*_SpecularityLevel))*_LightColor0.rgb*attenuation);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
