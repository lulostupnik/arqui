#include <stdio.h>


int fibonacci(int n);
extern int fiboasm(int n);

int main(){
    int ans = fiboasm(4);
    printf("%d", ans);

    for(int i=0; i<30;i++){
        printf("Fibonacci(%d): %d\tFiboasm(%d): %d\n", i, fibonacci(i),i, fiboasm(i));
    }
    return 0;
}

int fibonacci(int n){
    if(n<0){
        return -1;
    }
    if(n==0 || n==1){
        return 1;
    }
    return fibonacci(n-2)+fibonacci(n-1);
}