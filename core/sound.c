#include "std.h"
#include "serial.h"
/**********************************************************************
 *初始化spi口用于声音控制
 *********************************************************************/
/*__sfr __at (0xcd) SPSTAT;
__sfr __at (0xce) SPCTL;
__sfr __at (0xcf) SPDAT;
void sound_init(void)
{
	SPCTL=0xdc;
	return;
}
*/
extern void delay(unsigned int i);
__code uint m[]={0x8000,0x4000,0x2000,0x1000,0x0800,0x0400, \
	0x0200,0x0100,0x0080,0x0040,0x0020,0x0010,0x0008,0x0004,0x0002,0x0001};
void sound_play(uint data)
{
	uchar i;
	EA=0;
	P0_2=0;		//复位
	////delay(10);
	delay(300);
	P0_2=1;
	delay(20);
	for(i=0;i<16;i++){
		P0_0=0;
		delay(1);
		P0_1=m[i]&data;
	//	display("P0_1=",(uchar)P0_1);
		delay(1);
		P0_0=1;
		delay(1);
	}
	EA=1;
	return;
}
void sound_stop(void){
	sound_play(0xffff);
	return;
}
