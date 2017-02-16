;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:24 2016
;--------------------------------------------------------
	.module application
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _app
	.globl _red
	.globl _blue
	.globl _reply
	.globl _cmd
	.globl _task2
	.globl _task1
	.globl _delay
	.globl _fashe
	.globl _copy_wave
	.globl _sound_play
	.globl _receive_data2
	.globl _sendstr2
	.globl _release_semaphore
	.globl _get_semaphore
	.globl _semaphore_init
	.globl _receive_data
	.globl _sendstr
	.globl _task_create
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
	.globl _choose
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
_task1_i_1_41:
	.ds 1
_task2_i_1_44:
	.ds 1
_cmd_buf_1_47:
	.ds 5
_reply_buf_1_50:
	.ds 50
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_choose::
	.ds 1
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
;Allocation info for local variables in function 'task1'
;------------------------------------------------------------
;i                         Allocated with name '_task1_i_1_41'
;------------------------------------------------------------
;	application.c:11: void task1(void)
;	-----------------------------------------
;	 function task1
;	-----------------------------------------
_task1:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	application.c:14: semaphore_init(0);
	mov	dptr,#0x0000
	lcall	_semaphore_init
;	application.c:15: get_semaphore(0);
	mov	dptr,#0x0000
	lcall	_get_semaphore
;	application.c:16: while(1){
00103$:
;	application.c:17: P2_0=0;
	clr	_P2_0
;	application.c:19: for(i=0;i<1;i++)delay(1000);
	mov	dptr,#_task1_i_1_41
	clr	a
	movx	@dptr,a
	mov	dptr,#_task1_i_1_41
	movx	a,@dptr
	mov	r7,a
00105$:
	mov	dptr,#0x03E8
	push	ar7
	lcall	_delay
	pop	ar7
	inc	r7
	cjne	r7,#0x01,00116$
00116$:
	jc	00105$
;	application.c:20: P2_0=1;	//	putc(P2_0+0x30);
	setb	_P2_0
;	application.c:21: get_semaphore(0);
	mov	dptr,#0x0000
	lcall	_get_semaphore
	sjmp	00103$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task2'
;------------------------------------------------------------
;i                         Allocated with name '_task2_i_1_44'
;------------------------------------------------------------
;	application.c:24: void task2(void)
;	-----------------------------------------
;	 function task2
;	-----------------------------------------
_task2:
;	application.c:27: while(1){
00103$:
;	application.c:29: P2_1=!P2_1;
	cpl	_P2_1
;	application.c:33: for(i=0;i<1;i++)delay(1000);
	mov	dptr,#_task2_i_1_44
	clr	a
	movx	@dptr,a
	mov	dptr,#_task2_i_1_44
	movx	a,@dptr
	mov	r7,a
00105$:
	mov	dptr,#0x03E8
	push	ar7
	lcall	_delay
	pop	ar7
	inc	r7
	cjne	r7,#0x01,00116$
00116$:
	jc	00105$
;	application.c:34: P2_1=!P2_1;
	cpl	_P2_1
;	application.c:36: release_semaphore(0);
	mov	dptr,#0x0000
	lcall	_release_semaphore
;	application.c:38: return;
	sjmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'cmd'
;------------------------------------------------------------
;buf                       Allocated with name '_cmd_buf_1_47'
;------------------------------------------------------------
;	application.c:40: void cmd(void)
;	-----------------------------------------
;	 function cmd
;	-----------------------------------------
_cmd:
;	application.c:43: while(1){
00102$:
;	application.c:44: get_semaphore(15);
	mov	dptr,#0x000F
	lcall	_get_semaphore
;	application.c:45: receive_data(buf,50);
	mov	dptr,#_receive_data_PARM_2
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#_cmd_buf_1_47
	mov	b,#0x00
	lcall	_receive_data
;	application.c:46: sendstr2(buf);
	mov	a,#_cmd_buf_1_47
	push	acc
	mov	a,#(_cmd_buf_1_47 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sendstr2
	dec	sp
	dec	sp
	dec	sp
;	application.c:48: return;
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'reply'
;------------------------------------------------------------
;buf                       Allocated with name '_reply_buf_1_50'
;p                         Allocated with name '_reply_p_1_50'
;------------------------------------------------------------
;	application.c:50: void reply(void)
;	-----------------------------------------
;	 function reply
;	-----------------------------------------
_reply:
;	application.c:54: delay(1000);
	mov	dptr,#0x03E8
	lcall	_delay
;	application.c:55: sendstr2("AT+CIPMUX=1\r\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_sendstr2
	dec	sp
	dec	sp
	dec	sp
;	application.c:56: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	application.c:57: sendstr2("AT+CIPSERVER=1\r\n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_sendstr2
	dec	sp
	dec	sp
	dec	sp
;	application.c:58: while(1){
00102$:
;	application.c:59: get_semaphore(14);
	mov	dptr,#0x000E
	lcall	_get_semaphore
;	application.c:60: receive_data2(buf,50);
	mov	dptr,#_receive_data2_PARM_2
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#_reply_buf_1_50
	mov	b,#0x00
	lcall	_receive_data2
;	application.c:61: sendstr(buf);
	mov	dptr,#_reply_buf_1_50
	mov	b,#0x00
	lcall	_sendstr
	sjmp	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blue'
;------------------------------------------------------------
;	application.c:72: void blue(void)
;	-----------------------------------------
;	 function blue
;	-----------------------------------------
_blue:
;	application.c:74: semaphore_init(1);
	mov	dptr,#0x0001
	lcall	_semaphore_init
;	application.c:75: choose=0;
	mov	dptr,#_choose
	clr	a
	movx	@dptr,a
;	application.c:76: get_semaphore(1);
	mov	dptr,#0x0001
	lcall	_get_semaphore
;	application.c:77: get_semaphore(1);
	mov	dptr,#0x0001
	lcall	_get_semaphore
;	application.c:78: sound_play(choose);
	mov	dptr,#_choose
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_sound_play
;	application.c:79: while(1){
00105$:
;	application.c:80: get_semaphore(1);
	mov	dptr,#0x0001
	lcall	_get_semaphore
;	application.c:81: if(choose<8){
	mov	dptr,#_choose
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00115$
00115$:
	jc	00101$
	sjmp	00102$
00101$:
;	application.c:82: choose++;
	mov	dptr,#_choose
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00103$
00102$:
;	application.c:84: choose=0;
	mov	dptr,#_choose
	clr	a
	movx	@dptr,a
00103$:
;	application.c:86: sound_play(choose);
	mov	dptr,#_choose
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_sound_play
;	application.c:89: return;
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'red'
;------------------------------------------------------------
;i                         Allocated with name '_red_i_1_58'
;------------------------------------------------------------
;	application.c:91: void red(void)
;	-----------------------------------------
;	 function red
;	-----------------------------------------
_red:
;	application.c:94: semaphore_init(2);
	mov	dptr,#0x0002
	lcall	_semaphore_init
;	application.c:95: get_semaphore(2);
	mov	dptr,#0x0002
	lcall	_get_semaphore
;	application.c:96: while(1){
00105$:
;	application.c:97: get_semaphore(2);
	mov	dptr,#0x0002
	lcall	_get_semaphore
;	application.c:98: EA=0;
	clr	_EA
;	application.c:99: if (P3_5==0){
	jb	_P3_5,00102$
;	application.c:100: copy_wave(choose);
	mov	dptr,#_choose
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_copy_wave
	sjmp	00103$
00102$:
;	application.c:102: fashe(choose);
	mov	dptr,#_choose
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_fashe
00103$:
;	application.c:109: sound_play(0x000a);
	mov	dptr,#0x000A
	lcall	_sound_play
;	application.c:123: return;
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'app'
;------------------------------------------------------------
;	application.c:126: void app(void)
;	-----------------------------------------
;	 function app
;	-----------------------------------------
_app:
;	application.c:131: task_create(reply,3);
	mov	r5,#_reply
	mov	r6,#(_reply >> 8)
	mov	r7,#0x80
	mov	dptr,#_task_create_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_task_create
;	application.c:132: task_create(blue,0);
	mov	r5,#_blue
	mov	r6,#(_blue >> 8)
	mov	r7,#0x80
	mov	dptr,#_task_create_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_task_create
;	application.c:133: task_create(red,1);
	mov	r5,#_red
	mov	r6,#(_red >> 8)
	mov	r7,#0x80
	mov	dptr,#_task_create_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	application.c:134: return;
	ljmp	_task_create
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "AT+CIPMUX=1"
	.db 0x0D
	.db 0x0A
	.db 0x00
___str_1:
	.ascii "AT+CIPSERVER=1"
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
__xinit__choose:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
