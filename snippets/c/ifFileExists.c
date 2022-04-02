#include <stdio.h>
#include <sys/stat.h>

int file_exist (char *filename)
{
    struct stat buffer;
    return (stat (filename, &buffer) == 0);
}

if (file_exist ("file.txt"))
    printf ("File exists.\n");
else
    printf("File does not exist.\n");

