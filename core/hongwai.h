#ifndef __HONGWAI__H
#define __HONGWAI__H
void pca_timer1(void);
void copy_wave(uint c);
void fashe(uint c);
void delay1(uint t);
uint luzhi(void);
extern unsigned int time;
extern uchar copywave_tmp[500];
extern uchar *copywave_p,copywave_bit_count,copy_waveing;
extern uint copywave_count;
#define input P2_7
#endif
