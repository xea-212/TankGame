#pragma once
#include "Engine/GameObject.h"

//◆◆◆を管理するクラス
class UI : public GameObject
{
    int hPict_;    //モデル番号
public:
    //コンストラクタ
    UI(GameObject* parent);

    //デストラクタ
    ~UI();

    //初期化
    void Initialize() override;

    //更新
    void Update() override;

    //描画
    void Draw() override;

    //開放
    void Release() override;

    void GetPosition();
};