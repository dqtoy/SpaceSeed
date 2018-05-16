// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34428,y:33091,varname:node_3138,prsc:2|emission-4657-OUT,clip-9042-OUT;n:type:ShaderForge.SFN_Tex2d,id:2192,x:32557,y:33139,cmnt:circle plus disturb,varname:node_2192,prsc:2,tex:7a8aa6623e8444c86978db670b5065e6,ntxv:0,isnm:False|UVIN-8551-OUT,TEX-6292-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6292,x:31630,y:31703,ptovrint:False,ptlb:node_6292,ptin:_node_6292,varname:node_6292,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7a8aa6623e8444c86978db670b5065e6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:1817,x:30179,y:32924,varname:node_1817,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5988,x:30479,y:32998,varname:node_5988,prsc:2|A-1817-TSL,B-3586-OUT;n:type:ShaderForge.SFN_Add,id:9146,x:30800,y:33040,varname:node_9146,prsc:2|A-5988-OUT,B-8242-V;n:type:ShaderForge.SFN_ValueProperty,id:3586,x:30179,y:33117,ptovrint:False,ptlb:spped,ptin:_spped,varname:node_3586,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-6;n:type:ShaderForge.SFN_TexCoord,id:8242,x:30479,y:33145,varname:node_8242,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:8551,x:31171,y:33137,varname:node_8551,prsc:2|A-5466-OUT,B-9146-OUT;n:type:ShaderForge.SFN_Tex2d,id:3409,x:32561,y:32797,cmnt:base blue,varname:node_3409,prsc:2,tex:7a8aa6623e8444c86978db670b5065e6,ntxv:0,isnm:False|TEX-6292-TEX;n:type:ShaderForge.SFN_Add,id:2769,x:33783,y:33191,varname:node_2769,prsc:2|A-3409-B,B-9555-OUT;n:type:ShaderForge.SFN_Clamp01,id:9067,x:33946,y:33191,varname:node_9067,prsc:2|IN-2769-OUT;n:type:ShaderForge.SFN_RemapRange,id:9042,x:34105,y:33191,varname:node_9042,prsc:2,frmn:0.4,frmx:0.5,tomn:0,tomx:1|IN-9067-OUT;n:type:ShaderForge.SFN_Time,id:2881,x:27476,y:32785,varname:node_2881,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:983,x:27707,y:33014,varname:node_983,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:16,x:27474,y:32935,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_16,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:5817,x:27707,y:32845,varname:node_5817,prsc:2|A-2881-TSL,B-16-OUT;n:type:ShaderForge.SFN_Append,id:2351,x:28083,y:32993,varname:node_2351,prsc:2|A-983-U,B-2561-OUT;n:type:ShaderForge.SFN_Add,id:2561,x:27905,y:33044,varname:node_2561,prsc:2|A-5817-OUT,B-983-V;n:type:ShaderForge.SFN_Tex2d,id:3386,x:28330,y:32993,cmnt:green disturb,varname:node_3386,prsc:2,tex:7a8aa6623e8444c86978db670b5065e6,ntxv:0,isnm:False|UVIN-2351-OUT,TEX-6292-TEX;n:type:ShaderForge.SFN_RemapRange,id:856,x:28546,y:32993,varname:node_856,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3386-G;n:type:ShaderForge.SFN_ValueProperty,id:1857,x:28546,y:32892,ptovrint:False,ptlb:distord,ptin:_distord,varname:node_1857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_Multiply,id:6325,x:28796,y:32932,cmnt:disturb uv in y direction,varname:node_6325,prsc:2|A-1857-OUT,B-856-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:9814,x:27320,y:33864,varname:node_9814,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:6676,x:27313,y:34251,varname:node_6676,prsc:2;n:type:ShaderForge.SFN_Vector3,id:6980,x:27562,y:33973,varname:node_6980,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Subtract,id:5513,x:27799,y:33868,varname:node_5513,prsc:2|A-9814-XYZ,B-6980-OUT;n:type:ShaderForge.SFN_Normalize,id:1669,x:28043,y:33868,varname:node_1669,prsc:2|IN-5513-OUT;n:type:ShaderForge.SFN_Subtract,id:4672,x:27696,y:34113,varname:node_4672,prsc:2|A-9814-XYZ,B-33-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3698,x:27313,y:34411,ptovrint:False,ptlb:value0,ptin:_value0,varname:node_3698,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:33,x:27529,y:34302,varname:node_33,prsc:2|A-6676-X,B-3698-OUT,C-6676-Z;n:type:ShaderForge.SFN_Normalize,id:4307,x:27973,y:34115,varname:node_4307,prsc:2|IN-4672-OUT;n:type:ShaderForge.SFN_Dot,id:4591,x:28336,y:33984,varname:node_4591,prsc:2,dt:0|A-1669-OUT,B-4307-OUT;n:type:ShaderForge.SFN_Cross,id:6265,x:28336,y:34203,varname:node_6265,prsc:2|A-1669-OUT,B-4307-OUT;n:type:ShaderForge.SFN_ArcTan2,id:9805,x:28573,y:34086,varname:node_9805,prsc:2,attp:2|A-4591-OUT,B-6265-OUT;n:type:ShaderForge.SFN_ComponentMask,id:186,x:28776,y:34086,varname:node_186,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9805-OUT;n:type:ShaderForge.SFN_Add,id:5466,x:30673,y:33338,varname:node_5466,prsc:2|A-8242-U,B-6401-OUT,C-6325-OUT;n:type:ShaderForge.SFN_Multiply,id:6401,x:29126,y:33840,cmnt:util 3d view,varname:node_6401,prsc:2|A-2174-OUT,B-186-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2174,x:28554,y:33804,ptovrint:False,ptlb:Camera offset,ptin:_Cameraoffset,varname:node_2174,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_TexCoord,id:4611,x:30467,y:33798,varname:node_4611,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:1414,x:31142,y:33748,varname:node_1414,prsc:2|A-8066-OUT,B-9864-OUT;n:type:ShaderForge.SFN_Add,id:8066,x:30678,y:34071,varname:node_8066,prsc:2|A-4611-U,B-2296-OUT,C-6325-OUT;n:type:ShaderForge.SFN_Tex2d,id:4624,x:32559,y:33433,cmnt:red circle negative direction,varname:node_4624,prsc:2,tex:7a8aa6623e8444c86978db670b5065e6,ntxv:0,isnm:False|UVIN-1414-OUT,TEX-6292-TEX;n:type:ShaderForge.SFN_Time,id:6888,x:30158,y:33614,varname:node_6888,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9095,x:30158,y:33770,ptovrint:False,ptlb:speed3,ptin:_speed3,varname:node_9095,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-2;n:type:ShaderForge.SFN_Multiply,id:1953,x:30467,y:33645,varname:node_1953,prsc:2|A-6888-TSL,B-9095-OUT;n:type:ShaderForge.SFN_Negate,id:2296,x:30287,y:34085,cmnt:negative direction,varname:node_2296,prsc:2|IN-6401-OUT;n:type:ShaderForge.SFN_Add,id:9864,x:30790,y:33708,varname:node_9864,prsc:2|A-1953-OUT,B-4611-V,C-2120-OUT;n:type:ShaderForge.SFN_Vector1,id:2120,x:30660,y:33786,cmnt:why,varname:node_2120,prsc:2,v1:0.5;n:type:ShaderForge.SFN_TexCoord,id:1212,x:31428,y:34326,varname:node_1212,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:9971,x:31638,y:34346,varname:node_9971,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1212-U;n:type:ShaderForge.SFN_Abs,id:2224,x:31829,y:34346,varname:node_2224,prsc:2|IN-9971-OUT;n:type:ShaderForge.SFN_RemapRange,id:3628,x:32013,y:34346,varname:node_3628,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2224-OUT;n:type:ShaderForge.SFN_Clamp01,id:1707,x:32192,y:34346,varname:node_1707,prsc:2|IN-3628-OUT;n:type:ShaderForge.SFN_OneMinus,id:2859,x:32384,y:34346,varname:node_2859,prsc:2|IN-1707-OUT;n:type:ShaderForge.SFN_Add,id:592,x:32880,y:33247,varname:node_592,prsc:2|A-2192-R,B-4624-R;n:type:ShaderForge.SFN_Multiply,id:9555,x:33169,y:33496,varname:node_9555,prsc:2|A-592-OUT,B-2859-OUT;n:type:ShaderForge.SFN_Color,id:5419,x:33963,y:32682,ptovrint:False,ptlb:node_5419,ptin:_node_5419,varname:node_5419,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.9586205,c4:1;n:type:ShaderForge.SFN_Color,id:1481,x:33963,y:32912,ptovrint:False,ptlb:node_1481,ptin:_node_1481,varname:node_1481,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:4657,x:34253,y:32809,varname:node_4657,prsc:2|A-5419-RGB,B-1481-RGB,T-1164-OUT;n:type:ShaderForge.SFN_Add,id:1164,x:32934,y:32973,varname:node_1164,prsc:2|A-3409-B,B-2192-R,C-4624-R;proporder:6292-3586-16-1857-3698-2174-9095-5419-1481;pass:END;sub:END;*/

Shader "Shader Forge/LavaLamp" {
    Properties {
        _node_6292 ("node_6292", 2D) = "white" {}
        _spped ("spped", Float ) = -6
        _speed ("speed", Float ) = 5
        _distord ("distord", Float ) = 0.05
        _value0 ("value0", Float ) = 0
        _Cameraoffset ("Camera offset", Float ) = 5
        _speed3 ("speed3", Float ) = -2
        _node_5419 ("node_5419", Color) = (0,1,0.9586205,1)
        _node_1481 ("node_1481", Color) = (0,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform sampler2D _node_6292; uniform float4 _node_6292_ST;
            uniform float _spped;
            uniform float _speed;
            uniform float _distord;
            uniform float _value0;
            uniform float _Cameraoffset;
            uniform float _speed3;
            uniform float4 _node_5419;
            uniform float4 _node_1481;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_3409 = tex2D(_node_6292,TRANSFORM_TEX(i.uv0, _node_6292)); // base blue
                float3 node_1669 = normalize((objPos.rgb-float3(1,0,0)));
                float3 node_4307 = normalize((objPos.rgb-float3(_WorldSpaceCameraPos.r,_value0,_WorldSpaceCameraPos.b)));
                float node_6401 = (_Cameraoffset*((atan2(dot(node_1669,node_4307),cross(node_1669,node_4307))/6.28318530718)+0.5).g); // util 3d view
                float4 node_2881 = _Time + _TimeEditor;
                float2 node_2351 = float2(i.uv0.r,((node_2881.r*_speed)+i.uv0.g));
                float4 node_3386 = tex2D(_node_6292,TRANSFORM_TEX(node_2351, _node_6292)); // green disturb
                float node_6325 = (_distord*(node_3386.g*2.0+-1.0)); // disturb uv in y direction
                float4 node_1817 = _Time + _TimeEditor;
                float2 node_8551 = float2((i.uv0.r+node_6401+node_6325),((node_1817.r*_spped)+i.uv0.g));
                float4 node_2192 = tex2D(_node_6292,TRANSFORM_TEX(node_8551, _node_6292)); // circle plus disturb
                float4 node_6888 = _Time + _TimeEditor;
                float2 node_1414 = float2((i.uv0.r+(-1*node_6401)+node_6325),((node_6888.r*_speed3)+i.uv0.g+0.5));
                float4 node_4624 = tex2D(_node_6292,TRANSFORM_TEX(node_1414, _node_6292)); // red circle negative direction
                clip((saturate((node_3409.b+((node_2192.r+node_4624.r)*(1.0 - saturate((abs((i.uv0.r*2.0+-1.0))*2.0+-1.0))))))*10.0+-4.0) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_node_5419.rgb,_node_1481.rgb,(node_3409.b+node_2192.r+node_4624.r));
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
            uniform sampler2D _node_6292; uniform float4 _node_6292_ST;
            uniform float _spped;
            uniform float _speed;
            uniform float _distord;
            uniform float _value0;
            uniform float _Cameraoffset;
            uniform float _speed3;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_3409 = tex2D(_node_6292,TRANSFORM_TEX(i.uv0, _node_6292)); // base blue
                float3 node_1669 = normalize((objPos.rgb-float3(1,0,0)));
                float3 node_4307 = normalize((objPos.rgb-float3(_WorldSpaceCameraPos.r,_value0,_WorldSpaceCameraPos.b)));
                float node_6401 = (_Cameraoffset*((atan2(dot(node_1669,node_4307),cross(node_1669,node_4307))/6.28318530718)+0.5).g); // util 3d view
                float4 node_2881 = _Time + _TimeEditor;
                float2 node_2351 = float2(i.uv0.r,((node_2881.r*_speed)+i.uv0.g));
                float4 node_3386 = tex2D(_node_6292,TRANSFORM_TEX(node_2351, _node_6292)); // green disturb
                float node_6325 = (_distord*(node_3386.g*2.0+-1.0)); // disturb uv in y direction
                float4 node_1817 = _Time + _TimeEditor;
                float2 node_8551 = float2((i.uv0.r+node_6401+node_6325),((node_1817.r*_spped)+i.uv0.g));
                float4 node_2192 = tex2D(_node_6292,TRANSFORM_TEX(node_8551, _node_6292)); // circle plus disturb
                float4 node_6888 = _Time + _TimeEditor;
                float2 node_1414 = float2((i.uv0.r+(-1*node_6401)+node_6325),((node_6888.r*_speed3)+i.uv0.g+0.5));
                float4 node_4624 = tex2D(_node_6292,TRANSFORM_TEX(node_1414, _node_6292)); // red circle negative direction
                clip((saturate((node_3409.b+((node_2192.r+node_4624.r)*(1.0 - saturate((abs((i.uv0.r*2.0+-1.0))*2.0+-1.0))))))*10.0+-4.0) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
