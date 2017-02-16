#include "core.h"
#include "semaphore.h"
#include "serial.h"
#include <stdarg.h>
uchar  *cur_send;	//字符串当前地址
uchar TI2;
/**********************************************************************
 *串口2发送字符串
 *********************************************************************/
/*uint sendstr2(uchar *str,...)
//{
//	get_semaphore(1);
//	cur_send=str+1;
//	S2BUF=*str;
//	return;
//}
static void delay(unsigned int i)
{
	uint j=1000;
		for (;i!=0;i--)
			for(j=1000;j>0;j--);
		;
}
uint sendstr2(uchar *str,...)
{
	while(*str!=0){
		S2BUF=*str;
		//str++;
		delay(1);
	}
}
*/
uint sendstr2(uchar *str,...)
{
	uchar tmp;
	va_list arg;
	va_start(arg,str);
	TI2=0;
	do{
		if(*str=='%'){
			str++;
			switch((uint)*str){
				case 'x':
					tmp= va_arg(arg,char);
					S2BUF=tmp;
					str++;
					while(!TI2&&!(S2CON&0x02));
					S2CON&=0xfd;
					TI2=0;
					break;
				default:
					break;
			}
		}else{
			S2BUF=*str;
			str++;
			while(!TI2&&!(S2CON&0x02));
			TI2=0;
			S2CON&=0xfd;
		}
	}while(*str!=NULL);
	va_end(arg);
	//	S2BUF='\r';
	//	while(!TI2);
	//	TI2=0;
	//	S2BUF='\n';
	//	while(!TI2);
	//	TI2=0;
	return OK;
}
__xdata uchar wifi_buf[30];	//wifi指令
__xdata uchar wifi_data[100];		//wifi数据
__xdata uchar *wifi_buf_r,*wifi_buf_w,*wifi_buf_end;
__xdata uchar *wifi_data_r,*wifi_data_w,*wifi_data_end;
void receive_data2(uchar *buf,uchar count)
{
	uchar i;
	EA=0;
	for(i=0;i<(count-3);i++){
		if (*wifi_data_r!='\r'){
			if(wifi_data_r==wifi_data_end)wifi_data_r=wifi_data;
			*buf=*wifi_data_r;
			buf++;
			wifi_data_r++;
		}else{
			wifi_data_r++;
			wifi_data_r++;
			break;
		}
	}
	*buf='\r';
	buf++;
	*buf='\n';
	buf++;
	*buf='\0';
	EA=1;
	return;
}

/**********************************************************************
 *wifi初始化函数;wifi使用串口2通信
 *波特率115200
 *********************************************************************/
extern void delay(unsigned int i);
uint wifi_init(void)
{
	S2CON=0x50;	//模式1;允许接收
	IE2=0x01;	//开启中断
	BRT=0xfd;
	AUXR|=0x14;	//独立波特率发生器,1T模式,不加倍
//	sendstr2("AT+CWJAP=\"TP-LINK_9551F2\",\"317317317\"\r\n");
	wifi_buf_r=wifi_buf_w=wifi_buf;
	wifi_buf_end=wifi_buf+29;
	wifi_data_r=wifi_data_w=wifi_data;
	wifi_data_end=wifi_data+99;
	semaphore_init(14);
	get_semaphore(14);
	return 0;
}
