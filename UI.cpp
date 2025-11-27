#include "UI.h"
#include "Engine/Image.h"
#include "Engine/Input.h"

UI::UI(GameObject* parent)
	:GameObject(parent, "UI"), hPict_(-1)
{
	
}

UI::~UI()
{
}

void UI::Initialize()
{
	hPict_ = Image::Load("GUI.png");
	assert(hPict_ >= 0);

	Image::SetRect(hPict_, 50, 100, 64, 128);
}

void UI::Update()
{
}

void UI::Draw()
{
	Transform t;
	t.position_.x = 0.5f;

	Image::SetTransform(hPict_, t);
	Image::Draw(hPict_);
}

void UI::Release()
{
}

void UI::GetPosition()
{
}
