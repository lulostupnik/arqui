#include <stdio.h>


int probando(int nLoops){
    int violeta = 'V', rojo = 'R', rta = 0;
    while(nLoops--){
        static int azul = 7;                                // AZUL se inicializa en 1 la primera vez. Despues se mantiene el valor. Solo se puede acceder desde el while
        azul++;
        printf("azul: %d, n %d\n", azul, nLoops);
        if(rojo + azul==violeta){
            rta = violeta;
            break;
        }
    }

    if(rta != violeta){
        printf("No se ha mezclado\n");
    }else{
        printf("Violeta");
    }
    return 1;
}


int main(){
    probando(3);
    puts("---------------");
    probando(4);
}
