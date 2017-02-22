#include <std.h>
#include <1602.h>
#include <adc.h>
static void delay(void)
{
	uint i, j;
	for(i=65535; i>0; i--)
		for(j=10; j>0; j--);
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
int main(void)
{
	uint res;
	uchar buffer[10] = "";
	adc_init(PIN3, SPEED90);
	adc_select(CHANNEL3);
	lcd_init();
	while(1){
		delay();
		res = adc_read();
		to(buffer, res>>8);
		to((uchar*)buffer+2, (uchar)res);
		display_string(buffer);
	}		
	return 0;
}
