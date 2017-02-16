;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (May  7 2016) (Linux)
; This file was generated Wed Sep 21 13:59:23 2016
;--------------------------------------------------------
	.module test
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _hw_init
	.globl _key_init
	.globl _sound_init
	.globl _maichong
	.globl _idle
	.globl _pca_isr
	.globl _t1_isr
	.globl _t0_isr
	.globl _s1_isr
	.globl _s2_isr
	.globl _ext1_isr
	.globl _ext0_isr
	.globl _delay
	.globl _app
	.globl _wifi_init
	.globl _release_semaphore
	.globl _sendstr
	.globl _uart_init
	.globl _display
	.globl _task_create
	.globl _os_start
	.globl _os_init
	.globl _exit_int
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
	.globl _IAP_CONTR
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
	.globl _b
	.globl _interrupt_count
	.globl _interrupt_disable
	.globl _interrupt_enable
	.globl _te
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
_IAP_CONTR	=	0x00c7
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_t1_isr_sloc0_1_0:
	.ds 1
_pca_isr_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_delay_i_1_32:
	.ds 2
_delay_j_1_33:
	.ds 2
_interrupt_count::
	.ds 2
_te_S_1_90:
	.ds 3
_te_i_1_90:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_b::
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_ext0_isr
	.ds	5
	ljmp	_t0_isr
	.ds	5
	ljmp	_ext1_isr
	.ds	5
	ljmp	_t1_isr
	.ds	5
	ljmp	_s1_isr
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_pca_isr
	.ds	5
	ljmp	_s2_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_1_32'
;j                         Allocated with name '_delay_j_1_33'
;------------------------------------------------------------
;	test.c:15: void delay(unsigned int i)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
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
	mov	dptr,#_delay_i_1_32
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	test.c:17: uint j=100;
	mov	dptr,#_delay_i_1_32
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00106$:
;	test.c:18: for (;i!=0;i--){
	cjne	r6,#0x00,00123$
	cjne	r7,#0x00,00123$
	sjmp	00116$
00123$:
;	test.c:19: for(j=1000;j>0;j--);
	mov	dptr,#_delay_j_1_33
	mov	a,#0xE8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_delay_j_1_33
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00104$:
	dec	r4
	cjne	r4,#0xFF,00124$
	dec	r5
00124$:
	mov	a,r4
	orl	a,r5
	jz	00110$
	mov	r3,#0x01
	sjmp	00111$
00110$:
	mov	r3,#0x00
00111$:
	mov	a,r3
	jnz	00104$
;	test.c:18: for (;i!=0;i--){
	dec	r6
	cjne	r6,#0xFF,00127$
	dec	r7
00127$:
	mov	dptr,#_delay_i_1_32
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00116$:
	mov	dptr,#_delay_i_1_32
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_disable'
;------------------------------------------------------------
;	interrupt.c:3: void interrupt_disable(void)
;	-----------------------------------------
;	 function interrupt_disable
;	-----------------------------------------
_interrupt_disable:
;	interrupt.c:5: if ( interrupt_count<sizeof(uint)){
	mov	dptr,#_interrupt_count
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	subb	a,#0x00
	jc	00104$
	sjmp	00102$
00104$:
;	interrupt.c:6: interrupt_count++;
	mov	dptr,#_interrupt_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	interrupt.c:7: EA=0;
	clr	_EA
	sjmp	00106$
;	interrupt.c:9: while(1);
00102$:
	sjmp	00102$
00106$:
;	interrupt.c:11: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_enable'
;------------------------------------------------------------
;	interrupt.c:13: void interrupt_enable(void)
;	-----------------------------------------
;	 function interrupt_enable
;	-----------------------------------------
_interrupt_enable:
;	interrupt.c:15: if (interrupt_count>0){
	mov	dptr,#_interrupt_count
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00101$
	sjmp	00102$
00101$:
;	interrupt.c:16: interrupt_count--;
	mov	dptr,#_interrupt_count
	movx	a,@dptr
	add	a,#0xFF
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_interrupt_count
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	interrupt.c:18: EA=1;
	setb	_EA
00103$:
;	interrupt.c:20: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ext0_isr'
;------------------------------------------------------------
;	interrupt.c:22: void ext0_isr(void) __interrupt (0) __using (1)
;	-----------------------------------------
;	 function ext0_isr
;	-----------------------------------------
_ext0_isr:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	interrupt.c:24: enter_int;
	CLR EA 
	MOV DPL,# _interrup 
	MOV DPH,# ( _interrup>>8) 
	MOVX A, @DPTR 
	INC A 
	MOVX @DPTR, A 
	MOV R0,# _CUR_TCB_T 
	MOV DPL ,@R0 
	INC R0 
	MOV DPH , @R0 
	MOV A , SP 
	MOVX @DPTR , A 
	MOV R0 ,# _stack_int 
	MOV A , R0 
	MOV SP , ACC 
;	interrupt.c:25: delay(100);
	mov	dptr,#0x0064
	mov	psw,#0x00
	lcall	_delay
	mov	psw,#0x08
;	interrupt.c:26: P2_3=!P2_3;
	cpl	_P2_3
;	interrupt.c:27: if(P3_2==1)exit_int();
	jb	_P3_2,00101$
	sjmp	00102$
00101$:
	mov	psw,#0x00
	lcall	_exit_int
	mov	psw,#0x08
00102$:
;	interrupt.c:28: release_semaphore(1);
	mov	dptr,#0x0001
	mov	psw,#0x00
	lcall	_release_semaphore
;	interrupt.c:29: exit_int();
	mov	psw,#0x00
	lcall	_exit_int
	mov	psw,#0x08
;	interrupt.c:30: return;
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'ext1_isr'
;------------------------------------------------------------
;	interrupt.c:32: void ext1_isr(void) __interrupt (2) __using (1)
;	-----------------------------------------
;	 function ext1_isr
;	-----------------------------------------
_ext1_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	interrupt.c:34: enter_int;
	CLR EA 
	MOV DPL,# _interrup 
	MOV DPH,# ( _interrup>>8) 
	MOVX A, @DPTR 
	INC A 
	MOVX @DPTR, A 
	MOV R0,# _CUR_TCB_T 
	MOV DPL ,@R0 
	INC R0 
	MOV DPH , @R0 
	MOV A , SP 
	MOVX @DPTR , A 
	MOV R0 ,# _stack_int 
	MOV A , R0 
	MOV SP , ACC 
;	interrupt.c:35: delay(100);
	mov	dptr,#0x0064
	mov	psw,#0x00
	lcall	_delay
	mov	psw,#0x08
;	interrupt.c:36: if(P3_3==1)exit_int();
	jb	_P3_3,00101$
	sjmp	00102$
00101$:
	mov	psw,#0x00
	lcall	_exit_int
	mov	psw,#0x08
00102$:
;	interrupt.c:37: if(copy_waveing)return;
	mov	dptr,#_copy_waveing
	movx	a,@dptr
	jnz	00103$
	sjmp	00104$
00103$:
	sjmp	00105$
00104$:
;	interrupt.c:38: release_semaphore(2);
	mov	dptr,#0x0002
	mov	psw,#0x00
	lcall	_release_semaphore
;	interrupt.c:39: exit_int();
	mov	psw,#0x00
	lcall	_exit_int
	mov	psw,#0x08
;	interrupt.c:40: return;
00105$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 's2_isr'
;------------------------------------------------------------
;	interrupt.c:46: void s2_isr(void) __interrupt (8) __using (1)	//串口2中断
;	-----------------------------------------
;	 function s2_isr
;	-----------------------------------------
_s2_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	interrupt.c:48: enter_int;
	CLR EA 
	MOV DPL,# _interrup 
	MOV DPH,# ( _interrup>>8) 
	MOVX A, @DPTR 
	INC A 
	MOVX @DPTR, A 
	MOV R0,# _CUR_TCB_T 
	MOV DPL ,@R0 
	INC R0 
	MOV DPH , @R0 
	MOV A , SP 
	MOVX @DPTR , A 
	MOV R0 ,# _stack_int 
	MOV A , R0 
	MOV SP , ACC 
;	interrupt.c:49: if(S2CON&0x02){
	mov	a,_S2CON
	jb	acc.1,00105$
	sjmp	00106$
00105$:
;	interrupt.c:50: S2CON&=0xfd;	//清除中断置位
	anl	_S2CON,#0xFD
;	interrupt.c:51: TI2=1;
	mov	dptr,#_TI2
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00107$
00106$:
;	interrupt.c:53: S2CON&=0xfc;
	anl	_S2CON,#0xFC
;	interrupt.c:54: if(wifi_data_w==wifi_data_end)wifi_data_w=wifi_data;
	mov	dptr,#_wifi_data_w
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_wifi_data_end
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00102$
	mov	a,r7
	cjne	a,ar5,00102$
	mov	dptr,#_wifi_data_w
	mov	a,#_wifi_data
	movx	@dptr,a
	mov	a,#(_wifi_data >> 8)
	inc	dptr
	movx	@dptr,a
00102$:
;	interrupt.c:55: *wifi_data_w=S2BUF;
	mov	dptr,#_wifi_data_w
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,_S2BUF
	movx	@dptr,a
;	interrupt.c:56: if(*wifi_data_w=='\r')release_semaphore(14);
	mov	dptr,#_wifi_data_w
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0D,00104$
	mov	dptr,#0x000E
	mov	psw,#0x00
	lcall	_release_semaphore
	mov	psw,#0x08
00104$:
;	interrupt.c:57: wifi_data_w++;
	mov	dptr,#_wifi_data_w
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00107$:
;	interrupt.c:59: exit_int();
	mov	psw,#0x00
	lcall	_exit_int
	mov	psw,#0x08
;	interrupt.c:60: return;
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 's1_isr'
;------------------------------------------------------------
;	interrupt.c:66: void s1_isr(void) __interrupt (4) __using (1)
;	-----------------------------------------
;	 function s1_isr
;	-----------------------------------------
_s1_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	interrupt.c:68: enter_int;
	CLR EA 
	MOV DPL,# _interrup 
	MOV DPH,# ( _interrup>>8) 
	MOVX A, @DPTR 
	INC A 
	MOVX @DPTR, A 
	MOV R0,# _CUR_TCB_T 
	MOV DPL ,@R0 
	INC R0 
	MOV DPH , @R0 
	MOV A , SP 
	MOVX @DPTR , A 
	MOV R0 ,# _stack_int 
	MOV A , R0 
	MOV SP , ACC 
;	interrupt.c:69: if(RI){
	jb	_RI,00105$
	ljmp	00106$
00105$:
;	interrupt.c:70: RI=0;
	clr	_RI
;	interrupt.c:71: if(serial_w==serial_end)serial_w=serial_buf;
	mov	dptr,#_serial_w
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_serial_end
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00102$
	mov	a,r7
	cjne	a,ar5,00102$
	mov	dptr,#_serial_w
	mov	a,#_serial_buf
	movx	@dptr,a
	mov	a,#(_serial_buf >> 8)
	inc	dptr
	movx	@dptr,a
00102$:
;	interrupt.c:72: *serial_w=SBUF;
	mov	dptr,#_serial_w
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,_SBUF
	movx	@dptr,a
;	interrupt.c:73: SBUF=*serial_w;
	mov	dptr,#_serial_w
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	_SBUF,a
;	interrupt.c:74: if(*serial_w=='\r'){
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0D,00104$
;	interrupt.c:76: release_semaphore(15);
	mov	dptr,#0x000F
	mov	psw,#0x00
	lcall	_release_semaphore
	mov	psw,#0x08
00104$:
;	interrupt.c:78: serial_w+=1;
	mov	dptr,#_serial_w
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_serial_w
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00107$
00106$:
;	interrupt.c:80: TI=0;
	clr	_TI
;	interrupt.c:81: TI1=1;
	mov	dptr,#_TI1
	mov	a,#0x01
	movx	@dptr,a
00107$:
;	interrupt.c:83: exit_int();
	mov	psw,#0x00
	lcall	_exit_int
	mov	psw,#0x08
;	interrupt.c:84: return;
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 't0_isr'
;------------------------------------------------------------
;	interrupt.c:86: void t0_isr(void) __interrupt (1) __using (1)
;	-----------------------------------------
;	 function t0_isr
;	-----------------------------------------
_t0_isr:
;	interrupt.c:88: return;
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 't1_isr'
;------------------------------------------------------------
;	interrupt.c:95: void t1_isr(void) __interrupt (3) __using (1)
;	-----------------------------------------
;	 function t1_isr
;	-----------------------------------------
_t1_isr:
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	interrupt.c:99: if(copy_waveing){
	mov	dptr,#_copy_waveing
	movx	a,@dptr
	jnz	00113$
	ljmp	00114$
00113$:
;	interrupt.c:100: if(copywave_count<400){
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
	jc	00104$
	ljmp	00105$
00104$:
;	interrupt.c:101: if(copywave_bit_count<8){
	mov	dptr,#_copywave_bit_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00131$
00131$:
	jc	00103$
;	interrupt.c:103: copywave_bit_count=0;
	mov	dptr,#_copywave_bit_count
	clr	a
	movx	@dptr,a
;	interrupt.c:104: copywave_p++;
	mov	dptr,#_copywave_p
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	interrupt.c:105: copywave_count++;
	mov	dptr,#_copywave_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00103$:
;	interrupt.c:107: copywave_bit_count++;
	mov	dptr,#_copywave_bit_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	interrupt.c:108: *copywave_p=*copywave_p<<1;
	mov	dptr,#_copywave_p
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
	lcall	__gptrget
	add	a,acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	interrupt.c:109: *copywave_p|=input;
	mov	dptr,#_copywave_p
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
	lcall	__gptrget
	mov	r4,a
	mov	c,_P2_7
	clr	a
	rlc	a
	mov	r3,a
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	ljmp	00116$
00105$:
;	interrupt.c:111: TR1=0;
	clr	_TR1
;	interrupt.c:112: TR0=0;
	clr	_TR0
	ljmp	00116$
00114$:
;	interrupt.c:115: if(copywave_count<400){
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
	jc	00110$
	sjmp	00111$
00110$:
;	interrupt.c:116: if(copywave_bit_count<8){
	mov	dptr,#_copywave_bit_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00134$
00134$:
	jc	00109$
;	interrupt.c:118: copywave_p++;
	mov	dptr,#_copywave_p
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	interrupt.c:119: copywave_count++;
	mov	dptr,#_copywave_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	interrupt.c:120: copywave_bit_count=0;
	mov	dptr,#_copywave_bit_count
	clr	a
	movx	@dptr,a
00109$:
;	interrupt.c:122: TR0=*copywave_p&0x80;
	mov	dptr,#_copywave_p
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
	lcall	__gptrget
	rlc	a
	mov  _t1_isr_sloc0_1_0,c
	mov	_TR0,c
;	interrupt.c:123: *copywave_p=*copywave_p<<1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,acc
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	interrupt.c:124: copywave_bit_count++;
	mov	dptr,#_copywave_bit_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00116$
00111$:
;	interrupt.c:126: TR1=0;
	clr	_TR1
;	interrupt.c:127: TR0=0;
	clr	_TR0
00116$:
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'pca_isr'
;------------------------------------------------------------
;	interrupt.c:137: void pca_isr(void) __interrupt (7) __using (1)
;	-----------------------------------------
;	 function pca_isr
;	-----------------------------------------
_pca_isr:
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	interrupt.c:139: CCF0=0;
	clr	_CCF0
;	interrupt.c:140: CCAP0L=time;
	mov	dptr,#_time
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_CCAP0L,r6
;	interrupt.c:141: CCAP0H=time>>8;
	mov	_CCAP0H,r7
;	interrupt.c:142: time+=TIME;
	mov	dptr,#_time
	mov	a,#0x4C
	add	a,r6
	movx	@dptr,a
	mov	a,#0x04
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	interrupt.c:143: if(copy_waveing){
	mov	dptr,#_copy_waveing
	movx	a,@dptr
	jnz	00113$
	ljmp	00114$
00113$:
;	interrupt.c:144: if(copywave_count<400){
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
	jc	00104$
	ljmp	00105$
00104$:
;	interrupt.c:145: if(copywave_bit_count<8){
	mov	dptr,#_copywave_bit_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00131$
00131$:
	jc	00103$
;	interrupt.c:147: copywave_bit_count=0;
	mov	dptr,#_copywave_bit_count
	clr	a
	movx	@dptr,a
;	interrupt.c:148: copywave_p++;
	mov	dptr,#_copywave_p
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	interrupt.c:149: copywave_count++;
	mov	dptr,#_copywave_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00103$:
;	interrupt.c:151: copywave_bit_count++;
	mov	dptr,#_copywave_bit_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	interrupt.c:152: *copywave_p=*copywave_p<<1;
	mov	dptr,#_copywave_p
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
	lcall	__gptrget
	add	a,acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	interrupt.c:153: *copywave_p|=input;
	mov	dptr,#_copywave_p
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
	lcall	__gptrget
	mov	r4,a
	mov	c,_P2_7
	clr	a
	rlc	a
	mov	r3,a
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	ljmp	00116$
00105$:
;	interrupt.c:155: CR=0;
	clr	_CR
;	interrupt.c:156: TR0=0;
	clr	_TR0
;	interrupt.c:157: copy_waveing=0;
	mov	dptr,#_copy_waveing
	clr	a
	movx	@dptr,a
	ljmp	00116$
00114$:
;	interrupt.c:160: if(copywave_count<400){
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
	jc	00110$
	sjmp	00111$
00110$:
;	interrupt.c:161: if(copywave_bit_count<8){
	mov	dptr,#_copywave_bit_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00134$
00134$:
	jc	00109$
;	interrupt.c:163: copywave_p++;
	mov	dptr,#_copywave_p
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	interrupt.c:164: copywave_count++;
	mov	dptr,#_copywave_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	interrupt.c:165: copywave_bit_count=0;
	mov	dptr,#_copywave_bit_count
	clr	a
	movx	@dptr,a
00109$:
;	interrupt.c:167: TR0=*copywave_p&0x80;
	mov	dptr,#_copywave_p
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
	lcall	__gptrget
	rlc	a
	mov  _pca_isr_sloc0_1_0,c
	mov	_TR0,c
;	interrupt.c:168: *copywave_p=*copywave_p<<1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,acc
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	interrupt.c:169: copywave_bit_count++;
	mov	dptr,#_copywave_bit_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00116$
00111$:
;	interrupt.c:171: CR=0;
	clr	_CR
;	interrupt.c:172: TR0=0;
	clr	_TR0
00116$:
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'idle'
;------------------------------------------------------------
;	test.c:25: void idle(void)
;	-----------------------------------------
;	 function idle
;	-----------------------------------------
_idle:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	test.c:27: while(1){
00102$:
;	test.c:28: P2_3=!P2_3;
	cpl	_P2_3
;	test.c:29: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	test.c:31: return;
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'te'
;------------------------------------------------------------
;S                         Allocated with name '_te_S_1_90'
;i                         Allocated with name '_te_i_1_90'
;------------------------------------------------------------
;	test.c:34: void te(void)
;	-----------------------------------------
;	 function te
;	-----------------------------------------
_te:
;	test.c:36: uchar *S=(uchar*)SP-2;
	mov	r5,_SP
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r5
	add	a,#0xFE
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dptr,#_te_S_1_90
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	test.c:38: for(i=0;i<20;i++){
	mov	dptr,#_te_i_1_90
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_te_i_1_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_te_S_1_90
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00102$:
;	test.c:39: display("SP=",(uchar)S);
	mov	ar0,r3
	mov	ar1,r4
	mov	ar2,r5
	mov	dptr,#_display_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_display
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	test.c:40: display("@SP=",*S);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#_display_PARM_2
	movx	@dptr,a
	mov	dptr,#___str_1
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_display
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	test.c:41: display("i=",(uchar)i);
	mov	dptr,#_display_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_display
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	test.c:42: S--;
	dec	r3
	cjne	r3,#0xFF,00110$
	dec	r4
00110$:
;	test.c:38: for(i=0;i<20;i++){
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
00111$:
	clr	c
	mov	a,r6
	subb	a,#0x14
	mov	a,r7
	subb	a,#0x00
	jnc	00112$
	ljmp	00102$
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'maichong'
;------------------------------------------------------------
;	test.c:47: void maichong(void)		//红外脉冲发生定时器输出初始化,发射定时器初始化
;	-----------------------------------------
;	 function maichong
;	-----------------------------------------
_maichong:
;	test.c:49: TH0=0x72;
	mov	_TH0,#0x72
;	test.c:50: TL0=0x72;
	mov	_TL0,#0x72
;	test.c:51: WAKE_CLKO=0x01;
	mov	_WAKE_CLKO,#0x01
;	test.c:52: AUXR|=0xc0;	//定时器1,0频率提高12倍
	orl	_AUXR,#0xC0
;	test.c:53: TMOD = 0x22;       //T1,T0 方式2
	mov	_TMOD,#0x22
;	test.c:55: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sound_init'
;------------------------------------------------------------
;	test.c:57: void sound_init(void)		//声音初始化
;	-----------------------------------------
;	 function sound_init
;	-----------------------------------------
_sound_init:
;	test.c:59: P0_2=0;
	clr	_P0_2
;	test.c:60: delay(300);
	mov	dptr,#0x012C
	lcall	_delay
;	test.c:61: P0_2=1;
	setb	_P0_2
;	test.c:62: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_init'
;------------------------------------------------------------
;	test.c:64: void key_init( void)		//按键初始化
;	-----------------------------------------
;	 function key_init
;	-----------------------------------------
_key_init:
;	test.c:66: EX1=1;IT1=1;
	setb	_EX1
	setb	_IT1
;	test.c:67: EX0=1;IT0=1;IP=0x02;
	setb	_EX0
	setb	_IT0
	mov	_IP,#0x02
;	test.c:68: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hw_init'
;------------------------------------------------------------
;	test.c:73: void hw_init(void)
;	-----------------------------------------
;	 function hw_init
;	-----------------------------------------
_hw_init:
;	test.c:75: interrupt_count=0;
	mov	dptr,#_interrupt_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	test.c:76: maichong();
	lcall	_maichong
;	test.c:77: sound_init();
	lcall	_sound_init
;	test.c:78: pca_timer();
	lcall	_pca_timer
;	test.c:79: uart_init();
	lcall	_uart_init
;	test.c:80: wifi_init();
	lcall	_wifi_init
;	test.c:81: key_init();
;	test.c:82: return;
	ljmp	_key_init
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	test.c:85: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	test.c:87: hw_init();
	lcall	_hw_init
;	test.c:88: os_init();
	lcall	_os_init
;	test.c:89: task_create(idle,7);	
	mov	r5,#_idle
	mov	r6,#(_idle >> 8)
	mov	r7,#0x80
	mov	dptr,#_task_create_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_task_create
;	test.c:90: app();
	lcall	_app
;	test.c:92: os_start();
	lcall	_os_start
;	test.c:93: while(1){
00102$:
;	test.c:94: sendstr("switch_fail\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_sendstr
	sjmp	00102$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "SP="
	.db 0x00
___str_1:
	.ascii "@SP="
	.db 0x00
___str_2:
	.ascii "i="
	.db 0x00
___str_3:
	.ascii "switch_fail"
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
__xinit__b:
	.byte #0x34,#0x12	; 4660
	.area CABS    (ABS,CODE)
