#include "Drone.h"
#include "../Engine/Model.h"
#include "../Engine/Input.h"
#include "../Engine/SphereCollider.h"
#include "../Engine/Time.h"
#include "Ground.h"
//#include "DroneHead.h"
#include "../Engine/Camera.h"

Drone::Drone(GameObject* parent)
    :GameObject(parent, "Drone"), hModel_(-1), life_(180)
{
	transform_.position_ = { 0.0f, 50.0f, 0.0f };

	velocity = { 0.0f, 0.0f, 0.0f };
	acceleration = { 0.0f, 0.0f, 0.0f };
	attitude_angles = { 0.0f, 0.0f, 0.0f };
}

Drone::~Drone()
{
}

void Drone::Initialize()
{
    //モデルデータのロード
    hModel_ = Model::Load("Models/Drone.fbx");
    assert(hModel_ >= 0);

   // Instantiate<DroneHead>(this);
}

void Drone::Update()
{
    float dt = Time::DeltaTime();

    XMVECTOR vPos = XMLoadFloat3(&transform_.position_);
    XMVECTOR vMove = { 0,0,2.0f,0 };
    XMMATRIX mRotate = XMMatrixRotationY(XMConvertToRadians(transform_.rotate_.y));
    vMove = XMVector3TransformCoord(vMove, mRotate);
   
    if (Input::IsKey(DIK_RIGHT))
    {
        transform_.rotate_.y += 50.0f * dt;
    }
    if (Input::IsKey(DIK_LEFT))
    {
        transform_.rotate_.y -= 50.0f * dt;
    }
    if (Input::IsKey(DIK_UP))
    {
        vPos += vMove;
    }
    if (Input::IsKey(DIK_DOWN))
    {
        vPos -= vMove;
    }
	if (Input::IsKey(DIK_W))
	{
		vPos += XMVectorSet(0, 0.1f, 0, 0);
	}
    if (Input::IsKey(DIK_S))
    {
        vPos -= XMVectorSet(0, 0.1f, 0, 0);
    }
    
    XMStoreFloat3(&transform_.position_, vPos);
    

    Ground* pStage = (Ground*)FindObject("Ground");    //ステージオブジェクトを探す
    int hGroundModel = pStage->GetModelHandle();   //モデル番号を取得

    RayCastData data;
    data.start = transform_.position_;   //レイの発射位置
    data.start.y = transform_.position_.y + 5.0f;

    data.dir = XMFLOAT3(0, -1, 0);       //レイの方向
    Model::RayCast(hGroundModel, &data); //レイを発射
    

    //レイが当たったら
    if (data.hit)
    {
        //その分位置を下げる
        //transform_.position_.y = -
        //transform_.position_.y = -data.dist;
    }
    XMVECTOR vCam = { -10,2.0f,-1.0f,0 };
    vCam = XMVector3TransformCoord(vCam, mRotate);
    //XMFLOAT3 camPos;
    //XMStoreFloat3(&camPos, vPos + vCam);
    //Camera::SetPosition(camPos);

    XMFLOAT3 camPos;
    XMStoreFloat3(&camPos, vPos + vCam);
    Camera::SetPosition(camPos);

   /* XMFLOAT3 camTarget = transform_.position_;
    camTarget.y += 2.0f;
    Camera::SetTarget(camTarget);*/


    XMFLOAT3 camTarget;
    XMStoreFloat3(&camTarget, vPos + vMove + vCam);
    Camera::SetTarget(camTarget);
}

void Drone::Draw()
{
    Model::SetTransform(hModel_, transform_);
    Model::Draw(hModel_);
}

void Drone::Release()
{
}

void Drone::GetPosition()
{
}
