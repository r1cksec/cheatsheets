#include <stdio.h>
#include <stdlib.h>

int ch;
FILE *directs;
FILE *newdirects;

directs=fopen("file.txt", "r");                                                
newdirects=fopen("copy.txt", "w");

if (directs == NULL && directs == NULL)
{
    printf("Problem while opening file\n");
    return 0;
}

// creates a copy of the file
while ((ch=fgetc(directs)) != EOF)
{
    // replace every blank with two backslashes and a blank
    if ( ch == ' ' )
    {
        ch = '\\';
        fputc(ch, newdirects);

        ch = ' ';
        fputc(ch, newdirects);
        continue;
    }

    fputc(ch, newdirects);
}

fclose(directs);
fclose(newdirects);
 
 
