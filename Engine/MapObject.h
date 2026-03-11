#pragma once
#include <string>
#include "Vector3.h"

struct MapObject
{
	std::string modelName;
	int modelHandle;

	Vector3 position;
	Vector3 rotation;
	Vector3 scale = Vector3(1.0f, 1.0f, 1.0f);
};
