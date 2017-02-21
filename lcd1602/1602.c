#include "std.h"
#include "1602.h"
void read_status(void);
static void delay_5ms(void)

{
	unsigned int temp = 1000;
	while(temp--);

}
void write_command(uchar command)
{
	RS = RW = 0;
	DB = command;
	CS = 1;
	CS = 0;
	delay_5ms();
}
void write_date(uchar date)
{
	RS = 1;
	RW = 0;
	DB = date;
	CS = 1;
	CS = 0;
	delay_5ms();
}
void read_status(void)
{
	DB = 0xff;
	RS = 0;
	RW = 1;
	CS = 1;
	CS = 0;
	delay_5ms();
	while(DB & 0x80);
}
void lcd_init(void)
{
	write_command(CLEAR);
	write_command(RESET);
	write_command(SET_57 | SET_LINE2 | SET_WIDE8);	//there is a error when set 5x10
	write_command(MODE_RIGHT | MODE_STILL);
	write_command(SWITCH_OFF | SWITCH_ON);
}
void set_address(uchar x, uchar y)
{
	uchar addr;
	if (y == 0)
		addr = 0x80 | x;
	else
		addr = 0xc0 | x;
	write_command(addr);
}
void display_char(uchar x, uchar y, uchar date)
{
	set_address(x, y);
	write_date(date);
}
void display_string(uchar* str)
{
	uchar count = 0;
	write_command(CLEAR);
	while(*str != 0){
		if (count == 0x10){
			if (*str == '\n')
				str++;
			set_address(0, 1);
		}
		if (count == 0x20)break;
		count++;
		write_date(*str);
		str++;
	}
}
