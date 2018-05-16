// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33095,y:32653,varname:node_4013,prsc:2|diff-8823-OUT,spec-4710-OUT,normal-5720-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31791,y:32316,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.04411763,c3:0.182556,c4:1;n:type:ShaderForge.SFN_VertexColor,id:7209,x:32207,y:32743,varname:node_7209,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:5192,x:32020,y:32495,ptovrint:False,ptlb:T1,ptin:_T1,varname:node_5192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5143,x:32020,y:32699,ptovrint:False,ptlb:T2,ptin:_T2,varname:node_5143,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5fb7986dd6d0a8e4093ba82369dd6a4d,ntxv:2,isnm:False|UVIN-2972-OUT;n:type:ShaderForge.SFN_TexCoord,id:8755,x:31662,y:32657,varname:node_8755,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:2972,x:31845,y:32716,varname:node_2972,prsc:2|A-8755-UVOUT,B-7957-OUT;n:type:ShaderForge.SFN_Vector1,id:7957,x:31662,y:32834,varname:node_7957,prsc:2,v1:4;n:type:ShaderForge.SFN_Lerp,id:8823,x:32475,y:32510,varname:node_8823,prsc:2|A-5192-RGB,B-5143-RGB,T-7209-R;n:type:ShaderForge.SFN_Tex2d,id:3548,x:32020,y:32914,ptovrint:False,ptlb:T1Nor,ptin:_T1Nor,varname:_T2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:3641,x:32020,y:33110,ptovrint:False,ptlb:T2Nor,ptin:_T2Nor,varname:_T3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf20bfced7e912046a9ce991a4d775ec,ntxv:3,isnm:True|UVIN-2972-OUT;n:type:ShaderForge.SFN_Lerp,id:5354,x:32317,y:33034,varname:node_5354,prsc:2|A-3548-RGB,B-3641-RGB,T-7209-R;n:type:ShaderForge.SFN_Normalize,id:5720,x:32606,y:32967,varname:node_5720,prsc:2|IN-5354-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:4710,x:32585,y:32689,varname:node_4710,prsc:2,a:0.2,b:1|IN-7209-R;proporder:1304-5143-5192-3548-3641;pass:END;sub:END;*/

Shader "Shader Forge/BasicTw" {
    Properties {
        _Color ("Color", Color) = (1,0.04411763,0.182556,1)
        _T2 ("T2", 2D) = "black" {}
        _T1 ("T1", 2D) = "white" {}
        _T1Nor ("T1Nor", 2D) = "bump" {}
        _T2Nor ("T2Nor", 2D) = "bump" {}
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _T1; uniform float4 _T1_ST;
            uniform sampler2D _T2; uniform float4 _T2_ST;
            uniform sampler2D _T1Nor; uniform float4 _T1Nor_ST;
            uniform sampler2D _T2Nor; uniform float4 _T2Nor_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _T1Nor_var = UnpackNormal(tex2D(_T1Nor,TRANSFORM_TEX(i.uv0, _T1Nor)));
                float2 node_2972 = (i.uv0*4.0);
                float3 _T2Nor_var = UnpackNormal(tex2D(_T2Nor,TRANSFORM_TEX(node_2972, _T2Nor)));
                float3 normalLocal = normalize(lerp(_T1Nor_var.rgb,_T2Nor_var.rgb,i.vertexColor.r));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_4710 = lerp(0.2,1,i.vertexColor.r);
                float3 specularColor = float3(node_4710,node_4710,node_4710);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _T1_var = tex2D(_T1,TRANSFORM_TEX(i.uv0, _T1));
                float4 _T2_var = tex2D(_T2,TRANSFORM_TEX(node_2972, _T2));
                float3 diffuseColor = lerp(_T1_var.rgb,_T2_var.rgb,i.vertexColor.r);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _T1; uniform float4 _T1_ST;
            uniform sampler2D _T2; uniform float4 _T2_ST;
            uniform sampler2D _T1Nor; uniform float4 _T1Nor_ST;
            uniform sampler2D _T2Nor; uniform float4 _T2Nor_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _T1Nor_var = UnpackNormal(tex2D(_T1Nor,TRANSFORM_TEX(i.uv0, _T1Nor)));
                float2 node_2972 = (i.uv0*4.0);
                float3 _T2Nor_var = UnpackNormal(tex2D(_T2Nor,TRANSFORM_TEX(node_2972, _T2Nor)));
                float3 normalLocal = normalize(lerp(_T1Nor_var.rgb,_T2Nor_var.rgb,i.vertexColor.r));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_4710 = lerp(0.2,1,i.vertexColor.r);
                float3 specularColor = float3(node_4710,node_4710,node_4710);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _T1_var = tex2D(_T1,TRANSFORM_TEX(i.uv0, _T1));
                float4 _T2_var = tex2D(_T2,TRANSFORM_TEX(node_2972, _T2));
                float3 diffuseColor = lerp(_T1_var.rgb,_T2_var.rgb,i.vertexColor.r);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
