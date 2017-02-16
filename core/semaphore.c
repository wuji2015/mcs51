#include "core.h"
#include "serial.h"
/**********************************************************************
 *初始化信号量；使用信号量之前必初始化
 *********************************************************************/
__xdata uchar semaphore[16]={0};
__xdata uchar ready_list[16]={0};
void semaphore_init(uint n)	//n为将要初始化的信号量
{
	semaphore[n]=1;
	ready_list[n]=0;
	return;
}
/**********************************************************************
 *试图获取信号量,获取不到则挂起
 *********************************************************************/
void get_semaphore(uint n)
{
	if(n>16){	//防止n>16
		display("n>16,in get_semaphore()",n);
		while(1);
	}
	if(semaphore[n]==1){
		semaphore[n]=0;
		return;	//成功取得信号量,否则进程阻塞
	}		//否则阻塞并调度
	EA=0;
	READY=READY&(~MASK[CUR]);
	ready_list[n]|=MASK[CUR];
	EA=1;
	schedule();
	return;
}
/**********************************************************************
 *释放信号量,选取等待列表最高优先级任务加入就绪表
 *********************************************************************/
void release_semaphore(uint n)
{
	uint hg;
	if(n>16){	//防止n>16
		display("n>16,in release_semaphore()",n);
		while(1);
	}
	if(semaphore[n]==0){	
		EA=0;
		if(ready_list[n]==0){
			semaphore[n]=1;		//为零且无等待任务,信号量置1
			EA=1;
			return;
		}else{
			hg=READYMAP[ready_list[n]];	//有人任务阻塞,取最高级任务调度
			ready_list[n]=ready_list[n]&(~MASK[hg]);
			READY|=MASK[hg];
				schedule();
		}
	}		//或者为一,跳过
	return;
}
