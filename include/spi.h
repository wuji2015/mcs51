#ifndef _SPI_H
#define _SPI_H
enum spi_ssig{
	UNIGNORE,
	IGNORE = (1<<7)
};
enum spi_enable{
	DISABLE,
	ENABLE = (1<<6)
};
enum spi_dord{
	MSB,
	LSB = (1<<5)
};
enum spi_mstr{
	CLAVE,
	MASTER = (1<<4)
};
enum spi_cpol{
	LOW,
	HIGHT = (1<<3)
};
enum spi_cpha{
	DOWN,
	RISE = (1<<2)
};
enum spi_speed{
	CPU_CLK_4,
	CPU_CLK_16,
	CPU_CLK_64,
	CPU_CLK_128
};
struct spi_cfg{
	enum spi_ssig ssig:1;
	enum spi_enable enable:1;
	enum spi_dord dord:1;
	enum spi_mstr mstr:1;
	enum spi_cpol cpol:1;
	enum spi_cpha cpha:1;
	enum spi_speed speed:2;
};


void spi_init(void)			;	
void spi_setspeed(enum spi_speed SPEED)	;	
uchar spi_read(void)			;	
void spi_write(uchar date)		;	
	
#endif
