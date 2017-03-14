#ifndef _CAP_MEASRUE_H
#define _CAP_MEASRUE_H
#include "std.h"

void cap_measure_init(uchar flag);
uint cap_measure_calculate(void);
void cap_measure_start(void);
void cap_measure_stop(void);
extern uint catched_pulse;
extern uchar cap_measure_flag;

#define CAP_MEASRUE_FLAG_ONLYONE	0
#define CAP_MEASRUE_FLAG_ALWAY		1

#define CAP_MEASRUE_PERIOD 3600 //the number of timer full
#define R1 		470
#define R2		470
#endif
