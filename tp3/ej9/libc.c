#include "libasm.h"
#include <errno.h>
#include <sys/types.h>
 
static int set_errno(int ans){   //funcion privada
    if(ans < 0){
        errno = -ans;
        return -1;
    }
    errno = 0;
    return ans;
}

int open2(const char *pathname, int flags, mode_t mode){
    int ans = sys_open2(pathname, flags, mode);
    return set_errno(ans);
}
int write2(int fd, void *buffer, int size){
    int ans = sys_write2(fd, buffer, size);
    return set_errno(ans);
}
int close2(int fd){
    int ans = sys_close2(fd);
    return set_errno(ans);
}
