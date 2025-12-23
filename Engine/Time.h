#pragma once
#include <chrono>

class Time
{
public:
    static void Init();
    static void Update();

    static float DeltaTime();

private:
    static std::chrono::steady_clock::time_point prevTime_;
    static float deltaTime_;
};
