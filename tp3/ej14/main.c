#include <stdio.h>


char get_pad(){
    static int i=-1;
    i++;
    return i;
}

void encrypt(char *plain, char *cipher) {
    if (!(*plain)) {
        *cipher = 0;
        return;
    }
    char pad = get_pad();                   // creo que esto devuelve 0, despues 1, despues 2, ...
    *cipher = *plain + pad;
    encrypt(plain + 1, cipher + 1);
}

void test() {
    char *msg = "Ark";
    char cipher[] = "-------";
    cipher[4] = '0';
    encrypt(msg, cipher);
    printf("%s", cipher);
}


int main(){
    test();
}
