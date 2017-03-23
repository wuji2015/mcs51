#include "std.h"
#include "timer.h"
#include "interrupt.h"
#include "cap_measure.h"

uint catched_pulse;
uchar cap_measure_flag;
void cap_measure_init(uchar flag)
{
	cap_measure_flag = flag;
	TMOD |= TIMER1_MODE1_16bit | TIMER1_COUNT;
	TMOD |= TIMER0_MODE2_8bitauto;
	INTERRUPT_TIMER0_ENABLE;
	return;
}
void cap_measure_start(void)
{
	timer_clear(TIMER1);
	TIMER1_ENABLE;
	TIMER0_ENABLE;
	return;
}
void cap_measure_stop(void)
{
	TIMER1_DISABLE;
	TIMER0_DISABLE;
	return;
}

uint cap_measure_calculate(void)
{
	uint result, frequency;
	frequency = catched_pulse;
	if (frequency != 0){
		result = ((long)1430000000) / (R1 + 2*R2) / ((long)frequency);
		return result+450;
	}
	return 0;
}
