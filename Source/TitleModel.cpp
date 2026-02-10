#include "TitleModel.h"
#include "../Engine/Model.h"
#include "../Engine/Input.h"
#include "../Engine/SphereCollider.h"
#include "../Engine/Camera.h"

TitleModel::TitleModel(GameObject* parent)
	:GameObject(parent, "TitleModel"), hModel_(-1)
{

}

TitleModel::~TitleModel()
{
}

void TitleModel::Initialize()
{
	//モデルデータのロード
	hModel_ = Model::Load("Models/TITLE00.fbx");
	assert(hModel_ >= 0);
	//初期位置を設定
	Model::SetAnimFrame(hModel_, 100, 160, 10.0f);

	transform_.position_ = { 0.0f, 10.0f, 0.0f };
}

void TitleModel::Update()
{
	XMVECTOR vPos = XMLoadFloat3(&transform_.position_);
	XMVECTOR vCam = { 0,-5.0f,-30.0f,0 };

	XMFLOAT3 camPos;
	XMStoreFloat3(&camPos, vPos + vCam);
	Camera::SetPosition(camPos);
}

void TitleModel::Draw()
{
	Model::SetTransform(hModel_, transform_);
	Model::Draw(hModel_);
}

void TitleModel::Release()
{
}

void TitleModel::GetPosition()
{
}
