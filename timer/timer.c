#include "std.h"
#include "timer.h"
uint timer_get(enum TIMER timer)
{
	uint tmp;
	switch (timer) {
	case TIMER0:
		tmp = TH0;
		tmp = tmp << 8;
		tmp += TL0;
		return tmp;
		break;
	case TIMER1:
		tmp = TH1;
		tmp = tmp << 8;
		tmp += TL1;
		return tmp;
		break;
	default	:
		break;
	}
	return 0;
}
void timer_clear(enum TIMER timer)
{
	switch (timer) {
	case TIMER0:
		TH0 = TL0 = 0;
		break;
	case TIMER1:
		TH1 = TL1 = 0;
		break;
	default	:
		break;
	}
	return;
}
