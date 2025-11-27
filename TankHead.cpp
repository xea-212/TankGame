#include "TankHead.h"
#include "Engine/Model.h"
#include "Engine/Input.h"
#include "Bullet.h"


//コンストラクタ
TankHead::TankHead(GameObject* parent)
	:GameObject(parent, "TankHead"), hModel_(-1)
{
}

//デストラクタ
TankHead::~TankHead()
{
}

//初期化
void TankHead::Initialize()
{
	//モデルデータのロード
	hModel_ = Model::Load("Models\\TankHead.fbx");
	assert(hModel_ >= 0);

}

//更新
void TankHead::Update()
{
	//if (Input::IsKeyDown(DIK_SPACE))
	//{
	//	XMFLOAT3 tipPos = Model::GetBonePosition(hModel_, "Tip");
	//	XMFLOAT3 rootPos = Model::GetBonePosition(hModel_, "Root");


	//	Bullet* pBullet = Instantiate<Bullet>(GetParent()->GetParent());
	//	pBullet->SetPosition(tipPos);
	//	//pBullet->SetMove(tipPos - rootPos)
	//}

	if (Input::IsKeyDown(DIK_SPACE))
	{
		XMFLOAT3 tipPos = Model::GetBonePosition(hModel_, "Tip");
		XMFLOAT3 rootPos = Model::GetBonePosition(hModel_, "Root");

		// ベクトル計算
		XMVECTOR tip = XMLoadFloat3(&tipPos);
		XMVECTOR root = XMLoadFloat3(&rootPos);
		XMVECTOR dir = XMVector3Normalize(XMVectorSubtract(tip, root));
		XMVECTOR velocity = XMVectorScale(dir, 0.5f); // 速度調整（任意）

		// ベクトルからXMFLOAT3へ変換
		XMFLOAT3 moveVec;
		XMStoreFloat3(&moveVec, velocity);

		// Bullet生成と設定
		Bullet* pBullet = Instantiate<Bullet>(GetParent()->GetParent());
		pBullet->SetPosition(tipPos);
		pBullet->SetMove(moveVec);  // ここで移動方向・速度を設定
	}
}

//描画
void TankHead::Draw()
{
	Model::SetTransform(hModel_, transform_);
	Model::Draw(hModel_);
}

//開放
void TankHead::Release()
{
}