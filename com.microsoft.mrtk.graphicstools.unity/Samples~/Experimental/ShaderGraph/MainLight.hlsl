#ifndef GTMAINLIGHT
#define GTMAINLIGHT

void MainLight_float(out float3 direction, out float3 color)
{
    direction = float3(0.5, 0.5, 0);
    color = float3(1, 1, 1);
#if LIGHTWEIGHT_LIGHTING_INCLUDED
    Light light = GetMainLight();
    direction = light.direction;
    color = _MainLightColor;
#endif
}

#endif
