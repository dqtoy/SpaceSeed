// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33370,y:33998,varname:node_3138,prsc:2|emission-1739-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32232,y:32614,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3103448,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:2614,x:32232,y:32807,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_2614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.710345,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:3109,x:32583,y:32734,varname:node_3109,prsc:2|A-7241-RGB,B-2614-RGB,T-3720-OUT;n:type:ShaderForge.SFN_Depth,id:7523,x:31954,y:32939,varname:node_7523,prsc:2;n:type:ShaderForge.SFN_Slider,id:6070,x:31797,y:33084,ptovrint:False,ptlb:DistanceMul,ptin:_DistanceMul,varname:node_6070,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6654,x:32176,y:33009,varname:node_6654,prsc:2|A-7523-OUT,B-6070-OUT;n:type:ShaderForge.SFN_Clamp01,id:3720,x:32361,y:33009,varname:node_3720,prsc:2|IN-6654-OUT;n:type:ShaderForge.SFN_Depth,id:4728,x:32032,y:34758,varname:node_4728,prsc:2;n:type:ShaderForge.SFN_Vector1,id:321,x:32037,y:34920,varname:node_321,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:4401,x:32244,y:34826,varname:node_4401,prsc:2|A-4728-OUT,B-321-OUT;n:type:ShaderForge.SFN_Clamp01,id:2103,x:32414,y:34826,varname:node_2103,prsc:2|IN-4401-OUT;n:type:ShaderForge.SFN_Tex2d,id:7764,x:32521,y:34394,varname:node_7764,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|TEX-7743-TEX;n:type:ShaderForge.SFN_Lerp,id:1739,x:32818,y:34382,varname:node_1739,prsc:2|A-6211-OUT,B-7764-RGB,T-2103-OUT;n:type:ShaderForge.SFN_Tex2d,id:3903,x:32078,y:33776,varname:node_3903,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|TEX-7743-TEX;n:type:ShaderForge.SFN_Tex2d,id:334,x:32080,y:33946,varname:node_334,prsc:2,tex:c68296334e691ed45b62266cbc716628,ntxv:0,isnm:False|TEX-7599-TEX;n:type:ShaderForge.SFN_Tex2d,id:8691,x:32080,y:34104,ptovrint:False,ptlb:GrassNoise,ptin:_GrassNoise,varname:node_8691,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e28dc97a9541e3642a48c0e3886688c5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6211,x:32521,y:34247,varname:node_6211,prsc:2|A-3903-RGB,B-334-RGB,T-8691-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:7743,x:30912,y:33757,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_7743,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7599,x:30912,y:33953,ptovrint:False,ptlb:GrassTexture,ptin:_GrassTexture,varname:node_7599,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c68296334e691ed45b62266cbc716628,ntxv:0,isnm:False;proporder:7241-2614-6070-8691-7743-7599;pass:END;sub:END;*/

Shader "Beginner/DepthBasic" {
    Properties {
        _Color1 ("Color1", Color) = (1,0.3103448,0,1)
        _Color2 ("Color2", Color) = (0,0.710345,1,1)
        _DistanceMul ("DistanceMul", Range(0, 1)) = 0
        _GrassNoise ("GrassNoise", 2D) = "white" {}
        _MainTexture ("MainTexture", 2D) = "white" {}
        _GrassTexture ("GrassTexture", 2D) = "white" {}
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
            uniform sampler2D _GrassNoise; uniform float4 _GrassNoise_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _GrassTexture; uniform float4 _GrassTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_3903 = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float4 node_334 = tex2D(_GrassTexture,TRANSFORM_TEX(i.uv0, _GrassTexture));
                float4 _GrassNoise_var = tex2D(_GrassNoise,TRANSFORM_TEX(i.uv0, _GrassNoise));
                float4 node_7764 = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 emissive = lerp(lerp(node_3903.rgb,node_334.rgb,_GrassNoise_var.rgb),node_7764.rgb,saturate((partZ*0.1)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
