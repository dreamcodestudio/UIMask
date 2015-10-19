Shader "IndieYP/UIMask" 
{
	Properties
	{
		_MainTex("MainTex", 2D) = "white" {}
		_Cutoff("Cutoff", Range(0, 1)) = .5
	}

	SubShader
	{
		Tags{ "Queue" = "Transparent+1"}
		Offset -1, -1
		ColorMask 0
		ZWrite On
		Pass
		{
			AlphaTest Greater[_Cutoff]
			SetTexture[_MainTex]
			{
				combine texture * primary, texture
			}

		}

	}

}