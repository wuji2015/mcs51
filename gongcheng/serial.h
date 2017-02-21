#ifndef __SERIAL__H
#define __SERIAL__H
void uart_init(void);
void display(uchar *str, uint c);
uint sendstr(uchar *str);
#endif
