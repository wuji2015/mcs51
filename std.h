#ifndef _STD_H
#define _STD_H
#include <mcs51/8052.h>
typedef unsigned int uint;
typedef unsigned char uchar;

__sfr __at (0x8e) AUXR;
__sfr __at (0xa2) AUXR1;
__sfr __at (0x9a) S2CON;
__sfr __at (0x9b) S2BUF;
__sfr __at (0xaf) IE2;
__sfr __at (0x9c) BRT;
__sfr __at (0x8f) WAKE_CLKO;
//pca
__sfr __at (0xd8) CCON;
__sfr __at (0xd9) CMOD;
__sfr __at (0xda) CCAPM0;
__sfr __at (0xdb) CCAPM1;
__sfr __at (0xe9) CL;
__sfr __at (0xf9) CH;
__sfr __at (0xea) CCAP0L;
__sfr __at (0xfa) CCAP0H;
__sfr __at (0xeb) CCAP1L;
__sfr __at (0xfb) CCAP1H;
__sfr __at (0xf2) PCA_PWM0;
__sfr __at (0xf3) PCA_PWM1;

__sbit __at (0xd8) CCF0;
__sbit __at (0xd9) CCF1;
__sbit __at (0xde) CR;
__sbit __at (0xdf) CF;

#endif
