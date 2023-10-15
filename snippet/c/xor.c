#include <stdio.h>

// the programm has to be compiled as c++ code
char clearText[18]="message0123456789";
char key [18]="password123456789";
char cryptText [1];

for (int x = 0; x < 10; x++)
{
    cryptText[x] = clearText[x]^key[x];
    printf("%c\n", cryptText[x]);
}

