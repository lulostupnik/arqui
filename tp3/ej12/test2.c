#include <stdio.h>

void magia(char * string) {

    do {
        char al = *string;
        if (al <= 96 || al > 122) {
            //nada
        } else {
            // Convert character to lowercase
            char al_lower = al - 32;
            // Store the modified character
            *string = al_lower;
        }
        string++;
    } while (*string != 0);
}

int main() {
    //Reserve space on the stack
    char string[32] = "hola mundo\n";
   

    // Call magia function
    magia(string);

    // Call printf function
    printf("%s", string );
}
