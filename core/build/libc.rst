                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module libc
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _strcat
                                     13 	.globl _strcpy
                                     14 	.globl _memcmp
                                     15 	.globl _memcpy
                                     16 	.globl _memset
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
                                    159 	.globl _strcat_PARM_2
                                    160 	.globl _strcpy_PARM_2
                                    161 	.globl _memcmp_PARM_3
                                    162 	.globl _memcmp_PARM_2
                                    163 	.globl _memcpy_PARM_3
                                    164 	.globl _memcpy_PARM_2
                                    165 	.globl _memset_PARM_3
                                    166 	.globl _memset_PARM_2
                                    167 ;--------------------------------------------------------
                                    168 ; special function registers
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0	=	0x0080
                           000081   173 _SP	=	0x0081
                           000082   174 _DPL	=	0x0082
                           000083   175 _DPH	=	0x0083
                           000087   176 _PCON	=	0x0087
                           000088   177 _TCON	=	0x0088
                           000089   178 _TMOD	=	0x0089
                           00008A   179 _TL0	=	0x008a
                           00008B   180 _TL1	=	0x008b
                           00008C   181 _TH0	=	0x008c
                           00008D   182 _TH1	=	0x008d
                           000090   183 _P1	=	0x0090
                           000098   184 _SCON	=	0x0098
                           000099   185 _SBUF	=	0x0099
                           0000A0   186 _P2	=	0x00a0
                           0000A8   187 _IE	=	0x00a8
                           0000B0   188 _P3	=	0x00b0
                           0000B8   189 _IP	=	0x00b8
                           0000D0   190 _PSW	=	0x00d0
                           0000E0   191 _ACC	=	0x00e0
                           0000F0   192 _B	=	0x00f0
                           0000C8   193 _T2CON	=	0x00c8
                           0000CA   194 _RCAP2L	=	0x00ca
                           0000CB   195 _RCAP2H	=	0x00cb
                           0000CC   196 _TL2	=	0x00cc
                           0000CD   197 _TH2	=	0x00cd
                           00008E   198 _AUXR	=	0x008e
                           0000A2   199 _AUXR1	=	0x00a2
                           00009A   200 _S2CON	=	0x009a
                           00009B   201 _S2BUF	=	0x009b
                           0000AF   202 _IE2	=	0x00af
                           00009C   203 _BRT	=	0x009c
                           00008F   204 _WAKE_CLKO	=	0x008f
                           0000D8   205 _CCON	=	0x00d8
                           0000D9   206 _CMOD	=	0x00d9
                           0000DA   207 _CCAPM0	=	0x00da
                           0000DB   208 _CCAPM1	=	0x00db
                           0000E9   209 _CL	=	0x00e9
                           0000F9   210 _CH	=	0x00f9
                           0000EA   211 _CCAP0L	=	0x00ea
                           0000FA   212 _CCAP0H	=	0x00fa
                           0000EB   213 _CCAP1L	=	0x00eb
                           0000FB   214 _CCAP1H	=	0x00fb
                           0000F2   215 _PCA_PWM0	=	0x00f2
                           0000F3   216 _PCA_PWM1	=	0x00f3
                                    217 ;--------------------------------------------------------
                                    218 ; special function bits
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           000080   222 _P0_0	=	0x0080
                           000081   223 _P0_1	=	0x0081
                           000082   224 _P0_2	=	0x0082
                           000083   225 _P0_3	=	0x0083
                           000084   226 _P0_4	=	0x0084
                           000085   227 _P0_5	=	0x0085
                           000086   228 _P0_6	=	0x0086
                           000087   229 _P0_7	=	0x0087
                           000088   230 _IT0	=	0x0088
                           000089   231 _IE0	=	0x0089
                           00008A   232 _IT1	=	0x008a
                           00008B   233 _IE1	=	0x008b
                           00008C   234 _TR0	=	0x008c
                           00008D   235 _TF0	=	0x008d
                           00008E   236 _TR1	=	0x008e
                           00008F   237 _TF1	=	0x008f
                           000090   238 _P1_0	=	0x0090
                           000091   239 _P1_1	=	0x0091
                           000092   240 _P1_2	=	0x0092
                           000093   241 _P1_3	=	0x0093
                           000094   242 _P1_4	=	0x0094
                           000095   243 _P1_5	=	0x0095
                           000096   244 _P1_6	=	0x0096
                           000097   245 _P1_7	=	0x0097
                           000098   246 _RI	=	0x0098
                           000099   247 _TI	=	0x0099
                           00009A   248 _RB8	=	0x009a
                           00009B   249 _TB8	=	0x009b
                           00009C   250 _REN	=	0x009c
                           00009D   251 _SM2	=	0x009d
                           00009E   252 _SM1	=	0x009e
                           00009F   253 _SM0	=	0x009f
                           0000A0   254 _P2_0	=	0x00a0
                           0000A1   255 _P2_1	=	0x00a1
                           0000A2   256 _P2_2	=	0x00a2
                           0000A3   257 _P2_3	=	0x00a3
                           0000A4   258 _P2_4	=	0x00a4
                           0000A5   259 _P2_5	=	0x00a5
                           0000A6   260 _P2_6	=	0x00a6
                           0000A7   261 _P2_7	=	0x00a7
                           0000A8   262 _EX0	=	0x00a8
                           0000A9   263 _ET0	=	0x00a9
                           0000AA   264 _EX1	=	0x00aa
                           0000AB   265 _ET1	=	0x00ab
                           0000AC   266 _ES	=	0x00ac
                           0000AF   267 _EA	=	0x00af
                           0000B0   268 _P3_0	=	0x00b0
                           0000B1   269 _P3_1	=	0x00b1
                           0000B2   270 _P3_2	=	0x00b2
                           0000B3   271 _P3_3	=	0x00b3
                           0000B4   272 _P3_4	=	0x00b4
                           0000B5   273 _P3_5	=	0x00b5
                           0000B6   274 _P3_6	=	0x00b6
                           0000B7   275 _P3_7	=	0x00b7
                           0000B0   276 _RXD	=	0x00b0
                           0000B1   277 _TXD	=	0x00b1
                           0000B2   278 _INT0	=	0x00b2
                           0000B3   279 _INT1	=	0x00b3
                           0000B4   280 _T0	=	0x00b4
                           0000B5   281 _T1	=	0x00b5
                           0000B6   282 _WR	=	0x00b6
                           0000B7   283 _RD	=	0x00b7
                           0000B8   284 _PX0	=	0x00b8
                           0000B9   285 _PT0	=	0x00b9
                           0000BA   286 _PX1	=	0x00ba
                           0000BB   287 _PT1	=	0x00bb
                           0000BC   288 _PS	=	0x00bc
                           0000D0   289 _P	=	0x00d0
                           0000D1   290 _F1	=	0x00d1
                           0000D2   291 _OV	=	0x00d2
                           0000D3   292 _RS0	=	0x00d3
                           0000D4   293 _RS1	=	0x00d4
                           0000D5   294 _F0	=	0x00d5
                           0000D6   295 _AC	=	0x00d6
                           0000D7   296 _CY	=	0x00d7
                           0000AD   297 _ET2	=	0x00ad
                           0000BD   298 _PT2	=	0x00bd
                           0000C8   299 _T2CON_0	=	0x00c8
                           0000C9   300 _T2CON_1	=	0x00c9
                           0000CA   301 _T2CON_2	=	0x00ca
                           0000CB   302 _T2CON_3	=	0x00cb
                           0000CC   303 _T2CON_4	=	0x00cc
                           0000CD   304 _T2CON_5	=	0x00cd
                           0000CE   305 _T2CON_6	=	0x00ce
                           0000CF   306 _T2CON_7	=	0x00cf
                           0000C8   307 _CP_RL2	=	0x00c8
                           0000C9   308 _C_T2	=	0x00c9
                           0000CA   309 _TR2	=	0x00ca
                           0000CB   310 _EXEN2	=	0x00cb
                           0000CC   311 _TCLK	=	0x00cc
                           0000CD   312 _RCLK	=	0x00cd
                           0000CE   313 _EXF2	=	0x00ce
                           0000CF   314 _TF2	=	0x00cf
                           0000D8   315 _CCF0	=	0x00d8
                           0000D9   316 _CCF1	=	0x00d9
                           0000DE   317 _CR	=	0x00de
                           0000DF   318 _CF	=	0x00df
                                    319 ;--------------------------------------------------------
                                    320 ; overlayable register banks
                                    321 ;--------------------------------------------------------
                                    322 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        323 	.ds 8
                                    324 ;--------------------------------------------------------
                                    325 ; internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area DSEG    (DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; overlayable items in internal ram 
                                    330 ;--------------------------------------------------------
                                    331 	.area	OSEG    (OVR,DATA)
                                    332 	.area	OSEG    (OVR,DATA)
                                    333 	.area	OSEG    (OVR,DATA)
      000014                        334 _memcmp_i_1_12:
      000014                        335 	.ds 2
                                    336 	.area	OSEG    (OVR,DATA)
                                    337 ;--------------------------------------------------------
                                    338 ; indirectly addressable internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area ISEG    (DATA)
                                    341 ;--------------------------------------------------------
                                    342 ; absolute internal ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area IABS    (ABS,DATA)
                                    345 	.area IABS    (ABS,DATA)
                                    346 ;--------------------------------------------------------
                                    347 ; bit data
                                    348 ;--------------------------------------------------------
                                    349 	.area BSEG    (BIT)
                                    350 ;--------------------------------------------------------
                                    351 ; paged external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area PSEG    (PAG,XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XSEG    (XDATA)
      0001A5                        358 _memset_PARM_2:
      0001A5                        359 	.ds 1
      0001A6                        360 _memset_PARM_3:
      0001A6                        361 	.ds 2
      0001A8                        362 _memset_buffer_1_6:
      0001A8                        363 	.ds 3
      0001AB                        364 _memset_s_1_7:
      0001AB                        365 	.ds 3
      0001AE                        366 _memcpy_PARM_2:
      0001AE                        367 	.ds 3
      0001B1                        368 _memcpy_PARM_3:
      0001B1                        369 	.ds 2
      0001B3                        370 _memcpy_dest_1_9:
      0001B3                        371 	.ds 3
      0001B6                        372 _memcpy_d_1_10:
      0001B6                        373 	.ds 3
      0001B9                        374 _memcpy_s_1_10:
      0001B9                        375 	.ds 3
      0001BC                        376 _memcmp_PARM_2:
      0001BC                        377 	.ds 3
      0001BF                        378 _memcmp_PARM_3:
      0001BF                        379 	.ds 2
      0001C1                        380 _memcmp_buf1_1_11:
      0001C1                        381 	.ds 3
      0001C4                        382 _memcmp_b1_1_12:
      0001C4                        383 	.ds 3
      0001C7                        384 _memcmp_b2_1_12:
      0001C7                        385 	.ds 3
      0001CA                        386 _strcpy_PARM_2:
      0001CA                        387 	.ds 3
      0001CD                        388 _strcpy_dest_1_16:
      0001CD                        389 	.ds 3
      0001D0                        390 _strcat_PARM_2:
      0001D0                        391 	.ds 1
      0001D1                        392 _strcat_str_1_18:
      0001D1                        393 	.ds 3
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
                                    429 ;Allocation info for local variables in function 'memset'
                                    430 ;------------------------------------------------------------
                                    431 ;c                         Allocated with name '_memset_PARM_2'
                                    432 ;count                     Allocated with name '_memset_PARM_3'
                                    433 ;buffer                    Allocated with name '_memset_buffer_1_6'
                                    434 ;s                         Allocated with name '_memset_s_1_7'
                                    435 ;i                         Allocated to registers r6 r7 
                                    436 ;------------------------------------------------------------
                                    437 ;	libc.c:5: void *memset(void *buffer,uchar c,uint count)
                                    438 ;	-----------------------------------------
                                    439 ;	 function memset
                                    440 ;	-----------------------------------------
      001444                        441 _memset:
                           000007   442 	ar7 = 0x07
                           000006   443 	ar6 = 0x06
                           000005   444 	ar5 = 0x05
                           000004   445 	ar4 = 0x04
                           000003   446 	ar3 = 0x03
                           000002   447 	ar2 = 0x02
                           000001   448 	ar1 = 0x01
                           000000   449 	ar0 = 0x00
      001444 AF F0            [24]  450 	mov	r7,b
      001446 AE 83            [24]  451 	mov	r6,dph
      001448 E5 82            [12]  452 	mov	a,dpl
      00144A 90 01 A8         [24]  453 	mov	dptr,#_memset_buffer_1_6
      00144D F0               [24]  454 	movx	@dptr,a
      00144E EE               [12]  455 	mov	a,r6
      00144F A3               [24]  456 	inc	dptr
      001450 F0               [24]  457 	movx	@dptr,a
      001451 EF               [12]  458 	mov	a,r7
      001452 A3               [24]  459 	inc	dptr
      001453 F0               [24]  460 	movx	@dptr,a
                                    461 ;	libc.c:8: uchar* s=(uchar*)buffer;
      001454 90 01 A8         [24]  462 	mov	dptr,#_memset_buffer_1_6
      001457 E0               [24]  463 	movx	a,@dptr
      001458 FD               [12]  464 	mov	r5,a
      001459 A3               [24]  465 	inc	dptr
      00145A E0               [24]  466 	movx	a,@dptr
      00145B FE               [12]  467 	mov	r6,a
      00145C A3               [24]  468 	inc	dptr
      00145D E0               [24]  469 	movx	a,@dptr
      00145E FF               [12]  470 	mov	r7,a
      00145F 90 01 AB         [24]  471 	mov	dptr,#_memset_s_1_7
      001462 ED               [12]  472 	mov	a,r5
      001463 F0               [24]  473 	movx	@dptr,a
      001464 EE               [12]  474 	mov	a,r6
      001465 A3               [24]  475 	inc	dptr
      001466 F0               [24]  476 	movx	@dptr,a
      001467 EF               [12]  477 	mov	a,r7
      001468 A3               [24]  478 	inc	dptr
      001469 F0               [24]  479 	movx	@dptr,a
                                    480 ;	libc.c:9: for (i=0;i<count;i++){
      00146A 7E 00            [12]  481 	mov	r6,#0x00
      00146C 7F 00            [12]  482 	mov	r7,#0x00
      00146E 90 01 AB         [24]  483 	mov	dptr,#_memset_s_1_7
      001471 E0               [24]  484 	movx	a,@dptr
      001472 FB               [12]  485 	mov	r3,a
      001473 A3               [24]  486 	inc	dptr
      001474 E0               [24]  487 	movx	a,@dptr
      001475 FC               [12]  488 	mov	r4,a
      001476 A3               [24]  489 	inc	dptr
      001477 E0               [24]  490 	movx	a,@dptr
      001478 FD               [12]  491 	mov	r5,a
      001479                        492 00103$:
      001479 90 01 A6         [24]  493 	mov	dptr,#_memset_PARM_3
      00147C E0               [24]  494 	movx	a,@dptr
      00147D F9               [12]  495 	mov	r1,a
      00147E A3               [24]  496 	inc	dptr
      00147F E0               [24]  497 	movx	a,@dptr
      001480 FA               [12]  498 	mov	r2,a
      001481 C3               [12]  499 	clr	c
      001482 EE               [12]  500 	mov	a,r6
      001483 99               [12]  501 	subb	a,r1
      001484 EF               [12]  502 	mov	a,r7
      001485 9A               [12]  503 	subb	a,r2
      001486 40 02            [24]  504 	jc	00102$
      001488 80 1A            [24]  505 	sjmp	00101$
      00148A                        506 00102$:
                                    507 ;	libc.c:10: *s=c;
      00148A 90 01 A5         [24]  508 	mov	dptr,#_memset_PARM_2
      00148D E0               [24]  509 	movx	a,@dptr
      00148E FA               [12]  510 	mov	r2,a
      00148F 8B 82            [24]  511 	mov	dpl,r3
      001491 8C 83            [24]  512 	mov	dph,r4
      001493 8D F0            [24]  513 	mov	b,r5
      001495 12 1F 03         [24]  514 	lcall	__gptrput
      001498 A3               [24]  515 	inc	dptr
      001499 AB 82            [24]  516 	mov	r3,dpl
      00149B AC 83            [24]  517 	mov	r4,dph
                                    518 ;	libc.c:11: s++;
                                    519 ;	libc.c:9: for (i=0;i<count;i++){
      00149D 0E               [12]  520 	inc	r6
      00149E BE 00 D8         [24]  521 	cjne	r6,#0x00,00103$
      0014A1 0F               [12]  522 	inc	r7
      0014A2 80 D5            [24]  523 	sjmp	00103$
      0014A4                        524 00101$:
                                    525 ;	libc.c:13: return buffer;
      0014A4 90 01 A8         [24]  526 	mov	dptr,#_memset_buffer_1_6
      0014A7 E0               [24]  527 	movx	a,@dptr
      0014A8 FD               [12]  528 	mov	r5,a
      0014A9 A3               [24]  529 	inc	dptr
      0014AA E0               [24]  530 	movx	a,@dptr
      0014AB FE               [12]  531 	mov	r6,a
      0014AC A3               [24]  532 	inc	dptr
      0014AD E0               [24]  533 	movx	a,@dptr
      0014AE FF               [12]  534 	mov	r7,a
      0014AF 8D 82            [24]  535 	mov	dpl,r5
      0014B1 8E 83            [24]  536 	mov	dph,r6
      0014B3 8F F0            [24]  537 	mov	b,r7
      0014B5 22               [24]  538 	ret
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'memcpy'
                                    541 ;------------------------------------------------------------
                                    542 ;src                       Allocated with name '_memcpy_PARM_2'
                                    543 ;count                     Allocated with name '_memcpy_PARM_3'
                                    544 ;dest                      Allocated with name '_memcpy_dest_1_9'
                                    545 ;d                         Allocated with name '_memcpy_d_1_10'
                                    546 ;s                         Allocated with name '_memcpy_s_1_10'
                                    547 ;i                         Allocated to registers r6 r7 
                                    548 ;------------------------------------------------------------
                                    549 ;	libc.c:15: void *memcpy(void *dest,void *src,uint count)
                                    550 ;	-----------------------------------------
                                    551 ;	 function memcpy
                                    552 ;	-----------------------------------------
      0014B6                        553 _memcpy:
      0014B6 AF F0            [24]  554 	mov	r7,b
      0014B8 AE 83            [24]  555 	mov	r6,dph
      0014BA E5 82            [12]  556 	mov	a,dpl
      0014BC 90 01 B3         [24]  557 	mov	dptr,#_memcpy_dest_1_9
      0014BF F0               [24]  558 	movx	@dptr,a
      0014C0 EE               [12]  559 	mov	a,r6
      0014C1 A3               [24]  560 	inc	dptr
      0014C2 F0               [24]  561 	movx	@dptr,a
      0014C3 EF               [12]  562 	mov	a,r7
      0014C4 A3               [24]  563 	inc	dptr
      0014C5 F0               [24]  564 	movx	@dptr,a
                                    565 ;	libc.c:19: d=(uchar*)dest;
      0014C6 90 01 B3         [24]  566 	mov	dptr,#_memcpy_dest_1_9
      0014C9 E0               [24]  567 	movx	a,@dptr
      0014CA FD               [12]  568 	mov	r5,a
      0014CB A3               [24]  569 	inc	dptr
      0014CC E0               [24]  570 	movx	a,@dptr
      0014CD FE               [12]  571 	mov	r6,a
      0014CE A3               [24]  572 	inc	dptr
      0014CF E0               [24]  573 	movx	a,@dptr
      0014D0 FF               [12]  574 	mov	r7,a
      0014D1 90 01 B6         [24]  575 	mov	dptr,#_memcpy_d_1_10
      0014D4 ED               [12]  576 	mov	a,r5
      0014D5 F0               [24]  577 	movx	@dptr,a
      0014D6 EE               [12]  578 	mov	a,r6
      0014D7 A3               [24]  579 	inc	dptr
      0014D8 F0               [24]  580 	movx	@dptr,a
      0014D9 EF               [12]  581 	mov	a,r7
      0014DA A3               [24]  582 	inc	dptr
      0014DB F0               [24]  583 	movx	@dptr,a
                                    584 ;	libc.c:20: s=(uchar*)src;
      0014DC 90 01 AE         [24]  585 	mov	dptr,#_memcpy_PARM_2
      0014DF E0               [24]  586 	movx	a,@dptr
      0014E0 FD               [12]  587 	mov	r5,a
      0014E1 A3               [24]  588 	inc	dptr
      0014E2 E0               [24]  589 	movx	a,@dptr
      0014E3 FE               [12]  590 	mov	r6,a
      0014E4 A3               [24]  591 	inc	dptr
      0014E5 E0               [24]  592 	movx	a,@dptr
      0014E6 FF               [12]  593 	mov	r7,a
      0014E7 90 01 B9         [24]  594 	mov	dptr,#_memcpy_s_1_10
      0014EA ED               [12]  595 	mov	a,r5
      0014EB F0               [24]  596 	movx	@dptr,a
      0014EC EE               [12]  597 	mov	a,r6
      0014ED A3               [24]  598 	inc	dptr
      0014EE F0               [24]  599 	movx	@dptr,a
      0014EF EF               [12]  600 	mov	a,r7
      0014F0 A3               [24]  601 	inc	dptr
      0014F1 F0               [24]  602 	movx	@dptr,a
                                    603 ;	libc.c:21: for (i=0;i<count;i++) d[i]=s[i];
      0014F2 7E 00            [12]  604 	mov	r6,#0x00
      0014F4 7F 00            [12]  605 	mov	r7,#0x00
      0014F6                        606 00103$:
      0014F6 90 01 B1         [24]  607 	mov	dptr,#_memcpy_PARM_3
      0014F9 E0               [24]  608 	movx	a,@dptr
      0014FA FC               [12]  609 	mov	r4,a
      0014FB A3               [24]  610 	inc	dptr
      0014FC E0               [24]  611 	movx	a,@dptr
      0014FD FD               [12]  612 	mov	r5,a
      0014FE C3               [12]  613 	clr	c
      0014FF EE               [12]  614 	mov	a,r6
      001500 9C               [12]  615 	subb	a,r4
      001501 EF               [12]  616 	mov	a,r7
      001502 9D               [12]  617 	subb	a,r5
      001503 40 02            [24]  618 	jc	00102$
      001505 80 3C            [24]  619 	sjmp	00101$
      001507                        620 00102$:
      001507 90 01 B6         [24]  621 	mov	dptr,#_memcpy_d_1_10
      00150A E0               [24]  622 	movx	a,@dptr
      00150B FB               [12]  623 	mov	r3,a
      00150C A3               [24]  624 	inc	dptr
      00150D E0               [24]  625 	movx	a,@dptr
      00150E FC               [12]  626 	mov	r4,a
      00150F A3               [24]  627 	inc	dptr
      001510 E0               [24]  628 	movx	a,@dptr
      001511 FD               [12]  629 	mov	r5,a
      001512 EE               [12]  630 	mov	a,r6
      001513 2B               [12]  631 	add	a,r3
      001514 FB               [12]  632 	mov	r3,a
      001515 EF               [12]  633 	mov	a,r7
      001516 3C               [12]  634 	addc	a,r4
      001517 FC               [12]  635 	mov	r4,a
      001518 90 01 B9         [24]  636 	mov	dptr,#_memcpy_s_1_10
      00151B E0               [24]  637 	movx	a,@dptr
      00151C F8               [12]  638 	mov	r0,a
      00151D A3               [24]  639 	inc	dptr
      00151E E0               [24]  640 	movx	a,@dptr
      00151F F9               [12]  641 	mov	r1,a
      001520 A3               [24]  642 	inc	dptr
      001521 E0               [24]  643 	movx	a,@dptr
      001522 FA               [12]  644 	mov	r2,a
      001523 EE               [12]  645 	mov	a,r6
      001524 28               [12]  646 	add	a,r0
      001525 F8               [12]  647 	mov	r0,a
      001526 EF               [12]  648 	mov	a,r7
      001527 39               [12]  649 	addc	a,r1
      001528 F9               [12]  650 	mov	r1,a
      001529 88 82            [24]  651 	mov	dpl,r0
      00152B 89 83            [24]  652 	mov	dph,r1
      00152D 8A F0            [24]  653 	mov	b,r2
      00152F 12 1F 3E         [24]  654 	lcall	__gptrget
      001532 F8               [12]  655 	mov	r0,a
      001533 8B 82            [24]  656 	mov	dpl,r3
      001535 8C 83            [24]  657 	mov	dph,r4
      001537 8D F0            [24]  658 	mov	b,r5
      001539 12 1F 03         [24]  659 	lcall	__gptrput
      00153C 0E               [12]  660 	inc	r6
      00153D BE 00 B6         [24]  661 	cjne	r6,#0x00,00103$
      001540 0F               [12]  662 	inc	r7
      001541 80 B3            [24]  663 	sjmp	00103$
      001543                        664 00101$:
                                    665 ;	libc.c:22: return dest;
      001543 90 01 B3         [24]  666 	mov	dptr,#_memcpy_dest_1_9
      001546 E0               [24]  667 	movx	a,@dptr
      001547 FD               [12]  668 	mov	r5,a
      001548 A3               [24]  669 	inc	dptr
      001549 E0               [24]  670 	movx	a,@dptr
      00154A FE               [12]  671 	mov	r6,a
      00154B A3               [24]  672 	inc	dptr
      00154C E0               [24]  673 	movx	a,@dptr
      00154D FF               [12]  674 	mov	r7,a
      00154E 8D 82            [24]  675 	mov	dpl,r5
      001550 8E 83            [24]  676 	mov	dph,r6
      001552 8F F0            [24]  677 	mov	b,r7
      001554 22               [24]  678 	ret
                                    679 ;------------------------------------------------------------
                                    680 ;Allocation info for local variables in function 'memcmp'
                                    681 ;------------------------------------------------------------
                                    682 ;buf2                      Allocated with name '_memcmp_PARM_2'
                                    683 ;count                     Allocated with name '_memcmp_PARM_3'
                                    684 ;buf1                      Allocated with name '_memcmp_buf1_1_11'
                                    685 ;b1                        Allocated with name '_memcmp_b1_1_12'
                                    686 ;b2                        Allocated with name '_memcmp_b2_1_12'
                                    687 ;i                         Allocated with name '_memcmp_i_1_12'
                                    688 ;------------------------------------------------------------
                                    689 ;	libc.c:24: int memcmp(void *buf1,void *buf2,uint count)
                                    690 ;	-----------------------------------------
                                    691 ;	 function memcmp
                                    692 ;	-----------------------------------------
      001555                        693 _memcmp:
      001555 AF F0            [24]  694 	mov	r7,b
      001557 AE 83            [24]  695 	mov	r6,dph
      001559 E5 82            [12]  696 	mov	a,dpl
      00155B 90 01 C1         [24]  697 	mov	dptr,#_memcmp_buf1_1_11
      00155E F0               [24]  698 	movx	@dptr,a
      00155F EE               [12]  699 	mov	a,r6
      001560 A3               [24]  700 	inc	dptr
      001561 F0               [24]  701 	movx	@dptr,a
      001562 EF               [12]  702 	mov	a,r7
      001563 A3               [24]  703 	inc	dptr
      001564 F0               [24]  704 	movx	@dptr,a
                                    705 ;	libc.c:28: b1=buf1;b2=buf2;
      001565 90 01 C1         [24]  706 	mov	dptr,#_memcmp_buf1_1_11
      001568 E0               [24]  707 	movx	a,@dptr
      001569 FD               [12]  708 	mov	r5,a
      00156A A3               [24]  709 	inc	dptr
      00156B E0               [24]  710 	movx	a,@dptr
      00156C FE               [12]  711 	mov	r6,a
      00156D A3               [24]  712 	inc	dptr
      00156E E0               [24]  713 	movx	a,@dptr
      00156F FF               [12]  714 	mov	r7,a
      001570 90 01 C4         [24]  715 	mov	dptr,#_memcmp_b1_1_12
      001573 ED               [12]  716 	mov	a,r5
      001574 F0               [24]  717 	movx	@dptr,a
      001575 EE               [12]  718 	mov	a,r6
      001576 A3               [24]  719 	inc	dptr
      001577 F0               [24]  720 	movx	@dptr,a
      001578 EF               [12]  721 	mov	a,r7
      001579 A3               [24]  722 	inc	dptr
      00157A F0               [24]  723 	movx	@dptr,a
      00157B 90 01 BC         [24]  724 	mov	dptr,#_memcmp_PARM_2
      00157E E0               [24]  725 	movx	a,@dptr
      00157F FD               [12]  726 	mov	r5,a
      001580 A3               [24]  727 	inc	dptr
      001581 E0               [24]  728 	movx	a,@dptr
      001582 FE               [12]  729 	mov	r6,a
      001583 A3               [24]  730 	inc	dptr
      001584 E0               [24]  731 	movx	a,@dptr
      001585 FF               [12]  732 	mov	r7,a
      001586 90 01 C7         [24]  733 	mov	dptr,#_memcmp_b2_1_12
      001589 ED               [12]  734 	mov	a,r5
      00158A F0               [24]  735 	movx	@dptr,a
      00158B EE               [12]  736 	mov	a,r6
      00158C A3               [24]  737 	inc	dptr
      00158D F0               [24]  738 	movx	@dptr,a
      00158E EF               [12]  739 	mov	a,r7
      00158F A3               [24]  740 	inc	dptr
      001590 F0               [24]  741 	movx	@dptr,a
                                    742 ;	libc.c:29: for (i=0;i<count;i++)
      001591 E4               [12]  743 	clr	a
      001592 F5 14            [12]  744 	mov	_memcmp_i_1_12,a
      001594 F5 15            [12]  745 	mov	(_memcmp_i_1_12 + 1),a
      001596 AC 14            [24]  746 	mov	r4,_memcmp_i_1_12
      001598 AD 15            [24]  747 	mov	r5,(_memcmp_i_1_12 + 1)
      00159A                        748 00107$:
      00159A 90 01 BF         [24]  749 	mov	dptr,#_memcmp_PARM_3
      00159D E0               [24]  750 	movx	a,@dptr
      00159E FA               [12]  751 	mov	r2,a
      00159F A3               [24]  752 	inc	dptr
      0015A0 E0               [24]  753 	movx	a,@dptr
      0015A1 FB               [12]  754 	mov	r3,a
      0015A2 C3               [12]  755 	clr	c
      0015A3 EC               [12]  756 	mov	a,r4
      0015A4 9A               [12]  757 	subb	a,r2
      0015A5 ED               [12]  758 	mov	a,r5
      0015A6 9B               [12]  759 	subb	a,r3
      0015A7 40 03            [24]  760 	jc	00106$
      0015A9 02 16 3E         [24]  761 	ljmp	00105$
      0015AC                        762 00106$:
                                    763 ;	libc.c:31: if (b1[i]==b2[i])
      0015AC 90 01 C4         [24]  764 	mov	dptr,#_memcmp_b1_1_12
      0015AF E0               [24]  765 	movx	a,@dptr
      0015B0 F9               [12]  766 	mov	r1,a
      0015B1 A3               [24]  767 	inc	dptr
      0015B2 E0               [24]  768 	movx	a,@dptr
      0015B3 FA               [12]  769 	mov	r2,a
      0015B4 A3               [24]  770 	inc	dptr
      0015B5 E0               [24]  771 	movx	a,@dptr
      0015B6 FB               [12]  772 	mov	r3,a
      0015B7 EC               [12]  773 	mov	a,r4
      0015B8 29               [12]  774 	add	a,r1
      0015B9 F9               [12]  775 	mov	r1,a
      0015BA ED               [12]  776 	mov	a,r5
      0015BB 3A               [12]  777 	addc	a,r2
      0015BC FA               [12]  778 	mov	r2,a
      0015BD 89 82            [24]  779 	mov	dpl,r1
      0015BF 8A 83            [24]  780 	mov	dph,r2
      0015C1 8B F0            [24]  781 	mov	b,r3
      0015C3 12 1F 3E         [24]  782 	lcall	__gptrget
      0015C6 F9               [12]  783 	mov	r1,a
      0015C7 90 01 C7         [24]  784 	mov	dptr,#_memcmp_b2_1_12
      0015CA E0               [24]  785 	movx	a,@dptr
      0015CB F8               [12]  786 	mov	r0,a
      0015CC A3               [24]  787 	inc	dptr
      0015CD E0               [24]  788 	movx	a,@dptr
      0015CE FA               [12]  789 	mov	r2,a
      0015CF A3               [24]  790 	inc	dptr
      0015D0 E0               [24]  791 	movx	a,@dptr
      0015D1 FB               [12]  792 	mov	r3,a
      0015D2 EC               [12]  793 	mov	a,r4
      0015D3 28               [12]  794 	add	a,r0
      0015D4 F8               [12]  795 	mov	r0,a
      0015D5 ED               [12]  796 	mov	a,r5
      0015D6 3A               [12]  797 	addc	a,r2
      0015D7 FA               [12]  798 	mov	r2,a
      0015D8 88 82            [24]  799 	mov	dpl,r0
      0015DA 8A 83            [24]  800 	mov	dph,r2
      0015DC 8B F0            [24]  801 	mov	b,r3
      0015DE 12 1F 3E         [24]  802 	lcall	__gptrget
      0015E1 F8               [12]  803 	mov	r0,a
      0015E2 E9               [12]  804 	mov	a,r1
      0015E3 B5 00 02         [24]  805 	cjne	a,ar0,00118$
      0015E6 80 4A            [24]  806 	sjmp	00104$
      0015E8                        807 00118$:
                                    808 ;	libc.c:33: continue;
                                    809 ;	libc.c:35: return (int)(b1[i]-b2[i]);
      0015E8 90 01 C4         [24]  810 	mov	dptr,#_memcmp_b1_1_12
      0015EB E0               [24]  811 	movx	a,@dptr
      0015EC F9               [12]  812 	mov	r1,a
      0015ED A3               [24]  813 	inc	dptr
      0015EE E0               [24]  814 	movx	a,@dptr
      0015EF FA               [12]  815 	mov	r2,a
      0015F0 A3               [24]  816 	inc	dptr
      0015F1 E0               [24]  817 	movx	a,@dptr
      0015F2 FB               [12]  818 	mov	r3,a
      0015F3 E5 14            [12]  819 	mov	a,_memcmp_i_1_12
      0015F5 29               [12]  820 	add	a,r1
      0015F6 F9               [12]  821 	mov	r1,a
      0015F7 E5 15            [12]  822 	mov	a,(_memcmp_i_1_12 + 1)
      0015F9 3A               [12]  823 	addc	a,r2
      0015FA FA               [12]  824 	mov	r2,a
      0015FB 89 82            [24]  825 	mov	dpl,r1
      0015FD 8A 83            [24]  826 	mov	dph,r2
      0015FF 8B F0            [24]  827 	mov	b,r3
      001601 12 1F 3E         [24]  828 	lcall	__gptrget
      001604 F9               [12]  829 	mov	r1,a
      001605 7B 00            [12]  830 	mov	r3,#0x00
      001607 90 01 C7         [24]  831 	mov	dptr,#_memcmp_b2_1_12
      00160A E0               [24]  832 	movx	a,@dptr
      00160B F8               [12]  833 	mov	r0,a
      00160C A3               [24]  834 	inc	dptr
      00160D E0               [24]  835 	movx	a,@dptr
      00160E FA               [12]  836 	mov	r2,a
      00160F A3               [24]  837 	inc	dptr
      001610 E0               [24]  838 	movx	a,@dptr
      001611 FF               [12]  839 	mov	r7,a
      001612 E5 14            [12]  840 	mov	a,_memcmp_i_1_12
      001614 28               [12]  841 	add	a,r0
      001615 F8               [12]  842 	mov	r0,a
      001616 E5 15            [12]  843 	mov	a,(_memcmp_i_1_12 + 1)
      001618 3A               [12]  844 	addc	a,r2
      001619 FA               [12]  845 	mov	r2,a
      00161A 88 82            [24]  846 	mov	dpl,r0
      00161C 8A 83            [24]  847 	mov	dph,r2
      00161E 8F F0            [24]  848 	mov	b,r7
      001620 12 1F 3E         [24]  849 	lcall	__gptrget
      001623 F8               [12]  850 	mov	r0,a
      001624 7F 00            [12]  851 	mov	r7,#0x00
      001626 E9               [12]  852 	mov	a,r1
      001627 C3               [12]  853 	clr	c
      001628 98               [12]  854 	subb	a,r0
      001629 F9               [12]  855 	mov	r1,a
      00162A EB               [12]  856 	mov	a,r3
      00162B 9F               [12]  857 	subb	a,r7
      00162C FB               [12]  858 	mov	r3,a
      00162D 89 82            [24]  859 	mov	dpl,r1
      00162F 8B 83            [24]  860 	mov	dph,r3
      001631 22               [24]  861 	ret
      001632                        862 00104$:
                                    863 ;	libc.c:29: for (i=0;i<count;i++)
      001632 0C               [12]  864 	inc	r4
      001633 BC 00 01         [24]  865 	cjne	r4,#0x00,00119$
      001636 0D               [12]  866 	inc	r5
      001637                        867 00119$:
      001637 8C 14            [24]  868 	mov	_memcmp_i_1_12,r4
      001639 8D 15            [24]  869 	mov	(_memcmp_i_1_12 + 1),r5
      00163B 02 15 9A         [24]  870 	ljmp	00107$
      00163E                        871 00105$:
                                    872 ;	libc.c:38: return 0;
      00163E 90 00 00         [24]  873 	mov	dptr,#0x0000
      001641 22               [24]  874 	ret
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'strcpy'
                                    877 ;------------------------------------------------------------
                                    878 ;src                       Allocated with name '_strcpy_PARM_2'
                                    879 ;dest                      Allocated with name '_strcpy_dest_1_16'
                                    880 ;i                         Allocated to registers r6 r7 
                                    881 ;------------------------------------------------------------
                                    882 ;	libc.c:40: char *strcpy(char* dest,char *src)
                                    883 ;	-----------------------------------------
                                    884 ;	 function strcpy
                                    885 ;	-----------------------------------------
      001642                        886 _strcpy:
      001642 AF F0            [24]  887 	mov	r7,b
      001644 AE 83            [24]  888 	mov	r6,dph
      001646 E5 82            [12]  889 	mov	a,dpl
      001648 90 01 CD         [24]  890 	mov	dptr,#_strcpy_dest_1_16
      00164B F0               [24]  891 	movx	@dptr,a
      00164C EE               [12]  892 	mov	a,r6
      00164D A3               [24]  893 	inc	dptr
      00164E F0               [24]  894 	movx	@dptr,a
      00164F EF               [12]  895 	mov	a,r7
      001650 A3               [24]  896 	inc	dptr
      001651 F0               [24]  897 	movx	@dptr,a
                                    898 ;	libc.c:43: for (i=0;src[i]!='\0';i++) dest[i]=src[i];
      001652 7E 00            [12]  899 	mov	r6,#0x00
      001654 7F 00            [12]  900 	mov	r7,#0x00
      001656                        901 00103$:
      001656 90 01 CA         [24]  902 	mov	dptr,#_strcpy_PARM_2
      001659 E0               [24]  903 	movx	a,@dptr
      00165A FB               [12]  904 	mov	r3,a
      00165B A3               [24]  905 	inc	dptr
      00165C E0               [24]  906 	movx	a,@dptr
      00165D FC               [12]  907 	mov	r4,a
      00165E A3               [24]  908 	inc	dptr
      00165F E0               [24]  909 	movx	a,@dptr
      001660 FD               [12]  910 	mov	r5,a
      001661 EE               [12]  911 	mov	a,r6
      001662 2B               [12]  912 	add	a,r3
      001663 FB               [12]  913 	mov	r3,a
      001664 EF               [12]  914 	mov	a,r7
      001665 3C               [12]  915 	addc	a,r4
      001666 FC               [12]  916 	mov	r4,a
      001667 8B 82            [24]  917 	mov	dpl,r3
      001669 8C 83            [24]  918 	mov	dph,r4
      00166B 8D F0            [24]  919 	mov	b,r5
      00166D 12 1F 3E         [24]  920 	lcall	__gptrget
      001670 FB               [12]  921 	mov	r3,a
      001671 60 3C            [24]  922 	jz	00101$
      001673 90 01 CD         [24]  923 	mov	dptr,#_strcpy_dest_1_16
      001676 E0               [24]  924 	movx	a,@dptr
      001677 FB               [12]  925 	mov	r3,a
      001678 A3               [24]  926 	inc	dptr
      001679 E0               [24]  927 	movx	a,@dptr
      00167A FC               [12]  928 	mov	r4,a
      00167B A3               [24]  929 	inc	dptr
      00167C E0               [24]  930 	movx	a,@dptr
      00167D FD               [12]  931 	mov	r5,a
      00167E EE               [12]  932 	mov	a,r6
      00167F 2B               [12]  933 	add	a,r3
      001680 FB               [12]  934 	mov	r3,a
      001681 EF               [12]  935 	mov	a,r7
      001682 3C               [12]  936 	addc	a,r4
      001683 FC               [12]  937 	mov	r4,a
      001684 90 01 CA         [24]  938 	mov	dptr,#_strcpy_PARM_2
      001687 E0               [24]  939 	movx	a,@dptr
      001688 F8               [12]  940 	mov	r0,a
      001689 A3               [24]  941 	inc	dptr
      00168A E0               [24]  942 	movx	a,@dptr
      00168B F9               [12]  943 	mov	r1,a
      00168C A3               [24]  944 	inc	dptr
      00168D E0               [24]  945 	movx	a,@dptr
      00168E FA               [12]  946 	mov	r2,a
      00168F EE               [12]  947 	mov	a,r6
      001690 28               [12]  948 	add	a,r0
      001691 F8               [12]  949 	mov	r0,a
      001692 EF               [12]  950 	mov	a,r7
      001693 39               [12]  951 	addc	a,r1
      001694 F9               [12]  952 	mov	r1,a
      001695 88 82            [24]  953 	mov	dpl,r0
      001697 89 83            [24]  954 	mov	dph,r1
      001699 8A F0            [24]  955 	mov	b,r2
      00169B 12 1F 3E         [24]  956 	lcall	__gptrget
      00169E F8               [12]  957 	mov	r0,a
      00169F 8B 82            [24]  958 	mov	dpl,r3
      0016A1 8C 83            [24]  959 	mov	dph,r4
      0016A3 8D F0            [24]  960 	mov	b,r5
      0016A5 12 1F 03         [24]  961 	lcall	__gptrput
      0016A8 0E               [12]  962 	inc	r6
      0016A9 BE 00 AA         [24]  963 	cjne	r6,#0x00,00103$
      0016AC 0F               [12]  964 	inc	r7
      0016AD 80 A7            [24]  965 	sjmp	00103$
      0016AF                        966 00101$:
                                    967 ;	libc.c:44: return dest;
      0016AF 90 01 CD         [24]  968 	mov	dptr,#_strcpy_dest_1_16
      0016B2 E0               [24]  969 	movx	a,@dptr
      0016B3 FD               [12]  970 	mov	r5,a
      0016B4 A3               [24]  971 	inc	dptr
      0016B5 E0               [24]  972 	movx	a,@dptr
      0016B6 FE               [12]  973 	mov	r6,a
      0016B7 A3               [24]  974 	inc	dptr
      0016B8 E0               [24]  975 	movx	a,@dptr
      0016B9 FF               [12]  976 	mov	r7,a
      0016BA 8D 82            [24]  977 	mov	dpl,r5
      0016BC 8E 83            [24]  978 	mov	dph,r6
      0016BE 8F F0            [24]  979 	mov	b,r7
      0016C0 22               [24]  980 	ret
                                    981 ;------------------------------------------------------------
                                    982 ;Allocation info for local variables in function 'strcat'
                                    983 ;------------------------------------------------------------
                                    984 ;d                         Allocated with name '_strcat_PARM_2'
                                    985 ;str                       Allocated with name '_strcat_str_1_18'
                                    986 ;------------------------------------------------------------
                                    987 ;	libc.c:46: uchar *strcat(uchar *str,uchar d)
                                    988 ;	-----------------------------------------
                                    989 ;	 function strcat
                                    990 ;	-----------------------------------------
      0016C1                        991 _strcat:
      0016C1 AF F0            [24]  992 	mov	r7,b
      0016C3 AE 83            [24]  993 	mov	r6,dph
      0016C5 E5 82            [12]  994 	mov	a,dpl
      0016C7 90 01 D1         [24]  995 	mov	dptr,#_strcat_str_1_18
      0016CA F0               [24]  996 	movx	@dptr,a
      0016CB EE               [12]  997 	mov	a,r6
      0016CC A3               [24]  998 	inc	dptr
      0016CD F0               [24]  999 	movx	@dptr,a
      0016CE EF               [12] 1000 	mov	a,r7
      0016CF A3               [24] 1001 	inc	dptr
      0016D0 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	libc.c:49: *str=d;
      0016D1 90 01 D1         [24] 1004 	mov	dptr,#_strcat_str_1_18
      0016D4 E0               [24] 1005 	movx	a,@dptr
      0016D5 FD               [12] 1006 	mov	r5,a
      0016D6 A3               [24] 1007 	inc	dptr
      0016D7 E0               [24] 1008 	movx	a,@dptr
      0016D8 FE               [12] 1009 	mov	r6,a
      0016D9 A3               [24] 1010 	inc	dptr
      0016DA E0               [24] 1011 	movx	a,@dptr
      0016DB FF               [12] 1012 	mov	r7,a
      0016DC                       1013 00103$:
                                   1014 ;	libc.c:48: for(;*str!=0;str++);
      0016DC 8D 82            [24] 1015 	mov	dpl,r5
      0016DE 8E 83            [24] 1016 	mov	dph,r6
      0016E0 8F F0            [24] 1017 	mov	b,r7
      0016E2 12 1F 3E         [24] 1018 	lcall	__gptrget
      0016E5 FC               [12] 1019 	mov	r4,a
      0016E6 60 12            [24] 1020 	jz	00108$
      0016E8 0D               [12] 1021 	inc	r5
      0016E9 BD 00 01         [24] 1022 	cjne	r5,#0x00,00112$
      0016EC 0E               [12] 1023 	inc	r6
      0016ED                       1024 00112$:
      0016ED 90 01 D1         [24] 1025 	mov	dptr,#_strcat_str_1_18
      0016F0 ED               [12] 1026 	mov	a,r5
      0016F1 F0               [24] 1027 	movx	@dptr,a
      0016F2 EE               [12] 1028 	mov	a,r6
      0016F3 A3               [24] 1029 	inc	dptr
      0016F4 F0               [24] 1030 	movx	@dptr,a
      0016F5 EF               [12] 1031 	mov	a,r7
      0016F6 A3               [24] 1032 	inc	dptr
      0016F7 F0               [24] 1033 	movx	@dptr,a
      0016F8 80 E2            [24] 1034 	sjmp	00103$
      0016FA                       1035 00108$:
      0016FA 90 01 D1         [24] 1036 	mov	dptr,#_strcat_str_1_18
      0016FD ED               [12] 1037 	mov	a,r5
      0016FE F0               [24] 1038 	movx	@dptr,a
      0016FF EE               [12] 1039 	mov	a,r6
      001700 A3               [24] 1040 	inc	dptr
      001701 F0               [24] 1041 	movx	@dptr,a
      001702 EF               [12] 1042 	mov	a,r7
      001703 A3               [24] 1043 	inc	dptr
      001704 F0               [24] 1044 	movx	@dptr,a
                                   1045 ;	libc.c:49: *str=d;
      001705 90 01 D1         [24] 1046 	mov	dptr,#_strcat_str_1_18
      001708 E0               [24] 1047 	movx	a,@dptr
      001709 FD               [12] 1048 	mov	r5,a
      00170A A3               [24] 1049 	inc	dptr
      00170B E0               [24] 1050 	movx	a,@dptr
      00170C FE               [12] 1051 	mov	r6,a
      00170D A3               [24] 1052 	inc	dptr
      00170E E0               [24] 1053 	movx	a,@dptr
      00170F FF               [12] 1054 	mov	r7,a
      001710 90 01 D0         [24] 1055 	mov	dptr,#_strcat_PARM_2
      001713 E0               [24] 1056 	movx	a,@dptr
      001714 8D 82            [24] 1057 	mov	dpl,r5
      001716 8E 83            [24] 1058 	mov	dph,r6
      001718 8F F0            [24] 1059 	mov	b,r7
      00171A 12 1F 03         [24] 1060 	lcall	__gptrput
                                   1061 ;	libc.c:50: str++;
      00171D 90 01 D1         [24] 1062 	mov	dptr,#_strcat_str_1_18
      001720 74 01            [12] 1063 	mov	a,#0x01
      001722 2D               [12] 1064 	add	a,r5
      001723 F0               [24] 1065 	movx	@dptr,a
      001724 E4               [12] 1066 	clr	a
      001725 3E               [12] 1067 	addc	a,r6
      001726 A3               [24] 1068 	inc	dptr
      001727 F0               [24] 1069 	movx	@dptr,a
      001728 EF               [12] 1070 	mov	a,r7
      001729 A3               [24] 1071 	inc	dptr
      00172A F0               [24] 1072 	movx	@dptr,a
                                   1073 ;	libc.c:51: *str=0;
      00172B 90 01 D1         [24] 1074 	mov	dptr,#_strcat_str_1_18
      00172E E0               [24] 1075 	movx	a,@dptr
      00172F FD               [12] 1076 	mov	r5,a
      001730 A3               [24] 1077 	inc	dptr
      001731 E0               [24] 1078 	movx	a,@dptr
      001732 FE               [12] 1079 	mov	r6,a
      001733 A3               [24] 1080 	inc	dptr
      001734 E0               [24] 1081 	movx	a,@dptr
      001735 FF               [12] 1082 	mov	r7,a
      001736 8D 82            [24] 1083 	mov	dpl,r5
      001738 8E 83            [24] 1084 	mov	dph,r6
      00173A 8F F0            [24] 1085 	mov	b,r7
      00173C E4               [12] 1086 	clr	a
      00173D 12 1F 03         [24] 1087 	lcall	__gptrput
                                   1088 ;	libc.c:52: return str;
      001740 8D 82            [24] 1089 	mov	dpl,r5
      001742 8E 83            [24] 1090 	mov	dph,r6
      001744 8F F0            [24] 1091 	mov	b,r7
      001746 22               [24] 1092 	ret
                                   1093 	.area CSEG    (CODE)
                                   1094 	.area CONST   (CODE)
                                   1095 	.area XINIT   (CODE)
                                   1096 	.area CABS    (ABS,CODE)
