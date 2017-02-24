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
uchar status = 0;
int main(void)
{
	uint res;
	uint vol_in, vol_de, tmp;
	uchar buffer[33] = "";
	adc_init(PIN3, SPEED90);
	adc_select(CHANNEL3);
	lcd_init();
	interrupt_init();
	while(1){
		delay();
		delay();
		switch (status){
		case 0:
			res = adc_read();
			//		to(buffer, res>>8);
			//		to((uchar*)buffer+2, (uchar)res);
			//		vol = __fsdiv(res, 1024);
			//		vol = __fsmul(res, 5);
			/*
			vol_in = res/207;
			tmp = res - vol_in*207;
			vol_de = tmp*10/207;
			tmp = tmp - vol_de*207;
			tmp = tmp*10/207;
			*/
			res *= 5;
			vol_in = res/1023;
			tmp = res - vol_in*1023;
			vol_de = tmp*10/1023;
			tmp = tmp - vol_de*1023;
			tmp = tmp*10/1023;

			sprintf(buffer, "voltage:%d.%d%dV", vol_in, vol_de, tmp);
			display_string(buffer);
			break;
		case 1:
			res = adc_read();
			//		to(buffer, res>>8);
			//		to((uchar*)buffer+2, (uchar)res);
			//		vol = __fsdiv(res, 1024);
			//		vol = __fsmul(res, 5);
			vol_in = res/207;
			tmp = res - vol_in*207;
			vol_de = tmp*10/207;
			tmp = tmp - vol_de*207/10;
			tmp = tmp*100/207;
			/*
			vol_in = res*5/1023;
			tmp = res - vol_in*1023/5;
			vol_de = tmp*50/1023;
			tmp = tmp - vol_de*1023/50;
			tmp = tmp*500/1023;
			*/
			sprintf(buffer, "current:%d.%d%dA", vol_in, vol_de, tmp);
			display_string(buffer);
			break;
		default:
			display_string("error!");
		}
	}		
	return 0;
}
void ISR_KEY0(void) __interrupt (0) __using (1)
{
	delay();
	if (P3_2 == 0)
		status++;
	if (status >= 4)status = 0;
	return;
}
