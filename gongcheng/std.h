#if defined __std__H
#else
#define __std__h
#include <mcs51/8052.h>
typedef unsigned int uint;
typedef unsigned char uchar;

typedef struct TCB* TCB_T;
struct TCB{
	        void *sp;
		        uint priority;
};

void switch_task(void);
#define OK (uint 0)

#define EOR (uint 1)
#endif
