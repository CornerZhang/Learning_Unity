Shader "Lab_1/Deferred" {
	Properties {
		_MainTex ("Base(RGB)", 2D) = "white" {}
	}

	SubShader {
		Tags { "RenderType"="Opaque" }

		Blend one one

		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf MyDeferred

		half4 LightingMyDeferred_PrePass(SurfaceOutput s, half4 light) {
			half4 c;
			c.rgb = s.Albedo;
			c.s = s.Alpha;
			return c;
		}

		struct Input {
			float2 uv_MainTex;
		};

		sampler2D _MainTex;

		void surf (Input IN, inout SurfaceOutputStandard o) {
			o.Albedo = float3(1,0,0);
		}
		ENDCG
	}
	FallBack "Diffuse"
}
