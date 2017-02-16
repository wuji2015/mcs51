#include "std.h"
#ifndef NULL
#define NULL (void *)0
#endif
void *memset(void *buffer,uchar c,uint count)
{
	register uint i;
	uchar* s=(uchar*)buffer;
	for (i=0;i<count;i++){
		*s=c;
		s++;
	}
	return buffer;
}
void *memcpy(void *dest,void *src,uint count)
{
	register uint i;
	uchar* d,*s;
	d=(uchar*)dest;
	s=(uchar*)src;
	for (i=0;i<count;i++) d[i]=s[i];
	return dest;
}
int memcmp(void *buf1,void *buf2,uint count)
{
	register uint i;
	uchar*b1,*b2;
	b1=buf1;b2=buf2;
	for (i=0;i<count;i++)
{
		if (b1[i]==b2[i])
{
			continue;
		}else{
			return (int)(b1[i]-b2[i]);
		}
	}
	return 0;
}
char *strcpy(char* dest,char *src)
{
	register uint i;
	for (i=0;src[i]!='\0';i++) dest[i]=src[i];
	return dest;
}
uchar *strcat(uchar *str,uchar d)
{
	for(;*str!=0;str++);
	*str=d;
	str++;
	*str=0;
	return str;
}



/*****************************************************
 * 以下为内存堆分配和回收函数
 * MEMORY数组为可分配内存
 ****************************************************/
//__xdata char MEMORY[512];
//typedef struct mem_info* mem_info_t;
//struct mem_info{
//	mem_info_t pre;
//	mem_info_t next;
//	uint len;
//	void *addr;
//};
//void _init_memory(void)
//{	//建立内存管理数据结构
//	mem_info_t first=(mem_info_t)&MEMORY;
//	first->pre = NULL;
//	first->next=(mem_info_t)((uchar*)&MEMORY[1023]-sizeof(struct mem_info)+1);
//	first->len=0;
//	first->next->next=NULL;
//	first->next->pre=first;
//	first->next->len=0;
//}
////void *malloc(uint count)
//{
//
