                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:23 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module test
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _hw_init
                                     14 	.globl _key_init
                                     15 	.globl _sound_init
                                     16 	.globl _maichong
                                     17 	.globl _idle
                                     18 	.globl _pca_isr
                                     19 	.globl _t1_isr
                                     20 	.globl _t0_isr
                                     21 	.globl _s1_isr
                                     22 	.globl _s2_isr
                                     23 	.globl _ext1_isr
                                     24 	.globl _ext0_isr
                                     25 	.globl _delay
                                     26 	.globl _app
                                     27 	.globl _wifi_init
                                     28 	.globl _release_semaphore
                                     29 	.globl _sendstr
                                     30 	.globl _uart_init
                                     31 	.globl _display
                                     32 	.globl _task_create
                                     33 	.globl _os_start
                                     34 	.globl _os_init
                                     35 	.globl _exit_int
                                     36 	.globl _CF
                                     37 	.globl _CR
                                     38 	.globl _CCF1
                                     39 	.globl _CCF0
                                     40 	.globl _TF2
                                     41 	.globl _EXF2
                                     42 	.globl _RCLK
                                     43 	.globl _TCLK
                                     44 	.globl _EXEN2
                                     45 	.globl _TR2
                                     46 	.globl _C_T2
                                     47 	.globl _CP_RL2
                                     48 	.globl _T2CON_7
                                     49 	.globl _T2CON_6
                                     50 	.globl _T2CON_5
                                     51 	.globl _T2CON_4
                                     52 	.globl _T2CON_3
                                     53 	.globl _T2CON_2
                                     54 	.globl _T2CON_1
                                     55 	.globl _T2CON_0
                                     56 	.globl _PT2
                                     57 	.globl _ET2
                                     58 	.globl _CY
                                     59 	.globl _AC
                                     60 	.globl _F0
                                     61 	.globl _RS1
                                     62 	.globl _RS0
                                     63 	.globl _OV
                                     64 	.globl _F1
                                     65 	.globl _P
                                     66 	.globl _PS
                                     67 	.globl _PT1
                                     68 	.globl _PX1
                                     69 	.globl _PT0
                                     70 	.globl _PX0
                                     71 	.globl _RD
                                     72 	.globl _WR
                                     73 	.globl _T1
                                     74 	.globl _T0
                                     75 	.globl _INT1
                                     76 	.globl _INT0
                                     77 	.globl _TXD
                                     78 	.globl _RXD
                                     79 	.globl _P3_7
                                     80 	.globl _P3_6
                                     81 	.globl _P3_5
                                     82 	.globl _P3_4
                                     83 	.globl _P3_3
                                     84 	.globl _P3_2
                                     85 	.globl _P3_1
                                     86 	.globl _P3_0
                                     87 	.globl _EA
                                     88 	.globl _ES
                                     89 	.globl _ET1
                                     90 	.globl _EX1
                                     91 	.globl _ET0
                                     92 	.globl _EX0
                                     93 	.globl _P2_7
                                     94 	.globl _P2_6
                                     95 	.globl _P2_5
                                     96 	.globl _P2_4
                                     97 	.globl _P2_3
                                     98 	.globl _P2_2
                                     99 	.globl _P2_1
                                    100 	.globl _P2_0
                                    101 	.globl _SM0
                                    102 	.globl _SM1
                                    103 	.globl _SM2
                                    104 	.globl _REN
                                    105 	.globl _TB8
                                    106 	.globl _RB8
                                    107 	.globl _TI
                                    108 	.globl _RI
                                    109 	.globl _P1_7
                                    110 	.globl _P1_6
                                    111 	.globl _P1_5
                                    112 	.globl _P1_4
                                    113 	.globl _P1_3
                                    114 	.globl _P1_2
                                    115 	.globl _P1_1
                                    116 	.globl _P1_0
                                    117 	.globl _TF1
                                    118 	.globl _TR1
                                    119 	.globl _TF0
                                    120 	.globl _TR0
                                    121 	.globl _IE1
                                    122 	.globl _IT1
                                    123 	.globl _IE0
                                    124 	.globl _IT0
                                    125 	.globl _P0_7
                                    126 	.globl _P0_6
                                    127 	.globl _P0_5
                                    128 	.globl _P0_4
                                    129 	.globl _P0_3
                                    130 	.globl _P0_2
                                    131 	.globl _P0_1
                                    132 	.globl _P0_0
                                    133 	.globl _IAP_CONTR
                                    134 	.globl _PCA_PWM1
                                    135 	.globl _PCA_PWM0
                                    136 	.globl _CCAP1H
                                    137 	.globl _CCAP1L
                                    138 	.globl _CCAP0H
                                    139 	.globl _CCAP0L
                                    140 	.globl _CH
                                    141 	.globl _CL
                                    142 	.globl _CCAPM1
                                    143 	.globl _CCAPM0
                                    144 	.globl _CMOD
                                    145 	.globl _CCON
                                    146 	.globl _WAKE_CLKO
                                    147 	.globl _BRT
                                    148 	.globl _IE2
                                    149 	.globl _S2BUF
                                    150 	.globl _S2CON
                                    151 	.globl _AUXR1
                                    152 	.globl _AUXR
                                    153 	.globl _TH2
                                    154 	.globl _TL2
                                    155 	.globl _RCAP2H
                                    156 	.globl _RCAP2L
                                    157 	.globl _T2CON
                                    158 	.globl _B
                                    159 	.globl _ACC
                                    160 	.globl _PSW
                                    161 	.globl _IP
                                    162 	.globl _P3
                                    163 	.globl _IE
                                    164 	.globl _P2
                                    165 	.globl _SBUF
                                    166 	.globl _SCON
                                    167 	.globl _P1
                                    168 	.globl _TH1
                                    169 	.globl _TH0
                                    170 	.globl _TL1
                                    171 	.globl _TL0
                                    172 	.globl _TMOD
                                    173 	.globl _TCON
                                    174 	.globl _PCON
                                    175 	.globl _DPH
                                    176 	.globl _DPL
                                    177 	.globl _SP
                                    178 	.globl _P0
                                    179 	.globl _b
                                    180 	.globl _interrupt_count
                                    181 	.globl _interrupt_disable
                                    182 	.globl _interrupt_enable
                                    183 	.globl _te
                                    184 ;--------------------------------------------------------
                                    185 ; special function registers
                                    186 ;--------------------------------------------------------
                                    187 	.area RSEG    (ABS,DATA)
      000000                        188 	.org 0x0000
                           000080   189 _P0	=	0x0080
                           000081   190 _SP	=	0x0081
                           000082   191 _DPL	=	0x0082
                           000083   192 _DPH	=	0x0083
                           000087   193 _PCON	=	0x0087
                           000088   194 _TCON	=	0x0088
                           000089   195 _TMOD	=	0x0089
                           00008A   196 _TL0	=	0x008a
                           00008B   197 _TL1	=	0x008b
                           00008C   198 _TH0	=	0x008c
                           00008D   199 _TH1	=	0x008d
                           000090   200 _P1	=	0x0090
                           000098   201 _SCON	=	0x0098
                           000099   202 _SBUF	=	0x0099
                           0000A0   203 _P2	=	0x00a0
                           0000A8   204 _IE	=	0x00a8
                           0000B0   205 _P3	=	0x00b0
                           0000B8   206 _IP	=	0x00b8
                           0000D0   207 _PSW	=	0x00d0
                           0000E0   208 _ACC	=	0x00e0
                           0000F0   209 _B	=	0x00f0
                           0000C8   210 _T2CON	=	0x00c8
                           0000CA   211 _RCAP2L	=	0x00ca
                           0000CB   212 _RCAP2H	=	0x00cb
                           0000CC   213 _TL2	=	0x00cc
                           0000CD   214 _TH2	=	0x00cd
                           00008E   215 _AUXR	=	0x008e
                           0000A2   216 _AUXR1	=	0x00a2
                           00009A   217 _S2CON	=	0x009a
                           00009B   218 _S2BUF	=	0x009b
                           0000AF   219 _IE2	=	0x00af
                           00009C   220 _BRT	=	0x009c
                           00008F   221 _WAKE_CLKO	=	0x008f
                           0000D8   222 _CCON	=	0x00d8
                           0000D9   223 _CMOD	=	0x00d9
                           0000DA   224 _CCAPM0	=	0x00da
                           0000DB   225 _CCAPM1	=	0x00db
                           0000E9   226 _CL	=	0x00e9
                           0000F9   227 _CH	=	0x00f9
                           0000EA   228 _CCAP0L	=	0x00ea
                           0000FA   229 _CCAP0H	=	0x00fa
                           0000EB   230 _CCAP1L	=	0x00eb
                           0000FB   231 _CCAP1H	=	0x00fb
                           0000F2   232 _PCA_PWM0	=	0x00f2
                           0000F3   233 _PCA_PWM1	=	0x00f3
                           0000C7   234 _IAP_CONTR	=	0x00c7
                                    235 ;--------------------------------------------------------
                                    236 ; special function bits
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
                           000080   240 _P0_0	=	0x0080
                           000081   241 _P0_1	=	0x0081
                           000082   242 _P0_2	=	0x0082
                           000083   243 _P0_3	=	0x0083
                           000084   244 _P0_4	=	0x0084
                           000085   245 _P0_5	=	0x0085
                           000086   246 _P0_6	=	0x0086
                           000087   247 _P0_7	=	0x0087
                           000088   248 _IT0	=	0x0088
                           000089   249 _IE0	=	0x0089
                           00008A   250 _IT1	=	0x008a
                           00008B   251 _IE1	=	0x008b
                           00008C   252 _TR0	=	0x008c
                           00008D   253 _TF0	=	0x008d
                           00008E   254 _TR1	=	0x008e
                           00008F   255 _TF1	=	0x008f
                           000090   256 _P1_0	=	0x0090
                           000091   257 _P1_1	=	0x0091
                           000092   258 _P1_2	=	0x0092
                           000093   259 _P1_3	=	0x0093
                           000094   260 _P1_4	=	0x0094
                           000095   261 _P1_5	=	0x0095
                           000096   262 _P1_6	=	0x0096
                           000097   263 _P1_7	=	0x0097
                           000098   264 _RI	=	0x0098
                           000099   265 _TI	=	0x0099
                           00009A   266 _RB8	=	0x009a
                           00009B   267 _TB8	=	0x009b
                           00009C   268 _REN	=	0x009c
                           00009D   269 _SM2	=	0x009d
                           00009E   270 _SM1	=	0x009e
                           00009F   271 _SM0	=	0x009f
                           0000A0   272 _P2_0	=	0x00a0
                           0000A1   273 _P2_1	=	0x00a1
                           0000A2   274 _P2_2	=	0x00a2
                           0000A3   275 _P2_3	=	0x00a3
                           0000A4   276 _P2_4	=	0x00a4
                           0000A5   277 _P2_5	=	0x00a5
                           0000A6   278 _P2_6	=	0x00a6
                           0000A7   279 _P2_7	=	0x00a7
                           0000A8   280 _EX0	=	0x00a8
                           0000A9   281 _ET0	=	0x00a9
                           0000AA   282 _EX1	=	0x00aa
                           0000AB   283 _ET1	=	0x00ab
                           0000AC   284 _ES	=	0x00ac
                           0000AF   285 _EA	=	0x00af
                           0000B0   286 _P3_0	=	0x00b0
                           0000B1   287 _P3_1	=	0x00b1
                           0000B2   288 _P3_2	=	0x00b2
                           0000B3   289 _P3_3	=	0x00b3
                           0000B4   290 _P3_4	=	0x00b4
                           0000B5   291 _P3_5	=	0x00b5
                           0000B6   292 _P3_6	=	0x00b6
                           0000B7   293 _P3_7	=	0x00b7
                           0000B0   294 _RXD	=	0x00b0
                           0000B1   295 _TXD	=	0x00b1
                           0000B2   296 _INT0	=	0x00b2
                           0000B3   297 _INT1	=	0x00b3
                           0000B4   298 _T0	=	0x00b4
                           0000B5   299 _T1	=	0x00b5
                           0000B6   300 _WR	=	0x00b6
                           0000B7   301 _RD	=	0x00b7
                           0000B8   302 _PX0	=	0x00b8
                           0000B9   303 _PT0	=	0x00b9
                           0000BA   304 _PX1	=	0x00ba
                           0000BB   305 _PT1	=	0x00bb
                           0000BC   306 _PS	=	0x00bc
                           0000D0   307 _P	=	0x00d0
                           0000D1   308 _F1	=	0x00d1
                           0000D2   309 _OV	=	0x00d2
                           0000D3   310 _RS0	=	0x00d3
                           0000D4   311 _RS1	=	0x00d4
                           0000D5   312 _F0	=	0x00d5
                           0000D6   313 _AC	=	0x00d6
                           0000D7   314 _CY	=	0x00d7
                           0000AD   315 _ET2	=	0x00ad
                           0000BD   316 _PT2	=	0x00bd
                           0000C8   317 _T2CON_0	=	0x00c8
                           0000C9   318 _T2CON_1	=	0x00c9
                           0000CA   319 _T2CON_2	=	0x00ca
                           0000CB   320 _T2CON_3	=	0x00cb
                           0000CC   321 _T2CON_4	=	0x00cc
                           0000CD   322 _T2CON_5	=	0x00cd
                           0000CE   323 _T2CON_6	=	0x00ce
                           0000CF   324 _T2CON_7	=	0x00cf
                           0000C8   325 _CP_RL2	=	0x00c8
                           0000C9   326 _C_T2	=	0x00c9
                           0000CA   327 _TR2	=	0x00ca
                           0000CB   328 _EXEN2	=	0x00cb
                           0000CC   329 _TCLK	=	0x00cc
                           0000CD   330 _RCLK	=	0x00cd
                           0000CE   331 _EXF2	=	0x00ce
                           0000CF   332 _TF2	=	0x00cf
                           0000D8   333 _CCF0	=	0x00d8
                           0000D9   334 _CCF1	=	0x00d9
                           0000DE   335 _CR	=	0x00de
                           0000DF   336 _CF	=	0x00df
                                    337 ;--------------------------------------------------------
                                    338 ; overlayable register banks
                                    339 ;--------------------------------------------------------
                                    340 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        341 	.ds 8
                                    342 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        343 	.ds 8
                                    344 ;--------------------------------------------------------
                                    345 ; overlayable bit register bank
                                    346 ;--------------------------------------------------------
                                    347 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        348 bits:
      000021                        349 	.ds 1
                           008000   350 	b0 = bits[0]
                           008100   351 	b1 = bits[1]
                           008200   352 	b2 = bits[2]
                           008300   353 	b3 = bits[3]
                           008400   354 	b4 = bits[4]
                           008500   355 	b5 = bits[5]
                           008600   356 	b6 = bits[6]
                           008700   357 	b7 = bits[7]
                                    358 ;--------------------------------------------------------
                                    359 ; internal ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area DSEG    (DATA)
                                    362 ;--------------------------------------------------------
                                    363 ; overlayable items in internal ram 
                                    364 ;--------------------------------------------------------
                                    365 ;--------------------------------------------------------
                                    366 ; Stack segment in internal ram 
                                    367 ;--------------------------------------------------------
                                    368 	.area	SSEG
      0000F4                        369 __start__stack:
      0000F4                        370 	.ds	1
                                    371 
                                    372 ;--------------------------------------------------------
                                    373 ; indirectly addressable internal ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area ISEG    (DATA)
                                    376 ;--------------------------------------------------------
                                    377 ; absolute internal ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area IABS    (ABS,DATA)
                                    380 	.area IABS    (ABS,DATA)
                                    381 ;--------------------------------------------------------
                                    382 ; bit data
                                    383 ;--------------------------------------------------------
                                    384 	.area BSEG    (BIT)
      000000                        385 _t1_isr_sloc0_1_0:
      000000                        386 	.ds 1
      000001                        387 _pca_isr_sloc0_1_0:
      000001                        388 	.ds 1
                                    389 ;--------------------------------------------------------
                                    390 ; paged external ram data
                                    391 ;--------------------------------------------------------
                                    392 	.area PSEG    (PAG,XDATA)
                                    393 ;--------------------------------------------------------
                                    394 ; external ram data
                                    395 ;--------------------------------------------------------
                                    396 	.area XSEG    (XDATA)
      00004A                        397 _delay_i_1_32:
      00004A                        398 	.ds 2
      00004C                        399 _delay_j_1_33:
      00004C                        400 	.ds 2
      00004E                        401 _interrupt_count::
      00004E                        402 	.ds 2
      000050                        403 _te_S_1_90:
      000050                        404 	.ds 3
      000053                        405 _te_i_1_90:
      000053                        406 	.ds 2
                                    407 ;--------------------------------------------------------
                                    408 ; absolute external ram data
                                    409 ;--------------------------------------------------------
                                    410 	.area XABS    (ABS,XDATA)
                                    411 ;--------------------------------------------------------
                                    412 ; external initialized ram data
                                    413 ;--------------------------------------------------------
                                    414 	.area XISEG   (XDATA)
      0003A2                        415 _b::
      0003A2                        416 	.ds 2
                                    417 	.area HOME    (CODE)
                                    418 	.area GSINIT0 (CODE)
                                    419 	.area GSINIT1 (CODE)
                                    420 	.area GSINIT2 (CODE)
                                    421 	.area GSINIT3 (CODE)
                                    422 	.area GSINIT4 (CODE)
                                    423 	.area GSINIT5 (CODE)
                                    424 	.area GSINIT  (CODE)
                                    425 	.area GSFINAL (CODE)
                                    426 	.area CSEG    (CODE)
                                    427 ;--------------------------------------------------------
                                    428 ; interrupt vector 
                                    429 ;--------------------------------------------------------
                                    430 	.area HOME    (CODE)
      000000                        431 __interrupt_vect:
      000000 02 00 49         [24]  432 	ljmp	__sdcc_gsinit_startup
      000003 02 04 E5         [24]  433 	ljmp	_ext0_isr
      000006                        434 	.ds	5
      00000B 02 07 A0         [24]  435 	ljmp	_t0_isr
      00000E                        436 	.ds	5
      000013 02 05 6A         [24]  437 	ljmp	_ext1_isr
      000016                        438 	.ds	5
      00001B 02 07 A1         [24]  439 	ljmp	_t1_isr
      00001E                        440 	.ds	5
      000023 02 06 C6         [24]  441 	ljmp	_s1_isr
      000026                        442 	.ds	5
      00002B 32               [24]  443 	reti
      00002C                        444 	.ds	7
      000033 32               [24]  445 	reti
      000034                        446 	.ds	7
      00003B 02 08 C8         [24]  447 	ljmp	_pca_isr
      00003E                        448 	.ds	5
      000043 02 05 F7         [24]  449 	ljmp	_s2_isr
                                    450 ;--------------------------------------------------------
                                    451 ; global & static initialisations
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
                                    454 	.area GSINIT  (CODE)
                                    455 	.area GSFINAL (CODE)
                                    456 	.area GSINIT  (CODE)
                                    457 	.globl __sdcc_gsinit_startup
                                    458 	.globl __sdcc_program_startup
                                    459 	.globl __start__stack
                                    460 	.globl __mcs51_genXINIT
                                    461 	.globl __mcs51_genXRAMCLEAR
                                    462 	.globl __mcs51_genRAMCLEAR
                                    463 	.area GSFINAL (CODE)
      0000A2 02 00 46         [24]  464 	ljmp	__sdcc_program_startup
                                    465 ;--------------------------------------------------------
                                    466 ; Home
                                    467 ;--------------------------------------------------------
                                    468 	.area HOME    (CODE)
                                    469 	.area HOME    (CODE)
      000046                        470 __sdcc_program_startup:
      000046 02 0B 14         [24]  471 	ljmp	_main
                                    472 ;	return from main will return to caller
                                    473 ;--------------------------------------------------------
                                    474 ; code
                                    475 ;--------------------------------------------------------
                                    476 	.area CSEG    (CODE)
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function 'delay'
                                    479 ;------------------------------------------------------------
                                    480 ;i                         Allocated with name '_delay_i_1_32'
                                    481 ;j                         Allocated with name '_delay_j_1_33'
                                    482 ;------------------------------------------------------------
                                    483 ;	test.c:15: void delay(unsigned int i)
                                    484 ;	-----------------------------------------
                                    485 ;	 function delay
                                    486 ;	-----------------------------------------
      000441                        487 _delay:
                           000007   488 	ar7 = 0x07
                           000006   489 	ar6 = 0x06
                           000005   490 	ar5 = 0x05
                           000004   491 	ar4 = 0x04
                           000003   492 	ar3 = 0x03
                           000002   493 	ar2 = 0x02
                           000001   494 	ar1 = 0x01
                           000000   495 	ar0 = 0x00
      000441 AF 83            [24]  496 	mov	r7,dph
      000443 E5 82            [12]  497 	mov	a,dpl
      000445 90 00 4A         [24]  498 	mov	dptr,#_delay_i_1_32
      000448 F0               [24]  499 	movx	@dptr,a
      000449 EF               [12]  500 	mov	a,r7
      00044A A3               [24]  501 	inc	dptr
      00044B F0               [24]  502 	movx	@dptr,a
                                    503 ;	test.c:17: uint j=100;
      00044C 90 00 4A         [24]  504 	mov	dptr,#_delay_i_1_32
      00044F E0               [24]  505 	movx	a,@dptr
      000450 FE               [12]  506 	mov	r6,a
      000451 A3               [24]  507 	inc	dptr
      000452 E0               [24]  508 	movx	a,@dptr
      000453 FF               [12]  509 	mov	r7,a
      000454                        510 00106$:
                                    511 ;	test.c:18: for (;i!=0;i--){
      000454 BE 00 05         [24]  512 	cjne	r6,#0x00,00123$
      000457 BF 00 02         [24]  513 	cjne	r7,#0x00,00123$
      00045A 80 33            [24]  514 	sjmp	00116$
      00045C                        515 00123$:
                                    516 ;	test.c:19: for(j=1000;j>0;j--);
      00045C 90 00 4C         [24]  517 	mov	dptr,#_delay_j_1_33
      00045F 74 E8            [12]  518 	mov	a,#0xE8
      000461 F0               [24]  519 	movx	@dptr,a
      000462 74 03            [12]  520 	mov	a,#0x03
      000464 A3               [24]  521 	inc	dptr
      000465 F0               [24]  522 	movx	@dptr,a
      000466 90 00 4C         [24]  523 	mov	dptr,#_delay_j_1_33
      000469 E0               [24]  524 	movx	a,@dptr
      00046A FC               [12]  525 	mov	r4,a
      00046B A3               [24]  526 	inc	dptr
      00046C E0               [24]  527 	movx	a,@dptr
      00046D FD               [12]  528 	mov	r5,a
      00046E                        529 00104$:
      00046E 1C               [12]  530 	dec	r4
      00046F BC FF 01         [24]  531 	cjne	r4,#0xFF,00124$
      000472 1D               [12]  532 	dec	r5
      000473                        533 00124$:
      000473 EC               [12]  534 	mov	a,r4
      000474 4D               [12]  535 	orl	a,r5
      000475 60 04            [24]  536 	jz	00110$
      000477 7B 01            [12]  537 	mov	r3,#0x01
      000479 80 02            [24]  538 	sjmp	00111$
      00047B                        539 00110$:
      00047B 7B 00            [12]  540 	mov	r3,#0x00
      00047D                        541 00111$:
      00047D EB               [12]  542 	mov	a,r3
      00047E 70 EE            [24]  543 	jnz	00104$
                                    544 ;	test.c:18: for (;i!=0;i--){
      000480 1E               [12]  545 	dec	r6
      000481 BE FF 01         [24]  546 	cjne	r6,#0xFF,00127$
      000484 1F               [12]  547 	dec	r7
      000485                        548 00127$:
      000485 90 00 4A         [24]  549 	mov	dptr,#_delay_i_1_32
      000488 EE               [12]  550 	mov	a,r6
      000489 F0               [24]  551 	movx	@dptr,a
      00048A EF               [12]  552 	mov	a,r7
      00048B A3               [24]  553 	inc	dptr
      00048C F0               [24]  554 	movx	@dptr,a
      00048D 80 C5            [24]  555 	sjmp	00106$
      00048F                        556 00116$:
      00048F 90 00 4A         [24]  557 	mov	dptr,#_delay_i_1_32
      000492 EE               [12]  558 	mov	a,r6
      000493 F0               [24]  559 	movx	@dptr,a
      000494 EF               [12]  560 	mov	a,r7
      000495 A3               [24]  561 	inc	dptr
      000496 F0               [24]  562 	movx	@dptr,a
      000497 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'interrupt_disable'
                                    566 ;------------------------------------------------------------
                                    567 ;	interrupt.c:3: void interrupt_disable(void)
                                    568 ;	-----------------------------------------
                                    569 ;	 function interrupt_disable
                                    570 ;	-----------------------------------------
      000498                        571 _interrupt_disable:
                                    572 ;	interrupt.c:5: if ( interrupt_count<sizeof(uint)){
      000498 90 00 4E         [24]  573 	mov	dptr,#_interrupt_count
      00049B E0               [24]  574 	movx	a,@dptr
      00049C FE               [12]  575 	mov	r6,a
      00049D A3               [24]  576 	inc	dptr
      00049E E0               [24]  577 	movx	a,@dptr
      00049F FF               [12]  578 	mov	r7,a
      0004A0 C3               [12]  579 	clr	c
      0004A1 EE               [12]  580 	mov	a,r6
      0004A2 94 02            [12]  581 	subb	a,#0x02
      0004A4 EF               [12]  582 	mov	a,r7
      0004A5 94 00            [12]  583 	subb	a,#0x00
      0004A7 40 02            [24]  584 	jc	00104$
      0004A9 80 10            [24]  585 	sjmp	00102$
      0004AB                        586 00104$:
                                    587 ;	interrupt.c:6: interrupt_count++;
      0004AB 90 00 4E         [24]  588 	mov	dptr,#_interrupt_count
      0004AE E0               [24]  589 	movx	a,@dptr
      0004AF 24 01            [12]  590 	add	a,#0x01
      0004B1 F0               [24]  591 	movx	@dptr,a
      0004B2 A3               [24]  592 	inc	dptr
      0004B3 E0               [24]  593 	movx	a,@dptr
      0004B4 34 00            [12]  594 	addc	a,#0x00
      0004B6 F0               [24]  595 	movx	@dptr,a
                                    596 ;	interrupt.c:7: EA=0;
      0004B7 C2 AF            [12]  597 	clr	_EA
      0004B9 80 02            [24]  598 	sjmp	00106$
                                    599 ;	interrupt.c:9: while(1);
      0004BB                        600 00102$:
      0004BB 80 FE            [24]  601 	sjmp	00102$
      0004BD                        602 00106$:
                                    603 ;	interrupt.c:11: return;
      0004BD 22               [24]  604 	ret
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'interrupt_enable'
                                    607 ;------------------------------------------------------------
                                    608 ;	interrupt.c:13: void interrupt_enable(void)
                                    609 ;	-----------------------------------------
                                    610 ;	 function interrupt_enable
                                    611 ;	-----------------------------------------
      0004BE                        612 _interrupt_enable:
                                    613 ;	interrupt.c:15: if (interrupt_count>0){
      0004BE 90 00 4E         [24]  614 	mov	dptr,#_interrupt_count
      0004C1 E0               [24]  615 	movx	a,@dptr
      0004C2 F5 F0            [12]  616 	mov	b,a
      0004C4 A3               [24]  617 	inc	dptr
      0004C5 E0               [24]  618 	movx	a,@dptr
      0004C6 45 F0            [12]  619 	orl	a,b
      0004C8 70 02            [24]  620 	jnz	00101$
      0004CA 80 16            [24]  621 	sjmp	00102$
      0004CC                        622 00101$:
                                    623 ;	interrupt.c:16: interrupt_count--;
      0004CC 90 00 4E         [24]  624 	mov	dptr,#_interrupt_count
      0004CF E0               [24]  625 	movx	a,@dptr
      0004D0 24 FF            [12]  626 	add	a,#0xFF
      0004D2 FE               [12]  627 	mov	r6,a
      0004D3 A3               [24]  628 	inc	dptr
      0004D4 E0               [24]  629 	movx	a,@dptr
      0004D5 34 FF            [12]  630 	addc	a,#0xFF
      0004D7 FF               [12]  631 	mov	r7,a
      0004D8 90 00 4E         [24]  632 	mov	dptr,#_interrupt_count
      0004DB EE               [12]  633 	mov	a,r6
      0004DC F0               [24]  634 	movx	@dptr,a
      0004DD EF               [12]  635 	mov	a,r7
      0004DE A3               [24]  636 	inc	dptr
      0004DF F0               [24]  637 	movx	@dptr,a
      0004E0 80 02            [24]  638 	sjmp	00103$
      0004E2                        639 00102$:
                                    640 ;	interrupt.c:18: EA=1;
      0004E2 D2 AF            [12]  641 	setb	_EA
      0004E4                        642 00103$:
                                    643 ;	interrupt.c:20: return;
      0004E4 22               [24]  644 	ret
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'ext0_isr'
                                    647 ;------------------------------------------------------------
                                    648 ;	interrupt.c:22: void ext0_isr(void) __interrupt (0) __using (1)
                                    649 ;	-----------------------------------------
                                    650 ;	 function ext0_isr
                                    651 ;	-----------------------------------------
      0004E5                        652 _ext0_isr:
                           00000F   653 	ar7 = 0x0F
                           00000E   654 	ar6 = 0x0E
                           00000D   655 	ar5 = 0x0D
                           00000C   656 	ar4 = 0x0C
                           00000B   657 	ar3 = 0x0B
                           00000A   658 	ar2 = 0x0A
                           000009   659 	ar1 = 0x09
                           000008   660 	ar0 = 0x08
      0004E5 C0 21            [24]  661 	push	bits
      0004E7 C0 E0            [24]  662 	push	acc
      0004E9 C0 F0            [24]  663 	push	b
      0004EB C0 82            [24]  664 	push	dpl
      0004ED C0 83            [24]  665 	push	dph
      0004EF C0 07            [24]  666 	push	(0+7)
      0004F1 C0 06            [24]  667 	push	(0+6)
      0004F3 C0 05            [24]  668 	push	(0+5)
      0004F5 C0 04            [24]  669 	push	(0+4)
      0004F7 C0 03            [24]  670 	push	(0+3)
      0004F9 C0 02            [24]  671 	push	(0+2)
      0004FB C0 01            [24]  672 	push	(0+1)
      0004FD C0 00            [24]  673 	push	(0+0)
      0004FF C0 D0            [24]  674 	push	psw
      000501 75 D0 08         [24]  675 	mov	psw,#0x08
                                    676 ;	interrupt.c:24: enter_int;
      000504 C2 AF            [12]  677 	CLR EA 
      000506 75 82 1D         [24]  678 	MOV DPL,# _interrup 
      000509 75 83 00         [24]  679 	MOV DPH,# ( _interrup>>8) 
      00050C E0               [24]  680 	MOVX A, @DPTR 
      00050D 04               [12]  681 	INC A 
      00050E F0               [24]  682 	MOVX @DPTR, A 
      00050F 78 EE            [12]  683 	MOV R0,# _CUR_TCB_T 
      000511 86 82            [24]  684 	MOV DPL ,@R0 
      000513 08               [12]  685 	INC R0 
      000514 86 83            [24]  686 	MOV DPH , @R0 
      000516 E5 81            [12]  687 	MOV A , SP 
      000518 F0               [24]  688 	MOVX @DPTR , A 
      000519 78 DA            [12]  689 	MOV R0 ,# _stack_int 
      00051B E8               [12]  690 	MOV A , R0 
      00051C 85 E0 81         [24]  691 	MOV SP , ACC 
                                    692 ;	interrupt.c:25: delay(100);
      00051F 90 00 64         [24]  693 	mov	dptr,#0x0064
      000522 75 D0 00         [24]  694 	mov	psw,#0x00
      000525 12 04 41         [24]  695 	lcall	_delay
      000528 75 D0 08         [24]  696 	mov	psw,#0x08
                                    697 ;	interrupt.c:26: P2_3=!P2_3;
      00052B B2 A3            [12]  698 	cpl	_P2_3
                                    699 ;	interrupt.c:27: if(P3_2==1)exit_int();
      00052D 20 B2 02         [24]  700 	jb	_P3_2,00101$
      000530 80 09            [24]  701 	sjmp	00102$
      000532                        702 00101$:
      000532 75 D0 00         [24]  703 	mov	psw,#0x00
      000535 12 03 D7         [24]  704 	lcall	_exit_int
      000538 75 D0 08         [24]  705 	mov	psw,#0x08
      00053B                        706 00102$:
                                    707 ;	interrupt.c:28: release_semaphore(1);
      00053B 90 00 01         [24]  708 	mov	dptr,#0x0001
      00053E 75 D0 00         [24]  709 	mov	psw,#0x00
      000541 12 10 6F         [24]  710 	lcall	_release_semaphore
                                    711 ;	interrupt.c:29: exit_int();
      000544 75 D0 00         [24]  712 	mov	psw,#0x00
      000547 12 03 D7         [24]  713 	lcall	_exit_int
      00054A 75 D0 08         [24]  714 	mov	psw,#0x08
                                    715 ;	interrupt.c:30: return;
      00054D D0 D0            [24]  716 	pop	psw
      00054F D0 00            [24]  717 	pop	(0+0)
      000551 D0 01            [24]  718 	pop	(0+1)
      000553 D0 02            [24]  719 	pop	(0+2)
      000555 D0 03            [24]  720 	pop	(0+3)
      000557 D0 04            [24]  721 	pop	(0+4)
      000559 D0 05            [24]  722 	pop	(0+5)
      00055B D0 06            [24]  723 	pop	(0+6)
      00055D D0 07            [24]  724 	pop	(0+7)
      00055F D0 83            [24]  725 	pop	dph
      000561 D0 82            [24]  726 	pop	dpl
      000563 D0 F0            [24]  727 	pop	b
      000565 D0 E0            [24]  728 	pop	acc
      000567 D0 21            [24]  729 	pop	bits
      000569 32               [24]  730 	reti
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'ext1_isr'
                                    733 ;------------------------------------------------------------
                                    734 ;	interrupt.c:32: void ext1_isr(void) __interrupt (2) __using (1)
                                    735 ;	-----------------------------------------
                                    736 ;	 function ext1_isr
                                    737 ;	-----------------------------------------
      00056A                        738 _ext1_isr:
      00056A C0 21            [24]  739 	push	bits
      00056C C0 E0            [24]  740 	push	acc
      00056E C0 F0            [24]  741 	push	b
      000570 C0 82            [24]  742 	push	dpl
      000572 C0 83            [24]  743 	push	dph
      000574 C0 07            [24]  744 	push	(0+7)
      000576 C0 06            [24]  745 	push	(0+6)
      000578 C0 05            [24]  746 	push	(0+5)
      00057A C0 04            [24]  747 	push	(0+4)
      00057C C0 03            [24]  748 	push	(0+3)
      00057E C0 02            [24]  749 	push	(0+2)
      000580 C0 01            [24]  750 	push	(0+1)
      000582 C0 00            [24]  751 	push	(0+0)
      000584 C0 D0            [24]  752 	push	psw
      000586 75 D0 08         [24]  753 	mov	psw,#0x08
                                    754 ;	interrupt.c:34: enter_int;
      000589 C2 AF            [12]  755 	CLR EA 
      00058B 75 82 1D         [24]  756 	MOV DPL,# _interrup 
      00058E 75 83 00         [24]  757 	MOV DPH,# ( _interrup>>8) 
      000591 E0               [24]  758 	MOVX A, @DPTR 
      000592 04               [12]  759 	INC A 
      000593 F0               [24]  760 	MOVX @DPTR, A 
      000594 78 EE            [12]  761 	MOV R0,# _CUR_TCB_T 
      000596 86 82            [24]  762 	MOV DPL ,@R0 
      000598 08               [12]  763 	INC R0 
      000599 86 83            [24]  764 	MOV DPH , @R0 
      00059B E5 81            [12]  765 	MOV A , SP 
      00059D F0               [24]  766 	MOVX @DPTR , A 
      00059E 78 DA            [12]  767 	MOV R0 ,# _stack_int 
      0005A0 E8               [12]  768 	MOV A , R0 
      0005A1 85 E0 81         [24]  769 	MOV SP , ACC 
                                    770 ;	interrupt.c:35: delay(100);
      0005A4 90 00 64         [24]  771 	mov	dptr,#0x0064
      0005A7 75 D0 00         [24]  772 	mov	psw,#0x00
      0005AA 12 04 41         [24]  773 	lcall	_delay
      0005AD 75 D0 08         [24]  774 	mov	psw,#0x08
                                    775 ;	interrupt.c:36: if(P3_3==1)exit_int();
      0005B0 20 B3 02         [24]  776 	jb	_P3_3,00101$
      0005B3 80 09            [24]  777 	sjmp	00102$
      0005B5                        778 00101$:
      0005B5 75 D0 00         [24]  779 	mov	psw,#0x00
      0005B8 12 03 D7         [24]  780 	lcall	_exit_int
      0005BB 75 D0 08         [24]  781 	mov	psw,#0x08
      0005BE                        782 00102$:
                                    783 ;	interrupt.c:37: if(copy_waveing)return;
      0005BE 90 01 DC         [24]  784 	mov	dptr,#_copy_waveing
      0005C1 E0               [24]  785 	movx	a,@dptr
      0005C2 70 02            [24]  786 	jnz	00103$
      0005C4 80 02            [24]  787 	sjmp	00104$
      0005C6                        788 00103$:
      0005C6 80 12            [24]  789 	sjmp	00105$
      0005C8                        790 00104$:
                                    791 ;	interrupt.c:38: release_semaphore(2);
      0005C8 90 00 02         [24]  792 	mov	dptr,#0x0002
      0005CB 75 D0 00         [24]  793 	mov	psw,#0x00
      0005CE 12 10 6F         [24]  794 	lcall	_release_semaphore
                                    795 ;	interrupt.c:39: exit_int();
      0005D1 75 D0 00         [24]  796 	mov	psw,#0x00
      0005D4 12 03 D7         [24]  797 	lcall	_exit_int
      0005D7 75 D0 08         [24]  798 	mov	psw,#0x08
                                    799 ;	interrupt.c:40: return;
      0005DA                        800 00105$:
      0005DA D0 D0            [24]  801 	pop	psw
      0005DC D0 00            [24]  802 	pop	(0+0)
      0005DE D0 01            [24]  803 	pop	(0+1)
      0005E0 D0 02            [24]  804 	pop	(0+2)
      0005E2 D0 03            [24]  805 	pop	(0+3)
      0005E4 D0 04            [24]  806 	pop	(0+4)
      0005E6 D0 05            [24]  807 	pop	(0+5)
      0005E8 D0 06            [24]  808 	pop	(0+6)
      0005EA D0 07            [24]  809 	pop	(0+7)
      0005EC D0 83            [24]  810 	pop	dph
      0005EE D0 82            [24]  811 	pop	dpl
      0005F0 D0 F0            [24]  812 	pop	b
      0005F2 D0 E0            [24]  813 	pop	acc
      0005F4 D0 21            [24]  814 	pop	bits
      0005F6 32               [24]  815 	reti
                                    816 ;------------------------------------------------------------
                                    817 ;Allocation info for local variables in function 's2_isr'
                                    818 ;------------------------------------------------------------
                                    819 ;	interrupt.c:46: void s2_isr(void) __interrupt (8) __using (1)	//串口2中断
                                    820 ;	-----------------------------------------
                                    821 ;	 function s2_isr
                                    822 ;	-----------------------------------------
      0005F7                        823 _s2_isr:
      0005F7 C0 21            [24]  824 	push	bits
      0005F9 C0 E0            [24]  825 	push	acc
      0005FB C0 F0            [24]  826 	push	b
      0005FD C0 82            [24]  827 	push	dpl
      0005FF C0 83            [24]  828 	push	dph
      000601 C0 07            [24]  829 	push	(0+7)
      000603 C0 06            [24]  830 	push	(0+6)
      000605 C0 05            [24]  831 	push	(0+5)
      000607 C0 04            [24]  832 	push	(0+4)
      000609 C0 03            [24]  833 	push	(0+3)
      00060B C0 02            [24]  834 	push	(0+2)
      00060D C0 01            [24]  835 	push	(0+1)
      00060F C0 00            [24]  836 	push	(0+0)
      000611 C0 D0            [24]  837 	push	psw
      000613 75 D0 08         [24]  838 	mov	psw,#0x08
                                    839 ;	interrupt.c:48: enter_int;
      000616 C2 AF            [12]  840 	CLR EA 
      000618 75 82 1D         [24]  841 	MOV DPL,# _interrup 
      00061B 75 83 00         [24]  842 	MOV DPH,# ( _interrup>>8) 
      00061E E0               [24]  843 	MOVX A, @DPTR 
      00061F 04               [12]  844 	INC A 
      000620 F0               [24]  845 	MOVX @DPTR, A 
      000621 78 EE            [12]  846 	MOV R0,# _CUR_TCB_T 
      000623 86 82            [24]  847 	MOV DPL ,@R0 
      000625 08               [12]  848 	INC R0 
      000626 86 83            [24]  849 	MOV DPH , @R0 
      000628 E5 81            [12]  850 	MOV A , SP 
      00062A F0               [24]  851 	MOVX @DPTR , A 
      00062B 78 DA            [12]  852 	MOV R0 ,# _stack_int 
      00062D E8               [12]  853 	MOV A , R0 
      00062E 85 E0 81         [24]  854 	MOV SP , ACC 
                                    855 ;	interrupt.c:49: if(S2CON&0x02){
      000631 E5 9A            [12]  856 	mov	a,_S2CON
      000633 20 E1 02         [24]  857 	jb	acc.1,00105$
      000636 80 0B            [24]  858 	sjmp	00106$
      000638                        859 00105$:
                                    860 ;	interrupt.c:50: S2CON&=0xfd;	//清除中断置位
      000638 53 9A FD         [24]  861 	anl	_S2CON,#0xFD
                                    862 ;	interrupt.c:51: TI2=1;
      00063B 90 01 0E         [24]  863 	mov	dptr,#_TI2
      00063E 74 01            [12]  864 	mov	a,#0x01
      000640 F0               [24]  865 	movx	@dptr,a
      000641 80 5D            [24]  866 	sjmp	00107$
      000643                        867 00106$:
                                    868 ;	interrupt.c:53: S2CON&=0xfc;
      000643 53 9A FC         [24]  869 	anl	_S2CON,#0xFC
                                    870 ;	interrupt.c:54: if(wifi_data_w==wifi_data_end)wifi_data_w=wifi_data;
      000646 90 01 99         [24]  871 	mov	dptr,#_wifi_data_w
      000649 E0               [24]  872 	movx	a,@dptr
      00064A FE               [12]  873 	mov	r6,a
      00064B A3               [24]  874 	inc	dptr
      00064C E0               [24]  875 	movx	a,@dptr
      00064D FF               [12]  876 	mov	r7,a
      00064E 90 01 9B         [24]  877 	mov	dptr,#_wifi_data_end
      000651 E0               [24]  878 	movx	a,@dptr
      000652 FC               [12]  879 	mov	r4,a
      000653 A3               [24]  880 	inc	dptr
      000654 E0               [24]  881 	movx	a,@dptr
      000655 FD               [12]  882 	mov	r5,a
      000656 EE               [12]  883 	mov	a,r6
      000657 B5 0C 0E         [24]  884 	cjne	a,ar4,00102$
      00065A EF               [12]  885 	mov	a,r7
      00065B B5 0D 0A         [24]  886 	cjne	a,ar5,00102$
      00065E 90 01 99         [24]  887 	mov	dptr,#_wifi_data_w
      000661 74 2D            [12]  888 	mov	a,#_wifi_data
      000663 F0               [24]  889 	movx	@dptr,a
      000664 74 01            [12]  890 	mov	a,#(_wifi_data >> 8)
      000666 A3               [24]  891 	inc	dptr
      000667 F0               [24]  892 	movx	@dptr,a
      000668                        893 00102$:
                                    894 ;	interrupt.c:55: *wifi_data_w=S2BUF;
      000668 90 01 99         [24]  895 	mov	dptr,#_wifi_data_w
      00066B E0               [24]  896 	movx	a,@dptr
      00066C FE               [12]  897 	mov	r6,a
      00066D A3               [24]  898 	inc	dptr
      00066E E0               [24]  899 	movx	a,@dptr
      00066F FF               [12]  900 	mov	r7,a
      000670 8E 82            [24]  901 	mov	dpl,r6
      000672 8F 83            [24]  902 	mov	dph,r7
      000674 E5 9B            [12]  903 	mov	a,_S2BUF
      000676 F0               [24]  904 	movx	@dptr,a
                                    905 ;	interrupt.c:56: if(*wifi_data_w=='\r')release_semaphore(14);
      000677 90 01 99         [24]  906 	mov	dptr,#_wifi_data_w
      00067A E0               [24]  907 	movx	a,@dptr
      00067B FE               [12]  908 	mov	r6,a
      00067C A3               [24]  909 	inc	dptr
      00067D E0               [24]  910 	movx	a,@dptr
      00067E FF               [12]  911 	mov	r7,a
      00067F 8E 82            [24]  912 	mov	dpl,r6
      000681 8F 83            [24]  913 	mov	dph,r7
      000683 E0               [24]  914 	movx	a,@dptr
      000684 FE               [12]  915 	mov	r6,a
      000685 BE 0D 0C         [24]  916 	cjne	r6,#0x0D,00104$
      000688 90 00 0E         [24]  917 	mov	dptr,#0x000E
      00068B 75 D0 00         [24]  918 	mov	psw,#0x00
      00068E 12 10 6F         [24]  919 	lcall	_release_semaphore
      000691 75 D0 08         [24]  920 	mov	psw,#0x08
      000694                        921 00104$:
                                    922 ;	interrupt.c:57: wifi_data_w++;
      000694 90 01 99         [24]  923 	mov	dptr,#_wifi_data_w
      000697 E0               [24]  924 	movx	a,@dptr
      000698 24 01            [12]  925 	add	a,#0x01
      00069A F0               [24]  926 	movx	@dptr,a
      00069B A3               [24]  927 	inc	dptr
      00069C E0               [24]  928 	movx	a,@dptr
      00069D 34 00            [12]  929 	addc	a,#0x00
      00069F F0               [24]  930 	movx	@dptr,a
      0006A0                        931 00107$:
                                    932 ;	interrupt.c:59: exit_int();
      0006A0 75 D0 00         [24]  933 	mov	psw,#0x00
      0006A3 12 03 D7         [24]  934 	lcall	_exit_int
      0006A6 75 D0 08         [24]  935 	mov	psw,#0x08
                                    936 ;	interrupt.c:60: return;
      0006A9 D0 D0            [24]  937 	pop	psw
      0006AB D0 00            [24]  938 	pop	(0+0)
      0006AD D0 01            [24]  939 	pop	(0+1)
      0006AF D0 02            [24]  940 	pop	(0+2)
      0006B1 D0 03            [24]  941 	pop	(0+3)
      0006B3 D0 04            [24]  942 	pop	(0+4)
      0006B5 D0 05            [24]  943 	pop	(0+5)
      0006B7 D0 06            [24]  944 	pop	(0+6)
      0006B9 D0 07            [24]  945 	pop	(0+7)
      0006BB D0 83            [24]  946 	pop	dph
      0006BD D0 82            [24]  947 	pop	dpl
      0006BF D0 F0            [24]  948 	pop	b
      0006C1 D0 E0            [24]  949 	pop	acc
      0006C3 D0 21            [24]  950 	pop	bits
      0006C5 32               [24]  951 	reti
                                    952 ;------------------------------------------------------------
                                    953 ;Allocation info for local variables in function 's1_isr'
                                    954 ;------------------------------------------------------------
                                    955 ;	interrupt.c:66: void s1_isr(void) __interrupt (4) __using (1)
                                    956 ;	-----------------------------------------
                                    957 ;	 function s1_isr
                                    958 ;	-----------------------------------------
      0006C6                        959 _s1_isr:
      0006C6 C0 21            [24]  960 	push	bits
      0006C8 C0 E0            [24]  961 	push	acc
      0006CA C0 F0            [24]  962 	push	b
      0006CC C0 82            [24]  963 	push	dpl
      0006CE C0 83            [24]  964 	push	dph
      0006D0 C0 07            [24]  965 	push	(0+7)
      0006D2 C0 06            [24]  966 	push	(0+6)
      0006D4 C0 05            [24]  967 	push	(0+5)
      0006D6 C0 04            [24]  968 	push	(0+4)
      0006D8 C0 03            [24]  969 	push	(0+3)
      0006DA C0 02            [24]  970 	push	(0+2)
      0006DC C0 01            [24]  971 	push	(0+1)
      0006DE C0 00            [24]  972 	push	(0+0)
      0006E0 C0 D0            [24]  973 	push	psw
      0006E2 75 D0 08         [24]  974 	mov	psw,#0x08
                                    975 ;	interrupt.c:68: enter_int;
      0006E5 C2 AF            [12]  976 	CLR EA 
      0006E7 75 82 1D         [24]  977 	MOV DPL,# _interrup 
      0006EA 75 83 00         [24]  978 	MOV DPH,# ( _interrup>>8) 
      0006ED E0               [24]  979 	MOVX A, @DPTR 
      0006EE 04               [12]  980 	INC A 
      0006EF F0               [24]  981 	MOVX @DPTR, A 
      0006F0 78 EE            [12]  982 	MOV R0,# _CUR_TCB_T 
      0006F2 86 82            [24]  983 	MOV DPL ,@R0 
      0006F4 08               [12]  984 	INC R0 
      0006F5 86 83            [24]  985 	MOV DPH , @R0 
      0006F7 E5 81            [12]  986 	MOV A , SP 
      0006F9 F0               [24]  987 	MOVX @DPTR , A 
      0006FA 78 DA            [12]  988 	MOV R0 ,# _stack_int 
      0006FC E8               [12]  989 	MOV A , R0 
      0006FD 85 E0 81         [24]  990 	MOV SP , ACC 
                                    991 ;	interrupt.c:69: if(RI){
      000700 20 98 03         [24]  992 	jb	_RI,00105$
      000703 02 07 72         [24]  993 	ljmp	00106$
      000706                        994 00105$:
                                    995 ;	interrupt.c:70: RI=0;
      000706 C2 98            [12]  996 	clr	_RI
                                    997 ;	interrupt.c:71: if(serial_w==serial_end)serial_w=serial_buf;
      000708 90 03 A7         [24]  998 	mov	dptr,#_serial_w
      00070B E0               [24]  999 	movx	a,@dptr
      00070C FE               [12] 1000 	mov	r6,a
      00070D A3               [24] 1001 	inc	dptr
      00070E E0               [24] 1002 	movx	a,@dptr
      00070F FF               [12] 1003 	mov	r7,a
      000710 90 03 A9         [24] 1004 	mov	dptr,#_serial_end
      000713 E0               [24] 1005 	movx	a,@dptr
      000714 FC               [12] 1006 	mov	r4,a
      000715 A3               [24] 1007 	inc	dptr
      000716 E0               [24] 1008 	movx	a,@dptr
      000717 FD               [12] 1009 	mov	r5,a
      000718 EE               [12] 1010 	mov	a,r6
      000719 B5 0C 0E         [24] 1011 	cjne	a,ar4,00102$
      00071C EF               [12] 1012 	mov	a,r7
      00071D B5 0D 0A         [24] 1013 	cjne	a,ar5,00102$
      000720 90 03 A7         [24] 1014 	mov	dptr,#_serial_w
      000723 74 99            [12] 1015 	mov	a,#_serial_buf
      000725 F0               [24] 1016 	movx	@dptr,a
      000726 74 00            [12] 1017 	mov	a,#(_serial_buf >> 8)
      000728 A3               [24] 1018 	inc	dptr
      000729 F0               [24] 1019 	movx	@dptr,a
      00072A                       1020 00102$:
                                   1021 ;	interrupt.c:72: *serial_w=SBUF;
      00072A 90 03 A7         [24] 1022 	mov	dptr,#_serial_w
      00072D E0               [24] 1023 	movx	a,@dptr
      00072E FE               [12] 1024 	mov	r6,a
      00072F A3               [24] 1025 	inc	dptr
      000730 E0               [24] 1026 	movx	a,@dptr
      000731 FF               [12] 1027 	mov	r7,a
      000732 8E 82            [24] 1028 	mov	dpl,r6
      000734 8F 83            [24] 1029 	mov	dph,r7
      000736 E5 99            [12] 1030 	mov	a,_SBUF
      000738 F0               [24] 1031 	movx	@dptr,a
                                   1032 ;	interrupt.c:73: SBUF=*serial_w;
      000739 90 03 A7         [24] 1033 	mov	dptr,#_serial_w
      00073C E0               [24] 1034 	movx	a,@dptr
      00073D FE               [12] 1035 	mov	r6,a
      00073E A3               [24] 1036 	inc	dptr
      00073F E0               [24] 1037 	movx	a,@dptr
      000740 FF               [12] 1038 	mov	r7,a
      000741 8E 82            [24] 1039 	mov	dpl,r6
      000743 8F 83            [24] 1040 	mov	dph,r7
      000745 E0               [24] 1041 	movx	a,@dptr
      000746 F5 99            [12] 1042 	mov	_SBUF,a
                                   1043 ;	interrupt.c:74: if(*serial_w=='\r'){
      000748 8E 82            [24] 1044 	mov	dpl,r6
      00074A 8F 83            [24] 1045 	mov	dph,r7
      00074C E0               [24] 1046 	movx	a,@dptr
      00074D FE               [12] 1047 	mov	r6,a
      00074E BE 0D 0C         [24] 1048 	cjne	r6,#0x0D,00104$
                                   1049 ;	interrupt.c:76: release_semaphore(15);
      000751 90 00 0F         [24] 1050 	mov	dptr,#0x000F
      000754 75 D0 00         [24] 1051 	mov	psw,#0x00
      000757 12 10 6F         [24] 1052 	lcall	_release_semaphore
      00075A 75 D0 08         [24] 1053 	mov	psw,#0x08
      00075D                       1054 00104$:
                                   1055 ;	interrupt.c:78: serial_w+=1;
      00075D 90 03 A7         [24] 1056 	mov	dptr,#_serial_w
      000760 E0               [24] 1057 	movx	a,@dptr
      000761 FE               [12] 1058 	mov	r6,a
      000762 A3               [24] 1059 	inc	dptr
      000763 E0               [24] 1060 	movx	a,@dptr
      000764 FF               [12] 1061 	mov	r7,a
      000765 90 03 A7         [24] 1062 	mov	dptr,#_serial_w
      000768 74 01            [12] 1063 	mov	a,#0x01
      00076A 2E               [12] 1064 	add	a,r6
      00076B F0               [24] 1065 	movx	@dptr,a
      00076C E4               [12] 1066 	clr	a
      00076D 3F               [12] 1067 	addc	a,r7
      00076E A3               [24] 1068 	inc	dptr
      00076F F0               [24] 1069 	movx	@dptr,a
      000770 80 08            [24] 1070 	sjmp	00107$
      000772                       1071 00106$:
                                   1072 ;	interrupt.c:80: TI=0;
      000772 C2 99            [12] 1073 	clr	_TI
                                   1074 ;	interrupt.c:81: TI1=1;
      000774 90 00 8E         [24] 1075 	mov	dptr,#_TI1
      000777 74 01            [12] 1076 	mov	a,#0x01
      000779 F0               [24] 1077 	movx	@dptr,a
      00077A                       1078 00107$:
                                   1079 ;	interrupt.c:83: exit_int();
      00077A 75 D0 00         [24] 1080 	mov	psw,#0x00
      00077D 12 03 D7         [24] 1081 	lcall	_exit_int
      000780 75 D0 08         [24] 1082 	mov	psw,#0x08
                                   1083 ;	interrupt.c:84: return;
      000783 D0 D0            [24] 1084 	pop	psw
      000785 D0 00            [24] 1085 	pop	(0+0)
      000787 D0 01            [24] 1086 	pop	(0+1)
      000789 D0 02            [24] 1087 	pop	(0+2)
      00078B D0 03            [24] 1088 	pop	(0+3)
      00078D D0 04            [24] 1089 	pop	(0+4)
      00078F D0 05            [24] 1090 	pop	(0+5)
      000791 D0 06            [24] 1091 	pop	(0+6)
      000793 D0 07            [24] 1092 	pop	(0+7)
      000795 D0 83            [24] 1093 	pop	dph
      000797 D0 82            [24] 1094 	pop	dpl
      000799 D0 F0            [24] 1095 	pop	b
      00079B D0 E0            [24] 1096 	pop	acc
      00079D D0 21            [24] 1097 	pop	bits
      00079F 32               [24] 1098 	reti
                                   1099 ;------------------------------------------------------------
                                   1100 ;Allocation info for local variables in function 't0_isr'
                                   1101 ;------------------------------------------------------------
                                   1102 ;	interrupt.c:86: void t0_isr(void) __interrupt (1) __using (1)
                                   1103 ;	-----------------------------------------
                                   1104 ;	 function t0_isr
                                   1105 ;	-----------------------------------------
      0007A0                       1106 _t0_isr:
                                   1107 ;	interrupt.c:88: return;
      0007A0 32               [24] 1108 	reti
                                   1109 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1110 ;	eliminated unneeded push/pop psw
                                   1111 ;	eliminated unneeded push/pop dpl
                                   1112 ;	eliminated unneeded push/pop dph
                                   1113 ;	eliminated unneeded push/pop b
                                   1114 ;	eliminated unneeded push/pop acc
                                   1115 ;------------------------------------------------------------
                                   1116 ;Allocation info for local variables in function 't1_isr'
                                   1117 ;------------------------------------------------------------
                                   1118 ;	interrupt.c:95: void t1_isr(void) __interrupt (3) __using (1)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function t1_isr
                                   1121 ;	-----------------------------------------
      0007A1                       1122 _t1_isr:
      0007A1 C0 E0            [24] 1123 	push	acc
      0007A3 C0 F0            [24] 1124 	push	b
      0007A5 C0 82            [24] 1125 	push	dpl
      0007A7 C0 83            [24] 1126 	push	dph
      0007A9 C0 D0            [24] 1127 	push	psw
      0007AB 75 D0 08         [24] 1128 	mov	psw,#0x08
                                   1129 ;	interrupt.c:99: if(copy_waveing){
      0007AE 90 01 DC         [24] 1130 	mov	dptr,#_copy_waveing
      0007B1 E0               [24] 1131 	movx	a,@dptr
      0007B2 70 03            [24] 1132 	jnz	00113$
      0007B4 02 08 48         [24] 1133 	ljmp	00114$
      0007B7                       1134 00113$:
                                   1135 ;	interrupt.c:100: if(copywave_count<400){
      0007B7 90 01 D6         [24] 1136 	mov	dptr,#_copywave_count
      0007BA E0               [24] 1137 	movx	a,@dptr
      0007BB FE               [12] 1138 	mov	r6,a
      0007BC A3               [24] 1139 	inc	dptr
      0007BD E0               [24] 1140 	movx	a,@dptr
      0007BE FF               [12] 1141 	mov	r7,a
      0007BF C3               [12] 1142 	clr	c
      0007C0 EE               [12] 1143 	mov	a,r6
      0007C1 94 90            [12] 1144 	subb	a,#0x90
      0007C3 EF               [12] 1145 	mov	a,r7
      0007C4 94 01            [12] 1146 	subb	a,#0x01
      0007C6 40 03            [24] 1147 	jc	00104$
      0007C8 02 08 41         [24] 1148 	ljmp	00105$
      0007CB                       1149 00104$:
                                   1150 ;	interrupt.c:101: if(copywave_bit_count<8){
      0007CB 90 01 DB         [24] 1151 	mov	dptr,#_copywave_bit_count
      0007CE E0               [24] 1152 	movx	a,@dptr
      0007CF FF               [12] 1153 	mov	r7,a
      0007D0 BF 08 00         [24] 1154 	cjne	r7,#0x08,00131$
      0007D3                       1155 00131$:
      0007D3 40 1D            [24] 1156 	jc	00103$
                                   1157 ;	interrupt.c:103: copywave_bit_count=0;
      0007D5 90 01 DB         [24] 1158 	mov	dptr,#_copywave_bit_count
      0007D8 E4               [12] 1159 	clr	a
      0007D9 F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	interrupt.c:104: copywave_p++;
      0007DA 90 01 D8         [24] 1162 	mov	dptr,#_copywave_p
      0007DD E0               [24] 1163 	movx	a,@dptr
      0007DE 24 01            [12] 1164 	add	a,#0x01
      0007E0 F0               [24] 1165 	movx	@dptr,a
      0007E1 A3               [24] 1166 	inc	dptr
      0007E2 E0               [24] 1167 	movx	a,@dptr
      0007E3 34 00            [12] 1168 	addc	a,#0x00
      0007E5 F0               [24] 1169 	movx	@dptr,a
                                   1170 ;	interrupt.c:105: copywave_count++;
      0007E6 90 01 D6         [24] 1171 	mov	dptr,#_copywave_count
      0007E9 E0               [24] 1172 	movx	a,@dptr
      0007EA 24 01            [12] 1173 	add	a,#0x01
      0007EC F0               [24] 1174 	movx	@dptr,a
      0007ED A3               [24] 1175 	inc	dptr
      0007EE E0               [24] 1176 	movx	a,@dptr
      0007EF 34 00            [12] 1177 	addc	a,#0x00
      0007F1 F0               [24] 1178 	movx	@dptr,a
      0007F2                       1179 00103$:
                                   1180 ;	interrupt.c:107: copywave_bit_count++;
      0007F2 90 01 DB         [24] 1181 	mov	dptr,#_copywave_bit_count
      0007F5 E0               [24] 1182 	movx	a,@dptr
      0007F6 24 01            [12] 1183 	add	a,#0x01
      0007F8 F0               [24] 1184 	movx	@dptr,a
                                   1185 ;	interrupt.c:108: *copywave_p=*copywave_p<<1;
      0007F9 90 01 D8         [24] 1186 	mov	dptr,#_copywave_p
      0007FC E0               [24] 1187 	movx	a,@dptr
      0007FD FD               [12] 1188 	mov	r5,a
      0007FE A3               [24] 1189 	inc	dptr
      0007FF E0               [24] 1190 	movx	a,@dptr
      000800 FE               [12] 1191 	mov	r6,a
      000801 A3               [24] 1192 	inc	dptr
      000802 E0               [24] 1193 	movx	a,@dptr
      000803 FF               [12] 1194 	mov	r7,a
      000804 8D 82            [24] 1195 	mov	dpl,r5
      000806 8E 83            [24] 1196 	mov	dph,r6
      000808 8F F0            [24] 1197 	mov	b,r7
      00080A 12 1F 3E         [24] 1198 	lcall	__gptrget
      00080D 25 E0            [12] 1199 	add	a,acc
      00080F 8D 82            [24] 1200 	mov	dpl,r5
      000811 8E 83            [24] 1201 	mov	dph,r6
      000813 8F F0            [24] 1202 	mov	b,r7
      000815 12 1F 03         [24] 1203 	lcall	__gptrput
                                   1204 ;	interrupt.c:109: *copywave_p|=input;
      000818 90 01 D8         [24] 1205 	mov	dptr,#_copywave_p
      00081B E0               [24] 1206 	movx	a,@dptr
      00081C FD               [12] 1207 	mov	r5,a
      00081D A3               [24] 1208 	inc	dptr
      00081E E0               [24] 1209 	movx	a,@dptr
      00081F FE               [12] 1210 	mov	r6,a
      000820 A3               [24] 1211 	inc	dptr
      000821 E0               [24] 1212 	movx	a,@dptr
      000822 FF               [12] 1213 	mov	r7,a
      000823 8D 82            [24] 1214 	mov	dpl,r5
      000825 8E 83            [24] 1215 	mov	dph,r6
      000827 8F F0            [24] 1216 	mov	b,r7
      000829 12 1F 3E         [24] 1217 	lcall	__gptrget
      00082C FC               [12] 1218 	mov	r4,a
      00082D A2 A7            [12] 1219 	mov	c,_P2_7
      00082F E4               [12] 1220 	clr	a
      000830 33               [12] 1221 	rlc	a
      000831 FB               [12] 1222 	mov	r3,a
      000832 42 0C            [12] 1223 	orl	ar4,a
      000834 8D 82            [24] 1224 	mov	dpl,r5
      000836 8E 83            [24] 1225 	mov	dph,r6
      000838 8F F0            [24] 1226 	mov	b,r7
      00083A EC               [12] 1227 	mov	a,r4
      00083B 12 1F 03         [24] 1228 	lcall	__gptrput
      00083E 02 08 BD         [24] 1229 	ljmp	00116$
      000841                       1230 00105$:
                                   1231 ;	interrupt.c:111: TR1=0;
      000841 C2 8E            [12] 1232 	clr	_TR1
                                   1233 ;	interrupt.c:112: TR0=0;
      000843 C2 8C            [12] 1234 	clr	_TR0
      000845 02 08 BD         [24] 1235 	ljmp	00116$
      000848                       1236 00114$:
                                   1237 ;	interrupt.c:115: if(copywave_count<400){
      000848 90 01 D6         [24] 1238 	mov	dptr,#_copywave_count
      00084B E0               [24] 1239 	movx	a,@dptr
      00084C FE               [12] 1240 	mov	r6,a
      00084D A3               [24] 1241 	inc	dptr
      00084E E0               [24] 1242 	movx	a,@dptr
      00084F FF               [12] 1243 	mov	r7,a
      000850 C3               [12] 1244 	clr	c
      000851 EE               [12] 1245 	mov	a,r6
      000852 94 90            [12] 1246 	subb	a,#0x90
      000854 EF               [12] 1247 	mov	a,r7
      000855 94 01            [12] 1248 	subb	a,#0x01
      000857 40 02            [24] 1249 	jc	00110$
      000859 80 5E            [24] 1250 	sjmp	00111$
      00085B                       1251 00110$:
                                   1252 ;	interrupt.c:116: if(copywave_bit_count<8){
      00085B 90 01 DB         [24] 1253 	mov	dptr,#_copywave_bit_count
      00085E E0               [24] 1254 	movx	a,@dptr
      00085F FF               [12] 1255 	mov	r7,a
      000860 BF 08 00         [24] 1256 	cjne	r7,#0x08,00134$
      000863                       1257 00134$:
      000863 40 1D            [24] 1258 	jc	00109$
                                   1259 ;	interrupt.c:118: copywave_p++;
      000865 90 01 D8         [24] 1260 	mov	dptr,#_copywave_p
      000868 E0               [24] 1261 	movx	a,@dptr
      000869 24 01            [12] 1262 	add	a,#0x01
      00086B F0               [24] 1263 	movx	@dptr,a
      00086C A3               [24] 1264 	inc	dptr
      00086D E0               [24] 1265 	movx	a,@dptr
      00086E 34 00            [12] 1266 	addc	a,#0x00
      000870 F0               [24] 1267 	movx	@dptr,a
                                   1268 ;	interrupt.c:119: copywave_count++;
      000871 90 01 D6         [24] 1269 	mov	dptr,#_copywave_count
      000874 E0               [24] 1270 	movx	a,@dptr
      000875 24 01            [12] 1271 	add	a,#0x01
      000877 F0               [24] 1272 	movx	@dptr,a
      000878 A3               [24] 1273 	inc	dptr
      000879 E0               [24] 1274 	movx	a,@dptr
      00087A 34 00            [12] 1275 	addc	a,#0x00
      00087C F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	interrupt.c:120: copywave_bit_count=0;
      00087D 90 01 DB         [24] 1278 	mov	dptr,#_copywave_bit_count
      000880 E4               [12] 1279 	clr	a
      000881 F0               [24] 1280 	movx	@dptr,a
      000882                       1281 00109$:
                                   1282 ;	interrupt.c:122: TR0=*copywave_p&0x80;
      000882 90 01 D8         [24] 1283 	mov	dptr,#_copywave_p
      000885 E0               [24] 1284 	movx	a,@dptr
      000886 FD               [12] 1285 	mov	r5,a
      000887 A3               [24] 1286 	inc	dptr
      000888 E0               [24] 1287 	movx	a,@dptr
      000889 FE               [12] 1288 	mov	r6,a
      00088A A3               [24] 1289 	inc	dptr
      00088B E0               [24] 1290 	movx	a,@dptr
      00088C FF               [12] 1291 	mov	r7,a
      00088D 8D 82            [24] 1292 	mov	dpl,r5
      00088F 8E 83            [24] 1293 	mov	dph,r6
      000891 8F F0            [24] 1294 	mov	b,r7
      000893 12 1F 3E         [24] 1295 	lcall	__gptrget
      000896 33               [12] 1296 	rlc	a
      000897 92 00            [24] 1297 	mov  _t1_isr_sloc0_1_0,c
      000899 92 8C            [24] 1298 	mov	_TR0,c
                                   1299 ;	interrupt.c:123: *copywave_p=*copywave_p<<1;
      00089B 8D 82            [24] 1300 	mov	dpl,r5
      00089D 8E 83            [24] 1301 	mov	dph,r6
      00089F 8F F0            [24] 1302 	mov	b,r7
      0008A1 12 1F 3E         [24] 1303 	lcall	__gptrget
      0008A4 25 E0            [12] 1304 	add	a,acc
      0008A6 FC               [12] 1305 	mov	r4,a
      0008A7 8D 82            [24] 1306 	mov	dpl,r5
      0008A9 8E 83            [24] 1307 	mov	dph,r6
      0008AB 8F F0            [24] 1308 	mov	b,r7
      0008AD 12 1F 03         [24] 1309 	lcall	__gptrput
                                   1310 ;	interrupt.c:124: copywave_bit_count++;
      0008B0 90 01 DB         [24] 1311 	mov	dptr,#_copywave_bit_count
      0008B3 E0               [24] 1312 	movx	a,@dptr
      0008B4 24 01            [12] 1313 	add	a,#0x01
      0008B6 F0               [24] 1314 	movx	@dptr,a
      0008B7 80 04            [24] 1315 	sjmp	00116$
      0008B9                       1316 00111$:
                                   1317 ;	interrupt.c:126: TR1=0;
      0008B9 C2 8E            [12] 1318 	clr	_TR1
                                   1319 ;	interrupt.c:127: TR0=0;
      0008BB C2 8C            [12] 1320 	clr	_TR0
      0008BD                       1321 00116$:
      0008BD D0 D0            [24] 1322 	pop	psw
      0008BF D0 83            [24] 1323 	pop	dph
      0008C1 D0 82            [24] 1324 	pop	dpl
      0008C3 D0 F0            [24] 1325 	pop	b
      0008C5 D0 E0            [24] 1326 	pop	acc
      0008C7 32               [24] 1327 	reti
                                   1328 ;------------------------------------------------------------
                                   1329 ;Allocation info for local variables in function 'pca_isr'
                                   1330 ;------------------------------------------------------------
                                   1331 ;	interrupt.c:137: void pca_isr(void) __interrupt (7) __using (1)
                                   1332 ;	-----------------------------------------
                                   1333 ;	 function pca_isr
                                   1334 ;	-----------------------------------------
      0008C8                       1335 _pca_isr:
      0008C8 C0 E0            [24] 1336 	push	acc
      0008CA C0 F0            [24] 1337 	push	b
      0008CC C0 82            [24] 1338 	push	dpl
      0008CE C0 83            [24] 1339 	push	dph
      0008D0 C0 D0            [24] 1340 	push	psw
      0008D2 75 D0 08         [24] 1341 	mov	psw,#0x08
                                   1342 ;	interrupt.c:139: CCF0=0;
      0008D5 C2 D8            [12] 1343 	clr	_CCF0
                                   1344 ;	interrupt.c:140: CCAP0L=time;
      0008D7 90 01 D4         [24] 1345 	mov	dptr,#_time
      0008DA E0               [24] 1346 	movx	a,@dptr
      0008DB FE               [12] 1347 	mov	r6,a
      0008DC A3               [24] 1348 	inc	dptr
      0008DD E0               [24] 1349 	movx	a,@dptr
      0008DE FF               [12] 1350 	mov	r7,a
      0008DF 8E EA            [24] 1351 	mov	_CCAP0L,r6
                                   1352 ;	interrupt.c:141: CCAP0H=time>>8;
      0008E1 8F FA            [24] 1353 	mov	_CCAP0H,r7
                                   1354 ;	interrupt.c:142: time+=TIME;
      0008E3 90 01 D4         [24] 1355 	mov	dptr,#_time
      0008E6 74 4C            [12] 1356 	mov	a,#0x4C
      0008E8 2E               [12] 1357 	add	a,r6
      0008E9 F0               [24] 1358 	movx	@dptr,a
      0008EA 74 04            [12] 1359 	mov	a,#0x04
      0008EC 3F               [12] 1360 	addc	a,r7
      0008ED A3               [24] 1361 	inc	dptr
      0008EE F0               [24] 1362 	movx	@dptr,a
                                   1363 ;	interrupt.c:143: if(copy_waveing){
      0008EF 90 01 DC         [24] 1364 	mov	dptr,#_copy_waveing
      0008F2 E0               [24] 1365 	movx	a,@dptr
      0008F3 70 03            [24] 1366 	jnz	00113$
      0008F5 02 09 8E         [24] 1367 	ljmp	00114$
      0008F8                       1368 00113$:
                                   1369 ;	interrupt.c:144: if(copywave_count<400){
      0008F8 90 01 D6         [24] 1370 	mov	dptr,#_copywave_count
      0008FB E0               [24] 1371 	movx	a,@dptr
      0008FC FE               [12] 1372 	mov	r6,a
      0008FD A3               [24] 1373 	inc	dptr
      0008FE E0               [24] 1374 	movx	a,@dptr
      0008FF FF               [12] 1375 	mov	r7,a
      000900 C3               [12] 1376 	clr	c
      000901 EE               [12] 1377 	mov	a,r6
      000902 94 90            [12] 1378 	subb	a,#0x90
      000904 EF               [12] 1379 	mov	a,r7
      000905 94 01            [12] 1380 	subb	a,#0x01
      000907 40 03            [24] 1381 	jc	00104$
      000909 02 09 82         [24] 1382 	ljmp	00105$
      00090C                       1383 00104$:
                                   1384 ;	interrupt.c:145: if(copywave_bit_count<8){
      00090C 90 01 DB         [24] 1385 	mov	dptr,#_copywave_bit_count
      00090F E0               [24] 1386 	movx	a,@dptr
      000910 FF               [12] 1387 	mov	r7,a
      000911 BF 08 00         [24] 1388 	cjne	r7,#0x08,00131$
      000914                       1389 00131$:
      000914 40 1D            [24] 1390 	jc	00103$
                                   1391 ;	interrupt.c:147: copywave_bit_count=0;
      000916 90 01 DB         [24] 1392 	mov	dptr,#_copywave_bit_count
      000919 E4               [12] 1393 	clr	a
      00091A F0               [24] 1394 	movx	@dptr,a
                                   1395 ;	interrupt.c:148: copywave_p++;
      00091B 90 01 D8         [24] 1396 	mov	dptr,#_copywave_p
      00091E E0               [24] 1397 	movx	a,@dptr
      00091F 24 01            [12] 1398 	add	a,#0x01
      000921 F0               [24] 1399 	movx	@dptr,a
      000922 A3               [24] 1400 	inc	dptr
      000923 E0               [24] 1401 	movx	a,@dptr
      000924 34 00            [12] 1402 	addc	a,#0x00
      000926 F0               [24] 1403 	movx	@dptr,a
                                   1404 ;	interrupt.c:149: copywave_count++;
      000927 90 01 D6         [24] 1405 	mov	dptr,#_copywave_count
      00092A E0               [24] 1406 	movx	a,@dptr
      00092B 24 01            [12] 1407 	add	a,#0x01
      00092D F0               [24] 1408 	movx	@dptr,a
      00092E A3               [24] 1409 	inc	dptr
      00092F E0               [24] 1410 	movx	a,@dptr
      000930 34 00            [12] 1411 	addc	a,#0x00
      000932 F0               [24] 1412 	movx	@dptr,a
      000933                       1413 00103$:
                                   1414 ;	interrupt.c:151: copywave_bit_count++;
      000933 90 01 DB         [24] 1415 	mov	dptr,#_copywave_bit_count
      000936 E0               [24] 1416 	movx	a,@dptr
      000937 24 01            [12] 1417 	add	a,#0x01
      000939 F0               [24] 1418 	movx	@dptr,a
                                   1419 ;	interrupt.c:152: *copywave_p=*copywave_p<<1;
      00093A 90 01 D8         [24] 1420 	mov	dptr,#_copywave_p
      00093D E0               [24] 1421 	movx	a,@dptr
      00093E FD               [12] 1422 	mov	r5,a
      00093F A3               [24] 1423 	inc	dptr
      000940 E0               [24] 1424 	movx	a,@dptr
      000941 FE               [12] 1425 	mov	r6,a
      000942 A3               [24] 1426 	inc	dptr
      000943 E0               [24] 1427 	movx	a,@dptr
      000944 FF               [12] 1428 	mov	r7,a
      000945 8D 82            [24] 1429 	mov	dpl,r5
      000947 8E 83            [24] 1430 	mov	dph,r6
      000949 8F F0            [24] 1431 	mov	b,r7
      00094B 12 1F 3E         [24] 1432 	lcall	__gptrget
      00094E 25 E0            [12] 1433 	add	a,acc
      000950 8D 82            [24] 1434 	mov	dpl,r5
      000952 8E 83            [24] 1435 	mov	dph,r6
      000954 8F F0            [24] 1436 	mov	b,r7
      000956 12 1F 03         [24] 1437 	lcall	__gptrput
                                   1438 ;	interrupt.c:153: *copywave_p|=input;
      000959 90 01 D8         [24] 1439 	mov	dptr,#_copywave_p
      00095C E0               [24] 1440 	movx	a,@dptr
      00095D FD               [12] 1441 	mov	r5,a
      00095E A3               [24] 1442 	inc	dptr
      00095F E0               [24] 1443 	movx	a,@dptr
      000960 FE               [12] 1444 	mov	r6,a
      000961 A3               [24] 1445 	inc	dptr
      000962 E0               [24] 1446 	movx	a,@dptr
      000963 FF               [12] 1447 	mov	r7,a
      000964 8D 82            [24] 1448 	mov	dpl,r5
      000966 8E 83            [24] 1449 	mov	dph,r6
      000968 8F F0            [24] 1450 	mov	b,r7
      00096A 12 1F 3E         [24] 1451 	lcall	__gptrget
      00096D FC               [12] 1452 	mov	r4,a
      00096E A2 A7            [12] 1453 	mov	c,_P2_7
      000970 E4               [12] 1454 	clr	a
      000971 33               [12] 1455 	rlc	a
      000972 FB               [12] 1456 	mov	r3,a
      000973 42 0C            [12] 1457 	orl	ar4,a
      000975 8D 82            [24] 1458 	mov	dpl,r5
      000977 8E 83            [24] 1459 	mov	dph,r6
      000979 8F F0            [24] 1460 	mov	b,r7
      00097B EC               [12] 1461 	mov	a,r4
      00097C 12 1F 03         [24] 1462 	lcall	__gptrput
      00097F 02 0A 03         [24] 1463 	ljmp	00116$
      000982                       1464 00105$:
                                   1465 ;	interrupt.c:155: CR=0;
      000982 C2 DE            [12] 1466 	clr	_CR
                                   1467 ;	interrupt.c:156: TR0=0;
      000984 C2 8C            [12] 1468 	clr	_TR0
                                   1469 ;	interrupt.c:157: copy_waveing=0;
      000986 90 01 DC         [24] 1470 	mov	dptr,#_copy_waveing
      000989 E4               [12] 1471 	clr	a
      00098A F0               [24] 1472 	movx	@dptr,a
      00098B 02 0A 03         [24] 1473 	ljmp	00116$
      00098E                       1474 00114$:
                                   1475 ;	interrupt.c:160: if(copywave_count<400){
      00098E 90 01 D6         [24] 1476 	mov	dptr,#_copywave_count
      000991 E0               [24] 1477 	movx	a,@dptr
      000992 FE               [12] 1478 	mov	r6,a
      000993 A3               [24] 1479 	inc	dptr
      000994 E0               [24] 1480 	movx	a,@dptr
      000995 FF               [12] 1481 	mov	r7,a
      000996 C3               [12] 1482 	clr	c
      000997 EE               [12] 1483 	mov	a,r6
      000998 94 90            [12] 1484 	subb	a,#0x90
      00099A EF               [12] 1485 	mov	a,r7
      00099B 94 01            [12] 1486 	subb	a,#0x01
      00099D 40 02            [24] 1487 	jc	00110$
      00099F 80 5E            [24] 1488 	sjmp	00111$
      0009A1                       1489 00110$:
                                   1490 ;	interrupt.c:161: if(copywave_bit_count<8){
      0009A1 90 01 DB         [24] 1491 	mov	dptr,#_copywave_bit_count
      0009A4 E0               [24] 1492 	movx	a,@dptr
      0009A5 FF               [12] 1493 	mov	r7,a
      0009A6 BF 08 00         [24] 1494 	cjne	r7,#0x08,00134$
      0009A9                       1495 00134$:
      0009A9 40 1D            [24] 1496 	jc	00109$
                                   1497 ;	interrupt.c:163: copywave_p++;
      0009AB 90 01 D8         [24] 1498 	mov	dptr,#_copywave_p
      0009AE E0               [24] 1499 	movx	a,@dptr
      0009AF 24 01            [12] 1500 	add	a,#0x01
      0009B1 F0               [24] 1501 	movx	@dptr,a
      0009B2 A3               [24] 1502 	inc	dptr
      0009B3 E0               [24] 1503 	movx	a,@dptr
      0009B4 34 00            [12] 1504 	addc	a,#0x00
      0009B6 F0               [24] 1505 	movx	@dptr,a
                                   1506 ;	interrupt.c:164: copywave_count++;
      0009B7 90 01 D6         [24] 1507 	mov	dptr,#_copywave_count
      0009BA E0               [24] 1508 	movx	a,@dptr
      0009BB 24 01            [12] 1509 	add	a,#0x01
      0009BD F0               [24] 1510 	movx	@dptr,a
      0009BE A3               [24] 1511 	inc	dptr
      0009BF E0               [24] 1512 	movx	a,@dptr
      0009C0 34 00            [12] 1513 	addc	a,#0x00
      0009C2 F0               [24] 1514 	movx	@dptr,a
                                   1515 ;	interrupt.c:165: copywave_bit_count=0;
      0009C3 90 01 DB         [24] 1516 	mov	dptr,#_copywave_bit_count
      0009C6 E4               [12] 1517 	clr	a
      0009C7 F0               [24] 1518 	movx	@dptr,a
      0009C8                       1519 00109$:
                                   1520 ;	interrupt.c:167: TR0=*copywave_p&0x80;
      0009C8 90 01 D8         [24] 1521 	mov	dptr,#_copywave_p
      0009CB E0               [24] 1522 	movx	a,@dptr
      0009CC FD               [12] 1523 	mov	r5,a
      0009CD A3               [24] 1524 	inc	dptr
      0009CE E0               [24] 1525 	movx	a,@dptr
      0009CF FE               [12] 1526 	mov	r6,a
      0009D0 A3               [24] 1527 	inc	dptr
      0009D1 E0               [24] 1528 	movx	a,@dptr
      0009D2 FF               [12] 1529 	mov	r7,a
      0009D3 8D 82            [24] 1530 	mov	dpl,r5
      0009D5 8E 83            [24] 1531 	mov	dph,r6
      0009D7 8F F0            [24] 1532 	mov	b,r7
      0009D9 12 1F 3E         [24] 1533 	lcall	__gptrget
      0009DC 33               [12] 1534 	rlc	a
      0009DD 92 01            [24] 1535 	mov  _pca_isr_sloc0_1_0,c
      0009DF 92 8C            [24] 1536 	mov	_TR0,c
                                   1537 ;	interrupt.c:168: *copywave_p=*copywave_p<<1;
      0009E1 8D 82            [24] 1538 	mov	dpl,r5
      0009E3 8E 83            [24] 1539 	mov	dph,r6
      0009E5 8F F0            [24] 1540 	mov	b,r7
      0009E7 12 1F 3E         [24] 1541 	lcall	__gptrget
      0009EA 25 E0            [12] 1542 	add	a,acc
      0009EC FC               [12] 1543 	mov	r4,a
      0009ED 8D 82            [24] 1544 	mov	dpl,r5
      0009EF 8E 83            [24] 1545 	mov	dph,r6
      0009F1 8F F0            [24] 1546 	mov	b,r7
      0009F3 12 1F 03         [24] 1547 	lcall	__gptrput
                                   1548 ;	interrupt.c:169: copywave_bit_count++;
      0009F6 90 01 DB         [24] 1549 	mov	dptr,#_copywave_bit_count
      0009F9 E0               [24] 1550 	movx	a,@dptr
      0009FA 24 01            [12] 1551 	add	a,#0x01
      0009FC F0               [24] 1552 	movx	@dptr,a
      0009FD 80 04            [24] 1553 	sjmp	00116$
      0009FF                       1554 00111$:
                                   1555 ;	interrupt.c:171: CR=0;
      0009FF C2 DE            [12] 1556 	clr	_CR
                                   1557 ;	interrupt.c:172: TR0=0;
      000A01 C2 8C            [12] 1558 	clr	_TR0
      000A03                       1559 00116$:
      000A03 D0 D0            [24] 1560 	pop	psw
      000A05 D0 83            [24] 1561 	pop	dph
      000A07 D0 82            [24] 1562 	pop	dpl
      000A09 D0 F0            [24] 1563 	pop	b
      000A0B D0 E0            [24] 1564 	pop	acc
      000A0D 32               [24] 1565 	reti
                                   1566 ;------------------------------------------------------------
                                   1567 ;Allocation info for local variables in function 'idle'
                                   1568 ;------------------------------------------------------------
                                   1569 ;	test.c:25: void idle(void)
                                   1570 ;	-----------------------------------------
                                   1571 ;	 function idle
                                   1572 ;	-----------------------------------------
      000A0E                       1573 _idle:
                           000007  1574 	ar7 = 0x07
                           000006  1575 	ar6 = 0x06
                           000005  1576 	ar5 = 0x05
                           000004  1577 	ar4 = 0x04
                           000003  1578 	ar3 = 0x03
                           000002  1579 	ar2 = 0x02
                           000001  1580 	ar1 = 0x01
                           000000  1581 	ar0 = 0x00
                                   1582 ;	test.c:27: while(1){
      000A0E                       1583 00102$:
                                   1584 ;	test.c:28: P2_3=!P2_3;
      000A0E B2 A3            [12] 1585 	cpl	_P2_3
                                   1586 ;	test.c:29: delay(500);
      000A10 90 01 F4         [24] 1587 	mov	dptr,#0x01F4
      000A13 12 04 41         [24] 1588 	lcall	_delay
                                   1589 ;	test.c:31: return;
      000A16 80 F6            [24] 1590 	sjmp	00102$
                                   1591 ;------------------------------------------------------------
                                   1592 ;Allocation info for local variables in function 'te'
                                   1593 ;------------------------------------------------------------
                                   1594 ;S                         Allocated with name '_te_S_1_90'
                                   1595 ;i                         Allocated with name '_te_i_1_90'
                                   1596 ;------------------------------------------------------------
                                   1597 ;	test.c:34: void te(void)
                                   1598 ;	-----------------------------------------
                                   1599 ;	 function te
                                   1600 ;	-----------------------------------------
      000A18                       1601 _te:
                                   1602 ;	test.c:36: uchar *S=(uchar*)SP-2;
      000A18 AD 81            [24] 1603 	mov	r5,_SP
      000A1A E4               [12] 1604 	clr	a
      000A1B FE               [12] 1605 	mov	r6,a
      000A1C FF               [12] 1606 	mov	r7,a
      000A1D ED               [12] 1607 	mov	a,r5
      000A1E 24 FE            [12] 1608 	add	a,#0xFE
      000A20 FD               [12] 1609 	mov	r5,a
      000A21 EE               [12] 1610 	mov	a,r6
      000A22 34 FF            [12] 1611 	addc	a,#0xFF
      000A24 FE               [12] 1612 	mov	r6,a
      000A25 90 00 50         [24] 1613 	mov	dptr,#_te_S_1_90
      000A28 ED               [12] 1614 	mov	a,r5
      000A29 F0               [24] 1615 	movx	@dptr,a
      000A2A EE               [12] 1616 	mov	a,r6
      000A2B A3               [24] 1617 	inc	dptr
      000A2C F0               [24] 1618 	movx	@dptr,a
      000A2D EF               [12] 1619 	mov	a,r7
      000A2E A3               [24] 1620 	inc	dptr
      000A2F F0               [24] 1621 	movx	@dptr,a
                                   1622 ;	test.c:38: for(i=0;i<20;i++){
      000A30 90 00 53         [24] 1623 	mov	dptr,#_te_i_1_90
      000A33 F0               [24] 1624 	movx	@dptr,a
      000A34 A3               [24] 1625 	inc	dptr
      000A35 F0               [24] 1626 	movx	@dptr,a
      000A36 90 00 53         [24] 1627 	mov	dptr,#_te_i_1_90
      000A39 E0               [24] 1628 	movx	a,@dptr
      000A3A FE               [12] 1629 	mov	r6,a
      000A3B A3               [24] 1630 	inc	dptr
      000A3C E0               [24] 1631 	movx	a,@dptr
      000A3D FF               [12] 1632 	mov	r7,a
      000A3E 90 00 50         [24] 1633 	mov	dptr,#_te_S_1_90
      000A41 E0               [24] 1634 	movx	a,@dptr
      000A42 FB               [12] 1635 	mov	r3,a
      000A43 A3               [24] 1636 	inc	dptr
      000A44 E0               [24] 1637 	movx	a,@dptr
      000A45 FC               [12] 1638 	mov	r4,a
      000A46 A3               [24] 1639 	inc	dptr
      000A47 E0               [24] 1640 	movx	a,@dptr
      000A48 FD               [12] 1641 	mov	r5,a
      000A49                       1642 00102$:
                                   1643 ;	test.c:39: display("SP=",(uchar)S);
      000A49 8B 00            [24] 1644 	mov	ar0,r3
      000A4B 8C 01            [24] 1645 	mov	ar1,r4
      000A4D 8D 02            [24] 1646 	mov	ar2,r5
      000A4F 90 00 93         [24] 1647 	mov	dptr,#_display_PARM_2
      000A52 E8               [12] 1648 	mov	a,r0
      000A53 F0               [24] 1649 	movx	@dptr,a
      000A54 90 21 6E         [24] 1650 	mov	dptr,#___str_0
      000A57 75 F0 80         [24] 1651 	mov	b,#0x80
      000A5A C0 07            [24] 1652 	push	ar7
      000A5C C0 06            [24] 1653 	push	ar6
      000A5E C0 05            [24] 1654 	push	ar5
      000A60 C0 04            [24] 1655 	push	ar4
      000A62 C0 03            [24] 1656 	push	ar3
      000A64 12 0D 80         [24] 1657 	lcall	_display
      000A67 D0 03            [24] 1658 	pop	ar3
      000A69 D0 04            [24] 1659 	pop	ar4
      000A6B D0 05            [24] 1660 	pop	ar5
      000A6D D0 06            [24] 1661 	pop	ar6
      000A6F D0 07            [24] 1662 	pop	ar7
                                   1663 ;	test.c:40: display("@SP=",*S);
      000A71 8B 82            [24] 1664 	mov	dpl,r3
      000A73 8C 83            [24] 1665 	mov	dph,r4
      000A75 8D F0            [24] 1666 	mov	b,r5
      000A77 12 1F 3E         [24] 1667 	lcall	__gptrget
      000A7A 90 00 93         [24] 1668 	mov	dptr,#_display_PARM_2
      000A7D F0               [24] 1669 	movx	@dptr,a
      000A7E 90 21 72         [24] 1670 	mov	dptr,#___str_1
      000A81 75 F0 80         [24] 1671 	mov	b,#0x80
      000A84 C0 07            [24] 1672 	push	ar7
      000A86 C0 06            [24] 1673 	push	ar6
      000A88 C0 05            [24] 1674 	push	ar5
      000A8A C0 04            [24] 1675 	push	ar4
      000A8C C0 03            [24] 1676 	push	ar3
      000A8E 12 0D 80         [24] 1677 	lcall	_display
      000A91 D0 03            [24] 1678 	pop	ar3
      000A93 D0 04            [24] 1679 	pop	ar4
      000A95 D0 05            [24] 1680 	pop	ar5
      000A97 D0 06            [24] 1681 	pop	ar6
      000A99 D0 07            [24] 1682 	pop	ar7
                                   1683 ;	test.c:41: display("i=",(uchar)i);
      000A9B 90 00 93         [24] 1684 	mov	dptr,#_display_PARM_2
      000A9E EE               [12] 1685 	mov	a,r6
      000A9F F0               [24] 1686 	movx	@dptr,a
      000AA0 90 21 77         [24] 1687 	mov	dptr,#___str_2
      000AA3 75 F0 80         [24] 1688 	mov	b,#0x80
      000AA6 C0 07            [24] 1689 	push	ar7
      000AA8 C0 06            [24] 1690 	push	ar6
      000AAA C0 05            [24] 1691 	push	ar5
      000AAC C0 04            [24] 1692 	push	ar4
      000AAE C0 03            [24] 1693 	push	ar3
      000AB0 12 0D 80         [24] 1694 	lcall	_display
      000AB3 D0 03            [24] 1695 	pop	ar3
      000AB5 D0 04            [24] 1696 	pop	ar4
      000AB7 D0 05            [24] 1697 	pop	ar5
      000AB9 D0 06            [24] 1698 	pop	ar6
      000ABB D0 07            [24] 1699 	pop	ar7
                                   1700 ;	test.c:42: S--;
      000ABD 1B               [12] 1701 	dec	r3
      000ABE BB FF 01         [24] 1702 	cjne	r3,#0xFF,00110$
      000AC1 1C               [12] 1703 	dec	r4
      000AC2                       1704 00110$:
                                   1705 ;	test.c:38: for(i=0;i<20;i++){
      000AC2 0E               [12] 1706 	inc	r6
      000AC3 BE 00 01         [24] 1707 	cjne	r6,#0x00,00111$
      000AC6 0F               [12] 1708 	inc	r7
      000AC7                       1709 00111$:
      000AC7 C3               [12] 1710 	clr	c
      000AC8 EE               [12] 1711 	mov	a,r6
      000AC9 94 14            [12] 1712 	subb	a,#0x14
      000ACB EF               [12] 1713 	mov	a,r7
      000ACC 94 00            [12] 1714 	subb	a,#0x00
      000ACE 50 03            [24] 1715 	jnc	00112$
      000AD0 02 0A 49         [24] 1716 	ljmp	00102$
      000AD3                       1717 00112$:
      000AD3 22               [24] 1718 	ret
                                   1719 ;------------------------------------------------------------
                                   1720 ;Allocation info for local variables in function 'maichong'
                                   1721 ;------------------------------------------------------------
                                   1722 ;	test.c:47: void maichong(void)		//红外脉冲发生定时器输出初始化,发射定时器初始化
                                   1723 ;	-----------------------------------------
                                   1724 ;	 function maichong
                                   1725 ;	-----------------------------------------
      000AD4                       1726 _maichong:
                                   1727 ;	test.c:49: TH0=0x72;
      000AD4 75 8C 72         [24] 1728 	mov	_TH0,#0x72
                                   1729 ;	test.c:50: TL0=0x72;
      000AD7 75 8A 72         [24] 1730 	mov	_TL0,#0x72
                                   1731 ;	test.c:51: WAKE_CLKO=0x01;
      000ADA 75 8F 01         [24] 1732 	mov	_WAKE_CLKO,#0x01
                                   1733 ;	test.c:52: AUXR|=0xc0;	//定时器1,0频率提高12倍
      000ADD 43 8E C0         [24] 1734 	orl	_AUXR,#0xC0
                                   1735 ;	test.c:53: TMOD = 0x22;       //T1,T0 方式2
      000AE0 75 89 22         [24] 1736 	mov	_TMOD,#0x22
                                   1737 ;	test.c:55: return;
      000AE3 22               [24] 1738 	ret
                                   1739 ;------------------------------------------------------------
                                   1740 ;Allocation info for local variables in function 'sound_init'
                                   1741 ;------------------------------------------------------------
                                   1742 ;	test.c:57: void sound_init(void)		//声音初始化
                                   1743 ;	-----------------------------------------
                                   1744 ;	 function sound_init
                                   1745 ;	-----------------------------------------
      000AE4                       1746 _sound_init:
                                   1747 ;	test.c:59: P0_2=0;
      000AE4 C2 82            [12] 1748 	clr	_P0_2
                                   1749 ;	test.c:60: delay(300);
      000AE6 90 01 2C         [24] 1750 	mov	dptr,#0x012C
      000AE9 12 04 41         [24] 1751 	lcall	_delay
                                   1752 ;	test.c:61: P0_2=1;
      000AEC D2 82            [12] 1753 	setb	_P0_2
                                   1754 ;	test.c:62: return;
      000AEE 22               [24] 1755 	ret
                                   1756 ;------------------------------------------------------------
                                   1757 ;Allocation info for local variables in function 'key_init'
                                   1758 ;------------------------------------------------------------
                                   1759 ;	test.c:64: void key_init( void)		//按键初始化
                                   1760 ;	-----------------------------------------
                                   1761 ;	 function key_init
                                   1762 ;	-----------------------------------------
      000AEF                       1763 _key_init:
                                   1764 ;	test.c:66: EX1=1;IT1=1;
      000AEF D2 AA            [12] 1765 	setb	_EX1
      000AF1 D2 8A            [12] 1766 	setb	_IT1
                                   1767 ;	test.c:67: EX0=1;IT0=1;IP=0x02;
      000AF3 D2 A8            [12] 1768 	setb	_EX0
      000AF5 D2 88            [12] 1769 	setb	_IT0
      000AF7 75 B8 02         [24] 1770 	mov	_IP,#0x02
                                   1771 ;	test.c:68: return;
      000AFA 22               [24] 1772 	ret
                                   1773 ;------------------------------------------------------------
                                   1774 ;Allocation info for local variables in function 'hw_init'
                                   1775 ;------------------------------------------------------------
                                   1776 ;	test.c:73: void hw_init(void)
                                   1777 ;	-----------------------------------------
                                   1778 ;	 function hw_init
                                   1779 ;	-----------------------------------------
      000AFB                       1780 _hw_init:
                                   1781 ;	test.c:75: interrupt_count=0;
      000AFB 90 00 4E         [24] 1782 	mov	dptr,#_interrupt_count
      000AFE E4               [12] 1783 	clr	a
      000AFF F0               [24] 1784 	movx	@dptr,a
      000B00 A3               [24] 1785 	inc	dptr
      000B01 F0               [24] 1786 	movx	@dptr,a
                                   1787 ;	test.c:76: maichong();
      000B02 12 0A D4         [24] 1788 	lcall	_maichong
                                   1789 ;	test.c:77: sound_init();
      000B05 12 0A E4         [24] 1790 	lcall	_sound_init
                                   1791 ;	test.c:78: pca_timer();
      000B08 12 17 47         [24] 1792 	lcall	_pca_timer
                                   1793 ;	test.c:79: uart_init();
      000B0B 12 0F 28         [24] 1794 	lcall	_uart_init
                                   1795 ;	test.c:80: wifi_init();
      000B0E 12 13 68         [24] 1796 	lcall	_wifi_init
                                   1797 ;	test.c:81: key_init();
                                   1798 ;	test.c:82: return;
      000B11 02 0A EF         [24] 1799 	ljmp	_key_init
                                   1800 ;------------------------------------------------------------
                                   1801 ;Allocation info for local variables in function 'main'
                                   1802 ;------------------------------------------------------------
                                   1803 ;	test.c:85: int main(void)
                                   1804 ;	-----------------------------------------
                                   1805 ;	 function main
                                   1806 ;	-----------------------------------------
      000B14                       1807 _main:
                                   1808 ;	test.c:87: hw_init();
      000B14 12 0A FB         [24] 1809 	lcall	_hw_init
                                   1810 ;	test.c:88: os_init();
      000B17 12 02 B6         [24] 1811 	lcall	_os_init
                                   1812 ;	test.c:89: task_create(idle,7);	
      000B1A 7D 0E            [12] 1813 	mov	r5,#_idle
      000B1C 7E 0A            [12] 1814 	mov	r6,#(_idle >> 8)
      000B1E 7F 80            [12] 1815 	mov	r7,#0x80
      000B20 90 00 41         [24] 1816 	mov	dptr,#_task_create_PARM_2
      000B23 74 07            [12] 1817 	mov	a,#0x07
      000B25 F0               [24] 1818 	movx	@dptr,a
      000B26 E4               [12] 1819 	clr	a
      000B27 A3               [24] 1820 	inc	dptr
      000B28 F0               [24] 1821 	movx	@dptr,a
      000B29 8D 82            [24] 1822 	mov	dpl,r5
      000B2B 8E 83            [24] 1823 	mov	dph,r6
      000B2D 8F F0            [24] 1824 	mov	b,r7
      000B2F 12 01 E8         [24] 1825 	lcall	_task_create
                                   1826 ;	test.c:90: app();
      000B32 12 0C B1         [24] 1827 	lcall	_app
                                   1828 ;	test.c:92: os_start();
      000B35 12 03 14         [24] 1829 	lcall	_os_start
                                   1830 ;	test.c:93: while(1){
      000B38                       1831 00102$:
                                   1832 ;	test.c:94: sendstr("switch_fail\r\n");
      000B38 90 21 7A         [24] 1833 	mov	dptr,#___str_3
      000B3B 75 F0 80         [24] 1834 	mov	b,#0x80
      000B3E 12 0D 16         [24] 1835 	lcall	_sendstr
      000B41 80 F5            [24] 1836 	sjmp	00102$
      000B43 22               [24] 1837 	ret
                                   1838 	.area CSEG    (CODE)
                                   1839 	.area CONST   (CODE)
      00216E                       1840 ___str_0:
      00216E 53 50 3D              1841 	.ascii "SP="
      002171 00                    1842 	.db 0x00
      002172                       1843 ___str_1:
      002172 40 53 50 3D           1844 	.ascii "@SP="
      002176 00                    1845 	.db 0x00
      002177                       1846 ___str_2:
      002177 69 3D                 1847 	.ascii "i="
      002179 00                    1848 	.db 0x00
      00217A                       1849 ___str_3:
      00217A 73 77 69 74 63 68 5F  1850 	.ascii "switch_fail"
             66 61 69 6C
      002185 0D                    1851 	.db 0x0D
      002186 0A                    1852 	.db 0x0A
      002187 00                    1853 	.db 0x00
                                   1854 	.area XINIT   (CODE)
      00220E                       1855 __xinit__b:
      00220E 34 12                 1856 	.byte #0x34,#0x12	; 4660
                                   1857 	.area CABS    (ABS,CODE)
