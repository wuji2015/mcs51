#include "core.h"
#include "serial.h"
#include "semaphore.h"
#include "wifi.h"
#include "sound.h"
#include "hongwai.h"
#include "strorage.h"
#include "libc.h"

extern void delay(unsigned int i);
void task1(void)
{
	uchar i;
	semaphore_init(0);
	get_semaphore(0);
	while(1){
		P2_0=0;
//		sound_play(0x0002);
		for(i=0;i<1;i++)delay(1000);
		P2_0=1;	//	putc(P2_0+0x30);
		get_semaphore(0);
	}
}
void task2(void)
{
	uchar i;
	while(1){
//				display("in_task2,READY=\0",READY);
		P2_1=!P2_1;
//		sound_play(0);
//		sound_play(0x0001);
//		display("*serial_w=",*(serial_w-1));
		for(i=0;i<1;i++)delay(1000);
		P2_1=!P2_1;
//		display("in_task2,sp=",(uchar)SP);
		release_semaphore(0);
	}
	return;
}
void cmd(void)
{
	uchar buf[5];
	while(1){
		get_semaphore(15);
		receive_data(buf,50);
		sendstr2(buf);
	}
	return;
}
void reply(void)
{
	uchar buf[50];
	uchar *p;
	delay(1000);
	sendstr2("AT+CIPMUX=1\r\n");
	delay(1);
	sendstr2("AT+CIPSERVER=1\r\n");
	while(1){
		get_semaphore(14);
		receive_data2(buf,50);
		sendstr(buf);
		/*
		p=buf;
		if (*p=='+'){
			for(;*p!=':'||p-buf<20;)p++;
			if(*p==':')release_semaphore(2);
		}
		*/
	}
}
uchar choose=0;
void blue(void)
{
	semaphore_init(1);
	choose=0;
	get_semaphore(1);
	get_semaphore(1);
	sound_play(choose);
	while(1){
		get_semaphore(1);
		if(choose<8){
			choose++;
		}else{
			choose=0;
		}
		sound_play(choose);

	}
	return;
}
void red(void)
{
	uint i;
	semaphore_init(2);
	get_semaphore(2);
	while(1){
		get_semaphore(2);
		EA=0;
		if (P3_5==0){
			copy_wave(choose);
		}else{
			fashe(choose);
		}
		/*
		for (i=0; i<400; i++){
			display("data: ", *((uchar*)copywave_tmp+i));
		}
		*/
		sound_play(0x000a);
		/*
		get_semaphore(2);
		for (i=0; i<400; i++){
			if (write_byte(i, 400-i)){
				P2_2=0;
				while(1);
			}
		}
		read_sequ( 0, copywave_tmp, 400);
		for (i=0; i<400; i++){
			display("", *(copywave_tmp+i));
		}*/
	}
	return;
}

void app(void)
{
//	task_create(task1,5);
//	task_create(task2,6);
//	task_create(cmd,4);
	task_create(reply,3);
	task_create(blue,0);
	task_create(red,1);
	return;
}
