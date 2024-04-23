//#include <sys/types.h>
#ifndef LIBASM_H
#define LIBASM_H


int sys_open2(const char *pathname, int flags, unsigned int mode);
int sys_write2(int fd, void *buffer, int size);
int sys_close2(int fd);

#endif