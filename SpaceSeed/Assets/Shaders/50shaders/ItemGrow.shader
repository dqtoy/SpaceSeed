// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33156,y:32477,varname:node_3138,prsc:2|diff-3648-RGB,spec-747-OUT,gloss-4413-OUT,voffset-9865-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3263,x:31357,y:32361,varname:node_3263,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:5092,x:31357,y:32516,varname:node_5092,prsc:2;n:type:ShaderForge.SFN_Subtract,id:4554,x:31590,y:32453,varname:node_4554,prsc:2|A-3263-XYZ,B-5092-XYZ;n:type:ShaderForge.SFN_Slider,id:156,x:30885,y:33256,ptovrint:False,ptlb:Grow,ptin:_Grow,varname:node_156,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4299165,max:1;n:type:ShaderForge.SFN_RemapRange,id:7895,x:31358,y:33239,varname:node_7895,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-156-OUT;n:type:ShaderForge.SFN_Multiply,id:6905,x:31906,y:32415,varname:node_6905,prsc:2|A-4554-OUT,B-3566-OUT,C-7895-OUT;n:type:ShaderForge.SFN_Multiply,id:7896,x:31906,y:32656,varname:node_7896,prsc:2|A-4554-OUT,B-8539-OUT,C-7895-OUT;n:type:ShaderForge.SFN_Add,id:9865,x:32224,y:32523,varname:node_9865,prsc:2|A-6905-OUT,B-7896-OUT,C-9659-OUT;n:type:ShaderForge.SFN_NormalVector,id:4279,x:31412,y:33829,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:9659,x:31972,y:33772,varname:node_9659,prsc:2|A-2090-OUT,B-4279-OUT;n:type:ShaderForge.SFN_Slider,id:9902,x:30769,y:33469,ptovrint:False,ptlb:WidthPower,ptin:_WidthPower,varname:node_9902,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_Slider,id:4413,x:32517,y:32409,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_4413,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:747,x:32674,y:32333,varname:node_747,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:6090,x:31412,y:33654,varname:node_6090,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:3566,x:31749,y:32340,ptovrint:False,ptlb:HeightPower,ptin:_HeightPower,varname:node_3566,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_Color,id:8383,x:32384,y:31661,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_8383,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:2814,x:32708,y:31785,varname:node_2814,prsc:2|A-8383-RGB,B-9588-OUT;n:type:ShaderForge.SFN_Multiply,id:7070,x:31584,y:33400,varname:node_7070,prsc:2|A-7895-OUT,B-9902-OUT;n:type:ShaderForge.SFN_Tex2d,id:3648,x:32755,y:32129,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_3648,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:819e3f43083a84ad7aa37609fdb4b792,ntxv:0,isnm:False;n:type:ShaderForge.SFN_FragmentPosition,id:7338,x:31699,y:31848,varname:node_7338,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:3059,x:31699,y:32001,varname:node_3059,prsc:2;n:type:ShaderForge.SFN_Subtract,id:4833,x:31924,y:31934,varname:node_4833,prsc:2|A-7338-XYZ,B-3059-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:9588,x:32107,y:31934,varname:node_9588,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4833-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8539,x:31489,y:32729,varname:node_8539,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8095-OUT;n:type:ShaderForge.SFN_Subtract,id:8095,x:31306,y:32729,varname:node_8095,prsc:2|A-5441-XYZ,B-6662-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:5441,x:31081,y:32643,varname:node_5441,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:6662,x:31081,y:32796,varname:node_6662,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:8252,x:31193,y:33738,varname:node_8252,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9487-OUT;n:type:ShaderForge.SFN_Subtract,id:9487,x:31010,y:33738,varname:node_9487,prsc:2|A-2426-XYZ,B-7559-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:2426,x:30785,y:33652,varname:node_2426,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:7559,x:30785,y:33805,varname:node_7559,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2090,x:31710,y:33594,varname:node_2090,prsc:2|A-7070-OUT,B-8252-OUT;proporder:156-9902-4413-3566-8383-3648;pass:END;sub:END;*/

Shader "50Shaders/ItemGrow" {
    Properties {
        _Grow ("Grow", Range(0, 1)) = 0.4299165
        _WidthPower ("WidthPower", Range(0, 2)) = 0.5
        _Gloss ("Gloss", Range(0, 1)) = 1
        _HeightPower ("HeightPower", Range(0, 2)) = 0.5
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _MainTexture ("MainTexture", 2D) = "white" {}
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 2.0
            uniform float _Grow;
            uniform float _WidthPower;
            uniform float _Gloss;
            uniform float _HeightPower;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_4554 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb);
                float node_7895 = (_Grow*2.0+-1.0);
                v.vertex.xyz += ((node_4554*_HeightPower*node_7895)+(node_4554*(mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb).g*node_7895)+(((node_7895*_WidthPower)*(mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb).g)*v.normal));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 diffuseColor = _MainTexture_var.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
