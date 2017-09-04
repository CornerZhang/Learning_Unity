Shader "Custom/Shader_Test_00" {
	Properties {
		_MainTex("Base(RGB)", 2D) = "white" {}

	}

	SubShader {
		Tags {
			"Queue" = "Geometry"
			"RenderType" = "Opaque"
			"IgnoreProjector" = "True"
		}

		UsePass "Tut/NewBie/CommonShader/MYM"
	}

	FallBack "Diffuse"
}
