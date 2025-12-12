#include "TitleScene.h"
#include "Ground.h"
#include "Tank.h"
#include "Enemy.h"
#include "UI.h"
#include "Engine/SceneManager.h"

//コンストラクタ
TitleScene::TitleScene(GameObject * parent)
	: GameObject(parent, "TitleScene")
{
}

//初期化
void TitleScene::Initialize()
{
	//Instantiate<Ground>(this);
	//Instantiate<Tank>(this);
	Instantiate<Enemy>(this);
	//Instantiate<UI>(this);
}

//更新
void TitleScene::Update()
{
}

//描画
void TitleScene::Draw()
{
}

//開放
void TitleScene::Release()
{
}
