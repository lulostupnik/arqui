#include <string.h>
int main(){
    char c_test[] = "--------";
    c_test[3] = '\n';
    c_test[4]= 9;
    
    int c =strlen(c_test);

    char * test2 = "hola";
    //test2[2] = 1;

    return 0;
}