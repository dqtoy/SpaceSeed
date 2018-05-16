// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33343,y:32532,varname:node_3138,prsc:2|emission-7769-OUT,voffset-8023-OUT;n:type:ShaderForge.SFN_TexCoord,id:1839,x:30950,y:32898,varname:node_1839,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:8626,x:31320,y:32912,varname:node_8626,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5053-Y;n:type:ShaderForge.SFN_Lerp,id:7769,x:32937,y:32642,varname:node_7769,prsc:2|A-1333-RGB,B-5173-RGB,T-2221-OUT;n:type:ShaderForge.SFN_Color,id:1333,x:32249,y:32299,ptovrint:False,ptlb:node_1333,ptin:_node_1333,varname:node_1333,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9724138,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5173,x:32249,y:32470,ptovrint:False,ptlb:node_5173,ptin:_node_5173,varname:node_5173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9307066,c3:0.625,c4:1;n:type:ShaderForge.SFN_Add,id:1451,x:32117,y:32631,varname:node_1451,prsc:2|A-61-OUT,B-8626-OUT;n:type:ShaderForge.SFN_Slider,id:61,x:31692,y:32600,ptovrint:False,ptlb:node_61,ptin:_node_61,varname:node_61,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.6178052,max:1;n:type:ShaderForge.SFN_Clamp01,id:2221,x:32463,y:32877,varname:node_2221,prsc:2|IN-8777-OUT;n:type:ShaderForge.SFN_Multiply,id:4701,x:32132,y:32780,varname:node_4701,prsc:2|A-61-OUT,B-8626-OUT;n:type:ShaderForge.SFN_RemapRange,id:7688,x:32168,y:33024,varname:node_7688,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:2|IN-8626-OUT;n:type:ShaderForge.SFN_Sin,id:1059,x:32001,y:33191,varname:node_1059,prsc:2|IN-9173-OUT;n:type:ShaderForge.SFN_Multiply,id:9173,x:31752,y:33191,varname:node_9173,prsc:2|A-1253-OUT,B-902-OUT,C-3266-OUT;n:type:ShaderForge.SFN_Vector1,id:902,x:31443,y:33234,varname:node_902,prsc:2,v1:6.283185;n:type:ShaderForge.SFN_RemapRange,id:8777,x:32198,y:33191,varname:node_8777,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1059-OUT;n:type:ShaderForge.SFN_Vector1,id:3266,x:31431,y:33330,varname:node_3266,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Time,id:9430,x:31293,y:33096,varname:node_9430,prsc:2;n:type:ShaderForge.SFN_Add,id:1253,x:31547,y:33023,varname:node_1253,prsc:2|A-8626-OUT,B-9430-T;n:type:ShaderForge.SFN_Multiply,id:8023,x:32941,y:32971,varname:node_8023,prsc:2|A-3215-OUT,B-3086-OUT,C-2221-OUT;n:type:ShaderForge.SFN_Vector1,id:3086,x:32629,y:33154,varname:node_3086,prsc:2,v1:0.3;n:type:ShaderForge.SFN_NormalVector,id:3215,x:32629,y:32989,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:5053,x:31115,y:32796,varname:node_5053,prsc:2;proporder:1333-5173-61;pass:END;sub:END;*/

Shader "Shader Forge/Gradient2" {
    Properties {
        _node_1333 ("node_1333", Color) = (1,0.9724138,0,1)
        _node_5173 ("node_5173", Color) = (1,0.9307066,0.625,1)
        _node_61 ("node_61", Range(-1, 1)) = 0.6178052
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
            uniform float4 _node_1333;
            uniform float4 _node_5173;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_8626 = mul(unity_ObjectToWorld, v.vertex).g.r;
                float4 node_9430 = _Time + _TimeEditor;
                float node_2221 = saturate((sin(((node_8626+node_9430.g)*6.283185*0.5))*0.5+0.5));
                v.vertex.xyz += (v.normal*0.3*node_2221);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_8626 = i.posWorld.g.r;
                float4 node_9430 = _Time + _TimeEditor;
                float node_2221 = saturate((sin(((node_8626+node_9430.g)*6.283185*0.5))*0.5+0.5));
                float3 emissive = lerp(_node_1333.rgb,_node_5173.rgb,node_2221);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_8626 = mul(unity_ObjectToWorld, v.vertex).g.r;
                float4 node_9430 = _Time + _TimeEditor;
                float node_2221 = saturate((sin(((node_8626+node_9430.g)*6.283185*0.5))*0.5+0.5));
                v.vertex.xyz += (v.normal*0.3*node_2221);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
