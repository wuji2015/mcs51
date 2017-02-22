#ifndef _SPI_H
#define _SPI_H
enum spi_dord{
	MSB,
	LSB = (1<<5)
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
	
#endif
