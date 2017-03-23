#include <std.h>
#include <1602.h>
#include <ad7705.h>
#include <stdio.h>
#include <float.h>
#include "interrupt.h"
#include "timer.h"
#include "cap_measure.h"
#include "string.h"

#define Q1 P0_0
#define Q2 P0_1
#define Q3 P0_2
#define Q4 P0_3
#define Q5 P0_4

uchar catch_pos;
static void delay(void)
{
	uint i, j;
	for(i=65535; i>0; i--)
		for(j=1; j>0; j--);
}
void to(uchar* buffer, uchar c)
{
	uchar tmp,i;
	tmp=c>>4;
	for(i=0;i<2;i++){
		if(tmp<0x0a){
			*buffer = tmp+0x30;
			buffer++;
		}else{
			*buffer = tmp+0x37;
			buffer++;
		}
		tmp=c&0x0f;
	}
}
void interrupt_init(void)
{
	IT0 = EX0 = 1; // for key
	EA = 1;
	return;
}
void key_init(void)
{
	P3M1 = 1;
	return;
}
uchar status = 0;
int main(void)
{
	uint adc1, adc2;
	uchar buffer[40] = "";
	uchar* buffer1;
	uint vol = 0;
	status = 3;

//	adc_init(PIN3, SPEED90);
//	adc_select(CHANNEL3);
	ad7705_init();
	lcd_init();
	cap_measure_init(CAP_MEASRUE_FLAG_ALWAY);
			cap_measure_start();
	//key_init();
	interrupt_init();
	while(1){
		delay();
		delay();
		memset(buffer, 0, 40);
		switch (status){
		case 0:
			Q1 = Q2 = Q5 = 0;
			adc1 = TM7705_ReadAdc(1);
			vol = ((unsigned long)adc1 * 5000) / 65535;
			sprintf(buffer, "voltage:%4dmv\n", vol);
			/*move buffer1 toend of buffer*/
			for (buffer1 = buffer; *buffer1 != 0; buffer1++);
/*			buffer1 = buffer;*/
/*			buffer1 += 14;*/
			adc2 = TM7705_ReadAdc(2);
			vol = ((unsigned long)adc2 * 5000) / 65535;
			sprintf(buffer1, "voltage:%4dmv", vol);
			display_string(buffer);
			break;
		case 1:
			Q1 = Q2 = 1;
			Q5 = 0;
			adc1 = TM7705_ReadAdc(1);
			vol = ((unsigned long)adc1 * 5000) / 65535;
			sprintf(buffer, "current:%4dmA\n", vol);
			/*move buffer1 toend of buffer*/
			for (buffer1 = buffer; *buffer1 != 0; buffer1++);
			adc2 = TM7705_ReadAdc(2);
			vol = ((unsigned long)adc2 * 5000) / 65535;
			sprintf(buffer1, "current:%4dmA", vol);
			display_string(buffer);
			break;
		case 2:
			Q1 = Q2 = Q5 = 1;
			adc1 = TM7705_ReadAdc(1);
			vol = ((unsigned long)65535 / adc1);
			sprintf(buffer, "resistance:%d", vol);
			display_string(buffer);
			break;
		case 3:
			Q1 = Q2 = Q5 = 0;
			sprintf(buffer, "capacitance:%UPF", cap_measure_calculate());
		//	sprintf(buffer, "catched_pulse =\n%x", catched_pulse);
			display_string(buffer);
			break;
		default:
			display_string("error!");
		}
	}		
	return 0;
}
INTERRUPT_EXT0
{
	int i, j;
	for(i = 65535; i > 0; i--)
		for(j = 2000; j > 0; j--);
	if (P3_2 == 0)
		status++;
	if (status >= 4)status = 0;
	return;
}
INTERRUPT_TIMER0
{
	static uint interrupt_count = 0;
	interrupt_count++;
	if (interrupt_count > CAP_MEASRUE_PERIOD){
		interrupt_count = 0;
		catched_pulse = timer_get(TIMER1);
		timer_clear(TIMER1);
		if (cap_measure_flag == CAP_MEASRUE_FLAG_ONLYONE)
			cap_measure_stop();
	}
	return;
}

