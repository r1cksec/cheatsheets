#include <stdio.h>
#include <stdlib.h>
#include <time.h>

srand( time(NULL) );
int x;

x = rand() % 100; 
printf("%d\n", x);

