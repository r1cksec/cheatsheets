#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

char pw1 [100];
char pw2 [100];

printf("Enter password:\n");
system("stty -echo");
fgets(pw1,100,stdin);
system("stty echo");
printf("Enter password again\n");
system("stty -echo");
fgets(pw2,100,stdin);
system("stty echo");

for (int i = 0; i < strlen(pw1) - 1; i++)
{
    if (pw1[i] == pw2[i])
        i++;
    else
    {
        printf("Passwords not corresponding\n");
        return 0;
    }
}

printf("Passwords corresponding\n");

