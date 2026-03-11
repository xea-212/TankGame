#pragma once
#include "../Engine/GameObject.h"
#include "../Engine/Vector3.h"
#include <array>

class Drone : public GameObject
{
public:
    //コンストラクタ
    Drone(GameObject* parent);

    //デストラクタ
    ~Drone();

    //初期化
    void Initialize() override;

    //更新
    void Update() override;

    //描画
    void Draw() override;

    //開放
    void Release() override;

    void GetPosition();

    std::array<double, 4> rotor_speeds = { 0.0, 0.0, 0.0, 0.0 };

private:
    int hModel_;    //モデル番号
    int life_;      //寿命

    const double mass = 1.0f; // 質量
    const double g = 9.81f; // 重力加速度
    const double thrust_const = 1e-5; // 推力係数
    const Vector3 gravity = { 0.0f, 0.0f, (float)(-g * mass) }; // 重力ベクトル

    Vector3 velocity;
    Vector3 acceleration;

    Vector3 attitude_angles;
};