#include "std.h"
__sfr __at(0xa1) BUS_SPEED;
__xdata char test[32768];
char TI1 = 0;
void putc(uchar c)
{
	SBUF=c;
	while(!TI&&!TI1);
	TI1 = TI = 0;
}
/***********************************************************************************
 *向串口发送字符床
 *@param str 字符串指针
 *@return 发送状态
 **********************************************************************************/
uint sendstr(uchar *str)
{
	uchar tmp;
	TI1 = 0;
	do{
			SBUF=*str;
			str+=1;
			while(!TI&&!TI1);
			TI1=TI=0;
	}while(*str != 0);
	//	SBUF='\r';
	//	while(!TI1);
	//	TI1=0;
	//	SBUF='\n';
	//	while(!TI1);
	//	TI1=0;
	return 0;
}
void display(uchar *str, uint c)
{
	uchar tmp,i;
	EA = 0;
	sendstr(str);
	putc(0x30);
	putc('x');
	for(i=0;i<4;i++){
	tmp = c>>(12 - i*4);
	tmp &= 0x0f;
	if(tmp<0x0a){
		putc(tmp+0x30);
	}else{
		putc(tmp+0x37);
	}
	}
	sendstr("\n\r");
	EA = 1;
}
/******************************************************************************
 *串口初始化函数,配置波特率2400,未开启串口中断,不允许接收
 *
 *串口频率:9.6KHZ
 * ****************************************************************************/
void uart_init(void)
{
//	AUXR| = 0xc0;	//定时器1,0频率提高12倍
	TMOD |= 0x20;       //T1,T0 方式2
//	PCON |= 0x80;       //SMOD = 1
	SCON = 0x50;       //方式1 8个数据位
	TH1 = 0xfd;
	TL1 = 0xfd;
//	TH1 = 0xf4;
//	TL1 = 0xf4;
	TR1 = 1;               //启动定时器1
	ET1 = 0;
	ES = 0;              //开串口中断
}
static void delay(int i)
{
	int j;
	for(; i>0; i--){
		for(j=0; j<100; j++);
	}
	return;
}
