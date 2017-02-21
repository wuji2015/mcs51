#include "libc.h"
#include "serial.h"
#define Trig P1_0
#define Echo P3_2
__sfr __at (0x92) P1M0;
__sfr __at (0x91) P1M1;
void ultrasonic_init(void)
{
	P1M0 |= 0x01;
	Trig = 0;
	TMOD |= 0x09;
	TR0 = 1;
	TH0 = 0;
	TL0 = 0;
	//ET0 = 1;

	IT0 = 1;
	EX0 = 1;
}
uint flag = 1;
uint limt_juli = 0;
void delay(int i)
{
	int j;
	for(; i>0; i--){
		for(j=0; j<100; j++);
	}
	return;
}
void key_init(void)
{
	EX1 = 1;
	IT1 = 1;
}
int main(void)
{
	uint time, juli;
	uart_init();
	ultrasonic_init();
	key_init();
	EA = 1;
	while(1){
		Trig = 1;
		flag = 1;
		delay(1000);
		Trig = 0;
		while(flag);
		time = TH0;
		time = time<<8;
		time |= TL0;
		TL0 = TH0 = 0;
		juli = time/50;
		display("juli=", juli);
		display("limt_juli=", limt_juli);
		if(juli >= limt_juli)
			sendstr("waring:out of rangs\t\t\t!!!\n\n\n\r");
	}
	return 0;
}
void ext0_isr(void) __interrupt (0) __using (1)
{
//	display("TL0=", TL0);
//	display("TH1=", TH0);
	flag = 0;
}
void ext1_isr(void) __interrupt (2) __using (1)
{
	limt_juli += 10;
}
