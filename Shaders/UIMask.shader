Shader "IndieYP/UIMask" 
{
	Properties
	{
		_MainTex("MainTex", 2D) = "white" {}
		_Cutoff("Cutoff", Range(0, 1)) = 0
	}

	SubShader
	{
		Tags{
			"Queue" = "Transparent+1"
			"RenderType" = "Transparent"
			"PreviewType" = "Plane"
		}
		Offset -1, -1
		Zwrite On
		Pass
		{
			AlphaTest Greater[_Cutoff]
			Blend SrcAlpha SrcAlpha
			SetTexture[_MainTex] {
				combine texture * primary, texture
			}
		}
	}
}
