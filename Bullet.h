#pragma once

#include "Engine/GameObject.h"


//◆◆◆を管理するクラス
class Bullet : public GameObject
{
    int hModel_;
    float dy_;			//Ｙ方向の加速度
    const float SPEED;		//速度
    const float GRAVITY;	//重力
    int life_;
    XMVECTOR move_;

public:
    //コンストラクタ
    Bullet(GameObject* parent);

    //デストラクタ
    ~Bullet();

    //初期化
    void Initialize() override;

    //更新
    void Update() override;

    //描画
    void Draw() override;

    //開放
    void Release() override;

    void SetMove(const XMFLOAT3& move);

};