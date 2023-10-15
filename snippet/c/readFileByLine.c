#include <stdio.h>

FILE *source;
source = fopen("file.txt", "r");
char fileTransfer [100];

while (fgets(fileTransfer, 100, source))
{
    printf("%s", fileTransfer);
}

