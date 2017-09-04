Shader "Custom/NewShader" {

	SubShader {
		Tags{"RenderType"="Opaque"}

		CGPROGRAM

		#pragma surface surf Lambert

		struct Input {
			float4 color: COLOR;
		}

		void surf(Input IN, input SurfaceOutput o) {
			o.Albedo = 1;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
