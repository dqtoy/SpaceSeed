// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33343,y:32532,varname:node_3138,prsc:2|emission-7769-OUT,voffset-8023-OUT;n:type:ShaderForge.SFN_Lerp,id:7769,x:32949,y:32623,varname:node_7769,prsc:2|A-1333-RGB,B-5173-RGB,T-2221-OUT;n:type:ShaderForge.SFN_Color,id:1333,x:32249,y:32299,ptovrint:False,ptlb:BaseColor,ptin:_BaseColor,varname:node_1333,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3490196,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5173,x:32249,y:32471,ptovrint:False,ptlb:HightColor,ptin:_HightColor,varname:node_5173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3517241,c3:0,c4:1;n:type:ShaderForge.SFN_Clamp01,id:2221,x:32576,y:32827,varname:node_2221,prsc:2|IN-8777-OUT;n:type:ShaderForge.SFN_Sin,id:1059,x:32001,y:33191,varname:node_1059,prsc:2|IN-9173-OUT;n:type:ShaderForge.SFN_Multiply,id:9173,x:31752,y:33191,varname:node_9173,prsc:2|A-9747-OUT,B-2867-OUT,C-9709-OUT;n:type:ShaderForge.SFN_RemapRange,id:8777,x:32198,y:33191,varname:node_8777,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1059-OUT;n:type:ShaderForge.SFN_Time,id:9430,x:30944,y:33088,varname:node_9430,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8023,x:32941,y:32971,varname:node_8023,prsc:2|A-3215-OUT,B-8853-OUT,C-2221-OUT,D-1669-OUT;n:type:ShaderForge.SFN_NormalVector,id:3215,x:32941,y:33105,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:7252,x:30787,y:32947,ptovrint:False,ptlb:PulseSpeed,ptin:_PulseSpeed,varname:node_7252,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:200;n:type:ShaderForge.SFN_FragmentPosition,id:5302,x:31161,y:32521,varname:node_5302,prsc:2;n:type:ShaderForge.SFN_Add,id:9747,x:31521,y:32885,varname:node_9747,prsc:2|A-5755-OUT,B-9818-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:8564,x:31161,y:32673,varname:node_8564,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1737,x:31387,y:32593,varname:node_1737,prsc:2|A-5302-XYZ,B-8564-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:5755,x:31571,y:32593,varname:node_5755,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1737-OUT;n:type:ShaderForge.SFN_Multiply,id:9818,x:31144,y:32996,varname:node_9818,prsc:2|A-7252-OUT,B-9430-T;n:type:ShaderForge.SFN_Pi,id:2867,x:31459,y:33188,varname:node_2867,prsc:2;n:type:ShaderForge.SFN_Slider,id:9709,x:31269,y:33316,ptovrint:False,ptlb:Repeat,ptin:_Repeat,varname:node_9709,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Slider,id:8853,x:32784,y:33265,ptovrint:False,ptlb:PulsePower,ptin:_PulsePower,varname:node_8853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:10;n:type:ShaderForge.SFN_Slider,id:6316,x:31825,y:32917,ptovrint:False,ptlb:HeightFactor,ptin:_HeightFactor,varname:node_6316,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:50;n:type:ShaderForge.SFN_Multiply,id:1669,x:32231,y:32836,varname:node_1669,prsc:2|A-5755-OUT,B-6316-OUT;proporder:1333-5173-7252-9709-8853-6316;pass:END;sub:END;*/

Shader "C1/Pulse" {
    Properties {
        _BaseColor ("BaseColor", Color) = (1,0.3490196,0,1)
        _HightColor ("HightColor", Color) = (1,0.3517241,0,1)
        _PulseSpeed ("PulseSpeed", Range(0, 200)) = 2
        _Repeat ("Repeat", Range(0, 5)) = 1
        _PulsePower ("PulsePower", Range(0, 10)) = 0.3
        _HeightFactor ("HeightFactor", Range(0, 50)) = 1
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 2.0
            uniform float4 _TimeEditor;
            uniform float4 _BaseColor;
            uniform float4 _HightColor;
            uniform float _PulseSpeed;
            uniform float _Repeat;
            uniform float _PulsePower;
            uniform float _HeightFactor;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_5755 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb).g;
                float4 node_9430 = _Time + _TimeEditor;
                float node_2221 = saturate((sin(((node_5755+(_PulseSpeed*node_9430.g))*3.141592654*_Repeat))*0.5+0.5));
                v.vertex.xyz += (v.normal*_PulsePower*node_2221*(node_5755*_HeightFactor));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_5755 = (i.posWorld.rgb-objPos.rgb).g;
                float4 node_9430 = _Time + _TimeEditor;
                float node_2221 = saturate((sin(((node_5755+(_PulseSpeed*node_9430.g))*3.141592654*_Repeat))*0.5+0.5));
                float3 emissive = lerp(_BaseColor.rgb,_HightColor.rgb,node_2221);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
