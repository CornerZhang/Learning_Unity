// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Lab_1/Deferred_Forward" {

	SubShader {
		Blend One One
		//.1
		pass{
		Tags{ "LightMode"="ForwardBase"}
		Blend One One

		CGPROGRAM
		#pragma vertex vert
		#pragma fragment frag
		#include "UnityCG.cginc"
		#include "Lighting.cginc"

		struct vertOut{
			float4 pos:SV_POSITION;
			float4 color:COLOR;
		};
		vertOut vert(appdata_base v)
		{
			vertOut o;
			o.pos=UnityObjectToClipPos(v.vertex);
			o.color=float4(0,1,0,1);	// 输出绿色
			return o;
		}
		float4 frag(vertOut i):COLOR
		{
			return i.color;
		}
		ENDCG
		}//end pass

		//.2
		CGPROGRAM
		#pragma surface surf MyDeferred 
		half4 LightingMyDeferred_PrePass (SurfaceOutput s, half4 light) {
			half4 c;
            c.rgb = s.Albedo;
            c.a = s.Alpha;
            return c;
		}

		struct Input {
			float2 uv_MainTex;
		};
		sampler2D _MainTex;
		void surf (Input IN, inout SurfaceOutput o) {
			o.Albedo=float3(1,0,0);	// 输出红色
		}
		ENDCG
	}
}
