#include <stdio.h>
#include <stdlib.h>

#ifdef _WIN32
    char *homedir = getenv("HOMEPATH");
#endif

#ifdef __APPLE__
    char *homedir = getenv("HOME");
#endif
printf("%s\n", homedir);

