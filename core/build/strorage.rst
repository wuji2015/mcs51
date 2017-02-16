                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module strorage
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _read_sequ
                                     13 	.globl _read_cur
                                     14 	.globl _read_byte
                                     15 	.globl _write_page
                                     16 	.globl _write_byte
                                     17 	.globl _iic_recv_noack
                                     18 	.globl _iic_recv
                                     19 	.globl _iic_send
                                     20 	.globl _iic_stop
                                     21 	.globl _iic_start
                                     22 	.globl _delay
                                     23 	.globl _delay1
                                     24 	.globl _CF
                                     25 	.globl _CR
                                     26 	.globl _CCF1
                                     27 	.globl _CCF0
                                     28 	.globl _TF2
                                     29 	.globl _EXF2
                                     30 	.globl _RCLK
                                     31 	.globl _TCLK
                                     32 	.globl _EXEN2
                                     33 	.globl _TR2
                                     34 	.globl _C_T2
                                     35 	.globl _CP_RL2
                                     36 	.globl _T2CON_7
                                     37 	.globl _T2CON_6
                                     38 	.globl _T2CON_5
                                     39 	.globl _T2CON_4
                                     40 	.globl _T2CON_3
                                     41 	.globl _T2CON_2
                                     42 	.globl _T2CON_1
                                     43 	.globl _T2CON_0
                                     44 	.globl _PT2
                                     45 	.globl _ET2
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _F1
                                     53 	.globl _P
                                     54 	.globl _PS
                                     55 	.globl _PT1
                                     56 	.globl _PX1
                                     57 	.globl _PT0
                                     58 	.globl _PX0
                                     59 	.globl _RD
                                     60 	.globl _WR
                                     61 	.globl _T1
                                     62 	.globl _T0
                                     63 	.globl _INT1
                                     64 	.globl _INT0
                                     65 	.globl _TXD
                                     66 	.globl _RXD
                                     67 	.globl _P3_7
                                     68 	.globl _P3_6
                                     69 	.globl _P3_5
                                     70 	.globl _P3_4
                                     71 	.globl _P3_3
                                     72 	.globl _P3_2
                                     73 	.globl _P3_1
                                     74 	.globl _P3_0
                                     75 	.globl _EA
                                     76 	.globl _ES
                                     77 	.globl _ET1
                                     78 	.globl _EX1
                                     79 	.globl _ET0
                                     80 	.globl _EX0
                                     81 	.globl _P2_7
                                     82 	.globl _P2_6
                                     83 	.globl _P2_5
                                     84 	.globl _P2_4
                                     85 	.globl _P2_3
                                     86 	.globl _P2_2
                                     87 	.globl _P2_1
                                     88 	.globl _P2_0
                                     89 	.globl _SM0
                                     90 	.globl _SM1
                                     91 	.globl _SM2
                                     92 	.globl _REN
                                     93 	.globl _TB8
                                     94 	.globl _RB8
                                     95 	.globl _TI
                                     96 	.globl _RI
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _TF1
                                    106 	.globl _TR1
                                    107 	.globl _TF0
                                    108 	.globl _TR0
                                    109 	.globl _IE1
                                    110 	.globl _IT1
                                    111 	.globl _IE0
                                    112 	.globl _IT0
                                    113 	.globl _P0_7
                                    114 	.globl _P0_6
                                    115 	.globl _P0_5
                                    116 	.globl _P0_4
                                    117 	.globl _P0_3
                                    118 	.globl _P0_2
                                    119 	.globl _P0_1
                                    120 	.globl _P0_0
                                    121 	.globl _PCA_PWM1
                                    122 	.globl _PCA_PWM0
                                    123 	.globl _CCAP1H
                                    124 	.globl _CCAP1L
                                    125 	.globl _CCAP0H
                                    126 	.globl _CCAP0L
                                    127 	.globl _CH
                                    128 	.globl _CL
                                    129 	.globl _CCAPM1
                                    130 	.globl _CCAPM0
                                    131 	.globl _CMOD
                                    132 	.globl _CCON
                                    133 	.globl _WAKE_CLKO
                                    134 	.globl _BRT
                                    135 	.globl _IE2
                                    136 	.globl _S2BUF
                                    137 	.globl _S2CON
                                    138 	.globl _AUXR1
                                    139 	.globl _AUXR
                                    140 	.globl _TH2
                                    141 	.globl _TL2
                                    142 	.globl _RCAP2H
                                    143 	.globl _RCAP2L
                                    144 	.globl _T2CON
                                    145 	.globl _B
                                    146 	.globl _ACC
                                    147 	.globl _PSW
                                    148 	.globl _IP
                                    149 	.globl _P3
                                    150 	.globl _IE
                                    151 	.globl _P2
                                    152 	.globl _SBUF
                                    153 	.globl _SCON
                                    154 	.globl _P1
                                    155 	.globl _TH1
                                    156 	.globl _TH0
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TMOD
                                    160 	.globl _TCON
                                    161 	.globl _PCON
                                    162 	.globl _DPH
                                    163 	.globl _DPL
                                    164 	.globl _SP
                                    165 	.globl _P0
                                    166 	.globl _read_sequ_PARM_3
                                    167 	.globl _read_sequ_PARM_2
                                    168 	.globl _read_byte_PARM_2
                                    169 	.globl _write_page_PARM_2
                                    170 	.globl _write_byte_PARM_2
                                    171 ;--------------------------------------------------------
                                    172 ; special function registers
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0	=	0x0080
                           000081   177 _SP	=	0x0081
                           000082   178 _DPL	=	0x0082
                           000083   179 _DPH	=	0x0083
                           000087   180 _PCON	=	0x0087
                           000088   181 _TCON	=	0x0088
                           000089   182 _TMOD	=	0x0089
                           00008A   183 _TL0	=	0x008a
                           00008B   184 _TL1	=	0x008b
                           00008C   185 _TH0	=	0x008c
                           00008D   186 _TH1	=	0x008d
                           000090   187 _P1	=	0x0090
                           000098   188 _SCON	=	0x0098
                           000099   189 _SBUF	=	0x0099
                           0000A0   190 _P2	=	0x00a0
                           0000A8   191 _IE	=	0x00a8
                           0000B0   192 _P3	=	0x00b0
                           0000B8   193 _IP	=	0x00b8
                           0000D0   194 _PSW	=	0x00d0
                           0000E0   195 _ACC	=	0x00e0
                           0000F0   196 _B	=	0x00f0
                           0000C8   197 _T2CON	=	0x00c8
                           0000CA   198 _RCAP2L	=	0x00ca
                           0000CB   199 _RCAP2H	=	0x00cb
                           0000CC   200 _TL2	=	0x00cc
                           0000CD   201 _TH2	=	0x00cd
                           00008E   202 _AUXR	=	0x008e
                           0000A2   203 _AUXR1	=	0x00a2
                           00009A   204 _S2CON	=	0x009a
                           00009B   205 _S2BUF	=	0x009b
                           0000AF   206 _IE2	=	0x00af
                           00009C   207 _BRT	=	0x009c
                           00008F   208 _WAKE_CLKO	=	0x008f
                           0000D8   209 _CCON	=	0x00d8
                           0000D9   210 _CMOD	=	0x00d9
                           0000DA   211 _CCAPM0	=	0x00da
                           0000DB   212 _CCAPM1	=	0x00db
                           0000E9   213 _CL	=	0x00e9
                           0000F9   214 _CH	=	0x00f9
                           0000EA   215 _CCAP0L	=	0x00ea
                           0000FA   216 _CCAP0H	=	0x00fa
                           0000EB   217 _CCAP1L	=	0x00eb
                           0000FB   218 _CCAP1H	=	0x00fb
                           0000F2   219 _PCA_PWM0	=	0x00f2
                           0000F3   220 _PCA_PWM1	=	0x00f3
                                    221 ;--------------------------------------------------------
                                    222 ; special function bits
                                    223 ;--------------------------------------------------------
                                    224 	.area RSEG    (ABS,DATA)
      000000                        225 	.org 0x0000
                           000080   226 _P0_0	=	0x0080
                           000081   227 _P0_1	=	0x0081
                           000082   228 _P0_2	=	0x0082
                           000083   229 _P0_3	=	0x0083
                           000084   230 _P0_4	=	0x0084
                           000085   231 _P0_5	=	0x0085
                           000086   232 _P0_6	=	0x0086
                           000087   233 _P0_7	=	0x0087
                           000088   234 _IT0	=	0x0088
                           000089   235 _IE0	=	0x0089
                           00008A   236 _IT1	=	0x008a
                           00008B   237 _IE1	=	0x008b
                           00008C   238 _TR0	=	0x008c
                           00008D   239 _TF0	=	0x008d
                           00008E   240 _TR1	=	0x008e
                           00008F   241 _TF1	=	0x008f
                           000090   242 _P1_0	=	0x0090
                           000091   243 _P1_1	=	0x0091
                           000092   244 _P1_2	=	0x0092
                           000093   245 _P1_3	=	0x0093
                           000094   246 _P1_4	=	0x0094
                           000095   247 _P1_5	=	0x0095
                           000096   248 _P1_6	=	0x0096
                           000097   249 _P1_7	=	0x0097
                           000098   250 _RI	=	0x0098
                           000099   251 _TI	=	0x0099
                           00009A   252 _RB8	=	0x009a
                           00009B   253 _TB8	=	0x009b
                           00009C   254 _REN	=	0x009c
                           00009D   255 _SM2	=	0x009d
                           00009E   256 _SM1	=	0x009e
                           00009F   257 _SM0	=	0x009f
                           0000A0   258 _P2_0	=	0x00a0
                           0000A1   259 _P2_1	=	0x00a1
                           0000A2   260 _P2_2	=	0x00a2
                           0000A3   261 _P2_3	=	0x00a3
                           0000A4   262 _P2_4	=	0x00a4
                           0000A5   263 _P2_5	=	0x00a5
                           0000A6   264 _P2_6	=	0x00a6
                           0000A7   265 _P2_7	=	0x00a7
                           0000A8   266 _EX0	=	0x00a8
                           0000A9   267 _ET0	=	0x00a9
                           0000AA   268 _EX1	=	0x00aa
                           0000AB   269 _ET1	=	0x00ab
                           0000AC   270 _ES	=	0x00ac
                           0000AF   271 _EA	=	0x00af
                           0000B0   272 _P3_0	=	0x00b0
                           0000B1   273 _P3_1	=	0x00b1
                           0000B2   274 _P3_2	=	0x00b2
                           0000B3   275 _P3_3	=	0x00b3
                           0000B4   276 _P3_4	=	0x00b4
                           0000B5   277 _P3_5	=	0x00b5
                           0000B6   278 _P3_6	=	0x00b6
                           0000B7   279 _P3_7	=	0x00b7
                           0000B0   280 _RXD	=	0x00b0
                           0000B1   281 _TXD	=	0x00b1
                           0000B2   282 _INT0	=	0x00b2
                           0000B3   283 _INT1	=	0x00b3
                           0000B4   284 _T0	=	0x00b4
                           0000B5   285 _T1	=	0x00b5
                           0000B6   286 _WR	=	0x00b6
                           0000B7   287 _RD	=	0x00b7
                           0000B8   288 _PX0	=	0x00b8
                           0000B9   289 _PT0	=	0x00b9
                           0000BA   290 _PX1	=	0x00ba
                           0000BB   291 _PT1	=	0x00bb
                           0000BC   292 _PS	=	0x00bc
                           0000D0   293 _P	=	0x00d0
                           0000D1   294 _F1	=	0x00d1
                           0000D2   295 _OV	=	0x00d2
                           0000D3   296 _RS0	=	0x00d3
                           0000D4   297 _RS1	=	0x00d4
                           0000D5   298 _F0	=	0x00d5
                           0000D6   299 _AC	=	0x00d6
                           0000D7   300 _CY	=	0x00d7
                           0000AD   301 _ET2	=	0x00ad
                           0000BD   302 _PT2	=	0x00bd
                           0000C8   303 _T2CON_0	=	0x00c8
                           0000C9   304 _T2CON_1	=	0x00c9
                           0000CA   305 _T2CON_2	=	0x00ca
                           0000CB   306 _T2CON_3	=	0x00cb
                           0000CC   307 _T2CON_4	=	0x00cc
                           0000CD   308 _T2CON_5	=	0x00cd
                           0000CE   309 _T2CON_6	=	0x00ce
                           0000CF   310 _T2CON_7	=	0x00cf
                           0000C8   311 _CP_RL2	=	0x00c8
                           0000C9   312 _C_T2	=	0x00c9
                           0000CA   313 _TR2	=	0x00ca
                           0000CB   314 _EXEN2	=	0x00cb
                           0000CC   315 _TCLK	=	0x00cc
                           0000CD   316 _RCLK	=	0x00cd
                           0000CE   317 _EXF2	=	0x00ce
                           0000CF   318 _TF2	=	0x00cf
                           0000D8   319 _CCF0	=	0x00d8
                           0000D9   320 _CCF1	=	0x00d9
                           0000DE   321 _CR	=	0x00de
                           0000DF   322 _CF	=	0x00df
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable register banks
                                    325 ;--------------------------------------------------------
                                    326 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        327 	.ds 8
                                    328 ;--------------------------------------------------------
                                    329 ; internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area DSEG    (DATA)
                                    332 ;--------------------------------------------------------
                                    333 ; overlayable items in internal ram 
                                    334 ;--------------------------------------------------------
                                    335 ;--------------------------------------------------------
                                    336 ; indirectly addressable internal ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area ISEG    (DATA)
                                    339 ;--------------------------------------------------------
                                    340 ; absolute internal ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area IABS    (ABS,DATA)
                                    343 	.area IABS    (ABS,DATA)
                                    344 ;--------------------------------------------------------
                                    345 ; bit data
                                    346 ;--------------------------------------------------------
                                    347 	.area BSEG    (BIT)
      000002                        348 _iic_send_sloc0_1_0:
      000002                        349 	.ds 1
                                    350 ;--------------------------------------------------------
                                    351 ; paged external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area PSEG    (PAG,XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XSEG    (XDATA)
      000375                        358 _iic_send_byte_1_17:
      000375                        359 	.ds 1
      000376                        360 _iic_send_i_1_18:
      000376                        361 	.ds 1
      000377                        362 _iic_recv_data_1_20:
      000377                        363 	.ds 3
      00037A                        364 _iic_recv_i_1_21:
      00037A                        365 	.ds 1
      00037B                        366 _iic_recv_noack_data_1_23:
      00037B                        367 	.ds 3
      00037E                        368 _iic_recv_noack_i_1_24:
      00037E                        369 	.ds 1
      00037F                        370 _write_byte_PARM_2:
      00037F                        371 	.ds 1
      000380                        372 _write_byte_p_1_26:
      000380                        373 	.ds 3
      000383                        374 _write_page_PARM_2:
      000383                        375 	.ds 3
      000386                        376 _write_page_p_1_32:
      000386                        377 	.ds 3
      000389                        378 _write_page_i_1_33:
      000389                        379 	.ds 1
      00038A                        380 _read_byte_PARM_2:
      00038A                        381 	.ds 3
      00038D                        382 _read_byte_p_1_39:
      00038D                        383 	.ds 3
      000390                        384 _read_cur_data_1_45:
      000390                        385 	.ds 3
      000393                        386 _read_sequ_PARM_2:
      000393                        387 	.ds 3
      000396                        388 _read_sequ_PARM_3:
      000396                        389 	.ds 2
      000398                        390 _read_sequ_p_1_48:
      000398                        391 	.ds 3
      00039B                        392 _read_sequ_i_1_49:
      00039B                        393 	.ds 2
                                    394 ;--------------------------------------------------------
                                    395 ; absolute external ram data
                                    396 ;--------------------------------------------------------
                                    397 	.area XABS    (ABS,XDATA)
                                    398 ;--------------------------------------------------------
                                    399 ; external initialized ram data
                                    400 ;--------------------------------------------------------
                                    401 	.area XISEG   (XDATA)
                                    402 	.area HOME    (CODE)
                                    403 	.area GSINIT0 (CODE)
                                    404 	.area GSINIT1 (CODE)
                                    405 	.area GSINIT2 (CODE)
                                    406 	.area GSINIT3 (CODE)
                                    407 	.area GSINIT4 (CODE)
                                    408 	.area GSINIT5 (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 	.area GSFINAL (CODE)
                                    411 	.area CSEG    (CODE)
                                    412 ;--------------------------------------------------------
                                    413 ; global & static initialisations
                                    414 ;--------------------------------------------------------
                                    415 	.area HOME    (CODE)
                                    416 	.area GSINIT  (CODE)
                                    417 	.area GSFINAL (CODE)
                                    418 	.area GSINIT  (CODE)
                                    419 ;--------------------------------------------------------
                                    420 ; Home
                                    421 ;--------------------------------------------------------
                                    422 	.area HOME    (CODE)
                                    423 	.area HOME    (CODE)
                                    424 ;--------------------------------------------------------
                                    425 ; code
                                    426 ;--------------------------------------------------------
                                    427 	.area CSEG    (CODE)
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'iic_start'
                                    430 ;------------------------------------------------------------
                                    431 ;	strorage.c:7: void iic_start(void)		//开始
                                    432 ;	-----------------------------------------
                                    433 ;	 function iic_start
                                    434 ;	-----------------------------------------
      001A07                        435 _iic_start:
                           000007   436 	ar7 = 0x07
                           000006   437 	ar6 = 0x06
                           000005   438 	ar5 = 0x05
                           000004   439 	ar4 = 0x04
                           000003   440 	ar3 = 0x03
                           000002   441 	ar2 = 0x02
                           000001   442 	ar1 = 0x01
                           000000   443 	ar0 = 0x00
                                    444 ;	strorage.c:9: SCL=0;
      001A07 C2 87            [12]  445 	clr	_P0_7
                                    446 ;	strorage.c:10: delay1(5);
      001A09 90 00 05         [24]  447 	mov	dptr,#0x0005
      001A0C 12 17 68         [24]  448 	lcall	_delay1
                                    449 ;	strorage.c:11: SDA=1;
      001A0F D2 86            [12]  450 	setb	_P0_6
                                    451 ;	strorage.c:12: delay1(5);
      001A11 90 00 05         [24]  452 	mov	dptr,#0x0005
      001A14 12 17 68         [24]  453 	lcall	_delay1
                                    454 ;	strorage.c:13: SCL=1;
      001A17 D2 87            [12]  455 	setb	_P0_7
                                    456 ;	strorage.c:14: delay1(10);
      001A19 90 00 0A         [24]  457 	mov	dptr,#0x000A
      001A1C 12 17 68         [24]  458 	lcall	_delay1
                                    459 ;	strorage.c:15: SDA=0;
      001A1F C2 86            [12]  460 	clr	_P0_6
                                    461 ;	strorage.c:16: delay1(10);
      001A21 90 00 0A         [24]  462 	mov	dptr,#0x000A
      001A24 12 17 68         [24]  463 	lcall	_delay1
                                    464 ;	strorage.c:17: SCL=0;
      001A27 C2 87            [12]  465 	clr	_P0_7
                                    466 ;	strorage.c:18: delay1(5);
      001A29 90 00 05         [24]  467 	mov	dptr,#0x0005
      001A2C 12 17 68         [24]  468 	lcall	_delay1
                                    469 ;	strorage.c:19: SDA=1;
      001A2F D2 86            [12]  470 	setb	_P0_6
      001A31 22               [24]  471 	ret
                                    472 ;------------------------------------------------------------
                                    473 ;Allocation info for local variables in function 'iic_stop'
                                    474 ;------------------------------------------------------------
                                    475 ;	strorage.c:21: void iic_stop(void)		//停止
                                    476 ;	-----------------------------------------
                                    477 ;	 function iic_stop
                                    478 ;	-----------------------------------------
      001A32                        479 _iic_stop:
                                    480 ;	strorage.c:23: SCL=0;
      001A32 C2 87            [12]  481 	clr	_P0_7
                                    482 ;	strorage.c:24: delay1(5);
      001A34 90 00 05         [24]  483 	mov	dptr,#0x0005
      001A37 12 17 68         [24]  484 	lcall	_delay1
                                    485 ;	strorage.c:25: SDA=0;
      001A3A C2 86            [12]  486 	clr	_P0_6
                                    487 ;	strorage.c:26: delay1(5);
      001A3C 90 00 05         [24]  488 	mov	dptr,#0x0005
      001A3F 12 17 68         [24]  489 	lcall	_delay1
                                    490 ;	strorage.c:27: SCL=1;
      001A42 D2 87            [12]  491 	setb	_P0_7
                                    492 ;	strorage.c:28: delay1(5);
      001A44 90 00 05         [24]  493 	mov	dptr,#0x0005
      001A47 12 17 68         [24]  494 	lcall	_delay1
                                    495 ;	strorage.c:29: SDA=1;
      001A4A D2 86            [12]  496 	setb	_P0_6
                                    497 ;	strorage.c:30: delay1(5);
      001A4C 90 00 05         [24]  498 	mov	dptr,#0x0005
      001A4F 12 17 68         [24]  499 	lcall	_delay1
                                    500 ;	strorage.c:31: SCL=0;
      001A52 C2 87            [12]  501 	clr	_P0_7
      001A54 22               [24]  502 	ret
                                    503 ;------------------------------------------------------------
                                    504 ;Allocation info for local variables in function 'iic_send'
                                    505 ;------------------------------------------------------------
                                    506 ;byte                      Allocated with name '_iic_send_byte_1_17'
                                    507 ;i                         Allocated with name '_iic_send_i_1_18'
                                    508 ;------------------------------------------------------------
                                    509 ;	strorage.c:34: uchar iic_send(uchar byte)
                                    510 ;	-----------------------------------------
                                    511 ;	 function iic_send
                                    512 ;	-----------------------------------------
      001A55                        513 _iic_send:
      001A55 E5 82            [12]  514 	mov	a,dpl
      001A57 90 03 75         [24]  515 	mov	dptr,#_iic_send_byte_1_17
      001A5A F0               [24]  516 	movx	@dptr,a
                                    517 ;	strorage.c:37: for( i=0; i<8; i++){
      001A5B 90 03 76         [24]  518 	mov	dptr,#_iic_send_i_1_18
      001A5E E4               [12]  519 	clr	a
      001A5F F0               [24]  520 	movx	@dptr,a
      001A60 90 03 76         [24]  521 	mov	dptr,#_iic_send_i_1_18
      001A63 E0               [24]  522 	movx	a,@dptr
      001A64 FF               [12]  523 	mov	r7,a
      001A65                        524 00102$:
                                    525 ;	strorage.c:38: delay1(5);
      001A65 90 00 05         [24]  526 	mov	dptr,#0x0005
      001A68 C0 07            [24]  527 	push	ar7
      001A6A 12 17 68         [24]  528 	lcall	_delay1
                                    529 ;	strorage.c:39: SDA=(byte&0x80);
      001A6D 90 03 75         [24]  530 	mov	dptr,#_iic_send_byte_1_17
      001A70 E0               [24]  531 	movx	a,@dptr
      001A71 FE               [12]  532 	mov	r6,a
      001A72 33               [12]  533 	rlc	a
      001A73 92 02            [24]  534 	mov  _iic_send_sloc0_1_0,c
      001A75 92 86            [24]  535 	mov	_P0_6,c
                                    536 ;	strorage.c:40: byte=byte<<1;
      001A77 EE               [12]  537 	mov	a,r6
      001A78 2E               [12]  538 	add	a,r6
      001A79 90 03 75         [24]  539 	mov	dptr,#_iic_send_byte_1_17
      001A7C F0               [24]  540 	movx	@dptr,a
                                    541 ;	strorage.c:41: delay1(5);
      001A7D 90 00 05         [24]  542 	mov	dptr,#0x0005
      001A80 12 17 68         [24]  543 	lcall	_delay1
                                    544 ;	strorage.c:42: SCL=1;
      001A83 D2 87            [12]  545 	setb	_P0_7
                                    546 ;	strorage.c:43: delay1(10);
      001A85 90 00 0A         [24]  547 	mov	dptr,#0x000A
      001A88 12 17 68         [24]  548 	lcall	_delay1
      001A8B D0 07            [24]  549 	pop	ar7
                                    550 ;	strorage.c:44: SCL=0;
      001A8D C2 87            [12]  551 	clr	_P0_7
                                    552 ;	strorage.c:37: for( i=0; i<8; i++){
      001A8F 0F               [12]  553 	inc	r7
      001A90 BF 08 00         [24]  554 	cjne	r7,#0x08,00110$
      001A93                        555 00110$:
      001A93 40 D0            [24]  556 	jc	00102$
                                    557 ;	strorage.c:46: delay1(5);
      001A95 90 00 05         [24]  558 	mov	dptr,#0x0005
      001A98 12 17 68         [24]  559 	lcall	_delay1
                                    560 ;	strorage.c:47: SDA=1;
      001A9B D2 86            [12]  561 	setb	_P0_6
                                    562 ;	strorage.c:48: delay1(5);
      001A9D 90 00 05         [24]  563 	mov	dptr,#0x0005
      001AA0 12 17 68         [24]  564 	lcall	_delay1
                                    565 ;	strorage.c:49: SCL=1;
      001AA3 D2 87            [12]  566 	setb	_P0_7
                                    567 ;	strorage.c:50: delay1(5);
      001AA5 90 00 05         [24]  568 	mov	dptr,#0x0005
      001AA8 12 17 68         [24]  569 	lcall	_delay1
                                    570 ;	strorage.c:51: i=SDA;
      001AAB A2 86            [12]  571 	mov	c,_P0_6
      001AAD E4               [12]  572 	clr	a
      001AAE 33               [12]  573 	rlc	a
      001AAF FF               [12]  574 	mov	r7,a
                                    575 ;	strorage.c:52: delay1(5);
      001AB0 90 00 05         [24]  576 	mov	dptr,#0x0005
      001AB3 C0 07            [24]  577 	push	ar7
      001AB5 12 17 68         [24]  578 	lcall	_delay1
      001AB8 D0 07            [24]  579 	pop	ar7
                                    580 ;	strorage.c:53: SCL=0;
      001ABA C2 87            [12]  581 	clr	_P0_7
                                    582 ;	strorage.c:54: return i;
      001ABC 8F 82            [24]  583 	mov	dpl,r7
      001ABE 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'iic_recv'
                                    587 ;------------------------------------------------------------
                                    588 ;data                      Allocated with name '_iic_recv_data_1_20'
                                    589 ;i                         Allocated with name '_iic_recv_i_1_21'
                                    590 ;------------------------------------------------------------
                                    591 ;	strorage.c:57: uchar iic_recv(uchar *data)
                                    592 ;	-----------------------------------------
                                    593 ;	 function iic_recv
                                    594 ;	-----------------------------------------
      001ABF                        595 _iic_recv:
      001ABF AF F0            [24]  596 	mov	r7,b
      001AC1 AE 83            [24]  597 	mov	r6,dph
      001AC3 E5 82            [12]  598 	mov	a,dpl
      001AC5 90 03 77         [24]  599 	mov	dptr,#_iic_recv_data_1_20
      001AC8 F0               [24]  600 	movx	@dptr,a
      001AC9 EE               [12]  601 	mov	a,r6
      001ACA A3               [24]  602 	inc	dptr
      001ACB F0               [24]  603 	movx	@dptr,a
      001ACC EF               [12]  604 	mov	a,r7
      001ACD A3               [24]  605 	inc	dptr
      001ACE F0               [24]  606 	movx	@dptr,a
                                    607 ;	strorage.c:60: *data=0;
      001ACF 90 03 77         [24]  608 	mov	dptr,#_iic_recv_data_1_20
      001AD2 E0               [24]  609 	movx	a,@dptr
      001AD3 FD               [12]  610 	mov	r5,a
      001AD4 A3               [24]  611 	inc	dptr
      001AD5 E0               [24]  612 	movx	a,@dptr
      001AD6 FE               [12]  613 	mov	r6,a
      001AD7 A3               [24]  614 	inc	dptr
      001AD8 E0               [24]  615 	movx	a,@dptr
      001AD9 FF               [12]  616 	mov	r7,a
      001ADA 8D 82            [24]  617 	mov	dpl,r5
      001ADC 8E 83            [24]  618 	mov	dph,r6
      001ADE 8F F0            [24]  619 	mov	b,r7
      001AE0 E4               [12]  620 	clr	a
      001AE1 12 1F 03         [24]  621 	lcall	__gptrput
                                    622 ;	strorage.c:61: for( i=8; i>0; i--){
      001AE4 90 03 7A         [24]  623 	mov	dptr,#_iic_recv_i_1_21
      001AE7 74 08            [12]  624 	mov	a,#0x08
      001AE9 F0               [24]  625 	movx	@dptr,a
      001AEA E0               [24]  626 	movx	a,@dptr
      001AEB FF               [12]  627 	mov	r7,a
      001AEC                        628 00102$:
                                    629 ;	strorage.c:62: delay1(10);
      001AEC 90 00 0A         [24]  630 	mov	dptr,#0x000A
      001AEF C0 07            [24]  631 	push	ar7
      001AF1 12 17 68         [24]  632 	lcall	_delay1
                                    633 ;	strorage.c:63: SCL=1;
      001AF4 D2 87            [12]  634 	setb	_P0_7
                                    635 ;	strorage.c:64: delay1(5);
      001AF6 90 00 05         [24]  636 	mov	dptr,#0x0005
      001AF9 12 17 68         [24]  637 	lcall	_delay1
                                    638 ;	strorage.c:65: *data=*data<<1;
      001AFC 90 03 77         [24]  639 	mov	dptr,#_iic_recv_data_1_20
      001AFF E0               [24]  640 	movx	a,@dptr
      001B00 FC               [12]  641 	mov	r4,a
      001B01 A3               [24]  642 	inc	dptr
      001B02 E0               [24]  643 	movx	a,@dptr
      001B03 FD               [12]  644 	mov	r5,a
      001B04 A3               [24]  645 	inc	dptr
      001B05 E0               [24]  646 	movx	a,@dptr
      001B06 FE               [12]  647 	mov	r6,a
      001B07 8C 82            [24]  648 	mov	dpl,r4
      001B09 8D 83            [24]  649 	mov	dph,r5
      001B0B 8E F0            [24]  650 	mov	b,r6
      001B0D 12 1F 3E         [24]  651 	lcall	__gptrget
      001B10 25 E0            [12]  652 	add	a,acc
      001B12 FB               [12]  653 	mov	r3,a
      001B13 8C 82            [24]  654 	mov	dpl,r4
      001B15 8D 83            [24]  655 	mov	dph,r5
      001B17 8E F0            [24]  656 	mov	b,r6
      001B19 12 1F 03         [24]  657 	lcall	__gptrput
                                    658 ;	strorage.c:66: *data|=SDA;
      001B1C A2 86            [12]  659 	mov	c,_P0_6
      001B1E E4               [12]  660 	clr	a
      001B1F 33               [12]  661 	rlc	a
      001B20 42 03            [12]  662 	orl	ar3,a
      001B22 8C 82            [24]  663 	mov	dpl,r4
      001B24 8D 83            [24]  664 	mov	dph,r5
      001B26 8E F0            [24]  665 	mov	b,r6
      001B28 EB               [12]  666 	mov	a,r3
      001B29 12 1F 03         [24]  667 	lcall	__gptrput
                                    668 ;	strorage.c:67: delay1(5);
      001B2C 90 00 05         [24]  669 	mov	dptr,#0x0005
      001B2F 12 17 68         [24]  670 	lcall	_delay1
      001B32 D0 07            [24]  671 	pop	ar7
                                    672 ;	strorage.c:68: SCL=0;
      001B34 C2 87            [12]  673 	clr	_P0_7
                                    674 ;	strorage.c:61: for( i=8; i>0; i--){
      001B36 1F               [12]  675 	dec	r7
      001B37 EF               [12]  676 	mov	a,r7
      001B38 60 02            [24]  677 	jz	00106$
      001B3A 74 01            [12]  678 	mov	a,#0x01
      001B3C                        679 00106$:
      001B3C FE               [12]  680 	mov	r6,a
      001B3D EE               [12]  681 	mov	a,r6
      001B3E 70 AC            [24]  682 	jnz	00102$
                                    683 ;	strorage.c:70: delay1(5);
      001B40 90 00 05         [24]  684 	mov	dptr,#0x0005
      001B43 12 17 68         [24]  685 	lcall	_delay1
                                    686 ;	strorage.c:71: SDA=0;
      001B46 C2 86            [12]  687 	clr	_P0_6
                                    688 ;	strorage.c:72: delay1(5);
      001B48 90 00 05         [24]  689 	mov	dptr,#0x0005
      001B4B 12 17 68         [24]  690 	lcall	_delay1
                                    691 ;	strorage.c:73: SCL=1;
      001B4E D2 87            [12]  692 	setb	_P0_7
                                    693 ;	strorage.c:74: delay1(10);
      001B50 90 00 0A         [24]  694 	mov	dptr,#0x000A
      001B53 12 17 68         [24]  695 	lcall	_delay1
                                    696 ;	strorage.c:75: SCL=0;
      001B56 C2 87            [12]  697 	clr	_P0_7
                                    698 ;	strorage.c:76: delay1(5);
      001B58 90 00 05         [24]  699 	mov	dptr,#0x0005
      001B5B 12 17 68         [24]  700 	lcall	_delay1
                                    701 ;	strorage.c:77: SDA=1;
      001B5E D2 86            [12]  702 	setb	_P0_6
                                    703 ;	strorage.c:78: return 0;
      001B60 75 82 00         [24]  704 	mov	dpl,#0x00
      001B63 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'iic_recv_noack'
                                    708 ;------------------------------------------------------------
                                    709 ;data                      Allocated with name '_iic_recv_noack_data_1_23'
                                    710 ;i                         Allocated with name '_iic_recv_noack_i_1_24'
                                    711 ;------------------------------------------------------------
                                    712 ;	strorage.c:81: uchar iic_recv_noack(uchar *data)
                                    713 ;	-----------------------------------------
                                    714 ;	 function iic_recv_noack
                                    715 ;	-----------------------------------------
      001B64                        716 _iic_recv_noack:
      001B64 AF F0            [24]  717 	mov	r7,b
      001B66 AE 83            [24]  718 	mov	r6,dph
      001B68 E5 82            [12]  719 	mov	a,dpl
      001B6A 90 03 7B         [24]  720 	mov	dptr,#_iic_recv_noack_data_1_23
      001B6D F0               [24]  721 	movx	@dptr,a
      001B6E EE               [12]  722 	mov	a,r6
      001B6F A3               [24]  723 	inc	dptr
      001B70 F0               [24]  724 	movx	@dptr,a
      001B71 EF               [12]  725 	mov	a,r7
      001B72 A3               [24]  726 	inc	dptr
      001B73 F0               [24]  727 	movx	@dptr,a
                                    728 ;	strorage.c:84: *data=0;
      001B74 90 03 7B         [24]  729 	mov	dptr,#_iic_recv_noack_data_1_23
      001B77 E0               [24]  730 	movx	a,@dptr
      001B78 FD               [12]  731 	mov	r5,a
      001B79 A3               [24]  732 	inc	dptr
      001B7A E0               [24]  733 	movx	a,@dptr
      001B7B FE               [12]  734 	mov	r6,a
      001B7C A3               [24]  735 	inc	dptr
      001B7D E0               [24]  736 	movx	a,@dptr
      001B7E FF               [12]  737 	mov	r7,a
      001B7F 8D 82            [24]  738 	mov	dpl,r5
      001B81 8E 83            [24]  739 	mov	dph,r6
      001B83 8F F0            [24]  740 	mov	b,r7
      001B85 E4               [12]  741 	clr	a
      001B86 12 1F 03         [24]  742 	lcall	__gptrput
                                    743 ;	strorage.c:85: for( i=8; i>0; i--){
      001B89 90 03 7E         [24]  744 	mov	dptr,#_iic_recv_noack_i_1_24
      001B8C 74 08            [12]  745 	mov	a,#0x08
      001B8E F0               [24]  746 	movx	@dptr,a
      001B8F E0               [24]  747 	movx	a,@dptr
      001B90 FF               [12]  748 	mov	r7,a
      001B91                        749 00102$:
                                    750 ;	strorage.c:86: delay1(10);
      001B91 90 00 0A         [24]  751 	mov	dptr,#0x000A
      001B94 C0 07            [24]  752 	push	ar7
      001B96 12 17 68         [24]  753 	lcall	_delay1
                                    754 ;	strorage.c:87: SCL=1;
      001B99 D2 87            [12]  755 	setb	_P0_7
                                    756 ;	strorage.c:88: delay1(5);
      001B9B 90 00 05         [24]  757 	mov	dptr,#0x0005
      001B9E 12 17 68         [24]  758 	lcall	_delay1
                                    759 ;	strorage.c:89: *data=*data<<1;
      001BA1 90 03 7B         [24]  760 	mov	dptr,#_iic_recv_noack_data_1_23
      001BA4 E0               [24]  761 	movx	a,@dptr
      001BA5 FC               [12]  762 	mov	r4,a
      001BA6 A3               [24]  763 	inc	dptr
      001BA7 E0               [24]  764 	movx	a,@dptr
      001BA8 FD               [12]  765 	mov	r5,a
      001BA9 A3               [24]  766 	inc	dptr
      001BAA E0               [24]  767 	movx	a,@dptr
      001BAB FE               [12]  768 	mov	r6,a
      001BAC 8C 82            [24]  769 	mov	dpl,r4
      001BAE 8D 83            [24]  770 	mov	dph,r5
      001BB0 8E F0            [24]  771 	mov	b,r6
      001BB2 12 1F 3E         [24]  772 	lcall	__gptrget
      001BB5 25 E0            [12]  773 	add	a,acc
      001BB7 FB               [12]  774 	mov	r3,a
      001BB8 8C 82            [24]  775 	mov	dpl,r4
      001BBA 8D 83            [24]  776 	mov	dph,r5
      001BBC 8E F0            [24]  777 	mov	b,r6
      001BBE 12 1F 03         [24]  778 	lcall	__gptrput
                                    779 ;	strorage.c:90: *data|=SDA;
      001BC1 A2 86            [12]  780 	mov	c,_P0_6
      001BC3 E4               [12]  781 	clr	a
      001BC4 33               [12]  782 	rlc	a
      001BC5 42 03            [12]  783 	orl	ar3,a
      001BC7 8C 82            [24]  784 	mov	dpl,r4
      001BC9 8D 83            [24]  785 	mov	dph,r5
      001BCB 8E F0            [24]  786 	mov	b,r6
      001BCD EB               [12]  787 	mov	a,r3
      001BCE 12 1F 03         [24]  788 	lcall	__gptrput
                                    789 ;	strorage.c:91: delay1(5);
      001BD1 90 00 05         [24]  790 	mov	dptr,#0x0005
      001BD4 12 17 68         [24]  791 	lcall	_delay1
      001BD7 D0 07            [24]  792 	pop	ar7
                                    793 ;	strorage.c:92: SCL=0;
      001BD9 C2 87            [12]  794 	clr	_P0_7
                                    795 ;	strorage.c:85: for( i=8; i>0; i--){
      001BDB 1F               [12]  796 	dec	r7
      001BDC EF               [12]  797 	mov	a,r7
      001BDD 60 02            [24]  798 	jz	00106$
      001BDF 74 01            [12]  799 	mov	a,#0x01
      001BE1                        800 00106$:
      001BE1 FE               [12]  801 	mov	r6,a
      001BE2 EE               [12]  802 	mov	a,r6
      001BE3 70 AC            [24]  803 	jnz	00102$
                                    804 ;	strorage.c:94: delay1(5);
      001BE5 90 00 05         [24]  805 	mov	dptr,#0x0005
      001BE8 12 17 68         [24]  806 	lcall	_delay1
                                    807 ;	strorage.c:95: SDA=1;
      001BEB D2 86            [12]  808 	setb	_P0_6
                                    809 ;	strorage.c:96: delay1(5);
      001BED 90 00 05         [24]  810 	mov	dptr,#0x0005
      001BF0 12 17 68         [24]  811 	lcall	_delay1
                                    812 ;	strorage.c:97: SCL=1;
      001BF3 D2 87            [12]  813 	setb	_P0_7
                                    814 ;	strorage.c:98: delay1(10);
      001BF5 90 00 0A         [24]  815 	mov	dptr,#0x000A
      001BF8 12 17 68         [24]  816 	lcall	_delay1
                                    817 ;	strorage.c:99: SCL=0;
      001BFB C2 87            [12]  818 	clr	_P0_7
                                    819 ;	strorage.c:100: return 0;
      001BFD 75 82 00         [24]  820 	mov	dpl,#0x00
      001C00 22               [24]  821 	ret
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'write_byte'
                                    824 ;------------------------------------------------------------
                                    825 ;byte                      Allocated with name '_write_byte_PARM_2'
                                    826 ;p                         Allocated with name '_write_byte_p_1_26'
                                    827 ;------------------------------------------------------------
                                    828 ;	strorage.c:105: uchar write_byte( uchar *p, uchar byte)
                                    829 ;	-----------------------------------------
                                    830 ;	 function write_byte
                                    831 ;	-----------------------------------------
      001C01                        832 _write_byte:
      001C01 AF F0            [24]  833 	mov	r7,b
      001C03 AE 83            [24]  834 	mov	r6,dph
      001C05 E5 82            [12]  835 	mov	a,dpl
      001C07 90 03 80         [24]  836 	mov	dptr,#_write_byte_p_1_26
      001C0A F0               [24]  837 	movx	@dptr,a
      001C0B EE               [12]  838 	mov	a,r6
      001C0C A3               [24]  839 	inc	dptr
      001C0D F0               [24]  840 	movx	@dptr,a
      001C0E EF               [12]  841 	mov	a,r7
      001C0F A3               [24]  842 	inc	dptr
      001C10 F0               [24]  843 	movx	@dptr,a
                                    844 ;	strorage.c:107: iic_start();
      001C11 12 1A 07         [24]  845 	lcall	_iic_start
                                    846 ;	strorage.c:108: delay(5);
      001C14 90 00 05         [24]  847 	mov	dptr,#0x0005
      001C17 12 04 41         [24]  848 	lcall	_delay
                                    849 ;	strorage.c:109: if(iic_send(0xa0)){
      001C1A 75 82 A0         [24]  850 	mov	dpl,#0xA0
      001C1D 12 1A 55         [24]  851 	lcall	_iic_send
      001C20 E5 82            [12]  852 	mov	a,dpl
      001C22 70 02            [24]  853 	jnz	00101$
      001C24 80 07            [24]  854 	sjmp	00102$
      001C26                        855 00101$:
                                    856 ;	strorage.c:110: iic_stop();
      001C26 12 1A 32         [24]  857 	lcall	_iic_stop
                                    858 ;	strorage.c:111: return 1;
      001C29 75 82 01         [24]  859 	mov	dpl,#0x01
      001C2C 22               [24]  860 	ret
      001C2D                        861 00102$:
                                    862 ;	strorage.c:113: if(iic_send(*((uchar *)&p+1))){
      001C2D 90 03 81         [24]  863 	mov	dptr,#(_write_byte_p_1_26 + 0x0001)
      001C30 E0               [24]  864 	movx	a,@dptr
      001C31 F5 82            [12]  865 	mov	dpl,a
      001C33 12 1A 55         [24]  866 	lcall	_iic_send
      001C36 E5 82            [12]  867 	mov	a,dpl
      001C38 70 02            [24]  868 	jnz	00103$
      001C3A 80 07            [24]  869 	sjmp	00104$
      001C3C                        870 00103$:
                                    871 ;	strorage.c:114: iic_stop();
      001C3C 12 1A 32         [24]  872 	lcall	_iic_stop
                                    873 ;	strorage.c:115: return 1;
      001C3F 75 82 01         [24]  874 	mov	dpl,#0x01
      001C42 22               [24]  875 	ret
      001C43                        876 00104$:
                                    877 ;	strorage.c:117: if(iic_send((uchar)p)){
      001C43 90 03 80         [24]  878 	mov	dptr,#_write_byte_p_1_26
      001C46 E0               [24]  879 	movx	a,@dptr
      001C47 FD               [12]  880 	mov	r5,a
      001C48 A3               [24]  881 	inc	dptr
      001C49 E0               [24]  882 	movx	a,@dptr
      001C4A A3               [24]  883 	inc	dptr
      001C4B E0               [24]  884 	movx	a,@dptr
      001C4C 8D 82            [24]  885 	mov	dpl,r5
      001C4E 12 1A 55         [24]  886 	lcall	_iic_send
      001C51 E5 82            [12]  887 	mov	a,dpl
      001C53 70 02            [24]  888 	jnz	00105$
      001C55 80 07            [24]  889 	sjmp	00106$
      001C57                        890 00105$:
                                    891 ;	strorage.c:118: iic_stop();
      001C57 12 1A 32         [24]  892 	lcall	_iic_stop
                                    893 ;	strorage.c:119: return 1;
      001C5A 75 82 01         [24]  894 	mov	dpl,#0x01
      001C5D 22               [24]  895 	ret
      001C5E                        896 00106$:
                                    897 ;	strorage.c:121: if(iic_send(byte)){
      001C5E 90 03 7F         [24]  898 	mov	dptr,#_write_byte_PARM_2
      001C61 E0               [24]  899 	movx	a,@dptr
      001C62 F5 82            [12]  900 	mov	dpl,a
      001C64 12 1A 55         [24]  901 	lcall	_iic_send
      001C67 E5 82            [12]  902 	mov	a,dpl
      001C69 70 02            [24]  903 	jnz	00107$
      001C6B 80 07            [24]  904 	sjmp	00108$
      001C6D                        905 00107$:
                                    906 ;	strorage.c:122: iic_stop();
      001C6D 12 1A 32         [24]  907 	lcall	_iic_stop
                                    908 ;	strorage.c:123: return 1;
      001C70 75 82 01         [24]  909 	mov	dpl,#0x01
      001C73 22               [24]  910 	ret
      001C74                        911 00108$:
                                    912 ;	strorage.c:125: iic_stop();
      001C74 12 1A 32         [24]  913 	lcall	_iic_stop
                                    914 ;	strorage.c:126: delay(5);
      001C77 90 00 05         [24]  915 	mov	dptr,#0x0005
      001C7A 12 04 41         [24]  916 	lcall	_delay
                                    917 ;	strorage.c:127: return 0;
      001C7D 75 82 00         [24]  918 	mov	dpl,#0x00
      001C80 22               [24]  919 	ret
                                    920 ;------------------------------------------------------------
                                    921 ;Allocation info for local variables in function 'write_page'
                                    922 ;------------------------------------------------------------
                                    923 ;data                      Allocated with name '_write_page_PARM_2'
                                    924 ;p                         Allocated with name '_write_page_p_1_32'
                                    925 ;i                         Allocated with name '_write_page_i_1_33'
                                    926 ;------------------------------------------------------------
                                    927 ;	strorage.c:133: uchar write_page( uchar *p, uchar *data)
                                    928 ;	-----------------------------------------
                                    929 ;	 function write_page
                                    930 ;	-----------------------------------------
      001C81                        931 _write_page:
      001C81 AF F0            [24]  932 	mov	r7,b
      001C83 AE 83            [24]  933 	mov	r6,dph
      001C85 E5 82            [12]  934 	mov	a,dpl
      001C87 90 03 86         [24]  935 	mov	dptr,#_write_page_p_1_32
      001C8A F0               [24]  936 	movx	@dptr,a
      001C8B EE               [12]  937 	mov	a,r6
      001C8C A3               [24]  938 	inc	dptr
      001C8D F0               [24]  939 	movx	@dptr,a
      001C8E EF               [12]  940 	mov	a,r7
      001C8F A3               [24]  941 	inc	dptr
      001C90 F0               [24]  942 	movx	@dptr,a
                                    943 ;	strorage.c:136: iic_start();
      001C91 12 1A 07         [24]  944 	lcall	_iic_start
                                    945 ;	strorage.c:137: delay(5);
      001C94 90 00 05         [24]  946 	mov	dptr,#0x0005
      001C97 12 04 41         [24]  947 	lcall	_delay
                                    948 ;	strorage.c:138: if(iic_send(0xa0)){
      001C9A 75 82 A0         [24]  949 	mov	dpl,#0xA0
      001C9D 12 1A 55         [24]  950 	lcall	_iic_send
      001CA0 E5 82            [12]  951 	mov	a,dpl
      001CA2 70 02            [24]  952 	jnz	00101$
      001CA4 80 07            [24]  953 	sjmp	00102$
      001CA6                        954 00101$:
                                    955 ;	strorage.c:139: iic_stop();
      001CA6 12 1A 32         [24]  956 	lcall	_iic_stop
                                    957 ;	strorage.c:140: return 1;
      001CA9 75 82 01         [24]  958 	mov	dpl,#0x01
      001CAC 22               [24]  959 	ret
      001CAD                        960 00102$:
                                    961 ;	strorage.c:142: if(iic_send(*((uchar *)&p+1))){
      001CAD 90 03 87         [24]  962 	mov	dptr,#(_write_page_p_1_32 + 0x0001)
      001CB0 E0               [24]  963 	movx	a,@dptr
      001CB1 F5 82            [12]  964 	mov	dpl,a
      001CB3 12 1A 55         [24]  965 	lcall	_iic_send
      001CB6 E5 82            [12]  966 	mov	a,dpl
      001CB8 70 02            [24]  967 	jnz	00103$
      001CBA 80 07            [24]  968 	sjmp	00104$
      001CBC                        969 00103$:
                                    970 ;	strorage.c:143: iic_stop();
      001CBC 12 1A 32         [24]  971 	lcall	_iic_stop
                                    972 ;	strorage.c:144: return 1;
      001CBF 75 82 01         [24]  973 	mov	dpl,#0x01
      001CC2 22               [24]  974 	ret
      001CC3                        975 00104$:
                                    976 ;	strorage.c:146: if(iic_send((uchar)p)){
      001CC3 90 03 86         [24]  977 	mov	dptr,#_write_page_p_1_32
      001CC6 E0               [24]  978 	movx	a,@dptr
      001CC7 FD               [12]  979 	mov	r5,a
      001CC8 A3               [24]  980 	inc	dptr
      001CC9 E0               [24]  981 	movx	a,@dptr
      001CCA A3               [24]  982 	inc	dptr
      001CCB E0               [24]  983 	movx	a,@dptr
      001CCC 8D 82            [24]  984 	mov	dpl,r5
      001CCE 12 1A 55         [24]  985 	lcall	_iic_send
      001CD1 E5 82            [12]  986 	mov	a,dpl
      001CD3 70 02            [24]  987 	jnz	00105$
      001CD5 80 07            [24]  988 	sjmp	00106$
      001CD7                        989 00105$:
                                    990 ;	strorage.c:147: iic_stop();
      001CD7 12 1A 32         [24]  991 	lcall	_iic_stop
                                    992 ;	strorage.c:148: return 1;
      001CDA 75 82 01         [24]  993 	mov	dpl,#0x01
      001CDD 22               [24]  994 	ret
      001CDE                        995 00106$:
                                    996 ;	strorage.c:150: for( i=0; i<64; i++){
      001CDE 90 03 89         [24]  997 	mov	dptr,#_write_page_i_1_33
      001CE1 E4               [12]  998 	clr	a
      001CE2 F0               [24]  999 	movx	@dptr,a
      001CE3 90 03 83         [24] 1000 	mov	dptr,#_write_page_PARM_2
      001CE6 E0               [24] 1001 	movx	a,@dptr
      001CE7 FD               [12] 1002 	mov	r5,a
      001CE8 A3               [24] 1003 	inc	dptr
      001CE9 E0               [24] 1004 	movx	a,@dptr
      001CEA FE               [12] 1005 	mov	r6,a
      001CEB A3               [24] 1006 	inc	dptr
      001CEC E0               [24] 1007 	movx	a,@dptr
      001CED FF               [12] 1008 	mov	r7,a
      001CEE 90 03 89         [24] 1009 	mov	dptr,#_write_page_i_1_33
      001CF1 E0               [24] 1010 	movx	a,@dptr
      001CF2 FC               [12] 1011 	mov	r4,a
      001CF3                       1012 00110$:
                                   1013 ;	strorage.c:151: if(iic_send(*data)){
      001CF3 8D 82            [24] 1014 	mov	dpl,r5
      001CF5 8E 83            [24] 1015 	mov	dph,r6
      001CF7 8F F0            [24] 1016 	mov	b,r7
      001CF9 12 1F 3E         [24] 1017 	lcall	__gptrget
      001CFC F5 82            [12] 1018 	mov	dpl,a
      001CFE C0 07            [24] 1019 	push	ar7
      001D00 C0 06            [24] 1020 	push	ar6
      001D02 C0 05            [24] 1021 	push	ar5
      001D04 C0 04            [24] 1022 	push	ar4
      001D06 12 1A 55         [24] 1023 	lcall	_iic_send
      001D09 E5 82            [12] 1024 	mov	a,dpl
      001D0B D0 04            [24] 1025 	pop	ar4
      001D0D D0 05            [24] 1026 	pop	ar5
      001D0F D0 06            [24] 1027 	pop	ar6
      001D11 D0 07            [24] 1028 	pop	ar7
      001D13 70 02            [24] 1029 	jnz	00107$
      001D15 80 07            [24] 1030 	sjmp	00108$
      001D17                       1031 00107$:
                                   1032 ;	strorage.c:152: iic_stop();
      001D17 12 1A 32         [24] 1033 	lcall	_iic_stop
                                   1034 ;	strorage.c:153: return 1;
      001D1A 75 82 01         [24] 1035 	mov	dpl,#0x01
      001D1D 22               [24] 1036 	ret
      001D1E                       1037 00108$:
                                   1038 ;	strorage.c:155: data++;
      001D1E 0D               [12] 1039 	inc	r5
      001D1F BD 00 01         [24] 1040 	cjne	r5,#0x00,00133$
      001D22 0E               [12] 1041 	inc	r6
      001D23                       1042 00133$:
                                   1043 ;	strorage.c:150: for( i=0; i<64; i++){
      001D23 0C               [12] 1044 	inc	r4
      001D24 BC 40 00         [24] 1045 	cjne	r4,#0x40,00134$
      001D27                       1046 00134$:
      001D27 40 CA            [24] 1047 	jc	00110$
                                   1048 ;	strorage.c:157: iic_stop();
      001D29 12 1A 32         [24] 1049 	lcall	_iic_stop
                                   1050 ;	strorage.c:158: delay(50);
      001D2C 90 00 32         [24] 1051 	mov	dptr,#0x0032
      001D2F 12 04 41         [24] 1052 	lcall	_delay
                                   1053 ;	strorage.c:159: return 0;
      001D32 75 82 00         [24] 1054 	mov	dpl,#0x00
      001D35 22               [24] 1055 	ret
                                   1056 ;------------------------------------------------------------
                                   1057 ;Allocation info for local variables in function 'read_byte'
                                   1058 ;------------------------------------------------------------
                                   1059 ;data                      Allocated with name '_read_byte_PARM_2'
                                   1060 ;p                         Allocated with name '_read_byte_p_1_39'
                                   1061 ;------------------------------------------------------------
                                   1062 ;	strorage.c:164: uchar read_byte( uchar *p, uchar *data)
                                   1063 ;	-----------------------------------------
                                   1064 ;	 function read_byte
                                   1065 ;	-----------------------------------------
      001D36                       1066 _read_byte:
      001D36 AF F0            [24] 1067 	mov	r7,b
      001D38 AE 83            [24] 1068 	mov	r6,dph
      001D3A E5 82            [12] 1069 	mov	a,dpl
      001D3C 90 03 8D         [24] 1070 	mov	dptr,#_read_byte_p_1_39
      001D3F F0               [24] 1071 	movx	@dptr,a
      001D40 EE               [12] 1072 	mov	a,r6
      001D41 A3               [24] 1073 	inc	dptr
      001D42 F0               [24] 1074 	movx	@dptr,a
      001D43 EF               [12] 1075 	mov	a,r7
      001D44 A3               [24] 1076 	inc	dptr
      001D45 F0               [24] 1077 	movx	@dptr,a
                                   1078 ;	strorage.c:166: iic_stop();
      001D46 12 1A 32         [24] 1079 	lcall	_iic_stop
                                   1080 ;	strorage.c:167: delay(5);
      001D49 90 00 05         [24] 1081 	mov	dptr,#0x0005
      001D4C 12 04 41         [24] 1082 	lcall	_delay
                                   1083 ;	strorage.c:168: iic_start();	
      001D4F 12 1A 07         [24] 1084 	lcall	_iic_start
                                   1085 ;	strorage.c:169: if(iic_send(0xa0)){
      001D52 75 82 A0         [24] 1086 	mov	dpl,#0xA0
      001D55 12 1A 55         [24] 1087 	lcall	_iic_send
      001D58 E5 82            [12] 1088 	mov	a,dpl
      001D5A 70 02            [24] 1089 	jnz	00101$
      001D5C 80 07            [24] 1090 	sjmp	00102$
      001D5E                       1091 00101$:
                                   1092 ;	strorage.c:170: iic_stop();
      001D5E 12 1A 32         [24] 1093 	lcall	_iic_stop
                                   1094 ;	strorage.c:171: return 1;
      001D61 75 82 01         [24] 1095 	mov	dpl,#0x01
      001D64 22               [24] 1096 	ret
      001D65                       1097 00102$:
                                   1098 ;	strorage.c:173: if(iic_send(*((uchar *)&p+1))){
      001D65 90 03 8E         [24] 1099 	mov	dptr,#(_read_byte_p_1_39 + 0x0001)
      001D68 E0               [24] 1100 	movx	a,@dptr
      001D69 F5 82            [12] 1101 	mov	dpl,a
      001D6B 12 1A 55         [24] 1102 	lcall	_iic_send
      001D6E E5 82            [12] 1103 	mov	a,dpl
      001D70 70 02            [24] 1104 	jnz	00103$
      001D72 80 07            [24] 1105 	sjmp	00104$
      001D74                       1106 00103$:
                                   1107 ;	strorage.c:174: iic_stop();
      001D74 12 1A 32         [24] 1108 	lcall	_iic_stop
                                   1109 ;	strorage.c:175: return 1;
      001D77 75 82 01         [24] 1110 	mov	dpl,#0x01
      001D7A 22               [24] 1111 	ret
      001D7B                       1112 00104$:
                                   1113 ;	strorage.c:177: if(iic_send((uchar)p)){
      001D7B 90 03 8D         [24] 1114 	mov	dptr,#_read_byte_p_1_39
      001D7E E0               [24] 1115 	movx	a,@dptr
      001D7F FD               [12] 1116 	mov	r5,a
      001D80 A3               [24] 1117 	inc	dptr
      001D81 E0               [24] 1118 	movx	a,@dptr
      001D82 A3               [24] 1119 	inc	dptr
      001D83 E0               [24] 1120 	movx	a,@dptr
      001D84 8D 82            [24] 1121 	mov	dpl,r5
      001D86 12 1A 55         [24] 1122 	lcall	_iic_send
      001D89 E5 82            [12] 1123 	mov	a,dpl
      001D8B 70 02            [24] 1124 	jnz	00105$
      001D8D 80 07            [24] 1125 	sjmp	00106$
      001D8F                       1126 00105$:
                                   1127 ;	strorage.c:178: iic_stop();
      001D8F 12 1A 32         [24] 1128 	lcall	_iic_stop
                                   1129 ;	strorage.c:179: return 1;
      001D92 75 82 01         [24] 1130 	mov	dpl,#0x01
      001D95 22               [24] 1131 	ret
      001D96                       1132 00106$:
                                   1133 ;	strorage.c:181: iic_start();
      001D96 12 1A 07         [24] 1134 	lcall	_iic_start
                                   1135 ;	strorage.c:182: if(iic_send(0xa1)){
      001D99 75 82 A1         [24] 1136 	mov	dpl,#0xA1
      001D9C 12 1A 55         [24] 1137 	lcall	_iic_send
      001D9F E5 82            [12] 1138 	mov	a,dpl
      001DA1 70 02            [24] 1139 	jnz	00107$
      001DA3 80 07            [24] 1140 	sjmp	00108$
      001DA5                       1141 00107$:
                                   1142 ;	strorage.c:183: iic_stop();
      001DA5 12 1A 32         [24] 1143 	lcall	_iic_stop
                                   1144 ;	strorage.c:184: return 1;
      001DA8 75 82 01         [24] 1145 	mov	dpl,#0x01
      001DAB 22               [24] 1146 	ret
      001DAC                       1147 00108$:
                                   1148 ;	strorage.c:187: iic_recv_noack(data);
      001DAC 90 03 8A         [24] 1149 	mov	dptr,#_read_byte_PARM_2
      001DAF E0               [24] 1150 	movx	a,@dptr
      001DB0 FD               [12] 1151 	mov	r5,a
      001DB1 A3               [24] 1152 	inc	dptr
      001DB2 E0               [24] 1153 	movx	a,@dptr
      001DB3 FE               [12] 1154 	mov	r6,a
      001DB4 A3               [24] 1155 	inc	dptr
      001DB5 E0               [24] 1156 	movx	a,@dptr
      001DB6 FF               [12] 1157 	mov	r7,a
      001DB7 8D 82            [24] 1158 	mov	dpl,r5
      001DB9 8E 83            [24] 1159 	mov	dph,r6
      001DBB 8F F0            [24] 1160 	mov	b,r7
      001DBD 12 1B 64         [24] 1161 	lcall	_iic_recv_noack
                                   1162 ;	strorage.c:188: iic_stop();
      001DC0 12 1A 32         [24] 1163 	lcall	_iic_stop
                                   1164 ;	strorage.c:189: return 0;
      001DC3 75 82 00         [24] 1165 	mov	dpl,#0x00
      001DC6 22               [24] 1166 	ret
                                   1167 ;------------------------------------------------------------
                                   1168 ;Allocation info for local variables in function 'read_cur'
                                   1169 ;------------------------------------------------------------
                                   1170 ;data                      Allocated with name '_read_cur_data_1_45'
                                   1171 ;------------------------------------------------------------
                                   1172 ;	strorage.c:191: uchar read_cur( uchar *data)
                                   1173 ;	-----------------------------------------
                                   1174 ;	 function read_cur
                                   1175 ;	-----------------------------------------
      001DC7                       1176 _read_cur:
      001DC7 AF F0            [24] 1177 	mov	r7,b
      001DC9 AE 83            [24] 1178 	mov	r6,dph
      001DCB E5 82            [12] 1179 	mov	a,dpl
      001DCD 90 03 90         [24] 1180 	mov	dptr,#_read_cur_data_1_45
      001DD0 F0               [24] 1181 	movx	@dptr,a
      001DD1 EE               [12] 1182 	mov	a,r6
      001DD2 A3               [24] 1183 	inc	dptr
      001DD3 F0               [24] 1184 	movx	@dptr,a
      001DD4 EF               [12] 1185 	mov	a,r7
      001DD5 A3               [24] 1186 	inc	dptr
      001DD6 F0               [24] 1187 	movx	@dptr,a
                                   1188 ;	strorage.c:193: iic_start();
      001DD7 12 1A 07         [24] 1189 	lcall	_iic_start
                                   1190 ;	strorage.c:194: if(iic_send(0xa1)){
      001DDA 75 82 A1         [24] 1191 	mov	dpl,#0xA1
      001DDD 12 1A 55         [24] 1192 	lcall	_iic_send
      001DE0 E5 82            [12] 1193 	mov	a,dpl
      001DE2 70 02            [24] 1194 	jnz	00101$
      001DE4 80 07            [24] 1195 	sjmp	00102$
      001DE6                       1196 00101$:
                                   1197 ;	strorage.c:195: iic_stop();
      001DE6 12 1A 32         [24] 1198 	lcall	_iic_stop
                                   1199 ;	strorage.c:196: return 1;
      001DE9 75 82 01         [24] 1200 	mov	dpl,#0x01
      001DEC 22               [24] 1201 	ret
      001DED                       1202 00102$:
                                   1203 ;	strorage.c:198: iic_recv_noack(data);
      001DED 90 03 90         [24] 1204 	mov	dptr,#_read_cur_data_1_45
      001DF0 E0               [24] 1205 	movx	a,@dptr
      001DF1 FD               [12] 1206 	mov	r5,a
      001DF2 A3               [24] 1207 	inc	dptr
      001DF3 E0               [24] 1208 	movx	a,@dptr
      001DF4 FE               [12] 1209 	mov	r6,a
      001DF5 A3               [24] 1210 	inc	dptr
      001DF6 E0               [24] 1211 	movx	a,@dptr
      001DF7 FF               [12] 1212 	mov	r7,a
      001DF8 8D 82            [24] 1213 	mov	dpl,r5
      001DFA 8E 83            [24] 1214 	mov	dph,r6
      001DFC 8F F0            [24] 1215 	mov	b,r7
      001DFE 12 1B 64         [24] 1216 	lcall	_iic_recv_noack
                                   1217 ;	strorage.c:199: iic_stop();
      001E01 12 1A 32         [24] 1218 	lcall	_iic_stop
                                   1219 ;	strorage.c:200: return 0;
      001E04 75 82 00         [24] 1220 	mov	dpl,#0x00
      001E07 22               [24] 1221 	ret
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function 'read_sequ'
                                   1224 ;------------------------------------------------------------
                                   1225 ;data                      Allocated with name '_read_sequ_PARM_2'
                                   1226 ;size                      Allocated with name '_read_sequ_PARM_3'
                                   1227 ;p                         Allocated with name '_read_sequ_p_1_48'
                                   1228 ;i                         Allocated with name '_read_sequ_i_1_49'
                                   1229 ;------------------------------------------------------------
                                   1230 ;	strorage.c:205: uchar read_sequ(uchar *p, uchar *data, uint size)
                                   1231 ;	-----------------------------------------
                                   1232 ;	 function read_sequ
                                   1233 ;	-----------------------------------------
      001E08                       1234 _read_sequ:
      001E08 AF F0            [24] 1235 	mov	r7,b
      001E0A AE 83            [24] 1236 	mov	r6,dph
      001E0C E5 82            [12] 1237 	mov	a,dpl
      001E0E 90 03 98         [24] 1238 	mov	dptr,#_read_sequ_p_1_48
      001E11 F0               [24] 1239 	movx	@dptr,a
      001E12 EE               [12] 1240 	mov	a,r6
      001E13 A3               [24] 1241 	inc	dptr
      001E14 F0               [24] 1242 	movx	@dptr,a
      001E15 EF               [12] 1243 	mov	a,r7
      001E16 A3               [24] 1244 	inc	dptr
      001E17 F0               [24] 1245 	movx	@dptr,a
                                   1246 ;	strorage.c:208: iic_start();	
      001E18 12 1A 07         [24] 1247 	lcall	_iic_start
                                   1248 ;	strorage.c:209: delay(5);
      001E1B 90 00 05         [24] 1249 	mov	dptr,#0x0005
      001E1E 12 04 41         [24] 1250 	lcall	_delay
                                   1251 ;	strorage.c:210: if(iic_send(0xa0)){
      001E21 75 82 A0         [24] 1252 	mov	dpl,#0xA0
      001E24 12 1A 55         [24] 1253 	lcall	_iic_send
      001E27 E5 82            [12] 1254 	mov	a,dpl
      001E29 70 02            [24] 1255 	jnz	00101$
      001E2B 80 07            [24] 1256 	sjmp	00102$
      001E2D                       1257 00101$:
                                   1258 ;	strorage.c:211: iic_stop();
      001E2D 12 1A 32         [24] 1259 	lcall	_iic_stop
                                   1260 ;	strorage.c:212: return 1;
      001E30 75 82 01         [24] 1261 	mov	dpl,#0x01
      001E33 22               [24] 1262 	ret
      001E34                       1263 00102$:
                                   1264 ;	strorage.c:214: if(iic_send(*((uchar *)&p+1))){
      001E34 90 03 99         [24] 1265 	mov	dptr,#(_read_sequ_p_1_48 + 0x0001)
      001E37 E0               [24] 1266 	movx	a,@dptr
      001E38 F5 82            [12] 1267 	mov	dpl,a
      001E3A 12 1A 55         [24] 1268 	lcall	_iic_send
      001E3D E5 82            [12] 1269 	mov	a,dpl
      001E3F 70 02            [24] 1270 	jnz	00103$
      001E41 80 07            [24] 1271 	sjmp	00104$
      001E43                       1272 00103$:
                                   1273 ;	strorage.c:215: iic_stop();
      001E43 12 1A 32         [24] 1274 	lcall	_iic_stop
                                   1275 ;	strorage.c:216: return 1;
      001E46 75 82 01         [24] 1276 	mov	dpl,#0x01
      001E49 22               [24] 1277 	ret
      001E4A                       1278 00104$:
                                   1279 ;	strorage.c:218: if(iic_send((uchar)p)){
      001E4A 90 03 98         [24] 1280 	mov	dptr,#_read_sequ_p_1_48
      001E4D E0               [24] 1281 	movx	a,@dptr
      001E4E FD               [12] 1282 	mov	r5,a
      001E4F A3               [24] 1283 	inc	dptr
      001E50 E0               [24] 1284 	movx	a,@dptr
      001E51 A3               [24] 1285 	inc	dptr
      001E52 E0               [24] 1286 	movx	a,@dptr
      001E53 8D 82            [24] 1287 	mov	dpl,r5
      001E55 12 1A 55         [24] 1288 	lcall	_iic_send
      001E58 E5 82            [12] 1289 	mov	a,dpl
      001E5A 70 02            [24] 1290 	jnz	00105$
      001E5C 80 07            [24] 1291 	sjmp	00106$
      001E5E                       1292 00105$:
                                   1293 ;	strorage.c:219: iic_stop();
      001E5E 12 1A 32         [24] 1294 	lcall	_iic_stop
                                   1295 ;	strorage.c:220: return 1;
      001E61 75 82 01         [24] 1296 	mov	dpl,#0x01
      001E64 22               [24] 1297 	ret
      001E65                       1298 00106$:
                                   1299 ;	strorage.c:222: iic_stop();
      001E65 12 1A 32         [24] 1300 	lcall	_iic_stop
                                   1301 ;	strorage.c:223: delay(5);
      001E68 90 00 05         [24] 1302 	mov	dptr,#0x0005
      001E6B 12 04 41         [24] 1303 	lcall	_delay
                                   1304 ;	strorage.c:225: iic_start();
      001E6E 12 1A 07         [24] 1305 	lcall	_iic_start
                                   1306 ;	strorage.c:226: if(iic_send(0xa1)){
      001E71 75 82 A1         [24] 1307 	mov	dpl,#0xA1
      001E74 12 1A 55         [24] 1308 	lcall	_iic_send
      001E77 E5 82            [12] 1309 	mov	a,dpl
      001E79 70 02            [24] 1310 	jnz	00107$
      001E7B 80 07            [24] 1311 	sjmp	00108$
      001E7D                       1312 00107$:
                                   1313 ;	strorage.c:227: iic_stop();
      001E7D 12 1A 32         [24] 1314 	lcall	_iic_stop
                                   1315 ;	strorage.c:228: return 1;
      001E80 75 82 01         [24] 1316 	mov	dpl,#0x01
      001E83 22               [24] 1317 	ret
      001E84                       1318 00108$:
                                   1319 ;	strorage.c:230: for( i=0; i<size-1; i++){
      001E84 90 03 9B         [24] 1320 	mov	dptr,#_read_sequ_i_1_49
      001E87 E4               [12] 1321 	clr	a
      001E88 F0               [24] 1322 	movx	@dptr,a
      001E89 A3               [24] 1323 	inc	dptr
      001E8A F0               [24] 1324 	movx	@dptr,a
      001E8B 90 03 93         [24] 1325 	mov	dptr,#_read_sequ_PARM_2
      001E8E E0               [24] 1326 	movx	a,@dptr
      001E8F FD               [12] 1327 	mov	r5,a
      001E90 A3               [24] 1328 	inc	dptr
      001E91 E0               [24] 1329 	movx	a,@dptr
      001E92 FE               [12] 1330 	mov	r6,a
      001E93 A3               [24] 1331 	inc	dptr
      001E94 E0               [24] 1332 	movx	a,@dptr
      001E95 FF               [12] 1333 	mov	r7,a
      001E96 90 03 9B         [24] 1334 	mov	dptr,#_read_sequ_i_1_49
      001E99 E0               [24] 1335 	movx	a,@dptr
      001E9A FB               [12] 1336 	mov	r3,a
      001E9B A3               [24] 1337 	inc	dptr
      001E9C E0               [24] 1338 	movx	a,@dptr
      001E9D FC               [12] 1339 	mov	r4,a
      001E9E                       1340 00111$:
      001E9E 90 03 96         [24] 1341 	mov	dptr,#_read_sequ_PARM_3
      001EA1 E0               [24] 1342 	movx	a,@dptr
      001EA2 F9               [12] 1343 	mov	r1,a
      001EA3 A3               [24] 1344 	inc	dptr
      001EA4 E0               [24] 1345 	movx	a,@dptr
      001EA5 FA               [12] 1346 	mov	r2,a
      001EA6 19               [12] 1347 	dec	r1
      001EA7 B9 FF 01         [24] 1348 	cjne	r1,#0xFF,00137$
      001EAA 1A               [12] 1349 	dec	r2
      001EAB                       1350 00137$:
      001EAB C3               [12] 1351 	clr	c
      001EAC EB               [12] 1352 	mov	a,r3
      001EAD 99               [12] 1353 	subb	a,r1
      001EAE EC               [12] 1354 	mov	a,r4
      001EAF 9A               [12] 1355 	subb	a,r2
      001EB0 40 0D            [24] 1356 	jc	00110$
      001EB2 90 03 93         [24] 1357 	mov	dptr,#_read_sequ_PARM_2
      001EB5 ED               [12] 1358 	mov	a,r5
      001EB6 F0               [24] 1359 	movx	@dptr,a
      001EB7 EE               [12] 1360 	mov	a,r6
      001EB8 A3               [24] 1361 	inc	dptr
      001EB9 F0               [24] 1362 	movx	@dptr,a
      001EBA EF               [12] 1363 	mov	a,r7
      001EBB A3               [24] 1364 	inc	dptr
      001EBC F0               [24] 1365 	movx	@dptr,a
      001EBD 80 29            [24] 1366 	sjmp	00109$
      001EBF                       1367 00110$:
                                   1368 ;	strorage.c:231: iic_recv(data);
      001EBF 8D 82            [24] 1369 	mov	dpl,r5
      001EC1 8E 83            [24] 1370 	mov	dph,r6
      001EC3 8F F0            [24] 1371 	mov	b,r7
      001EC5 C0 07            [24] 1372 	push	ar7
      001EC7 C0 06            [24] 1373 	push	ar6
      001EC9 C0 05            [24] 1374 	push	ar5
      001ECB C0 04            [24] 1375 	push	ar4
      001ECD C0 03            [24] 1376 	push	ar3
      001ECF 12 1A BF         [24] 1377 	lcall	_iic_recv
      001ED2 D0 03            [24] 1378 	pop	ar3
      001ED4 D0 04            [24] 1379 	pop	ar4
      001ED6 D0 05            [24] 1380 	pop	ar5
      001ED8 D0 06            [24] 1381 	pop	ar6
      001EDA D0 07            [24] 1382 	pop	ar7
                                   1383 ;	strorage.c:232: data++;
      001EDC 0D               [12] 1384 	inc	r5
      001EDD BD 00 01         [24] 1385 	cjne	r5,#0x00,00139$
      001EE0 0E               [12] 1386 	inc	r6
      001EE1                       1387 00139$:
                                   1388 ;	strorage.c:230: for( i=0; i<size-1; i++){
      001EE1 0B               [12] 1389 	inc	r3
      001EE2 BB 00 B9         [24] 1390 	cjne	r3,#0x00,00111$
      001EE5 0C               [12] 1391 	inc	r4
      001EE6 80 B6            [24] 1392 	sjmp	00111$
      001EE8                       1393 00109$:
                                   1394 ;	strorage.c:234: iic_recv_noack(data);
      001EE8 90 03 93         [24] 1395 	mov	dptr,#_read_sequ_PARM_2
      001EEB E0               [24] 1396 	movx	a,@dptr
      001EEC FD               [12] 1397 	mov	r5,a
      001EED A3               [24] 1398 	inc	dptr
      001EEE E0               [24] 1399 	movx	a,@dptr
      001EEF FE               [12] 1400 	mov	r6,a
      001EF0 A3               [24] 1401 	inc	dptr
      001EF1 E0               [24] 1402 	movx	a,@dptr
      001EF2 FF               [12] 1403 	mov	r7,a
      001EF3 8D 82            [24] 1404 	mov	dpl,r5
      001EF5 8E 83            [24] 1405 	mov	dph,r6
      001EF7 8F F0            [24] 1406 	mov	b,r7
      001EF9 12 1B 64         [24] 1407 	lcall	_iic_recv_noack
                                   1408 ;	strorage.c:235: iic_stop();
      001EFC 12 1A 32         [24] 1409 	lcall	_iic_stop
                                   1410 ;	strorage.c:236: return 0;
      001EFF 75 82 00         [24] 1411 	mov	dpl,#0x00
      001F02 22               [24] 1412 	ret
                                   1413 	.area CSEG    (CODE)
                                   1414 	.area CONST   (CODE)
                                   1415 	.area XINIT   (CODE)
                                   1416 	.area CABS    (ABS,CODE)
