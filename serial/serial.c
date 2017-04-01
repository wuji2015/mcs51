#include "std.h"
typedef uint (*hook)(void);
hook serial_recive_hook;	//接收回调
hook serial_send_hook;		//发送回调
void serial_init(enum BAUD baud, enum SERIAL_INTERRUPT flag)
{
	TMOD &= ~(0x02);
	TMOD |= 0x02;
	switch (baud){
	case BAUD_115200:
		TH0 = 
	
	TR1 = 1;
	ES = flag;
	return;
}
void serial_read(void){
