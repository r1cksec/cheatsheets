#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *s1 = "string1";
char *s2 = "string2";

// +1 for null termination
char *result = malloc(strlen(s1)+strlen(s2)+1);
strcpy(result, s1);
strcat(result, s2);

printf("%s\n", result);

