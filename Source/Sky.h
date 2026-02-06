#pragma once
#include "../Engine/GameObject.h"

class Sky : public GameObject
{
public:
	Sky(GameObject* parent);
	~Sky();
	void Initialize() override;
	void Update() override;
	void Draw() override;
	void Release() override;
private:
	int hModel_;
};