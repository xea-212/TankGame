#include "Tank.h"
#include "Engine/Model.h"
#include "Engine/Input.h"
#include "Engine/SphereCollider.h"
#include "Ground.h"
#include "TankHead.h"
#include "Engine/Camera.h"

Tank::Tank(GameObject* parent)
    :GameObject(parent, "Tank"), hModel_(-1), life_(180)
{
}

Tank::~Tank()
{
}

void Tank::Initialize()
{
    //モデルデータのロード
    hModel_ = Model::Load("Models/TankBody.fbx");
    assert(hModel_ >= 0);

    Instantiate<TankHead>(this);
}

void Tank::Update()
{
 
    XMVECTOR vPos = XMLoadFloat3(&transform_.position_);
    XMVECTOR vMove = { 0,0,0.1f,0 };
    XMMATRIX mRotate = XMMatrixRotationY(XMConvertToRadians(transform_.rotate_.y));
    vMove = XMVector3TransformCoord(vMove, mRotate);
   
    if (Input::IsKey(DIK_RIGHT))
    {
        transform_.rotate_.y += 1.0f;
    }
    if (Input::IsKey(DIK_LEFT))
    {
        transform_.rotate_.y -= 1.0f;
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
        transform_.position_.y += 10.0f;
    }
    XMStoreFloat3(&transform_.position_, vPos);
    

    Ground* pStage = (Ground*)FindObject("Ground");    //ステージオブジェクトを探す
    int hGroundModel = pStage->GetModelHandle();   //モデル番号を取得

    RayCastData data;
    data.start = transform_.position_;   //レイの発射位置
    data.start.y = 0;

    data.dir = XMFLOAT3(0, -1, 0);       //レイの方向
    Model::RayCast(hGroundModel, &data); //レイを発射
    

    //レイが当たったら
    if (data.hit)
    {
        //その分位置を下げる
        //transform_.position_.y = -data.dist;
    }

    XMVECTOR vCam = { 0,2.0f,-1.0f,0 };
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

void Tank::Draw()
{
    Model::SetTransform(hModel_, transform_);
    Model::Draw(hModel_);
}

void Tank::Release()
{
}

void Tank::GetPosition()
{
}
