#include "std.h"
#include "libc.h"
#include <stdarg.h>
#include "semaphore.h"
uchar TI1;
void putc(uchar c)
{
	SBUF=c;
	while(!TI&&!TI1);
	TI1=TI=0;
}
/***********************************************************************************
 *向串口发送字符床
 *@param str 字符串指针
 *@return 发送状态
 **********************************************************************************/
uint sendstr(uchar *str)
{
	uchar tmp;
	TI1=0;
	do{
			SBUF=*str;
			str+=1;
			while(!TI&&!TI1);
			TI1=TI=0;
	}while(*str!=NULL);
	//	SBUF='\r';
	//	while(!TI1);
	//	TI1=0;
	//	SBUF='\n';
	//	while(!TI1);
	//	TI1=0;
	return OK;
}
void display(uchar *str,uchar c)
{
	uchar tmp,i;
	sendstr(str);
	putc(0x30);
	putc('x');
	tmp=c>>4;
	for(i=0;i<2;i++){
		if(tmp<0x0a){
			putc(tmp+0x30);
		}else{
			putc(tmp+0x37);
		}
		tmp=c&0x0f;
	}
	sendstr("\n\r");
}
volatile __xdata uchar serial_buf[100];		//接收缓冲区
volatile __xdata uchar *serial_r=serial_buf;	//环形缓冲区读指针
volatile __xdata uchar *serial_w=serial_buf;	//写指针
volatile __xdata uchar *serial_end=serial_buf+99;	//缓冲区底部
/**********************************************************************
 *从环形缓冲区读取一定数目数据
 *********************************************************************/
uchar receive_data(uchar *buf,uchar count)
{
	uchar i;
	uchar *start;
	EA=0;
	start=serial_r;
	for(i=0;i<(count-3)&&(*serial_r!='\r');i++){
		*buf=*serial_r;
		buf++;
		serial_r++;
	}
	*buf='\r';
	*buf++;
	*buf='\n';
	*buf++;
	*buf=0;
	EA=1;
	return (uchar)(serial_r-start);
}
/******************************************************************************
 *串口初始化函数,配置波特率2400,未开启串口中断,不允许接收
 *
 *串口频率:230.4KHZ
 * ****************************************************************************/
void uart_init(void)
{
	AUXR|=0xc0;	//定时器1,0频率提高12倍
	TMOD = 0x22;       //T1,T0 方式2
	PCON |= 0x80;       //SMOD = 1
	SCON = 0x50;       //方式1 8个数据位
	TH1=0xfd;
	TL1=0xfd;
//	TH1=0xf4;
//	TL1=0xf4;
	TR1 = 1;               //启动定时器1
	ET1=0;
	ES=1;              //开串口中断
	memset(serial_buf,0,191);
	semaphore_init(15);
	get_semaphore(15);
	serial_r=serial_buf;
	serial_w=serial_buf;
	serial_end=serial_buf+99;
}
