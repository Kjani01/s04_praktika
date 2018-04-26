#include <stdio.h>
#include <stdlib.h>

int main (int argc, char *argv[]) 
{
    
    int arg = strtol(argv[1], NULL, 10);
    // string to long(string, endptr, base)
    
    printf("%d\n", arg);
    
    return 0;
    
}