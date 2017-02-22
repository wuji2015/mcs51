#include <std.h>
#include <adc.h>
void adc_init(enum ADC_PIN PIN, enum ADC_SPEED SPEED)	/*select pin1 0-7, and speed*/
{
	P1ASF = PIN;
	ADC_CONTR &= 0x9f;
	ADC_CONTR |= SPEED;
	ADC_CONTR |= ADC_POWER;
	return;
}
void adc_select(enum ADC_CHANNEL CHANNEL)
{
	ADC_CONTR &= 0xf8;
	ADC_CONTR |= CHANNEL;
	return;
}
uint adc_read(void)
{
	ADC_CONTR |= ADC_START;
	while(!(ADC_CONTR & ADC_FLAG));
	ADC_CONTR &= ~ADC_FLAG;
	return ADC_RES<<2 + ADC_RESL;
}
void adc_stop(void)
{
	ADC_CONTR &= 0xf7;
	return;
}
