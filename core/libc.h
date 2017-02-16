#ifndef __LIBC__H
#define __LIBC__H
void *memset(void *buffer, uchar c,uint count);
void *memcpy(void *dest,void *src,uint count);
int memcmp(void *buf1,void *buf2,uint count);
char *strcpy(char* dest,char *src);
uchar *strcat(uchar *str,uchar d);
#endif
