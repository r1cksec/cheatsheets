#include <stdio.h>

char *filepath = "file.txt";
char *data = "content";

FILE *fp = fopen(filepath, "ab");

if (fp != NULL)
{
    fputs(data, fp);
    fclose(fp);
}

