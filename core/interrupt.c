__sfr __at (0xc7) IAP_CONTR;
uint interrupt_count;
void interrupt_disable(void)
{
	if ( interrupt_count<sizeof(uint)){
		interrupt_count++;
		EA=0;
	}else{
		while(1);
	}
	return;
}
void interrupt_enable(void)
{
	if (interrupt_count>0){
		interrupt_count--;
	}else{
		EA=1;
	}
	return;
}
void ext0_isr(void) __interrupt (0) __using (1)
{
	enter_int;
	delay(100);
	P2_3=!P2_3;
	if(P3_2==1)exit_int();
	release_semaphore(1);
	exit_int();
	return;
}
void ext1_isr(void) __interrupt (2) __using (1)
{
	enter_int;
	delay(100);
	if(P3_3==1)exit_int();
	if(copy_waveing)return;
	release_semaphore(2);
	exit_int();
	return;
}
extern uchar TI2;
/**********************************************************************
 *第二串口中断函数,使用信号量14通知到达新行
 *********************************************************************/
void s2_isr(void) __interrupt (8) __using (1)	//串口2中断
{
	enter_int;
	if(S2CON&0x02){
		S2CON&=0xfd;	//清除中断置位
		TI2=1;
	}else{
		S2CON&=0xfc;
		if(wifi_data_w==wifi_data_end)wifi_data_w=wifi_data;
		*wifi_data_w=S2BUF;
		if(*wifi_data_w=='\r')release_semaphore(14);
		wifi_data_w++;
	}
	exit_int();
	return;
}
extern uchar TI1;
/**********************************************************************
 *主串口中断函数;使用信号量15通知到达新行
 *********************************************************************/
void s1_isr(void) __interrupt (4) __using (1)
{
	enter_int;
	if(RI){
		RI=0;
		if(serial_w==serial_end)serial_w=serial_buf;
		*serial_w=SBUF;
		SBUF=*serial_w;
		if(*serial_w=='\r'){
		//display("READY=",READY);
			release_semaphore(15);
		}
		serial_w+=1;
	}else{
		TI=0;
		TI1=1;
	}
	exit_int();
	return;
}
void t0_isr(void) __interrupt (1) __using (1)
{
	return;
}

#define input P2_7
extern uchar copywave_tmp[500];
extern uchar *copywave_p,copywave_bit_count,copy_waveing;
extern uint copywave_count;
void t1_isr(void) __interrupt (3) __using (1)
{
	//TH1=0x04;
	//TL1=0x0c;
	if(copy_waveing){
		if(copywave_count<400){
			if(copywave_bit_count<8){
			}else{
				copywave_bit_count=0;
				copywave_p++;
				copywave_count++;
			}
			copywave_bit_count++;
			*copywave_p=*copywave_p<<1;
			*copywave_p|=input;
		}else{
			TR1=0;
			TR0=0;
		}
	}else{
		if(copywave_count<400){
			if(copywave_bit_count<8){
			}else{
				copywave_p++;
				copywave_count++;
				copywave_bit_count=0;
			}
			TR0=*copywave_p&0x80;
			*copywave_p=*copywave_p<<1;
			copywave_bit_count++;
		}else{
			TR1=0;
			TR0=0;
		}
	}
}

/**********************************************************************
 *pca中断
 *********************************************************************/
#define TIME (0x044c)
extern unsigned int time;
void pca_isr(void) __interrupt (7) __using (1)
{
	CCF0=0;
	CCAP0L=time;
	CCAP0H=time>>8;
	time+=TIME;
	if(copy_waveing){
		if(copywave_count<400){
			if(copywave_bit_count<8){
			}else{
				copywave_bit_count=0;
				copywave_p++;
				copywave_count++;
			}
			copywave_bit_count++;
			*copywave_p=*copywave_p<<1;
			*copywave_p|=input;
		}else{
			CR=0;
			TR0=0;
			copy_waveing=0;
		}
	}else{
		if(copywave_count<400){
			if(copywave_bit_count<8){
			}else{
				copywave_p++;
				copywave_count++;
				copywave_bit_count=0;
			}
			TR0=*copywave_p&0x80;
			*copywave_p=*copywave_p<<1;
			copywave_bit_count++;
		}else{
			CR=0;
			TR0=0;
		}
	}
}

