#include <stdio.h>
#include <string.h>

int main(int argc, char ** argv) {
    puts("In C main:\n");

    printf("Argc %d\n", argc);

    for (int i = 0; i < argc; i++) {
       printf("%s\n", argv[i]);
    }
    return 0;
}
