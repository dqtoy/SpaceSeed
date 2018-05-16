// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34034,y:32603,varname:node_3138,prsc:2|emission-2946-OUT;n:type:ShaderForge.SFN_TexCoord,id:4513,x:31364,y:32556,varname:node_4513,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9757,x:31586,y:32556,varname:node_9757,prsc:2,spu:0.05,spv:0|UVIN-4513-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:301,x:31776,y:32556,ptovrint:False,ptlb:node_301,ptin:_node_301,varname:node_301,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:82324340e56b74a18a436642ac78d477,ntxv:2,isnm:False|UVIN-9757-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:5018,x:31966,y:32556,varname:node_5018,prsc:2,frmn:0,frmx:1,tomn:-0.1,tomx:0.1|IN-301-G;n:type:ShaderForge.SFN_Add,id:7293,x:32213,y:32698,varname:node_7293,prsc:2|A-5018-OUT,B-4213-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5541,x:32535,y:32339,ptovrint:False,ptlb:Wave,ptin:_Wave,varname:node_5541,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2912,x:32553,y:32699,varname:node_2912,prsc:2,tex:5107c7e05a1bf451aa9a6158a1caafdc,ntxv:0,isnm:False|UVIN-7293-OUT,TEX-5541-TEX;n:type:ShaderForge.SFN_Subtract,id:7194,x:32821,y:32702,varname:node_7194,prsc:2|A-2912-RGB,B-513-OUT;n:type:ShaderForge.SFN_Slider,id:513,x:32664,y:32848,ptovrint:False,ptlb:brightness,ptin:_brightness,varname:node_513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9971,x:33167,y:32702,varname:node_9971,prsc:2|A-7194-OUT,B-2474-OUT;n:type:ShaderForge.SFN_Slider,id:2474,x:33010,y:32843,ptovrint:False,ptlb:brightness2,ptin:_brightness2,varname:node_2474,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_VertexColor,id:9183,x:33463,y:32828,varname:node_9183,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2946,x:33463,y:32701,varname:node_2946,prsc:2|A-9971-OUT,B-9251-OUT,C-2759-RGB;n:type:ShaderForge.SFN_TexCoord,id:5381,x:31364,y:32739,varname:node_5381,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4213,x:31776,y:32750,varname:node_4213,prsc:2|A-5381-UVOUT,B-2298-OUT;n:type:ShaderForge.SFN_Slider,id:2298,x:31619,y:32902,ptovrint:False,ptlb:UV,ptin:_UV,varname:node_2298,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:9251,x:33384,y:32544,ptovrint:False,ptlb:opacity,ptin:_opacity,varname:node_9251,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:2759,x:33463,y:32987,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_2759,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;proporder:5541-513-2474-301-2298-9251-2759;pass:END;sub:END;*/

Shader "Shader Forge/caustics" {
    Properties {
        _Wave ("Wave", 2D) = "white" {}
        _brightness ("brightness", Range(0, 1)) = 0
        _brightness2 ("brightness2", Range(0, 1)) = 1
        _node_301 ("node_301", 2D) = "black" {}
        _UV ("UV", Range(0, 1)) = 1
        _opacity ("opacity", Range(0, 1)) = 1
        _MainColor ("MainColor", Color) = (1,1,1,1)
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
            uniform float4 _TimeEditor;
            uniform sampler2D _node_301; uniform float4 _node_301_ST;
            uniform sampler2D _Wave; uniform float4 _Wave_ST;
            uniform float _brightness;
            uniform float _brightness2;
            uniform float _UV;
            uniform float _opacity;
            uniform float4 _MainColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_2579 = _Time + _TimeEditor;
                float2 node_9757 = (i.uv0+node_2579.g*float2(0.05,0));
                float4 _node_301_var = tex2D(_node_301,TRANSFORM_TEX(node_9757, _node_301));
                float2 node_7293 = ((_node_301_var.g*0.2+-0.1)+(i.uv0*_UV));
                float4 node_2912 = tex2D(_Wave,TRANSFORM_TEX(node_7293, _Wave));
                float3 emissive = (((node_2912.rgb-_brightness)*_brightness2)*_opacity*_MainColor.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
