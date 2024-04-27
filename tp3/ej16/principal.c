
#include <stdio.h>
#include <string.h>

extern int checkLong(char * str, unsigned int cant);

int main(){

    extern char msg[];
    extern unsigned int len;
    int ans = checkLong(msg, len);
    printf("Ans: %d\n\n", ans);
    printf("(strlen(%d)\tlen(%u))\n", strlen(msg), len);
    
    return 0;
}