#define WINVER 0x0500
#include <stdio.h>
#include <windows.h>
 
// list of all key codes: https://msdn.microsoft.com/de-de/library/windows/desktop/dd375731(v=vs.85).aspx
INPUT ip;

// Set up a generic keyboard event.
ip.type = INPUT_KEYBOARD;
ip.ki.wScan = 0; // hardware scan code for key
ip.ki.time = 0;
ip.ki.dwExtraInfo = 0;

// Press the "Windows" key
ip.ki.wVk = 0x5B; // virtual-key code for the windows key
ip.ki.dwFlags = 0; // 0 for key press
SendInput(1, &ip, sizeof(INPUT));

// Release the "Windows" key
ip.ki.dwFlags = KEYEVENTF_KEYUP; // KEYEVENTF_KEYUP for key release
SendInput(1, &ip, sizeof(INPUT));

Sleep(100);

// Press the "D" key
ip.ki.wVk = 0x44; // virtual-key code for the windows key
ip.ki.dwFlags = 0; // 0 for key press
SendInput(1, &ip, sizeof(INPUT));

// Release the "D" key
ip.ki.dwFlags = KEYEVENTF_KEYUP; // KEYEVENTF_KEYUP for key release
SendInput(1, &ip, sizeof(INPUT));

getchar();

