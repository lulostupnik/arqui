#include <stdio.h>
#include <sys/types.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h> 
#include "libc.h"
#include <errno.h>


// agregar todos los checkeos y que setee al erno en un libc. Agregar todos los defines ! Checkear con flags de no usar la libstd


int main() {
    int ans;
    ans = open2("/home/lulo/arqui/tp3/ej9/test_txt.txt", O_CREAT | O_RDWR, S_IRWXU);
  
    printf("fd %d\n", ans);
    printf("errno fd %d\n\n", errno);

    char *str = "test2223";
    int len = strlen(str);
    int bytes_written =  write2(ans, (void *)str, len);
    printf("Bytes %d\n", bytes_written);
    printf("errno write %d\n\n", errno);


    int close_ans = close2(ans);
    printf("close %d\n", close_ans);
}
