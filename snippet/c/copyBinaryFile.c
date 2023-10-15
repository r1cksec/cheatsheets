#include <stdio.h>

FILE *exein, *exeout;
exein = fopen("fileName.jpg", "rb");
exeout = fopen("fileName-copy.jpg", "wb");

if (exein == NULL || exeout == NULL)
{
    perror("Can not open file.");
    return 1;
}

size_t n, m;
unsigned char buff[8192];

do {
    n = fread(buff, 1, sizeof buff, exein);

    if (n)
        m = fwrite(buff, 1, n, exeout);
    else
        m = 0;
} while ((n > 0) && (n == m));

fclose(exeout);
fclose(exein);

