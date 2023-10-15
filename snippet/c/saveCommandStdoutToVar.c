#include <stdio.h>
#include <stdlib.h>

FILE *fp;
char var[40];

fp = popen("whoami", "r");                 

while (fgets(var, sizeof(var), fp) != NULL)
    printf("%s", var);

pclose(fp);

