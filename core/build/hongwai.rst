                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module hongwai
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _luzhi
                                     13 	.globl _copy_wave
                                     14 	.globl _fashe
                                     15 	.globl _delay
                                     16 	.globl _delay1
                                     17 	.globl _pca_timer
                                     18 	.globl _memset
                                     19 	.globl _display
                                     20 	.globl _read_sequ
                                     21 	.globl _write_byte
                                     22 	.globl _CF
                                     23 	.globl _CR
                                     24 	.globl _CCF1
                                     25 	.globl _CCF0
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _ET2
                                     44 	.globl _CY
                                     45 	.globl _AC
                                     46 	.globl _F0
                                     47 	.globl _RS1
                                     48 	.globl _RS0
                                     49 	.globl _OV
                                     50 	.globl _F1
                                     51 	.globl _P
                                     52 	.globl _PS
                                     53 	.globl _PT1
                                     54 	.globl _PX1
                                     55 	.globl _PT0
                                     56 	.globl _PX0
                                     57 	.globl _RD
                                     58 	.globl _WR
                                     59 	.globl _T1
                                     60 	.globl _T0
                                     61 	.globl _INT1
                                     62 	.globl _INT0
                                     63 	.globl _TXD
                                     64 	.globl _RXD
                                     65 	.globl _P3_7
                                     66 	.globl _P3_6
                                     67 	.globl _P3_5
                                     68 	.globl _P3_4
                                     69 	.globl _P3_3
                                     70 	.globl _P3_2
                                     71 	.globl _P3_1
                                     72 	.globl _P3_0
                                     73 	.globl _EA
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _SM0
                                     88 	.globl _SM1
                                     89 	.globl _SM2
                                     90 	.globl _REN
                                     91 	.globl _TB8
                                     92 	.globl _RB8
                                     93 	.globl _TI
                                     94 	.globl _RI
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _TF1
                                    104 	.globl _TR1
                                    105 	.globl _TF0
                                    106 	.globl _TR0
                                    107 	.globl _IE1
                                    108 	.globl _IT1
                                    109 	.globl _IE0
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _PCA_PWM1
                                    120 	.globl _PCA_PWM0
                                    121 	.globl _CCAP1H
                                    122 	.globl _CCAP1L
                                    123 	.globl _CCAP0H
                                    124 	.globl _CCAP0L
                                    125 	.globl _CH
                                    126 	.globl _CL
                                    127 	.globl _CCAPM1
                                    128 	.globl _CCAPM0
                                    129 	.globl _CMOD
                                    130 	.globl _CCON
                                    131 	.globl _WAKE_CLKO
                                    132 	.globl _BRT
                                    133 	.globl _IE2
                                    134 	.globl _S2BUF
                                    135 	.globl _S2CON
                                    136 	.globl _AUXR1
                                    137 	.globl _AUXR
                                    138 	.globl _TH2
                                    139 	.globl _TL2
                                    140 	.globl _RCAP2H
                                    141 	.globl _RCAP2L
                                    142 	.globl _T2CON
                                    143 	.globl _B
                                    144 	.globl _ACC
                                    145 	.globl _PSW
                                    146 	.globl _IP
                                    147 	.globl _P3
                                    148 	.globl _IE
                                    149 	.globl _P2
                                    150 	.globl _SBUF
                                    151 	.globl _SCON
                                    152 	.globl _P1
                                    153 	.globl _TH1
                                    154 	.globl _TH0
                                    155 	.globl _TL1
                                    156 	.globl _TL0
                                    157 	.globl _TMOD
                                    158 	.globl _TCON
                                    159 	.globl _PCON
                                    160 	.globl _DPH
                                    161 	.globl _DPL
                                    162 	.globl _SP
                                    163 	.globl _P0
                                    164 	.globl _copywave_tmp
                                    165 	.globl _copy_waveing
                                    166 	.globl _copywave_bit_count
                                    167 	.globl _copywave_p
                                    168 	.globl _copywave_count
                                    169 	.globl _time
                                    170 ;--------------------------------------------------------
                                    171 ; special function registers
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0	=	0x0080
                           000081   176 _SP	=	0x0081
                           000082   177 _DPL	=	0x0082
                           000083   178 _DPH	=	0x0083
                           000087   179 _PCON	=	0x0087
                           000088   180 _TCON	=	0x0088
                           000089   181 _TMOD	=	0x0089
                           00008A   182 _TL0	=	0x008a
                           00008B   183 _TL1	=	0x008b
                           00008C   184 _TH0	=	0x008c
                           00008D   185 _TH1	=	0x008d
                           000090   186 _P1	=	0x0090
                           000098   187 _SCON	=	0x0098
                           000099   188 _SBUF	=	0x0099
                           0000A0   189 _P2	=	0x00a0
                           0000A8   190 _IE	=	0x00a8
                           0000B0   191 _P3	=	0x00b0
                           0000B8   192 _IP	=	0x00b8
                           0000D0   193 _PSW	=	0x00d0
                           0000E0   194 _ACC	=	0x00e0
                           0000F0   195 _B	=	0x00f0
                           0000C8   196 _T2CON	=	0x00c8
                           0000CA   197 _RCAP2L	=	0x00ca
                           0000CB   198 _RCAP2H	=	0x00cb
                           0000CC   199 _TL2	=	0x00cc
                           0000CD   200 _TH2	=	0x00cd
                           00008E   201 _AUXR	=	0x008e
                           0000A2   202 _AUXR1	=	0x00a2
                           00009A   203 _S2CON	=	0x009a
                           00009B   204 _S2BUF	=	0x009b
                           0000AF   205 _IE2	=	0x00af
                           00009C   206 _BRT	=	0x009c
                           00008F   207 _WAKE_CLKO	=	0x008f
                           0000D8   208 _CCON	=	0x00d8
                           0000D9   209 _CMOD	=	0x00d9
                           0000DA   210 _CCAPM0	=	0x00da
                           0000DB   211 _CCAPM1	=	0x00db
                           0000E9   212 _CL	=	0x00e9
                           0000F9   213 _CH	=	0x00f9
                           0000EA   214 _CCAP0L	=	0x00ea
                           0000FA   215 _CCAP0H	=	0x00fa
                           0000EB   216 _CCAP1L	=	0x00eb
                           0000FB   217 _CCAP1H	=	0x00fb
                           0000F2   218 _PCA_PWM0	=	0x00f2
                           0000F3   219 _PCA_PWM1	=	0x00f3
                                    220 ;--------------------------------------------------------
                                    221 ; special function bits
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           000080   225 _P0_0	=	0x0080
                           000081   226 _P0_1	=	0x0081
                           000082   227 _P0_2	=	0x0082
                           000083   228 _P0_3	=	0x0083
                           000084   229 _P0_4	=	0x0084
                           000085   230 _P0_5	=	0x0085
                           000086   231 _P0_6	=	0x0086
                           000087   232 _P0_7	=	0x0087
                           000088   233 _IT0	=	0x0088
                           000089   234 _IE0	=	0x0089
                           00008A   235 _IT1	=	0x008a
                           00008B   236 _IE1	=	0x008b
                           00008C   237 _TR0	=	0x008c
                           00008D   238 _TF0	=	0x008d
                           00008E   239 _TR1	=	0x008e
                           00008F   240 _TF1	=	0x008f
                           000090   241 _P1_0	=	0x0090
                           000091   242 _P1_1	=	0x0091
                           000092   243 _P1_2	=	0x0092
                           000093   244 _P1_3	=	0x0093
                           000094   245 _P1_4	=	0x0094
                           000095   246 _P1_5	=	0x0095
                           000096   247 _P1_6	=	0x0096
                           000097   248 _P1_7	=	0x0097
                           000098   249 _RI	=	0x0098
                           000099   250 _TI	=	0x0099
                           00009A   251 _RB8	=	0x009a
                           00009B   252 _TB8	=	0x009b
                           00009C   253 _REN	=	0x009c
                           00009D   254 _SM2	=	0x009d
                           00009E   255 _SM1	=	0x009e
                           00009F   256 _SM0	=	0x009f
                           0000A0   257 _P2_0	=	0x00a0
                           0000A1   258 _P2_1	=	0x00a1
                           0000A2   259 _P2_2	=	0x00a2
                           0000A3   260 _P2_3	=	0x00a3
                           0000A4   261 _P2_4	=	0x00a4
                           0000A5   262 _P2_5	=	0x00a5
                           0000A6   263 _P2_6	=	0x00a6
                           0000A7   264 _P2_7	=	0x00a7
                           0000A8   265 _EX0	=	0x00a8
                           0000A9   266 _ET0	=	0x00a9
                           0000AA   267 _EX1	=	0x00aa
                           0000AB   268 _ET1	=	0x00ab
                           0000AC   269 _ES	=	0x00ac
                           0000AF   270 _EA	=	0x00af
                           0000B0   271 _P3_0	=	0x00b0
                           0000B1   272 _P3_1	=	0x00b1
                           0000B2   273 _P3_2	=	0x00b2
                           0000B3   274 _P3_3	=	0x00b3
                           0000B4   275 _P3_4	=	0x00b4
                           0000B5   276 _P3_5	=	0x00b5
                           0000B6   277 _P3_6	=	0x00b6
                           0000B7   278 _P3_7	=	0x00b7
                           0000B0   279 _RXD	=	0x00b0
                           0000B1   280 _TXD	=	0x00b1
                           0000B2   281 _INT0	=	0x00b2
                           0000B3   282 _INT1	=	0x00b3
                           0000B4   283 _T0	=	0x00b4
                           0000B5   284 _T1	=	0x00b5
                           0000B6   285 _WR	=	0x00b6
                           0000B7   286 _RD	=	0x00b7
                           0000B8   287 _PX0	=	0x00b8
                           0000B9   288 _PT0	=	0x00b9
                           0000BA   289 _PX1	=	0x00ba
                           0000BB   290 _PT1	=	0x00bb
                           0000BC   291 _PS	=	0x00bc
                           0000D0   292 _P	=	0x00d0
                           0000D1   293 _F1	=	0x00d1
                           0000D2   294 _OV	=	0x00d2
                           0000D3   295 _RS0	=	0x00d3
                           0000D4   296 _RS1	=	0x00d4
                           0000D5   297 _F0	=	0x00d5
                           0000D6   298 _AC	=	0x00d6
                           0000D7   299 _CY	=	0x00d7
                           0000AD   300 _ET2	=	0x00ad
                           0000BD   301 _PT2	=	0x00bd
                           0000C8   302 _T2CON_0	=	0x00c8
                           0000C9   303 _T2CON_1	=	0x00c9
                           0000CA   304 _T2CON_2	=	0x00ca
                           0000CB   305 _T2CON_3	=	0x00cb
                           0000CC   306 _T2CON_4	=	0x00cc
                           0000CD   307 _T2CON_5	=	0x00cd
                           0000CE   308 _T2CON_6	=	0x00ce
                           0000CF   309 _T2CON_7	=	0x00cf
                           0000C8   310 _CP_RL2	=	0x00c8
                           0000C9   311 _C_T2	=	0x00c9
                           0000CA   312 _TR2	=	0x00ca
                           0000CB   313 _EXEN2	=	0x00cb
                           0000CC   314 _TCLK	=	0x00cc
                           0000CD   315 _RCLK	=	0x00cd
                           0000CE   316 _EXF2	=	0x00ce
                           0000CF   317 _TF2	=	0x00cf
                           0000D8   318 _CCF0	=	0x00d8
                           0000D9   319 _CCF1	=	0x00d9
                           0000DE   320 _CR	=	0x00de
                           0000DF   321 _CF	=	0x00df
                                    322 ;--------------------------------------------------------
                                    323 ; overlayable register banks
                                    324 ;--------------------------------------------------------
                                    325 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        326 	.ds 8
                                    327 ;--------------------------------------------------------
                                    328 ; internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area DSEG    (DATA)
                                    331 ;--------------------------------------------------------
                                    332 ; overlayable items in internal ram 
                                    333 ;--------------------------------------------------------
                                    334 ;--------------------------------------------------------
                                    335 ; indirectly addressable internal ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area ISEG    (DATA)
                                    338 ;--------------------------------------------------------
                                    339 ; absolute internal ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area IABS    (ABS,DATA)
                                    342 	.area IABS    (ABS,DATA)
                                    343 ;--------------------------------------------------------
                                    344 ; bit data
                                    345 ;--------------------------------------------------------
                                    346 	.area BSEG    (BIT)
                                    347 ;--------------------------------------------------------
                                    348 ; paged external ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area PSEG    (PAG,XDATA)
                                    351 ;--------------------------------------------------------
                                    352 ; external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XSEG    (XDATA)
      0001D4                        355 _time::
      0001D4                        356 	.ds 2
      0001D6                        357 _copywave_count::
      0001D6                        358 	.ds 2
      0001D8                        359 _copywave_p::
      0001D8                        360 	.ds 3
      0001DB                        361 _copywave_bit_count::
      0001DB                        362 	.ds 1
      0001DC                        363 _copy_waveing::
      0001DC                        364 	.ds 1
      0001DD                        365 _copywave_tmp::
      0001DD                        366 	.ds 400
      00036D                        367 _fashe_c_1_22:
      00036D                        368 	.ds 2
      00036F                        369 _fashe_i_1_23:
      00036F                        370 	.ds 2
      000371                        371 _copy_wave_c_1_25:
      000371                        372 	.ds 2
      000373                        373 _copy_wave_i_1_26:
      000373                        374 	.ds 2
                                    375 ;--------------------------------------------------------
                                    376 ; absolute external ram data
                                    377 ;--------------------------------------------------------
                                    378 	.area XABS    (ABS,XDATA)
                                    379 ;--------------------------------------------------------
                                    380 ; external initialized ram data
                                    381 ;--------------------------------------------------------
                                    382 	.area XISEG   (XDATA)
                                    383 	.area HOME    (CODE)
                                    384 	.area GSINIT0 (CODE)
                                    385 	.area GSINIT1 (CODE)
                                    386 	.area GSINIT2 (CODE)
                                    387 	.area GSINIT3 (CODE)
                                    388 	.area GSINIT4 (CODE)
                                    389 	.area GSINIT5 (CODE)
                                    390 	.area GSINIT  (CODE)
                                    391 	.area GSFINAL (CODE)
                                    392 	.area CSEG    (CODE)
                                    393 ;--------------------------------------------------------
                                    394 ; global & static initialisations
                                    395 ;--------------------------------------------------------
                                    396 	.area HOME    (CODE)
                                    397 	.area GSINIT  (CODE)
                                    398 	.area GSFINAL (CODE)
                                    399 	.area GSINIT  (CODE)
                                    400 ;--------------------------------------------------------
                                    401 ; Home
                                    402 ;--------------------------------------------------------
                                    403 	.area HOME    (CODE)
                                    404 	.area HOME    (CODE)
                                    405 ;--------------------------------------------------------
                                    406 ; code
                                    407 ;--------------------------------------------------------
                                    408 	.area CSEG    (CODE)
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'pca_timer'
                                    411 ;------------------------------------------------------------
                                    412 ;	hongwai.c:8: void pca_timer(void)
                                    413 ;	-----------------------------------------
                                    414 ;	 function pca_timer
                                    415 ;	-----------------------------------------
      001747                        416 _pca_timer:
                           000007   417 	ar7 = 0x07
                           000006   418 	ar6 = 0x06
                           000005   419 	ar5 = 0x05
                           000004   420 	ar4 = 0x04
                           000003   421 	ar3 = 0x03
                           000002   422 	ar2 = 0x02
                           000001   423 	ar1 = 0x01
                           000000   424 	ar0 = 0x00
                                    425 ;	hongwai.c:10: time=2*TIME;
      001747 90 01 D4         [24]  426 	mov	dptr,#_time
      00174A 74 98            [12]  427 	mov	a,#0x98
      00174C F0               [24]  428 	movx	@dptr,a
      00174D 74 08            [12]  429 	mov	a,#0x08
      00174F A3               [24]  430 	inc	dptr
      001750 F0               [24]  431 	movx	@dptr,a
                                    432 ;	hongwai.c:11: CCON=0;
      001751 75 D8 00         [24]  433 	mov	_CCON,#0x00
                                    434 ;	hongwai.c:12: CMOD=0x08;		//不分频
                                    435 ;	1-genFromRTrack replaced	mov	_CMOD,#0x08
      001754 F5 D9            [12]  436 	mov	_CMOD,a
                                    437 ;	hongwai.c:13: CCAPM0=0x49;	//16位高速输出,允许中断
      001756 75 DA 49         [24]  438 	mov	_CCAPM0,#0x49
                                    439 ;	hongwai.c:14: CL=0x00;
      001759 75 E9 00         [24]  440 	mov	_CL,#0x00
                                    441 ;	hongwai.c:15: CH=0x00;
      00175C 75 F9 00         [24]  442 	mov	_CH,#0x00
                                    443 ;	hongwai.c:16: CCAP0L=TIME;
      00175F 75 EA 4C         [24]  444 	mov	_CCAP0L,#0x4C
                                    445 ;	hongwai.c:17: CCAP0H=TIME>>8;
      001762 75 FA 04         [24]  446 	mov	_CCAP0H,#0x04
                                    447 ;	hongwai.c:18: CR=0;
      001765 C2 DE            [12]  448 	clr	_CR
      001767 22               [24]  449 	ret
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'delay1'
                                    452 ;------------------------------------------------------------
                                    453 ;t                         Allocated with name '_delay1_t_1_19'
                                    454 ;------------------------------------------------------------
                                    455 ;	hongwai.c:20: void delay1(uint t)		//延时,单位微秒
                                    456 ;	-----------------------------------------
                                    457 ;	 function delay1
                                    458 ;	-----------------------------------------
      001768                        459 _delay1:
                                    460 ;	hongwai.c:58: __endasm;
      001768 C0 E0            [24]  461 	push acc
      00176A EE               [12]  462 	mov a, r6
      00176B C0 E0            [24]  463 	push a
      00176D E5 82            [12]  464 	mov a,dpl
      00176F AE 83            [24]  465 	mov r6,dph
      001771                        466 	 10000$:
      001771 14               [12]  467 	dec a ;0.2us 
      001772 00               [12]  468 	nop ;0.1us |
      001773 00               [12]  469 	nop ;0.1us |
      001774 00               [12]  470 	nop ;0.1us |> 1us
      001775 00               [12]  471 	nop ;0.1us |
      001776 00               [12]  472 	nop ;0.1us |
      001777 70 F8            [24]  473 	jnz 10000$ ;0.3us /
      001779 EE               [12]  474 	mov a,r6 ;0.1us
      00177A 60 11            [24]  475 	jz 10003$ ;0.3us
      00177C                        476 	 10001$:
      00177C 74 FE            [12]  477 	mov a,#0xfe ;0.2us
      00177E 00               [12]  478 	nop
      00177F 00               [12]  479 	nop
      001780 00               [12]  480 	nop
      001781 00               [12]  481 	nop
      001782 00               [12]  482 	nop
      001783                        483 	 10002$:
      001783 14               [12]  484 	dec a ;0.2us 
      001784 00               [12]  485 	nop ;0.1us |
      001785 00               [12]  486 	nop ;0.1us |
      001786 00               [12]  487 	nop ;0.1us |> 1us
      001787 00               [12]  488 	nop ;0.1us |
      001788 00               [12]  489 	nop ;0.1us |
      001789 70 F8            [24]  490 	jnz 10002$ ;0.3us /
      00178B DE EF            [24]  491 	djnz r6, 10001$ ;0.4us
      00178D                        492 	 10003$:
      00178D D0 E0            [24]  493 	pop a
      00178F FE               [12]  494 	mov r6, a
      001790 D0 E0            [24]  495 	pop acc
                                    496 ;	hongwai.c:59: return;
      001792 22               [24]  497 	ret
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'fashe'
                                    500 ;------------------------------------------------------------
                                    501 ;c                         Allocated with name '_fashe_c_1_22'
                                    502 ;addr                      Allocated with name '_fashe_addr_1_23'
                                    503 ;i                         Allocated with name '_fashe_i_1_23'
                                    504 ;------------------------------------------------------------
                                    505 ;	hongwai.c:66: void fashe(uint c)
                                    506 ;	-----------------------------------------
                                    507 ;	 function fashe
                                    508 ;	-----------------------------------------
      001793                        509 _fashe:
      001793 AF 83            [24]  510 	mov	r7,dph
      001795 E5 82            [12]  511 	mov	a,dpl
      001797 90 03 6D         [24]  512 	mov	dptr,#_fashe_c_1_22
      00179A F0               [24]  513 	movx	@dptr,a
      00179B EF               [12]  514 	mov	a,r7
      00179C A3               [24]  515 	inc	dptr
      00179D F0               [24]  516 	movx	@dptr,a
                                    517 ;	hongwai.c:70: addr=(uchar *)(c*400);
      00179E 90 03 6D         [24]  518 	mov	dptr,#_fashe_c_1_22
      0017A1 E0               [24]  519 	movx	a,@dptr
      0017A2 FE               [12]  520 	mov	r6,a
      0017A3 A3               [24]  521 	inc	dptr
      0017A4 E0               [24]  522 	movx	a,@dptr
      0017A5 FF               [12]  523 	mov	r7,a
      0017A6 90 03 9E         [24]  524 	mov	dptr,#__mulint_PARM_2
      0017A9 EE               [12]  525 	mov	a,r6
      0017AA F0               [24]  526 	movx	@dptr,a
      0017AB EF               [12]  527 	mov	a,r7
      0017AC A3               [24]  528 	inc	dptr
      0017AD F0               [24]  529 	movx	@dptr,a
      0017AE 90 01 90         [24]  530 	mov	dptr,#0x0190
      0017B1 12 1F 1E         [24]  531 	lcall	__mulint
      0017B4 AE 82            [24]  532 	mov	r6,dpl
      0017B6 AF 83            [24]  533 	mov	r7,dph
      0017B8 7D 00            [12]  534 	mov	r5,#0x00
                                    535 ;	hongwai.c:71: copywave_count=0;
      0017BA 90 01 D6         [24]  536 	mov	dptr,#_copywave_count
      0017BD E4               [12]  537 	clr	a
      0017BE F0               [24]  538 	movx	@dptr,a
      0017BF A3               [24]  539 	inc	dptr
      0017C0 F0               [24]  540 	movx	@dptr,a
                                    541 ;	hongwai.c:72: copywave_bit_count=0;
      0017C1 90 01 DB         [24]  542 	mov	dptr,#_copywave_bit_count
      0017C4 F0               [24]  543 	movx	@dptr,a
                                    544 ;	hongwai.c:73: copywave_p=copywave_tmp;
      0017C5 90 01 D8         [24]  545 	mov	dptr,#_copywave_p
      0017C8 74 DD            [12]  546 	mov	a,#_copywave_tmp
      0017CA F0               [24]  547 	movx	@dptr,a
      0017CB 74 01            [12]  548 	mov	a,#(_copywave_tmp >> 8)
      0017CD A3               [24]  549 	inc	dptr
      0017CE F0               [24]  550 	movx	@dptr,a
      0017CF E4               [12]  551 	clr	a
      0017D0 A3               [24]  552 	inc	dptr
      0017D1 F0               [24]  553 	movx	@dptr,a
                                    554 ;	hongwai.c:74: copy_waveing=0;
      0017D2 90 01 DC         [24]  555 	mov	dptr,#_copy_waveing
      0017D5 F0               [24]  556 	movx	@dptr,a
                                    557 ;	hongwai.c:75: memset( copywave_p, 0, 400);
      0017D6 7A DD            [12]  558 	mov	r2,#_copywave_tmp
      0017D8 7B 01            [12]  559 	mov	r3,#(_copywave_tmp >> 8)
      0017DA 7C 00            [12]  560 	mov	r4,#0x00
      0017DC 90 01 A5         [24]  561 	mov	dptr,#_memset_PARM_2
      0017DF F0               [24]  562 	movx	@dptr,a
      0017E0 A3               [24]  563 	inc	dptr
      0017E1 F0               [24]  564 	movx	@dptr,a
      0017E2 90 01 A6         [24]  565 	mov	dptr,#_memset_PARM_3
      0017E5 74 90            [12]  566 	mov	a,#0x90
      0017E7 F0               [24]  567 	movx	@dptr,a
      0017E8 74 01            [12]  568 	mov	a,#0x01
      0017EA A3               [24]  569 	inc	dptr
      0017EB F0               [24]  570 	movx	@dptr,a
      0017EC 8A 82            [24]  571 	mov	dpl,r2
      0017EE 8B 83            [24]  572 	mov	dph,r3
      0017F0 8C F0            [24]  573 	mov	b,r4
      0017F2 C0 07            [24]  574 	push	ar7
      0017F4 C0 06            [24]  575 	push	ar6
      0017F6 C0 05            [24]  576 	push	ar5
      0017F8 12 14 44         [24]  577 	lcall	_memset
      0017FB D0 05            [24]  578 	pop	ar5
      0017FD D0 06            [24]  579 	pop	ar6
      0017FF D0 07            [24]  580 	pop	ar7
                                    581 ;	hongwai.c:76: if(read_sequ(addr,copywave_p,400))P2_2=0; 
      001801 90 01 D8         [24]  582 	mov	dptr,#_copywave_p
      001804 E0               [24]  583 	movx	a,@dptr
      001805 FA               [12]  584 	mov	r2,a
      001806 A3               [24]  585 	inc	dptr
      001807 E0               [24]  586 	movx	a,@dptr
      001808 FB               [12]  587 	mov	r3,a
      001809 A3               [24]  588 	inc	dptr
      00180A E0               [24]  589 	movx	a,@dptr
      00180B FC               [12]  590 	mov	r4,a
      00180C 90 03 93         [24]  591 	mov	dptr,#_read_sequ_PARM_2
      00180F EA               [12]  592 	mov	a,r2
      001810 F0               [24]  593 	movx	@dptr,a
      001811 EB               [12]  594 	mov	a,r3
      001812 A3               [24]  595 	inc	dptr
      001813 F0               [24]  596 	movx	@dptr,a
      001814 EC               [12]  597 	mov	a,r4
      001815 A3               [24]  598 	inc	dptr
      001816 F0               [24]  599 	movx	@dptr,a
      001817 90 03 96         [24]  600 	mov	dptr,#_read_sequ_PARM_3
      00181A 74 90            [12]  601 	mov	a,#0x90
      00181C F0               [24]  602 	movx	@dptr,a
      00181D 74 01            [12]  603 	mov	a,#0x01
      00181F A3               [24]  604 	inc	dptr
      001820 F0               [24]  605 	movx	@dptr,a
      001821 8E 82            [24]  606 	mov	dpl,r6
      001823 8F 83            [24]  607 	mov	dph,r7
      001825 8D F0            [24]  608 	mov	b,r5
      001827 12 1E 08         [24]  609 	lcall	_read_sequ
      00182A E5 82            [12]  610 	mov	a,dpl
      00182C 70 02            [24]  611 	jnz	00101$
      00182E 80 02            [24]  612 	sjmp	00102$
      001830                        613 00101$:
      001830 C2 A2            [12]  614 	clr	_P2_2
      001832                        615 00102$:
                                    616 ;	hongwai.c:77: for (i=0; i<400; i++){
      001832 90 03 6F         [24]  617 	mov	dptr,#_fashe_i_1_23
      001835 E4               [12]  618 	clr	a
      001836 F0               [24]  619 	movx	@dptr,a
      001837 A3               [24]  620 	inc	dptr
      001838 F0               [24]  621 	movx	@dptr,a
      001839 90 03 6F         [24]  622 	mov	dptr,#_fashe_i_1_23
      00183C E0               [24]  623 	movx	a,@dptr
      00183D FE               [12]  624 	mov	r6,a
      00183E A3               [24]  625 	inc	dptr
      00183F E0               [24]  626 	movx	a,@dptr
      001840 FF               [12]  627 	mov	r7,a
      001841                        628 00107$:
                                    629 ;	hongwai.c:78: display("data=", *(copywave_p+i));
      001841 90 01 D8         [24]  630 	mov	dptr,#_copywave_p
      001844 E0               [24]  631 	movx	a,@dptr
      001845 FB               [12]  632 	mov	r3,a
      001846 A3               [24]  633 	inc	dptr
      001847 E0               [24]  634 	movx	a,@dptr
      001848 FC               [12]  635 	mov	r4,a
      001849 A3               [24]  636 	inc	dptr
      00184A E0               [24]  637 	movx	a,@dptr
      00184B FD               [12]  638 	mov	r5,a
      00184C EE               [12]  639 	mov	a,r6
      00184D 2B               [12]  640 	add	a,r3
      00184E FB               [12]  641 	mov	r3,a
      00184F EF               [12]  642 	mov	a,r7
      001850 3C               [12]  643 	addc	a,r4
      001851 FC               [12]  644 	mov	r4,a
      001852 8B 82            [24]  645 	mov	dpl,r3
      001854 8C 83            [24]  646 	mov	dph,r4
      001856 8D F0            [24]  647 	mov	b,r5
      001858 12 1F 3E         [24]  648 	lcall	__gptrget
      00185B 90 00 93         [24]  649 	mov	dptr,#_display_PARM_2
      00185E F0               [24]  650 	movx	@dptr,a
      00185F 90 21 FE         [24]  651 	mov	dptr,#___str_0
      001862 75 F0 80         [24]  652 	mov	b,#0x80
      001865 C0 07            [24]  653 	push	ar7
      001867 C0 06            [24]  654 	push	ar6
      001869 12 0D 80         [24]  655 	lcall	_display
      00186C D0 06            [24]  656 	pop	ar6
      00186E D0 07            [24]  657 	pop	ar7
                                    658 ;	hongwai.c:77: for (i=0; i<400; i++){
      001870 0E               [12]  659 	inc	r6
      001871 BE 00 01         [24]  660 	cjne	r6,#0x00,00123$
      001874 0F               [12]  661 	inc	r7
      001875                        662 00123$:
      001875 C3               [12]  663 	clr	c
      001876 EE               [12]  664 	mov	a,r6
      001877 94 90            [12]  665 	subb	a,#0x90
      001879 EF               [12]  666 	mov	a,r7
      00187A 94 01            [12]  667 	subb	a,#0x01
      00187C 40 C3            [24]  668 	jc	00107$
                                    669 ;	hongwai.c:80: display("choose=", c);
      00187E 90 03 6D         [24]  670 	mov	dptr,#_fashe_c_1_22
      001881 E0               [24]  671 	movx	a,@dptr
      001882 FE               [12]  672 	mov	r6,a
      001883 A3               [24]  673 	inc	dptr
      001884 E0               [24]  674 	movx	a,@dptr
      001885 90 00 93         [24]  675 	mov	dptr,#_display_PARM_2
      001888 EE               [12]  676 	mov	a,r6
      001889 F0               [24]  677 	movx	@dptr,a
      00188A 90 22 04         [24]  678 	mov	dptr,#___str_1
      00188D 75 F0 80         [24]  679 	mov	b,#0x80
      001890 12 0D 80         [24]  680 	lcall	_display
                                    681 ;	hongwai.c:81: CR=1;
      001893 D2 DE            [12]  682 	setb	_CR
                                    683 ;	hongwai.c:82: EA=1;
      001895 D2 AF            [12]  684 	setb	_EA
                                    685 ;	hongwai.c:83: while(CR);
      001897                        686 00104$:
      001897 20 DE FD         [24]  687 	jb	_CR,00104$
                                    688 ;	hongwai.c:84: return;
      00189A 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'copy_wave'
                                    692 ;------------------------------------------------------------
                                    693 ;c                         Allocated with name '_copy_wave_c_1_25'
                                    694 ;i                         Allocated with name '_copy_wave_i_1_26'
                                    695 ;addr                      Allocated with name '_copy_wave_addr_1_26'
                                    696 ;try                       Allocated with name '_copy_wave_try_1_26'
                                    697 ;------------------------------------------------------------
                                    698 ;	hongwai.c:86: void copy_wave(uint c)
                                    699 ;	-----------------------------------------
                                    700 ;	 function copy_wave
                                    701 ;	-----------------------------------------
      00189B                        702 _copy_wave:
      00189B AF 83            [24]  703 	mov	r7,dph
      00189D E5 82            [12]  704 	mov	a,dpl
      00189F 90 03 71         [24]  705 	mov	dptr,#_copy_wave_c_1_25
      0018A2 F0               [24]  706 	movx	@dptr,a
      0018A3 EF               [12]  707 	mov	a,r7
      0018A4 A3               [24]  708 	inc	dptr
      0018A5 F0               [24]  709 	movx	@dptr,a
                                    710 ;	hongwai.c:90: copywave_count=0;
      0018A6 90 01 D6         [24]  711 	mov	dptr,#_copywave_count
      0018A9 E4               [12]  712 	clr	a
      0018AA F0               [24]  713 	movx	@dptr,a
      0018AB A3               [24]  714 	inc	dptr
      0018AC F0               [24]  715 	movx	@dptr,a
                                    716 ;	hongwai.c:91: copywave_bit_count=0;
      0018AD 90 01 DB         [24]  717 	mov	dptr,#_copywave_bit_count
      0018B0 F0               [24]  718 	movx	@dptr,a
                                    719 ;	hongwai.c:92: copywave_p=copywave_tmp;
      0018B1 90 01 D8         [24]  720 	mov	dptr,#_copywave_p
      0018B4 74 DD            [12]  721 	mov	a,#_copywave_tmp
      0018B6 F0               [24]  722 	movx	@dptr,a
      0018B7 74 01            [12]  723 	mov	a,#(_copywave_tmp >> 8)
      0018B9 A3               [24]  724 	inc	dptr
      0018BA F0               [24]  725 	movx	@dptr,a
      0018BB E4               [12]  726 	clr	a
      0018BC A3               [24]  727 	inc	dptr
      0018BD F0               [24]  728 	movx	@dptr,a
                                    729 ;	hongwai.c:93: copy_waveing=1;
      0018BE 90 01 DC         [24]  730 	mov	dptr,#_copy_waveing
      0018C1 04               [12]  731 	inc	a
      0018C2 F0               [24]  732 	movx	@dptr,a
                                    733 ;	hongwai.c:94: memset( copywave_p, 0, 400);
      0018C3 7D DD            [12]  734 	mov	r5,#_copywave_tmp
      0018C5 7E 01            [12]  735 	mov	r6,#(_copywave_tmp >> 8)
      0018C7 7F 00            [12]  736 	mov	r7,#0x00
      0018C9 90 01 A5         [24]  737 	mov	dptr,#_memset_PARM_2
      0018CC E4               [12]  738 	clr	a
      0018CD F0               [24]  739 	movx	@dptr,a
      0018CE A3               [24]  740 	inc	dptr
      0018CF F0               [24]  741 	movx	@dptr,a
      0018D0 90 01 A6         [24]  742 	mov	dptr,#_memset_PARM_3
      0018D3 74 90            [12]  743 	mov	a,#0x90
      0018D5 F0               [24]  744 	movx	@dptr,a
      0018D6 74 01            [12]  745 	mov	a,#0x01
      0018D8 A3               [24]  746 	inc	dptr
      0018D9 F0               [24]  747 	movx	@dptr,a
      0018DA 8D 82            [24]  748 	mov	dpl,r5
      0018DC 8E 83            [24]  749 	mov	dph,r6
      0018DE 8F F0            [24]  750 	mov	b,r7
      0018E0 12 14 44         [24]  751 	lcall	_memset
                                    752 ;	hongwai.c:95: while(input);
      0018E3                        753 00101$:
      0018E3 20 A7 FD         [24]  754 	jb	_P2_7,00101$
                                    755 ;	hongwai.c:96: CR=1;
      0018E6 D2 DE            [12]  756 	setb	_CR
                                    757 ;	hongwai.c:97: EA=1;
      0018E8 D2 AF            [12]  758 	setb	_EA
                                    759 ;	hongwai.c:98: while(CR);
      0018EA                        760 00104$:
      0018EA 20 DE FD         [24]  761 	jb	_CR,00104$
                                    762 ;	hongwai.c:99: for(i=0; i<400;){
      0018ED 90 03 73         [24]  763 	mov	dptr,#_copy_wave_i_1_26
      0018F0 E4               [12]  764 	clr	a
      0018F1 F0               [24]  765 	movx	@dptr,a
      0018F2 A3               [24]  766 	inc	dptr
      0018F3 F0               [24]  767 	movx	@dptr,a
      0018F4 90 03 73         [24]  768 	mov	dptr,#_copy_wave_i_1_26
      0018F7 E0               [24]  769 	movx	a,@dptr
      0018F8 FE               [12]  770 	mov	r6,a
      0018F9 A3               [24]  771 	inc	dptr
      0018FA E0               [24]  772 	movx	a,@dptr
      0018FB FF               [12]  773 	mov	r7,a
      0018FC                        774 00110$:
                                    775 ;	hongwai.c:100: if (write_byte(c*400+i,*copywave_p))P2_2=0;
      0018FC 90 03 71         [24]  776 	mov	dptr,#_copy_wave_c_1_25
      0018FF E0               [24]  777 	movx	a,@dptr
      001900 FC               [12]  778 	mov	r4,a
      001901 A3               [24]  779 	inc	dptr
      001902 E0               [24]  780 	movx	a,@dptr
      001903 FD               [12]  781 	mov	r5,a
      001904 90 03 9E         [24]  782 	mov	dptr,#__mulint_PARM_2
      001907 EC               [12]  783 	mov	a,r4
      001908 F0               [24]  784 	movx	@dptr,a
      001909 ED               [12]  785 	mov	a,r5
      00190A A3               [24]  786 	inc	dptr
      00190B F0               [24]  787 	movx	@dptr,a
      00190C 90 01 90         [24]  788 	mov	dptr,#0x0190
      00190F C0 07            [24]  789 	push	ar7
      001911 C0 06            [24]  790 	push	ar6
      001913 12 1F 1E         [24]  791 	lcall	__mulint
      001916 E5 82            [12]  792 	mov	a,dpl
      001918 85 83 F0         [24]  793 	mov	b,dph
      00191B D0 06            [24]  794 	pop	ar6
      00191D D0 07            [24]  795 	pop	ar7
      00191F 2E               [12]  796 	add	a,r6
      001920 FC               [12]  797 	mov	r4,a
      001921 EF               [12]  798 	mov	a,r7
      001922 35 F0            [12]  799 	addc	a,b
      001924 FD               [12]  800 	mov	r5,a
      001925 7B 00            [12]  801 	mov	r3,#0x00
      001927 90 01 D8         [24]  802 	mov	dptr,#_copywave_p
      00192A E0               [24]  803 	movx	a,@dptr
      00192B F8               [12]  804 	mov	r0,a
      00192C A3               [24]  805 	inc	dptr
      00192D E0               [24]  806 	movx	a,@dptr
      00192E F9               [12]  807 	mov	r1,a
      00192F A3               [24]  808 	inc	dptr
      001930 E0               [24]  809 	movx	a,@dptr
      001931 FA               [12]  810 	mov	r2,a
      001932 88 82            [24]  811 	mov	dpl,r0
      001934 89 83            [24]  812 	mov	dph,r1
      001936 8A F0            [24]  813 	mov	b,r2
      001938 12 1F 3E         [24]  814 	lcall	__gptrget
      00193B 90 03 7F         [24]  815 	mov	dptr,#_write_byte_PARM_2
      00193E F0               [24]  816 	movx	@dptr,a
      00193F 8C 82            [24]  817 	mov	dpl,r4
      001941 8D 83            [24]  818 	mov	dph,r5
      001943 8B F0            [24]  819 	mov	b,r3
      001945 C0 07            [24]  820 	push	ar7
      001947 C0 06            [24]  821 	push	ar6
      001949 12 1C 01         [24]  822 	lcall	_write_byte
      00194C E5 82            [12]  823 	mov	a,dpl
      00194E D0 06            [24]  824 	pop	ar6
      001950 D0 07            [24]  825 	pop	ar7
      001952 70 02            [24]  826 	jnz	00107$
      001954 80 02            [24]  827 	sjmp	00108$
      001956                        828 00107$:
      001956 C2 A2            [12]  829 	clr	_P2_2
      001958                        830 00108$:
                                    831 ;	hongwai.c:101: copywave_p++;
      001958 90 01 D8         [24]  832 	mov	dptr,#_copywave_p
      00195B E0               [24]  833 	movx	a,@dptr
      00195C 24 01            [12]  834 	add	a,#0x01
      00195E F0               [24]  835 	movx	@dptr,a
      00195F A3               [24]  836 	inc	dptr
      001960 E0               [24]  837 	movx	a,@dptr
      001961 34 00            [12]  838 	addc	a,#0x00
      001963 F0               [24]  839 	movx	@dptr,a
                                    840 ;	hongwai.c:102: i++;
      001964 0E               [12]  841 	inc	r6
      001965 BE 00 01         [24]  842 	cjne	r6,#0x00,00132$
      001968 0F               [12]  843 	inc	r7
      001969                        844 00132$:
                                    845 ;	hongwai.c:99: for(i=0; i<400;){
      001969 C3               [12]  846 	clr	c
      00196A EE               [12]  847 	mov	a,r6
      00196B 94 90            [12]  848 	subb	a,#0x90
      00196D EF               [12]  849 	mov	a,r7
      00196E 94 01            [12]  850 	subb	a,#0x01
      001970 40 8A            [24]  851 	jc	00110$
                                    852 ;	hongwai.c:121: return;
      001972 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'luzhi'
                                    856 ;------------------------------------------------------------
                                    857 ;	hongwai.c:123: uint luzhi(void)		//count 录制红外的时间,每100us采样一次
                                    858 ;	-----------------------------------------
                                    859 ;	 function luzhi
                                    860 ;	-----------------------------------------
      001973                        861 _luzhi:
                                    862 ;	hongwai.c:125: EA=0;
      001973 C2 AF            [12]  863 	clr	_EA
                                    864 ;	hongwai.c:126: copywave_count=0;
      001975 90 01 D6         [24]  865 	mov	dptr,#_copywave_count
      001978 E4               [12]  866 	clr	a
      001979 F0               [24]  867 	movx	@dptr,a
      00197A A3               [24]  868 	inc	dptr
      00197B F0               [24]  869 	movx	@dptr,a
                                    870 ;	hongwai.c:127: copywave_p=copywave_tmp;
      00197C 90 01 D8         [24]  871 	mov	dptr,#_copywave_p
      00197F 74 DD            [12]  872 	mov	a,#_copywave_tmp
      001981 F0               [24]  873 	movx	@dptr,a
      001982 74 01            [12]  874 	mov	a,#(_copywave_tmp >> 8)
      001984 A3               [24]  875 	inc	dptr
      001985 F0               [24]  876 	movx	@dptr,a
      001986 E4               [12]  877 	clr	a
      001987 A3               [24]  878 	inc	dptr
      001988 F0               [24]  879 	movx	@dptr,a
                                    880 ;	hongwai.c:128: memset( copywave_p, 0, 400);
      001989 7D DD            [12]  881 	mov	r5,#_copywave_tmp
      00198B 7E 01            [12]  882 	mov	r6,#(_copywave_tmp >> 8)
      00198D 7F 00            [12]  883 	mov	r7,#0x00
      00198F 90 01 A5         [24]  884 	mov	dptr,#_memset_PARM_2
      001992 F0               [24]  885 	movx	@dptr,a
      001993 A3               [24]  886 	inc	dptr
      001994 F0               [24]  887 	movx	@dptr,a
      001995 90 01 A6         [24]  888 	mov	dptr,#_memset_PARM_3
      001998 74 90            [12]  889 	mov	a,#0x90
      00199A F0               [24]  890 	movx	@dptr,a
      00199B 74 01            [12]  891 	mov	a,#0x01
      00199D A3               [24]  892 	inc	dptr
      00199E F0               [24]  893 	movx	@dptr,a
      00199F 8D 82            [24]  894 	mov	dpl,r5
      0019A1 8E 83            [24]  895 	mov	dph,r6
      0019A3 8F F0            [24]  896 	mov	b,r7
      0019A5 12 14 44         [24]  897 	lcall	_memset
                                    898 ;	hongwai.c:129: while(input)delay(10);
      0019A8                        899 00101$:
      0019A8 20 A7 02         [24]  900 	jb	_P2_7,00102$
      0019AB 80 08            [24]  901 	sjmp	00104$
      0019AD                        902 00102$:
      0019AD 90 00 0A         [24]  903 	mov	dptr,#0x000A
      0019B0 12 04 41         [24]  904 	lcall	_delay
      0019B3 80 F3            [24]  905 	sjmp	00101$
                                    906 ;	hongwai.c:130: while(copywave_count<400){
      0019B5                        907 00104$:
      0019B5 90 01 D6         [24]  908 	mov	dptr,#_copywave_count
      0019B8 E0               [24]  909 	movx	a,@dptr
      0019B9 FE               [12]  910 	mov	r6,a
      0019BA A3               [24]  911 	inc	dptr
      0019BB E0               [24]  912 	movx	a,@dptr
      0019BC FF               [12]  913 	mov	r7,a
      0019BD C3               [12]  914 	clr	c
      0019BE EE               [12]  915 	mov	a,r6
      0019BF 94 90            [12]  916 	subb	a,#0x90
      0019C1 EF               [12]  917 	mov	a,r7
      0019C2 94 01            [12]  918 	subb	a,#0x01
      0019C4 40 02            [24]  919 	jc	00105$
      0019C6 80 39            [24]  920 	sjmp	00106$
      0019C8                        921 00105$:
                                    922 ;	hongwai.c:131: delay1(1600);
      0019C8 90 06 40         [24]  923 	mov	dptr,#0x0640
      0019CB 12 17 68         [24]  924 	lcall	_delay1
                                    925 ;	hongwai.c:132: *copywave_p=input;
      0019CE 90 01 D8         [24]  926 	mov	dptr,#_copywave_p
      0019D1 E0               [24]  927 	movx	a,@dptr
      0019D2 FD               [12]  928 	mov	r5,a
      0019D3 A3               [24]  929 	inc	dptr
      0019D4 E0               [24]  930 	movx	a,@dptr
      0019D5 FE               [12]  931 	mov	r6,a
      0019D6 A3               [24]  932 	inc	dptr
      0019D7 E0               [24]  933 	movx	a,@dptr
      0019D8 FF               [12]  934 	mov	r7,a
      0019D9 A2 A7            [12]  935 	mov	c,_P2_7
      0019DB E4               [12]  936 	clr	a
      0019DC 33               [12]  937 	rlc	a
      0019DD FC               [12]  938 	mov	r4,a
      0019DE 8D 82            [24]  939 	mov	dpl,r5
      0019E0 8E 83            [24]  940 	mov	dph,r6
      0019E2 8F F0            [24]  941 	mov	b,r7
      0019E4 12 1F 03         [24]  942 	lcall	__gptrput
                                    943 ;	hongwai.c:133: copywave_p++;
      0019E7 90 01 D8         [24]  944 	mov	dptr,#_copywave_p
      0019EA E0               [24]  945 	movx	a,@dptr
      0019EB 24 01            [12]  946 	add	a,#0x01
      0019ED F0               [24]  947 	movx	@dptr,a
      0019EE A3               [24]  948 	inc	dptr
      0019EF E0               [24]  949 	movx	a,@dptr
      0019F0 34 00            [12]  950 	addc	a,#0x00
      0019F2 F0               [24]  951 	movx	@dptr,a
                                    952 ;	hongwai.c:134: copywave_count++;
      0019F3 90 01 D6         [24]  953 	mov	dptr,#_copywave_count
      0019F6 E0               [24]  954 	movx	a,@dptr
      0019F7 24 01            [12]  955 	add	a,#0x01
      0019F9 F0               [24]  956 	movx	@dptr,a
      0019FA A3               [24]  957 	inc	dptr
      0019FB E0               [24]  958 	movx	a,@dptr
      0019FC 34 00            [12]  959 	addc	a,#0x00
      0019FE F0               [24]  960 	movx	@dptr,a
      0019FF 80 B4            [24]  961 	sjmp	00104$
      001A01                        962 00106$:
                                    963 ;	hongwai.c:136: EA=1;
      001A01 D2 AF            [12]  964 	setb	_EA
                                    965 ;	hongwai.c:137: return 0;
      001A03 90 00 00         [24]  966 	mov	dptr,#0x0000
      001A06 22               [24]  967 	ret
                                    968 	.area CSEG    (CODE)
                                    969 	.area CONST   (CODE)
      0021FE                        970 ___str_0:
      0021FE 64 61 74 61 3D         971 	.ascii "data="
      002203 00                     972 	.db 0x00
      002204                        973 ___str_1:
      002204 63 68 6F 6F 73 65 3D   974 	.ascii "choose="
      00220B 00                     975 	.db 0x00
                                    976 	.area XINIT   (CODE)
                                    977 	.area CABS    (ABS,CODE)
