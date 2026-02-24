#pragma once
#include "../Engine/GameObject.h"
#include "../Engine/CsvReader.h"
#include <vector>
#include <string>

enum CsvData
{
	ID = 0,
	MODEL,
	POS_X,
	POS_Y,
	POS_Z,
	ROT_Y,
	SCALE_XYZ,
	MAX_NUM
};

struct StageData
{
	std::string Type;
	int modelHandle;
	XMFLOAT3 position{ 0,0,0 };
	XMFLOAT3 rotate{ 0,0,0 };
	XMFLOAT3 scale{ 1,1,1 };
};

class Stage : public GameObject
{
public:
	Stage(GameObject* parent);
	~Stage();
	void Initialize() override;
	void Update() override;
	void Draw() override;
	void Release() override;
	bool Load(const char* csvFile);
private:
	CsvReader csvReader_;
	std::vector<StageData> stageDataList_;
	StageData data;
};
