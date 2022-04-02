#include <stdlib.h>
#include <dirent.h>
#include <stdio.h>

DIR *d;
struct dirent *dir;
d = opendir(".");

if (d)
{
    while ((dir = readdir(d)) != NULL)
    {
        char *child = dir->d_name;
        printf("%s\n", child);
    }

    closedir(d);
}

