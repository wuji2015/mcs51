#ifndef _INTERUPT_H
#define _INTERUPT_H

#define INTERRUPT_ENABLE	 	(EA = 1)
#define INTERRUPT_DISABLE 		(EA = 0)
#define INTERRUPT_SERIAL_ENABLE 	(EA = 1)
#define INTERRUPT_SERIAL_DISABLE	(EA = 0)
#define INTERRUPT_TIMER0_ENABLE		(ET0 = 1)
#define INTERRUPT_TIMER0_DISABLE	(ET0 = 0)
#define INTERRUPT_TIMER1_ENABLE		(ET1 = 1)
#define INTERRUPT_TIMER1_DISABLE	(ET1 = 0)
#define INTERRUPT_EXT0_ENABLE		(EX0 = 1)
#define INTERRUPT_EXT0_DISABLE		(EX0 = 0)
#define INTERRUPT_EXT1_ENABLE		(EX1 = 1)
#define INTERRUPT_EXT1_DISABLE		(EX1 = 0)

#define INTERRUPT_EXT0 	 void 	INTERRUPT_EXT0(void)		__interrupt(0)
#define INTERRUPT_TIMER0 void 	INTERRUPT_TIMER0(void) 		__interrupt(1)
#define INTERRUPT_EXT1 	 void 	INTERRUPT_EXT1(void)		__interrupt(2)
#define INTERRUPT_TIMER1 void 	INTERRUPT_TIMER1(void) 		__interrupt(3)
#define INTERRUPT_SERIAL void 	INTERRUPT_SERIAL(void) 		__interrupt(4)

#endif
