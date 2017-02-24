#include <std.h>
#include <1602.h>
#include <adc.h>
#include <stdio.h>
#include <float.h>
static void delay(void)
{
	uint i, j;
	for(i=65535; i>0; i--)
		for(j=1; j>0; j--);
}
void to(uchar* buffer, uchar c)
{
	uchar tmp,i;
	tmp=c>>4;
	for(i=0;i<2;i++){
		if(tmp<0x0a){
			*buffer = tmp+0x30;
			buffer++;
		}else{
			*buffer = tmp+0x37;
			buffer++;
		}
		tmp=c&0x0f;
	}
}
union float_long
  {
    float f;
    unsigned long l;
  };

/* multiply two floats */
float __fsmul (float a1, float a2) {
  volatile union float_long fl1, fl2;
  volatile unsigned long result;
  volatile int exp;
  char sign;

  fl1.f = a1;
  fl2.f = a2;

  if (!fl1.l || !fl2.l)
    return (0);

  /* compute sign and exponent */
  sign = SIGN (fl1.l) ^ SIGN (fl2.l);
  exp = EXP (fl1.l) - EXCESS;
  exp += EXP (fl2.l);

  fl1.l = MANT (fl1.l);
  fl2.l = MANT (fl2.l);

  /* the multiply is done as one 16x16 multiply and two 16x8 multiples */
  result = (fl1.l >> 8) * (fl2.l >> 8);
  result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
  result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;

  /* round, phase 1 */
  result += 0x40;

  if (result & SIGNBIT)
    {
      /* round, phase 2 */
      result += 0x40;
      result >>= 8;
    }
  else
    {
      result >>= 7;
      exp--;
    }

  result &= ~HIDDEN;

  /* pack up and go home */
  if (exp >= 0x100)
    fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
  else if (exp < 0)
    fl1.l = 0;
  else
    fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
  return (fl1.f);
}

float __fsdiv (float a1, float a2)
{
  volatile union float_long fl1, fl2;
  volatile long result;
  volatile unsigned long mask;
  volatile long mant1, mant2;
  volatile int exp;
  char sign;

  fl1.f = a1;
  fl2.f = a2;

  /* subtract exponents */
  exp = EXP (fl1.l) ;
  exp -= EXP (fl2.l);
  exp += EXCESS;

  /* compute sign */
  sign = SIGN (fl1.l) ^ SIGN (fl2.l);

  /* divide by zero??? */
  if (!fl2.l)
    {/* return NaN or -NaN */
      fl2.l = 0x7FC00000;
      return (fl2.f);
    }

  /* numerator zero??? */
  if (!fl1.l)
    return (0);

  /* now get mantissas */
  mant1 = MANT (fl1.l);
  mant2 = MANT (fl2.l);

  /* this assures we have 25 bits of precision in the end */
  if (mant1 < mant2)
    {
      mant1 <<= 1;
      exp--;
    }

  /* now we perform repeated subtraction of fl2.l from fl1.l */
  mask = 0x1000000;
  result = 0;
  while (mask)
    {
      if (mant1 >= mant2)
	{
	  result |= mask;
	  mant1 -= mant2;
	}
      mant1 <<= 1;
      mask >>= 1;
    }

  /* round */
  result += 1;

  /* normalize down */
  exp++;
  result >>= 1;

  result &= ~HIDDEN;

  /* pack up and go home */
  if (exp >= 0x100)
    fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
  else if (exp < 0)
    fl1.l = 0;
  else
    fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
  return (fl1.f);
}
void interrupt_init(void)
{
	IT0 = EX0 = 1;
	EA = 1;
	return;
}
void key_init(void)
{
	P3M1 = 1;
	return;
}
uchar status = 0;
int main(void)
{
	uint res;
	uchar buffer[33] = "", *vol;
	adc_init(PIN3, SPEED90);
	adc_select(CHANNEL3);
	lcd_init();
	//key_init();
	interrupt_init();
	while(1){
		delay();
		delay();
		switch (status){
		case 0:
			res = adc_read();
			vol = adc_tovol(res);

			sprintf(buffer, "voltage:%sV", vol);
			display_string(buffer);
			break;
		case 1:
			res = adc_read();
			vol = adc_tovol(res);

			sprintf(buffer, "curent:%sA", vol);
			display_string(buffer);
			break;
		case 2:
			sprintf(buffer, "resistance:");
			display_string(buffer);
			break;
		case 3:
			sprintf(buffer, "capacitance:F");
			display_string(buffer);
			break;
		default:
			display_string("error!");
		}
	}		
	return 0;
}
void EX0_ISR(void) __interrupt (0) __using (1)
{
	int i, j;
	for(i = 65535; i > 0; i--)
		for(j = 2000; j > 0; j--);
	if (P3_2 == 0)
		status++;
	if (status >= 4)status = 0;
	return;
}
