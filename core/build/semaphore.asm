;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:24 2016
;--------------------------------------------------------
	.module semaphore
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _release_semaphore
	.globl _get_semaphore
	.globl _semaphore_init
	.globl _display
	.globl _schedule
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
	.globl _ready_list
	.globl _semaphore
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
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
_semaphore_init_n_1_16:
	.ds 2
_get_semaphore_n_1_18:
	.ds 2
_release_semaphore_n_1_22:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_semaphore::
	.ds 16
_ready_list::
	.ds 16
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
;Allocation info for local variables in function 'semaphore_init'
;------------------------------------------------------------
;n                         Allocated with name '_semaphore_init_n_1_16'
;------------------------------------------------------------
;	semaphore.c:8: void semaphore_init(uint n)	//n为将要初始化的信号量
;	-----------------------------------------
;	 function semaphore_init
;	-----------------------------------------
_semaphore_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_semaphore_init_n_1_16
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	semaphore.c:10: semaphore[n]=1;
	mov	dptr,#_semaphore_init_n_1_16
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_semaphore
	mov	dpl,a
	mov	a,r7
	addc	a,#(_semaphore >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	semaphore.c:11: ready_list[n]=0;
	mov	a,r6
	add	a,#_ready_list
	mov	dpl,a
	mov	a,r7
	addc	a,#(_ready_list >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	semaphore.c:12: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_semaphore'
;------------------------------------------------------------
;n                         Allocated with name '_get_semaphore_n_1_18'
;------------------------------------------------------------
;	semaphore.c:17: void get_semaphore(uint n)
;	-----------------------------------------
;	 function get_semaphore
;	-----------------------------------------
_get_semaphore:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_semaphore_n_1_18
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	semaphore.c:19: if(n>16){	//防止n>16
	mov	dptr,#_get_semaphore_n_1_18
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x10
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00105$
;	semaphore.c:20: display("n>16,in get_semaphore()",n);
	mov	dptr,#_get_semaphore_n_1_18
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_display_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_display
;	semaphore.c:21: while(1);
00102$:
	sjmp	00102$
00105$:
;	semaphore.c:23: if(semaphore[n]==1){
	mov	dptr,#_get_semaphore_n_1_18
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_semaphore
	mov	dpl,a
	mov	a,r7
	addc	a,#(_semaphore >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00107$
;	semaphore.c:24: semaphore[n]=0;
	mov	dptr,#_get_semaphore_n_1_18
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_semaphore
	mov	dpl,a
	mov	a,r7
	addc	a,#(_semaphore >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	semaphore.c:25: return;	//成功取得信号量,否则进程阻塞
	ret
00107$:
;	semaphore.c:27: EA=0;
	clr	_EA
;	semaphore.c:28: READY=READY&(~MASK[CUR]);
	mov	dptr,#_CUR
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
	mov	r4,a
	mov	a,r7
	cpl	a
	mov	r5,a
	mov	dptr,#_READY
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_READY
	mov	a,r4
	anl	a,r2
	movx	@dptr,a
	mov	a,r5
	anl	a,r3
	inc	dptr
	movx	@dptr,a
;	semaphore.c:29: ready_list[n]|=MASK[CUR];
	mov	dptr,#_get_semaphore_n_1_18
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#_ready_list
	mov	r4,a
	mov	a,r5
	addc	a,#(_ready_list >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar6,a
	mov	a,r2
	orl	ar7,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
;	semaphore.c:30: EA=1;
	setb	_EA
;	semaphore.c:31: schedule();
;	semaphore.c:32: return;
	ljmp	_schedule
;------------------------------------------------------------
;Allocation info for local variables in function 'release_semaphore'
;------------------------------------------------------------
;n                         Allocated with name '_release_semaphore_n_1_22'
;hg                        Allocated with name '_release_semaphore_hg_1_23'
;------------------------------------------------------------
;	semaphore.c:37: void release_semaphore(uint n)
;	-----------------------------------------
;	 function release_semaphore
;	-----------------------------------------
_release_semaphore:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_release_semaphore_n_1_22
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	semaphore.c:40: if(n>16){	//防止n>16
	mov	dptr,#_release_semaphore_n_1_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x10
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00104$
	sjmp	00105$
00104$:
;	semaphore.c:41: display("n>16,in release_semaphore()",n);
	mov	dptr,#_release_semaphore_n_1_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_display_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_display
;	semaphore.c:42: while(1);
00102$:
	sjmp	00102$
00105$:
;	semaphore.c:44: if(semaphore[n]==0){	
	mov	dptr,#_release_semaphore_n_1_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_semaphore
	mov	r6,a
	mov	a,r7
	addc	a,#(_semaphore >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00120$
	ljmp	00110$
00120$:
;	semaphore.c:45: EA=0;
	clr	_EA
;	semaphore.c:46: if(ready_list[n]==0){
	mov	dptr,#_release_semaphore_n_1_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_ready_list
	mov	r6,a
	mov	a,r7
	addc	a,#(_ready_list >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00107$
;	semaphore.c:47: semaphore[n]=1;		//为零且无等待任务,信号量置1
	mov	dptr,#_release_semaphore_n_1_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_semaphore
	mov	dpl,a
	mov	a,r7
	addc	a,#(_semaphore >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	semaphore.c:48: EA=1;
	setb	_EA
;	semaphore.c:49: return;
	ret
00107$:
;	semaphore.c:51: hg=READYMAP[ready_list[n]];	//有人任务阻塞,取最高级任务调度
	mov	dptr,#_release_semaphore_n_1_22
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_ready_list
	mov	r6,a
	mov	a,r7
	addc	a,#(_ready_list >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x02
	mul	ab
	add	a,#_READYMAP
	mov	dpl,a
	mov	a,#(_READYMAP >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
;	semaphore.c:52: ready_list[n]=ready_list[n]&(~MASK[hg]);
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,#_MASK
	mov	r3,a
	mov	a,r4
	addc	a,#(_MASK >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	a,r1
	cpl	a
	anl	ar5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	semaphore.c:53: READY|=MASK[hg];
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dptr,#_READY
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_READY
	mov	a,r3
	orl	a,r6
	movx	@dptr,a
	mov	a,r4
	orl	a,r7
	inc	dptr
	movx	@dptr,a
;	semaphore.c:54: schedule();
	lcall	_schedule
00110$:
;	semaphore.c:57: return;
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "n>16,in get_semaphore()"
	.db 0x00
___str_1:
	.ascii "n>16,in release_semaphore()"
	.db 0x00
	.area XINIT   (CODE)
__xinit__semaphore:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__ready_list:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area CABS    (ABS,CODE)
