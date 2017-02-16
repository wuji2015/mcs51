                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module serial
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _uart_init
                                     13 	.globl _receive_data
                                     14 	.globl _display
                                     15 	.globl _sendstr
                                     16 	.globl _putc
                                     17 	.globl _get_semaphore
                                     18 	.globl _semaphore_init
                                     19 	.globl _memset
                                     20 	.globl _CF
                                     21 	.globl _CR
                                     22 	.globl _CCF1
                                     23 	.globl _CCF0
                                     24 	.globl _TF2
                                     25 	.globl _EXF2
                                     26 	.globl _RCLK
                                     27 	.globl _TCLK
                                     28 	.globl _EXEN2
                                     29 	.globl _TR2
                                     30 	.globl _C_T2
                                     31 	.globl _CP_RL2
                                     32 	.globl _T2CON_7
                                     33 	.globl _T2CON_6
                                     34 	.globl _T2CON_5
                                     35 	.globl _T2CON_4
                                     36 	.globl _T2CON_3
                                     37 	.globl _T2CON_2
                                     38 	.globl _T2CON_1
                                     39 	.globl _T2CON_0
                                     40 	.globl _PT2
                                     41 	.globl _ET2
                                     42 	.globl _CY
                                     43 	.globl _AC
                                     44 	.globl _F0
                                     45 	.globl _RS1
                                     46 	.globl _RS0
                                     47 	.globl _OV
                                     48 	.globl _F1
                                     49 	.globl _P
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ES
                                     73 	.globl _ET1
                                     74 	.globl _EX1
                                     75 	.globl _ET0
                                     76 	.globl _EX0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _SM0
                                     86 	.globl _SM1
                                     87 	.globl _SM2
                                     88 	.globl _REN
                                     89 	.globl _TB8
                                     90 	.globl _RB8
                                     91 	.globl _TI
                                     92 	.globl _RI
                                     93 	.globl _P1_7
                                     94 	.globl _P1_6
                                     95 	.globl _P1_5
                                     96 	.globl _P1_4
                                     97 	.globl _P1_3
                                     98 	.globl _P1_2
                                     99 	.globl _P1_1
                                    100 	.globl _P1_0
                                    101 	.globl _TF1
                                    102 	.globl _TR1
                                    103 	.globl _TF0
                                    104 	.globl _TR0
                                    105 	.globl _IE1
                                    106 	.globl _IT1
                                    107 	.globl _IE0
                                    108 	.globl _IT0
                                    109 	.globl _P0_7
                                    110 	.globl _P0_6
                                    111 	.globl _P0_5
                                    112 	.globl _P0_4
                                    113 	.globl _P0_3
                                    114 	.globl _P0_2
                                    115 	.globl _P0_1
                                    116 	.globl _P0_0
                                    117 	.globl _PCA_PWM1
                                    118 	.globl _PCA_PWM0
                                    119 	.globl _CCAP1H
                                    120 	.globl _CCAP1L
                                    121 	.globl _CCAP0H
                                    122 	.globl _CCAP0L
                                    123 	.globl _CH
                                    124 	.globl _CL
                                    125 	.globl _CCAPM1
                                    126 	.globl _CCAPM0
                                    127 	.globl _CMOD
                                    128 	.globl _CCON
                                    129 	.globl _WAKE_CLKO
                                    130 	.globl _BRT
                                    131 	.globl _IE2
                                    132 	.globl _S2BUF
                                    133 	.globl _S2CON
                                    134 	.globl _AUXR1
                                    135 	.globl _AUXR
                                    136 	.globl _TH2
                                    137 	.globl _TL2
                                    138 	.globl _RCAP2H
                                    139 	.globl _RCAP2L
                                    140 	.globl _T2CON
                                    141 	.globl _B
                                    142 	.globl _ACC
                                    143 	.globl _PSW
                                    144 	.globl _IP
                                    145 	.globl _P3
                                    146 	.globl _IE
                                    147 	.globl _P2
                                    148 	.globl _SBUF
                                    149 	.globl _SCON
                                    150 	.globl _P1
                                    151 	.globl _TH1
                                    152 	.globl _TH0
                                    153 	.globl _TL1
                                    154 	.globl _TL0
                                    155 	.globl _TMOD
                                    156 	.globl _TCON
                                    157 	.globl _PCON
                                    158 	.globl _DPH
                                    159 	.globl _DPL
                                    160 	.globl _SP
                                    161 	.globl _P0
                                    162 	.globl _serial_end
                                    163 	.globl _serial_w
                                    164 	.globl _serial_r
                                    165 	.globl _receive_data_PARM_2
                                    166 	.globl _serial_buf
                                    167 	.globl _display_PARM_2
                                    168 	.globl _TI1
                                    169 ;--------------------------------------------------------
                                    170 ; special function registers
                                    171 ;--------------------------------------------------------
                                    172 	.area RSEG    (ABS,DATA)
      000000                        173 	.org 0x0000
                           000080   174 _P0	=	0x0080
                           000081   175 _SP	=	0x0081
                           000082   176 _DPL	=	0x0082
                           000083   177 _DPH	=	0x0083
                           000087   178 _PCON	=	0x0087
                           000088   179 _TCON	=	0x0088
                           000089   180 _TMOD	=	0x0089
                           00008A   181 _TL0	=	0x008a
                           00008B   182 _TL1	=	0x008b
                           00008C   183 _TH0	=	0x008c
                           00008D   184 _TH1	=	0x008d
                           000090   185 _P1	=	0x0090
                           000098   186 _SCON	=	0x0098
                           000099   187 _SBUF	=	0x0099
                           0000A0   188 _P2	=	0x00a0
                           0000A8   189 _IE	=	0x00a8
                           0000B0   190 _P3	=	0x00b0
                           0000B8   191 _IP	=	0x00b8
                           0000D0   192 _PSW	=	0x00d0
                           0000E0   193 _ACC	=	0x00e0
                           0000F0   194 _B	=	0x00f0
                           0000C8   195 _T2CON	=	0x00c8
                           0000CA   196 _RCAP2L	=	0x00ca
                           0000CB   197 _RCAP2H	=	0x00cb
                           0000CC   198 _TL2	=	0x00cc
                           0000CD   199 _TH2	=	0x00cd
                           00008E   200 _AUXR	=	0x008e
                           0000A2   201 _AUXR1	=	0x00a2
                           00009A   202 _S2CON	=	0x009a
                           00009B   203 _S2BUF	=	0x009b
                           0000AF   204 _IE2	=	0x00af
                           00009C   205 _BRT	=	0x009c
                           00008F   206 _WAKE_CLKO	=	0x008f
                           0000D8   207 _CCON	=	0x00d8
                           0000D9   208 _CMOD	=	0x00d9
                           0000DA   209 _CCAPM0	=	0x00da
                           0000DB   210 _CCAPM1	=	0x00db
                           0000E9   211 _CL	=	0x00e9
                           0000F9   212 _CH	=	0x00f9
                           0000EA   213 _CCAP0L	=	0x00ea
                           0000FA   214 _CCAP0H	=	0x00fa
                           0000EB   215 _CCAP1L	=	0x00eb
                           0000FB   216 _CCAP1H	=	0x00fb
                           0000F2   217 _PCA_PWM0	=	0x00f2
                           0000F3   218 _PCA_PWM1	=	0x00f3
                                    219 ;--------------------------------------------------------
                                    220 ; special function bits
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0_0	=	0x0080
                           000081   225 _P0_1	=	0x0081
                           000082   226 _P0_2	=	0x0082
                           000083   227 _P0_3	=	0x0083
                           000084   228 _P0_4	=	0x0084
                           000085   229 _P0_5	=	0x0085
                           000086   230 _P0_6	=	0x0086
                           000087   231 _P0_7	=	0x0087
                           000088   232 _IT0	=	0x0088
                           000089   233 _IE0	=	0x0089
                           00008A   234 _IT1	=	0x008a
                           00008B   235 _IE1	=	0x008b
                           00008C   236 _TR0	=	0x008c
                           00008D   237 _TF0	=	0x008d
                           00008E   238 _TR1	=	0x008e
                           00008F   239 _TF1	=	0x008f
                           000090   240 _P1_0	=	0x0090
                           000091   241 _P1_1	=	0x0091
                           000092   242 _P1_2	=	0x0092
                           000093   243 _P1_3	=	0x0093
                           000094   244 _P1_4	=	0x0094
                           000095   245 _P1_5	=	0x0095
                           000096   246 _P1_6	=	0x0096
                           000097   247 _P1_7	=	0x0097
                           000098   248 _RI	=	0x0098
                           000099   249 _TI	=	0x0099
                           00009A   250 _RB8	=	0x009a
                           00009B   251 _TB8	=	0x009b
                           00009C   252 _REN	=	0x009c
                           00009D   253 _SM2	=	0x009d
                           00009E   254 _SM1	=	0x009e
                           00009F   255 _SM0	=	0x009f
                           0000A0   256 _P2_0	=	0x00a0
                           0000A1   257 _P2_1	=	0x00a1
                           0000A2   258 _P2_2	=	0x00a2
                           0000A3   259 _P2_3	=	0x00a3
                           0000A4   260 _P2_4	=	0x00a4
                           0000A5   261 _P2_5	=	0x00a5
                           0000A6   262 _P2_6	=	0x00a6
                           0000A7   263 _P2_7	=	0x00a7
                           0000A8   264 _EX0	=	0x00a8
                           0000A9   265 _ET0	=	0x00a9
                           0000AA   266 _EX1	=	0x00aa
                           0000AB   267 _ET1	=	0x00ab
                           0000AC   268 _ES	=	0x00ac
                           0000AF   269 _EA	=	0x00af
                           0000B0   270 _P3_0	=	0x00b0
                           0000B1   271 _P3_1	=	0x00b1
                           0000B2   272 _P3_2	=	0x00b2
                           0000B3   273 _P3_3	=	0x00b3
                           0000B4   274 _P3_4	=	0x00b4
                           0000B5   275 _P3_5	=	0x00b5
                           0000B6   276 _P3_6	=	0x00b6
                           0000B7   277 _P3_7	=	0x00b7
                           0000B0   278 _RXD	=	0x00b0
                           0000B1   279 _TXD	=	0x00b1
                           0000B2   280 _INT0	=	0x00b2
                           0000B3   281 _INT1	=	0x00b3
                           0000B4   282 _T0	=	0x00b4
                           0000B5   283 _T1	=	0x00b5
                           0000B6   284 _WR	=	0x00b6
                           0000B7   285 _RD	=	0x00b7
                           0000B8   286 _PX0	=	0x00b8
                           0000B9   287 _PT0	=	0x00b9
                           0000BA   288 _PX1	=	0x00ba
                           0000BB   289 _PT1	=	0x00bb
                           0000BC   290 _PS	=	0x00bc
                           0000D0   291 _P	=	0x00d0
                           0000D1   292 _F1	=	0x00d1
                           0000D2   293 _OV	=	0x00d2
                           0000D3   294 _RS0	=	0x00d3
                           0000D4   295 _RS1	=	0x00d4
                           0000D5   296 _F0	=	0x00d5
                           0000D6   297 _AC	=	0x00d6
                           0000D7   298 _CY	=	0x00d7
                           0000AD   299 _ET2	=	0x00ad
                           0000BD   300 _PT2	=	0x00bd
                           0000C8   301 _T2CON_0	=	0x00c8
                           0000C9   302 _T2CON_1	=	0x00c9
                           0000CA   303 _T2CON_2	=	0x00ca
                           0000CB   304 _T2CON_3	=	0x00cb
                           0000CC   305 _T2CON_4	=	0x00cc
                           0000CD   306 _T2CON_5	=	0x00cd
                           0000CE   307 _T2CON_6	=	0x00ce
                           0000CF   308 _T2CON_7	=	0x00cf
                           0000C8   309 _CP_RL2	=	0x00c8
                           0000C9   310 _C_T2	=	0x00c9
                           0000CA   311 _TR2	=	0x00ca
                           0000CB   312 _EXEN2	=	0x00cb
                           0000CC   313 _TCLK	=	0x00cc
                           0000CD   314 _RCLK	=	0x00cd
                           0000CE   315 _EXF2	=	0x00ce
                           0000CF   316 _TF2	=	0x00cf
                           0000D8   317 _CCF0	=	0x00d8
                           0000D9   318 _CCF1	=	0x00d9
                           0000DE   319 _CR	=	0x00de
                           0000DF   320 _CF	=	0x00df
                                    321 ;--------------------------------------------------------
                                    322 ; overlayable register banks
                                    323 ;--------------------------------------------------------
                                    324 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        325 	.ds 8
                                    326 ;--------------------------------------------------------
                                    327 ; internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area DSEG    (DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; overlayable items in internal ram 
                                    332 ;--------------------------------------------------------
                                    333 ;--------------------------------------------------------
                                    334 ; indirectly addressable internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area ISEG    (DATA)
                                    337 ;--------------------------------------------------------
                                    338 ; absolute internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area IABS    (ABS,DATA)
                                    341 	.area IABS    (ABS,DATA)
                                    342 ;--------------------------------------------------------
                                    343 ; bit data
                                    344 ;--------------------------------------------------------
                                    345 	.area BSEG    (BIT)
                                    346 ;--------------------------------------------------------
                                    347 ; paged external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area PSEG    (PAG,XDATA)
                                    350 ;--------------------------------------------------------
                                    351 ; external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area XSEG    (XDATA)
      00008E                        354 _TI1::
      00008E                        355 	.ds 1
      00008F                        356 _putc_c_1_14:
      00008F                        357 	.ds 1
      000090                        358 _sendstr_str_1_16:
      000090                        359 	.ds 3
      000093                        360 _display_PARM_2:
      000093                        361 	.ds 1
      000094                        362 _display_str_1_19:
      000094                        363 	.ds 3
      000097                        364 _display_tmp_1_20:
      000097                        365 	.ds 1
      000098                        366 _display_i_1_20:
      000098                        367 	.ds 1
      000099                        368 _serial_buf::
      000099                        369 	.ds 100
      0000FD                        370 _receive_data_PARM_2:
      0000FD                        371 	.ds 1
      0000FE                        372 _receive_data_buf_1_24:
      0000FE                        373 	.ds 3
      000101                        374 _receive_data_i_1_25:
      000101                        375 	.ds 1
      000102                        376 _receive_data_start_1_25:
      000102                        377 	.ds 3
                                    378 ;--------------------------------------------------------
                                    379 ; absolute external ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area XABS    (ABS,XDATA)
                                    382 ;--------------------------------------------------------
                                    383 ; external initialized ram data
                                    384 ;--------------------------------------------------------
                                    385 	.area XISEG   (XDATA)
      0003A5                        386 _serial_r::
      0003A5                        387 	.ds 2
      0003A7                        388 _serial_w::
      0003A7                        389 	.ds 2
      0003A9                        390 _serial_end::
      0003A9                        391 	.ds 2
                                    392 	.area HOME    (CODE)
                                    393 	.area GSINIT0 (CODE)
                                    394 	.area GSINIT1 (CODE)
                                    395 	.area GSINIT2 (CODE)
                                    396 	.area GSINIT3 (CODE)
                                    397 	.area GSINIT4 (CODE)
                                    398 	.area GSINIT5 (CODE)
                                    399 	.area GSINIT  (CODE)
                                    400 	.area GSFINAL (CODE)
                                    401 	.area CSEG    (CODE)
                                    402 ;--------------------------------------------------------
                                    403 ; global & static initialisations
                                    404 ;--------------------------------------------------------
                                    405 	.area HOME    (CODE)
                                    406 	.area GSINIT  (CODE)
                                    407 	.area GSFINAL (CODE)
                                    408 	.area GSINIT  (CODE)
                                    409 ;--------------------------------------------------------
                                    410 ; Home
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area HOME    (CODE)
                                    414 ;--------------------------------------------------------
                                    415 ; code
                                    416 ;--------------------------------------------------------
                                    417 	.area CSEG    (CODE)
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'putc'
                                    420 ;------------------------------------------------------------
                                    421 ;c                         Allocated with name '_putc_c_1_14'
                                    422 ;------------------------------------------------------------
                                    423 ;	serial.c:6: void putc(uchar c)
                                    424 ;	-----------------------------------------
                                    425 ;	 function putc
                                    426 ;	-----------------------------------------
      000CF7                        427 _putc:
                           000007   428 	ar7 = 0x07
                           000006   429 	ar6 = 0x06
                           000005   430 	ar5 = 0x05
                           000004   431 	ar4 = 0x04
                           000003   432 	ar3 = 0x03
                           000002   433 	ar2 = 0x02
                           000001   434 	ar1 = 0x01
                           000000   435 	ar0 = 0x00
      000CF7 E5 82            [12]  436 	mov	a,dpl
      000CF9 90 00 8F         [24]  437 	mov	dptr,#_putc_c_1_14
      000CFC F0               [24]  438 	movx	@dptr,a
                                    439 ;	serial.c:8: SBUF=c;
      000CFD E0               [24]  440 	movx	a,@dptr
      000CFE F5 99            [12]  441 	mov	_SBUF,a
                                    442 ;	serial.c:9: while(!TI&&!TI1);
      000D00                        443 00102$:
      000D00 20 99 08         [24]  444 	jb	_TI,00104$
      000D03 90 00 8E         [24]  445 	mov	dptr,#_TI1
      000D06 E0               [24]  446 	movx	a,@dptr
      000D07 70 02            [24]  447 	jnz	00104$
      000D09 80 F5            [24]  448 	sjmp	00102$
      000D0B                        449 00104$:
                                    450 ;	serial.c:10: TI1=TI=0;
      000D0B C2 99            [12]  451 	clr	_TI
      000D0D 90 00 8E         [24]  452 	mov	dptr,#_TI1
      000D10 A2 99            [12]  453 	mov	c,_TI
      000D12 E4               [12]  454 	clr	a
      000D13 33               [12]  455 	rlc	a
      000D14 F0               [24]  456 	movx	@dptr,a
      000D15 22               [24]  457 	ret
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'sendstr'
                                    460 ;------------------------------------------------------------
                                    461 ;str                       Allocated with name '_sendstr_str_1_16'
                                    462 ;tmp                       Allocated with name '_sendstr_tmp_1_17'
                                    463 ;------------------------------------------------------------
                                    464 ;	serial.c:17: uint sendstr(uchar *str)
                                    465 ;	-----------------------------------------
                                    466 ;	 function sendstr
                                    467 ;	-----------------------------------------
      000D16                        468 _sendstr:
      000D16 AF F0            [24]  469 	mov	r7,b
      000D18 AE 83            [24]  470 	mov	r6,dph
      000D1A E5 82            [12]  471 	mov	a,dpl
      000D1C 90 00 90         [24]  472 	mov	dptr,#_sendstr_str_1_16
      000D1F F0               [24]  473 	movx	@dptr,a
      000D20 EE               [12]  474 	mov	a,r6
      000D21 A3               [24]  475 	inc	dptr
      000D22 F0               [24]  476 	movx	@dptr,a
      000D23 EF               [12]  477 	mov	a,r7
      000D24 A3               [24]  478 	inc	dptr
      000D25 F0               [24]  479 	movx	@dptr,a
                                    480 ;	serial.c:20: TI1=0;
      000D26 90 00 8E         [24]  481 	mov	dptr,#_TI1
      000D29 E4               [12]  482 	clr	a
      000D2A F0               [24]  483 	movx	@dptr,a
                                    484 ;	serial.c:21: do{
      000D2B 90 00 90         [24]  485 	mov	dptr,#_sendstr_str_1_16
      000D2E E0               [24]  486 	movx	a,@dptr
      000D2F FD               [12]  487 	mov	r5,a
      000D30 A3               [24]  488 	inc	dptr
      000D31 E0               [24]  489 	movx	a,@dptr
      000D32 FE               [12]  490 	mov	r6,a
      000D33 A3               [24]  491 	inc	dptr
      000D34 E0               [24]  492 	movx	a,@dptr
      000D35 FF               [12]  493 	mov	r7,a
      000D36                        494 00105$:
                                    495 ;	serial.c:22: SBUF=*str;
      000D36 8D 82            [24]  496 	mov	dpl,r5
      000D38 8E 83            [24]  497 	mov	dph,r6
      000D3A 8F F0            [24]  498 	mov	b,r7
      000D3C 12 1F 3E         [24]  499 	lcall	__gptrget
      000D3F F5 99            [12]  500 	mov	_SBUF,a
      000D41 A3               [24]  501 	inc	dptr
      000D42 AD 82            [24]  502 	mov	r5,dpl
      000D44 AE 83            [24]  503 	mov	r6,dph
                                    504 ;	serial.c:23: str+=1;
      000D46 90 00 90         [24]  505 	mov	dptr,#_sendstr_str_1_16
      000D49 ED               [12]  506 	mov	a,r5
      000D4A F0               [24]  507 	movx	@dptr,a
      000D4B EE               [12]  508 	mov	a,r6
      000D4C A3               [24]  509 	inc	dptr
      000D4D F0               [24]  510 	movx	@dptr,a
      000D4E EF               [12]  511 	mov	a,r7
      000D4F A3               [24]  512 	inc	dptr
      000D50 F0               [24]  513 	movx	@dptr,a
                                    514 ;	serial.c:24: while(!TI&&!TI1);
      000D51                        515 00102$:
      000D51 20 99 08         [24]  516 	jb	_TI,00104$
      000D54 90 00 8E         [24]  517 	mov	dptr,#_TI1
      000D57 E0               [24]  518 	movx	a,@dptr
      000D58 70 02            [24]  519 	jnz	00104$
      000D5A 80 F5            [24]  520 	sjmp	00102$
      000D5C                        521 00104$:
                                    522 ;	serial.c:25: TI1=TI=0;
      000D5C C2 99            [12]  523 	clr	_TI
      000D5E 90 00 8E         [24]  524 	mov	dptr,#_TI1
      000D61 A2 99            [12]  525 	mov	c,_TI
      000D63 E4               [12]  526 	clr	a
      000D64 33               [12]  527 	rlc	a
      000D65 F0               [24]  528 	movx	@dptr,a
                                    529 ;	serial.c:26: }while(*str!=NULL);
      000D66 8D 82            [24]  530 	mov	dpl,r5
      000D68 8E 83            [24]  531 	mov	dph,r6
      000D6A 8F F0            [24]  532 	mov	b,r7
      000D6C 12 1F 3E         [24]  533 	lcall	__gptrget
      000D6F 70 C5            [24]  534 	jnz	00105$
      000D71 90 00 90         [24]  535 	mov	dptr,#_sendstr_str_1_16
      000D74 ED               [12]  536 	mov	a,r5
      000D75 F0               [24]  537 	movx	@dptr,a
      000D76 EE               [12]  538 	mov	a,r6
      000D77 A3               [24]  539 	inc	dptr
      000D78 F0               [24]  540 	movx	@dptr,a
      000D79 EF               [12]  541 	mov	a,r7
      000D7A A3               [24]  542 	inc	dptr
      000D7B F0               [24]  543 	movx	@dptr,a
                                    544 ;	serial.c:33: return OK;
      000D7C 90 00 00         [24]  545 	mov	dptr,#0x0000
      000D7F 22               [24]  546 	ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'display'
                                    549 ;------------------------------------------------------------
                                    550 ;c                         Allocated with name '_display_PARM_2'
                                    551 ;str                       Allocated with name '_display_str_1_19'
                                    552 ;tmp                       Allocated with name '_display_tmp_1_20'
                                    553 ;i                         Allocated with name '_display_i_1_20'
                                    554 ;------------------------------------------------------------
                                    555 ;	serial.c:35: void display(uchar *str,uchar c)
                                    556 ;	-----------------------------------------
                                    557 ;	 function display
                                    558 ;	-----------------------------------------
      000D80                        559 _display:
      000D80 AF F0            [24]  560 	mov	r7,b
      000D82 AE 83            [24]  561 	mov	r6,dph
      000D84 E5 82            [12]  562 	mov	a,dpl
      000D86 90 00 94         [24]  563 	mov	dptr,#_display_str_1_19
      000D89 F0               [24]  564 	movx	@dptr,a
      000D8A EE               [12]  565 	mov	a,r6
      000D8B A3               [24]  566 	inc	dptr
      000D8C F0               [24]  567 	movx	@dptr,a
      000D8D EF               [12]  568 	mov	a,r7
      000D8E A3               [24]  569 	inc	dptr
      000D8F F0               [24]  570 	movx	@dptr,a
                                    571 ;	serial.c:38: sendstr(str);
      000D90 90 00 94         [24]  572 	mov	dptr,#_display_str_1_19
      000D93 E0               [24]  573 	movx	a,@dptr
      000D94 FD               [12]  574 	mov	r5,a
      000D95 A3               [24]  575 	inc	dptr
      000D96 E0               [24]  576 	movx	a,@dptr
      000D97 FE               [12]  577 	mov	r6,a
      000D98 A3               [24]  578 	inc	dptr
      000D99 E0               [24]  579 	movx	a,@dptr
      000D9A FF               [12]  580 	mov	r7,a
      000D9B 8D 82            [24]  581 	mov	dpl,r5
      000D9D 8E 83            [24]  582 	mov	dph,r6
      000D9F 8F F0            [24]  583 	mov	b,r7
      000DA1 12 0D 16         [24]  584 	lcall	_sendstr
                                    585 ;	serial.c:39: putc(0x30);
      000DA4 75 82 30         [24]  586 	mov	dpl,#0x30
      000DA7 12 0C F7         [24]  587 	lcall	_putc
                                    588 ;	serial.c:40: putc('x');
      000DAA 75 82 78         [24]  589 	mov	dpl,#0x78
      000DAD 12 0C F7         [24]  590 	lcall	_putc
                                    591 ;	serial.c:41: tmp=c>>4;
      000DB0 90 00 93         [24]  592 	mov	dptr,#_display_PARM_2
      000DB3 E0               [24]  593 	movx	a,@dptr
      000DB4 C4               [12]  594 	swap	a
      000DB5 54 0F            [12]  595 	anl	a,#0x0F
      000DB7 90 00 97         [24]  596 	mov	dptr,#_display_tmp_1_20
      000DBA F0               [24]  597 	movx	@dptr,a
                                    598 ;	serial.c:42: for(i=0;i<2;i++){
      000DBB 90 00 98         [24]  599 	mov	dptr,#_display_i_1_20
      000DBE E4               [12]  600 	clr	a
      000DBF F0               [24]  601 	movx	@dptr,a
      000DC0 90 00 98         [24]  602 	mov	dptr,#_display_i_1_20
      000DC3 E0               [24]  603 	movx	a,@dptr
      000DC4 FF               [12]  604 	mov	r7,a
      000DC5                        605 00105$:
                                    606 ;	serial.c:43: if(tmp<0x0a){
      000DC5 90 00 97         [24]  607 	mov	dptr,#_display_tmp_1_20
      000DC8 E0               [24]  608 	movx	a,@dptr
      000DC9 FE               [12]  609 	mov	r6,a
      000DCA BE 0A 00         [24]  610 	cjne	r6,#0x0A,00116$
      000DCD                        611 00116$:
      000DCD 40 02            [24]  612 	jc	00101$
      000DCF 80 11            [24]  613 	sjmp	00102$
      000DD1                        614 00101$:
                                    615 ;	serial.c:44: putc(tmp+0x30);
      000DD1 90 00 97         [24]  616 	mov	dptr,#_display_tmp_1_20
      000DD4 E0               [24]  617 	movx	a,@dptr
      000DD5 24 30            [12]  618 	add	a,#0x30
      000DD7 F5 82            [12]  619 	mov	dpl,a
      000DD9 C0 07            [24]  620 	push	ar7
      000DDB 12 0C F7         [24]  621 	lcall	_putc
      000DDE D0 07            [24]  622 	pop	ar7
      000DE0 80 0F            [24]  623 	sjmp	00103$
      000DE2                        624 00102$:
                                    625 ;	serial.c:46: putc(tmp+0x37);
      000DE2 90 00 97         [24]  626 	mov	dptr,#_display_tmp_1_20
      000DE5 E0               [24]  627 	movx	a,@dptr
      000DE6 24 37            [12]  628 	add	a,#0x37
      000DE8 F5 82            [12]  629 	mov	dpl,a
      000DEA C0 07            [24]  630 	push	ar7
      000DEC 12 0C F7         [24]  631 	lcall	_putc
      000DEF D0 07            [24]  632 	pop	ar7
      000DF1                        633 00103$:
                                    634 ;	serial.c:48: tmp=c&0x0f;
      000DF1 90 00 93         [24]  635 	mov	dptr,#_display_PARM_2
      000DF4 E0               [24]  636 	movx	a,@dptr
      000DF5 FE               [12]  637 	mov	r6,a
      000DF6 90 00 97         [24]  638 	mov	dptr,#_display_tmp_1_20
      000DF9 74 0F            [12]  639 	mov	a,#0x0F
      000DFB 5E               [12]  640 	anl	a,r6
      000DFC F0               [24]  641 	movx	@dptr,a
                                    642 ;	serial.c:42: for(i=0;i<2;i++){
      000DFD 0F               [12]  643 	inc	r7
      000DFE BF 02 00         [24]  644 	cjne	r7,#0x02,00118$
      000E01                        645 00118$:
      000E01 40 C2            [24]  646 	jc	00105$
                                    647 ;	serial.c:50: sendstr("\n\r");
      000E03 90 21 A7         [24]  648 	mov	dptr,#___str_0
      000E06 75 F0 80         [24]  649 	mov	b,#0x80
      000E09 02 0D 16         [24]  650 	ljmp	_sendstr
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'receive_data'
                                    653 ;------------------------------------------------------------
                                    654 ;count                     Allocated with name '_receive_data_PARM_2'
                                    655 ;buf                       Allocated with name '_receive_data_buf_1_24'
                                    656 ;i                         Allocated with name '_receive_data_i_1_25'
                                    657 ;start                     Allocated with name '_receive_data_start_1_25'
                                    658 ;------------------------------------------------------------
                                    659 ;	serial.c:59: uchar receive_data(uchar *buf,uchar count)
                                    660 ;	-----------------------------------------
                                    661 ;	 function receive_data
                                    662 ;	-----------------------------------------
      000E0C                        663 _receive_data:
      000E0C AF F0            [24]  664 	mov	r7,b
      000E0E AE 83            [24]  665 	mov	r6,dph
      000E10 E5 82            [12]  666 	mov	a,dpl
      000E12 90 00 FE         [24]  667 	mov	dptr,#_receive_data_buf_1_24
      000E15 F0               [24]  668 	movx	@dptr,a
      000E16 EE               [12]  669 	mov	a,r6
      000E17 A3               [24]  670 	inc	dptr
      000E18 F0               [24]  671 	movx	@dptr,a
      000E19 EF               [12]  672 	mov	a,r7
      000E1A A3               [24]  673 	inc	dptr
      000E1B F0               [24]  674 	movx	@dptr,a
                                    675 ;	serial.c:63: EA=0;
      000E1C C2 AF            [12]  676 	clr	_EA
                                    677 ;	serial.c:64: start=serial_r;
      000E1E 90 03 A5         [24]  678 	mov	dptr,#_serial_r
      000E21 E0               [24]  679 	movx	a,@dptr
      000E22 FE               [12]  680 	mov	r6,a
      000E23 A3               [24]  681 	inc	dptr
      000E24 E0               [24]  682 	movx	a,@dptr
      000E25 FF               [12]  683 	mov	r7,a
      000E26 90 01 02         [24]  684 	mov	dptr,#_receive_data_start_1_25
      000E29 EE               [12]  685 	mov	a,r6
      000E2A F0               [24]  686 	movx	@dptr,a
      000E2B EF               [12]  687 	mov	a,r7
      000E2C A3               [24]  688 	inc	dptr
      000E2D F0               [24]  689 	movx	@dptr,a
      000E2E E4               [12]  690 	clr	a
      000E2F A3               [24]  691 	inc	dptr
      000E30 F0               [24]  692 	movx	@dptr,a
                                    693 ;	serial.c:65: for(i=0;i<(count-3)&&(*serial_r!='\r');i++){
      000E31 90 01 01         [24]  694 	mov	dptr,#_receive_data_i_1_25
      000E34 F0               [24]  695 	movx	@dptr,a
      000E35 90 00 FE         [24]  696 	mov	dptr,#_receive_data_buf_1_24
      000E38 E0               [24]  697 	movx	a,@dptr
      000E39 FD               [12]  698 	mov	r5,a
      000E3A A3               [24]  699 	inc	dptr
      000E3B E0               [24]  700 	movx	a,@dptr
      000E3C FE               [12]  701 	mov	r6,a
      000E3D A3               [24]  702 	inc	dptr
      000E3E E0               [24]  703 	movx	a,@dptr
      000E3F FF               [12]  704 	mov	r7,a
      000E40 90 01 01         [24]  705 	mov	dptr,#_receive_data_i_1_25
      000E43 E0               [24]  706 	movx	a,@dptr
      000E44 FC               [12]  707 	mov	r4,a
      000E45                        708 00104$:
      000E45 90 00 FD         [24]  709 	mov	dptr,#_receive_data_PARM_2
      000E48 E0               [24]  710 	movx	a,@dptr
      000E49 7A 00            [12]  711 	mov	r2,#0x00
      000E4B 24 FD            [12]  712 	add	a,#0xFD
      000E4D FB               [12]  713 	mov	r3,a
      000E4E EA               [12]  714 	mov	a,r2
      000E4F 34 FF            [12]  715 	addc	a,#0xFF
      000E51 FA               [12]  716 	mov	r2,a
      000E52 8C 00            [24]  717 	mov	ar0,r4
      000E54 79 00            [12]  718 	mov	r1,#0x00
      000E56 C3               [12]  719 	clr	c
      000E57 E8               [12]  720 	mov	a,r0
      000E58 9B               [12]  721 	subb	a,r3
      000E59 E9               [12]  722 	mov	a,r1
      000E5A 64 80            [12]  723 	xrl	a,#0x80
      000E5C 8A F0            [24]  724 	mov	b,r2
      000E5E 63 F0 80         [24]  725 	xrl	b,#0x80
      000E61 95 F0            [12]  726 	subb	a,b
      000E63 50 49            [24]  727 	jnc	00101$
      000E65 90 03 A5         [24]  728 	mov	dptr,#_serial_r
      000E68 E0               [24]  729 	movx	a,@dptr
      000E69 FA               [12]  730 	mov	r2,a
      000E6A A3               [24]  731 	inc	dptr
      000E6B E0               [24]  732 	movx	a,@dptr
      000E6C FB               [12]  733 	mov	r3,a
      000E6D 8A 82            [24]  734 	mov	dpl,r2
      000E6F 8B 83            [24]  735 	mov	dph,r3
      000E71 E0               [24]  736 	movx	a,@dptr
      000E72 FA               [12]  737 	mov	r2,a
      000E73 BA 0D 02         [24]  738 	cjne	r2,#0x0D,00115$
      000E76 80 36            [24]  739 	sjmp	00101$
      000E78                        740 00115$:
                                    741 ;	serial.c:66: *buf=*serial_r;
      000E78 90 03 A5         [24]  742 	mov	dptr,#_serial_r
      000E7B E0               [24]  743 	movx	a,@dptr
      000E7C FA               [12]  744 	mov	r2,a
      000E7D A3               [24]  745 	inc	dptr
      000E7E E0               [24]  746 	movx	a,@dptr
      000E7F FB               [12]  747 	mov	r3,a
      000E80 8A 82            [24]  748 	mov	dpl,r2
      000E82 8B 83            [24]  749 	mov	dph,r3
      000E84 E0               [24]  750 	movx	a,@dptr
      000E85 FA               [12]  751 	mov	r2,a
      000E86 8D 82            [24]  752 	mov	dpl,r5
      000E88 8E 83            [24]  753 	mov	dph,r6
      000E8A 8F F0            [24]  754 	mov	b,r7
      000E8C 12 1F 03         [24]  755 	lcall	__gptrput
      000E8F A3               [24]  756 	inc	dptr
      000E90 AD 82            [24]  757 	mov	r5,dpl
      000E92 AE 83            [24]  758 	mov	r6,dph
                                    759 ;	serial.c:67: buf++;
      000E94 90 00 FE         [24]  760 	mov	dptr,#_receive_data_buf_1_24
      000E97 ED               [12]  761 	mov	a,r5
      000E98 F0               [24]  762 	movx	@dptr,a
      000E99 EE               [12]  763 	mov	a,r6
      000E9A A3               [24]  764 	inc	dptr
      000E9B F0               [24]  765 	movx	@dptr,a
      000E9C EF               [12]  766 	mov	a,r7
      000E9D A3               [24]  767 	inc	dptr
      000E9E F0               [24]  768 	movx	@dptr,a
                                    769 ;	serial.c:68: serial_r++;
      000E9F 90 03 A5         [24]  770 	mov	dptr,#_serial_r
      000EA2 E0               [24]  771 	movx	a,@dptr
      000EA3 24 01            [12]  772 	add	a,#0x01
      000EA5 F0               [24]  773 	movx	@dptr,a
      000EA6 A3               [24]  774 	inc	dptr
      000EA7 E0               [24]  775 	movx	a,@dptr
      000EA8 34 00            [12]  776 	addc	a,#0x00
      000EAA F0               [24]  777 	movx	@dptr,a
                                    778 ;	serial.c:65: for(i=0;i<(count-3)&&(*serial_r!='\r');i++){
      000EAB 0C               [12]  779 	inc	r4
      000EAC 80 97            [24]  780 	sjmp	00104$
      000EAE                        781 00101$:
                                    782 ;	serial.c:70: *buf='\r';
      000EAE 90 00 FE         [24]  783 	mov	dptr,#_receive_data_buf_1_24
      000EB1 E0               [24]  784 	movx	a,@dptr
      000EB2 FD               [12]  785 	mov	r5,a
      000EB3 A3               [24]  786 	inc	dptr
      000EB4 E0               [24]  787 	movx	a,@dptr
      000EB5 FE               [12]  788 	mov	r6,a
      000EB6 A3               [24]  789 	inc	dptr
      000EB7 E0               [24]  790 	movx	a,@dptr
      000EB8 FF               [12]  791 	mov	r7,a
      000EB9 8D 82            [24]  792 	mov	dpl,r5
      000EBB 8E 83            [24]  793 	mov	dph,r6
      000EBD 8F F0            [24]  794 	mov	b,r7
      000EBF 74 0D            [12]  795 	mov	a,#0x0D
      000EC1 12 1F 03         [24]  796 	lcall	__gptrput
                                    797 ;	serial.c:71: *buf++;
      000EC4 90 00 FE         [24]  798 	mov	dptr,#_receive_data_buf_1_24
      000EC7 74 01            [12]  799 	mov	a,#0x01
      000EC9 2D               [12]  800 	add	a,r5
      000ECA F0               [24]  801 	movx	@dptr,a
      000ECB E4               [12]  802 	clr	a
      000ECC 3E               [12]  803 	addc	a,r6
      000ECD A3               [24]  804 	inc	dptr
      000ECE F0               [24]  805 	movx	@dptr,a
      000ECF EF               [12]  806 	mov	a,r7
      000ED0 A3               [24]  807 	inc	dptr
      000ED1 F0               [24]  808 	movx	@dptr,a
                                    809 ;	serial.c:72: *buf='\n';
      000ED2 90 00 FE         [24]  810 	mov	dptr,#_receive_data_buf_1_24
      000ED5 E0               [24]  811 	movx	a,@dptr
      000ED6 FD               [12]  812 	mov	r5,a
      000ED7 A3               [24]  813 	inc	dptr
      000ED8 E0               [24]  814 	movx	a,@dptr
      000ED9 FE               [12]  815 	mov	r6,a
      000EDA A3               [24]  816 	inc	dptr
      000EDB E0               [24]  817 	movx	a,@dptr
      000EDC FF               [12]  818 	mov	r7,a
      000EDD 8D 82            [24]  819 	mov	dpl,r5
      000EDF 8E 83            [24]  820 	mov	dph,r6
      000EE1 8F F0            [24]  821 	mov	b,r7
      000EE3 74 0A            [12]  822 	mov	a,#0x0A
      000EE5 12 1F 03         [24]  823 	lcall	__gptrput
                                    824 ;	serial.c:73: *buf++;
      000EE8 90 00 FE         [24]  825 	mov	dptr,#_receive_data_buf_1_24
      000EEB 74 01            [12]  826 	mov	a,#0x01
      000EED 2D               [12]  827 	add	a,r5
      000EEE F0               [24]  828 	movx	@dptr,a
      000EEF E4               [12]  829 	clr	a
      000EF0 3E               [12]  830 	addc	a,r6
      000EF1 A3               [24]  831 	inc	dptr
      000EF2 F0               [24]  832 	movx	@dptr,a
      000EF3 EF               [12]  833 	mov	a,r7
      000EF4 A3               [24]  834 	inc	dptr
      000EF5 F0               [24]  835 	movx	@dptr,a
                                    836 ;	serial.c:74: *buf=0;
      000EF6 90 00 FE         [24]  837 	mov	dptr,#_receive_data_buf_1_24
      000EF9 E0               [24]  838 	movx	a,@dptr
      000EFA FD               [12]  839 	mov	r5,a
      000EFB A3               [24]  840 	inc	dptr
      000EFC E0               [24]  841 	movx	a,@dptr
      000EFD FE               [12]  842 	mov	r6,a
      000EFE A3               [24]  843 	inc	dptr
      000EFF E0               [24]  844 	movx	a,@dptr
      000F00 FF               [12]  845 	mov	r7,a
      000F01 8D 82            [24]  846 	mov	dpl,r5
      000F03 8E 83            [24]  847 	mov	dph,r6
      000F05 8F F0            [24]  848 	mov	b,r7
      000F07 E4               [12]  849 	clr	a
      000F08 12 1F 03         [24]  850 	lcall	__gptrput
                                    851 ;	serial.c:75: EA=1;
      000F0B D2 AF            [12]  852 	setb	_EA
                                    853 ;	serial.c:76: return (uchar)(serial_r-start);
      000F0D 90 01 02         [24]  854 	mov	dptr,#_receive_data_start_1_25
      000F10 E0               [24]  855 	movx	a,@dptr
      000F11 FD               [12]  856 	mov	r5,a
      000F12 A3               [24]  857 	inc	dptr
      000F13 E0               [24]  858 	movx	a,@dptr
      000F14 FE               [12]  859 	mov	r6,a
      000F15 A3               [24]  860 	inc	dptr
      000F16 E0               [24]  861 	movx	a,@dptr
      000F17 90 03 A5         [24]  862 	mov	dptr,#_serial_r
      000F1A E0               [24]  863 	movx	a,@dptr
      000F1B FB               [12]  864 	mov	r3,a
      000F1C A3               [24]  865 	inc	dptr
      000F1D E0               [24]  866 	movx	a,@dptr
      000F1E FC               [12]  867 	mov	r4,a
      000F1F EB               [12]  868 	mov	a,r3
      000F20 C3               [12]  869 	clr	c
      000F21 9D               [12]  870 	subb	a,r5
      000F22 FD               [12]  871 	mov	r5,a
      000F23 EC               [12]  872 	mov	a,r4
      000F24 9E               [12]  873 	subb	a,r6
      000F25 8D 82            [24]  874 	mov	dpl,r5
      000F27 22               [24]  875 	ret
                                    876 ;------------------------------------------------------------
                                    877 ;Allocation info for local variables in function 'uart_init'
                                    878 ;------------------------------------------------------------
                                    879 ;	serial.c:83: void uart_init(void)
                                    880 ;	-----------------------------------------
                                    881 ;	 function uart_init
                                    882 ;	-----------------------------------------
      000F28                        883 _uart_init:
                                    884 ;	serial.c:85: AUXR|=0xc0;	//定时器1,0频率提高12倍
      000F28 43 8E C0         [24]  885 	orl	_AUXR,#0xC0
                                    886 ;	serial.c:86: TMOD = 0x22;       //T1,T0 方式2
      000F2B 75 89 22         [24]  887 	mov	_TMOD,#0x22
                                    888 ;	serial.c:87: PCON |= 0x80;       //SMOD = 1
      000F2E 43 87 80         [24]  889 	orl	_PCON,#0x80
                                    890 ;	serial.c:88: SCON = 0x50;       //方式1 8个数据位
      000F31 75 98 50         [24]  891 	mov	_SCON,#0x50
                                    892 ;	serial.c:89: TH1=0xfd;
      000F34 75 8D FD         [24]  893 	mov	_TH1,#0xFD
                                    894 ;	serial.c:90: TL1=0xfd;
      000F37 75 8B FD         [24]  895 	mov	_TL1,#0xFD
                                    896 ;	serial.c:93: TR1 = 1;               //启动定时器1
      000F3A D2 8E            [12]  897 	setb	_TR1
                                    898 ;	serial.c:94: ET1=0;
      000F3C C2 AB            [12]  899 	clr	_ET1
                                    900 ;	serial.c:95: ES=1;              //开串口中断
      000F3E D2 AC            [12]  901 	setb	_ES
                                    902 ;	serial.c:96: memset(serial_buf,0,191);
      000F40 90 01 A5         [24]  903 	mov	dptr,#_memset_PARM_2
      000F43 E4               [12]  904 	clr	a
      000F44 F0               [24]  905 	movx	@dptr,a
      000F45 90 01 A6         [24]  906 	mov	dptr,#_memset_PARM_3
      000F48 74 BF            [12]  907 	mov	a,#0xBF
      000F4A F0               [24]  908 	movx	@dptr,a
      000F4B E4               [12]  909 	clr	a
      000F4C A3               [24]  910 	inc	dptr
      000F4D F0               [24]  911 	movx	@dptr,a
      000F4E 90 00 99         [24]  912 	mov	dptr,#_serial_buf
      000F51 75 F0 00         [24]  913 	mov	b,#0x00
      000F54 12 14 44         [24]  914 	lcall	_memset
                                    915 ;	serial.c:97: semaphore_init(15);
      000F57 90 00 0F         [24]  916 	mov	dptr,#0x000F
      000F5A 12 0F 85         [24]  917 	lcall	_semaphore_init
                                    918 ;	serial.c:98: get_semaphore(15);
      000F5D 90 00 0F         [24]  919 	mov	dptr,#0x000F
      000F60 12 0F B2         [24]  920 	lcall	_get_semaphore
                                    921 ;	serial.c:99: serial_r=serial_buf;
      000F63 90 03 A5         [24]  922 	mov	dptr,#_serial_r
      000F66 74 99            [12]  923 	mov	a,#_serial_buf
      000F68 F0               [24]  924 	movx	@dptr,a
      000F69 74 00            [12]  925 	mov	a,#(_serial_buf >> 8)
      000F6B A3               [24]  926 	inc	dptr
      000F6C F0               [24]  927 	movx	@dptr,a
                                    928 ;	serial.c:100: serial_w=serial_buf;
      000F6D 90 03 A7         [24]  929 	mov	dptr,#_serial_w
      000F70 74 99            [12]  930 	mov	a,#_serial_buf
      000F72 F0               [24]  931 	movx	@dptr,a
      000F73 74 00            [12]  932 	mov	a,#(_serial_buf >> 8)
      000F75 A3               [24]  933 	inc	dptr
      000F76 F0               [24]  934 	movx	@dptr,a
                                    935 ;	serial.c:101: serial_end=serial_buf+99;
      000F77 90 03 A9         [24]  936 	mov	dptr,#_serial_end
      000F7A 74 63            [12]  937 	mov	a,#0x63
      000F7C 24 99            [12]  938 	add	a,#_serial_buf
      000F7E F0               [24]  939 	movx	@dptr,a
      000F7F E4               [12]  940 	clr	a
      000F80 34 00            [12]  941 	addc	a,#(_serial_buf >> 8)
      000F82 A3               [24]  942 	inc	dptr
      000F83 F0               [24]  943 	movx	@dptr,a
      000F84 22               [24]  944 	ret
                                    945 	.area CSEG    (CODE)
                                    946 	.area CONST   (CODE)
      0021A7                        947 ___str_0:
      0021A7 0A                     948 	.db 0x0A
      0021A8 0D                     949 	.db 0x0D
      0021A9 00                     950 	.db 0x00
                                    951 	.area XINIT   (CODE)
      002211                        952 __xinit__serial_r:
      002211 99 00                  953 	.byte _serial_buf, (_serial_buf >> 8)
      002213                        954 __xinit__serial_w:
      002213 99 00                  955 	.byte _serial_buf, (_serial_buf >> 8)
      002215                        956 __xinit__serial_end:
      002215 FC 00                  957 	.byte (_serial_buf + 99), ((_serial_buf + 99) >> 8)
                                    958 	.area CABS    (ABS,CODE)
