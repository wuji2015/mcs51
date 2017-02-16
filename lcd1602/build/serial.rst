                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Feb  8 12:14:55 2017
                                      5 ;--------------------------------------------------------
                                      6 	.module serial
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _display
                                     13 	.globl _sendstr
                                     14 	.globl _putc
                                     15 	.globl _TF2
                                     16 	.globl _EXF2
                                     17 	.globl _RCLK
                                     18 	.globl _TCLK
                                     19 	.globl _EXEN2
                                     20 	.globl _TR2
                                     21 	.globl _C_T2
                                     22 	.globl _CP_RL2
                                     23 	.globl _T2CON_7
                                     24 	.globl _T2CON_6
                                     25 	.globl _T2CON_5
                                     26 	.globl _T2CON_4
                                     27 	.globl _T2CON_3
                                     28 	.globl _T2CON_2
                                     29 	.globl _T2CON_1
                                     30 	.globl _T2CON_0
                                     31 	.globl _PT2
                                     32 	.globl _ET2
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _P1_7
                                     85 	.globl _P1_6
                                     86 	.globl _P1_5
                                     87 	.globl _P1_4
                                     88 	.globl _P1_3
                                     89 	.globl _P1_2
                                     90 	.globl _P1_1
                                     91 	.globl _P1_0
                                     92 	.globl _TF1
                                     93 	.globl _TR1
                                     94 	.globl _TF0
                                     95 	.globl _TR0
                                     96 	.globl _IE1
                                     97 	.globl _IT1
                                     98 	.globl _IE0
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _TH2
                                    109 	.globl _TL2
                                    110 	.globl _RCAP2H
                                    111 	.globl _RCAP2L
                                    112 	.globl _T2CON
                                    113 	.globl _B
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _IP
                                    117 	.globl _P3
                                    118 	.globl _IE
                                    119 	.globl _P2
                                    120 	.globl _SBUF
                                    121 	.globl _SCON
                                    122 	.globl _P1
                                    123 	.globl _TH1
                                    124 	.globl _TH0
                                    125 	.globl _TL1
                                    126 	.globl _TL0
                                    127 	.globl _TMOD
                                    128 	.globl _TCON
                                    129 	.globl _PCON
                                    130 	.globl _DPH
                                    131 	.globl _DPL
                                    132 	.globl _SP
                                    133 	.globl _P0
                                    134 	.globl _display_PARM_2
                                    135 	.globl _TI1
                                    136 ;--------------------------------------------------------
                                    137 ; special function registers
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0	=	0x0080
                           000081   142 _SP	=	0x0081
                           000082   143 _DPL	=	0x0082
                           000083   144 _DPH	=	0x0083
                           000087   145 _PCON	=	0x0087
                           000088   146 _TCON	=	0x0088
                           000089   147 _TMOD	=	0x0089
                           00008A   148 _TL0	=	0x008a
                           00008B   149 _TL1	=	0x008b
                           00008C   150 _TH0	=	0x008c
                           00008D   151 _TH1	=	0x008d
                           000090   152 _P1	=	0x0090
                           000098   153 _SCON	=	0x0098
                           000099   154 _SBUF	=	0x0099
                           0000A0   155 _P2	=	0x00a0
                           0000A8   156 _IE	=	0x00a8
                           0000B0   157 _P3	=	0x00b0
                           0000B8   158 _IP	=	0x00b8
                           0000D0   159 _PSW	=	0x00d0
                           0000E0   160 _ACC	=	0x00e0
                           0000F0   161 _B	=	0x00f0
                           0000C8   162 _T2CON	=	0x00c8
                           0000CA   163 _RCAP2L	=	0x00ca
                           0000CB   164 _RCAP2H	=	0x00cb
                           0000CC   165 _TL2	=	0x00cc
                           0000CD   166 _TH2	=	0x00cd
                                    167 ;--------------------------------------------------------
                                    168 ; special function bits
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0_0	=	0x0080
                           000081   173 _P0_1	=	0x0081
                           000082   174 _P0_2	=	0x0082
                           000083   175 _P0_3	=	0x0083
                           000084   176 _P0_4	=	0x0084
                           000085   177 _P0_5	=	0x0085
                           000086   178 _P0_6	=	0x0086
                           000087   179 _P0_7	=	0x0087
                           000088   180 _IT0	=	0x0088
                           000089   181 _IE0	=	0x0089
                           00008A   182 _IT1	=	0x008a
                           00008B   183 _IE1	=	0x008b
                           00008C   184 _TR0	=	0x008c
                           00008D   185 _TF0	=	0x008d
                           00008E   186 _TR1	=	0x008e
                           00008F   187 _TF1	=	0x008f
                           000090   188 _P1_0	=	0x0090
                           000091   189 _P1_1	=	0x0091
                           000092   190 _P1_2	=	0x0092
                           000093   191 _P1_3	=	0x0093
                           000094   192 _P1_4	=	0x0094
                           000095   193 _P1_5	=	0x0095
                           000096   194 _P1_6	=	0x0096
                           000097   195 _P1_7	=	0x0097
                           000098   196 _RI	=	0x0098
                           000099   197 _TI	=	0x0099
                           00009A   198 _RB8	=	0x009a
                           00009B   199 _TB8	=	0x009b
                           00009C   200 _REN	=	0x009c
                           00009D   201 _SM2	=	0x009d
                           00009E   202 _SM1	=	0x009e
                           00009F   203 _SM0	=	0x009f
                           0000A0   204 _P2_0	=	0x00a0
                           0000A1   205 _P2_1	=	0x00a1
                           0000A2   206 _P2_2	=	0x00a2
                           0000A3   207 _P2_3	=	0x00a3
                           0000A4   208 _P2_4	=	0x00a4
                           0000A5   209 _P2_5	=	0x00a5
                           0000A6   210 _P2_6	=	0x00a6
                           0000A7   211 _P2_7	=	0x00a7
                           0000A8   212 _EX0	=	0x00a8
                           0000A9   213 _ET0	=	0x00a9
                           0000AA   214 _EX1	=	0x00aa
                           0000AB   215 _ET1	=	0x00ab
                           0000AC   216 _ES	=	0x00ac
                           0000AF   217 _EA	=	0x00af
                           0000B0   218 _P3_0	=	0x00b0
                           0000B1   219 _P3_1	=	0x00b1
                           0000B2   220 _P3_2	=	0x00b2
                           0000B3   221 _P3_3	=	0x00b3
                           0000B4   222 _P3_4	=	0x00b4
                           0000B5   223 _P3_5	=	0x00b5
                           0000B6   224 _P3_6	=	0x00b6
                           0000B7   225 _P3_7	=	0x00b7
                           0000B0   226 _RXD	=	0x00b0
                           0000B1   227 _TXD	=	0x00b1
                           0000B2   228 _INT0	=	0x00b2
                           0000B3   229 _INT1	=	0x00b3
                           0000B4   230 _T0	=	0x00b4
                           0000B5   231 _T1	=	0x00b5
                           0000B6   232 _WR	=	0x00b6
                           0000B7   233 _RD	=	0x00b7
                           0000B8   234 _PX0	=	0x00b8
                           0000B9   235 _PT0	=	0x00b9
                           0000BA   236 _PX1	=	0x00ba
                           0000BB   237 _PT1	=	0x00bb
                           0000BC   238 _PS	=	0x00bc
                           0000D0   239 _P	=	0x00d0
                           0000D1   240 _F1	=	0x00d1
                           0000D2   241 _OV	=	0x00d2
                           0000D3   242 _RS0	=	0x00d3
                           0000D4   243 _RS1	=	0x00d4
                           0000D5   244 _F0	=	0x00d5
                           0000D6   245 _AC	=	0x00d6
                           0000D7   246 _CY	=	0x00d7
                           0000AD   247 _ET2	=	0x00ad
                           0000BD   248 _PT2	=	0x00bd
                           0000C8   249 _T2CON_0	=	0x00c8
                           0000C9   250 _T2CON_1	=	0x00c9
                           0000CA   251 _T2CON_2	=	0x00ca
                           0000CB   252 _T2CON_3	=	0x00cb
                           0000CC   253 _T2CON_4	=	0x00cc
                           0000CD   254 _T2CON_5	=	0x00cd
                           0000CE   255 _T2CON_6	=	0x00ce
                           0000CF   256 _T2CON_7	=	0x00cf
                           0000C8   257 _CP_RL2	=	0x00c8
                           0000C9   258 _C_T2	=	0x00c9
                           0000CA   259 _TR2	=	0x00ca
                           0000CB   260 _EXEN2	=	0x00cb
                           0000CC   261 _TCLK	=	0x00cc
                           0000CD   262 _RCLK	=	0x00cd
                           0000CE   263 _EXF2	=	0x00ce
                           0000CF   264 _TF2	=	0x00cf
                                    265 ;--------------------------------------------------------
                                    266 ; overlayable register banks
                                    267 ;--------------------------------------------------------
                                    268 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        269 	.ds 8
                                    270 ;--------------------------------------------------------
                                    271 ; internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area DSEG    (DATA)
      000010                        274 _TI1::
      000010                        275 	.ds 1
      000011                        276 _display_PARM_2:
      000011                        277 	.ds 1
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable items in internal ram 
                                    280 ;--------------------------------------------------------
                                    281 	.area	OSEG    (OVR,DATA)
                                    282 ;--------------------------------------------------------
                                    283 ; indirectly addressable internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area ISEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; absolute internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area IABS    (ABS,DATA)
                                    290 	.area IABS    (ABS,DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; bit data
                                    293 ;--------------------------------------------------------
                                    294 	.area BSEG    (BIT)
                                    295 ;--------------------------------------------------------
                                    296 ; paged external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area PSEG    (PAG,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XSEG    (XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XABS    (ABS,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external initialized ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XISEG   (XDATA)
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT0 (CODE)
                                    313 	.area GSINIT1 (CODE)
                                    314 	.area GSINIT2 (CODE)
                                    315 	.area GSINIT3 (CODE)
                                    316 	.area GSINIT4 (CODE)
                                    317 	.area GSINIT5 (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.area GSFINAL (CODE)
                                    320 	.area CSEG    (CODE)
                                    321 ;--------------------------------------------------------
                                    322 ; global & static initialisations
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 ;--------------------------------------------------------
                                    329 ; Home
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
                                    332 	.area HOME    (CODE)
                                    333 ;--------------------------------------------------------
                                    334 ; code
                                    335 ;--------------------------------------------------------
                                    336 	.area CSEG    (CODE)
                                    337 ;------------------------------------------------------------
                                    338 ;Allocation info for local variables in function 'putc'
                                    339 ;------------------------------------------------------------
                                    340 ;c                         Allocated to registers 
                                    341 ;------------------------------------------------------------
                                    342 ;	serial.c:4: void putc(uchar c)
                                    343 ;	-----------------------------------------
                                    344 ;	 function putc
                                    345 ;	-----------------------------------------
      000089                        346 _putc:
                           000007   347 	ar7 = 0x07
                           000006   348 	ar6 = 0x06
                           000005   349 	ar5 = 0x05
                           000004   350 	ar4 = 0x04
                           000003   351 	ar3 = 0x03
                           000002   352 	ar2 = 0x02
                           000001   353 	ar1 = 0x01
                           000000   354 	ar0 = 0x00
      000089 85 82 99         [24]  355 	mov	_SBUF,dpl
                                    356 ;	serial.c:7: while(!TI);
      00008C                        357 00101$:
                                    358 ;	serial.c:8: TI1=TI=0;
      00008C 10 99 02         [24]  359 	jbc	_TI,00112$
      00008F 80 FB            [24]  360 	sjmp	00101$
      000091                        361 00112$:
      000091 A2 99            [12]  362 	mov	c,_TI
      000093 E4               [12]  363 	clr	a
      000094 33               [12]  364 	rlc	a
      000095 F5 10            [12]  365 	mov	_TI1,a
      000097 22               [24]  366 	ret
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'sendstr'
                                    369 ;------------------------------------------------------------
                                    370 ;str                       Allocated to stack - _bp -5
                                    371 ;tmp                       Allocated to registers 
                                    372 ;arg                       Allocated to stack - _bp +1
                                    373 ;sloc0                     Allocated to stack - _bp +3
                                    374 ;------------------------------------------------------------
                                    375 ;	serial.c:15: uint sendstr(uchar *str,...)
                                    376 ;	-----------------------------------------
                                    377 ;	 function sendstr
                                    378 ;	-----------------------------------------
      000098                        379 _sendstr:
      000098 C0 12            [24]  380 	push	_bp
      00009A 85 81 12         [24]  381 	mov	_bp,sp
      00009D 05 81            [12]  382 	inc	sp
                                    383 ;	serial.c:19: EA=0;
      00009F C2 AF            [12]  384 	clr	_EA
                                    385 ;	serial.c:20: va_start(arg,str);
      0000A1 E5 12            [12]  386 	mov	a,_bp
      0000A3 24 FB            [12]  387 	add	a,#0xFB
      0000A5 FF               [12]  388 	mov	r7,a
      0000A6 A8 12            [24]  389 	mov	r0,_bp
      0000A8 08               [12]  390 	inc	r0
      0000A9 A6 07            [24]  391 	mov	@r0,ar7
                                    392 ;	serial.c:21: TI1=0;
      0000AB 75 10 00         [24]  393 	mov	_TI1,#0x00
                                    394 ;	serial.c:22: do{
      0000AE                        395 00115$:
                                    396 ;	serial.c:23: if(*str=='%'){
      0000AE E5 12            [12]  397 	mov	a,_bp
      0000B0 24 FB            [12]  398 	add	a,#0xfb
      0000B2 F8               [12]  399 	mov	r0,a
      0000B3 86 04            [24]  400 	mov	ar4,@r0
      0000B5 08               [12]  401 	inc	r0
      0000B6 86 05            [24]  402 	mov	ar5,@r0
      0000B8 08               [12]  403 	inc	r0
      0000B9 86 06            [24]  404 	mov	ar6,@r0
      0000BB 8C 82            [24]  405 	mov	dpl,r4
      0000BD 8D 83            [24]  406 	mov	dph,r5
      0000BF 8E F0            [24]  407 	mov	b,r6
      0000C1 12 02 BD         [24]  408 	lcall	__gptrget
      0000C4 FB               [12]  409 	mov	r3,a
      0000C5 BB 25 5F         [24]  410 	cjne	r3,#0x25,00113$
                                    411 ;	serial.c:24: str++;
      0000C8 E5 12            [12]  412 	mov	a,_bp
      0000CA 24 FB            [12]  413 	add	a,#0xfb
      0000CC F8               [12]  414 	mov	r0,a
      0000CD 74 01            [12]  415 	mov	a,#0x01
      0000CF 2C               [12]  416 	add	a,r4
      0000D0 F6               [12]  417 	mov	@r0,a
      0000D1 E4               [12]  418 	clr	a
      0000D2 3D               [12]  419 	addc	a,r5
      0000D3 08               [12]  420 	inc	r0
      0000D4 F6               [12]  421 	mov	@r0,a
      0000D5 08               [12]  422 	inc	r0
      0000D6 A6 06            [24]  423 	mov	@r0,ar6
                                    424 ;	serial.c:25: switch((uint)*str){
      0000D8 E5 12            [12]  425 	mov	a,_bp
      0000DA 24 FB            [12]  426 	add	a,#0xfb
      0000DC F8               [12]  427 	mov	r0,a
      0000DD 86 06            [24]  428 	mov	ar6,@r0
      0000DF 08               [12]  429 	inc	r0
      0000E0 86 05            [24]  430 	mov	ar5,@r0
      0000E2 08               [12]  431 	inc	r0
      0000E3 86 04            [24]  432 	mov	ar4,@r0
      0000E5 8E 82            [24]  433 	mov	dpl,r6
      0000E7 8D 83            [24]  434 	mov	dph,r5
      0000E9 8C F0            [24]  435 	mov	b,r4
      0000EB 12 02 BD         [24]  436 	lcall	__gptrget
      0000EE FF               [12]  437 	mov	r7,a
      0000EF 7A 00            [12]  438 	mov	r2,#0x00
      0000F1 BF 78 54         [24]  439 	cjne	r7,#0x78,00116$
      0000F4 BA 00 51         [24]  440 	cjne	r2,#0x00,00116$
                                    441 ;	serial.c:27: tmp= va_arg(arg,char);
      0000F7 A8 12            [24]  442 	mov	r0,_bp
      0000F9 08               [12]  443 	inc	r0
      0000FA E6               [12]  444 	mov	a,@r0
      0000FB 14               [12]  445 	dec	a
      0000FC FF               [12]  446 	mov	r7,a
      0000FD A8 12            [24]  447 	mov	r0,_bp
      0000FF 08               [12]  448 	inc	r0
      000100 A6 07            [24]  449 	mov	@r0,ar7
      000102 8F 01            [24]  450 	mov	ar1,r7
      000104 87 99            [24]  451 	mov	_SBUF,@r1
                                    452 ;	serial.c:29: str++;
      000106 E5 12            [12]  453 	mov	a,_bp
      000108 24 FB            [12]  454 	add	a,#0xfb
      00010A F8               [12]  455 	mov	r0,a
      00010B 74 01            [12]  456 	mov	a,#0x01
      00010D 2E               [12]  457 	add	a,r6
      00010E F6               [12]  458 	mov	@r0,a
      00010F E4               [12]  459 	clr	a
      000110 3D               [12]  460 	addc	a,r5
      000111 08               [12]  461 	inc	r0
      000112 F6               [12]  462 	mov	@r0,a
      000113 08               [12]  463 	inc	r0
      000114 A6 04            [24]  464 	mov	@r0,ar4
                                    465 ;	serial.c:30: while(!TI&&!TI1);
      000116                        466 00103$:
      000116 20 99 04         [24]  467 	jb	_TI,00105$
      000119 E5 10            [12]  468 	mov	a,_TI1
      00011B 60 F9            [24]  469 	jz	00103$
      00011D                        470 00105$:
                                    471 ;	serial.c:31: TI1=TI=0;
      00011D C2 99            [12]  472 	clr	_TI
      00011F A2 99            [12]  473 	mov	c,_TI
      000121 E4               [12]  474 	clr	a
      000122 33               [12]  475 	rlc	a
      000123 F5 10            [12]  476 	mov	_TI1,a
                                    477 ;	serial.c:32: break;
                                    478 ;	serial.c:35: }
      000125 80 21            [24]  479 	sjmp	00116$
      000127                        480 00113$:
                                    481 ;	serial.c:37: SBUF=*str;
      000127 8B 99            [24]  482 	mov	_SBUF,r3
                                    483 ;	serial.c:38: str+=1;
      000129 E5 12            [12]  484 	mov	a,_bp
      00012B 24 FB            [12]  485 	add	a,#0xfb
      00012D F8               [12]  486 	mov	r0,a
      00012E 74 01            [12]  487 	mov	a,#0x01
      000130 2C               [12]  488 	add	a,r4
      000131 F6               [12]  489 	mov	@r0,a
      000132 E4               [12]  490 	clr	a
      000133 3D               [12]  491 	addc	a,r5
      000134 08               [12]  492 	inc	r0
      000135 F6               [12]  493 	mov	@r0,a
      000136 08               [12]  494 	inc	r0
      000137 A6 06            [24]  495 	mov	@r0,ar6
                                    496 ;	serial.c:39: while(!TI&&!TI1);
      000139                        497 00109$:
      000139 20 99 04         [24]  498 	jb	_TI,00111$
      00013C E5 10            [12]  499 	mov	a,_TI1
      00013E 60 F9            [24]  500 	jz	00109$
      000140                        501 00111$:
                                    502 ;	serial.c:40: TI1=TI=0;
      000140 C2 99            [12]  503 	clr	_TI
      000142 A2 99            [12]  504 	mov	c,_TI
      000144 E4               [12]  505 	clr	a
      000145 33               [12]  506 	rlc	a
      000146 F5 10            [12]  507 	mov	_TI1,a
      000148                        508 00116$:
                                    509 ;	serial.c:42: }while(*str != 0);
      000148 E5 12            [12]  510 	mov	a,_bp
      00014A 24 FB            [12]  511 	add	a,#0xfb
      00014C F8               [12]  512 	mov	r0,a
      00014D 86 05            [24]  513 	mov	ar5,@r0
      00014F 08               [12]  514 	inc	r0
      000150 86 06            [24]  515 	mov	ar6,@r0
      000152 08               [12]  516 	inc	r0
      000153 86 07            [24]  517 	mov	ar7,@r0
      000155 8D 82            [24]  518 	mov	dpl,r5
      000157 8E 83            [24]  519 	mov	dph,r6
      000159 8F F0            [24]  520 	mov	b,r7
      00015B 12 02 BD         [24]  521 	lcall	__gptrget
      00015E 60 03            [24]  522 	jz	00152$
      000160 02 00 AE         [24]  523 	ljmp	00115$
      000163                        524 00152$:
                                    525 ;	serial.c:44: EA=1;
      000163 D2 AF            [12]  526 	setb	_EA
                                    527 ;	serial.c:51: return 0;
      000165 90 00 00         [24]  528 	mov	dptr,#0x0000
      000168 15 81            [12]  529 	dec	sp
      00016A D0 12            [24]  530 	pop	_bp
      00016C 22               [24]  531 	ret
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function 'display'
                                    534 ;------------------------------------------------------------
                                    535 ;c                         Allocated with name '_display_PARM_2'
                                    536 ;str                       Allocated to registers r5 r6 r7 
                                    537 ;tmp                       Allocated to registers r7 
                                    538 ;i                         Allocated to registers r5 
                                    539 ;------------------------------------------------------------
                                    540 ;	serial.c:53: void display(uchar *str,uchar c)
                                    541 ;	-----------------------------------------
                                    542 ;	 function display
                                    543 ;	-----------------------------------------
      00016D                        544 _display:
      00016D AD 82            [24]  545 	mov	r5,dpl
      00016F AE 83            [24]  546 	mov	r6,dph
      000171 AF F0            [24]  547 	mov	r7,b
                                    548 ;	serial.c:56: sendstr(str);
      000173 C0 05            [24]  549 	push	ar5
      000175 C0 06            [24]  550 	push	ar6
      000177 C0 07            [24]  551 	push	ar7
      000179 12 00 98         [24]  552 	lcall	_sendstr
      00017C 15 81            [12]  553 	dec	sp
      00017E 15 81            [12]  554 	dec	sp
      000180 15 81            [12]  555 	dec	sp
                                    556 ;	serial.c:57: putc(0x30);
      000182 75 82 30         [24]  557 	mov	dpl,#0x30
      000185 12 00 89         [24]  558 	lcall	_putc
                                    559 ;	serial.c:58: putc('x');
      000188 75 82 78         [24]  560 	mov	dpl,#0x78
      00018B 12 00 89         [24]  561 	lcall	_putc
                                    562 ;	serial.c:59: tmp=c>>4;
      00018E E5 11            [12]  563 	mov	a,_display_PARM_2
      000190 C4               [12]  564 	swap	a
      000191 54 0F            [12]  565 	anl	a,#0x0F
      000193 FF               [12]  566 	mov	r7,a
                                    567 ;	serial.c:60: for(i=0;i<2;i++){
      000194 74 0F            [12]  568 	mov	a,#0x0F
      000196 55 11            [12]  569 	anl	a,_display_PARM_2
      000198 FE               [12]  570 	mov	r6,a
      000199 7D 00            [12]  571 	mov	r5,#0x00
      00019B                        572 00105$:
                                    573 ;	serial.c:61: if(tmp<0x0a){
      00019B BF 0A 00         [24]  574 	cjne	r7,#0x0A,00119$
      00019E                        575 00119$:
      00019E 50 12            [24]  576 	jnc	00102$
                                    577 ;	serial.c:62: putc(tmp+0x30);
      0001A0 74 30            [12]  578 	mov	a,#0x30
      0001A2 2F               [12]  579 	add	a,r7
      0001A3 F5 82            [12]  580 	mov	dpl,a
      0001A5 C0 06            [24]  581 	push	ar6
      0001A7 C0 05            [24]  582 	push	ar5
      0001A9 12 00 89         [24]  583 	lcall	_putc
      0001AC D0 05            [24]  584 	pop	ar5
      0001AE D0 06            [24]  585 	pop	ar6
      0001B0 80 10            [24]  586 	sjmp	00103$
      0001B2                        587 00102$:
                                    588 ;	serial.c:64: putc(tmp+0x37);
      0001B2 74 37            [12]  589 	mov	a,#0x37
      0001B4 2F               [12]  590 	add	a,r7
      0001B5 F5 82            [12]  591 	mov	dpl,a
      0001B7 C0 06            [24]  592 	push	ar6
      0001B9 C0 05            [24]  593 	push	ar5
      0001BB 12 00 89         [24]  594 	lcall	_putc
      0001BE D0 05            [24]  595 	pop	ar5
      0001C0 D0 06            [24]  596 	pop	ar6
      0001C2                        597 00103$:
                                    598 ;	serial.c:66: tmp=c&0x0f;
      0001C2 8E 07            [24]  599 	mov	ar7,r6
                                    600 ;	serial.c:60: for(i=0;i<2;i++){
      0001C4 0D               [12]  601 	inc	r5
      0001C5 BD 02 00         [24]  602 	cjne	r5,#0x02,00121$
      0001C8                        603 00121$:
      0001C8 40 D1            [24]  604 	jc	00105$
                                    605 ;	serial.c:68: sendstr("\n\r");
      0001CA 74 DD            [12]  606 	mov	a,#___str_0
      0001CC C0 E0            [24]  607 	push	acc
      0001CE 74 02            [12]  608 	mov	a,#(___str_0 >> 8)
      0001D0 C0 E0            [24]  609 	push	acc
      0001D2 74 80            [12]  610 	mov	a,#0x80
      0001D4 C0 E0            [24]  611 	push	acc
      0001D6 12 00 98         [24]  612 	lcall	_sendstr
      0001D9 15 81            [12]  613 	dec	sp
      0001DB 15 81            [12]  614 	dec	sp
      0001DD 15 81            [12]  615 	dec	sp
      0001DF 22               [24]  616 	ret
                                    617 	.area CSEG    (CODE)
                                    618 	.area CONST   (CODE)
      0002DD                        619 ___str_0:
      0002DD 0A                     620 	.db 0x0A
      0002DE 0D                     621 	.db 0x0D
      0002DF 00                     622 	.db 0x00
                                    623 	.area XINIT   (CODE)
                                    624 	.area CABS    (ABS,CODE)
