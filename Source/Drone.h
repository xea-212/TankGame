#pragma once
#include "../Engine/GameObject.h"
#include <array>

struct Vector3 {
    double x;
    double y;
    double z;

    //ベクトル加算
    Vector3 operator + (const Vector3& other) const {
        return { x + other.x, y + other.y, z + other.z };
    }

    //スカラー乗算
    Vector3 operator * (double scalar) const {
        return { x * scalar, y * scalar, z * scalar };
    }

    //スカラー除算
    Vector3 operator / (double scalar) const {
        return { x / scalar, y / scalar, z / scalar };
    }
};

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
    const Vector3 gravity = {0.0f, 0.0f, -g * mass}; // 重力ベクトル

    Vector3 velocity;
    Vector3 acceleration;

    Vector3 attitude_angles;
};