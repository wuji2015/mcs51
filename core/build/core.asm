;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:23 2016
;--------------------------------------------------------
	.module core
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MASK
	.globl _READYMAP
	.globl _os_start
	.globl _os_init
	.globl _task_del
	.globl _task_create
	.globl _tcb_init
	.globl _stack_init
	.globl _schedule
	.globl _switch_task_int
	.globl _switch_task
	.globl _CF
	.globl _CR
	.globl _CCF1
	.globl _CCF0
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PCA_PWM1
	.globl _PCA_PWM0
	.globl _CCAP1H
	.globl _CCAP1L
	.globl _CCAP0H
	.globl _CCAP0L
	.globl _CH
	.globl _CL
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CMOD
	.globl _CCON
	.globl _WAKE_CLKO
	.globl _BRT
	.globl _IE2
	.globl _S2BUF
	.globl _S2CON
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _OS_START
	.globl _task_create_PARM_2
	.globl _tcb_init_PARM_2
	.globl _stack_init_PARM_2
	.globl _tcb_t
	.globl _interrup
	.globl _tcb
	.globl _CUR
	.globl _READY
	.globl _HIGHT_TCB_T
	.globl _CUR_TCB_T
	.globl _stack_int
	.globl _os_stack
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_S2CON	=	0x009a
_S2BUF	=	0x009b
_IE2	=	0x00af
_BRT	=	0x009c
_WAKE_CLKO	=	0x008f
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CL	=	0x00e9
_CH	=	0x00f9
_CCAP0L	=	0x00ea
_CCAP0H	=	0x00fa
_CCAP1L	=	0x00eb
_CCAP1H	=	0x00fb
_PCA_PWM0	=	0x00f2
_PCA_PWM1	=	0x00f3
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CCF0	=	0x00d8
_CCF1	=	0x00d9
_CR	=	0x00de
_CF	=	0x00df
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_tcb_init_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_os_stack::
	.ds 184
_stack_int::
	.ds 20
_CUR_TCB_T::
	.ds 3
_HIGHT_TCB_T::
	.ds 3
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_READY::
	.ds 2
_CUR::
	.ds 2
_tcb::
	.ds 24
_interrup::
	.ds 1
_tcb_t::
	.ds 24
_schedule_hight_1_12:
	.ds 1
_stack_init_PARM_2:
	.ds 2
_stack_init_thread_1_17:
	.ds 3
_tcb_init_PARM_2:
	.ds 2
_tcb_init_stack_1_19:
	.ds 3
_task_create_PARM_2:
	.ds 2
_task_create_thread_1_21:
	.ds 3
_task_del_p_1_23:
	.ds 2
_os_init_i_1_26:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_OS_START::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'schedule'
;------------------------------------------------------------
;i                         Allocated with name '_schedule_i_1_12'
;hight                     Allocated with name '_schedule_hight_1_12'
;------------------------------------------------------------
;	core.c:34: uint schedule(void){		//调度函数
;	-----------------------------------------
;	 function schedule
;	-----------------------------------------
_schedule:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	core.c:37: if (OS_START==1){
	mov	dptr,#_OS_START
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00106$
	cjne	r7,#0x00,00106$
;	core.c:38: EA=0;
	clr	_EA
;	core.c:39: hight=READYMAP[READY];
	mov	dptr,#_READY
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_READYMAP
	mov	dpl,a
	mov	a,r7
	addc	a,#(_READYMAP >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_schedule_hight_1_12
	mov	a,r6
	movx	@dptr,a
;	core.c:40: if (hight==CUR){
	mov	dptr,#_CUR
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	a,r6
	cjne	a,ar5,00102$
	mov	a,r4
	cjne	a,ar7,00102$
;	core.c:41: EA=1;
	setb	_EA
;	core.c:42: return 1;	//计算最高优先级
	mov	dptr,#0x0001
	ret
00102$:
;	core.c:44: HIGHT_TCB_T=tcb_t[hight];
	mov	dptr,#_schedule_hight_1_12
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x03
	mul	ab
	add	a,#_tcb_t
	mov	dpl,a
	mov	a,#(_tcb_t >> 8)
	addc	a,b
	mov	dph,a
	mov	r0,#_HIGHT_TCB_T
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
;	core.c:45: CUR=hight;
	mov	dptr,#_CUR
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	core.c:55: if (interrup==0){
	mov	dptr,#_interrup
	movx	a,@dptr
	jnz	00104$
;	core.c:56: switch_task();
	lcall	_switch_task
00104$:
;	core.c:59: EA=1;
	setb	_EA
00106$:
;	core.c:61: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stack_init'
;------------------------------------------------------------
;p                         Allocated with name '_stack_init_PARM_2'
;thread                    Allocated with name '_stack_init_thread_1_17'
;stack                     Allocated with name '_stack_init_stack_1_18'
;------------------------------------------------------------
;	core.c:93: uchar* stack_init(void *thread,uint p){	/*p：优先级*/
;	-----------------------------------------
;	 function stack_init
;	-----------------------------------------
_stack_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_stack_init_thread_1_17
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	core.c:95: stack=&os_stack[p*23];
	mov	dptr,#_stack_init_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	mov	b,#0x17
	mul	ab
	add	a,#_os_stack
	mov	r1,a
;	core.c:96: *stack++=(uchar)thread;	
	mov	dptr,#_stack_init_thread_1_17
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar4,r5
	mov	@r1,ar4
	mov	a,r1
	inc	a
	mov	r0,a
;	core.c:97: *stack++=(uchar)((uint)thread>>8);
	mov	ar5,r6
	mov	@r0,ar5
;	core.c:98: return (stack+13);
	mov	a,#0x0F
	add	a,r1
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tcb_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tcb_init_sloc0_1_0'
;p                         Allocated with name '_tcb_init_PARM_2'
;stack                     Allocated with name '_tcb_init_stack_1_19'
;------------------------------------------------------------
;	core.c:103: void tcb_init(uchar *stack,uint p){
;	-----------------------------------------
;	 function tcb_init
;	-----------------------------------------
_tcb_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_tcb_init_stack_1_19
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	core.c:104: tcb_t[p]->sp=(__idata uchar*)stack;
	mov	dptr,#_tcb_init_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_tcb_t
	mov	r4,a
	mov	a,r5
	addc	a,#(_tcb_t >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_tcb_init_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_tcb_init_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_tcb_init_sloc0_1_0 + 2),a
	mov	dptr,#_tcb_init_stack_1_19
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,_tcb_init_sloc0_1_0
	mov	dph,(_tcb_init_sloc0_1_0 + 1)
	mov	b,(_tcb_init_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
;	core.c:105: tcb_t[p]->priority=p;
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
00103$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
;	core.c:106: return;
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'task_create'
;------------------------------------------------------------
;p                         Allocated with name '_task_create_PARM_2'
;thread                    Allocated with name '_task_create_thread_1_21'
;stack                     Allocated with name '_task_create_stack_1_22'
;------------------------------------------------------------
;	core.c:114: void task_create(void *thread,uint p){
;	-----------------------------------------
;	 function task_create
;	-----------------------------------------
_task_create:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_task_create_thread_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	core.c:115: uchar *stack=stack_init(thread,p);
	mov	dptr,#_task_create_thread_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_task_create_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_stack_init_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	lcall	_stack_init
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
	pop	ar4
;	core.c:116: tcb_init(stack,p);
	mov	dptr,#_tcb_init_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	lcall	_tcb_init
	pop	ar3
	pop	ar4
;	core.c:117: READY=READY|MASK[p];
	mov	a,r4
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,#_MASK
	mov	dpl,a
	mov	a,r4
	addc	a,#(_MASK >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_READY
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_READY
	mov	a,r6
	orl	a,r4
	movx	@dptr,a
	mov	a,r7
	orl	a,r5
	inc	dptr
	movx	@dptr,a
;	core.c:118: schedule();
;	core.c:119: return;
	ljmp	_schedule
;------------------------------------------------------------
;Allocation info for local variables in function 'task_del'
;------------------------------------------------------------
;p                         Allocated with name '_task_del_p_1_23'
;------------------------------------------------------------
;	core.c:124: void task_del(uint p)
;	-----------------------------------------
;	 function task_del
;	-----------------------------------------
_task_del:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_task_del_p_1_23
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	core.c:126: EA=0;
	clr	_EA
;	core.c:127: READY=READY&(~MASK[p]);
	mov	dptr,#_task_del_p_1_23
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_MASK
	mov	dpl,a
	mov	a,r7
	addc	a,#(_MASK >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r6
	cpl	a
	mov	r6,a
	mov	a,r7
	cpl	a
	mov	r7,a
	mov	dptr,#_READY
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_READY
	mov	a,r6
	anl	a,r4
	movx	@dptr,a
	mov	a,r7
	anl	a,r5
	inc	dptr
	movx	@dptr,a
;	core.c:128: EA=1;
	setb	_EA
;	core.c:129: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'os_init'
;------------------------------------------------------------
;i                         Allocated with name '_os_init_i_1_26'
;------------------------------------------------------------
;	core.c:134: void os_init(void){
;	-----------------------------------------
;	 function os_init
;	-----------------------------------------
_os_init:
;	core.c:136: READY=0;
	mov	dptr,#_READY
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	core.c:137: interrup=0;
	mov	dptr,#_interrup
	movx	@dptr,a
;	core.c:138: for(i=0;i<8;i++)tcb_t[i]=&(tcb[i]);
	mov	dptr,#_os_init_i_1_26
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_os_init_i_1_26
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00102$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_tcb_t
	mov	dpl,a
	mov	a,r5
	addc	a,#(_tcb_t >> 8)
	mov	dph,a
	mov	a,r4
	add	a,#_tcb
	mov	r4,a
	mov	a,r5
	addc	a,#(_tcb >> 8)
	mov	r5,a
	mov	r3,#0x00
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	inc	r6
	cjne	r6,#0x00,00110$
	inc	r7
00110$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	core.c:146: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'os_start'
;------------------------------------------------------------
;hight                     Allocated with name '_os_start_hight_1_28'
;------------------------------------------------------------
;	core.c:148: void os_start(void)
;	-----------------------------------------
;	 function os_start
;	-----------------------------------------
_os_start:
;	core.c:150: __xdata uchar hight=READYMAP[READY];
	mov	dptr,#_READY
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_READYMAP
	mov	dpl,a
	mov	a,r7
	addc	a,#(_READYMAP >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
;	core.c:151: OS_START=1;
	mov	dptr,#_OS_START
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	core.c:152: HIGHT_TCB_T=tcb_t[hight];
	mov	a,r6
	mov	b,#0x03
	mul	ab
	add	a,#_tcb_t
	mov	dpl,a
	mov	a,#(_tcb_t >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_HIGHT_TCB_T
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
;	core.c:153: CUR=hight;
	mov	dptr,#_CUR
	mov	a,r6
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	core.c:154: CUR_TCB_T=HIGHT_TCB_T;
	mov	r0,#_CUR_TCB_T
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
;	core.c:155: switch_task_int();
;	core.c:156: return;
	ljmp	_switch_task_int
	.area CSEG    (CODE)
	.area CONST   (CODE)
_READYMAP:
	.byte #0x00,#0x00	; 0
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x04,#0x00	; 4
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x05,#0x00	; 5
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x04,#0x00	; 4
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x06,#0x00	; 6
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x04,#0x00	; 4
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x05,#0x00	; 5
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x04,#0x00	; 4
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x07,#0x00	; 7
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x04,#0x00	; 4
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x05,#0x00	; 5
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x04,#0x00	; 4
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x06,#0x00	; 6
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x04,#0x00	; 4
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x05,#0x00	; 5
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x04,#0x00	; 4
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x03,#0x00	; 3
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
	.byte #0x02,#0x00	; 2
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x00,#0x00	; 0
_MASK:
	.byte #0x01,#0x00	; 1
	.byte #0x02,#0x00	; 2
	.byte #0x04,#0x00	; 4
	.byte #0x08,#0x00	; 8
	.byte #0x10,#0x00	; 16
	.byte #0x20,#0x00	; 32
	.byte #0x40,#0x00	; 64
	.byte #0x80,#0x00	; 128
	.area XINIT   (CODE)
__xinit__OS_START:
	.byte #0x00,#0x00	; 0
	.area CABS    (ABS,CODE)
