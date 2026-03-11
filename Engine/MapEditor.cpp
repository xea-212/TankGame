#include "MapEditor.h"

#include <filesystem>
#include <fstream>
#include <sstream>

#include "Model.h"
#include "Input.h"
#include "Vector3.h"
#include "../ImGui/ImGui.h"

void MapEditor::Initialize()
{
	LoadModels();
	LoadCSV();
}

void MapEditor::Update()
{
	PlaceObject();
	SelectObject();
}

void MapEditor::Draw()
{
    for (auto& obj : objects)
    {
        Model::SetTransform(
            obj.modelHandle,
			transform_
        );

        Model::Draw(obj.modelHandle);
    }
}

void MapEditor::DrawGUI()
{
    ImGui::Begin("Model Browser");

    for (auto& model : modelList)
    {
        if (ImGui::Selectable(model.name.c_str()))
        {
            selectedModel = model.handle;
        }
    }

    ImGui::End();


    ImGui::Begin("Object");

    if (selectedIndex >= 0)
    {
        MapObject& obj = objects[selectedIndex];

        ImGui::DragFloat3("Position", &obj.position.x, 0.1f);
        ImGui::DragFloat3("Rotation", &obj.rotation.x, 1.0f);
        ImGui::DragFloat3("Scale", &obj.scale.x, 0.1f);

        if (ImGui::Button("Delete"))
        {
            objects.erase(objects.begin() + selectedIndex);
            selectedIndex = -1;
        }
    }

    ImGui::End();
}

void MapEditor::LoadModels()
{
    std::string folder = "Models/";

    for (auto& file : std::filesystem::directory_iterator(folder))
    {
        if (file.path().extension() == ".fbx")
        {
            ModelData data;

            data.name = file.path().stem().string();
            data.path = file.path().string();

            data.handle = Model::Load(data.path);

            modelList.push_back(data);
        }
    }
}

void MapEditor::PlaceObject()
{
    if (selectedModel == -1) return;

    if (Input::IsMouseButtonDown(0))
    {
        isDragging = true;
    }

    if (isDragging)
    {
        Vector3 pos = Input::GetMousePositionV3();

        pos.x = round(pos.x / gridSize) * gridSize;
        pos.z = round(pos.z / gridSize) * gridSize;

        transform_.position_ = XMFLOAT3(pos.x, pos.y, pos.z);

        Model::SetTransform(selectedModel, transform_);
        Model::Draw(selectedModel);
    }

    if (Input::IsMouseButtonDown(0))
    {
        MapObject obj;

        for (auto& m : modelList)
        {
            if (m.handle == selectedModel)
            {
                obj.modelName = m.name;
                obj.modelHandle = m.handle;
                break;
            }
        }

        obj.position = Input::GetMousePositionV3();

        objects.push_back(obj);

        SaveCSV();

        isDragging = false;
    }
}

void MapEditor::SelectObject()
{
    if (!Input::IsMouseButtonDown(1)) return;

    float minDist = 9999;

    for (int i = 0; i < objects.size(); i++)
    {
        float dist =
            (objects[i].position - Input::GetMousePositionV3()).Length();

        if (dist < minDist)
        {
            minDist = dist;
            selectedIndex = i;
        }
    }

    if (selectedIndex >= 0)
    {
        if (Input::IsKeyDown(DIK_DELETE))
        {
            objects.erase(objects.begin() + selectedIndex);
            selectedIndex = -1;

            SaveCSV();
        }
    }
}

void MapEditor::SaveCSV()
{
    std::ofstream file("Data/map.csv");

    for (auto& obj : objects)
    {
        file
            << obj.modelName << ","
            << obj.position.x << ","
            << obj.position.y << ","
            << obj.position.z << ","
            << obj.rotation.x << ","
            << obj.rotation.y << ","
            << obj.rotation.z << ","
            << obj.scale.x << ","
            << obj.scale.y << ","
            << obj.scale.z << "\n";
    }
}

void MapEditor::LoadCSV()
{
    objects.clear();

    std::ifstream file("Data/map.csv");

    std::string line;

    while (getline(file, line))
    {
        std::stringstream ss(line);

        MapObject obj;

        getline(ss, obj.modelName, ',');

        ss >> obj.position.x;
        ss.ignore();
        ss >> obj.position.y;
        ss.ignore();
        ss >> obj.position.z;
        ss.ignore();

        ss >> obj.rotation.x;
        ss.ignore();
        ss >> obj.rotation.y;
        ss.ignore();
        ss >> obj.rotation.z;
        ss.ignore();

        ss >> obj.scale.x;
        ss.ignore();
        ss >> obj.scale.y;
        ss.ignore();
        ss >> obj.scale.z;

        for (auto& m : modelList)
        {
            if (m.name == obj.modelName)
            {
                obj.modelHandle = m.handle;
                break;
            }
        }

        objects.push_back(obj);
    }
}