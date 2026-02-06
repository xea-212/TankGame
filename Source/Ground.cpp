#include "Ground.h"
#include "../Engine/Model.h"
#include "../Engine/Input.h"
#include "../Engine/SphereCollider.h"

#include "Sky.h"

Ground::Ground(GameObject* parent)
    :GameObject(parent, "Ground"), hModel_(-1), life_(180)
{
	Instantiate<Sky>(parent);
}

Ground::~Ground()
{

}

void Ground::Initialize()
{
    //モデルデータのロード
    hModel_ = Model::Load("Models/Ground00.fbx");
    assert(hModel_ >= 0);
    
	transform_.scale_ = XMFLOAT3(2.0f, 1.0f, 2.0f);
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
