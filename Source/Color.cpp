#include "Color.h"
#include <algorithm>
#include <cmath>

namespace Color
{
    RGBA::RGBA()
		:r(1), g(1), b(1), a(1)
    {
    }

    RGBA::RGBA(float red, float green, float blue, float alpha)
		:r(red), g(green), b(blue), a(alpha)
    {
        Clamp();
    }

    RGBA::RGBA(int red, int green, int blue, int alpha)
    {
		r = red / 255.0f;
		g = green / 255.0f;
		b = blue / 255.0f;
		a = alpha / 255.0f;
		Clamp();
    }

    DirectX::XMFLOAT4 Color::RGBA::ToFloat4() const
    {
        return DirectX::XMFLOAT4(r, g, b, a);
    }

    DirectX::XMVECTOR Color::RGBA::ToVector() const
    {
        return DirectX::XMVectorSet(r, g, b, a);
    }

    RGBA Color::RGBA::operator+(const RGBA& other) const
    {
        return RGBA(r + other.r, g + other.g, b + other.b, a);
    }

    RGBA Color::RGBA::operator-(const RGBA& other) const
    {
        return RGBA(r - other.r, g - other.g, b - other.b, a);
    }

    RGBA Color::RGBA::operator*(float value) const
    {
        return RGBA(r * value, g * value, b* value, a);
    }

    void Color::RGBA::Clamp()
    {
		r = std::clamp(r, 0.0f, 1.0f);
		g = std::clamp(g, 0.0f, 1.0f);
		b = std::clamp(b, 0.0f, 1.0f);
		a = std::clamp(a, 0.0f, 1.0f);
    }

    RGBA Color::FromHSV(float h, float s, float v)
    {
		float c = v * s;
		float x = c * (1 - std::fabs(fmod(h / 60.0f, 2) - 1));
		float m = v - c;

		float rr = 0, gg = 0, bb = 0;

        if (0 <= h && h < 60) {
			rr = c; gg = x; bb = 0;
		}
		else if (60 <= h && h < 120) {
			rr = x; gg = c; bb = 0;
		}
		else if (120 <= h && h < 180) {
			rr = 0; gg = c; bb = x;
		}
		else if (180 <= h && h < 240) {
			rr = 0; gg = x; bb = c;
		}
		else if (240 <= h && h < 300) {
			rr = x; gg = 0; bb = c;
		}
        else {
            rr = c; gg = 0; bb = x;
        }

        return RGBA(rr + m, gg + m, bb + m, 1.0f);
    }

	const RGBA White = RGBA(1.0f, 1.0f, 1.0f, 1.0f);
	const RGBA Black = RGBA(0.0f, 0.0f, 0.0f, 1.0f);
	const RGBA Red = RGBA(1.0f, 0.0f, 0.0f, 1.0f);
	const RGBA Green = RGBA(0.0f, 1.0f, 0.0f, 1.0f);
	const RGBA Blue = RGBA(0.0f, 0.0f, 1.0f, 1.0f);
	const RGBA Yellow = RGBA(1.0f, 1.0f, 0.0f, 1.0f);
	const RGBA Gray = RGBA(0.5f, 0.5f, 0.5f, 1.0f);
}
