#include "Enemy.h"
#include "Engine/Model.h"
#include "Engine/Input.h"
#include "Engine/SphereCollider.h"

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
