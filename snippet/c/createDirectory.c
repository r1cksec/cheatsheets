#ifdef _WIN32
#include <windows.h>
#endif

#ifdef __APPLE__
#include <sys/stat.h>
#endif

#ifdef _WIN32
CreateDirectory("C:\\directory", NULL);
#endif
#ifdef __APPLE__
mkdir("directory", 0700);
#endif

