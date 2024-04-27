#include <stdio.h>
#include <string.h>


//Me esta imprimiendo dos caracetres de mas por alguna razon.....

extern int imprimir();


void fillScreen(){
    extern char * screen_ptr;
    for(int i =0; i<6;i++){
        for(int j=0; j<80;j++){
            screen_ptr[i*80+j] = '-';
        }
    }
}

void printScreen(){
    extern char * screen_ptr;
    for(int i =0; i<6;i++){
        for(int j=0; j<80;j++){
            printf("%c", screen_ptr[i*80+j]);
        }
        printf("\n");
    }
}

int main(){
    char * encabezado = "Este es el comienzo";
    int tam_enc = strlen(encabezado);
    char * pie = "Este es el fin";
    int tam_pie = strlen(pie);

    fillScreen();

    int ans = imprimir(encabezado, tam_enc, pie, tam_pie);
    printf("Ans %d\n", ans);
    printScreen();

    return 0;
}