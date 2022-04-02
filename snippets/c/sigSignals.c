#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

// SIGABRT = Normal abort.
// SIGFPE = Division by 0.
// SIGILL = Illegal Hardware command.
// SIGINT = CTRL + c.
// SIGSEGV = Illegal memory addressing.
// SIGTERM = General end of Program.

void sigfunc(int sig)
{
    printf("\nYou pressed ctrl + c\n");
    exit(1);
}

int main()
{
    signal(SIGINT, sigfunc);
    
    while(1)
    {
        printf("Sleep 3 seconds\n");
        sleep(3);
    }
}
