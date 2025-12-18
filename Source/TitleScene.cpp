#include "TitleScene.h"
#include "Enemy.h"
#include "../Engine/Input.h"
#include "../Engine/SceneManager.h"

//コンストラクタ
TitleScene::TitleScene(GameObject * parent)
	: GameObject(parent, "TitleScene")
{
}

//初期化
void TitleScene::Initialize()
{
	Instantiate<Enemy>(this);
}

//更新
void TitleScene::Update()
{
	if (Input::IsKeyDown(DIK_SPACE))
	{
		GameObject* go = GameObject::FindObject("SceneManager");
		SceneManager* sm = dynamic_cast<SceneManager*>(go);
		sm->ChangeScene(SCENE_ID::SCENE_ID_PLAY);
	}
}

//描画
void TitleScene::Draw()
{
}

//開放
void TitleScene::Release()
{
}
