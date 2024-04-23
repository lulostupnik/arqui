#ifndef LIBC_H
#define LIBC_H


int open2(const char *pathname, int flags, mode_t mode);
int write2(int fd, void *buffer, int size);
int close2(int fd);

#endif