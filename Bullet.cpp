#include "Bullet.h"
#include "Engine/Model.h"
#include "Engine/SphereCollider.h"
#include "Engine/Input.h"



//コンストラクタ
Bullet::Bullet(GameObject* parent)
    :GameObject(parent, "Bullet"), hModel_(-1), life_(180),
    SPEED(0.1f), GRAVITY(0.001f)
{
}

//デストラクタ
Bullet::~Bullet()
{
}

//初期化
void Bullet::Initialize()
{
    //モデルデータのロード
    hModel_ = Model::Load("Models\\Bullet.fbx");
    assert(hModel_ >= 0);

    SphereCollider* collision = new SphereCollider(XMFLOAT3(0, 0, 0), 0.32f);
    AddCollider(collision);

    move_ = XMVectorSet(0.1f, 0, 0, 0);
}

//更新
void Bullet::Update()
{
    dy_ -= GRAVITY;

    float y = XMVectorGetY(move_);
    y += dy_;
    move_ = XMVectorSetY(move_, y);

    XMVECTOR vPos = XMLoadFloat3(&transform_.position_);
    vPos += move_;
    XMStoreFloat3(&transform_.position_, vPos);

    transform_.position_.z += 0.2f;

    life_--;
    if (life_ <= 0)
    {
        KillMe();
    }
}

//描画
void Bullet::Draw()
{
    Model::SetTransform(hModel_, transform_);
    Model::Draw(hModel_);
}

//開放
void Bullet::Release()
{
}

void Bullet::SetMove(const XMFLOAT3& move)
{
    move_ = XMLoadFloat3(&move);
}

