#include "std.h"
#include <stdarg.h>
uchar TI1;
void putc(uchar c)
{
	SBUF=c;
	while(!TI);
	TI1=TI=0;
}
/***********************************************************************************
 *向串口发送字符床
 *@param str 字符串指针
 *@return 发送状态
 **********************************************************************************/
uint sendstr(uchar *str,...)
{
	uchar tmp;
	va_list arg;
	EA=0;
	va_start(arg,str);
	TI1=0;
	do{
		if(*str=='%'){
			str++;
			switch((uint)*str){
				case 'x':
					tmp= va_arg(arg,char);
					SBUF=tmp;
					str++;
					while(!TI&&!TI1);
					TI1=TI=0;
					break;
				default:
					break;
			}
		}else{
			SBUF=*str;
			str+=1;
			while(!TI&&!TI1);
			TI1=TI=0;
		}
	}while(*str != 0);
	va_end(arg);
	EA=1;
	//	SBUF='\r';
	//	while(!TI1);
	//	TI1=0;
	//	SBUF='\n';
	//	while(!TI1);
	//	TI1=0;
	return 0;
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

