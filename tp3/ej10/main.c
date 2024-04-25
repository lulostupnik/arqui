#include <stdio.h>
#define _GNU_SOURCE             /* See feature_test_macros(7) */
#include <sched.h>


extern int get_cpu(unsigned int *, unsigned int *);

int main(){

    int cpu, node;
    int status = get_cpu(&cpu, &node);

    printf("Status: %d\nCPU: %d\nNODE:%d\n", status, cpu, node);


    //C library
    puts("---------------------");
    status = getcpu(&cpu, &node);
    printf("Status: %d\nCPU: %d\nNODE:%d\n", status, cpu, node);
}