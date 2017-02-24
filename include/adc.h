#ifndef _ADC_H
#define _ADC_H

//asf pin1
enum ADC_PIN{
	PIN0 = 0x01,
	PIN1 = 0x02,
	PIN2 = 0x04,
	PIN3 = 0x08,
	PIN4 = 0x10,
	PIN5 = 0x20,
	PIN6 = 0x40,
	PIN7 = 0x80,
};

//speed
enum ADC_SPEED{
	SPEED90  = 0x60,
	SPEED180 = 0x40,
	SPEED360 = 0x20,
	SPEED540 = 0x00,
};

#define ADC_POWER 0x80
#define ADC_FLAG  0x10
#define ADC_START 0x08

//channel
enum ADC_CHANNEL{
	CHANNEL0 = 0x00,
	CHANNEL1 = 0x01,
	CHANNEL2 = 0x02,
	CHANNEL3 = 0x03,
	CHANNEL4 = 0x04,
	CHANNEL5 = 0x05,
	CHANNEL6 = 0x06,
	CHANNEL7 = 0x07,
	CHANNEL8 = 0x08,
};

void adc_init(enum ADC_PIN PIN, enum ADC_SPEED SPEED)	;	/*select pin1 0-7, and speed*/
void adc_select(enum ADC_CHANNEL CHANNEL)       	;
uint adc_read(void)                 			;
uchar* adc_tovol(uint res)				;
void adc_stop(void)                 			;
#endif
