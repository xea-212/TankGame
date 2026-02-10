#include "Light.h"

namespace Light
{
    Light::Data::Data()
    {
		type = Type::DIRECTIONAL;

		ambientColor = Color::Gray * 0.2f;
        diffuseColor = Color::White;
		specularColor = Color::White;

		intensity = 1.0f;

		direction = { 0.0f, -1.0f, 0.0f };
		position = { 0.0f, 5.0f, 0.0f };

        range = 10.0f;
    }

    void Light::Data::SetDirectional(const DirectX::XMFLOAT3& dir)
    {
		type = Type::DIRECTIONAL;
		direction = dir;
    }

    void Light::Data::SetPoint(const DirectX::XMFLOAT3& pos, float range_)
    {
		type = Type::POINT;
		position = pos;
		range = range_;
    }

    DirectX::XMFLOAT4 Light::Data::GetAmbient() const
    {
		return ambientColor.ToFloat4();
    }

    DirectX::XMFLOAT4 Light::Data::GetDiffuse() const
    {
		return diffuseColor.ToFloat4();
    }

    DirectX::XMFLOAT4 Light::Data::GetSpecular() const
    {
		return specularColor.ToFloat4();
    }

    Data Light::Data::SunLight()
    {
        Data light;
		light.SetDirectional({ -0.3f, -1.0f, -0.2f });

		light.ambientColor = Color::Gray * 0.3f;
        light.diffuseColor = Color::White;
		light.specularColor = Color::White;

		light.intensity = 1.2f;
		return light;
    }

    Data Light::Data::LampLight()
    {
        Data light;
		light.SetPoint({ 0.0f, 3.0f, 0.0f }, 10.0f);

		light.ambientColor = Color::Yellow * 0.2f;
		light.diffuseColor = Color::Yellow;
        light.specularColor = Color::White;

        light.intensity = 2.0f;
		return light;
    }
}
