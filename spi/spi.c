#include <std.h>
#include <spi.h>
void spi_init(void)
{
	SPCTL |= IGNORE | ENABLE | MSB | MASTER | RISE;
	return;
}
void spi_setspeed(enum spi_speed SPEED)
{
	SPCTL &= ~(0x03);
	SPCTL |= SPEED;
	return;
}
uchar spi_read(void)
{
	while(SPSTAT & (0x80));
	return SPDAT;
}
void spi_write(uchar date)
{
	SPDAT = date;
	while(SPSTAT & (0x80));
	SPSTAT |= (0x80);
	return;
}
