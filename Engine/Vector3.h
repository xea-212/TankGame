#pragma once
#include <cmath>

class Vector3
{
public:

    float x;
    float y;
    float z;

public:

    Vector3()
    {
        x = y = z = 0;
    }

    Vector3(float x, float y, float z)
    {
        this->x = x;
        this->y = y;
        this->z = z;
    }

    // â¡éZ
    Vector3 operator+(const Vector3& v) const
    {
        return Vector3(x + v.x, y + v.y, z + v.z);
    }

    // å∏éZ
    Vector3 operator-(const Vector3& v) const
    {
        return Vector3(x - v.x, y - v.y, z - v.z);
    }

    // ÉXÉJÉâÅ[î{
    Vector3 operator*(float s) const
    {
        return Vector3(x * s, y * s, z * s);
    }

    // äÑÇËéZ
    Vector3 operator/(float s) const
    {
        return Vector3(x / s, y / s, z / s);
    }

    // +=
    void operator+=(const Vector3& v)
    {
        x += v.x;
        y += v.y;
        z += v.z;
    }

    // -=
    void operator-=(const Vector3& v)
    {
        x -= v.x;
        y -= v.y;
        z -= v.z;
    }

    // í∑Ç≥
    float Length() const
    {
        return sqrt(x * x + y * y + z * z);
    }

    // ê≥ãKâª
    void Normalize()
    {
        float len = Length();

        if (len == 0) return;

        x /= len;
        y /= len;
        z /= len;
    }

    // Dot
    float Dot(const Vector3& v) const
    {
        return x * v.x + y * v.y + z * v.z;
    }

    // Cross
    Vector3 Cross(const Vector3& v) const
    {
        return Vector3(
            y * v.z - z * v.y,
            z * v.x - x * v.z,
            x * v.y - y * v.x
        );
    }
};