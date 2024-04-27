#include <stdio.h>

void magia(char *ebp) {
    char *esp = ebp;

    // Reserve space on the stack
    char temp[16];

    do {
        char al = *ebp;
        if (al <= 96) {
            // Do nothing
        } else if (al > 122) {
            // Do nothing
        } else {
            // Convert character to lowercase
            char al_lower = al - 32;
            // Store the modified character
            *ebp = al_lower;
        }
        ebp++;
    } while (*ebp != 0);
}

int main() {
    //Reserve space on the stack
    char esp[32];

    // Initialize variables on the stack
    *((int*)(esp + 19)) = 1819043176;
    *((int*)(esp + 23)) = 1870078063;
    *((int*)(esp + 27)) = 174353522;
    *((char*)(esp + 31)) = 0;

    // Call magia function
    magia(esp + 19);

    // Call printf function
    printf("%s\n", esp + 19);
}
