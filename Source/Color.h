#pragma once

#include <DirectXMath.h>

namespace Color
{
	struct RGBA
	{
		float r, g, b, a;

		//コンストラクタ
		RGBA();
		RGBA(float red, float green, float blue, float alpha = 1.0);
		RGBA(int red, int green, int blue, int alpha = 255);

		//DirectX変換
		DirectX::XMFLOAT4 ToFloat4() const;
		DirectX::XMVECTOR ToVector() const;

		//演算子
		RGBA operator+(const RGBA& other) const;
		RGBA operator-(const RGBA& other) const;
		RGBA operator*(float value) const;

		void Clamp();
	};
	
	//HSV->RGB変換
	RGBA FromHSV(float h, float s, float v);

	//カラー定数
	extern const RGBA White;
	extern const RGBA Black;
	extern const RGBA Red;
	extern const RGBA Green;
	extern const RGBA Blue;
	extern const RGBA Yellow;
	extern const RGBA Gray;
}