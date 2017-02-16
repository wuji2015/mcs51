;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:24 2016
;--------------------------------------------------------
	.module strorage
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _read_sequ
	.globl _read_cur
	.globl _read_byte
	.globl _write_page
	.globl _write_byte
	.globl _iic_recv_noack
	.globl _iic_recv
	.globl _iic_send
	.globl _iic_stop
	.globl _iic_start
	.globl _delay
	.globl _delay1
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
	.globl _read_sequ_PARM_3
	.globl _read_sequ_PARM_2
	.globl _read_byte_PARM_2
	.globl _write_page_PARM_2
	.globl _write_byte_PARM_2
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
_iic_send_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_iic_send_byte_1_17:
	.ds 1
_iic_send_i_1_18:
	.ds 1
_iic_recv_data_1_20:
	.ds 3
_iic_recv_i_1_21:
	.ds 1
_iic_recv_noack_data_1_23:
	.ds 3
_iic_recv_noack_i_1_24:
	.ds 1
_write_byte_PARM_2:
	.ds 1
_write_byte_p_1_26:
	.ds 3
_write_page_PARM_2:
	.ds 3
_write_page_p_1_32:
	.ds 3
_write_page_i_1_33:
	.ds 1
_read_byte_PARM_2:
	.ds 3
_read_byte_p_1_39:
	.ds 3
_read_cur_data_1_45:
	.ds 3
_read_sequ_PARM_2:
	.ds 3
_read_sequ_PARM_3:
	.ds 2
_read_sequ_p_1_48:
	.ds 3
_read_sequ_i_1_49:
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
;Allocation info for local variables in function 'iic_start'
;------------------------------------------------------------
;	strorage.c:7: void iic_start(void)		//开始
;	-----------------------------------------
;	 function iic_start
;	-----------------------------------------
_iic_start:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	strorage.c:9: SCL=0;
	clr	_P0_7
;	strorage.c:10: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:11: SDA=1;
	setb	_P0_6
;	strorage.c:12: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:13: SCL=1;
	setb	_P0_7
;	strorage.c:14: delay1(10);
	mov	dptr,#0x000A
	lcall	_delay1
;	strorage.c:15: SDA=0;
	clr	_P0_6
;	strorage.c:16: delay1(10);
	mov	dptr,#0x000A
	lcall	_delay1
;	strorage.c:17: SCL=0;
	clr	_P0_7
;	strorage.c:18: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:19: SDA=1;
	setb	_P0_6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_stop'
;------------------------------------------------------------
;	strorage.c:21: void iic_stop(void)		//停止
;	-----------------------------------------
;	 function iic_stop
;	-----------------------------------------
_iic_stop:
;	strorage.c:23: SCL=0;
	clr	_P0_7
;	strorage.c:24: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:25: SDA=0;
	clr	_P0_6
;	strorage.c:26: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:27: SCL=1;
	setb	_P0_7
;	strorage.c:28: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:29: SDA=1;
	setb	_P0_6
;	strorage.c:30: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:31: SCL=0;
	clr	_P0_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_send'
;------------------------------------------------------------
;byte                      Allocated with name '_iic_send_byte_1_17'
;i                         Allocated with name '_iic_send_i_1_18'
;------------------------------------------------------------
;	strorage.c:34: uchar iic_send(uchar byte)
;	-----------------------------------------
;	 function iic_send
;	-----------------------------------------
_iic_send:
	mov	a,dpl
	mov	dptr,#_iic_send_byte_1_17
	movx	@dptr,a
;	strorage.c:37: for( i=0; i<8; i++){
	mov	dptr,#_iic_send_i_1_18
	clr	a
	movx	@dptr,a
	mov	dptr,#_iic_send_i_1_18
	movx	a,@dptr
	mov	r7,a
00102$:
;	strorage.c:38: delay1(5);
	mov	dptr,#0x0005
	push	ar7
	lcall	_delay1
;	strorage.c:39: SDA=(byte&0x80);
	mov	dptr,#_iic_send_byte_1_17
	movx	a,@dptr
	mov	r6,a
	rlc	a
	mov  _iic_send_sloc0_1_0,c
	mov	_P0_6,c
;	strorage.c:40: byte=byte<<1;
	mov	a,r6
	add	a,r6
	mov	dptr,#_iic_send_byte_1_17
	movx	@dptr,a
;	strorage.c:41: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:42: SCL=1;
	setb	_P0_7
;	strorage.c:43: delay1(10);
	mov	dptr,#0x000A
	lcall	_delay1
	pop	ar7
;	strorage.c:44: SCL=0;
	clr	_P0_7
;	strorage.c:37: for( i=0; i<8; i++){
	inc	r7
	cjne	r7,#0x08,00110$
00110$:
	jc	00102$
;	strorage.c:46: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:47: SDA=1;
	setb	_P0_6
;	strorage.c:48: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:49: SCL=1;
	setb	_P0_7
;	strorage.c:50: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:51: i=SDA;
	mov	c,_P0_6
	clr	a
	rlc	a
	mov	r7,a
;	strorage.c:52: delay1(5);
	mov	dptr,#0x0005
	push	ar7
	lcall	_delay1
	pop	ar7
;	strorage.c:53: SCL=0;
	clr	_P0_7
;	strorage.c:54: return i;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_recv'
;------------------------------------------------------------
;data                      Allocated with name '_iic_recv_data_1_20'
;i                         Allocated with name '_iic_recv_i_1_21'
;------------------------------------------------------------
;	strorage.c:57: uchar iic_recv(uchar *data)
;	-----------------------------------------
;	 function iic_recv
;	-----------------------------------------
_iic_recv:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_iic_recv_data_1_20
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strorage.c:60: *data=0;
	mov	dptr,#_iic_recv_data_1_20
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	strorage.c:61: for( i=8; i>0; i--){
	mov	dptr,#_iic_recv_i_1_21
	mov	a,#0x08
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
00102$:
;	strorage.c:62: delay1(10);
	mov	dptr,#0x000A
	push	ar7
	lcall	_delay1
;	strorage.c:63: SCL=1;
	setb	_P0_7
;	strorage.c:64: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:65: *data=*data<<1;
	mov	dptr,#_iic_recv_data_1_20
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	add	a,acc
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	strorage.c:66: *data|=SDA;
	mov	c,_P0_6
	clr	a
	rlc	a
	orl	ar3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	strorage.c:67: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
	pop	ar7
;	strorage.c:68: SCL=0;
	clr	_P0_7
;	strorage.c:61: for( i=8; i>0; i--){
	dec	r7
	mov	a,r7
	jz	00106$
	mov	a,#0x01
00106$:
	mov	r6,a
	mov	a,r6
	jnz	00102$
;	strorage.c:70: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:71: SDA=0;
	clr	_P0_6
;	strorage.c:72: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:73: SCL=1;
	setb	_P0_7
;	strorage.c:74: delay1(10);
	mov	dptr,#0x000A
	lcall	_delay1
;	strorage.c:75: SCL=0;
	clr	_P0_7
;	strorage.c:76: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:77: SDA=1;
	setb	_P0_6
;	strorage.c:78: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_recv_noack'
;------------------------------------------------------------
;data                      Allocated with name '_iic_recv_noack_data_1_23'
;i                         Allocated with name '_iic_recv_noack_i_1_24'
;------------------------------------------------------------
;	strorage.c:81: uchar iic_recv_noack(uchar *data)
;	-----------------------------------------
;	 function iic_recv_noack
;	-----------------------------------------
_iic_recv_noack:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_iic_recv_noack_data_1_23
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strorage.c:84: *data=0;
	mov	dptr,#_iic_recv_noack_data_1_23
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	strorage.c:85: for( i=8; i>0; i--){
	mov	dptr,#_iic_recv_noack_i_1_24
	mov	a,#0x08
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
00102$:
;	strorage.c:86: delay1(10);
	mov	dptr,#0x000A
	push	ar7
	lcall	_delay1
;	strorage.c:87: SCL=1;
	setb	_P0_7
;	strorage.c:88: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:89: *data=*data<<1;
	mov	dptr,#_iic_recv_noack_data_1_23
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	add	a,acc
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	strorage.c:90: *data|=SDA;
	mov	c,_P0_6
	clr	a
	rlc	a
	orl	ar3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	strorage.c:91: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
	pop	ar7
;	strorage.c:92: SCL=0;
	clr	_P0_7
;	strorage.c:85: for( i=8; i>0; i--){
	dec	r7
	mov	a,r7
	jz	00106$
	mov	a,#0x01
00106$:
	mov	r6,a
	mov	a,r6
	jnz	00102$
;	strorage.c:94: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:95: SDA=1;
	setb	_P0_6
;	strorage.c:96: delay1(5);
	mov	dptr,#0x0005
	lcall	_delay1
;	strorage.c:97: SCL=1;
	setb	_P0_7
;	strorage.c:98: delay1(10);
	mov	dptr,#0x000A
	lcall	_delay1
;	strorage.c:99: SCL=0;
	clr	_P0_7
;	strorage.c:100: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_byte'
;------------------------------------------------------------
;byte                      Allocated with name '_write_byte_PARM_2'
;p                         Allocated with name '_write_byte_p_1_26'
;------------------------------------------------------------
;	strorage.c:105: uchar write_byte( uchar *p, uchar byte)
;	-----------------------------------------
;	 function write_byte
;	-----------------------------------------
_write_byte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_write_byte_p_1_26
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strorage.c:107: iic_start();
	lcall	_iic_start
;	strorage.c:108: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	strorage.c:109: if(iic_send(0xa0)){
	mov	dpl,#0xA0
	lcall	_iic_send
	mov	a,dpl
	jnz	00101$
	sjmp	00102$
00101$:
;	strorage.c:110: iic_stop();
	lcall	_iic_stop
;	strorage.c:111: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	strorage.c:113: if(iic_send(*((uchar *)&p+1))){
	mov	dptr,#(_write_byte_p_1_26 + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	lcall	_iic_send
	mov	a,dpl
	jnz	00103$
	sjmp	00104$
00103$:
;	strorage.c:114: iic_stop();
	lcall	_iic_stop
;	strorage.c:115: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	strorage.c:117: if(iic_send((uchar)p)){
	mov	dptr,#_write_byte_p_1_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	lcall	_iic_send
	mov	a,dpl
	jnz	00105$
	sjmp	00106$
00105$:
;	strorage.c:118: iic_stop();
	lcall	_iic_stop
;	strorage.c:119: return 1;
	mov	dpl,#0x01
	ret
00106$:
;	strorage.c:121: if(iic_send(byte)){
	mov	dptr,#_write_byte_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_iic_send
	mov	a,dpl
	jnz	00107$
	sjmp	00108$
00107$:
;	strorage.c:122: iic_stop();
	lcall	_iic_stop
;	strorage.c:123: return 1;
	mov	dpl,#0x01
	ret
00108$:
;	strorage.c:125: iic_stop();
	lcall	_iic_stop
;	strorage.c:126: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	strorage.c:127: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_page'
;------------------------------------------------------------
;data                      Allocated with name '_write_page_PARM_2'
;p                         Allocated with name '_write_page_p_1_32'
;i                         Allocated with name '_write_page_i_1_33'
;------------------------------------------------------------
;	strorage.c:133: uchar write_page( uchar *p, uchar *data)
;	-----------------------------------------
;	 function write_page
;	-----------------------------------------
_write_page:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_write_page_p_1_32
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strorage.c:136: iic_start();
	lcall	_iic_start
;	strorage.c:137: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	strorage.c:138: if(iic_send(0xa0)){
	mov	dpl,#0xA0
	lcall	_iic_send
	mov	a,dpl
	jnz	00101$
	sjmp	00102$
00101$:
;	strorage.c:139: iic_stop();
	lcall	_iic_stop
;	strorage.c:140: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	strorage.c:142: if(iic_send(*((uchar *)&p+1))){
	mov	dptr,#(_write_page_p_1_32 + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	lcall	_iic_send
	mov	a,dpl
	jnz	00103$
	sjmp	00104$
00103$:
;	strorage.c:143: iic_stop();
	lcall	_iic_stop
;	strorage.c:144: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	strorage.c:146: if(iic_send((uchar)p)){
	mov	dptr,#_write_page_p_1_32
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	lcall	_iic_send
	mov	a,dpl
	jnz	00105$
	sjmp	00106$
00105$:
;	strorage.c:147: iic_stop();
	lcall	_iic_stop
;	strorage.c:148: return 1;
	mov	dpl,#0x01
	ret
00106$:
;	strorage.c:150: for( i=0; i<64; i++){
	mov	dptr,#_write_page_i_1_33
	clr	a
	movx	@dptr,a
	mov	dptr,#_write_page_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_write_page_i_1_33
	movx	a,@dptr
	mov	r4,a
00110$:
;	strorage.c:151: if(iic_send(*data)){
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_iic_send
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00107$
	sjmp	00108$
00107$:
;	strorage.c:152: iic_stop();
	lcall	_iic_stop
;	strorage.c:153: return 1;
	mov	dpl,#0x01
	ret
00108$:
;	strorage.c:155: data++;
	inc	r5
	cjne	r5,#0x00,00133$
	inc	r6
00133$:
;	strorage.c:150: for( i=0; i<64; i++){
	inc	r4
	cjne	r4,#0x40,00134$
00134$:
	jc	00110$
;	strorage.c:157: iic_stop();
	lcall	_iic_stop
;	strorage.c:158: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	strorage.c:159: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_byte'
;------------------------------------------------------------
;data                      Allocated with name '_read_byte_PARM_2'
;p                         Allocated with name '_read_byte_p_1_39'
;------------------------------------------------------------
;	strorage.c:164: uchar read_byte( uchar *p, uchar *data)
;	-----------------------------------------
;	 function read_byte
;	-----------------------------------------
_read_byte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_read_byte_p_1_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strorage.c:166: iic_stop();
	lcall	_iic_stop
;	strorage.c:167: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	strorage.c:168: iic_start();	
	lcall	_iic_start
;	strorage.c:169: if(iic_send(0xa0)){
	mov	dpl,#0xA0
	lcall	_iic_send
	mov	a,dpl
	jnz	00101$
	sjmp	00102$
00101$:
;	strorage.c:170: iic_stop();
	lcall	_iic_stop
;	strorage.c:171: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	strorage.c:173: if(iic_send(*((uchar *)&p+1))){
	mov	dptr,#(_read_byte_p_1_39 + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	lcall	_iic_send
	mov	a,dpl
	jnz	00103$
	sjmp	00104$
00103$:
;	strorage.c:174: iic_stop();
	lcall	_iic_stop
;	strorage.c:175: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	strorage.c:177: if(iic_send((uchar)p)){
	mov	dptr,#_read_byte_p_1_39
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	lcall	_iic_send
	mov	a,dpl
	jnz	00105$
	sjmp	00106$
00105$:
;	strorage.c:178: iic_stop();
	lcall	_iic_stop
;	strorage.c:179: return 1;
	mov	dpl,#0x01
	ret
00106$:
;	strorage.c:181: iic_start();
	lcall	_iic_start
;	strorage.c:182: if(iic_send(0xa1)){
	mov	dpl,#0xA1
	lcall	_iic_send
	mov	a,dpl
	jnz	00107$
	sjmp	00108$
00107$:
;	strorage.c:183: iic_stop();
	lcall	_iic_stop
;	strorage.c:184: return 1;
	mov	dpl,#0x01
	ret
00108$:
;	strorage.c:187: iic_recv_noack(data);
	mov	dptr,#_read_byte_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_iic_recv_noack
;	strorage.c:188: iic_stop();
	lcall	_iic_stop
;	strorage.c:189: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_cur'
;------------------------------------------------------------
;data                      Allocated with name '_read_cur_data_1_45'
;------------------------------------------------------------
;	strorage.c:191: uchar read_cur( uchar *data)
;	-----------------------------------------
;	 function read_cur
;	-----------------------------------------
_read_cur:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_read_cur_data_1_45
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strorage.c:193: iic_start();
	lcall	_iic_start
;	strorage.c:194: if(iic_send(0xa1)){
	mov	dpl,#0xA1
	lcall	_iic_send
	mov	a,dpl
	jnz	00101$
	sjmp	00102$
00101$:
;	strorage.c:195: iic_stop();
	lcall	_iic_stop
;	strorage.c:196: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	strorage.c:198: iic_recv_noack(data);
	mov	dptr,#_read_cur_data_1_45
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_iic_recv_noack
;	strorage.c:199: iic_stop();
	lcall	_iic_stop
;	strorage.c:200: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_sequ'
;------------------------------------------------------------
;data                      Allocated with name '_read_sequ_PARM_2'
;size                      Allocated with name '_read_sequ_PARM_3'
;p                         Allocated with name '_read_sequ_p_1_48'
;i                         Allocated with name '_read_sequ_i_1_49'
;------------------------------------------------------------
;	strorage.c:205: uchar read_sequ(uchar *p, uchar *data, uint size)
;	-----------------------------------------
;	 function read_sequ
;	-----------------------------------------
_read_sequ:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_read_sequ_p_1_48
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strorage.c:208: iic_start();	
	lcall	_iic_start
;	strorage.c:209: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	strorage.c:210: if(iic_send(0xa0)){
	mov	dpl,#0xA0
	lcall	_iic_send
	mov	a,dpl
	jnz	00101$
	sjmp	00102$
00101$:
;	strorage.c:211: iic_stop();
	lcall	_iic_stop
;	strorage.c:212: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	strorage.c:214: if(iic_send(*((uchar *)&p+1))){
	mov	dptr,#(_read_sequ_p_1_48 + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	lcall	_iic_send
	mov	a,dpl
	jnz	00103$
	sjmp	00104$
00103$:
;	strorage.c:215: iic_stop();
	lcall	_iic_stop
;	strorage.c:216: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	strorage.c:218: if(iic_send((uchar)p)){
	mov	dptr,#_read_sequ_p_1_48
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	lcall	_iic_send
	mov	a,dpl
	jnz	00105$
	sjmp	00106$
00105$:
;	strorage.c:219: iic_stop();
	lcall	_iic_stop
;	strorage.c:220: return 1;
	mov	dpl,#0x01
	ret
00106$:
;	strorage.c:222: iic_stop();
	lcall	_iic_stop
;	strorage.c:223: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	strorage.c:225: iic_start();
	lcall	_iic_start
;	strorage.c:226: if(iic_send(0xa1)){
	mov	dpl,#0xA1
	lcall	_iic_send
	mov	a,dpl
	jnz	00107$
	sjmp	00108$
00107$:
;	strorage.c:227: iic_stop();
	lcall	_iic_stop
;	strorage.c:228: return 1;
	mov	dpl,#0x01
	ret
00108$:
;	strorage.c:230: for( i=0; i<size-1; i++){
	mov	dptr,#_read_sequ_i_1_49
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_read_sequ_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_read_sequ_i_1_49
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00111$:
	mov	dptr,#_read_sequ_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	dec	r1
	cjne	r1,#0xFF,00137$
	dec	r2
00137$:
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	subb	a,r2
	jc	00110$
	mov	dptr,#_read_sequ_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00109$
00110$:
;	strorage.c:231: iic_recv(data);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_iic_recv
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	strorage.c:232: data++;
	inc	r5
	cjne	r5,#0x00,00139$
	inc	r6
00139$:
;	strorage.c:230: for( i=0; i<size-1; i++){
	inc	r3
	cjne	r3,#0x00,00111$
	inc	r4
	sjmp	00111$
00109$:
;	strorage.c:234: iic_recv_noack(data);
	mov	dptr,#_read_sequ_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_iic_recv_noack
;	strorage.c:235: iic_stop();
	lcall	_iic_stop
;	strorage.c:236: return 0;
	mov	dpl,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
