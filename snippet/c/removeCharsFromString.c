#include <stdio.h>
#include <string.h>

char string[] = "string";
int len = strlen(string);
string[len-2] = '\0';
printf("%s\n",string);

