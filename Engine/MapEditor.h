#pragma once
#include "GameObject.h"

#include <vector>
#include <string>
#include "MapObject.h"

struct ModelData
{
    std::string name;
    std::string path;
    int handle;
};

class MapEditor : public GameObject
{
public:

    void Initialize() override;
    void Update() override;
    void Draw() override;
    void DrawGUI();

private:

    std::vector<ModelData> modelList;
    std::vector<MapObject> objects;

    int selectedModel = -1;
    int selectedIndex = -1;

    bool isDragging = false;

    float gridSize = 1.0f;

private:

    void LoadModels();
    void PlaceObject();
    void SelectObject();

    void SaveCSV();
    void LoadCSV();
};