;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:24 2016
;--------------------------------------------------------
	.module libc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat
	.globl _strcpy
	.globl _memcmp
	.globl _memcpy
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
	.globl _strcat_PARM_2
	.globl _strcpy_PARM_2
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcpy_PARM_3
	.globl _memcpy_PARM_2
	.globl _memset_PARM_3
	.globl _memset_PARM_2
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
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_memcmp_i_1_12:
	.ds 2
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
_memset_PARM_2:
	.ds 1
_memset_PARM_3:
	.ds 2
_memset_buffer_1_6:
	.ds 3
_memset_s_1_7:
	.ds 3
_memcpy_PARM_2:
	.ds 3
_memcpy_PARM_3:
	.ds 2
_memcpy_dest_1_9:
	.ds 3
_memcpy_d_1_10:
	.ds 3
_memcpy_s_1_10:
	.ds 3
_memcmp_PARM_2:
	.ds 3
_memcmp_PARM_3:
	.ds 2
_memcmp_buf1_1_11:
	.ds 3
_memcmp_b1_1_12:
	.ds 3
_memcmp_b2_1_12:
	.ds 3
_strcpy_PARM_2:
	.ds 3
_strcpy_dest_1_16:
	.ds 3
_strcat_PARM_2:
	.ds 1
_strcat_str_1_18:
	.ds 3
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
;Allocation info for local variables in function 'memset'
;------------------------------------------------------------
;c                         Allocated with name '_memset_PARM_2'
;count                     Allocated with name '_memset_PARM_3'
;buffer                    Allocated with name '_memset_buffer_1_6'
;s                         Allocated with name '_memset_s_1_7'
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	libc.c:5: void *memset(void *buffer,uchar c,uint count)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
_memset:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_memset_buffer_1_6
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:8: uchar* s=(uchar*)buffer;
	mov	dptr,#_memset_buffer_1_6
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_memset_s_1_7
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:9: for (i=0;i<count;i++){
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_memset_s_1_7
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00103$:
	mov	dptr,#_memset_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r6
	subb	a,r1
	mov	a,r7
	subb	a,r2
	jc	00102$
	sjmp	00101$
00102$:
;	libc.c:10: *s=c;
	mov	dptr,#_memset_PARM_2
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	libc.c:11: s++;
;	libc.c:9: for (i=0;i<count;i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	libc.c:13: return buffer;
	mov	dptr,#_memset_buffer_1_6
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'memcpy'
;------------------------------------------------------------
;src                       Allocated with name '_memcpy_PARM_2'
;count                     Allocated with name '_memcpy_PARM_3'
;dest                      Allocated with name '_memcpy_dest_1_9'
;d                         Allocated with name '_memcpy_d_1_10'
;s                         Allocated with name '_memcpy_s_1_10'
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	libc.c:15: void *memcpy(void *dest,void *src,uint count)
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
_memcpy:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_memcpy_dest_1_9
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:19: d=(uchar*)dest;
	mov	dptr,#_memcpy_dest_1_9
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_memcpy_d_1_10
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:20: s=(uchar*)src;
	mov	dptr,#_memcpy_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_memcpy_s_1_10
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:21: for (i=0;i<count;i++) d[i]=s[i];
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	dptr,#_memcpy_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00102$
	sjmp	00101$
00102$:
	mov	dptr,#_memcpy_d_1_10
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
	mov	dptr,#_memcpy_s_1_10
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r6
	add	a,r0
	mov	r0,a
	mov	a,r7
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	libc.c:22: return dest;
	mov	dptr,#_memcpy_dest_1_9
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2                      Allocated with name '_memcmp_PARM_2'
;count                     Allocated with name '_memcmp_PARM_3'
;buf1                      Allocated with name '_memcmp_buf1_1_11'
;b1                        Allocated with name '_memcmp_b1_1_12'
;b2                        Allocated with name '_memcmp_b2_1_12'
;i                         Allocated with name '_memcmp_i_1_12'
;------------------------------------------------------------
;	libc.c:24: int memcmp(void *buf1,void *buf2,uint count)
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_memcmp_buf1_1_11
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:28: b1=buf1;b2=buf2;
	mov	dptr,#_memcmp_buf1_1_11
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_memcmp_b1_1_12
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcmp_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_memcmp_b2_1_12
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:29: for (i=0;i<count;i++)
	clr	a
	mov	_memcmp_i_1_12,a
	mov	(_memcmp_i_1_12 + 1),a
	mov	r4,_memcmp_i_1_12
	mov	r5,(_memcmp_i_1_12 + 1)
00107$:
	mov	dptr,#_memcmp_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jc	00106$
	ljmp	00105$
00106$:
;	libc.c:31: if (b1[i]==b2[i])
	mov	dptr,#_memcmp_b1_1_12
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_memcmp_b2_1_12
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	a,r1
	cjne	a,ar0,00118$
	sjmp	00104$
00118$:
;	libc.c:33: continue;
;	libc.c:35: return (int)(b1[i]-b2[i]);
	mov	dptr,#_memcmp_b1_1_12
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_memcmp_i_1_12
	add	a,r1
	mov	r1,a
	mov	a,(_memcmp_i_1_12 + 1)
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	r3,#0x00
	mov	dptr,#_memcmp_b2_1_12
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_memcmp_i_1_12
	add	a,r0
	mov	r0,a
	mov	a,(_memcmp_i_1_12 + 1)
	addc	a,r2
	mov	r2,a
	mov	dpl,r0
	mov	dph,r2
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	mov	a,r1
	clr	c
	subb	a,r0
	mov	r1,a
	mov	a,r3
	subb	a,r7
	mov	r3,a
	mov	dpl,r1
	mov	dph,r3
	ret
00104$:
;	libc.c:29: for (i=0;i<count;i++)
	inc	r4
	cjne	r4,#0x00,00119$
	inc	r5
00119$:
	mov	_memcmp_i_1_12,r4
	mov	(_memcmp_i_1_12 + 1),r5
	ljmp	00107$
00105$:
;	libc.c:38: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strcpy'
;------------------------------------------------------------
;src                       Allocated with name '_strcpy_PARM_2'
;dest                      Allocated with name '_strcpy_dest_1_16'
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	libc.c:40: char *strcpy(char* dest,char *src)
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
_strcpy:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strcpy_dest_1_16
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:43: for (i=0;src[i]!='\0';i++) dest[i]=src[i];
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	dptr,#_strcpy_PARM_2
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
	mov	r3,a
	jz	00101$
	mov	dptr,#_strcpy_dest_1_16
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
	mov	dptr,#_strcpy_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r6
	add	a,r0
	mov	r0,a
	mov	a,r7
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	libc.c:44: return dest;
	mov	dptr,#_strcpy_dest_1_16
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;d                         Allocated with name '_strcat_PARM_2'
;str                       Allocated with name '_strcat_str_1_18'
;------------------------------------------------------------
;	libc.c:46: uchar *strcat(uchar *str,uchar d)
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
_strcat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strcat_str_1_18
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:49: *str=d;
	mov	dptr,#_strcat_str_1_18
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00103$:
;	libc.c:48: for(;*str!=0;str++);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00108$
	inc	r5
	cjne	r5,#0x00,00112$
	inc	r6
00112$:
	mov	dptr,#_strcat_str_1_18
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00108$:
	mov	dptr,#_strcat_str_1_18
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	libc.c:49: *str=d;
	mov	dptr,#_strcat_str_1_18
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcat_PARM_2
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	libc.c:50: str++;
	mov	dptr,#_strcat_str_1_18
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
;	libc.c:51: *str=0;
	mov	dptr,#_strcat_str_1_18
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
;	libc.c:52: return str;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
