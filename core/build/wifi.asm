;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:24 2016
;--------------------------------------------------------
	.module wifi
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wifi_init
	.globl _receive_data2
	.globl _sendstr2
	.globl _get_semaphore
	.globl _semaphore_init
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
	.globl _receive_data2_PARM_2
	.globl _wifi_data_end
	.globl _wifi_data_w
	.globl _wifi_data_r
	.globl _wifi_buf_end
	.globl _wifi_buf_w
	.globl _wifi_buf_r
	.globl _wifi_data
	.globl _wifi_buf
	.globl _TI2
	.globl _cur_send
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
_cur_send::
	.ds 3
_TI2::
	.ds 1
_wifi_buf::
	.ds 30
_wifi_data::
	.ds 100
_wifi_buf_r::
	.ds 2
_wifi_buf_w::
	.ds 2
_wifi_buf_end::
	.ds 2
_wifi_data_r::
	.ds 2
_wifi_data_w::
	.ds 2
_wifi_data_end::
	.ds 2
_receive_data2_PARM_2:
	.ds 1
_receive_data2_buf_1_27:
	.ds 3
_receive_data2_i_1_28:
	.ds 1
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
;Allocation info for local variables in function 'sendstr2'
;------------------------------------------------------------
;str                       Allocated to stack - _bp -5
;tmp                       Allocated to registers 
;arg                       Allocated to registers r7 
;------------------------------------------------------------
;	wifi.c:33: uint sendstr2(uchar *str,...)
;	-----------------------------------------
;	 function sendstr2
;	-----------------------------------------
_sendstr2:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
;	wifi.c:37: va_start(arg,str);
	mov	a,_bp
	add	a,#0xFB
	mov	r7,a
;	wifi.c:38: TI2=0;
	mov	dptr,#_TI2
	clr	a
	movx	@dptr,a
;	wifi.c:39: do{
00115$:
;	wifi.c:40: if(*str=='%'){
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x25,00113$
;	wifi.c:41: str++;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00136$
	inc	r0
	inc	@r0
00136$:
;	wifi.c:42: switch((uint)*str){
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	r6,#0x00
;	wifi.c:43: case 'x':
	cjne	r4,#0x78,00116$
	cjne	r6,#0x00,00116$
;	wifi.c:44: tmp= va_arg(arg,char);
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	mov	ar1,r6
	mov	_S2BUF,@r1
;	wifi.c:46: str++;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00138$
	inc	r0
	inc	@r0
00138$:
;	wifi.c:47: while(!TI2&&!(S2CON&0x02));
00103$:
	mov	dptr,#_TI2
	movx	a,@dptr
	jnz	00105$
	mov	a,_S2CON
	jb	acc.1,00105$
	sjmp	00103$
00105$:
;	wifi.c:48: S2CON&=0xfd;
	anl	_S2CON,#0xFD
;	wifi.c:49: TI2=0;
	mov	dptr,#_TI2
	clr	a
	movx	@dptr,a
;	wifi.c:50: break;
;	wifi.c:51: default:
	sjmp	00116$
;	wifi.c:53: }
00113$:
;	wifi.c:55: S2BUF=*str;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_S2BUF,a
;	wifi.c:56: str++;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
;	wifi.c:57: while(!TI2&&!(S2CON&0x02));
00109$:
	mov	dptr,#_TI2
	movx	a,@dptr
	jnz	00111$
	mov	a,_S2CON
	jb	acc.1,00111$
	sjmp	00109$
00111$:
;	wifi.c:58: TI2=0;
	mov	dptr,#_TI2
	clr	a
	movx	@dptr,a
;	wifi.c:59: S2CON&=0xfd;
	anl	_S2CON,#0xFD
00116$:
;	wifi.c:61: }while(*str!=NULL);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jz	00143$
	ljmp	00115$
00143$:
;	wifi.c:69: return OK;
	mov	dptr,#0x0000
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receive_data2'
;------------------------------------------------------------
;count                     Allocated with name '_receive_data2_PARM_2'
;buf                       Allocated with name '_receive_data2_buf_1_27'
;i                         Allocated with name '_receive_data2_i_1_28'
;------------------------------------------------------------
;	wifi.c:75: void receive_data2(uchar *buf,uchar count)
;	-----------------------------------------
;	 function receive_data2
;	-----------------------------------------
_receive_data2:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_receive_data2_buf_1_27
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	wifi.c:78: EA=0;
	clr	_EA
;	wifi.c:79: for(i=0;i<(count-3);i++){
	mov	dptr,#_receive_data2_i_1_28
	clr	a
	movx	@dptr,a
	mov	dptr,#_receive_data2_buf_1_27
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_receive_data2_i_1_28
	movx	a,@dptr
	mov	r4,a
00108$:
	mov	dptr,#_receive_data2_PARM_2
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
	jc	00107$
	ljmp	00106$
00107$:
;	wifi.c:80: if (*wifi_data_r!='\r'){
	mov	dptr,#_wifi_data_r
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x0D,00122$
	sjmp	00104$
00122$:
;	wifi.c:81: if(wifi_data_r==wifi_data_end)wifi_data_r=wifi_data;
	mov	dptr,#_wifi_data_r
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_wifi_data_end
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r2
	cjne	a,ar0,00102$
	mov	a,r3
	cjne	a,ar1,00102$
	mov	dptr,#_wifi_data_r
	mov	a,#_wifi_data
	movx	@dptr,a
	mov	a,#(_wifi_data >> 8)
	inc	dptr
	movx	@dptr,a
00102$:
;	wifi.c:82: *buf=*wifi_data_r;
	mov	dptr,#_wifi_data_r
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
;	wifi.c:83: buf++;
	mov	dptr,#_receive_data2_buf_1_27
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	wifi.c:84: wifi_data_r++;
	mov	dptr,#_wifi_data_r
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00109$
00104$:
;	wifi.c:86: wifi_data_r++;
	mov	dptr,#_wifi_data_r
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	wifi.c:87: wifi_data_r++;
	mov	dptr,#_wifi_data_r
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	wifi.c:88: break;
	sjmp	00106$
00109$:
;	wifi.c:79: for(i=0;i<(count-3);i++){
	inc	r4
	ljmp	00108$
00106$:
;	wifi.c:91: *buf='\r';
	mov	dptr,#_receive_data2_buf_1_27
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
;	wifi.c:92: buf++;
	mov	dptr,#_receive_data2_buf_1_27
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
;	wifi.c:93: *buf='\n';
	mov	dptr,#_receive_data2_buf_1_27
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
;	wifi.c:94: buf++;
	mov	dptr,#_receive_data2_buf_1_27
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
;	wifi.c:95: *buf='\0';
	mov	dptr,#_receive_data2_buf_1_27
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
;	wifi.c:96: EA=1;
	setb	_EA
;	wifi.c:97: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wifi_init'
;------------------------------------------------------------
;	wifi.c:105: uint wifi_init(void)
;	-----------------------------------------
;	 function wifi_init
;	-----------------------------------------
_wifi_init:
;	wifi.c:107: S2CON=0x50;	//模式1;允许接收
	mov	_S2CON,#0x50
;	wifi.c:108: IE2=0x01;	//开启中断
	mov	_IE2,#0x01
;	wifi.c:109: BRT=0xfd;
	mov	_BRT,#0xFD
;	wifi.c:110: AUXR|=0x14;	//独立波特率发生器,1T模式,不加倍
	orl	_AUXR,#0x14
;	wifi.c:112: wifi_buf_r=wifi_buf_w=wifi_buf;
	mov	dptr,#_wifi_buf_w
	mov	a,#_wifi_buf
	movx	@dptr,a
	mov	a,#(_wifi_buf >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_wifi_buf_r
	mov	a,#_wifi_buf
	movx	@dptr,a
	mov	a,#(_wifi_buf >> 8)
	inc	dptr
	movx	@dptr,a
;	wifi.c:113: wifi_buf_end=wifi_buf+29;
	mov	dptr,#_wifi_buf_end
	mov	a,#0x1D
	add	a,#_wifi_buf
	movx	@dptr,a
	clr	a
	addc	a,#(_wifi_buf >> 8)
	inc	dptr
	movx	@dptr,a
;	wifi.c:114: wifi_data_r=wifi_data_w=wifi_data;
	mov	dptr,#_wifi_data_w
	mov	a,#_wifi_data
	movx	@dptr,a
	mov	a,#(_wifi_data >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_wifi_data_r
	mov	a,#_wifi_data
	movx	@dptr,a
	mov	a,#(_wifi_data >> 8)
	inc	dptr
	movx	@dptr,a
;	wifi.c:115: wifi_data_end=wifi_data+99;
	mov	dptr,#_wifi_data_end
	mov	a,#0x63
	add	a,#_wifi_data
	movx	@dptr,a
	clr	a
	addc	a,#(_wifi_data >> 8)
	inc	dptr
	movx	@dptr,a
;	wifi.c:116: semaphore_init(14);
	mov	dptr,#0x000E
	lcall	_semaphore_init
;	wifi.c:117: get_semaphore(14);
	mov	dptr,#0x000E
	lcall	_get_semaphore
;	wifi.c:118: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
