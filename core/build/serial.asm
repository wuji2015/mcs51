;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:24 2016
;--------------------------------------------------------
	.module serial
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_init
	.globl _receive_data
	.globl _display
	.globl _sendstr
	.globl _putc
	.globl _get_semaphore
	.globl _semaphore_init
	.globl _memset
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
	.globl _serial_end
	.globl _serial_w
	.globl _serial_r
	.globl _receive_data_PARM_2
	.globl _serial_buf
	.globl _display_PARM_2
	.globl _TI1
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
_TI1::
	.ds 1
_putc_c_1_14:
	.ds 1
_sendstr_str_1_16:
	.ds 3
_display_PARM_2:
	.ds 1
_display_str_1_19:
	.ds 3
_display_tmp_1_20:
	.ds 1
_display_i_1_20:
	.ds 1
_serial_buf::
	.ds 100
_receive_data_PARM_2:
	.ds 1
_receive_data_buf_1_24:
	.ds 3
_receive_data_i_1_25:
	.ds 1
_receive_data_start_1_25:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_serial_r::
	.ds 2
_serial_w::
	.ds 2
_serial_end::
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
;Allocation info for local variables in function 'putc'
;------------------------------------------------------------
;c                         Allocated with name '_putc_c_1_14'
;------------------------------------------------------------
;	serial.c:6: void putc(uchar c)
;	-----------------------------------------
;	 function putc
;	-----------------------------------------
_putc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_putc_c_1_14
	movx	@dptr,a
;	serial.c:8: SBUF=c;
	movx	a,@dptr
	mov	_SBUF,a
;	serial.c:9: while(!TI&&!TI1);
00102$:
	jb	_TI,00104$
	mov	dptr,#_TI1
	movx	a,@dptr
	jnz	00104$
	sjmp	00102$
00104$:
;	serial.c:10: TI1=TI=0;
	clr	_TI
	mov	dptr,#_TI1
	mov	c,_TI
	clr	a
	rlc	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendstr'
;------------------------------------------------------------
;str                       Allocated with name '_sendstr_str_1_16'
;tmp                       Allocated with name '_sendstr_tmp_1_17'
;------------------------------------------------------------
;	serial.c:17: uint sendstr(uchar *str)
;	-----------------------------------------
;	 function sendstr
;	-----------------------------------------
_sendstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_sendstr_str_1_16
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	serial.c:20: TI1=0;
	mov	dptr,#_TI1
	clr	a
	movx	@dptr,a
;	serial.c:21: do{
	mov	dptr,#_sendstr_str_1_16
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00105$:
;	serial.c:22: SBUF=*str;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_SBUF,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	serial.c:23: str+=1;
	mov	dptr,#_sendstr_str_1_16
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	serial.c:24: while(!TI&&!TI1);
00102$:
	jb	_TI,00104$
	mov	dptr,#_TI1
	movx	a,@dptr
	jnz	00104$
	sjmp	00102$
00104$:
;	serial.c:25: TI1=TI=0;
	clr	_TI
	mov	dptr,#_TI1
	mov	c,_TI
	clr	a
	rlc	a
	movx	@dptr,a
;	serial.c:26: }while(*str!=NULL);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00105$
	mov	dptr,#_sendstr_str_1_16
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	serial.c:33: return OK;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;c                         Allocated with name '_display_PARM_2'
;str                       Allocated with name '_display_str_1_19'
;tmp                       Allocated with name '_display_tmp_1_20'
;i                         Allocated with name '_display_i_1_20'
;------------------------------------------------------------
;	serial.c:35: void display(uchar *str,uchar c)
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_display_str_1_19
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	serial.c:38: sendstr(str);
	mov	dptr,#_display_str_1_19
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
	lcall	_sendstr
;	serial.c:39: putc(0x30);
	mov	dpl,#0x30
	lcall	_putc
;	serial.c:40: putc('x');
	mov	dpl,#0x78
	lcall	_putc
;	serial.c:41: tmp=c>>4;
	mov	dptr,#_display_PARM_2
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	mov	dptr,#_display_tmp_1_20
	movx	@dptr,a
;	serial.c:42: for(i=0;i<2;i++){
	mov	dptr,#_display_i_1_20
	clr	a
	movx	@dptr,a
	mov	dptr,#_display_i_1_20
	movx	a,@dptr
	mov	r7,a
00105$:
;	serial.c:43: if(tmp<0x0a){
	mov	dptr,#_display_tmp_1_20
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0A,00116$
00116$:
	jc	00101$
	sjmp	00102$
00101$:
;	serial.c:44: putc(tmp+0x30);
	mov	dptr,#_display_tmp_1_20
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	push	ar7
	lcall	_putc
	pop	ar7
	sjmp	00103$
00102$:
;	serial.c:46: putc(tmp+0x37);
	mov	dptr,#_display_tmp_1_20
	movx	a,@dptr
	add	a,#0x37
	mov	dpl,a
	push	ar7
	lcall	_putc
	pop	ar7
00103$:
;	serial.c:48: tmp=c&0x0f;
	mov	dptr,#_display_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_display_tmp_1_20
	mov	a,#0x0F
	anl	a,r6
	movx	@dptr,a
;	serial.c:42: for(i=0;i<2;i++){
	inc	r7
	cjne	r7,#0x02,00118$
00118$:
	jc	00105$
;	serial.c:50: sendstr("\n\r");
	mov	dptr,#___str_0
	mov	b,#0x80
	ljmp	_sendstr
;------------------------------------------------------------
;Allocation info for local variables in function 'receive_data'
;------------------------------------------------------------
;count                     Allocated with name '_receive_data_PARM_2'
;buf                       Allocated with name '_receive_data_buf_1_24'
;i                         Allocated with name '_receive_data_i_1_25'
;start                     Allocated with name '_receive_data_start_1_25'
;------------------------------------------------------------
;	serial.c:59: uchar receive_data(uchar *buf,uchar count)
;	-----------------------------------------
;	 function receive_data
;	-----------------------------------------
_receive_data:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_receive_data_buf_1_24
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	serial.c:63: EA=0;
	clr	_EA
;	serial.c:64: start=serial_r;
	mov	dptr,#_serial_r
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_receive_data_start_1_25
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	serial.c:65: for(i=0;i<(count-3)&&(*serial_r!='\r');i++){
	mov	dptr,#_receive_data_i_1_25
	movx	@dptr,a
	mov	dptr,#_receive_data_buf_1_24
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_receive_data_i_1_25
	movx	a,@dptr
	mov	r4,a
00104$:
	mov	dptr,#_receive_data_PARM_2
	movx	a,@dptr
	mov	r2,#0x00
	add	a,#0xFD
	mov	r3,a
	mov	a,r2
	addc	a,#0xFF
	mov	r2,a
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,r3
	mov	a,r1
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	mov	dptr,#_serial_r
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x0D,00115$
	sjmp	00101$
00115$:
;	serial.c:66: *buf=*serial_r;
	mov	dptr,#_serial_r
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	serial.c:67: buf++;
	mov	dptr,#_receive_data_buf_1_24
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	serial.c:68: serial_r++;
	mov	dptr,#_serial_r
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	serial.c:65: for(i=0;i<(count-3)&&(*serial_r!='\r');i++){
	inc	r4
	sjmp	00104$
00101$:
;	serial.c:70: *buf='\r';
	mov	dptr,#_receive_data_buf_1_24
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
	mov	a,#0x0D
	lcall	__gptrput
;	serial.c:71: *buf++;
	mov	dptr,#_receive_data_buf_1_24
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	serial.c:72: *buf='\n';
	mov	dptr,#_receive_data_buf_1_24
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
	mov	a,#0x0A
	lcall	__gptrput
;	serial.c:73: *buf++;
	mov	dptr,#_receive_data_buf_1_24
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	serial.c:74: *buf=0;
	mov	dptr,#_receive_data_buf_1_24
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
;	serial.c:75: EA=1;
	setb	_EA
;	serial.c:76: return (uchar)(serial_r-start);
	mov	dptr,#_receive_data_start_1_25
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_serial_r
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r4
	subb	a,r6
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;	serial.c:83: void uart_init(void)
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
;	serial.c:85: AUXR|=0xc0;	//定时器1,0频率提高12倍
	orl	_AUXR,#0xC0
;	serial.c:86: TMOD = 0x22;       //T1,T0 方式2
	mov	_TMOD,#0x22
;	serial.c:87: PCON |= 0x80;       //SMOD = 1
	orl	_PCON,#0x80
;	serial.c:88: SCON = 0x50;       //方式1 8个数据位
	mov	_SCON,#0x50
;	serial.c:89: TH1=0xfd;
	mov	_TH1,#0xFD
;	serial.c:90: TL1=0xfd;
	mov	_TL1,#0xFD
;	serial.c:93: TR1 = 1;               //启动定时器1
	setb	_TR1
;	serial.c:94: ET1=0;
	clr	_ET1
;	serial.c:95: ES=1;              //开串口中断
	setb	_ES
;	serial.c:96: memset(serial_buf,0,191);
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0xBF
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_serial_buf
	mov	b,#0x00
	lcall	_memset
;	serial.c:97: semaphore_init(15);
	mov	dptr,#0x000F
	lcall	_semaphore_init
;	serial.c:98: get_semaphore(15);
	mov	dptr,#0x000F
	lcall	_get_semaphore
;	serial.c:99: serial_r=serial_buf;
	mov	dptr,#_serial_r
	mov	a,#_serial_buf
	movx	@dptr,a
	mov	a,#(_serial_buf >> 8)
	inc	dptr
	movx	@dptr,a
;	serial.c:100: serial_w=serial_buf;
	mov	dptr,#_serial_w
	mov	a,#_serial_buf
	movx	@dptr,a
	mov	a,#(_serial_buf >> 8)
	inc	dptr
	movx	@dptr,a
;	serial.c:101: serial_end=serial_buf+99;
	mov	dptr,#_serial_end
	mov	a,#0x63
	add	a,#_serial_buf
	movx	@dptr,a
	clr	a
	addc	a,#(_serial_buf >> 8)
	inc	dptr
	movx	@dptr,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0A
	.db 0x0D
	.db 0x00
	.area XINIT   (CODE)
__xinit__serial_r:
	.byte _serial_buf, (_serial_buf >> 8)
__xinit__serial_w:
	.byte _serial_buf, (_serial_buf >> 8)
__xinit__serial_end:
	.byte (_serial_buf + 99), ((_serial_buf + 99) >> 8)
	.area CABS    (ABS,CODE)
