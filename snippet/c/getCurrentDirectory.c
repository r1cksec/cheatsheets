#include <unistd.h>
#include <stdio.h>

char workingDir[1024];
getcwd(workingDir, sizeof(workingDir));
//printf("Current working directory: %s\n", workingDir);

