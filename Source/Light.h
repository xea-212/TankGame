#pragma once

#include <DirectXMath.h>
#include "Color.h"
using namespace DirectX;

namespace Light
{
	enum Type
	{
		DIRECTIONAL,
		POINT,
		SPOT
	};

	struct Data
	{
		Type type;                  //ライトの種類
		
		Color::RGBA ambientColor;   //環境光の色
		Color::RGBA diffuseColor;   //拡散反射光の色
		Color::RGBA specularColor;  //鏡面反射光の色
		
		float intensity;          //光の強さ
		DirectX::XMFLOAT3 direction;    //ライトの向き（単位ベクトル）
		DirectX::XMFLOAT3 position;     //ライトの位置
		float range;              //ライトの届く範囲

		//コンストラクタ
		Data();

		//初期化
		void SetDirectional(const DirectX::XMFLOAT3& dir);
		void SetPoint(const DirectX::XMFLOAT3& pos, float range_);

		//シェーダー用に変換
		DirectX::XMFLOAT4 GetAmbient() const;
		DirectX::XMFLOAT4 GetDiffuse() const;
		DirectX::XMFLOAT4 GetSpecular() const;

		//プリセットライト
		Data SunLight();
		Data LampLight();
	};

	
}