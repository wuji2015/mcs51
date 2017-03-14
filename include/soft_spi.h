#ifndef _SOFT_SPI_H
#define _SOFT_SPI_H

void soft_spi_init(void);
void soft_spi_send(uchar date);
uchar soft_spi_recive(void);
#define CLK P1_3
#define IN  P1_4
#define OUT P1_5
#endif
