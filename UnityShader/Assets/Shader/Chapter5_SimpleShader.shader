// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Chapter5_SimpleShader" {
	Properties{
		_Color("Color Tint", Color) = (1, 1, 1, 1)
	}

	SubShader {
		Pass{
			CGPROGRAM

			struct a2v {
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 pos: SV_POSITION;
				fixed3 color : COLOR0;
			};

			fixed4 _Color;

#pragma vertex vertexProgram
#pragma fragment fragmentProgram

			v2f vertexProgram(a2v v) {
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.color = v.normal * 0.5 + fixed3(0.5, 0.5, 0.5);
				return o;
			}

			fixed4 fragmentProgram(v2f i) : SV_Target {
				fixed3 c = i.color;
				c *= _Color.rgb;
				return fixed4(c, 1.0);
			}

			ENDCG
		}

	}
	FallBack "Diffuse"
}
