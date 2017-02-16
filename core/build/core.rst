                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:23 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module core
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _MASK
                                     13 	.globl _READYMAP
                                     14 	.globl _os_start
                                     15 	.globl _os_init
                                     16 	.globl _task_del
                                     17 	.globl _task_create
                                     18 	.globl _tcb_init
                                     19 	.globl _stack_init
                                     20 	.globl _schedule
                                     21 	.globl _switch_task_int
                                     22 	.globl _switch_task
                                     23 	.globl _CF
                                     24 	.globl _CR
                                     25 	.globl _CCF1
                                     26 	.globl _CCF0
                                     27 	.globl _TF2
                                     28 	.globl _EXF2
                                     29 	.globl _RCLK
                                     30 	.globl _TCLK
                                     31 	.globl _EXEN2
                                     32 	.globl _TR2
                                     33 	.globl _C_T2
                                     34 	.globl _CP_RL2
                                     35 	.globl _T2CON_7
                                     36 	.globl _T2CON_6
                                     37 	.globl _T2CON_5
                                     38 	.globl _T2CON_4
                                     39 	.globl _T2CON_3
                                     40 	.globl _T2CON_2
                                     41 	.globl _T2CON_1
                                     42 	.globl _T2CON_0
                                     43 	.globl _PT2
                                     44 	.globl _ET2
                                     45 	.globl _CY
                                     46 	.globl _AC
                                     47 	.globl _F0
                                     48 	.globl _RS1
                                     49 	.globl _RS0
                                     50 	.globl _OV
                                     51 	.globl _F1
                                     52 	.globl _P
                                     53 	.globl _PS
                                     54 	.globl _PT1
                                     55 	.globl _PX1
                                     56 	.globl _PT0
                                     57 	.globl _PX0
                                     58 	.globl _RD
                                     59 	.globl _WR
                                     60 	.globl _T1
                                     61 	.globl _T0
                                     62 	.globl _INT1
                                     63 	.globl _INT0
                                     64 	.globl _TXD
                                     65 	.globl _RXD
                                     66 	.globl _P3_7
                                     67 	.globl _P3_6
                                     68 	.globl _P3_5
                                     69 	.globl _P3_4
                                     70 	.globl _P3_3
                                     71 	.globl _P3_2
                                     72 	.globl _P3_1
                                     73 	.globl _P3_0
                                     74 	.globl _EA
                                     75 	.globl _ES
                                     76 	.globl _ET1
                                     77 	.globl _EX1
                                     78 	.globl _ET0
                                     79 	.globl _EX0
                                     80 	.globl _P2_7
                                     81 	.globl _P2_6
                                     82 	.globl _P2_5
                                     83 	.globl _P2_4
                                     84 	.globl _P2_3
                                     85 	.globl _P2_2
                                     86 	.globl _P2_1
                                     87 	.globl _P2_0
                                     88 	.globl _SM0
                                     89 	.globl _SM1
                                     90 	.globl _SM2
                                     91 	.globl _REN
                                     92 	.globl _TB8
                                     93 	.globl _RB8
                                     94 	.globl _TI
                                     95 	.globl _RI
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _PCA_PWM1
                                    121 	.globl _PCA_PWM0
                                    122 	.globl _CCAP1H
                                    123 	.globl _CCAP1L
                                    124 	.globl _CCAP0H
                                    125 	.globl _CCAP0L
                                    126 	.globl _CH
                                    127 	.globl _CL
                                    128 	.globl _CCAPM1
                                    129 	.globl _CCAPM0
                                    130 	.globl _CMOD
                                    131 	.globl _CCON
                                    132 	.globl _WAKE_CLKO
                                    133 	.globl _BRT
                                    134 	.globl _IE2
                                    135 	.globl _S2BUF
                                    136 	.globl _S2CON
                                    137 	.globl _AUXR1
                                    138 	.globl _AUXR
                                    139 	.globl _TH2
                                    140 	.globl _TL2
                                    141 	.globl _RCAP2H
                                    142 	.globl _RCAP2L
                                    143 	.globl _T2CON
                                    144 	.globl _B
                                    145 	.globl _ACC
                                    146 	.globl _PSW
                                    147 	.globl _IP
                                    148 	.globl _P3
                                    149 	.globl _IE
                                    150 	.globl _P2
                                    151 	.globl _SBUF
                                    152 	.globl _SCON
                                    153 	.globl _P1
                                    154 	.globl _TH1
                                    155 	.globl _TH0
                                    156 	.globl _TL1
                                    157 	.globl _TL0
                                    158 	.globl _TMOD
                                    159 	.globl _TCON
                                    160 	.globl _PCON
                                    161 	.globl _DPH
                                    162 	.globl _DPL
                                    163 	.globl _SP
                                    164 	.globl _P0
                                    165 	.globl _OS_START
                                    166 	.globl _task_create_PARM_2
                                    167 	.globl _tcb_init_PARM_2
                                    168 	.globl _stack_init_PARM_2
                                    169 	.globl _tcb_t
                                    170 	.globl _interrup
                                    171 	.globl _tcb
                                    172 	.globl _CUR
                                    173 	.globl _READY
                                    174 	.globl _HIGHT_TCB_T
                                    175 	.globl _CUR_TCB_T
                                    176 	.globl _stack_int
                                    177 	.globl _os_stack
                                    178 ;--------------------------------------------------------
                                    179 ; special function registers
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           000080   183 _P0	=	0x0080
                           000081   184 _SP	=	0x0081
                           000082   185 _DPL	=	0x0082
                           000083   186 _DPH	=	0x0083
                           000087   187 _PCON	=	0x0087
                           000088   188 _TCON	=	0x0088
                           000089   189 _TMOD	=	0x0089
                           00008A   190 _TL0	=	0x008a
                           00008B   191 _TL1	=	0x008b
                           00008C   192 _TH0	=	0x008c
                           00008D   193 _TH1	=	0x008d
                           000090   194 _P1	=	0x0090
                           000098   195 _SCON	=	0x0098
                           000099   196 _SBUF	=	0x0099
                           0000A0   197 _P2	=	0x00a0
                           0000A8   198 _IE	=	0x00a8
                           0000B0   199 _P3	=	0x00b0
                           0000B8   200 _IP	=	0x00b8
                           0000D0   201 _PSW	=	0x00d0
                           0000E0   202 _ACC	=	0x00e0
                           0000F0   203 _B	=	0x00f0
                           0000C8   204 _T2CON	=	0x00c8
                           0000CA   205 _RCAP2L	=	0x00ca
                           0000CB   206 _RCAP2H	=	0x00cb
                           0000CC   207 _TL2	=	0x00cc
                           0000CD   208 _TH2	=	0x00cd
                           00008E   209 _AUXR	=	0x008e
                           0000A2   210 _AUXR1	=	0x00a2
                           00009A   211 _S2CON	=	0x009a
                           00009B   212 _S2BUF	=	0x009b
                           0000AF   213 _IE2	=	0x00af
                           00009C   214 _BRT	=	0x009c
                           00008F   215 _WAKE_CLKO	=	0x008f
                           0000D8   216 _CCON	=	0x00d8
                           0000D9   217 _CMOD	=	0x00d9
                           0000DA   218 _CCAPM0	=	0x00da
                           0000DB   219 _CCAPM1	=	0x00db
                           0000E9   220 _CL	=	0x00e9
                           0000F9   221 _CH	=	0x00f9
                           0000EA   222 _CCAP0L	=	0x00ea
                           0000FA   223 _CCAP0H	=	0x00fa
                           0000EB   224 _CCAP1L	=	0x00eb
                           0000FB   225 _CCAP1H	=	0x00fb
                           0000F2   226 _PCA_PWM0	=	0x00f2
                           0000F3   227 _PCA_PWM1	=	0x00f3
                                    228 ;--------------------------------------------------------
                                    229 ; special function bits
                                    230 ;--------------------------------------------------------
                                    231 	.area RSEG    (ABS,DATA)
      000000                        232 	.org 0x0000
                           000080   233 _P0_0	=	0x0080
                           000081   234 _P0_1	=	0x0081
                           000082   235 _P0_2	=	0x0082
                           000083   236 _P0_3	=	0x0083
                           000084   237 _P0_4	=	0x0084
                           000085   238 _P0_5	=	0x0085
                           000086   239 _P0_6	=	0x0086
                           000087   240 _P0_7	=	0x0087
                           000088   241 _IT0	=	0x0088
                           000089   242 _IE0	=	0x0089
                           00008A   243 _IT1	=	0x008a
                           00008B   244 _IE1	=	0x008b
                           00008C   245 _TR0	=	0x008c
                           00008D   246 _TF0	=	0x008d
                           00008E   247 _TR1	=	0x008e
                           00008F   248 _TF1	=	0x008f
                           000090   249 _P1_0	=	0x0090
                           000091   250 _P1_1	=	0x0091
                           000092   251 _P1_2	=	0x0092
                           000093   252 _P1_3	=	0x0093
                           000094   253 _P1_4	=	0x0094
                           000095   254 _P1_5	=	0x0095
                           000096   255 _P1_6	=	0x0096
                           000097   256 _P1_7	=	0x0097
                           000098   257 _RI	=	0x0098
                           000099   258 _TI	=	0x0099
                           00009A   259 _RB8	=	0x009a
                           00009B   260 _TB8	=	0x009b
                           00009C   261 _REN	=	0x009c
                           00009D   262 _SM2	=	0x009d
                           00009E   263 _SM1	=	0x009e
                           00009F   264 _SM0	=	0x009f
                           0000A0   265 _P2_0	=	0x00a0
                           0000A1   266 _P2_1	=	0x00a1
                           0000A2   267 _P2_2	=	0x00a2
                           0000A3   268 _P2_3	=	0x00a3
                           0000A4   269 _P2_4	=	0x00a4
                           0000A5   270 _P2_5	=	0x00a5
                           0000A6   271 _P2_6	=	0x00a6
                           0000A7   272 _P2_7	=	0x00a7
                           0000A8   273 _EX0	=	0x00a8
                           0000A9   274 _ET0	=	0x00a9
                           0000AA   275 _EX1	=	0x00aa
                           0000AB   276 _ET1	=	0x00ab
                           0000AC   277 _ES	=	0x00ac
                           0000AF   278 _EA	=	0x00af
                           0000B0   279 _P3_0	=	0x00b0
                           0000B1   280 _P3_1	=	0x00b1
                           0000B2   281 _P3_2	=	0x00b2
                           0000B3   282 _P3_3	=	0x00b3
                           0000B4   283 _P3_4	=	0x00b4
                           0000B5   284 _P3_5	=	0x00b5
                           0000B6   285 _P3_6	=	0x00b6
                           0000B7   286 _P3_7	=	0x00b7
                           0000B0   287 _RXD	=	0x00b0
                           0000B1   288 _TXD	=	0x00b1
                           0000B2   289 _INT0	=	0x00b2
                           0000B3   290 _INT1	=	0x00b3
                           0000B4   291 _T0	=	0x00b4
                           0000B5   292 _T1	=	0x00b5
                           0000B6   293 _WR	=	0x00b6
                           0000B7   294 _RD	=	0x00b7
                           0000B8   295 _PX0	=	0x00b8
                           0000B9   296 _PT0	=	0x00b9
                           0000BA   297 _PX1	=	0x00ba
                           0000BB   298 _PT1	=	0x00bb
                           0000BC   299 _PS	=	0x00bc
                           0000D0   300 _P	=	0x00d0
                           0000D1   301 _F1	=	0x00d1
                           0000D2   302 _OV	=	0x00d2
                           0000D3   303 _RS0	=	0x00d3
                           0000D4   304 _RS1	=	0x00d4
                           0000D5   305 _F0	=	0x00d5
                           0000D6   306 _AC	=	0x00d6
                           0000D7   307 _CY	=	0x00d7
                           0000AD   308 _ET2	=	0x00ad
                           0000BD   309 _PT2	=	0x00bd
                           0000C8   310 _T2CON_0	=	0x00c8
                           0000C9   311 _T2CON_1	=	0x00c9
                           0000CA   312 _T2CON_2	=	0x00ca
                           0000CB   313 _T2CON_3	=	0x00cb
                           0000CC   314 _T2CON_4	=	0x00cc
                           0000CD   315 _T2CON_5	=	0x00cd
                           0000CE   316 _T2CON_6	=	0x00ce
                           0000CF   317 _T2CON_7	=	0x00cf
                           0000C8   318 _CP_RL2	=	0x00c8
                           0000C9   319 _C_T2	=	0x00c9
                           0000CA   320 _TR2	=	0x00ca
                           0000CB   321 _EXEN2	=	0x00cb
                           0000CC   322 _TCLK	=	0x00cc
                           0000CD   323 _RCLK	=	0x00cd
                           0000CE   324 _EXF2	=	0x00ce
                           0000CF   325 _TF2	=	0x00cf
                           0000D8   326 _CCF0	=	0x00d8
                           0000D9   327 _CCF1	=	0x00d9
                           0000DE   328 _CR	=	0x00de
                           0000DF   329 _CF	=	0x00df
                                    330 ;--------------------------------------------------------
                                    331 ; overlayable register banks
                                    332 ;--------------------------------------------------------
                                    333 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        334 	.ds 8
                                    335 ;--------------------------------------------------------
                                    336 ; internal ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area DSEG    (DATA)
      000010                        339 _tcb_init_sloc0_1_0:
      000010                        340 	.ds 3
                                    341 ;--------------------------------------------------------
                                    342 ; overlayable items in internal ram 
                                    343 ;--------------------------------------------------------
                                    344 ;--------------------------------------------------------
                                    345 ; indirectly addressable internal ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area ISEG    (DATA)
      000022                        348 _os_stack::
      000022                        349 	.ds 184
      0000DA                        350 _stack_int::
      0000DA                        351 	.ds 20
      0000EE                        352 _CUR_TCB_T::
      0000EE                        353 	.ds 3
      0000F1                        354 _HIGHT_TCB_T::
      0000F1                        355 	.ds 3
                                    356 ;--------------------------------------------------------
                                    357 ; absolute internal ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area IABS    (ABS,DATA)
                                    360 	.area IABS    (ABS,DATA)
                                    361 ;--------------------------------------------------------
                                    362 ; bit data
                                    363 ;--------------------------------------------------------
                                    364 	.area BSEG    (BIT)
                                    365 ;--------------------------------------------------------
                                    366 ; paged external ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area PSEG    (PAG,XDATA)
                                    369 ;--------------------------------------------------------
                                    370 ; external ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area XSEG    (XDATA)
      000001                        373 _READY::
      000001                        374 	.ds 2
      000003                        375 _CUR::
      000003                        376 	.ds 2
      000005                        377 _tcb::
      000005                        378 	.ds 24
      00001D                        379 _interrup::
      00001D                        380 	.ds 1
      00001E                        381 _tcb_t::
      00001E                        382 	.ds 24
      000036                        383 _schedule_hight_1_12:
      000036                        384 	.ds 1
      000037                        385 _stack_init_PARM_2:
      000037                        386 	.ds 2
      000039                        387 _stack_init_thread_1_17:
      000039                        388 	.ds 3
      00003C                        389 _tcb_init_PARM_2:
      00003C                        390 	.ds 2
      00003E                        391 _tcb_init_stack_1_19:
      00003E                        392 	.ds 3
      000041                        393 _task_create_PARM_2:
      000041                        394 	.ds 2
      000043                        395 _task_create_thread_1_21:
      000043                        396 	.ds 3
      000046                        397 _task_del_p_1_23:
      000046                        398 	.ds 2
      000048                        399 _os_init_i_1_26:
      000048                        400 	.ds 2
                                    401 ;--------------------------------------------------------
                                    402 ; absolute external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area XABS    (ABS,XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; external initialized ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XISEG   (XDATA)
      0003A0                        409 _OS_START::
      0003A0                        410 	.ds 2
                                    411 	.area HOME    (CODE)
                                    412 	.area GSINIT0 (CODE)
                                    413 	.area GSINIT1 (CODE)
                                    414 	.area GSINIT2 (CODE)
                                    415 	.area GSINIT3 (CODE)
                                    416 	.area GSINIT4 (CODE)
                                    417 	.area GSINIT5 (CODE)
                                    418 	.area GSINIT  (CODE)
                                    419 	.area GSFINAL (CODE)
                                    420 	.area CSEG    (CODE)
                                    421 ;--------------------------------------------------------
                                    422 ; global & static initialisations
                                    423 ;--------------------------------------------------------
                                    424 	.area HOME    (CODE)
                                    425 	.area GSINIT  (CODE)
                                    426 	.area GSFINAL (CODE)
                                    427 	.area GSINIT  (CODE)
                                    428 ;--------------------------------------------------------
                                    429 ; Home
                                    430 ;--------------------------------------------------------
                                    431 	.area HOME    (CODE)
                                    432 	.area HOME    (CODE)
                                    433 ;--------------------------------------------------------
                                    434 ; code
                                    435 ;--------------------------------------------------------
                                    436 	.area CSEG    (CODE)
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'schedule'
                                    439 ;------------------------------------------------------------
                                    440 ;i                         Allocated with name '_schedule_i_1_12'
                                    441 ;hight                     Allocated with name '_schedule_hight_1_12'
                                    442 ;------------------------------------------------------------
                                    443 ;	core.c:34: uint schedule(void){		//调度函数
                                    444 ;	-----------------------------------------
                                    445 ;	 function schedule
                                    446 ;	-----------------------------------------
      0000A5                        447 _schedule:
                           000007   448 	ar7 = 0x07
                           000006   449 	ar6 = 0x06
                           000005   450 	ar5 = 0x05
                           000004   451 	ar4 = 0x04
                           000003   452 	ar3 = 0x03
                           000002   453 	ar2 = 0x02
                           000001   454 	ar1 = 0x01
                           000000   455 	ar0 = 0x00
                                    456 ;	core.c:37: if (OS_START==1){
      0000A5 90 03 A0         [24]  457 	mov	dptr,#_OS_START
      0000A8 E0               [24]  458 	movx	a,@dptr
      0000A9 FE               [12]  459 	mov	r6,a
      0000AA A3               [24]  460 	inc	dptr
      0000AB E0               [24]  461 	movx	a,@dptr
      0000AC FF               [12]  462 	mov	r7,a
      0000AD BE 01 71         [24]  463 	cjne	r6,#0x01,00106$
      0000B0 BF 00 6E         [24]  464 	cjne	r7,#0x00,00106$
                                    465 ;	core.c:38: EA=0;
      0000B3 C2 AF            [12]  466 	clr	_EA
                                    467 ;	core.c:39: hight=READYMAP[READY];
      0000B5 90 00 01         [24]  468 	mov	dptr,#_READY
      0000B8 E0               [24]  469 	movx	a,@dptr
      0000B9 FE               [12]  470 	mov	r6,a
      0000BA A3               [24]  471 	inc	dptr
      0000BB E0               [24]  472 	movx	a,@dptr
      0000BC CE               [12]  473 	xch	a,r6
      0000BD 25 E0            [12]  474 	add	a,acc
      0000BF CE               [12]  475 	xch	a,r6
      0000C0 33               [12]  476 	rlc	a
      0000C1 FF               [12]  477 	mov	r7,a
      0000C2 EE               [12]  478 	mov	a,r6
      0000C3 24 5E            [12]  479 	add	a,#_READYMAP
      0000C5 F5 82            [12]  480 	mov	dpl,a
      0000C7 EF               [12]  481 	mov	a,r7
      0000C8 34 1F            [12]  482 	addc	a,#(_READYMAP >> 8)
      0000CA F5 83            [12]  483 	mov	dph,a
      0000CC E4               [12]  484 	clr	a
      0000CD 93               [24]  485 	movc	a,@a+dptr
      0000CE FE               [12]  486 	mov	r6,a
      0000CF A3               [24]  487 	inc	dptr
      0000D0 E4               [12]  488 	clr	a
      0000D1 93               [24]  489 	movc	a,@a+dptr
      0000D2 90 00 36         [24]  490 	mov	dptr,#_schedule_hight_1_12
      0000D5 EE               [12]  491 	mov	a,r6
      0000D6 F0               [24]  492 	movx	@dptr,a
                                    493 ;	core.c:40: if (hight==CUR){
      0000D7 90 00 03         [24]  494 	mov	dptr,#_CUR
      0000DA E0               [24]  495 	movx	a,@dptr
      0000DB FD               [12]  496 	mov	r5,a
      0000DC A3               [24]  497 	inc	dptr
      0000DD E0               [24]  498 	movx	a,@dptr
      0000DE FF               [12]  499 	mov	r7,a
      0000DF 7C 00            [12]  500 	mov	r4,#0x00
      0000E1 EE               [12]  501 	mov	a,r6
      0000E2 B5 05 0A         [24]  502 	cjne	a,ar5,00102$
      0000E5 EC               [12]  503 	mov	a,r4
      0000E6 B5 07 06         [24]  504 	cjne	a,ar7,00102$
                                    505 ;	core.c:41: EA=1;
      0000E9 D2 AF            [12]  506 	setb	_EA
                                    507 ;	core.c:42: return 1;	//计算最高优先级
      0000EB 90 00 01         [24]  508 	mov	dptr,#0x0001
      0000EE 22               [24]  509 	ret
      0000EF                        510 00102$:
                                    511 ;	core.c:44: HIGHT_TCB_T=tcb_t[hight];
      0000EF 90 00 36         [24]  512 	mov	dptr,#_schedule_hight_1_12
      0000F2 E0               [24]  513 	movx	a,@dptr
      0000F3 FF               [12]  514 	mov	r7,a
      0000F4 75 F0 03         [24]  515 	mov	b,#0x03
      0000F7 A4               [48]  516 	mul	ab
      0000F8 24 1E            [12]  517 	add	a,#_tcb_t
      0000FA F5 82            [12]  518 	mov	dpl,a
      0000FC 74 00            [12]  519 	mov	a,#(_tcb_t >> 8)
      0000FE 35 F0            [12]  520 	addc	a,b
      000100 F5 83            [12]  521 	mov	dph,a
      000102 78 F1            [12]  522 	mov	r0,#_HIGHT_TCB_T
      000104 E0               [24]  523 	movx	a,@dptr
      000105 F6               [12]  524 	mov	@r0,a
      000106 A3               [24]  525 	inc	dptr
      000107 E0               [24]  526 	movx	a,@dptr
      000108 08               [12]  527 	inc	r0
      000109 F6               [12]  528 	mov	@r0,a
      00010A A3               [24]  529 	inc	dptr
      00010B E0               [24]  530 	movx	a,@dptr
      00010C 08               [12]  531 	inc	r0
      00010D F6               [12]  532 	mov	@r0,a
                                    533 ;	core.c:45: CUR=hight;
      00010E 90 00 03         [24]  534 	mov	dptr,#_CUR
      000111 EF               [12]  535 	mov	a,r7
      000112 F0               [24]  536 	movx	@dptr,a
      000113 E4               [12]  537 	clr	a
      000114 A3               [24]  538 	inc	dptr
      000115 F0               [24]  539 	movx	@dptr,a
                                    540 ;	core.c:55: if (interrup==0){
      000116 90 00 1D         [24]  541 	mov	dptr,#_interrup
      000119 E0               [24]  542 	movx	a,@dptr
      00011A 70 03            [24]  543 	jnz	00104$
                                    544 ;	core.c:56: switch_task();
      00011C 12 03 70         [24]  545 	lcall	_switch_task
      00011F                        546 00104$:
                                    547 ;	core.c:59: EA=1;
      00011F D2 AF            [12]  548 	setb	_EA
      000121                        549 00106$:
                                    550 ;	core.c:61: return 0;
      000121 90 00 00         [24]  551 	mov	dptr,#0x0000
      000124 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'stack_init'
                                    555 ;------------------------------------------------------------
                                    556 ;p                         Allocated with name '_stack_init_PARM_2'
                                    557 ;thread                    Allocated with name '_stack_init_thread_1_17'
                                    558 ;stack                     Allocated with name '_stack_init_stack_1_18'
                                    559 ;------------------------------------------------------------
                                    560 ;	core.c:93: uchar* stack_init(void *thread,uint p){	/*p：优先级*/
                                    561 ;	-----------------------------------------
                                    562 ;	 function stack_init
                                    563 ;	-----------------------------------------
      000125                        564 _stack_init:
      000125 AF F0            [24]  565 	mov	r7,b
      000127 AE 83            [24]  566 	mov	r6,dph
      000129 E5 82            [12]  567 	mov	a,dpl
      00012B 90 00 39         [24]  568 	mov	dptr,#_stack_init_thread_1_17
      00012E F0               [24]  569 	movx	@dptr,a
      00012F EE               [12]  570 	mov	a,r6
      000130 A3               [24]  571 	inc	dptr
      000131 F0               [24]  572 	movx	@dptr,a
      000132 EF               [12]  573 	mov	a,r7
      000133 A3               [24]  574 	inc	dptr
      000134 F0               [24]  575 	movx	@dptr,a
                                    576 ;	core.c:95: stack=&os_stack[p*23];
      000135 90 00 37         [24]  577 	mov	dptr,#_stack_init_PARM_2
      000138 E0               [24]  578 	movx	a,@dptr
      000139 FE               [12]  579 	mov	r6,a
      00013A A3               [24]  580 	inc	dptr
      00013B E0               [24]  581 	movx	a,@dptr
      00013C EE               [12]  582 	mov	a,r6
      00013D 75 F0 17         [24]  583 	mov	b,#0x17
      000140 A4               [48]  584 	mul	ab
      000141 24 22            [12]  585 	add	a,#_os_stack
      000143 F9               [12]  586 	mov	r1,a
                                    587 ;	core.c:96: *stack++=(uchar)thread;	
      000144 90 00 39         [24]  588 	mov	dptr,#_stack_init_thread_1_17
      000147 E0               [24]  589 	movx	a,@dptr
      000148 FD               [12]  590 	mov	r5,a
      000149 A3               [24]  591 	inc	dptr
      00014A E0               [24]  592 	movx	a,@dptr
      00014B FE               [12]  593 	mov	r6,a
      00014C A3               [24]  594 	inc	dptr
      00014D E0               [24]  595 	movx	a,@dptr
      00014E 8D 04            [24]  596 	mov	ar4,r5
      000150 A7 04            [24]  597 	mov	@r1,ar4
      000152 E9               [12]  598 	mov	a,r1
      000153 04               [12]  599 	inc	a
      000154 F8               [12]  600 	mov	r0,a
                                    601 ;	core.c:97: *stack++=(uchar)((uint)thread>>8);
      000155 8E 05            [24]  602 	mov	ar5,r6
      000157 A6 05            [24]  603 	mov	@r0,ar5
                                    604 ;	core.c:98: return (stack+13);
      000159 74 0F            [12]  605 	mov	a,#0x0F
      00015B 29               [12]  606 	add	a,r1
      00015C FF               [12]  607 	mov	r7,a
      00015D 7E 00            [12]  608 	mov	r6,#0x00
      00015F 7D 40            [12]  609 	mov	r5,#0x40
      000161 8F 82            [24]  610 	mov	dpl,r7
      000163 8E 83            [24]  611 	mov	dph,r6
      000165 8D F0            [24]  612 	mov	b,r5
      000167 22               [24]  613 	ret
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'tcb_init'
                                    616 ;------------------------------------------------------------
                                    617 ;sloc0                     Allocated with name '_tcb_init_sloc0_1_0'
                                    618 ;p                         Allocated with name '_tcb_init_PARM_2'
                                    619 ;stack                     Allocated with name '_tcb_init_stack_1_19'
                                    620 ;------------------------------------------------------------
                                    621 ;	core.c:103: void tcb_init(uchar *stack,uint p){
                                    622 ;	-----------------------------------------
                                    623 ;	 function tcb_init
                                    624 ;	-----------------------------------------
      000168                        625 _tcb_init:
      000168 AF F0            [24]  626 	mov	r7,b
      00016A AE 83            [24]  627 	mov	r6,dph
      00016C E5 82            [12]  628 	mov	a,dpl
      00016E 90 00 3E         [24]  629 	mov	dptr,#_tcb_init_stack_1_19
      000171 F0               [24]  630 	movx	@dptr,a
      000172 EE               [12]  631 	mov	a,r6
      000173 A3               [24]  632 	inc	dptr
      000174 F0               [24]  633 	movx	@dptr,a
      000175 EF               [12]  634 	mov	a,r7
      000176 A3               [24]  635 	inc	dptr
      000177 F0               [24]  636 	movx	@dptr,a
                                    637 ;	core.c:104: tcb_t[p]->sp=(__idata uchar*)stack;
      000178 90 00 3C         [24]  638 	mov	dptr,#_tcb_init_PARM_2
      00017B E0               [24]  639 	movx	a,@dptr
      00017C FE               [12]  640 	mov	r6,a
      00017D A3               [24]  641 	inc	dptr
      00017E E0               [24]  642 	movx	a,@dptr
      00017F FF               [12]  643 	mov	r7,a
      000180 90 03 9E         [24]  644 	mov	dptr,#__mulint_PARM_2
      000183 EE               [12]  645 	mov	a,r6
      000184 F0               [24]  646 	movx	@dptr,a
      000185 EF               [12]  647 	mov	a,r7
      000186 A3               [24]  648 	inc	dptr
      000187 F0               [24]  649 	movx	@dptr,a
      000188 90 00 03         [24]  650 	mov	dptr,#0x0003
      00018B C0 07            [24]  651 	push	ar7
      00018D C0 06            [24]  652 	push	ar6
      00018F 12 1F 1E         [24]  653 	lcall	__mulint
      000192 AC 82            [24]  654 	mov	r4,dpl
      000194 AD 83            [24]  655 	mov	r5,dph
      000196 D0 06            [24]  656 	pop	ar6
      000198 D0 07            [24]  657 	pop	ar7
      00019A EC               [12]  658 	mov	a,r4
      00019B 24 1E            [12]  659 	add	a,#_tcb_t
      00019D FC               [12]  660 	mov	r4,a
      00019E ED               [12]  661 	mov	a,r5
      00019F 34 00            [12]  662 	addc	a,#(_tcb_t >> 8)
      0001A1 FD               [12]  663 	mov	r5,a
      0001A2 8C 82            [24]  664 	mov	dpl,r4
      0001A4 8D 83            [24]  665 	mov	dph,r5
      0001A6 E0               [24]  666 	movx	a,@dptr
      0001A7 F5 10            [12]  667 	mov	_tcb_init_sloc0_1_0,a
      0001A9 A3               [24]  668 	inc	dptr
      0001AA E0               [24]  669 	movx	a,@dptr
      0001AB F5 11            [12]  670 	mov	(_tcb_init_sloc0_1_0 + 1),a
      0001AD A3               [24]  671 	inc	dptr
      0001AE E0               [24]  672 	movx	a,@dptr
      0001AF F5 12            [12]  673 	mov	(_tcb_init_sloc0_1_0 + 2),a
      0001B1 90 00 3E         [24]  674 	mov	dptr,#_tcb_init_stack_1_19
      0001B4 E0               [24]  675 	movx	a,@dptr
      0001B5 F8               [12]  676 	mov	r0,a
      0001B6 A3               [24]  677 	inc	dptr
      0001B7 E0               [24]  678 	movx	a,@dptr
      0001B8 FA               [12]  679 	mov	r2,a
      0001B9 A3               [24]  680 	inc	dptr
      0001BA E0               [24]  681 	movx	a,@dptr
      0001BB 85 10 82         [24]  682 	mov	dpl,_tcb_init_sloc0_1_0
      0001BE 85 11 83         [24]  683 	mov	dph,(_tcb_init_sloc0_1_0 + 1)
      0001C1 85 12 F0         [24]  684 	mov	b,(_tcb_init_sloc0_1_0 + 2)
      0001C4 E8               [12]  685 	mov	a,r0
      0001C5 12 1F 03         [24]  686 	lcall	__gptrput
                                    687 ;	core.c:105: tcb_t[p]->priority=p;
      0001C8 8C 82            [24]  688 	mov	dpl,r4
      0001CA 8D 83            [24]  689 	mov	dph,r5
      0001CC E0               [24]  690 	movx	a,@dptr
      0001CD FC               [12]  691 	mov	r4,a
      0001CE A3               [24]  692 	inc	dptr
      0001CF E0               [24]  693 	movx	a,@dptr
      0001D0 FD               [12]  694 	mov	r5,a
      0001D1 A3               [24]  695 	inc	dptr
      0001D2 E0               [24]  696 	movx	a,@dptr
      0001D3 FB               [12]  697 	mov	r3,a
      0001D4 0C               [12]  698 	inc	r4
      0001D5 BC 00 01         [24]  699 	cjne	r4,#0x00,00103$
      0001D8 0D               [12]  700 	inc	r5
      0001D9                        701 00103$:
      0001D9 8C 82            [24]  702 	mov	dpl,r4
      0001DB 8D 83            [24]  703 	mov	dph,r5
      0001DD 8B F0            [24]  704 	mov	b,r3
      0001DF EE               [12]  705 	mov	a,r6
      0001E0 12 1F 03         [24]  706 	lcall	__gptrput
      0001E3 A3               [24]  707 	inc	dptr
      0001E4 EF               [12]  708 	mov	a,r7
                                    709 ;	core.c:106: return;
      0001E5 02 1F 03         [24]  710 	ljmp	__gptrput
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'task_create'
                                    713 ;------------------------------------------------------------
                                    714 ;p                         Allocated with name '_task_create_PARM_2'
                                    715 ;thread                    Allocated with name '_task_create_thread_1_21'
                                    716 ;stack                     Allocated with name '_task_create_stack_1_22'
                                    717 ;------------------------------------------------------------
                                    718 ;	core.c:114: void task_create(void *thread,uint p){
                                    719 ;	-----------------------------------------
                                    720 ;	 function task_create
                                    721 ;	-----------------------------------------
      0001E8                        722 _task_create:
      0001E8 AF F0            [24]  723 	mov	r7,b
      0001EA AE 83            [24]  724 	mov	r6,dph
      0001EC E5 82            [12]  725 	mov	a,dpl
      0001EE 90 00 43         [24]  726 	mov	dptr,#_task_create_thread_1_21
      0001F1 F0               [24]  727 	movx	@dptr,a
      0001F2 EE               [12]  728 	mov	a,r6
      0001F3 A3               [24]  729 	inc	dptr
      0001F4 F0               [24]  730 	movx	@dptr,a
      0001F5 EF               [12]  731 	mov	a,r7
      0001F6 A3               [24]  732 	inc	dptr
      0001F7 F0               [24]  733 	movx	@dptr,a
                                    734 ;	core.c:115: uchar *stack=stack_init(thread,p);
      0001F8 90 00 43         [24]  735 	mov	dptr,#_task_create_thread_1_21
      0001FB E0               [24]  736 	movx	a,@dptr
      0001FC FD               [12]  737 	mov	r5,a
      0001FD A3               [24]  738 	inc	dptr
      0001FE E0               [24]  739 	movx	a,@dptr
      0001FF FE               [12]  740 	mov	r6,a
      000200 A3               [24]  741 	inc	dptr
      000201 E0               [24]  742 	movx	a,@dptr
      000202 FF               [12]  743 	mov	r7,a
      000203 90 00 41         [24]  744 	mov	dptr,#_task_create_PARM_2
      000206 E0               [24]  745 	movx	a,@dptr
      000207 FB               [12]  746 	mov	r3,a
      000208 A3               [24]  747 	inc	dptr
      000209 E0               [24]  748 	movx	a,@dptr
      00020A FC               [12]  749 	mov	r4,a
      00020B 90 00 37         [24]  750 	mov	dptr,#_stack_init_PARM_2
      00020E EB               [12]  751 	mov	a,r3
      00020F F0               [24]  752 	movx	@dptr,a
      000210 EC               [12]  753 	mov	a,r4
      000211 A3               [24]  754 	inc	dptr
      000212 F0               [24]  755 	movx	@dptr,a
      000213 8D 82            [24]  756 	mov	dpl,r5
      000215 8E 83            [24]  757 	mov	dph,r6
      000217 8F F0            [24]  758 	mov	b,r7
      000219 C0 04            [24]  759 	push	ar4
      00021B C0 03            [24]  760 	push	ar3
      00021D 12 01 25         [24]  761 	lcall	_stack_init
      000220 AD 82            [24]  762 	mov	r5,dpl
      000222 AE 83            [24]  763 	mov	r6,dph
      000224 AF F0            [24]  764 	mov	r7,b
      000226 D0 03            [24]  765 	pop	ar3
      000228 D0 04            [24]  766 	pop	ar4
                                    767 ;	core.c:116: tcb_init(stack,p);
      00022A 90 00 3C         [24]  768 	mov	dptr,#_tcb_init_PARM_2
      00022D EB               [12]  769 	mov	a,r3
      00022E F0               [24]  770 	movx	@dptr,a
      00022F EC               [12]  771 	mov	a,r4
      000230 A3               [24]  772 	inc	dptr
      000231 F0               [24]  773 	movx	@dptr,a
      000232 8D 82            [24]  774 	mov	dpl,r5
      000234 8E 83            [24]  775 	mov	dph,r6
      000236 8F F0            [24]  776 	mov	b,r7
      000238 C0 04            [24]  777 	push	ar4
      00023A C0 03            [24]  778 	push	ar3
      00023C 12 01 68         [24]  779 	lcall	_tcb_init
      00023F D0 03            [24]  780 	pop	ar3
      000241 D0 04            [24]  781 	pop	ar4
                                    782 ;	core.c:117: READY=READY|MASK[p];
      000243 EC               [12]  783 	mov	a,r4
      000244 CB               [12]  784 	xch	a,r3
      000245 25 E0            [12]  785 	add	a,acc
      000247 CB               [12]  786 	xch	a,r3
      000248 33               [12]  787 	rlc	a
      000249 FC               [12]  788 	mov	r4,a
      00024A EB               [12]  789 	mov	a,r3
      00024B 24 5E            [12]  790 	add	a,#_MASK
      00024D F5 82            [12]  791 	mov	dpl,a
      00024F EC               [12]  792 	mov	a,r4
      000250 34 21            [12]  793 	addc	a,#(_MASK >> 8)
      000252 F5 83            [12]  794 	mov	dph,a
      000254 E4               [12]  795 	clr	a
      000255 93               [24]  796 	movc	a,@a+dptr
      000256 FE               [12]  797 	mov	r6,a
      000257 A3               [24]  798 	inc	dptr
      000258 E4               [12]  799 	clr	a
      000259 93               [24]  800 	movc	a,@a+dptr
      00025A FF               [12]  801 	mov	r7,a
      00025B 90 00 01         [24]  802 	mov	dptr,#_READY
      00025E E0               [24]  803 	movx	a,@dptr
      00025F FC               [12]  804 	mov	r4,a
      000260 A3               [24]  805 	inc	dptr
      000261 E0               [24]  806 	movx	a,@dptr
      000262 FD               [12]  807 	mov	r5,a
      000263 90 00 01         [24]  808 	mov	dptr,#_READY
      000266 EE               [12]  809 	mov	a,r6
      000267 4C               [12]  810 	orl	a,r4
      000268 F0               [24]  811 	movx	@dptr,a
      000269 EF               [12]  812 	mov	a,r7
      00026A 4D               [12]  813 	orl	a,r5
      00026B A3               [24]  814 	inc	dptr
      00026C F0               [24]  815 	movx	@dptr,a
                                    816 ;	core.c:118: schedule();
                                    817 ;	core.c:119: return;
      00026D 02 00 A5         [24]  818 	ljmp	_schedule
                                    819 ;------------------------------------------------------------
                                    820 ;Allocation info for local variables in function 'task_del'
                                    821 ;------------------------------------------------------------
                                    822 ;p                         Allocated with name '_task_del_p_1_23'
                                    823 ;------------------------------------------------------------
                                    824 ;	core.c:124: void task_del(uint p)
                                    825 ;	-----------------------------------------
                                    826 ;	 function task_del
                                    827 ;	-----------------------------------------
      000270                        828 _task_del:
      000270 AF 83            [24]  829 	mov	r7,dph
      000272 E5 82            [12]  830 	mov	a,dpl
      000274 90 00 46         [24]  831 	mov	dptr,#_task_del_p_1_23
      000277 F0               [24]  832 	movx	@dptr,a
      000278 EF               [12]  833 	mov	a,r7
      000279 A3               [24]  834 	inc	dptr
      00027A F0               [24]  835 	movx	@dptr,a
                                    836 ;	core.c:126: EA=0;
      00027B C2 AF            [12]  837 	clr	_EA
                                    838 ;	core.c:127: READY=READY&(~MASK[p]);
      00027D 90 00 46         [24]  839 	mov	dptr,#_task_del_p_1_23
      000280 E0               [24]  840 	movx	a,@dptr
      000281 FE               [12]  841 	mov	r6,a
      000282 A3               [24]  842 	inc	dptr
      000283 E0               [24]  843 	movx	a,@dptr
      000284 CE               [12]  844 	xch	a,r6
      000285 25 E0            [12]  845 	add	a,acc
      000287 CE               [12]  846 	xch	a,r6
      000288 33               [12]  847 	rlc	a
      000289 FF               [12]  848 	mov	r7,a
      00028A EE               [12]  849 	mov	a,r6
      00028B 24 5E            [12]  850 	add	a,#_MASK
      00028D F5 82            [12]  851 	mov	dpl,a
      00028F EF               [12]  852 	mov	a,r7
      000290 34 21            [12]  853 	addc	a,#(_MASK >> 8)
      000292 F5 83            [12]  854 	mov	dph,a
      000294 E4               [12]  855 	clr	a
      000295 93               [24]  856 	movc	a,@a+dptr
      000296 FE               [12]  857 	mov	r6,a
      000297 A3               [24]  858 	inc	dptr
      000298 E4               [12]  859 	clr	a
      000299 93               [24]  860 	movc	a,@a+dptr
      00029A FF               [12]  861 	mov	r7,a
      00029B EE               [12]  862 	mov	a,r6
      00029C F4               [12]  863 	cpl	a
      00029D FE               [12]  864 	mov	r6,a
      00029E EF               [12]  865 	mov	a,r7
      00029F F4               [12]  866 	cpl	a
      0002A0 FF               [12]  867 	mov	r7,a
      0002A1 90 00 01         [24]  868 	mov	dptr,#_READY
      0002A4 E0               [24]  869 	movx	a,@dptr
      0002A5 FC               [12]  870 	mov	r4,a
      0002A6 A3               [24]  871 	inc	dptr
      0002A7 E0               [24]  872 	movx	a,@dptr
      0002A8 FD               [12]  873 	mov	r5,a
      0002A9 90 00 01         [24]  874 	mov	dptr,#_READY
      0002AC EE               [12]  875 	mov	a,r6
      0002AD 5C               [12]  876 	anl	a,r4
      0002AE F0               [24]  877 	movx	@dptr,a
      0002AF EF               [12]  878 	mov	a,r7
      0002B0 5D               [12]  879 	anl	a,r5
      0002B1 A3               [24]  880 	inc	dptr
      0002B2 F0               [24]  881 	movx	@dptr,a
                                    882 ;	core.c:128: EA=1;
      0002B3 D2 AF            [12]  883 	setb	_EA
                                    884 ;	core.c:129: return;
      0002B5 22               [24]  885 	ret
                                    886 ;------------------------------------------------------------
                                    887 ;Allocation info for local variables in function 'os_init'
                                    888 ;------------------------------------------------------------
                                    889 ;i                         Allocated with name '_os_init_i_1_26'
                                    890 ;------------------------------------------------------------
                                    891 ;	core.c:134: void os_init(void){
                                    892 ;	-----------------------------------------
                                    893 ;	 function os_init
                                    894 ;	-----------------------------------------
      0002B6                        895 _os_init:
                                    896 ;	core.c:136: READY=0;
      0002B6 90 00 01         [24]  897 	mov	dptr,#_READY
      0002B9 E4               [12]  898 	clr	a
      0002BA F0               [24]  899 	movx	@dptr,a
      0002BB A3               [24]  900 	inc	dptr
      0002BC F0               [24]  901 	movx	@dptr,a
                                    902 ;	core.c:137: interrup=0;
      0002BD 90 00 1D         [24]  903 	mov	dptr,#_interrup
      0002C0 F0               [24]  904 	movx	@dptr,a
                                    905 ;	core.c:138: for(i=0;i<8;i++)tcb_t[i]=&(tcb[i]);
      0002C1 90 00 48         [24]  906 	mov	dptr,#_os_init_i_1_26
      0002C4 F0               [24]  907 	movx	@dptr,a
      0002C5 A3               [24]  908 	inc	dptr
      0002C6 F0               [24]  909 	movx	@dptr,a
      0002C7 90 00 48         [24]  910 	mov	dptr,#_os_init_i_1_26
      0002CA E0               [24]  911 	movx	a,@dptr
      0002CB FE               [12]  912 	mov	r6,a
      0002CC A3               [24]  913 	inc	dptr
      0002CD E0               [24]  914 	movx	a,@dptr
      0002CE FF               [12]  915 	mov	r7,a
      0002CF                        916 00102$:
      0002CF 90 03 9E         [24]  917 	mov	dptr,#__mulint_PARM_2
      0002D2 EE               [12]  918 	mov	a,r6
      0002D3 F0               [24]  919 	movx	@dptr,a
      0002D4 EF               [12]  920 	mov	a,r7
      0002D5 A3               [24]  921 	inc	dptr
      0002D6 F0               [24]  922 	movx	@dptr,a
      0002D7 90 00 03         [24]  923 	mov	dptr,#0x0003
      0002DA C0 07            [24]  924 	push	ar7
      0002DC C0 06            [24]  925 	push	ar6
      0002DE 12 1F 1E         [24]  926 	lcall	__mulint
      0002E1 AC 82            [24]  927 	mov	r4,dpl
      0002E3 AD 83            [24]  928 	mov	r5,dph
      0002E5 D0 06            [24]  929 	pop	ar6
      0002E7 D0 07            [24]  930 	pop	ar7
      0002E9 EC               [12]  931 	mov	a,r4
      0002EA 24 1E            [12]  932 	add	a,#_tcb_t
      0002EC F5 82            [12]  933 	mov	dpl,a
      0002EE ED               [12]  934 	mov	a,r5
      0002EF 34 00            [12]  935 	addc	a,#(_tcb_t >> 8)
      0002F1 F5 83            [12]  936 	mov	dph,a
      0002F3 EC               [12]  937 	mov	a,r4
      0002F4 24 05            [12]  938 	add	a,#_tcb
      0002F6 FC               [12]  939 	mov	r4,a
      0002F7 ED               [12]  940 	mov	a,r5
      0002F8 34 00            [12]  941 	addc	a,#(_tcb >> 8)
      0002FA FD               [12]  942 	mov	r5,a
      0002FB 7B 00            [12]  943 	mov	r3,#0x00
      0002FD EC               [12]  944 	mov	a,r4
      0002FE F0               [24]  945 	movx	@dptr,a
      0002FF ED               [12]  946 	mov	a,r5
      000300 A3               [24]  947 	inc	dptr
      000301 F0               [24]  948 	movx	@dptr,a
      000302 EB               [12]  949 	mov	a,r3
      000303 A3               [24]  950 	inc	dptr
      000304 F0               [24]  951 	movx	@dptr,a
      000305 0E               [12]  952 	inc	r6
      000306 BE 00 01         [24]  953 	cjne	r6,#0x00,00110$
      000309 0F               [12]  954 	inc	r7
      00030A                        955 00110$:
      00030A C3               [12]  956 	clr	c
      00030B EE               [12]  957 	mov	a,r6
      00030C 94 08            [12]  958 	subb	a,#0x08
      00030E EF               [12]  959 	mov	a,r7
      00030F 94 00            [12]  960 	subb	a,#0x00
      000311 40 BC            [24]  961 	jc	00102$
                                    962 ;	core.c:146: return;
      000313 22               [24]  963 	ret
                                    964 ;------------------------------------------------------------
                                    965 ;Allocation info for local variables in function 'os_start'
                                    966 ;------------------------------------------------------------
                                    967 ;hight                     Allocated with name '_os_start_hight_1_28'
                                    968 ;------------------------------------------------------------
                                    969 ;	core.c:148: void os_start(void)
                                    970 ;	-----------------------------------------
                                    971 ;	 function os_start
                                    972 ;	-----------------------------------------
      000314                        973 _os_start:
                                    974 ;	core.c:150: __xdata uchar hight=READYMAP[READY];
      000314 90 00 01         [24]  975 	mov	dptr,#_READY
      000317 E0               [24]  976 	movx	a,@dptr
      000318 FE               [12]  977 	mov	r6,a
      000319 A3               [24]  978 	inc	dptr
      00031A E0               [24]  979 	movx	a,@dptr
      00031B CE               [12]  980 	xch	a,r6
      00031C 25 E0            [12]  981 	add	a,acc
      00031E CE               [12]  982 	xch	a,r6
      00031F 33               [12]  983 	rlc	a
      000320 FF               [12]  984 	mov	r7,a
      000321 EE               [12]  985 	mov	a,r6
      000322 24 5E            [12]  986 	add	a,#_READYMAP
      000324 F5 82            [12]  987 	mov	dpl,a
      000326 EF               [12]  988 	mov	a,r7
      000327 34 1F            [12]  989 	addc	a,#(_READYMAP >> 8)
      000329 F5 83            [12]  990 	mov	dph,a
      00032B E4               [12]  991 	clr	a
      00032C 93               [24]  992 	movc	a,@a+dptr
      00032D FE               [12]  993 	mov	r6,a
      00032E A3               [24]  994 	inc	dptr
      00032F E4               [12]  995 	clr	a
      000330 93               [24]  996 	movc	a,@a+dptr
                                    997 ;	core.c:151: OS_START=1;
      000331 90 03 A0         [24]  998 	mov	dptr,#_OS_START
      000334 74 01            [12]  999 	mov	a,#0x01
      000336 F0               [24] 1000 	movx	@dptr,a
      000337 E4               [12] 1001 	clr	a
      000338 A3               [24] 1002 	inc	dptr
      000339 F0               [24] 1003 	movx	@dptr,a
                                   1004 ;	core.c:152: HIGHT_TCB_T=tcb_t[hight];
      00033A EE               [12] 1005 	mov	a,r6
      00033B 75 F0 03         [24] 1006 	mov	b,#0x03
      00033E A4               [48] 1007 	mul	ab
      00033F 24 1E            [12] 1008 	add	a,#_tcb_t
      000341 F5 82            [12] 1009 	mov	dpl,a
      000343 74 00            [12] 1010 	mov	a,#(_tcb_t >> 8)
      000345 35 F0            [12] 1011 	addc	a,b
      000347 F5 83            [12] 1012 	mov	dph,a
      000349 E0               [24] 1013 	movx	a,@dptr
      00034A FC               [12] 1014 	mov	r4,a
      00034B A3               [24] 1015 	inc	dptr
      00034C E0               [24] 1016 	movx	a,@dptr
      00034D FD               [12] 1017 	mov	r5,a
      00034E A3               [24] 1018 	inc	dptr
      00034F E0               [24] 1019 	movx	a,@dptr
      000350 FF               [12] 1020 	mov	r7,a
      000351 78 F1            [12] 1021 	mov	r0,#_HIGHT_TCB_T
      000353 A6 04            [24] 1022 	mov	@r0,ar4
      000355 08               [12] 1023 	inc	r0
      000356 A6 05            [24] 1024 	mov	@r0,ar5
      000358 08               [12] 1025 	inc	r0
      000359 A6 07            [24] 1026 	mov	@r0,ar7
                                   1027 ;	core.c:153: CUR=hight;
      00035B 90 00 03         [24] 1028 	mov	dptr,#_CUR
      00035E EE               [12] 1029 	mov	a,r6
      00035F F0               [24] 1030 	movx	@dptr,a
      000360 E4               [12] 1031 	clr	a
      000361 A3               [24] 1032 	inc	dptr
      000362 F0               [24] 1033 	movx	@dptr,a
                                   1034 ;	core.c:154: CUR_TCB_T=HIGHT_TCB_T;
      000363 78 EE            [12] 1035 	mov	r0,#_CUR_TCB_T
      000365 A6 04            [24] 1036 	mov	@r0,ar4
      000367 08               [12] 1037 	inc	r0
      000368 A6 05            [24] 1038 	mov	@r0,ar5
      00036A 08               [12] 1039 	inc	r0
      00036B A6 07            [24] 1040 	mov	@r0,ar7
                                   1041 ;	core.c:155: switch_task_int();
                                   1042 ;	core.c:156: return;
      00036D 02 03 9E         [24] 1043 	ljmp	_switch_task_int
                                   1044 	.area CSEG    (CODE)
                                   1045 	.area CONST   (CODE)
      001F5E                       1046 _READYMAP:
      001F5E 00 00                 1047 	.byte #0x00,#0x00	; 0
      001F60 00 00                 1048 	.byte #0x00,#0x00	; 0
      001F62 01 00                 1049 	.byte #0x01,#0x00	; 1
      001F64 00 00                 1050 	.byte #0x00,#0x00	; 0
      001F66 02 00                 1051 	.byte #0x02,#0x00	; 2
      001F68 00 00                 1052 	.byte #0x00,#0x00	; 0
      001F6A 01 00                 1053 	.byte #0x01,#0x00	; 1
      001F6C 00 00                 1054 	.byte #0x00,#0x00	; 0
      001F6E 03 00                 1055 	.byte #0x03,#0x00	; 3
      001F70 00 00                 1056 	.byte #0x00,#0x00	; 0
      001F72 01 00                 1057 	.byte #0x01,#0x00	; 1
      001F74 00 00                 1058 	.byte #0x00,#0x00	; 0
      001F76 02 00                 1059 	.byte #0x02,#0x00	; 2
      001F78 00 00                 1060 	.byte #0x00,#0x00	; 0
      001F7A 01 00                 1061 	.byte #0x01,#0x00	; 1
      001F7C 00 00                 1062 	.byte #0x00,#0x00	; 0
      001F7E 04 00                 1063 	.byte #0x04,#0x00	; 4
      001F80 00 00                 1064 	.byte #0x00,#0x00	; 0
      001F82 01 00                 1065 	.byte #0x01,#0x00	; 1
      001F84 00 00                 1066 	.byte #0x00,#0x00	; 0
      001F86 02 00                 1067 	.byte #0x02,#0x00	; 2
      001F88 00 00                 1068 	.byte #0x00,#0x00	; 0
      001F8A 01 00                 1069 	.byte #0x01,#0x00	; 1
      001F8C 00 00                 1070 	.byte #0x00,#0x00	; 0
      001F8E 03 00                 1071 	.byte #0x03,#0x00	; 3
      001F90 00 00                 1072 	.byte #0x00,#0x00	; 0
      001F92 01 00                 1073 	.byte #0x01,#0x00	; 1
      001F94 00 00                 1074 	.byte #0x00,#0x00	; 0
      001F96 02 00                 1075 	.byte #0x02,#0x00	; 2
      001F98 00 00                 1076 	.byte #0x00,#0x00	; 0
      001F9A 01 00                 1077 	.byte #0x01,#0x00	; 1
      001F9C 00 00                 1078 	.byte #0x00,#0x00	; 0
      001F9E 05 00                 1079 	.byte #0x05,#0x00	; 5
      001FA0 00 00                 1080 	.byte #0x00,#0x00	; 0
      001FA2 01 00                 1081 	.byte #0x01,#0x00	; 1
      001FA4 00 00                 1082 	.byte #0x00,#0x00	; 0
      001FA6 02 00                 1083 	.byte #0x02,#0x00	; 2
      001FA8 00 00                 1084 	.byte #0x00,#0x00	; 0
      001FAA 01 00                 1085 	.byte #0x01,#0x00	; 1
      001FAC 00 00                 1086 	.byte #0x00,#0x00	; 0
      001FAE 03 00                 1087 	.byte #0x03,#0x00	; 3
      001FB0 00 00                 1088 	.byte #0x00,#0x00	; 0
      001FB2 01 00                 1089 	.byte #0x01,#0x00	; 1
      001FB4 00 00                 1090 	.byte #0x00,#0x00	; 0
      001FB6 02 00                 1091 	.byte #0x02,#0x00	; 2
      001FB8 00 00                 1092 	.byte #0x00,#0x00	; 0
      001FBA 01 00                 1093 	.byte #0x01,#0x00	; 1
      001FBC 00 00                 1094 	.byte #0x00,#0x00	; 0
      001FBE 04 00                 1095 	.byte #0x04,#0x00	; 4
      001FC0 00 00                 1096 	.byte #0x00,#0x00	; 0
      001FC2 01 00                 1097 	.byte #0x01,#0x00	; 1
      001FC4 00 00                 1098 	.byte #0x00,#0x00	; 0
      001FC6 02 00                 1099 	.byte #0x02,#0x00	; 2
      001FC8 00 00                 1100 	.byte #0x00,#0x00	; 0
      001FCA 01 00                 1101 	.byte #0x01,#0x00	; 1
      001FCC 00 00                 1102 	.byte #0x00,#0x00	; 0
      001FCE 03 00                 1103 	.byte #0x03,#0x00	; 3
      001FD0 00 00                 1104 	.byte #0x00,#0x00	; 0
      001FD2 01 00                 1105 	.byte #0x01,#0x00	; 1
      001FD4 00 00                 1106 	.byte #0x00,#0x00	; 0
      001FD6 02 00                 1107 	.byte #0x02,#0x00	; 2
      001FD8 00 00                 1108 	.byte #0x00,#0x00	; 0
      001FDA 01 00                 1109 	.byte #0x01,#0x00	; 1
      001FDC 00 00                 1110 	.byte #0x00,#0x00	; 0
      001FDE 06 00                 1111 	.byte #0x06,#0x00	; 6
      001FE0 00 00                 1112 	.byte #0x00,#0x00	; 0
      001FE2 01 00                 1113 	.byte #0x01,#0x00	; 1
      001FE4 00 00                 1114 	.byte #0x00,#0x00	; 0
      001FE6 02 00                 1115 	.byte #0x02,#0x00	; 2
      001FE8 00 00                 1116 	.byte #0x00,#0x00	; 0
      001FEA 01 00                 1117 	.byte #0x01,#0x00	; 1
      001FEC 00 00                 1118 	.byte #0x00,#0x00	; 0
      001FEE 03 00                 1119 	.byte #0x03,#0x00	; 3
      001FF0 00 00                 1120 	.byte #0x00,#0x00	; 0
      001FF2 01 00                 1121 	.byte #0x01,#0x00	; 1
      001FF4 00 00                 1122 	.byte #0x00,#0x00	; 0
      001FF6 02 00                 1123 	.byte #0x02,#0x00	; 2
      001FF8 00 00                 1124 	.byte #0x00,#0x00	; 0
      001FFA 01 00                 1125 	.byte #0x01,#0x00	; 1
      001FFC 00 00                 1126 	.byte #0x00,#0x00	; 0
      001FFE 04 00                 1127 	.byte #0x04,#0x00	; 4
      002000 00 00                 1128 	.byte #0x00,#0x00	; 0
      002002 01 00                 1129 	.byte #0x01,#0x00	; 1
      002004 00 00                 1130 	.byte #0x00,#0x00	; 0
      002006 02 00                 1131 	.byte #0x02,#0x00	; 2
      002008 00 00                 1132 	.byte #0x00,#0x00	; 0
      00200A 01 00                 1133 	.byte #0x01,#0x00	; 1
      00200C 00 00                 1134 	.byte #0x00,#0x00	; 0
      00200E 03 00                 1135 	.byte #0x03,#0x00	; 3
      002010 00 00                 1136 	.byte #0x00,#0x00	; 0
      002012 01 00                 1137 	.byte #0x01,#0x00	; 1
      002014 00 00                 1138 	.byte #0x00,#0x00	; 0
      002016 02 00                 1139 	.byte #0x02,#0x00	; 2
      002018 00 00                 1140 	.byte #0x00,#0x00	; 0
      00201A 01 00                 1141 	.byte #0x01,#0x00	; 1
      00201C 00 00                 1142 	.byte #0x00,#0x00	; 0
      00201E 05 00                 1143 	.byte #0x05,#0x00	; 5
      002020 00 00                 1144 	.byte #0x00,#0x00	; 0
      002022 01 00                 1145 	.byte #0x01,#0x00	; 1
      002024 00 00                 1146 	.byte #0x00,#0x00	; 0
      002026 02 00                 1147 	.byte #0x02,#0x00	; 2
      002028 00 00                 1148 	.byte #0x00,#0x00	; 0
      00202A 01 00                 1149 	.byte #0x01,#0x00	; 1
      00202C 00 00                 1150 	.byte #0x00,#0x00	; 0
      00202E 03 00                 1151 	.byte #0x03,#0x00	; 3
      002030 00 00                 1152 	.byte #0x00,#0x00	; 0
      002032 01 00                 1153 	.byte #0x01,#0x00	; 1
      002034 00 00                 1154 	.byte #0x00,#0x00	; 0
      002036 02 00                 1155 	.byte #0x02,#0x00	; 2
      002038 00 00                 1156 	.byte #0x00,#0x00	; 0
      00203A 01 00                 1157 	.byte #0x01,#0x00	; 1
      00203C 00 00                 1158 	.byte #0x00,#0x00	; 0
      00203E 04 00                 1159 	.byte #0x04,#0x00	; 4
      002040 00 00                 1160 	.byte #0x00,#0x00	; 0
      002042 01 00                 1161 	.byte #0x01,#0x00	; 1
      002044 00 00                 1162 	.byte #0x00,#0x00	; 0
      002046 02 00                 1163 	.byte #0x02,#0x00	; 2
      002048 00 00                 1164 	.byte #0x00,#0x00	; 0
      00204A 01 00                 1165 	.byte #0x01,#0x00	; 1
      00204C 00 00                 1166 	.byte #0x00,#0x00	; 0
      00204E 03 00                 1167 	.byte #0x03,#0x00	; 3
      002050 00 00                 1168 	.byte #0x00,#0x00	; 0
      002052 01 00                 1169 	.byte #0x01,#0x00	; 1
      002054 00 00                 1170 	.byte #0x00,#0x00	; 0
      002056 02 00                 1171 	.byte #0x02,#0x00	; 2
      002058 00 00                 1172 	.byte #0x00,#0x00	; 0
      00205A 01 00                 1173 	.byte #0x01,#0x00	; 1
      00205C 00 00                 1174 	.byte #0x00,#0x00	; 0
      00205E 07 00                 1175 	.byte #0x07,#0x00	; 7
      002060 00 00                 1176 	.byte #0x00,#0x00	; 0
      002062 01 00                 1177 	.byte #0x01,#0x00	; 1
      002064 00 00                 1178 	.byte #0x00,#0x00	; 0
      002066 02 00                 1179 	.byte #0x02,#0x00	; 2
      002068 00 00                 1180 	.byte #0x00,#0x00	; 0
      00206A 01 00                 1181 	.byte #0x01,#0x00	; 1
      00206C 00 00                 1182 	.byte #0x00,#0x00	; 0
      00206E 03 00                 1183 	.byte #0x03,#0x00	; 3
      002070 00 00                 1184 	.byte #0x00,#0x00	; 0
      002072 01 00                 1185 	.byte #0x01,#0x00	; 1
      002074 00 00                 1186 	.byte #0x00,#0x00	; 0
      002076 02 00                 1187 	.byte #0x02,#0x00	; 2
      002078 00 00                 1188 	.byte #0x00,#0x00	; 0
      00207A 01 00                 1189 	.byte #0x01,#0x00	; 1
      00207C 00 00                 1190 	.byte #0x00,#0x00	; 0
      00207E 04 00                 1191 	.byte #0x04,#0x00	; 4
      002080 00 00                 1192 	.byte #0x00,#0x00	; 0
      002082 01 00                 1193 	.byte #0x01,#0x00	; 1
      002084 00 00                 1194 	.byte #0x00,#0x00	; 0
      002086 02 00                 1195 	.byte #0x02,#0x00	; 2
      002088 00 00                 1196 	.byte #0x00,#0x00	; 0
      00208A 01 00                 1197 	.byte #0x01,#0x00	; 1
      00208C 00 00                 1198 	.byte #0x00,#0x00	; 0
      00208E 03 00                 1199 	.byte #0x03,#0x00	; 3
      002090 00 00                 1200 	.byte #0x00,#0x00	; 0
      002092 01 00                 1201 	.byte #0x01,#0x00	; 1
      002094 00 00                 1202 	.byte #0x00,#0x00	; 0
      002096 02 00                 1203 	.byte #0x02,#0x00	; 2
      002098 00 00                 1204 	.byte #0x00,#0x00	; 0
      00209A 01 00                 1205 	.byte #0x01,#0x00	; 1
      00209C 00 00                 1206 	.byte #0x00,#0x00	; 0
      00209E 05 00                 1207 	.byte #0x05,#0x00	; 5
      0020A0 00 00                 1208 	.byte #0x00,#0x00	; 0
      0020A2 01 00                 1209 	.byte #0x01,#0x00	; 1
      0020A4 00 00                 1210 	.byte #0x00,#0x00	; 0
      0020A6 02 00                 1211 	.byte #0x02,#0x00	; 2
      0020A8 00 00                 1212 	.byte #0x00,#0x00	; 0
      0020AA 01 00                 1213 	.byte #0x01,#0x00	; 1
      0020AC 00 00                 1214 	.byte #0x00,#0x00	; 0
      0020AE 03 00                 1215 	.byte #0x03,#0x00	; 3
      0020B0 00 00                 1216 	.byte #0x00,#0x00	; 0
      0020B2 01 00                 1217 	.byte #0x01,#0x00	; 1
      0020B4 00 00                 1218 	.byte #0x00,#0x00	; 0
      0020B6 02 00                 1219 	.byte #0x02,#0x00	; 2
      0020B8 00 00                 1220 	.byte #0x00,#0x00	; 0
      0020BA 01 00                 1221 	.byte #0x01,#0x00	; 1
      0020BC 00 00                 1222 	.byte #0x00,#0x00	; 0
      0020BE 04 00                 1223 	.byte #0x04,#0x00	; 4
      0020C0 00 00                 1224 	.byte #0x00,#0x00	; 0
      0020C2 01 00                 1225 	.byte #0x01,#0x00	; 1
      0020C4 00 00                 1226 	.byte #0x00,#0x00	; 0
      0020C6 02 00                 1227 	.byte #0x02,#0x00	; 2
      0020C8 00 00                 1228 	.byte #0x00,#0x00	; 0
      0020CA 01 00                 1229 	.byte #0x01,#0x00	; 1
      0020CC 00 00                 1230 	.byte #0x00,#0x00	; 0
      0020CE 03 00                 1231 	.byte #0x03,#0x00	; 3
      0020D0 00 00                 1232 	.byte #0x00,#0x00	; 0
      0020D2 01 00                 1233 	.byte #0x01,#0x00	; 1
      0020D4 00 00                 1234 	.byte #0x00,#0x00	; 0
      0020D6 02 00                 1235 	.byte #0x02,#0x00	; 2
      0020D8 00 00                 1236 	.byte #0x00,#0x00	; 0
      0020DA 01 00                 1237 	.byte #0x01,#0x00	; 1
      0020DC 00 00                 1238 	.byte #0x00,#0x00	; 0
      0020DE 06 00                 1239 	.byte #0x06,#0x00	; 6
      0020E0 00 00                 1240 	.byte #0x00,#0x00	; 0
      0020E2 01 00                 1241 	.byte #0x01,#0x00	; 1
      0020E4 00 00                 1242 	.byte #0x00,#0x00	; 0
      0020E6 02 00                 1243 	.byte #0x02,#0x00	; 2
      0020E8 00 00                 1244 	.byte #0x00,#0x00	; 0
      0020EA 01 00                 1245 	.byte #0x01,#0x00	; 1
      0020EC 00 00                 1246 	.byte #0x00,#0x00	; 0
      0020EE 03 00                 1247 	.byte #0x03,#0x00	; 3
      0020F0 00 00                 1248 	.byte #0x00,#0x00	; 0
      0020F2 01 00                 1249 	.byte #0x01,#0x00	; 1
      0020F4 00 00                 1250 	.byte #0x00,#0x00	; 0
      0020F6 02 00                 1251 	.byte #0x02,#0x00	; 2
      0020F8 00 00                 1252 	.byte #0x00,#0x00	; 0
      0020FA 01 00                 1253 	.byte #0x01,#0x00	; 1
      0020FC 00 00                 1254 	.byte #0x00,#0x00	; 0
      0020FE 04 00                 1255 	.byte #0x04,#0x00	; 4
      002100 00 00                 1256 	.byte #0x00,#0x00	; 0
      002102 01 00                 1257 	.byte #0x01,#0x00	; 1
      002104 00 00                 1258 	.byte #0x00,#0x00	; 0
      002106 02 00                 1259 	.byte #0x02,#0x00	; 2
      002108 00 00                 1260 	.byte #0x00,#0x00	; 0
      00210A 01 00                 1261 	.byte #0x01,#0x00	; 1
      00210C 00 00                 1262 	.byte #0x00,#0x00	; 0
      00210E 03 00                 1263 	.byte #0x03,#0x00	; 3
      002110 00 00                 1264 	.byte #0x00,#0x00	; 0
      002112 01 00                 1265 	.byte #0x01,#0x00	; 1
      002114 00 00                 1266 	.byte #0x00,#0x00	; 0
      002116 02 00                 1267 	.byte #0x02,#0x00	; 2
      002118 00 00                 1268 	.byte #0x00,#0x00	; 0
      00211A 01 00                 1269 	.byte #0x01,#0x00	; 1
      00211C 00 00                 1270 	.byte #0x00,#0x00	; 0
      00211E 05 00                 1271 	.byte #0x05,#0x00	; 5
      002120 00 00                 1272 	.byte #0x00,#0x00	; 0
      002122 01 00                 1273 	.byte #0x01,#0x00	; 1
      002124 00 00                 1274 	.byte #0x00,#0x00	; 0
      002126 02 00                 1275 	.byte #0x02,#0x00	; 2
      002128 00 00                 1276 	.byte #0x00,#0x00	; 0
      00212A 01 00                 1277 	.byte #0x01,#0x00	; 1
      00212C 00 00                 1278 	.byte #0x00,#0x00	; 0
      00212E 03 00                 1279 	.byte #0x03,#0x00	; 3
      002130 00 00                 1280 	.byte #0x00,#0x00	; 0
      002132 01 00                 1281 	.byte #0x01,#0x00	; 1
      002134 00 00                 1282 	.byte #0x00,#0x00	; 0
      002136 02 00                 1283 	.byte #0x02,#0x00	; 2
      002138 00 00                 1284 	.byte #0x00,#0x00	; 0
      00213A 01 00                 1285 	.byte #0x01,#0x00	; 1
      00213C 00 00                 1286 	.byte #0x00,#0x00	; 0
      00213E 04 00                 1287 	.byte #0x04,#0x00	; 4
      002140 00 00                 1288 	.byte #0x00,#0x00	; 0
      002142 01 00                 1289 	.byte #0x01,#0x00	; 1
      002144 00 00                 1290 	.byte #0x00,#0x00	; 0
      002146 02 00                 1291 	.byte #0x02,#0x00	; 2
      002148 00 00                 1292 	.byte #0x00,#0x00	; 0
      00214A 01 00                 1293 	.byte #0x01,#0x00	; 1
      00214C 00 00                 1294 	.byte #0x00,#0x00	; 0
      00214E 03 00                 1295 	.byte #0x03,#0x00	; 3
      002150 00 00                 1296 	.byte #0x00,#0x00	; 0
      002152 01 00                 1297 	.byte #0x01,#0x00	; 1
      002154 00 00                 1298 	.byte #0x00,#0x00	; 0
      002156 02 00                 1299 	.byte #0x02,#0x00	; 2
      002158 00 00                 1300 	.byte #0x00,#0x00	; 0
      00215A 01 00                 1301 	.byte #0x01,#0x00	; 1
      00215C 00 00                 1302 	.byte #0x00,#0x00	; 0
      00215E                       1303 _MASK:
      00215E 01 00                 1304 	.byte #0x01,#0x00	; 1
      002160 02 00                 1305 	.byte #0x02,#0x00	; 2
      002162 04 00                 1306 	.byte #0x04,#0x00	; 4
      002164 08 00                 1307 	.byte #0x08,#0x00	; 8
      002166 10 00                 1308 	.byte #0x10,#0x00	; 16
      002168 20 00                 1309 	.byte #0x20,#0x00	; 32
      00216A 40 00                 1310 	.byte #0x40,#0x00	; 64
      00216C 80 00                 1311 	.byte #0x80,#0x00	; 128
                                   1312 	.area XINIT   (CODE)
      00220C                       1313 __xinit__OS_START:
      00220C 00 00                 1314 	.byte #0x00,#0x00	; 0
                                   1315 	.area CABS    (ABS,CODE)
