#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    char line [9024];
    strcpy(line, " 110 ");
    
    srand( time(NULL) );
    int x = 0, y = 0, z = 0, r;
    
    while (1)
    {
        x = rand() % 10;
    
        r = rand() % 5 + 10;
    
        for (int h = 0; h < r; h++)
        {
            for (int i = 0; i < x; i++)
            {
                y = rand() % 3;
                z = rand() % 4;
    
                for (int u = 0; u < z; u++)
                    strcat(line, "            ");
    
                if (y == z)
                    strcat(line, "1 0");
                else if ((y+1)==z)
                    strcat(line, "1 1");
                else if (y == 2)
                    line[z] = '0';
                else
                    line[z] = '1';
            }
        }
    
        usleep(400 * 1000);
        printf("%s\n", line);
    
        strcpy(line, " 0 1 01");
    }
}

