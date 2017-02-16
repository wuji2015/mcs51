#ifndef __SERIAL__H
#define __SERIAL__H
void display(uchar *str,uchar c);
void uart_init(void);
uint sendstr(uchar *str);
uchar receive_data(uchar *buf,uchar count);
void putc(uchar c);
extern volatile __xdata  uchar *serial_r;
extern volatile __xdata  uchar *serial_w;
extern volatile __xdata uchar serial_buf[191];
extern volatile __xdata  uchar *serial_end;
#endif
