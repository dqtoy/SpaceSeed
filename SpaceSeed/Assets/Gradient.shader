// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32961,y:32693,varname:node_3138,prsc:2|emission-5501-OUT;n:type:ShaderForge.SFN_TexCoord,id:637,x:31848,y:32779,varname:node_637,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:5425,x:32407,y:32312,ptovrint:False,ptlb:node_5425,ptin:_node_5425,varname:node_5425,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1029412,c3:0.1029412,c4:1;n:type:ShaderForge.SFN_Color,id:5703,x:32407,y:32510,ptovrint:False,ptlb:node_5703,ptin:_node_5703,varname:node_5703,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.681643,c2:0.6911765,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:5501,x:32748,y:32454,varname:node_5501,prsc:2|A-5425-RGB,B-5703-RGB,T-1781-OUT;n:type:ShaderForge.SFN_ComponentMask,id:538,x:32198,y:32705,varname:node_538,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-637-UVOUT;n:type:ShaderForge.SFN_Length,id:1781,x:32458,y:32965,varname:node_1781,prsc:2|IN-3464-OUT;n:type:ShaderForge.SFN_RemapRange,id:3464,x:32008,y:33003,varname:node_3464,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-637-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:7309,x:32178,y:33068,varname:node_7309,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3464-OUT;proporder:5425-5703;pass:END;sub:END;*/

Shader "Shader Forge/Gradient" {
    Properties {
        _node_5425 ("node_5425", Color) = (1,0.1029412,0.1029412,1)
        _node_5703 ("node_5703", Color) = (0.681643,0.6911765,0,1)
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
            uniform float4 _node_5425;
            uniform float4 _node_5703;
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
                float2 node_3464 = (i.uv0*2.0+-1.0);
                float3 emissive = lerp(_node_5425.rgb,_node_5703.rgb,length(node_3464));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
