#include "Time.h"

std::chrono::steady_clock::time_point Time::prevTime_;
float Time::deltaTime_ = 0.0f;

void Time::Init()
{
    prevTime_ = std::chrono::steady_clock::now();
}

void Time::Update()
{
    auto now = std::chrono::steady_clock::now();
    std::chrono::duration<float> diff = now - prevTime_;
    prevTime_ = now;

    deltaTime_ = diff.count();

    // 安全対策（デバッガ停止など）
    if (deltaTime_ > 0.1f)
        deltaTime_ = 0.1f;
}

float Time::DeltaTime()
{
    return deltaTime_;
}
