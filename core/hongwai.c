#include "std.h"
#include "strorage.h"
#include "serial.h"
#define TIME (0x044c)
extern void *memset(void *buffer, unsigned int c,uint count);
#define input P2_7
uint time;
void pca_timer(void)
{
	time = 2*TIME;
	CCON = 0;
	CMOD = 0x08;		//不分频
	CCAPM0 = 0x49;	//16位高速输出,允许中断
	CL = 0x00;
	CH = 0x00;
	CCAP0L = TIME;
	CCAP0H = TIME>>8;
	CR = 0;
}
void delay1(uint t)		//延时,单位微秒
{
	__asm
		push acc
		mov a, r6
		push a
		mov a,dpl
		mov r6,dph
	10000$:
		dec a		;0.2us 	\
		nop		;0.1us	|
		nop		;0.1us	|
		nop		;0.1us	|> 1us
		nop		;0.1us	|
		nop		;0.1us	|
		jnz 10000$	;0.3us 	/
		mov a,r6	;0.1us
		jz 10003$	;0.3us
	10001$:
		mov a,#0xfe ;0.2us
		nop
		nop
		nop
		nop
		nop
	10002$:
		dec a		;0.2us 	\
		nop		;0.1us	|
		nop		;0.1us	|
		nop		;0.1us	|> 1us
		nop		;0.1us	|
		nop		;0.1us	|
		jnz 10002$	;0.3us 	/
		djnz r6, 10001$  ;0.4us 	
	10003$:
		pop a
		mov r6, a
		pop acc
	__endasm;
	return;
}

extern void delay(unsigned int i);
uint copywave_count;		//计数
uchar *copywave_p,copywave_bit_count,copy_waveing;
volatile uchar copywave_tmp[400]; 		//存放采样数据
void fashe(uint c)
{
	uchar *addr;
	uint i;	
	addr = (uchar *)(c*400);
	copywave_count = 0;
	copywave_bit_count = 0;
	copywave_p = copywave_tmp;
	copy_waveing = 0;
	memset( copywave_p, 0, 400);
	if(read_sequ(addr,copywave_p,400))P2_2 = 0; 
	for (i = 0; i < 400; i++){
		display("data=", *(copywave_p+i));
	}
	display("choose=", c);
	CR = 1;
	EA = 1;
	while(CR);
	return;
}
void copy_wave(uint c)
{
	uint __xdata i;
	uchar *addr,try;	
	copywave_count = 0;
	copywave_bit_count = 0;
	copywave_p = copywave_tmp;
	copy_waveing = 1;
	memset( copywave_p, 0, 400);
	while(input);
	CR = 1;
	EA = 1;
	while(CR);
	for(i = 0; i < 400;){
		if (write_byte(c*400+i,*copywave_p))P2_2 = 0;
		copywave_p++;
		i++;
		/*
		addr = (uchar *)((c*7+i) << 6);
		if (write_page(addr,copywave_p+(i << 6))){
			try = 3;
			while(try>0){
				delay(100);
				if(!write_page(addr,copywave_p+(i << 6)))break;
				try--;
			}
			if(try == 0){
			//	P2_2 = 0;
				return;
			}
		}
		delay(10);
		i++;
		*/
	}
	return;
}
uint luzhi(void)		//count 录制红外的时间,每100us采样一次
{
	EA = 0;
	copywave_count = 0;
	copywave_p = copywave_tmp;
	memset( copywave_p, 0, 400);
	while(input)delay(10);
	while(copywave_count < 400){
		delay1(1600);
		*copywave_p = input;
		copywave_p++;
		copywave_count++;
	}
	EA = 1;
	return 0;
}
