// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34079,y:32477,varname:node_3138,prsc:2|emission-6538-OUT,alpha-9591-OUT,voffset-4516-OUT;n:type:ShaderForge.SFN_TexCoord,id:1400,x:30855,y:32381,varname:node_1400,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Subtract,id:5373,x:31241,y:32510,varname:node_5373,prsc:2|A-8298-OUT,B-7453-OUT;n:type:ShaderForge.SFN_Vector1,id:7453,x:31228,y:32645,varname:node_7453,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Divide,id:9647,x:31552,y:32516,varname:node_9647,prsc:2|A-5373-OUT,B-64-OUT;n:type:ShaderForge.SFN_Add,id:1972,x:31836,y:32378,varname:node_1972,prsc:2|A-1400-UVOUT,B-9647-OUT;n:type:ShaderForge.SFN_Rotator,id:647,x:32051,y:32378,varname:node_647,prsc:2|UVIN-1972-OUT,SPD-3303-OUT;n:type:ShaderForge.SFN_Lerp,id:8576,x:32254,y:32499,varname:node_8576,prsc:2|A-647-UVOUT,B-4398-OUT,T-64-OUT;n:type:ShaderForge.SFN_Vector1,id:4398,x:32254,y:32617,varname:node_4398,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:6436,x:32431,y:32499,varname:node_6436,prsc:2|IN-8576-OUT;n:type:ShaderForge.SFN_Tex2d,id:7234,x:32658,y:32499,ptovrint:False,ptlb:liuguang,ptin:_liuguang,varname:node_7234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e28dc97a9541e3642a48c0e3886688c5,ntxv:2,isnm:False|UVIN-6436-OUT;n:type:ShaderForge.SFN_Tex2d,id:8987,x:32658,y:32679,ptovrint:False,ptlb:liuguang2,ptin:_liuguang2,varname:node_8987,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a985dfcd1d3ca94e9753748ed65c697,ntxv:2,isnm:False|UVIN-6436-OUT;n:type:ShaderForge.SFN_TexCoord,id:8889,x:30839,y:33692,varname:node_8889,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:3658,x:31054,y:33692,varname:node_3658,prsc:2,spu:0.5,spv:0.5|UVIN-8889-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2526,x:31271,y:33692,ptovrint:False,ptlb:node_2526,ptin:_node_2526,varname:node_2526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False|UVIN-3658-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6577,x:31524,y:33693,varname:node_6577,prsc:2|A-9200-OUT,B-2526-R,C-3445-OUT;n:type:ShaderForge.SFN_Slider,id:3445,x:31114,y:33896,ptovrint:False,ptlb:WaveWeight,ptin:_WaveWeight,varname:node_3445,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:8816,x:31751,y:33774,varname:node_8816,prsc:2|A-6577-OUT,B-3752-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3752,x:31524,y:33855,varname:node_3752,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:9277,x:32904,y:32902,ptovrint:False,ptlb:wenli,ptin:_wenli,varname:node_9277,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5798ded558355430c8a9b13ee12a847c,ntxv:2,isnm:False|UVIN-8816-OUT;n:type:ShaderForge.SFN_Multiply,id:4516,x:33303,y:33412,varname:node_4516,prsc:2|A-6232-OUT,B-2946-OUT,C-8120-OUT;n:type:ShaderForge.SFN_Vector1,id:8120,x:33303,y:33686,varname:node_8120,prsc:2,v1:0.5;n:type:ShaderForge.SFN_NormalVector,id:6232,x:33303,y:33542,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector1,id:3303,x:32039,y:32499,varname:node_3303,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:64,x:31407,y:32694,ptovrint:False,ptlb:WaveRange,ptin:_WaveRange,varname:node_64,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5350916,max:1;n:type:ShaderForge.SFN_Multiply,id:1728,x:33313,y:32723,varname:node_1728,prsc:2|A-9591-OUT,B-4757-OUT,C-6429-OUT;n:type:ShaderForge.SFN_Vector1,id:6429,x:33313,y:32974,varname:node_6429,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:196,x:33414,y:32409,varname:node_196,prsc:2|A-9277-RGB,B-5691-OUT;n:type:ShaderForge.SFN_Tex2d,id:9526,x:30851,y:33322,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_9526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9200,x:31093,y:33427,varname:node_9200,prsc:2|A-9526-R,B-105-OUT;n:type:ShaderForge.SFN_Slider,id:105,x:30936,y:33578,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_105,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Slider,id:5831,x:30698,y:32552,ptovrint:False,ptlb:UV,ptin:_UV,varname:node_5831,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Multiply,id:8298,x:31030,y:32510,varname:node_8298,prsc:2|A-1400-UVOUT,B-5831-OUT;n:type:ShaderForge.SFN_Slider,id:5691,x:33257,y:32548,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:node_5691,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Desaturate,id:4757,x:33313,y:32846,varname:node_4757,prsc:2|COL-9277-RGB;n:type:ShaderForge.SFN_Slider,id:2736,x:32501,y:32866,ptovrint:False,ptlb:WaveWidth,ptin:_WaveWidth,varname:node_2736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:9591,x:32904,y:32751,varname:node_9591,prsc:2|A-8987-R,B-2736-OUT;n:type:ShaderForge.SFN_Color,id:3998,x:32440,y:32098,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_3998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.2332657,c3:0.007352948,c4:1;n:type:ShaderForge.SFN_Color,id:5191,x:32440,y:32278,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_5191,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.7931032,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6592,x:32653,y:32182,varname:node_6592,prsc:2|A-3998-RGB,B-5191-RGB,T-64-OUT;n:type:ShaderForge.SFN_Multiply,id:5891,x:32875,y:32336,varname:node_5891,prsc:2|A-6592-OUT,B-7234-RGB;n:type:ShaderForge.SFN_Add,id:6538,x:33782,y:32162,varname:node_6538,prsc:2|A-3692-OUT,B-196-OUT;n:type:ShaderForge.SFN_Slider,id:1657,x:30797,y:33178,ptovrint:False,ptlb:VertexNoise,ptin:_VertexNoise,varname:node_1657,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.273402,max:5;n:type:ShaderForge.SFN_Multiply,id:2946,x:31335,y:33252,varname:node_2946,prsc:2|A-1657-OUT,B-9526-R;n:type:ShaderForge.SFN_Slider,id:8510,x:32809,y:32179,ptovrint:False,ptlb:node_8510,ptin:_node_8510,varname:node_8510,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;n:type:ShaderForge.SFN_Multiply,id:3692,x:33153,y:32238,varname:node_3692,prsc:2|A-8510-OUT,B-5891-OUT;proporder:7234-8987-2526-3445-9277-64-9526-105-5831-5691-2736-3998-5191-1657-8510;pass:END;sub:END;*/

Shader "Shader Forge/CGwell21" {
    Properties {
        _liuguang ("liuguang", 2D) = "black" {}
        _liuguang2 ("liuguang2", 2D) = "black" {}
        _node_2526 ("node_2526", 2D) = "white" {}
        _WaveWeight ("WaveWeight", Range(0, 1)) = 1
        _wenli ("wenli", 2D) = "black" {}
        _WaveRange ("WaveRange", Range(0, 1)) = 0.5350916
        _Noise ("Noise", 2D) = "white" {}
        _Refraction ("Refraction", Range(0, 1)) = 0.2
        _UV ("UV", Range(0, 5)) = 1
        _Brightness ("Brightness", Range(0, 2)) = 1
        _WaveWidth ("WaveWidth", Range(0, 1)) = 1
        _Color1 ("Color1", Color) = (1,0.2332657,0.007352948,1)
        _Color2 ("Color2", Color) = (0,0.7931032,1,1)
        _VertexNoise ("VertexNoise", Range(0, 5)) = 1.273402
        _node_8510 ("node_8510", Range(0, 5)) = 2
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _liuguang; uniform float4 _liuguang_ST;
            uniform sampler2D _liuguang2; uniform float4 _liuguang2_ST;
            uniform sampler2D _node_2526; uniform float4 _node_2526_ST;
            uniform float _WaveWeight;
            uniform sampler2D _wenli; uniform float4 _wenli_ST;
            uniform float _WaveRange;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _Refraction;
            uniform float _UV;
            uniform float _Brightness;
            uniform float _WaveWidth;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _VertexNoise;
            uniform float _node_8510;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _Noise_var = tex2Dlod(_Noise,float4(TRANSFORM_TEX(o.uv0, _Noise),0.0,0));
                v.vertex.xyz += (v.normal*(_VertexNoise*_Noise_var.r)*0.5);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_9532 = _Time + _TimeEditor;
                float node_647_ang = node_9532.g;
                float node_647_spd = 1.0;
                float node_647_cos = cos(node_647_spd*node_647_ang);
                float node_647_sin = sin(node_647_spd*node_647_ang);
                float2 node_647_piv = float2(0.5,0.5);
                float2 node_647 = (mul((i.uv0+(((i.uv0*_UV)-0.5)/_WaveRange))-node_647_piv,float2x2( node_647_cos, -node_647_sin, node_647_sin, node_647_cos))+node_647_piv);
                float node_4398 = 0.5;
                float2 node_6436 = saturate(lerp(node_647,float2(node_4398,node_4398),_WaveRange));
                float4 _liuguang_var = tex2D(_liuguang,TRANSFORM_TEX(node_6436, _liuguang));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_3658 = (i.uv0+node_9532.g*float2(0.5,0.5));
                float4 _node_2526_var = tex2D(_node_2526,TRANSFORM_TEX(node_3658, _node_2526));
                float2 node_8816 = (((_Noise_var.r*_Refraction)*_node_2526_var.r*_WaveWeight)+i.uv0);
                float4 _wenli_var = tex2D(_wenli,TRANSFORM_TEX(node_8816, _wenli));
                float3 emissive = ((_node_8510*(lerp(_Color1.rgb,_Color2.rgb,_WaveRange)*_liuguang_var.rgb))+(_wenli_var.rgb*_Brightness));
                float3 finalColor = emissive;
                float4 _liuguang2_var = tex2D(_liuguang2,TRANSFORM_TEX(node_6436, _liuguang2));
                float node_9591 = (_liuguang2_var.r*_WaveWidth);
                return fixed4(finalColor,node_9591);
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
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _VertexNoise;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _Noise_var = tex2Dlod(_Noise,float4(TRANSFORM_TEX(o.uv0, _Noise),0.0,0));
                v.vertex.xyz += (v.normal*(_VertexNoise*_Noise_var.r)*0.5);
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
