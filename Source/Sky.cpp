#include "Sky.h"
#include "../Engine/Model.h"

Sky::Sky(GameObject* parent)
	:GameObject(parent, "Sky"), hModel_(-1)
{

}

Sky::~Sky()
{
}

void Sky::Initialize()
{
	hModel_ = Model::Load("Models/Sky.fbx");
	assert(hModel_ >= 0);
}

void Sky::Update()
{
}

void Sky::Draw()
{
	Model::SetTransform(hModel_, transform_);
	Model::Draw(hModel_);
}

void Sky::Release()
{
}
