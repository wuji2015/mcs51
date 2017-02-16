#ifndef __WIFI_H
#define __WIFI_H
uint wifi_init(void);
uint sendstr2(uchar *str,...);
extern uchar *cur_send;
extern __xdata uchar wifi_buf[30];	//wifi指令
extern __xdata uchar wifi_data[191];		//wifi数据
extern __xdata uchar *wifi_buf_r,*wifi_buf_w,*wifi_buf_end;
extern __xdata uchar *wifi_data_r,*wifi_data_w,*wifi_data_end;
void receive_data2(uchar *buf,uchar count);
#endif
