// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33188,y:32680,varname:node_3138,prsc:2|emission-7241-RGB,alpha-4912-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32302,y:32521,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:9918,x:31352,y:32813,varname:node_9918,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:135,x:31951,y:32829,varname:node_135,prsc:2,spu:0,spv:-0.1|UVIN-4661-OUT;n:type:ShaderForge.SFN_Tex2d,id:171,x:32159,y:32829,ptovrint:False,ptlb:node_171,ptin:_node_171,varname:node_171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7a8aa6623e8444c86978db670b5065e6,ntxv:2,isnm:False|UVIN-135-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2490,x:32446,y:32955,varname:node_2490,prsc:2|A-171-R,B-945-A;n:type:ShaderForge.SFN_VertexColor,id:945,x:32159,y:33006,varname:node_945,prsc:2;n:type:ShaderForge.SFN_Slider,id:5799,x:31177,y:33071,ptovrint:False,ptlb:node_5799,ptin:_node_5799,varname:node_5799,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:2029,x:31539,y:32953,varname:node_2029,prsc:2|A-9918-V,B-5799-OUT;n:type:ShaderForge.SFN_Append,id:4661,x:31693,y:32831,varname:node_4661,prsc:2|A-9918-U,B-2029-OUT;n:type:ShaderForge.SFN_Slider,id:4650,x:32324,y:33176,ptovrint:False,ptlb:node_4650,ptin:_node_4650,varname:node_4650,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:4912,x:32756,y:32959,varname:node_4912,prsc:2|A-2490-OUT,B-4650-OUT;proporder:7241-171-5799-4650;pass:END;sub:END;*/

Shader "Shader Forge/WaterFoam" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_171 ("node_171", 2D) = "black" {}
        _node_5799 ("node_5799", Range(0, 1)) = 0
        _node_4650 ("node_4650", Range(0, 1)) = 1
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
            uniform float4 _Color;
            uniform sampler2D _node_171; uniform float4 _node_171_ST;
            uniform float _node_5799;
            uniform float _node_4650;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                float4 node_3177 = _Time + _TimeEditor;
                float2 node_135 = (float2(i.uv0.r,(i.uv0.g+_node_5799))+node_3177.g*float2(0,-0.1));
                float4 _node_171_var = tex2D(_node_171,TRANSFORM_TEX(node_135, _node_171));
                return fixed4(finalColor,((_node_171_var.r*i.vertexColor.a)*_node_4650));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
