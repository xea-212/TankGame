#include "PlayScene.h"
#include "Ground.h"
#include "Drone.h"
#include "Stage.h"

PlayScene::PlayScene(GameObject* parent)
	:GameObject(parent, "PlayScene")
{
}

PlayScene::~PlayScene()
{
}

void PlayScene::Initialize()
{
	Instantiate<Ground>(this);
	Instantiate<Drone>(this);
	Instantiate<Stage>(this);
}

void PlayScene::Update()
{
}

void PlayScene::Draw()
{
}

void PlayScene::Release()
{
}
