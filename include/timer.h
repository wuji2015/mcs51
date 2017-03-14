#ifndef _TIMER_H
#define _TIMER_H
#include "std.h"

enum TIMER{
	TIMER0,
	TIMER1
};
/*
 *for TMOD
 */
#define TIMER1_GATE  (1<<7)
#define TIMER1_COUNT (1<<6)

#define TIMER1_MODE0_13bit	(0)
#define TIMER1_MODE1_16bit	(1<<4)
#define TIMER1_MODE2_8bitauto	(1<<5)
#define TIMER1_MODE2_NO		(0b11<<4)

#define TIMER0_GATE  (1<<3)
#define TIMER0_COUNT (1<<2)

#define TIMER0_MODE0_13bit	(0)
#define TIMER0_MODE1_16bit	(1)
#define TIMER0_MODE2_8bitauto	(1<<1)
#define TIMER0_MODE2_NO		(0b11)

/*
 * for TCON
 */
#define TIMER0_ENABLE	(TR0 = 1)
#define TIMER0_DISABLE	(TR0 = 0)
#define TIMER1_ENABLE	(TR1 = 1)
#define TIMER1_DISABLE	(TR1 = 0)

/*
 * for AUXR
 */
#define T0x12	(1<<7)
#define T1x12	(1<<6)
#define UART_M0x6	(1<<5)

uint timer_get(enum TIMER timer);
void timer_clear(enum TIMER timer);

#endif
