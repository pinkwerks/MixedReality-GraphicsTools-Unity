#ifndef GTMAINLIGHT
#define GTMAINLIGHT

void MainLight_float(out float3 direction, out float3 color)
{
#ifdef SHADERGRAPH_PREVIEW
    direction = float3(.5, .5, 0);
    color = 1;
#else
    Light light = GetMainLight();
    direction = light.direction;
    color = light.color;
#endif
}

#endif
