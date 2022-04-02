#include <stdio.h>
#include <stdlib.h>

// for example to copy a file from A to B
// usage: script object target
char* source = "fileA.txt";
char* target = "fileB.txt";

char buf[128];
snprintf(buf, sizeof(buf), "mv %s %s", source, target);
system(buf);

