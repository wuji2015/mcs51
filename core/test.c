#include"core.h"
#include "serial.h"
#include "semaphore.h"
#include "wifi.h"
#include "sound.h"
#include "hongwai.h"
#ifdef debug
extern void ceshi(void);
void te(void);
extern  TCB_T __idata CUR_TCB_T;
extern TCB_T __idata HIGHT_TCB_T;
#define debug_SP
#endif
extern void app(void);
void delay(unsigned int i)
{
	uint j=100;
	for (;i!=0;i--){
		for(j=1000;j>0;j--);
	}
}

#include "interrupt.c"

void idle(void)
{
	while(1){
		P2_3=!P2_3;
		delay(500);
	}
	return;
}
#ifdef debug_SP
void te(void)
{
	uchar *S=(uchar*)SP-2;
	uint i;
	for(i=0;i<20;i++){
		display("SP=",(uchar)S);
		display("@SP=",*S);
		display("i=",(uchar)i);
		S--;
	}
//	while(1);
}
#endif
void maichong(void)		//红外脉冲发生定时器输出初始化,发射定时器初始化
{
	TH0=0x72;
	TL0=0x72;
	WAKE_CLKO=0x01;
	AUXR|=0xc0;	//定时器1,0频率提高12倍
	TMOD = 0x22;       //T1,T0 方式2
	//ET0=1;
	return;
}
void sound_init(void)		//声音初始化
{
	P0_2=0;
	delay(300);
	P0_2=1;
	return;
}
void key_init( void)		//按键初始化
{
	EX1=1;IT1=1;
	EX0=1;IT0=1;IP=0x02;
	return;
}
/**********************************************************************
 *外设初始化函数
 *********************************************************************/
void hw_init(void)
{
	interrupt_count=0;
	maichong();
	sound_init();
	pca_timer();
	uart_init();
	wifi_init();
	key_init();
	return;
}
__xdata uint b=0x1234;
int main(void)
{
	hw_init();
	os_init();
	task_create(idle,7);	
	app();
	//sound_play(9);
	os_start();
	while(1){
		sendstr("switch_fail\r\n");
	}
}

