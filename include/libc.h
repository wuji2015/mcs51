#ifndef __lib__H
#define __lib__H
#include "std.h"
extern void *memset(void *buffer,uint c,uint count);
extern void *memcpy(void *dest,void *src,uint count);
extern int memcmp(void *buf1,void *buf2,uint count);
extern char *strcpy(char* dest,char *src);
#endif
