
#include <stdio.h>



int main(){

    int cpu, node;
    int status = getcpu(&cpu, &node);

    printf("Status: %d\nCPU: %d\nNODE:%d\n", status, cpu, node);

}