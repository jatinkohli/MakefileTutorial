#include <unistd.h>

// Quick and dirty example program that requires the existence of the 
// 'helloworld' executable binary to run.
int main(int argc, char const *argv[])
{
    char* args[] = {"./helloworld", NULL};
    execvp("./helloworld", args); // Runs the helloworld binary
    return 0;
}
