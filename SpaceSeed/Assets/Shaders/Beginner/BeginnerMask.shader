// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34510,y:31126,varname:node_3138,prsc:2|emission-15-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32814,y:32839,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:6244,x:32814,y:33047,ptovrint:False,ptlb:node_6244,ptin:_node_6244,varname:node_6244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.9172413,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9632,x:32814,y:33252,ptovrint:False,ptlb:node_9632,ptin:_node_9632,varname:node_9632,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7a8aa6623e8444c86978db670b5065e6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5580,x:33126,y:32929,varname:node_5580,prsc:2|A-7241-RGB,B-6244-RGB,T-9632-B;n:type:ShaderForge.SFN_Posterize,id:2534,x:33055,y:33319,varname:node_2534,prsc:2|IN-9632-RGB,STPS-3519-OUT;n:type:ShaderForge.SFN_Vector1,id:3519,x:32814,y:33432,varname:node_3519,prsc:2,v1:4;n:type:ShaderForge.SFN_Lerp,id:1661,x:33434,y:33036,varname:node_1661,prsc:2|A-5580-OUT,B-3158-RGB,T-9632-R;n:type:ShaderForge.SFN_Color,id:3158,x:33126,y:33077,ptovrint:False,ptlb:node_3158,ptin:_node_3158,varname:node_3158,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3559837,c3:0.06617647,c4:1;n:type:ShaderForge.SFN_Color,id:3479,x:32766,y:31848,ptovrint:False,ptlb:node_3479,ptin:_node_3479,varname:node_3479,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9133875,c2:1,c3:0.1029412,c4:1;n:type:ShaderForge.SFN_Color,id:7812,x:32766,y:32056,ptovrint:False,ptlb:node_7812,ptin:_node_7812,varname:node_7812,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.7517242,c4:1;n:type:ShaderForge.SFN_Fresnel,id:9961,x:32766,y:32262,varname:node_9961,prsc:2|EXP-8836-OUT;n:type:ShaderForge.SFN_Lerp,id:3232,x:33094,y:31972,varname:node_3232,prsc:2|A-3479-RGB,B-7812-RGB,T-9961-OUT;n:type:ShaderForge.SFN_Slider,id:8836,x:32362,y:32281,ptovrint:False,ptlb:node_8836,ptin:_node_8836,varname:node_8836,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:4;n:type:ShaderForge.SFN_Tex2d,id:9334,x:33094,y:31764,ptovrint:False,ptlb:node_9334,ptin:_node_9334,varname:node_9334,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2437,x:33404,y:31879,varname:node_2437,prsc:2|A-9334-RGB,B-3232-OUT;n:type:ShaderForge.SFN_Color,id:5809,x:32901,y:29638,ptovrint:False,ptlb:node_5809,ptin:_node_5809,varname:node_5809,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.5862069,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:9888,x:32901,y:29817,ptovrint:False,ptlb:node_9888,ptin:_node_9888,varname:node_9888,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9881338,c2:1,c3:0.1397059,c4:1;n:type:ShaderForge.SFN_Lerp,id:5553,x:33221,y:29836,varname:node_5553,prsc:2|A-5809-RGB,B-9888-RGB,T-8157-OUT;n:type:ShaderForge.SFN_Fresnel,id:8584,x:32855,y:30068,varname:node_8584,prsc:2;n:type:ShaderForge.SFN_If,id:8157,x:33148,y:30130,varname:node_8157,prsc:2|A-8584-OUT,B-9598-OUT,GT-5485-OUT,EQ-1986-OUT,LT-3585-OUT;n:type:ShaderForge.SFN_Vector1,id:5485,x:32938,y:30305,varname:node_5485,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1986,x:32938,y:30373,varname:node_1986,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:3585,x:32938,y:30437,varname:node_3585,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:9598,x:32698,y:30215,ptovrint:False,ptlb:node_9598,ptin:_node_9598,varname:node_9598,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6666667,max:1;n:type:ShaderForge.SFN_Color,id:4864,x:32711,y:31065,ptovrint:False,ptlb:node_7812_copy,ptin:_node_7812_copy,varname:_node_7812_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.7517242,c4:1;n:type:ShaderForge.SFN_Color,id:6966,x:32711,y:30857,ptovrint:False,ptlb:node_3479_copy,ptin:_node_3479_copy,varname:_node_3479_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9133875,c2:1,c3:0.1029412,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2043,x:33023,y:30743,ptovrint:False,ptlb:node_9334_copy,ptin:_node_9334_copy,varname:_node_9334_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:7664,x:33039,y:30981,varname:node_7664,prsc:2|A-6966-RGB,B-4864-RGB,T-8808-OUT;n:type:ShaderForge.SFN_Fresnel,id:8808,x:32711,y:31271,varname:node_8808,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4111,x:33400,y:30893,varname:node_4111,prsc:2|A-1590-OUT,B-7664-OUT;n:type:ShaderForge.SFN_If,id:15,x:33690,y:31085,varname:node_15,prsc:2|A-4111-OUT,B-9534-OUT,GT-4111-OUT,EQ-4111-OUT,LT-7753-OUT;n:type:ShaderForge.SFN_Slider,id:9534,x:33223,y:31071,ptovrint:False,ptlb:node_9534,ptin:_node_9534,varname:node_9534,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1965812,max:1;n:type:ShaderForge.SFN_OneMinus,id:1590,x:33178,y:30743,varname:node_1590,prsc:2|IN-2043-RGB;n:type:ShaderForge.SFN_Color,id:7680,x:33275,y:31417,ptovrint:False,ptlb:node_7680,ptin:_node_7680,varname:node_7680,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.9172413,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7753,x:33469,y:31309,varname:node_7753,prsc:2|A-9727-RGB,B-7680-RGB;n:type:ShaderForge.SFN_Tex2d,id:9727,x:33275,y:31237,ptovrint:False,ptlb:node_9727,ptin:_node_9727,varname:node_9727,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False;proporder:7241-6244-9632-3158-3479-7812-8836-9334-4864-6966-2043-9534-7680-9727;pass:END;sub:END;*/

Shader "Beginner/BeginnerMask" {
    Properties {
        _Color ("Color", Color) = (0,0,0,1)
        _node_6244 ("node_6244", Color) = (0,0.9172413,1,1)
        _node_9632 ("node_9632", 2D) = "white" {}
        _node_3158 ("node_3158", Color) = (1,0.3559837,0.06617647,1)
        _node_3479 ("node_3479", Color) = (0.9133875,1,0.1029412,1)
        _node_7812 ("node_7812", Color) = (0,1,0.7517242,1)
        _node_8836 ("node_8836", Range(0, 4)) = 4
        _node_9334 ("node_9334", 2D) = "black" {}
        _node_7812_copy ("node_7812_copy", Color) = (0,1,0.7517242,1)
        _node_3479_copy ("node_3479_copy", Color) = (0.9133875,1,0.1029412,1)
        _node_9334_copy ("node_9334_copy", 2D) = "black" {}
        _node_9534 ("node_9534", Range(0, 1)) = 0.1965812
        _node_7680 ("node_7680", Color) = (0,0.9172413,1,1)
        _node_9727 ("node_9727", 2D) = "white" {}
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
            uniform float4 _node_7812_copy;
            uniform float4 _node_3479_copy;
            uniform sampler2D _node_9334_copy; uniform float4 _node_9334_copy_ST;
            uniform float _node_9534;
            uniform float4 _node_7680;
            uniform sampler2D _node_9727; uniform float4 _node_9727_ST;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _node_9334_copy_var = tex2D(_node_9334_copy,TRANSFORM_TEX(i.uv0, _node_9334_copy));
                float3 node_4111 = ((1.0 - _node_9334_copy_var.rgb)*lerp(_node_3479_copy.rgb,_node_7812_copy.rgb,(1.0-max(0,dot(normalDirection, viewDirection)))));
                float node_15_if_leA = step(node_4111,_node_9534);
                float node_15_if_leB = step(_node_9534,node_4111);
                float4 _node_9727_var = tex2D(_node_9727,TRANSFORM_TEX(i.uv0, _node_9727));
                float3 emissive = lerp((node_15_if_leA*(_node_9727_var.rgb*_node_7680.rgb))+(node_15_if_leB*node_4111),node_4111,node_15_if_leA*node_15_if_leB);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
