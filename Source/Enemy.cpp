#include "Enemy.h"
#include "../Engine/Model.h"
#include "../Engine/Input.h"
#include "../Engine/SphereCollider.h"
#include "../Engine/Camera.h"

Enemy::Enemy(GameObject* parent)
	:GameObject(parent, "Enemy"), hModel_(-1)
{
	
}

Enemy::~Enemy()
{
}

void Enemy::Initialize()
{
	//モデルデータのロード
	hModel_ = Model::Load("Models/TITLE00.fbx");
	assert(hModel_ >= 0);
	//初期位置を設定
	Model::SetAnimFrame(hModel_, 100, 160, 10.0f);
}

void Enemy::Update()
{
	XMVECTOR vPos = XMLoadFloat3(&transform_.position_);
	XMVECTOR vCam = { 0,5.0f,-100.0f,0 };

	XMFLOAT3 camPos;
	XMStoreFloat3(&camPos, vPos + vCam);
	Camera::SetPosition(camPos);
}

void Enemy::Draw()
{
	Model::SetTransform(hModel_, transform_);
	Model::Draw(hModel_);
}

void Enemy::Release()
{
}

void Enemy::GetPosition()
{
}
