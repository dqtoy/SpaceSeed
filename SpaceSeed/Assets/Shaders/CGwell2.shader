// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33661,y:32471,varname:node_3138,prsc:2|emission-196-OUT,alpha-1728-OUT,voffset-4516-OUT;n:type:ShaderForge.SFN_TexCoord,id:1400,x:31225,y:32521,varname:node_1400,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Subtract,id:5373,x:31415,y:32576,varname:node_5373,prsc:2|A-1400-UVOUT,B-7453-OUT;n:type:ShaderForge.SFN_Vector1,id:7453,x:31225,y:32678,varname:node_7453,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Divide,id:9647,x:31634,y:32576,varname:node_9647,prsc:2|A-5373-OUT,B-64-OUT;n:type:ShaderForge.SFN_Add,id:1972,x:31855,y:32499,varname:node_1972,prsc:2|A-1400-UVOUT,B-9647-OUT;n:type:ShaderForge.SFN_VertexColor,id:3503,x:31634,y:32772,varname:node_3503,prsc:2;n:type:ShaderForge.SFN_Rotator,id:647,x:32070,y:32499,varname:node_647,prsc:2|UVIN-1972-OUT,SPD-3303-OUT;n:type:ShaderForge.SFN_Lerp,id:8576,x:32254,y:32499,varname:node_8576,prsc:2|A-647-UVOUT,B-4398-OUT,T-64-OUT;n:type:ShaderForge.SFN_Vector1,id:4398,x:32254,y:32617,varname:node_4398,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:6436,x:32431,y:32499,varname:node_6436,prsc:2|IN-8576-OUT;n:type:ShaderForge.SFN_Tex2d,id:7234,x:32658,y:32499,ptovrint:False,ptlb:liuguang,ptin:_liuguang,varname:node_7234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a133a690c4b9f014cbc6179a83191248,ntxv:2,isnm:False|UVIN-6436-OUT;n:type:ShaderForge.SFN_Tex2d,id:8987,x:32568,y:32695,ptovrint:False,ptlb:liuguang2,ptin:_liuguang2,varname:node_8987,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a985dfcd1d3ca94e9753748ed65c697,ntxv:2,isnm:False|UVIN-6436-OUT;n:type:ShaderForge.SFN_Vector1,id:6297,x:32856,y:32438,varname:node_6297,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9300,x:32895,y:32533,varname:node_9300,prsc:2|A-7234-RGB,B-3503-RGB;n:type:ShaderForge.SFN_Multiply,id:7432,x:33093,y:32438,varname:node_7432,prsc:2|A-6297-OUT,B-9300-OUT;n:type:ShaderForge.SFN_Add,id:4664,x:33393,y:32681,varname:node_4664,prsc:2|A-7432-OUT,B-4427-OUT;n:type:ShaderForge.SFN_Multiply,id:8116,x:33018,y:32732,varname:node_8116,prsc:2|A-8987-RGB,B-2940-OUT;n:type:ShaderForge.SFN_Lerp,id:2940,x:32025,y:32865,varname:node_2940,prsc:2|A-3503-RGB,B-1697-OUT,T-1373-OUT;n:type:ShaderForge.SFN_Vector3,id:1697,x:31812,y:32883,varname:node_1697,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Slider,id:1373,x:31655,y:33042,ptovrint:False,ptlb:liuguang_lianbian,ptin:_liuguang_lianbian,varname:node_1373,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:4427,x:32251,y:33029,varname:node_4427,prsc:2|A-9277-RGB,B-9194-OUT;n:type:ShaderForge.SFN_Vector1,id:9194,x:32012,y:33149,varname:node_9194,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:666,x:31364,y:33318,ptovrint:False,ptlb:node_666,ptin:_node_666,varname:node_666,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2350,x:31594,y:33234,varname:node_2350,prsc:2|A-7234-RGB,B-666-R;n:type:ShaderForge.SFN_Desaturate,id:6348,x:31793,y:33234,varname:node_6348,prsc:2|COL-2350-OUT;n:type:ShaderForge.SFN_TexCoord,id:8889,x:31259,y:33695,varname:node_8889,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:3658,x:31474,y:33695,varname:node_3658,prsc:2,spu:0.5,spv:0.5|UVIN-8889-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2526,x:31691,y:33695,ptovrint:False,ptlb:node_2526,ptin:_node_2526,varname:node_2526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False|UVIN-3658-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6577,x:31944,y:33696,varname:node_6577,prsc:2|A-6348-OUT,B-2526-R,C-3445-OUT;n:type:ShaderForge.SFN_Slider,id:3445,x:31507,y:33924,ptovrint:False,ptlb:niuqu_qiangdu,ptin:_niuqu_qiangdu,varname:node_3445,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Add,id:8816,x:32171,y:33777,varname:node_8816,prsc:2|A-6577-OUT,B-3752-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3752,x:31944,y:33858,varname:node_3752,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:9277,x:32210,y:33334,ptovrint:False,ptlb:wenli,ptin:_wenli,varname:node_9277,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:09004872d1fec7c41be3fff2dda61439,ntxv:2,isnm:False|UVIN-8816-OUT;n:type:ShaderForge.SFN_Desaturate,id:7937,x:33107,y:33001,varname:node_7937,prsc:2|COL-8987-RGB;n:type:ShaderForge.SFN_Add,id:8782,x:33316,y:33212,varname:node_8782,prsc:2|A-7937-OUT,B-9277-B;n:type:ShaderForge.SFN_Multiply,id:4521,x:32907,y:33441,varname:node_4521,prsc:2|A-7234-RGB,B-666-R;n:type:ShaderForge.SFN_Multiply,id:4516,x:33303,y:33412,varname:node_4516,prsc:2|A-4521-OUT,B-8120-OUT,C-6232-OUT;n:type:ShaderForge.SFN_Vector1,id:8120,x:33082,y:33489,varname:node_8120,prsc:2,v1:0.6;n:type:ShaderForge.SFN_NormalVector,id:6232,x:33062,y:33602,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector1,id:3303,x:31866,y:32402,varname:node_3303,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:64,x:31157,y:32810,ptovrint:False,ptlb:node_64,ptin:_node_64,varname:node_64,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5728833,max:1;n:type:ShaderForge.SFN_Multiply,id:1728,x:33412,y:32832,varname:node_1728,prsc:2|A-7937-OUT,B-9277-B,C-6429-OUT;n:type:ShaderForge.SFN_Vector1,id:6429,x:33301,y:33079,varname:node_6429,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:196,x:33393,y:32559,varname:node_196,prsc:2|A-7432-OUT,B-4427-OUT;proporder:7234-8987-1373-666-2526-3445-9277-64;pass:END;sub:END;*/

Shader "Shader Forge/CGwell2" {
    Properties {
        _liuguang ("liuguang", 2D) = "black" {}
        _liuguang2 ("liuguang2", 2D) = "black" {}
        _liuguang_lianbian ("liuguang_lianbian", Range(0, 1)) = 1
        _node_666 ("node_666", 2D) = "white" {}
        _node_2526 ("node_2526", 2D) = "white" {}
        _niuqu_qiangdu ("niuqu_qiangdu", Range(0, 1)) = 0.5
        _wenli ("wenli", 2D) = "black" {}
        _node_64 ("node_64", Range(0, 1)) = 0.5728833
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
            uniform sampler2D _node_666; uniform float4 _node_666_ST;
            uniform sampler2D _node_2526; uniform float4 _node_2526_ST;
            uniform float _niuqu_qiangdu;
            uniform sampler2D _wenli; uniform float4 _wenli_ST;
            uniform float _node_64;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2562 = _Time + _TimeEditor;
                float node_647_ang = node_2562.g;
                float node_647_spd = 1.0;
                float node_647_cos = cos(node_647_spd*node_647_ang);
                float node_647_sin = sin(node_647_spd*node_647_ang);
                float2 node_647_piv = float2(0.5,0.5);
                float2 node_647 = (mul((o.uv0+((o.uv0-0.5)/_node_64))-node_647_piv,float2x2( node_647_cos, -node_647_sin, node_647_sin, node_647_cos))+node_647_piv);
                float node_4398 = 0.5;
                float2 node_6436 = saturate(lerp(node_647,float2(node_4398,node_4398),_node_64));
                float4 _liuguang_var = tex2Dlod(_liuguang,float4(TRANSFORM_TEX(node_6436, _liuguang),0.0,0));
                float4 _node_666_var = tex2Dlod(_node_666,float4(TRANSFORM_TEX(o.uv0, _node_666),0.0,0));
                v.vertex.xyz += ((_liuguang_var.rgb*_node_666_var.r)*0.6*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_2562 = _Time + _TimeEditor;
                float node_647_ang = node_2562.g;
                float node_647_spd = 1.0;
                float node_647_cos = cos(node_647_spd*node_647_ang);
                float node_647_sin = sin(node_647_spd*node_647_ang);
                float2 node_647_piv = float2(0.5,0.5);
                float2 node_647 = (mul((i.uv0+((i.uv0-0.5)/_node_64))-node_647_piv,float2x2( node_647_cos, -node_647_sin, node_647_sin, node_647_cos))+node_647_piv);
                float node_4398 = 0.5;
                float2 node_6436 = saturate(lerp(node_647,float2(node_4398,node_4398),_node_64));
                float4 _liuguang_var = tex2D(_liuguang,TRANSFORM_TEX(node_6436, _liuguang));
                float3 node_7432 = (1.0*(_liuguang_var.rgb*i.vertexColor.rgb));
                float4 _node_666_var = tex2D(_node_666,TRANSFORM_TEX(i.uv0, _node_666));
                float2 node_3658 = (i.uv0+node_2562.g*float2(0.5,0.5));
                float4 _node_2526_var = tex2D(_node_2526,TRANSFORM_TEX(node_3658, _node_2526));
                float2 node_8816 = ((dot((_liuguang_var.rgb*_node_666_var.r),float3(0.3,0.59,0.11))*_node_2526_var.r*_niuqu_qiangdu)+i.uv0);
                float4 _wenli_var = tex2D(_wenli,TRANSFORM_TEX(node_8816, _wenli));
                float3 node_4427 = (_wenli_var.rgb*1.0);
                float3 emissive = (node_7432*node_4427);
                float3 finalColor = emissive;
                float4 _liuguang2_var = tex2D(_liuguang2,TRANSFORM_TEX(node_6436, _liuguang2));
                float node_7937 = dot(_liuguang2_var.rgb,float3(0.3,0.59,0.11));
                return fixed4(finalColor,(node_7937*_wenli_var.b*1.0));
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
            uniform float4 _TimeEditor;
            uniform sampler2D _liuguang; uniform float4 _liuguang_ST;
            uniform sampler2D _node_666; uniform float4 _node_666_ST;
            uniform float _node_64;
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
                float4 node_495 = _Time + _TimeEditor;
                float node_647_ang = node_495.g;
                float node_647_spd = 1.0;
                float node_647_cos = cos(node_647_spd*node_647_ang);
                float node_647_sin = sin(node_647_spd*node_647_ang);
                float2 node_647_piv = float2(0.5,0.5);
                float2 node_647 = (mul((o.uv0+((o.uv0-0.5)/_node_64))-node_647_piv,float2x2( node_647_cos, -node_647_sin, node_647_sin, node_647_cos))+node_647_piv);
                float node_4398 = 0.5;
                float2 node_6436 = saturate(lerp(node_647,float2(node_4398,node_4398),_node_64));
                float4 _liuguang_var = tex2Dlod(_liuguang,float4(TRANSFORM_TEX(node_6436, _liuguang),0.0,0));
                float4 _node_666_var = tex2Dlod(_node_666,float4(TRANSFORM_TEX(o.uv0, _node_666),0.0,0));
                v.vertex.xyz += ((_liuguang_var.rgb*_node_666_var.r)*0.6*v.normal);
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
