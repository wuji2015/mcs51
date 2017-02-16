                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module sound
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _m
                                     13 	.globl _sound_stop
                                     14 	.globl _sound_play
                                     15 	.globl _delay
                                     16 	.globl _CF
                                     17 	.globl _CR
                                     18 	.globl _CCF1
                                     19 	.globl _CCF0
                                     20 	.globl _TF2
                                     21 	.globl _EXF2
                                     22 	.globl _RCLK
                                     23 	.globl _TCLK
                                     24 	.globl _EXEN2
                                     25 	.globl _TR2
                                     26 	.globl _C_T2
                                     27 	.globl _CP_RL2
                                     28 	.globl _T2CON_7
                                     29 	.globl _T2CON_6
                                     30 	.globl _T2CON_5
                                     31 	.globl _T2CON_4
                                     32 	.globl _T2CON_3
                                     33 	.globl _T2CON_2
                                     34 	.globl _T2CON_1
                                     35 	.globl _T2CON_0
                                     36 	.globl _PT2
                                     37 	.globl _ET2
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _PS
                                     47 	.globl _PT1
                                     48 	.globl _PX1
                                     49 	.globl _PT0
                                     50 	.globl _PX0
                                     51 	.globl _RD
                                     52 	.globl _WR
                                     53 	.globl _T1
                                     54 	.globl _T0
                                     55 	.globl _INT1
                                     56 	.globl _INT0
                                     57 	.globl _TXD
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _EA
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _PCA_PWM1
                                    114 	.globl _PCA_PWM0
                                    115 	.globl _CCAP1H
                                    116 	.globl _CCAP1L
                                    117 	.globl _CCAP0H
                                    118 	.globl _CCAP0L
                                    119 	.globl _CH
                                    120 	.globl _CL
                                    121 	.globl _CCAPM1
                                    122 	.globl _CCAPM0
                                    123 	.globl _CMOD
                                    124 	.globl _CCON
                                    125 	.globl _WAKE_CLKO
                                    126 	.globl _BRT
                                    127 	.globl _IE2
                                    128 	.globl _S2BUF
                                    129 	.globl _S2CON
                                    130 	.globl _AUXR1
                                    131 	.globl _AUXR
                                    132 	.globl _TH2
                                    133 	.globl _TL2
                                    134 	.globl _RCAP2H
                                    135 	.globl _RCAP2L
                                    136 	.globl _T2CON
                                    137 	.globl _B
                                    138 	.globl _ACC
                                    139 	.globl _PSW
                                    140 	.globl _IP
                                    141 	.globl _P3
                                    142 	.globl _IE
                                    143 	.globl _P2
                                    144 	.globl _SBUF
                                    145 	.globl _SCON
                                    146 	.globl _P1
                                    147 	.globl _TH1
                                    148 	.globl _TH0
                                    149 	.globl _TL1
                                    150 	.globl _TL0
                                    151 	.globl _TMOD
                                    152 	.globl _TCON
                                    153 	.globl _PCON
                                    154 	.globl _DPH
                                    155 	.globl _DPL
                                    156 	.globl _SP
                                    157 	.globl _P0
                                    158 ;--------------------------------------------------------
                                    159 ; special function registers
                                    160 ;--------------------------------------------------------
                                    161 	.area RSEG    (ABS,DATA)
      000000                        162 	.org 0x0000
                           000080   163 _P0	=	0x0080
                           000081   164 _SP	=	0x0081
                           000082   165 _DPL	=	0x0082
                           000083   166 _DPH	=	0x0083
                           000087   167 _PCON	=	0x0087
                           000088   168 _TCON	=	0x0088
                           000089   169 _TMOD	=	0x0089
                           00008A   170 _TL0	=	0x008a
                           00008B   171 _TL1	=	0x008b
                           00008C   172 _TH0	=	0x008c
                           00008D   173 _TH1	=	0x008d
                           000090   174 _P1	=	0x0090
                           000098   175 _SCON	=	0x0098
                           000099   176 _SBUF	=	0x0099
                           0000A0   177 _P2	=	0x00a0
                           0000A8   178 _IE	=	0x00a8
                           0000B0   179 _P3	=	0x00b0
                           0000B8   180 _IP	=	0x00b8
                           0000D0   181 _PSW	=	0x00d0
                           0000E0   182 _ACC	=	0x00e0
                           0000F0   183 _B	=	0x00f0
                           0000C8   184 _T2CON	=	0x00c8
                           0000CA   185 _RCAP2L	=	0x00ca
                           0000CB   186 _RCAP2H	=	0x00cb
                           0000CC   187 _TL2	=	0x00cc
                           0000CD   188 _TH2	=	0x00cd
                           00008E   189 _AUXR	=	0x008e
                           0000A2   190 _AUXR1	=	0x00a2
                           00009A   191 _S2CON	=	0x009a
                           00009B   192 _S2BUF	=	0x009b
                           0000AF   193 _IE2	=	0x00af
                           00009C   194 _BRT	=	0x009c
                           00008F   195 _WAKE_CLKO	=	0x008f
                           0000D8   196 _CCON	=	0x00d8
                           0000D9   197 _CMOD	=	0x00d9
                           0000DA   198 _CCAPM0	=	0x00da
                           0000DB   199 _CCAPM1	=	0x00db
                           0000E9   200 _CL	=	0x00e9
                           0000F9   201 _CH	=	0x00f9
                           0000EA   202 _CCAP0L	=	0x00ea
                           0000FA   203 _CCAP0H	=	0x00fa
                           0000EB   204 _CCAP1L	=	0x00eb
                           0000FB   205 _CCAP1H	=	0x00fb
                           0000F2   206 _PCA_PWM0	=	0x00f2
                           0000F3   207 _PCA_PWM1	=	0x00f3
                                    208 ;--------------------------------------------------------
                                    209 ; special function bits
                                    210 ;--------------------------------------------------------
                                    211 	.area RSEG    (ABS,DATA)
      000000                        212 	.org 0x0000
                           000080   213 _P0_0	=	0x0080
                           000081   214 _P0_1	=	0x0081
                           000082   215 _P0_2	=	0x0082
                           000083   216 _P0_3	=	0x0083
                           000084   217 _P0_4	=	0x0084
                           000085   218 _P0_5	=	0x0085
                           000086   219 _P0_6	=	0x0086
                           000087   220 _P0_7	=	0x0087
                           000088   221 _IT0	=	0x0088
                           000089   222 _IE0	=	0x0089
                           00008A   223 _IT1	=	0x008a
                           00008B   224 _IE1	=	0x008b
                           00008C   225 _TR0	=	0x008c
                           00008D   226 _TF0	=	0x008d
                           00008E   227 _TR1	=	0x008e
                           00008F   228 _TF1	=	0x008f
                           000090   229 _P1_0	=	0x0090
                           000091   230 _P1_1	=	0x0091
                           000092   231 _P1_2	=	0x0092
                           000093   232 _P1_3	=	0x0093
                           000094   233 _P1_4	=	0x0094
                           000095   234 _P1_5	=	0x0095
                           000096   235 _P1_6	=	0x0096
                           000097   236 _P1_7	=	0x0097
                           000098   237 _RI	=	0x0098
                           000099   238 _TI	=	0x0099
                           00009A   239 _RB8	=	0x009a
                           00009B   240 _TB8	=	0x009b
                           00009C   241 _REN	=	0x009c
                           00009D   242 _SM2	=	0x009d
                           00009E   243 _SM1	=	0x009e
                           00009F   244 _SM0	=	0x009f
                           0000A0   245 _P2_0	=	0x00a0
                           0000A1   246 _P2_1	=	0x00a1
                           0000A2   247 _P2_2	=	0x00a2
                           0000A3   248 _P2_3	=	0x00a3
                           0000A4   249 _P2_4	=	0x00a4
                           0000A5   250 _P2_5	=	0x00a5
                           0000A6   251 _P2_6	=	0x00a6
                           0000A7   252 _P2_7	=	0x00a7
                           0000A8   253 _EX0	=	0x00a8
                           0000A9   254 _ET0	=	0x00a9
                           0000AA   255 _EX1	=	0x00aa
                           0000AB   256 _ET1	=	0x00ab
                           0000AC   257 _ES	=	0x00ac
                           0000AF   258 _EA	=	0x00af
                           0000B0   259 _P3_0	=	0x00b0
                           0000B1   260 _P3_1	=	0x00b1
                           0000B2   261 _P3_2	=	0x00b2
                           0000B3   262 _P3_3	=	0x00b3
                           0000B4   263 _P3_4	=	0x00b4
                           0000B5   264 _P3_5	=	0x00b5
                           0000B6   265 _P3_6	=	0x00b6
                           0000B7   266 _P3_7	=	0x00b7
                           0000B0   267 _RXD	=	0x00b0
                           0000B1   268 _TXD	=	0x00b1
                           0000B2   269 _INT0	=	0x00b2
                           0000B3   270 _INT1	=	0x00b3
                           0000B4   271 _T0	=	0x00b4
                           0000B5   272 _T1	=	0x00b5
                           0000B6   273 _WR	=	0x00b6
                           0000B7   274 _RD	=	0x00b7
                           0000B8   275 _PX0	=	0x00b8
                           0000B9   276 _PT0	=	0x00b9
                           0000BA   277 _PX1	=	0x00ba
                           0000BB   278 _PT1	=	0x00bb
                           0000BC   279 _PS	=	0x00bc
                           0000D0   280 _P	=	0x00d0
                           0000D1   281 _F1	=	0x00d1
                           0000D2   282 _OV	=	0x00d2
                           0000D3   283 _RS0	=	0x00d3
                           0000D4   284 _RS1	=	0x00d4
                           0000D5   285 _F0	=	0x00d5
                           0000D6   286 _AC	=	0x00d6
                           0000D7   287 _CY	=	0x00d7
                           0000AD   288 _ET2	=	0x00ad
                           0000BD   289 _PT2	=	0x00bd
                           0000C8   290 _T2CON_0	=	0x00c8
                           0000C9   291 _T2CON_1	=	0x00c9
                           0000CA   292 _T2CON_2	=	0x00ca
                           0000CB   293 _T2CON_3	=	0x00cb
                           0000CC   294 _T2CON_4	=	0x00cc
                           0000CD   295 _T2CON_5	=	0x00cd
                           0000CE   296 _T2CON_6	=	0x00ce
                           0000CF   297 _T2CON_7	=	0x00cf
                           0000C8   298 _CP_RL2	=	0x00c8
                           0000C9   299 _C_T2	=	0x00c9
                           0000CA   300 _TR2	=	0x00ca
                           0000CB   301 _EXEN2	=	0x00cb
                           0000CC   302 _TCLK	=	0x00cc
                           0000CD   303 _RCLK	=	0x00cd
                           0000CE   304 _EXF2	=	0x00ce
                           0000CF   305 _TF2	=	0x00cf
                           0000D8   306 _CCF0	=	0x00d8
                           0000D9   307 _CCF1	=	0x00d9
                           0000DE   308 _CR	=	0x00de
                           0000DF   309 _CF	=	0x00df
                                    310 ;--------------------------------------------------------
                                    311 ; overlayable register banks
                                    312 ;--------------------------------------------------------
                                    313 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        314 	.ds 8
                                    315 ;--------------------------------------------------------
                                    316 ; internal ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area DSEG    (DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; overlayable items in internal ram 
                                    321 ;--------------------------------------------------------
                                    322 ;--------------------------------------------------------
                                    323 ; indirectly addressable internal ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area ISEG    (DATA)
                                    326 ;--------------------------------------------------------
                                    327 ; absolute internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area IABS    (ABS,DATA)
                                    330 	.area IABS    (ABS,DATA)
                                    331 ;--------------------------------------------------------
                                    332 ; bit data
                                    333 ;--------------------------------------------------------
                                    334 	.area BSEG    (BIT)
                                    335 ;--------------------------------------------------------
                                    336 ; paged external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area PSEG    (PAG,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XSEG    (XDATA)
      0001A2                        343 _sound_play_data_1_12:
      0001A2                        344 	.ds 2
      0001A4                        345 _sound_play_i_1_13:
      0001A4                        346 	.ds 1
                                    347 ;--------------------------------------------------------
                                    348 ; absolute external ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area XABS    (ABS,XDATA)
                                    351 ;--------------------------------------------------------
                                    352 ; external initialized ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XISEG   (XDATA)
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT0 (CODE)
                                    357 	.area GSINIT1 (CODE)
                                    358 	.area GSINIT2 (CODE)
                                    359 	.area GSINIT3 (CODE)
                                    360 	.area GSINIT4 (CODE)
                                    361 	.area GSINIT5 (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.area GSFINAL (CODE)
                                    364 	.area CSEG    (CODE)
                                    365 ;--------------------------------------------------------
                                    366 ; global & static initialisations
                                    367 ;--------------------------------------------------------
                                    368 	.area HOME    (CODE)
                                    369 	.area GSINIT  (CODE)
                                    370 	.area GSFINAL (CODE)
                                    371 	.area GSINIT  (CODE)
                                    372 ;--------------------------------------------------------
                                    373 ; Home
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
                                    376 	.area HOME    (CODE)
                                    377 ;--------------------------------------------------------
                                    378 ; code
                                    379 ;--------------------------------------------------------
                                    380 	.area CSEG    (CODE)
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'sound_play'
                                    383 ;------------------------------------------------------------
                                    384 ;data                      Allocated with name '_sound_play_data_1_12'
                                    385 ;i                         Allocated with name '_sound_play_i_1_13'
                                    386 ;------------------------------------------------------------
                                    387 ;	sound.c:18: void sound_play(uint data)
                                    388 ;	-----------------------------------------
                                    389 ;	 function sound_play
                                    390 ;	-----------------------------------------
      0013C6                        391 _sound_play:
                           000007   392 	ar7 = 0x07
                           000006   393 	ar6 = 0x06
                           000005   394 	ar5 = 0x05
                           000004   395 	ar4 = 0x04
                           000003   396 	ar3 = 0x03
                           000002   397 	ar2 = 0x02
                           000001   398 	ar1 = 0x01
                           000000   399 	ar0 = 0x00
      0013C6 AF 83            [24]  400 	mov	r7,dph
      0013C8 E5 82            [12]  401 	mov	a,dpl
      0013CA 90 01 A2         [24]  402 	mov	dptr,#_sound_play_data_1_12
      0013CD F0               [24]  403 	movx	@dptr,a
      0013CE EF               [12]  404 	mov	a,r7
      0013CF A3               [24]  405 	inc	dptr
      0013D0 F0               [24]  406 	movx	@dptr,a
                                    407 ;	sound.c:21: EA=0;
      0013D1 C2 AF            [12]  408 	clr	_EA
                                    409 ;	sound.c:22: P0_2=0;		//复位
      0013D3 C2 82            [12]  410 	clr	_P0_2
                                    411 ;	sound.c:24: delay(300);
      0013D5 90 01 2C         [24]  412 	mov	dptr,#0x012C
      0013D8 12 04 41         [24]  413 	lcall	_delay
                                    414 ;	sound.c:25: P0_2=1;
      0013DB D2 82            [12]  415 	setb	_P0_2
                                    416 ;	sound.c:26: delay(20);
      0013DD 90 00 14         [24]  417 	mov	dptr,#0x0014
      0013E0 12 04 41         [24]  418 	lcall	_delay
                                    419 ;	sound.c:27: for(i=0;i<16;i++){
      0013E3 90 01 A4         [24]  420 	mov	dptr,#_sound_play_i_1_13
      0013E6 E4               [12]  421 	clr	a
      0013E7 F0               [24]  422 	movx	@dptr,a
      0013E8 90 01 A4         [24]  423 	mov	dptr,#_sound_play_i_1_13
      0013EB E0               [24]  424 	movx	a,@dptr
      0013EC FF               [12]  425 	mov	r7,a
      0013ED                        426 00102$:
                                    427 ;	sound.c:28: P0_0=0;
      0013ED C2 80            [12]  428 	clr	_P0_0
                                    429 ;	sound.c:29: delay(1);
      0013EF 90 00 01         [24]  430 	mov	dptr,#0x0001
      0013F2 C0 07            [24]  431 	push	ar7
      0013F4 12 04 41         [24]  432 	lcall	_delay
      0013F7 D0 07            [24]  433 	pop	ar7
                                    434 ;	sound.c:30: P0_1=m[i]&data;
      0013F9 EF               [12]  435 	mov	a,r7
      0013FA 75 F0 02         [24]  436 	mov	b,#0x02
      0013FD A4               [48]  437 	mul	ab
      0013FE 24 DE            [12]  438 	add	a,#_m
      001400 F5 82            [12]  439 	mov	dpl,a
      001402 74 21            [12]  440 	mov	a,#(_m >> 8)
      001404 35 F0            [12]  441 	addc	a,b
      001406 F5 83            [12]  442 	mov	dph,a
      001408 E4               [12]  443 	clr	a
      001409 93               [24]  444 	movc	a,@a+dptr
      00140A FD               [12]  445 	mov	r5,a
      00140B A3               [24]  446 	inc	dptr
      00140C E4               [12]  447 	clr	a
      00140D 93               [24]  448 	movc	a,@a+dptr
      00140E FE               [12]  449 	mov	r6,a
      00140F 90 01 A2         [24]  450 	mov	dptr,#_sound_play_data_1_12
      001412 E0               [24]  451 	movx	a,@dptr
      001413 FB               [12]  452 	mov	r3,a
      001414 A3               [24]  453 	inc	dptr
      001415 E0               [24]  454 	movx	a,@dptr
      001416 FC               [12]  455 	mov	r4,a
      001417 EB               [12]  456 	mov	a,r3
      001418 52 05            [12]  457 	anl	ar5,a
      00141A EC               [12]  458 	mov	a,r4
      00141B 52 06            [12]  459 	anl	ar6,a
      00141D ED               [12]  460 	mov	a,r5
      00141E 4E               [12]  461 	orl	a,r6
      00141F 24 FF            [12]  462 	add	a,#0xff
      001421 92 81            [24]  463 	mov	_P0_1,c
                                    464 ;	sound.c:32: delay(1);
      001423 90 00 01         [24]  465 	mov	dptr,#0x0001
      001426 C0 07            [24]  466 	push	ar7
      001428 12 04 41         [24]  467 	lcall	_delay
                                    468 ;	sound.c:33: P0_0=1;
      00142B D2 80            [12]  469 	setb	_P0_0
                                    470 ;	sound.c:34: delay(1);
      00142D 90 00 01         [24]  471 	mov	dptr,#0x0001
      001430 12 04 41         [24]  472 	lcall	_delay
      001433 D0 07            [24]  473 	pop	ar7
                                    474 ;	sound.c:27: for(i=0;i<16;i++){
      001435 0F               [12]  475 	inc	r7
      001436 BF 10 00         [24]  476 	cjne	r7,#0x10,00110$
      001439                        477 00110$:
      001439 40 B2            [24]  478 	jc	00102$
                                    479 ;	sound.c:36: EA=1;
      00143B D2 AF            [12]  480 	setb	_EA
                                    481 ;	sound.c:37: return;
      00143D 22               [24]  482 	ret
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'sound_stop'
                                    485 ;------------------------------------------------------------
                                    486 ;	sound.c:39: void sound_stop(void){
                                    487 ;	-----------------------------------------
                                    488 ;	 function sound_stop
                                    489 ;	-----------------------------------------
      00143E                        490 _sound_stop:
                                    491 ;	sound.c:40: sound_play(0xffff);
      00143E 90 FF FF         [24]  492 	mov	dptr,#0xFFFF
                                    493 ;	sound.c:41: return;
      001441 02 13 C6         [24]  494 	ljmp	_sound_play
                                    495 	.area CSEG    (CODE)
                                    496 	.area CONST   (CODE)
      0021DE                        497 _m:
      0021DE 00 80                  498 	.byte #0x00,#0x80	; 32768
      0021E0 00 40                  499 	.byte #0x00,#0x40	; 16384
      0021E2 00 20                  500 	.byte #0x00,#0x20	; 8192
      0021E4 00 10                  501 	.byte #0x00,#0x10	; 4096
      0021E6 00 08                  502 	.byte #0x00,#0x08	; 2048
      0021E8 00 04                  503 	.byte #0x00,#0x04	; 1024
      0021EA 00 02                  504 	.byte #0x00,#0x02	; 512
      0021EC 00 01                  505 	.byte #0x00,#0x01	; 256
      0021EE 80 00                  506 	.byte #0x80,#0x00	; 128
      0021F0 40 00                  507 	.byte #0x40,#0x00	; 64
      0021F2 20 00                  508 	.byte #0x20,#0x00	; 32
      0021F4 10 00                  509 	.byte #0x10,#0x00	; 16
      0021F6 08 00                  510 	.byte #0x08,#0x00	; 8
      0021F8 04 00                  511 	.byte #0x04,#0x00	; 4
      0021FA 02 00                  512 	.byte #0x02,#0x00	; 2
      0021FC 01 00                  513 	.byte #0x01,#0x00	; 1
                                    514 	.area XINIT   (CODE)
                                    515 	.area CABS    (ABS,CODE)
