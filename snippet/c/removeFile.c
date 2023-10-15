#include <stdio.h>

int rmSucc = remove("file.txt");

if (rmSucc != 0)
    printf("Something went wrong!\n");
else
    printf("Done\n");

