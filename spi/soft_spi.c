#include "std.h"
#include "soft_spi.h"
/*delay*/
void soft_delay()
{
	int i, j;
	for(i=65535; i>0; i--);
	return;
}
/*set CLK status*/
void soft_clk(uchar s)
{
	CLK = s;
	return;
}
/*set spi date out pin status*/
void soft_out(uchar d)
{
	OUT = d;
	return;
}
/*set spi date in pin status*/
int soft_in(void)
{
	return IN;
}
/*init soft spi pin*/
void soft_spi_init(void)
{
	CLK = 0;
	soft_out(0);
	IN = 1;
	return;
}

/*soft spi send date*/
void soft_spi_send(uchar date)
{
	uchar bit, tmp, i;
	for(i=0; i < 8; i++){
		tmp = date>>(7-i);
		bit = tmp%2;
		soft_out(bit);
		soft_delay();
		soft_clk(1);
		soft_delay();
		soft_clk(0);
	}
	return;
}
/*soft spi recive date*/
uchar soft_spi_recive(void)
{
	uchar bit, tmp = 0, i;
	for(i=0; i < 8; i++)
	{
		soft_delay();
		soft_clk(1);
		soft_delay();
		soft_clk(0);
		bit = soft_in();
		tmp = tmp<<1;
		tmp |= bit;
	}
	return;
}
	
