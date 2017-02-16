#include "std.h"
#include "serial.h"
extern void delay1(uint t);	//延时单位100us
extern void delay(unsigned int i);	//延时单位1ms
#define SDA P0_6
#define SCL P0_7
void iic_start(void)		//开始
{
	SCL=0;
	delay1(5);
	SDA=1;
	delay1(5);
	SCL=1;
	delay1(10);
	SDA=0;
	delay1(10);
	SCL=0;
	delay1(5);
	SDA=1;
}
void iic_stop(void)		//停止
{
	SCL=0;
	delay1(5);
	SDA=0;
	delay1(5);
	SCL=1;
	delay1(5);
	SDA=1;
	delay1(5);
	SCL=0;
}
/*在总线上发送数据*/
uchar iic_send(uchar byte)
{
	uchar i;
	for( i=0; i<8; i++){
		delay1(5);
		SDA=(byte&0x80);
		byte=byte<<1;
		delay1(5);
		SCL=1;
		delay1(10);
		SCL=0;
	}
	delay1(5);
	SDA=1;
	delay1(5);
	SCL=1;
	delay1(5);
	i=SDA;
	delay1(5);
	SCL=0;
	return i;
}	
/*接收数据*/
uchar iic_recv(uchar *data)
{
	uchar i;
	*data=0;
	for( i=8; i>0; i--){
		delay1(10);
		SCL=1;
		delay1(5);
		*data=*data<<1;
		*data|=SDA;
		delay1(5);
		SCL=0;
	}
	delay1(5);
	SDA=0;
	delay1(5);
	SCL=1;
	delay1(10);
	SCL=0;
	delay1(5);
	SDA=1;
	return 0;
}
/*接收数据,不回应*/
uchar iic_recv_noack(uchar *data)
{
	uchar i;
	*data=0;
	for( i=8; i>0; i--){
		delay1(10);
		SCL=1;
		delay1(5);
		*data=*data<<1;
		*data|=SDA;
		delay1(5);
		SCL=0;
	}
	delay1(5);
	SDA=1;
	delay1(5);
	SCL=1;
	delay1(10);
	SCL=0;
	return 0;
}
/**********************************************************************
 *写入字节
 *********************************************************************/
uchar write_byte( uchar *p, uchar byte)
{
	iic_start();
	delay(5);
	if(iic_send(0xa0)){
		iic_stop();
		return 1;
	}	//器件设备地址,写入
	if(iic_send(*((uchar *)&p+1))){
		iic_stop();
		return 1;
	}	//地址高八位
	if(iic_send((uchar)p)){
		iic_stop();
		return 1;
	}		//地址低八位
	if(iic_send(byte)){
		iic_stop();
		return 1;
	}		//写入数据
	iic_stop();
	delay(5);
	return 0;
}

/**********************************************************************
 *写入页(64字节)
 *********************************************************************/
uchar write_page( uchar *p, uchar *data)
{
	uchar i;
	iic_start();
	delay(5);
	if(iic_send(0xa0)){
		iic_stop();
		return 1;
	}	//器件设备地址,写入
	if(iic_send(*((uchar *)&p+1))){
		iic_stop();
		return 1;
	}	//地址高八位
	if(iic_send((uchar)p)){
		iic_stop();
		return 1;
	}		//地址低八位
	for( i=0; i<64; i++){
		if(iic_send(*data)){
			iic_stop();
			return 1;
		}
		data++;
	}
	iic_stop();
	delay(50);
	return 0;
}
/**********************************************************************
 *读取当前字节
 *********************************************************************/
uchar read_byte( uchar *p, uchar *data)
{
	iic_stop();
	delay(5);
	iic_start();	
	if(iic_send(0xa0)){
		iic_stop();
		return 1;
	}	//器件设备地址,写入
	if(iic_send(*((uchar *)&p+1))){
		iic_stop();
		return 1;
	}	//地址高八位
	if(iic_send((uchar)p)){
		iic_stop();
		return 1;
	}		//地址低八位
	iic_start();
	if(iic_send(0xa1)){
		iic_stop();
		return 1;
	}
	//	while(1);
	iic_recv_noack(data);
	iic_stop();
	return 0;
}
uchar read_cur( uchar *data)
{
	iic_start();
	if(iic_send(0xa1)){
		iic_stop();
		return 1;
	}
	iic_recv_noack(data);
	iic_stop();
	return 0;
}
/**********************************************************************
 *顺序读出
 *********************************************************************/
uchar read_sequ(uchar *p, uchar *data, uint size)
{
	uint i;
	iic_start();	
	delay(5);
	if(iic_send(0xa0)){
		iic_stop();
		return 1;
	}	//器件设备地址,写入
	if(iic_send(*((uchar *)&p+1))){
		iic_stop();
		return 1;
	}	//地址高八位
	if(iic_send((uchar)p)){
		iic_stop();
		return 1;
	}		//地址低八位
	iic_stop();
	delay(5);

	iic_start();
	if(iic_send(0xa1)){
		iic_stop();
		return 1;
	}
	for( i=0; i<size-1; i++){
		iic_recv(data);
		data++;
	}
	iic_recv_noack(data);
	iic_stop();
	return 0;
}
