                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module wifi
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _wifi_init
                                     13 	.globl _receive_data2
                                     14 	.globl _sendstr2
                                     15 	.globl _get_semaphore
                                     16 	.globl _semaphore_init
                                     17 	.globl _CF
                                     18 	.globl _CR
                                     19 	.globl _CCF1
                                     20 	.globl _CCF0
                                     21 	.globl _TF2
                                     22 	.globl _EXF2
                                     23 	.globl _RCLK
                                     24 	.globl _TCLK
                                     25 	.globl _EXEN2
                                     26 	.globl _TR2
                                     27 	.globl _C_T2
                                     28 	.globl _CP_RL2
                                     29 	.globl _T2CON_7
                                     30 	.globl _T2CON_6
                                     31 	.globl _T2CON_5
                                     32 	.globl _T2CON_4
                                     33 	.globl _T2CON_3
                                     34 	.globl _T2CON_2
                                     35 	.globl _T2CON_1
                                     36 	.globl _T2CON_0
                                     37 	.globl _PT2
                                     38 	.globl _ET2
                                     39 	.globl _CY
                                     40 	.globl _AC
                                     41 	.globl _F0
                                     42 	.globl _RS1
                                     43 	.globl _RS0
                                     44 	.globl _OV
                                     45 	.globl _F1
                                     46 	.globl _P
                                     47 	.globl _PS
                                     48 	.globl _PT1
                                     49 	.globl _PX1
                                     50 	.globl _PT0
                                     51 	.globl _PX0
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _EA
                                     69 	.globl _ES
                                     70 	.globl _ET1
                                     71 	.globl _EX1
                                     72 	.globl _ET0
                                     73 	.globl _EX0
                                     74 	.globl _P2_7
                                     75 	.globl _P2_6
                                     76 	.globl _P2_5
                                     77 	.globl _P2_4
                                     78 	.globl _P2_3
                                     79 	.globl _P2_2
                                     80 	.globl _P2_1
                                     81 	.globl _P2_0
                                     82 	.globl _SM0
                                     83 	.globl _SM1
                                     84 	.globl _SM2
                                     85 	.globl _REN
                                     86 	.globl _TB8
                                     87 	.globl _RB8
                                     88 	.globl _TI
                                     89 	.globl _RI
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _TF1
                                     99 	.globl _TR1
                                    100 	.globl _TF0
                                    101 	.globl _TR0
                                    102 	.globl _IE1
                                    103 	.globl _IT1
                                    104 	.globl _IE0
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _PCA_PWM1
                                    115 	.globl _PCA_PWM0
                                    116 	.globl _CCAP1H
                                    117 	.globl _CCAP1L
                                    118 	.globl _CCAP0H
                                    119 	.globl _CCAP0L
                                    120 	.globl _CH
                                    121 	.globl _CL
                                    122 	.globl _CCAPM1
                                    123 	.globl _CCAPM0
                                    124 	.globl _CMOD
                                    125 	.globl _CCON
                                    126 	.globl _WAKE_CLKO
                                    127 	.globl _BRT
                                    128 	.globl _IE2
                                    129 	.globl _S2BUF
                                    130 	.globl _S2CON
                                    131 	.globl _AUXR1
                                    132 	.globl _AUXR
                                    133 	.globl _TH2
                                    134 	.globl _TL2
                                    135 	.globl _RCAP2H
                                    136 	.globl _RCAP2L
                                    137 	.globl _T2CON
                                    138 	.globl _B
                                    139 	.globl _ACC
                                    140 	.globl _PSW
                                    141 	.globl _IP
                                    142 	.globl _P3
                                    143 	.globl _IE
                                    144 	.globl _P2
                                    145 	.globl _SBUF
                                    146 	.globl _SCON
                                    147 	.globl _P1
                                    148 	.globl _TH1
                                    149 	.globl _TH0
                                    150 	.globl _TL1
                                    151 	.globl _TL0
                                    152 	.globl _TMOD
                                    153 	.globl _TCON
                                    154 	.globl _PCON
                                    155 	.globl _DPH
                                    156 	.globl _DPL
                                    157 	.globl _SP
                                    158 	.globl _P0
                                    159 	.globl _receive_data2_PARM_2
                                    160 	.globl _wifi_data_end
                                    161 	.globl _wifi_data_w
                                    162 	.globl _wifi_data_r
                                    163 	.globl _wifi_buf_end
                                    164 	.globl _wifi_buf_w
                                    165 	.globl _wifi_buf_r
                                    166 	.globl _wifi_data
                                    167 	.globl _wifi_buf
                                    168 	.globl _TI2
                                    169 	.globl _cur_send
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
      00010B                        355 _cur_send::
      00010B                        356 	.ds 3
      00010E                        357 _TI2::
      00010E                        358 	.ds 1
      00010F                        359 _wifi_buf::
      00010F                        360 	.ds 30
      00012D                        361 _wifi_data::
      00012D                        362 	.ds 100
      000191                        363 _wifi_buf_r::
      000191                        364 	.ds 2
      000193                        365 _wifi_buf_w::
      000193                        366 	.ds 2
      000195                        367 _wifi_buf_end::
      000195                        368 	.ds 2
      000197                        369 _wifi_data_r::
      000197                        370 	.ds 2
      000199                        371 _wifi_data_w::
      000199                        372 	.ds 2
      00019B                        373 _wifi_data_end::
      00019B                        374 	.ds 2
      00019D                        375 _receive_data2_PARM_2:
      00019D                        376 	.ds 1
      00019E                        377 _receive_data2_buf_1_27:
      00019E                        378 	.ds 3
      0001A1                        379 _receive_data2_i_1_28:
      0001A1                        380 	.ds 1
                                    381 ;--------------------------------------------------------
                                    382 ; absolute external ram data
                                    383 ;--------------------------------------------------------
                                    384 	.area XABS    (ABS,XDATA)
                                    385 ;--------------------------------------------------------
                                    386 ; external initialized ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area XISEG   (XDATA)
                                    389 	.area HOME    (CODE)
                                    390 	.area GSINIT0 (CODE)
                                    391 	.area GSINIT1 (CODE)
                                    392 	.area GSINIT2 (CODE)
                                    393 	.area GSINIT3 (CODE)
                                    394 	.area GSINIT4 (CODE)
                                    395 	.area GSINIT5 (CODE)
                                    396 	.area GSINIT  (CODE)
                                    397 	.area GSFINAL (CODE)
                                    398 	.area CSEG    (CODE)
                                    399 ;--------------------------------------------------------
                                    400 ; global & static initialisations
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
                                    403 	.area GSINIT  (CODE)
                                    404 	.area GSFINAL (CODE)
                                    405 	.area GSINIT  (CODE)
                                    406 ;--------------------------------------------------------
                                    407 ; Home
                                    408 ;--------------------------------------------------------
                                    409 	.area HOME    (CODE)
                                    410 	.area HOME    (CODE)
                                    411 ;--------------------------------------------------------
                                    412 ; code
                                    413 ;--------------------------------------------------------
                                    414 	.area CSEG    (CODE)
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'sendstr2'
                                    417 ;------------------------------------------------------------
                                    418 ;str                       Allocated to stack - _bp -5
                                    419 ;tmp                       Allocated to registers 
                                    420 ;arg                       Allocated to registers r7 
                                    421 ;------------------------------------------------------------
                                    422 ;	wifi.c:33: uint sendstr2(uchar *str,...)
                                    423 ;	-----------------------------------------
                                    424 ;	 function sendstr2
                                    425 ;	-----------------------------------------
      00115B                        426 _sendstr2:
                           000007   427 	ar7 = 0x07
                           000006   428 	ar6 = 0x06
                           000005   429 	ar5 = 0x05
                           000004   430 	ar4 = 0x04
                           000003   431 	ar3 = 0x03
                           000002   432 	ar2 = 0x02
                           000001   433 	ar1 = 0x01
                           000000   434 	ar0 = 0x00
      00115B C0 13            [24]  435 	push	_bp
      00115D 85 81 13         [24]  436 	mov	_bp,sp
                                    437 ;	wifi.c:37: va_start(arg,str);
      001160 E5 13            [12]  438 	mov	a,_bp
      001162 24 FB            [12]  439 	add	a,#0xFB
      001164 FF               [12]  440 	mov	r7,a
                                    441 ;	wifi.c:38: TI2=0;
      001165 90 01 0E         [24]  442 	mov	dptr,#_TI2
      001168 E4               [12]  443 	clr	a
      001169 F0               [24]  444 	movx	@dptr,a
                                    445 ;	wifi.c:39: do{
      00116A                        446 00115$:
                                    447 ;	wifi.c:40: if(*str=='%'){
      00116A E5 13            [12]  448 	mov	a,_bp
      00116C 24 FB            [12]  449 	add	a,#0xfb
      00116E F8               [12]  450 	mov	r0,a
      00116F 86 04            [24]  451 	mov	ar4,@r0
      001171 08               [12]  452 	inc	r0
      001172 86 05            [24]  453 	mov	ar5,@r0
      001174 08               [12]  454 	inc	r0
      001175 86 06            [24]  455 	mov	ar6,@r0
      001177 8C 82            [24]  456 	mov	dpl,r4
      001179 8D 83            [24]  457 	mov	dph,r5
      00117B 8E F0            [24]  458 	mov	b,r6
      00117D 12 1F 3E         [24]  459 	lcall	__gptrget
      001180 FC               [12]  460 	mov	r4,a
      001181 BC 25 54         [24]  461 	cjne	r4,#0x25,00113$
                                    462 ;	wifi.c:41: str++;
      001184 E5 13            [12]  463 	mov	a,_bp
      001186 24 FB            [12]  464 	add	a,#0xfb
      001188 F8               [12]  465 	mov	r0,a
      001189 06               [12]  466 	inc	@r0
      00118A B6 00 02         [24]  467 	cjne	@r0,#0x00,00136$
      00118D 08               [12]  468 	inc	r0
      00118E 06               [12]  469 	inc	@r0
      00118F                        470 00136$:
                                    471 ;	wifi.c:42: switch((uint)*str){
      00118F E5 13            [12]  472 	mov	a,_bp
      001191 24 FB            [12]  473 	add	a,#0xfb
      001193 F8               [12]  474 	mov	r0,a
      001194 86 04            [24]  475 	mov	ar4,@r0
      001196 08               [12]  476 	inc	r0
      001197 86 05            [24]  477 	mov	ar5,@r0
      001199 08               [12]  478 	inc	r0
      00119A 86 06            [24]  479 	mov	ar6,@r0
      00119C 8C 82            [24]  480 	mov	dpl,r4
      00119E 8D 83            [24]  481 	mov	dph,r5
      0011A0 8E F0            [24]  482 	mov	b,r6
      0011A2 12 1F 3E         [24]  483 	lcall	__gptrget
      0011A5 FC               [12]  484 	mov	r4,a
      0011A6 7E 00            [12]  485 	mov	r6,#0x00
                                    486 ;	wifi.c:43: case 'x':
      0011A8 BC 78 6A         [24]  487 	cjne	r4,#0x78,00116$
      0011AB BE 00 67         [24]  488 	cjne	r6,#0x00,00116$
                                    489 ;	wifi.c:44: tmp= va_arg(arg,char);
      0011AE EF               [12]  490 	mov	a,r7
      0011AF 14               [12]  491 	dec	a
      0011B0 FE               [12]  492 	mov	r6,a
      0011B1 FF               [12]  493 	mov	r7,a
      0011B2 8E 01            [24]  494 	mov	ar1,r6
      0011B4 87 9B            [24]  495 	mov	_S2BUF,@r1
                                    496 ;	wifi.c:46: str++;
      0011B6 E5 13            [12]  497 	mov	a,_bp
      0011B8 24 FB            [12]  498 	add	a,#0xfb
      0011BA F8               [12]  499 	mov	r0,a
      0011BB 06               [12]  500 	inc	@r0
      0011BC B6 00 02         [24]  501 	cjne	@r0,#0x00,00138$
      0011BF 08               [12]  502 	inc	r0
      0011C0 06               [12]  503 	inc	@r0
      0011C1                        504 00138$:
                                    505 ;	wifi.c:47: while(!TI2&&!(S2CON&0x02));
      0011C1                        506 00103$:
      0011C1 90 01 0E         [24]  507 	mov	dptr,#_TI2
      0011C4 E0               [24]  508 	movx	a,@dptr
      0011C5 70 07            [24]  509 	jnz	00105$
      0011C7 E5 9A            [12]  510 	mov	a,_S2CON
      0011C9 20 E1 02         [24]  511 	jb	acc.1,00105$
      0011CC 80 F3            [24]  512 	sjmp	00103$
      0011CE                        513 00105$:
                                    514 ;	wifi.c:48: S2CON&=0xfd;
      0011CE 53 9A FD         [24]  515 	anl	_S2CON,#0xFD
                                    516 ;	wifi.c:49: TI2=0;
      0011D1 90 01 0E         [24]  517 	mov	dptr,#_TI2
      0011D4 E4               [12]  518 	clr	a
      0011D5 F0               [24]  519 	movx	@dptr,a
                                    520 ;	wifi.c:50: break;
                                    521 ;	wifi.c:51: default:
      0011D6 80 3D            [24]  522 	sjmp	00116$
                                    523 ;	wifi.c:53: }
      0011D8                        524 00113$:
                                    525 ;	wifi.c:55: S2BUF=*str;
      0011D8 E5 13            [12]  526 	mov	a,_bp
      0011DA 24 FB            [12]  527 	add	a,#0xfb
      0011DC F8               [12]  528 	mov	r0,a
      0011DD 86 04            [24]  529 	mov	ar4,@r0
      0011DF 08               [12]  530 	inc	r0
      0011E0 86 05            [24]  531 	mov	ar5,@r0
      0011E2 08               [12]  532 	inc	r0
      0011E3 86 06            [24]  533 	mov	ar6,@r0
      0011E5 8C 82            [24]  534 	mov	dpl,r4
      0011E7 8D 83            [24]  535 	mov	dph,r5
      0011E9 8E F0            [24]  536 	mov	b,r6
      0011EB 12 1F 3E         [24]  537 	lcall	__gptrget
      0011EE F5 9B            [12]  538 	mov	_S2BUF,a
                                    539 ;	wifi.c:56: str++;
      0011F0 E5 13            [12]  540 	mov	a,_bp
      0011F2 24 FB            [12]  541 	add	a,#0xfb
      0011F4 F8               [12]  542 	mov	r0,a
      0011F5 74 01            [12]  543 	mov	a,#0x01
      0011F7 2C               [12]  544 	add	a,r4
      0011F8 F6               [12]  545 	mov	@r0,a
      0011F9 E4               [12]  546 	clr	a
      0011FA 3D               [12]  547 	addc	a,r5
      0011FB 08               [12]  548 	inc	r0
      0011FC F6               [12]  549 	mov	@r0,a
      0011FD 08               [12]  550 	inc	r0
      0011FE A6 06            [24]  551 	mov	@r0,ar6
                                    552 ;	wifi.c:57: while(!TI2&&!(S2CON&0x02));
      001200                        553 00109$:
      001200 90 01 0E         [24]  554 	mov	dptr,#_TI2
      001203 E0               [24]  555 	movx	a,@dptr
      001204 70 07            [24]  556 	jnz	00111$
      001206 E5 9A            [12]  557 	mov	a,_S2CON
      001208 20 E1 02         [24]  558 	jb	acc.1,00111$
      00120B 80 F3            [24]  559 	sjmp	00109$
      00120D                        560 00111$:
                                    561 ;	wifi.c:58: TI2=0;
      00120D 90 01 0E         [24]  562 	mov	dptr,#_TI2
      001210 E4               [12]  563 	clr	a
      001211 F0               [24]  564 	movx	@dptr,a
                                    565 ;	wifi.c:59: S2CON&=0xfd;
      001212 53 9A FD         [24]  566 	anl	_S2CON,#0xFD
      001215                        567 00116$:
                                    568 ;	wifi.c:61: }while(*str!=NULL);
      001215 E5 13            [12]  569 	mov	a,_bp
      001217 24 FB            [12]  570 	add	a,#0xfb
      001219 F8               [12]  571 	mov	r0,a
      00121A 86 04            [24]  572 	mov	ar4,@r0
      00121C 08               [12]  573 	inc	r0
      00121D 86 05            [24]  574 	mov	ar5,@r0
      00121F 08               [12]  575 	inc	r0
      001220 86 06            [24]  576 	mov	ar6,@r0
      001222 8C 82            [24]  577 	mov	dpl,r4
      001224 8D 83            [24]  578 	mov	dph,r5
      001226 8E F0            [24]  579 	mov	b,r6
      001228 12 1F 3E         [24]  580 	lcall	__gptrget
      00122B 60 03            [24]  581 	jz	00143$
      00122D 02 11 6A         [24]  582 	ljmp	00115$
      001230                        583 00143$:
                                    584 ;	wifi.c:69: return OK;
      001230 90 00 00         [24]  585 	mov	dptr,#0x0000
      001233 D0 13            [24]  586 	pop	_bp
      001235 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'receive_data2'
                                    590 ;------------------------------------------------------------
                                    591 ;count                     Allocated with name '_receive_data2_PARM_2'
                                    592 ;buf                       Allocated with name '_receive_data2_buf_1_27'
                                    593 ;i                         Allocated with name '_receive_data2_i_1_28'
                                    594 ;------------------------------------------------------------
                                    595 ;	wifi.c:75: void receive_data2(uchar *buf,uchar count)
                                    596 ;	-----------------------------------------
                                    597 ;	 function receive_data2
                                    598 ;	-----------------------------------------
      001236                        599 _receive_data2:
      001236 AF F0            [24]  600 	mov	r7,b
      001238 AE 83            [24]  601 	mov	r6,dph
      00123A E5 82            [12]  602 	mov	a,dpl
      00123C 90 01 9E         [24]  603 	mov	dptr,#_receive_data2_buf_1_27
      00123F F0               [24]  604 	movx	@dptr,a
      001240 EE               [12]  605 	mov	a,r6
      001241 A3               [24]  606 	inc	dptr
      001242 F0               [24]  607 	movx	@dptr,a
      001243 EF               [12]  608 	mov	a,r7
      001244 A3               [24]  609 	inc	dptr
      001245 F0               [24]  610 	movx	@dptr,a
                                    611 ;	wifi.c:78: EA=0;
      001246 C2 AF            [12]  612 	clr	_EA
                                    613 ;	wifi.c:79: for(i=0;i<(count-3);i++){
      001248 90 01 A1         [24]  614 	mov	dptr,#_receive_data2_i_1_28
      00124B E4               [12]  615 	clr	a
      00124C F0               [24]  616 	movx	@dptr,a
      00124D 90 01 9E         [24]  617 	mov	dptr,#_receive_data2_buf_1_27
      001250 E0               [24]  618 	movx	a,@dptr
      001251 FD               [12]  619 	mov	r5,a
      001252 A3               [24]  620 	inc	dptr
      001253 E0               [24]  621 	movx	a,@dptr
      001254 FE               [12]  622 	mov	r6,a
      001255 A3               [24]  623 	inc	dptr
      001256 E0               [24]  624 	movx	a,@dptr
      001257 FF               [12]  625 	mov	r7,a
      001258 90 01 A1         [24]  626 	mov	dptr,#_receive_data2_i_1_28
      00125B E0               [24]  627 	movx	a,@dptr
      00125C FC               [12]  628 	mov	r4,a
      00125D                        629 00108$:
      00125D 90 01 9D         [24]  630 	mov	dptr,#_receive_data2_PARM_2
      001260 E0               [24]  631 	movx	a,@dptr
      001261 7A 00            [12]  632 	mov	r2,#0x00
      001263 24 FD            [12]  633 	add	a,#0xFD
      001265 FB               [12]  634 	mov	r3,a
      001266 EA               [12]  635 	mov	a,r2
      001267 34 FF            [12]  636 	addc	a,#0xFF
      001269 FA               [12]  637 	mov	r2,a
      00126A 8C 00            [24]  638 	mov	ar0,r4
      00126C 79 00            [12]  639 	mov	r1,#0x00
      00126E C3               [12]  640 	clr	c
      00126F E8               [12]  641 	mov	a,r0
      001270 9B               [12]  642 	subb	a,r3
      001271 E9               [12]  643 	mov	a,r1
      001272 64 80            [12]  644 	xrl	a,#0x80
      001274 8A F0            [24]  645 	mov	b,r2
      001276 63 F0 80         [24]  646 	xrl	b,#0x80
      001279 95 F0            [12]  647 	subb	a,b
      00127B 40 03            [24]  648 	jc	00107$
      00127D 02 13 08         [24]  649 	ljmp	00106$
      001280                        650 00107$:
                                    651 ;	wifi.c:80: if (*wifi_data_r!='\r'){
      001280 90 01 97         [24]  652 	mov	dptr,#_wifi_data_r
      001283 E0               [24]  653 	movx	a,@dptr
      001284 FA               [12]  654 	mov	r2,a
      001285 A3               [24]  655 	inc	dptr
      001286 E0               [24]  656 	movx	a,@dptr
      001287 FB               [12]  657 	mov	r3,a
      001288 8A 82            [24]  658 	mov	dpl,r2
      00128A 8B 83            [24]  659 	mov	dph,r3
      00128C E0               [24]  660 	movx	a,@dptr
      00128D FA               [12]  661 	mov	r2,a
      00128E BA 0D 02         [24]  662 	cjne	r2,#0x0D,00122$
      001291 80 57            [24]  663 	sjmp	00104$
      001293                        664 00122$:
                                    665 ;	wifi.c:81: if(wifi_data_r==wifi_data_end)wifi_data_r=wifi_data;
      001293 90 01 97         [24]  666 	mov	dptr,#_wifi_data_r
      001296 E0               [24]  667 	movx	a,@dptr
      001297 FA               [12]  668 	mov	r2,a
      001298 A3               [24]  669 	inc	dptr
      001299 E0               [24]  670 	movx	a,@dptr
      00129A FB               [12]  671 	mov	r3,a
      00129B 90 01 9B         [24]  672 	mov	dptr,#_wifi_data_end
      00129E E0               [24]  673 	movx	a,@dptr
      00129F F8               [12]  674 	mov	r0,a
      0012A0 A3               [24]  675 	inc	dptr
      0012A1 E0               [24]  676 	movx	a,@dptr
      0012A2 F9               [12]  677 	mov	r1,a
      0012A3 EA               [12]  678 	mov	a,r2
      0012A4 B5 00 0E         [24]  679 	cjne	a,ar0,00102$
      0012A7 EB               [12]  680 	mov	a,r3
      0012A8 B5 01 0A         [24]  681 	cjne	a,ar1,00102$
      0012AB 90 01 97         [24]  682 	mov	dptr,#_wifi_data_r
      0012AE 74 2D            [12]  683 	mov	a,#_wifi_data
      0012B0 F0               [24]  684 	movx	@dptr,a
      0012B1 74 01            [12]  685 	mov	a,#(_wifi_data >> 8)
      0012B3 A3               [24]  686 	inc	dptr
      0012B4 F0               [24]  687 	movx	@dptr,a
      0012B5                        688 00102$:
                                    689 ;	wifi.c:82: *buf=*wifi_data_r;
      0012B5 90 01 97         [24]  690 	mov	dptr,#_wifi_data_r
      0012B8 E0               [24]  691 	movx	a,@dptr
      0012B9 FA               [12]  692 	mov	r2,a
      0012BA A3               [24]  693 	inc	dptr
      0012BB E0               [24]  694 	movx	a,@dptr
      0012BC FB               [12]  695 	mov	r3,a
      0012BD 8A 82            [24]  696 	mov	dpl,r2
      0012BF 8B 83            [24]  697 	mov	dph,r3
      0012C1 E0               [24]  698 	movx	a,@dptr
      0012C2 FA               [12]  699 	mov	r2,a
      0012C3 8D 82            [24]  700 	mov	dpl,r5
      0012C5 8E 83            [24]  701 	mov	dph,r6
      0012C7 8F F0            [24]  702 	mov	b,r7
      0012C9 12 1F 03         [24]  703 	lcall	__gptrput
      0012CC A3               [24]  704 	inc	dptr
      0012CD AD 82            [24]  705 	mov	r5,dpl
      0012CF AE 83            [24]  706 	mov	r6,dph
                                    707 ;	wifi.c:83: buf++;
      0012D1 90 01 9E         [24]  708 	mov	dptr,#_receive_data2_buf_1_27
      0012D4 ED               [12]  709 	mov	a,r5
      0012D5 F0               [24]  710 	movx	@dptr,a
      0012D6 EE               [12]  711 	mov	a,r6
      0012D7 A3               [24]  712 	inc	dptr
      0012D8 F0               [24]  713 	movx	@dptr,a
      0012D9 EF               [12]  714 	mov	a,r7
      0012DA A3               [24]  715 	inc	dptr
      0012DB F0               [24]  716 	movx	@dptr,a
                                    717 ;	wifi.c:84: wifi_data_r++;
      0012DC 90 01 97         [24]  718 	mov	dptr,#_wifi_data_r
      0012DF E0               [24]  719 	movx	a,@dptr
      0012E0 24 01            [12]  720 	add	a,#0x01
      0012E2 F0               [24]  721 	movx	@dptr,a
      0012E3 A3               [24]  722 	inc	dptr
      0012E4 E0               [24]  723 	movx	a,@dptr
      0012E5 34 00            [12]  724 	addc	a,#0x00
      0012E7 F0               [24]  725 	movx	@dptr,a
      0012E8 80 1A            [24]  726 	sjmp	00109$
      0012EA                        727 00104$:
                                    728 ;	wifi.c:86: wifi_data_r++;
      0012EA 90 01 97         [24]  729 	mov	dptr,#_wifi_data_r
      0012ED E0               [24]  730 	movx	a,@dptr
      0012EE 24 01            [12]  731 	add	a,#0x01
      0012F0 F0               [24]  732 	movx	@dptr,a
      0012F1 A3               [24]  733 	inc	dptr
      0012F2 E0               [24]  734 	movx	a,@dptr
      0012F3 34 00            [12]  735 	addc	a,#0x00
      0012F5 F0               [24]  736 	movx	@dptr,a
                                    737 ;	wifi.c:87: wifi_data_r++;
      0012F6 90 01 97         [24]  738 	mov	dptr,#_wifi_data_r
      0012F9 E0               [24]  739 	movx	a,@dptr
      0012FA 24 01            [12]  740 	add	a,#0x01
      0012FC F0               [24]  741 	movx	@dptr,a
      0012FD A3               [24]  742 	inc	dptr
      0012FE E0               [24]  743 	movx	a,@dptr
      0012FF 34 00            [12]  744 	addc	a,#0x00
      001301 F0               [24]  745 	movx	@dptr,a
                                    746 ;	wifi.c:88: break;
      001302 80 04            [24]  747 	sjmp	00106$
      001304                        748 00109$:
                                    749 ;	wifi.c:79: for(i=0;i<(count-3);i++){
      001304 0C               [12]  750 	inc	r4
      001305 02 12 5D         [24]  751 	ljmp	00108$
      001308                        752 00106$:
                                    753 ;	wifi.c:91: *buf='\r';
      001308 90 01 9E         [24]  754 	mov	dptr,#_receive_data2_buf_1_27
      00130B E0               [24]  755 	movx	a,@dptr
      00130C FD               [12]  756 	mov	r5,a
      00130D A3               [24]  757 	inc	dptr
      00130E E0               [24]  758 	movx	a,@dptr
      00130F FE               [12]  759 	mov	r6,a
      001310 A3               [24]  760 	inc	dptr
      001311 E0               [24]  761 	movx	a,@dptr
      001312 FF               [12]  762 	mov	r7,a
      001313 8D 82            [24]  763 	mov	dpl,r5
      001315 8E 83            [24]  764 	mov	dph,r6
      001317 8F F0            [24]  765 	mov	b,r7
      001319 74 0D            [12]  766 	mov	a,#0x0D
      00131B 12 1F 03         [24]  767 	lcall	__gptrput
                                    768 ;	wifi.c:92: buf++;
      00131E 90 01 9E         [24]  769 	mov	dptr,#_receive_data2_buf_1_27
      001321 74 01            [12]  770 	mov	a,#0x01
      001323 2D               [12]  771 	add	a,r5
      001324 F0               [24]  772 	movx	@dptr,a
      001325 E4               [12]  773 	clr	a
      001326 3E               [12]  774 	addc	a,r6
      001327 A3               [24]  775 	inc	dptr
      001328 F0               [24]  776 	movx	@dptr,a
      001329 EF               [12]  777 	mov	a,r7
      00132A A3               [24]  778 	inc	dptr
      00132B F0               [24]  779 	movx	@dptr,a
                                    780 ;	wifi.c:93: *buf='\n';
      00132C 90 01 9E         [24]  781 	mov	dptr,#_receive_data2_buf_1_27
      00132F E0               [24]  782 	movx	a,@dptr
      001330 FD               [12]  783 	mov	r5,a
      001331 A3               [24]  784 	inc	dptr
      001332 E0               [24]  785 	movx	a,@dptr
      001333 FE               [12]  786 	mov	r6,a
      001334 A3               [24]  787 	inc	dptr
      001335 E0               [24]  788 	movx	a,@dptr
      001336 FF               [12]  789 	mov	r7,a
      001337 8D 82            [24]  790 	mov	dpl,r5
      001339 8E 83            [24]  791 	mov	dph,r6
      00133B 8F F0            [24]  792 	mov	b,r7
      00133D 74 0A            [12]  793 	mov	a,#0x0A
      00133F 12 1F 03         [24]  794 	lcall	__gptrput
                                    795 ;	wifi.c:94: buf++;
      001342 90 01 9E         [24]  796 	mov	dptr,#_receive_data2_buf_1_27
      001345 74 01            [12]  797 	mov	a,#0x01
      001347 2D               [12]  798 	add	a,r5
      001348 F0               [24]  799 	movx	@dptr,a
      001349 E4               [12]  800 	clr	a
      00134A 3E               [12]  801 	addc	a,r6
      00134B A3               [24]  802 	inc	dptr
      00134C F0               [24]  803 	movx	@dptr,a
      00134D EF               [12]  804 	mov	a,r7
      00134E A3               [24]  805 	inc	dptr
      00134F F0               [24]  806 	movx	@dptr,a
                                    807 ;	wifi.c:95: *buf='\0';
      001350 90 01 9E         [24]  808 	mov	dptr,#_receive_data2_buf_1_27
      001353 E0               [24]  809 	movx	a,@dptr
      001354 FD               [12]  810 	mov	r5,a
      001355 A3               [24]  811 	inc	dptr
      001356 E0               [24]  812 	movx	a,@dptr
      001357 FE               [12]  813 	mov	r6,a
      001358 A3               [24]  814 	inc	dptr
      001359 E0               [24]  815 	movx	a,@dptr
      00135A FF               [12]  816 	mov	r7,a
      00135B 8D 82            [24]  817 	mov	dpl,r5
      00135D 8E 83            [24]  818 	mov	dph,r6
      00135F 8F F0            [24]  819 	mov	b,r7
      001361 E4               [12]  820 	clr	a
      001362 12 1F 03         [24]  821 	lcall	__gptrput
                                    822 ;	wifi.c:96: EA=1;
      001365 D2 AF            [12]  823 	setb	_EA
                                    824 ;	wifi.c:97: return;
      001367 22               [24]  825 	ret
                                    826 ;------------------------------------------------------------
                                    827 ;Allocation info for local variables in function 'wifi_init'
                                    828 ;------------------------------------------------------------
                                    829 ;	wifi.c:105: uint wifi_init(void)
                                    830 ;	-----------------------------------------
                                    831 ;	 function wifi_init
                                    832 ;	-----------------------------------------
      001368                        833 _wifi_init:
                                    834 ;	wifi.c:107: S2CON=0x50;	//模式1;允许接收
      001368 75 9A 50         [24]  835 	mov	_S2CON,#0x50
                                    836 ;	wifi.c:108: IE2=0x01;	//开启中断
      00136B 75 AF 01         [24]  837 	mov	_IE2,#0x01
                                    838 ;	wifi.c:109: BRT=0xfd;
      00136E 75 9C FD         [24]  839 	mov	_BRT,#0xFD
                                    840 ;	wifi.c:110: AUXR|=0x14;	//独立波特率发生器,1T模式,不加倍
      001371 43 8E 14         [24]  841 	orl	_AUXR,#0x14
                                    842 ;	wifi.c:112: wifi_buf_r=wifi_buf_w=wifi_buf;
      001374 90 01 93         [24]  843 	mov	dptr,#_wifi_buf_w
      001377 74 0F            [12]  844 	mov	a,#_wifi_buf
      001379 F0               [24]  845 	movx	@dptr,a
      00137A 74 01            [12]  846 	mov	a,#(_wifi_buf >> 8)
      00137C A3               [24]  847 	inc	dptr
      00137D F0               [24]  848 	movx	@dptr,a
      00137E 90 01 91         [24]  849 	mov	dptr,#_wifi_buf_r
      001381 74 0F            [12]  850 	mov	a,#_wifi_buf
      001383 F0               [24]  851 	movx	@dptr,a
      001384 74 01            [12]  852 	mov	a,#(_wifi_buf >> 8)
      001386 A3               [24]  853 	inc	dptr
      001387 F0               [24]  854 	movx	@dptr,a
                                    855 ;	wifi.c:113: wifi_buf_end=wifi_buf+29;
      001388 90 01 95         [24]  856 	mov	dptr,#_wifi_buf_end
      00138B 74 1D            [12]  857 	mov	a,#0x1D
      00138D 24 0F            [12]  858 	add	a,#_wifi_buf
      00138F F0               [24]  859 	movx	@dptr,a
      001390 E4               [12]  860 	clr	a
      001391 34 01            [12]  861 	addc	a,#(_wifi_buf >> 8)
      001393 A3               [24]  862 	inc	dptr
      001394 F0               [24]  863 	movx	@dptr,a
                                    864 ;	wifi.c:114: wifi_data_r=wifi_data_w=wifi_data;
      001395 90 01 99         [24]  865 	mov	dptr,#_wifi_data_w
      001398 74 2D            [12]  866 	mov	a,#_wifi_data
      00139A F0               [24]  867 	movx	@dptr,a
      00139B 74 01            [12]  868 	mov	a,#(_wifi_data >> 8)
      00139D A3               [24]  869 	inc	dptr
      00139E F0               [24]  870 	movx	@dptr,a
      00139F 90 01 97         [24]  871 	mov	dptr,#_wifi_data_r
      0013A2 74 2D            [12]  872 	mov	a,#_wifi_data
      0013A4 F0               [24]  873 	movx	@dptr,a
      0013A5 74 01            [12]  874 	mov	a,#(_wifi_data >> 8)
      0013A7 A3               [24]  875 	inc	dptr
      0013A8 F0               [24]  876 	movx	@dptr,a
                                    877 ;	wifi.c:115: wifi_data_end=wifi_data+99;
      0013A9 90 01 9B         [24]  878 	mov	dptr,#_wifi_data_end
      0013AC 74 63            [12]  879 	mov	a,#0x63
      0013AE 24 2D            [12]  880 	add	a,#_wifi_data
      0013B0 F0               [24]  881 	movx	@dptr,a
      0013B1 E4               [12]  882 	clr	a
      0013B2 34 01            [12]  883 	addc	a,#(_wifi_data >> 8)
      0013B4 A3               [24]  884 	inc	dptr
      0013B5 F0               [24]  885 	movx	@dptr,a
                                    886 ;	wifi.c:116: semaphore_init(14);
      0013B6 90 00 0E         [24]  887 	mov	dptr,#0x000E
      0013B9 12 0F 85         [24]  888 	lcall	_semaphore_init
                                    889 ;	wifi.c:117: get_semaphore(14);
      0013BC 90 00 0E         [24]  890 	mov	dptr,#0x000E
      0013BF 12 0F B2         [24]  891 	lcall	_get_semaphore
                                    892 ;	wifi.c:118: return 0;
      0013C2 90 00 00         [24]  893 	mov	dptr,#0x0000
      0013C5 22               [24]  894 	ret
                                    895 	.area CSEG    (CODE)
                                    896 	.area CONST   (CODE)
                                    897 	.area XINIT   (CODE)
                                    898 	.area CABS    (ABS,CODE)
