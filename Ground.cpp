#include "Ground.h"
#include "Engine/Model.h"
#include "Engine/Input.h"
#include "Engine/SphereCollider.h"

Ground::Ground(GameObject* parent)
    :GameObject(parent, "Ground"), hModel_(-1), life_(180)
{
}

Ground::~Ground()
{

}

void Ground::Initialize()
{
    //モデルデータのロード
    hModel_ = Model::Load("Models/Stage00.fbx");
    assert(hModel_ >= 0);

    SphereCollider* collision = new SphereCollider(XMFLOAT3(0, 0, 0), 0.3f);
    AddCollider(collision);
}

void Ground::Update()
{
}

void Ground::Draw()
{
    Model::SetTransform(hModel_, transform_);
    Model::Draw(hModel_);
}

void Ground::Release()
{
}
