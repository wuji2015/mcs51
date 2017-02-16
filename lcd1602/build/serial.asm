;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Feb  8 12:14:55 2017
;--------------------------------------------------------
	.module serial
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _display
	.globl _sendstr
	.globl _putc
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_TI1::
	.ds 1
_display_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'putc'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	serial.c:4: void putc(uchar c)
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
	mov	_SBUF,dpl
;	serial.c:7: while(!TI);
00101$:
;	serial.c:8: TI1=TI=0;
	jbc	_TI,00112$
	sjmp	00101$
00112$:
	mov	c,_TI
	clr	a
	rlc	a
	mov	_TI1,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendstr'
;------------------------------------------------------------
;str                       Allocated to stack - _bp -5
;tmp                       Allocated to registers 
;arg                       Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	serial.c:15: uint sendstr(uchar *str,...)
;	-----------------------------------------
;	 function sendstr
;	-----------------------------------------
_sendstr:
	push	_bp
	mov	_bp,sp
	inc	sp
;	serial.c:19: EA=0;
	clr	_EA
;	serial.c:20: va_start(arg,str);
	mov	a,_bp
	add	a,#0xFB
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
;	serial.c:21: TI1=0;
	mov	_TI1,#0x00
;	serial.c:22: do{
00115$:
;	serial.c:23: if(*str=='%'){
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
	mov	r3,a
	cjne	r3,#0x25,00113$
;	serial.c:24: str++;
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
;	serial.c:25: switch((uint)*str){
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r2,#0x00
	cjne	r7,#0x78,00116$
	cjne	r2,#0x00,00116$
;	serial.c:27: tmp= va_arg(arg,char);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	dec	a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	mov	ar1,r7
	mov	_SBUF,@r1
;	serial.c:29: str++;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
;	serial.c:30: while(!TI&&!TI1);
00103$:
	jb	_TI,00105$
	mov	a,_TI1
	jz	00103$
00105$:
;	serial.c:31: TI1=TI=0;
	clr	_TI
	mov	c,_TI
	clr	a
	rlc	a
	mov	_TI1,a
;	serial.c:32: break;
;	serial.c:35: }
	sjmp	00116$
00113$:
;	serial.c:37: SBUF=*str;
	mov	_SBUF,r3
;	serial.c:38: str+=1;
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
;	serial.c:39: while(!TI&&!TI1);
00109$:
	jb	_TI,00111$
	mov	a,_TI1
	jz	00109$
00111$:
;	serial.c:40: TI1=TI=0;
	clr	_TI
	mov	c,_TI
	clr	a
	rlc	a
	mov	_TI1,a
00116$:
;	serial.c:42: }while(*str != 0);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00152$
	ljmp	00115$
00152$:
;	serial.c:44: EA=1;
	setb	_EA
;	serial.c:51: return 0;
	mov	dptr,#0x0000
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;c                         Allocated with name '_display_PARM_2'
;str                       Allocated to registers r5 r6 r7 
;tmp                       Allocated to registers r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	serial.c:53: void display(uchar *str,uchar c)
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	serial.c:56: sendstr(str);
	push	ar5
	push	ar6
	push	ar7
	lcall	_sendstr
	dec	sp
	dec	sp
	dec	sp
;	serial.c:57: putc(0x30);
	mov	dpl,#0x30
	lcall	_putc
;	serial.c:58: putc('x');
	mov	dpl,#0x78
	lcall	_putc
;	serial.c:59: tmp=c>>4;
	mov	a,_display_PARM_2
	swap	a
	anl	a,#0x0F
	mov	r7,a
;	serial.c:60: for(i=0;i<2;i++){
	mov	a,#0x0F
	anl	a,_display_PARM_2
	mov	r6,a
	mov	r5,#0x00
00105$:
;	serial.c:61: if(tmp<0x0a){
	cjne	r7,#0x0A,00119$
00119$:
	jnc	00102$
;	serial.c:62: putc(tmp+0x30);
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_putc
	pop	ar5
	pop	ar6
	sjmp	00103$
00102$:
;	serial.c:64: putc(tmp+0x37);
	mov	a,#0x37
	add	a,r7
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_putc
	pop	ar5
	pop	ar6
00103$:
;	serial.c:66: tmp=c&0x0f;
	mov	ar7,r6
;	serial.c:60: for(i=0;i<2;i++){
	inc	r5
	cjne	r5,#0x02,00121$
00121$:
	jc	00105$
;	serial.c:68: sendstr("\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_sendstr
	dec	sp
	dec	sp
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0A
	.db 0x0D
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
