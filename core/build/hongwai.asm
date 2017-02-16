;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:24 2016
;--------------------------------------------------------
	.module hongwai
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _luzhi
	.globl _copy_wave
	.globl _fashe
	.globl _delay
	.globl _delay1
	.globl _pca_timer
	.globl _memset
	.globl _display
	.globl _read_sequ
	.globl _write_byte
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
	.globl _copywave_tmp
	.globl _copy_waveing
	.globl _copywave_bit_count
	.globl _copywave_p
	.globl _copywave_count
	.globl _time
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
_time::
	.ds 2
_copywave_count::
	.ds 2
_copywave_p::
	.ds 3
_copywave_bit_count::
	.ds 1
_copy_waveing::
	.ds 1
_copywave_tmp::
	.ds 400
_fashe_c_1_22:
	.ds 2
_fashe_i_1_23:
	.ds 2
_copy_wave_c_1_25:
	.ds 2
_copy_wave_i_1_26:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'pca_timer'
;------------------------------------------------------------
;	hongwai.c:8: void pca_timer(void)
;	-----------------------------------------
;	 function pca_timer
;	-----------------------------------------
_pca_timer:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	hongwai.c:10: time=2*TIME;
	mov	dptr,#_time
	mov	a,#0x98
	movx	@dptr,a
	mov	a,#0x08
	inc	dptr
	movx	@dptr,a
;	hongwai.c:11: CCON=0;
	mov	_CCON,#0x00
;	hongwai.c:12: CMOD=0x08;		//不分频
;	1-genFromRTrack replaced	mov	_CMOD,#0x08
	mov	_CMOD,a
;	hongwai.c:13: CCAPM0=0x49;	//16位高速输出,允许中断
	mov	_CCAPM0,#0x49
;	hongwai.c:14: CL=0x00;
	mov	_CL,#0x00
;	hongwai.c:15: CH=0x00;
	mov	_CH,#0x00
;	hongwai.c:16: CCAP0L=TIME;
	mov	_CCAP0L,#0x4C
;	hongwai.c:17: CCAP0H=TIME>>8;
	mov	_CCAP0H,#0x04
;	hongwai.c:18: CR=0;
	clr	_CR
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay1'
;------------------------------------------------------------
;t                         Allocated with name '_delay1_t_1_19'
;------------------------------------------------------------
;	hongwai.c:20: void delay1(uint t)		//延时,单位微秒
;	-----------------------------------------
;	 function delay1
;	-----------------------------------------
_delay1:
;	hongwai.c:58: __endasm;
	push acc
	mov a, r6
	push a
	mov a,dpl
	mov r6,dph
	 10000$:
	dec a ;0.2us 
	nop ;0.1us |
	nop ;0.1us |
	nop ;0.1us |> 1us
	nop ;0.1us |
	nop ;0.1us |
	jnz 10000$ ;0.3us /
	mov a,r6 ;0.1us
	jz 10003$ ;0.3us
	 10001$:
	mov a,#0xfe ;0.2us
	nop
	nop
	nop
	nop
	nop
	 10002$:
	dec a ;0.2us 
	nop ;0.1us |
	nop ;0.1us |
	nop ;0.1us |> 1us
	nop ;0.1us |
	nop ;0.1us |
	jnz 10002$ ;0.3us /
	djnz r6, 10001$ ;0.4us
	 10003$:
	pop a
	mov r6, a
	pop acc
;	hongwai.c:59: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fashe'
;------------------------------------------------------------
;c                         Allocated with name '_fashe_c_1_22'
;addr                      Allocated with name '_fashe_addr_1_23'
;i                         Allocated with name '_fashe_i_1_23'
;------------------------------------------------------------
;	hongwai.c:66: void fashe(uint c)
;	-----------------------------------------
;	 function fashe
;	-----------------------------------------
_fashe:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_fashe_c_1_22
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	hongwai.c:70: addr=(uchar *)(c*400);
	mov	dptr,#_fashe_c_1_22
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
	mov	dptr,#0x0190
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
;	hongwai.c:71: copywave_count=0;
	mov	dptr,#_copywave_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	hongwai.c:72: copywave_bit_count=0;
	mov	dptr,#_copywave_bit_count
	movx	@dptr,a
;	hongwai.c:73: copywave_p=copywave_tmp;
	mov	dptr,#_copywave_p
	mov	a,#_copywave_tmp
	movx	@dptr,a
	mov	a,#(_copywave_tmp >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	hongwai.c:74: copy_waveing=0;
	mov	dptr,#_copy_waveing
	movx	@dptr,a
;	hongwai.c:75: memset( copywave_p, 0, 400);
	mov	r2,#_copywave_tmp
	mov	r3,#(_copywave_tmp >> 8)
	mov	r4,#0x00
	mov	dptr,#_memset_PARM_2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_memset
	pop	ar5
	pop	ar6
	pop	ar7
;	hongwai.c:76: if(read_sequ(addr,copywave_p,400))P2_2=0; 
	mov	dptr,#_copywave_p
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_read_sequ_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_read_sequ_PARM_3
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_read_sequ
	mov	a,dpl
	jnz	00101$
	sjmp	00102$
00101$:
	clr	_P2_2
00102$:
;	hongwai.c:77: for (i=0; i<400; i++){
	mov	dptr,#_fashe_i_1_23
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_fashe_i_1_23
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00107$:
;	hongwai.c:78: display("data=", *(copywave_p+i));
	mov	dptr,#_copywave_p
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#_display_PARM_2
	movx	@dptr,a
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_display
	pop	ar6
	pop	ar7
;	hongwai.c:77: for (i=0; i<400; i++){
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
00123$:
	clr	c
	mov	a,r6
	subb	a,#0x90
	mov	a,r7
	subb	a,#0x01
	jc	00107$
;	hongwai.c:80: display("choose=", c);
	mov	dptr,#_fashe_c_1_22
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
;	hongwai.c:81: CR=1;
	setb	_CR
;	hongwai.c:82: EA=1;
	setb	_EA
;	hongwai.c:83: while(CR);
00104$:
	jb	_CR,00104$
;	hongwai.c:84: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'copy_wave'
;------------------------------------------------------------
;c                         Allocated with name '_copy_wave_c_1_25'
;i                         Allocated with name '_copy_wave_i_1_26'
;addr                      Allocated with name '_copy_wave_addr_1_26'
;try                       Allocated with name '_copy_wave_try_1_26'
;------------------------------------------------------------
;	hongwai.c:86: void copy_wave(uint c)
;	-----------------------------------------
;	 function copy_wave
;	-----------------------------------------
_copy_wave:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_copy_wave_c_1_25
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	hongwai.c:90: copywave_count=0;
	mov	dptr,#_copywave_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	hongwai.c:91: copywave_bit_count=0;
	mov	dptr,#_copywave_bit_count
	movx	@dptr,a
;	hongwai.c:92: copywave_p=copywave_tmp;
	mov	dptr,#_copywave_p
	mov	a,#_copywave_tmp
	movx	@dptr,a
	mov	a,#(_copywave_tmp >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	hongwai.c:93: copy_waveing=1;
	mov	dptr,#_copy_waveing
	inc	a
	movx	@dptr,a
;	hongwai.c:94: memset( copywave_p, 0, 400);
	mov	r5,#_copywave_tmp
	mov	r6,#(_copywave_tmp >> 8)
	mov	r7,#0x00
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
;	hongwai.c:95: while(input);
00101$:
	jb	_P2_7,00101$
;	hongwai.c:96: CR=1;
	setb	_CR
;	hongwai.c:97: EA=1;
	setb	_EA
;	hongwai.c:98: while(CR);
00104$:
	jb	_CR,00104$
;	hongwai.c:99: for(i=0; i<400;){
	mov	dptr,#_copy_wave_i_1_26
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_copy_wave_i_1_26
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00110$:
;	hongwai.c:100: if (write_byte(c*400+i,*copywave_p))P2_2=0;
	mov	dptr,#_copy_wave_c_1_25
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0190
	push	ar7
	push	ar6
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	add	a,r6
	mov	r4,a
	mov	a,r7
	addc	a,b
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#_copywave_p
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dptr,#_write_byte_PARM_2
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar7
	push	ar6
	lcall	_write_byte
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00107$
	sjmp	00108$
00107$:
	clr	_P2_2
00108$:
;	hongwai.c:101: copywave_p++;
	mov	dptr,#_copywave_p
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	hongwai.c:102: i++;
	inc	r6
	cjne	r6,#0x00,00132$
	inc	r7
00132$:
;	hongwai.c:99: for(i=0; i<400;){
	clr	c
	mov	a,r6
	subb	a,#0x90
	mov	a,r7
	subb	a,#0x01
	jc	00110$
;	hongwai.c:121: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'luzhi'
;------------------------------------------------------------
;	hongwai.c:123: uint luzhi(void)		//count 录制红外的时间,每100us采样一次
;	-----------------------------------------
;	 function luzhi
;	-----------------------------------------
_luzhi:
;	hongwai.c:125: EA=0;
	clr	_EA
;	hongwai.c:126: copywave_count=0;
	mov	dptr,#_copywave_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	hongwai.c:127: copywave_p=copywave_tmp;
	mov	dptr,#_copywave_p
	mov	a,#_copywave_tmp
	movx	@dptr,a
	mov	a,#(_copywave_tmp >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	hongwai.c:128: memset( copywave_p, 0, 400);
	mov	r5,#_copywave_tmp
	mov	r6,#(_copywave_tmp >> 8)
	mov	r7,#0x00
	mov	dptr,#_memset_PARM_2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
;	hongwai.c:129: while(input)delay(10);
00101$:
	jb	_P2_7,00102$
	sjmp	00104$
00102$:
	mov	dptr,#0x000A
	lcall	_delay
	sjmp	00101$
;	hongwai.c:130: while(copywave_count<400){
00104$:
	mov	dptr,#_copywave_count
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x90
	mov	a,r7
	subb	a,#0x01
	jc	00105$
	sjmp	00106$
00105$:
;	hongwai.c:131: delay1(1600);
	mov	dptr,#0x0640
	lcall	_delay1
;	hongwai.c:132: *copywave_p=input;
	mov	dptr,#_copywave_p
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	c,_P2_7
	clr	a
	rlc	a
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	hongwai.c:133: copywave_p++;
	mov	dptr,#_copywave_p
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	hongwai.c:134: copywave_count++;
	mov	dptr,#_copywave_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00104$
00106$:
;	hongwai.c:136: EA=1;
	setb	_EA
;	hongwai.c:137: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "data="
	.db 0x00
___str_1:
	.ascii "choose="
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
