#include "Stage.h"
#include "../Engine/Model.h"
#include <iostream>


Stage::Stage(GameObject* parent)
	:GameObject(parent, "Stage")
{
}

Stage::~Stage()
{
}

void Stage::Initialize()
{
	Load("Models/CreateStage.csv");
}

void Stage::Update()
{

}

void Stage::Draw()
{
	std::cout << "Stage size = " << stageDataList_.size() << std::endl;

	for (auto& obj : stageDataList_)
	{
		Transform t;

		t.position_ = obj.position;
		t.rotate_ = obj.rotate;
		t.scale_ = obj.scale;

		Model::SetTransform(obj.modelHandle, t);
		Model::Draw(obj.modelHandle);
	}
}

void Stage::Release()
{
	//‰ð•ú
	for (auto& obj : stageDataList_)
	{
		Model::Release(obj.modelHandle);
	}
	stageDataList_.clear();
}

bool Stage::Load(const char* csvFile)
{
	std::cout << "height = " << csvReader_.GetHeight() << std::endl;

	if (!csvReader_.Load(csvFile))
	{
		return false;
	}

	int height = csvReader_.GetHeight();
	int width = csvReader_.GetWidth();

	

	for (int y = 0; y < height; y++)
	{
		if (width < MAX_NUM)
		{
			continue;
		}

		StageData data{};

		//if (csvReader_.GetString(y, ID) == "Stage")
		{
			data.modelHandle = Model::Load(csvReader_.GetString(y, MODEL).c_str());

			data.position = { csvReader_.GetFloat(y,POS_X),  csvReader_.GetFloat(y,POS_Y), csvReader_.GetFloat(y,POS_Z) };
			data.rotate.y = csvReader_.GetFloat(y, ROT_Y);
			data.scale = { csvReader_.GetFloat(y, SCALE_XYZ), csvReader_.GetFloat(y, SCALE_XYZ), csvReader_.GetFloat(y, SCALE_XYZ) };

			stageDataList_.push_back(data);
		}
	}
	
	return true;
}
