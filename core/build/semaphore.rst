                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (May  7 2016) (Linux)
                                      4 ; This file was generated Wed Sep 21 13:59:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module semaphore
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _release_semaphore
                                     13 	.globl _get_semaphore
                                     14 	.globl _semaphore_init
                                     15 	.globl _display
                                     16 	.globl _schedule
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
                                    159 	.globl _ready_list
                                    160 	.globl _semaphore
                                    161 ;--------------------------------------------------------
                                    162 ; special function registers
                                    163 ;--------------------------------------------------------
                                    164 	.area RSEG    (ABS,DATA)
      000000                        165 	.org 0x0000
                           000080   166 _P0	=	0x0080
                           000081   167 _SP	=	0x0081
                           000082   168 _DPL	=	0x0082
                           000083   169 _DPH	=	0x0083
                           000087   170 _PCON	=	0x0087
                           000088   171 _TCON	=	0x0088
                           000089   172 _TMOD	=	0x0089
                           00008A   173 _TL0	=	0x008a
                           00008B   174 _TL1	=	0x008b
                           00008C   175 _TH0	=	0x008c
                           00008D   176 _TH1	=	0x008d
                           000090   177 _P1	=	0x0090
                           000098   178 _SCON	=	0x0098
                           000099   179 _SBUF	=	0x0099
                           0000A0   180 _P2	=	0x00a0
                           0000A8   181 _IE	=	0x00a8
                           0000B0   182 _P3	=	0x00b0
                           0000B8   183 _IP	=	0x00b8
                           0000D0   184 _PSW	=	0x00d0
                           0000E0   185 _ACC	=	0x00e0
                           0000F0   186 _B	=	0x00f0
                           0000C8   187 _T2CON	=	0x00c8
                           0000CA   188 _RCAP2L	=	0x00ca
                           0000CB   189 _RCAP2H	=	0x00cb
                           0000CC   190 _TL2	=	0x00cc
                           0000CD   191 _TH2	=	0x00cd
                           00008E   192 _AUXR	=	0x008e
                           0000A2   193 _AUXR1	=	0x00a2
                           00009A   194 _S2CON	=	0x009a
                           00009B   195 _S2BUF	=	0x009b
                           0000AF   196 _IE2	=	0x00af
                           00009C   197 _BRT	=	0x009c
                           00008F   198 _WAKE_CLKO	=	0x008f
                           0000D8   199 _CCON	=	0x00d8
                           0000D9   200 _CMOD	=	0x00d9
                           0000DA   201 _CCAPM0	=	0x00da
                           0000DB   202 _CCAPM1	=	0x00db
                           0000E9   203 _CL	=	0x00e9
                           0000F9   204 _CH	=	0x00f9
                           0000EA   205 _CCAP0L	=	0x00ea
                           0000FA   206 _CCAP0H	=	0x00fa
                           0000EB   207 _CCAP1L	=	0x00eb
                           0000FB   208 _CCAP1H	=	0x00fb
                           0000F2   209 _PCA_PWM0	=	0x00f2
                           0000F3   210 _PCA_PWM1	=	0x00f3
                                    211 ;--------------------------------------------------------
                                    212 ; special function bits
                                    213 ;--------------------------------------------------------
                                    214 	.area RSEG    (ABS,DATA)
      000000                        215 	.org 0x0000
                           000080   216 _P0_0	=	0x0080
                           000081   217 _P0_1	=	0x0081
                           000082   218 _P0_2	=	0x0082
                           000083   219 _P0_3	=	0x0083
                           000084   220 _P0_4	=	0x0084
                           000085   221 _P0_5	=	0x0085
                           000086   222 _P0_6	=	0x0086
                           000087   223 _P0_7	=	0x0087
                           000088   224 _IT0	=	0x0088
                           000089   225 _IE0	=	0x0089
                           00008A   226 _IT1	=	0x008a
                           00008B   227 _IE1	=	0x008b
                           00008C   228 _TR0	=	0x008c
                           00008D   229 _TF0	=	0x008d
                           00008E   230 _TR1	=	0x008e
                           00008F   231 _TF1	=	0x008f
                           000090   232 _P1_0	=	0x0090
                           000091   233 _P1_1	=	0x0091
                           000092   234 _P1_2	=	0x0092
                           000093   235 _P1_3	=	0x0093
                           000094   236 _P1_4	=	0x0094
                           000095   237 _P1_5	=	0x0095
                           000096   238 _P1_6	=	0x0096
                           000097   239 _P1_7	=	0x0097
                           000098   240 _RI	=	0x0098
                           000099   241 _TI	=	0x0099
                           00009A   242 _RB8	=	0x009a
                           00009B   243 _TB8	=	0x009b
                           00009C   244 _REN	=	0x009c
                           00009D   245 _SM2	=	0x009d
                           00009E   246 _SM1	=	0x009e
                           00009F   247 _SM0	=	0x009f
                           0000A0   248 _P2_0	=	0x00a0
                           0000A1   249 _P2_1	=	0x00a1
                           0000A2   250 _P2_2	=	0x00a2
                           0000A3   251 _P2_3	=	0x00a3
                           0000A4   252 _P2_4	=	0x00a4
                           0000A5   253 _P2_5	=	0x00a5
                           0000A6   254 _P2_6	=	0x00a6
                           0000A7   255 _P2_7	=	0x00a7
                           0000A8   256 _EX0	=	0x00a8
                           0000A9   257 _ET0	=	0x00a9
                           0000AA   258 _EX1	=	0x00aa
                           0000AB   259 _ET1	=	0x00ab
                           0000AC   260 _ES	=	0x00ac
                           0000AF   261 _EA	=	0x00af
                           0000B0   262 _P3_0	=	0x00b0
                           0000B1   263 _P3_1	=	0x00b1
                           0000B2   264 _P3_2	=	0x00b2
                           0000B3   265 _P3_3	=	0x00b3
                           0000B4   266 _P3_4	=	0x00b4
                           0000B5   267 _P3_5	=	0x00b5
                           0000B6   268 _P3_6	=	0x00b6
                           0000B7   269 _P3_7	=	0x00b7
                           0000B0   270 _RXD	=	0x00b0
                           0000B1   271 _TXD	=	0x00b1
                           0000B2   272 _INT0	=	0x00b2
                           0000B3   273 _INT1	=	0x00b3
                           0000B4   274 _T0	=	0x00b4
                           0000B5   275 _T1	=	0x00b5
                           0000B6   276 _WR	=	0x00b6
                           0000B7   277 _RD	=	0x00b7
                           0000B8   278 _PX0	=	0x00b8
                           0000B9   279 _PT0	=	0x00b9
                           0000BA   280 _PX1	=	0x00ba
                           0000BB   281 _PT1	=	0x00bb
                           0000BC   282 _PS	=	0x00bc
                           0000D0   283 _P	=	0x00d0
                           0000D1   284 _F1	=	0x00d1
                           0000D2   285 _OV	=	0x00d2
                           0000D3   286 _RS0	=	0x00d3
                           0000D4   287 _RS1	=	0x00d4
                           0000D5   288 _F0	=	0x00d5
                           0000D6   289 _AC	=	0x00d6
                           0000D7   290 _CY	=	0x00d7
                           0000AD   291 _ET2	=	0x00ad
                           0000BD   292 _PT2	=	0x00bd
                           0000C8   293 _T2CON_0	=	0x00c8
                           0000C9   294 _T2CON_1	=	0x00c9
                           0000CA   295 _T2CON_2	=	0x00ca
                           0000CB   296 _T2CON_3	=	0x00cb
                           0000CC   297 _T2CON_4	=	0x00cc
                           0000CD   298 _T2CON_5	=	0x00cd
                           0000CE   299 _T2CON_6	=	0x00ce
                           0000CF   300 _T2CON_7	=	0x00cf
                           0000C8   301 _CP_RL2	=	0x00c8
                           0000C9   302 _C_T2	=	0x00c9
                           0000CA   303 _TR2	=	0x00ca
                           0000CB   304 _EXEN2	=	0x00cb
                           0000CC   305 _TCLK	=	0x00cc
                           0000CD   306 _RCLK	=	0x00cd
                           0000CE   307 _EXF2	=	0x00ce
                           0000CF   308 _TF2	=	0x00cf
                           0000D8   309 _CCF0	=	0x00d8
                           0000D9   310 _CCF1	=	0x00d9
                           0000DE   311 _CR	=	0x00de
                           0000DF   312 _CF	=	0x00df
                                    313 ;--------------------------------------------------------
                                    314 ; overlayable register banks
                                    315 ;--------------------------------------------------------
                                    316 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        317 	.ds 8
                                    318 ;--------------------------------------------------------
                                    319 ; internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area DSEG    (DATA)
                                    322 ;--------------------------------------------------------
                                    323 ; overlayable items in internal ram 
                                    324 ;--------------------------------------------------------
                                    325 ;--------------------------------------------------------
                                    326 ; indirectly addressable internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area ISEG    (DATA)
                                    329 ;--------------------------------------------------------
                                    330 ; absolute internal ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area IABS    (ABS,DATA)
                                    333 	.area IABS    (ABS,DATA)
                                    334 ;--------------------------------------------------------
                                    335 ; bit data
                                    336 ;--------------------------------------------------------
                                    337 	.area BSEG    (BIT)
                                    338 ;--------------------------------------------------------
                                    339 ; paged external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area PSEG    (PAG,XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XSEG    (XDATA)
      000105                        346 _semaphore_init_n_1_16:
      000105                        347 	.ds 2
      000107                        348 _get_semaphore_n_1_18:
      000107                        349 	.ds 2
      000109                        350 _release_semaphore_n_1_22:
      000109                        351 	.ds 2
                                    352 ;--------------------------------------------------------
                                    353 ; absolute external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XABS    (ABS,XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; external initialized ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XISEG   (XDATA)
      0003AB                        360 _semaphore::
      0003AB                        361 	.ds 16
      0003BB                        362 _ready_list::
      0003BB                        363 	.ds 16
                                    364 	.area HOME    (CODE)
                                    365 	.area GSINIT0 (CODE)
                                    366 	.area GSINIT1 (CODE)
                                    367 	.area GSINIT2 (CODE)
                                    368 	.area GSINIT3 (CODE)
                                    369 	.area GSINIT4 (CODE)
                                    370 	.area GSINIT5 (CODE)
                                    371 	.area GSINIT  (CODE)
                                    372 	.area GSFINAL (CODE)
                                    373 	.area CSEG    (CODE)
                                    374 ;--------------------------------------------------------
                                    375 ; global & static initialisations
                                    376 ;--------------------------------------------------------
                                    377 	.area HOME    (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 	.area GSFINAL (CODE)
                                    380 	.area GSINIT  (CODE)
                                    381 ;--------------------------------------------------------
                                    382 ; Home
                                    383 ;--------------------------------------------------------
                                    384 	.area HOME    (CODE)
                                    385 	.area HOME    (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; code
                                    388 ;--------------------------------------------------------
                                    389 	.area CSEG    (CODE)
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'semaphore_init'
                                    392 ;------------------------------------------------------------
                                    393 ;n                         Allocated with name '_semaphore_init_n_1_16'
                                    394 ;------------------------------------------------------------
                                    395 ;	semaphore.c:8: void semaphore_init(uint n)	//n为将要初始化的信号量
                                    396 ;	-----------------------------------------
                                    397 ;	 function semaphore_init
                                    398 ;	-----------------------------------------
      000F85                        399 _semaphore_init:
                           000007   400 	ar7 = 0x07
                           000006   401 	ar6 = 0x06
                           000005   402 	ar5 = 0x05
                           000004   403 	ar4 = 0x04
                           000003   404 	ar3 = 0x03
                           000002   405 	ar2 = 0x02
                           000001   406 	ar1 = 0x01
                           000000   407 	ar0 = 0x00
      000F85 AF 83            [24]  408 	mov	r7,dph
      000F87 E5 82            [12]  409 	mov	a,dpl
      000F89 90 01 05         [24]  410 	mov	dptr,#_semaphore_init_n_1_16
      000F8C F0               [24]  411 	movx	@dptr,a
      000F8D EF               [12]  412 	mov	a,r7
      000F8E A3               [24]  413 	inc	dptr
      000F8F F0               [24]  414 	movx	@dptr,a
                                    415 ;	semaphore.c:10: semaphore[n]=1;
      000F90 90 01 05         [24]  416 	mov	dptr,#_semaphore_init_n_1_16
      000F93 E0               [24]  417 	movx	a,@dptr
      000F94 FE               [12]  418 	mov	r6,a
      000F95 A3               [24]  419 	inc	dptr
      000F96 E0               [24]  420 	movx	a,@dptr
      000F97 FF               [12]  421 	mov	r7,a
      000F98 EE               [12]  422 	mov	a,r6
      000F99 24 AB            [12]  423 	add	a,#_semaphore
      000F9B F5 82            [12]  424 	mov	dpl,a
      000F9D EF               [12]  425 	mov	a,r7
      000F9E 34 03            [12]  426 	addc	a,#(_semaphore >> 8)
      000FA0 F5 83            [12]  427 	mov	dph,a
      000FA2 74 01            [12]  428 	mov	a,#0x01
      000FA4 F0               [24]  429 	movx	@dptr,a
                                    430 ;	semaphore.c:11: ready_list[n]=0;
      000FA5 EE               [12]  431 	mov	a,r6
      000FA6 24 BB            [12]  432 	add	a,#_ready_list
      000FA8 F5 82            [12]  433 	mov	dpl,a
      000FAA EF               [12]  434 	mov	a,r7
      000FAB 34 03            [12]  435 	addc	a,#(_ready_list >> 8)
      000FAD F5 83            [12]  436 	mov	dph,a
      000FAF E4               [12]  437 	clr	a
      000FB0 F0               [24]  438 	movx	@dptr,a
                                    439 ;	semaphore.c:12: return;
      000FB1 22               [24]  440 	ret
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'get_semaphore'
                                    443 ;------------------------------------------------------------
                                    444 ;n                         Allocated with name '_get_semaphore_n_1_18'
                                    445 ;------------------------------------------------------------
                                    446 ;	semaphore.c:17: void get_semaphore(uint n)
                                    447 ;	-----------------------------------------
                                    448 ;	 function get_semaphore
                                    449 ;	-----------------------------------------
      000FB2                        450 _get_semaphore:
      000FB2 AF 83            [24]  451 	mov	r7,dph
      000FB4 E5 82            [12]  452 	mov	a,dpl
      000FB6 90 01 07         [24]  453 	mov	dptr,#_get_semaphore_n_1_18
      000FB9 F0               [24]  454 	movx	@dptr,a
      000FBA EF               [12]  455 	mov	a,r7
      000FBB A3               [24]  456 	inc	dptr
      000FBC F0               [24]  457 	movx	@dptr,a
                                    458 ;	semaphore.c:19: if(n>16){	//防止n>16
      000FBD 90 01 07         [24]  459 	mov	dptr,#_get_semaphore_n_1_18
      000FC0 E0               [24]  460 	movx	a,@dptr
      000FC1 FE               [12]  461 	mov	r6,a
      000FC2 A3               [24]  462 	inc	dptr
      000FC3 E0               [24]  463 	movx	a,@dptr
      000FC4 FF               [12]  464 	mov	r7,a
      000FC5 C3               [12]  465 	clr	c
      000FC6 74 10            [12]  466 	mov	a,#0x10
      000FC8 9E               [12]  467 	subb	a,r6
      000FC9 E4               [12]  468 	clr	a
      000FCA 9F               [12]  469 	subb	a,r7
      000FCB 50 17            [24]  470 	jnc	00105$
                                    471 ;	semaphore.c:20: display("n>16,in get_semaphore()",n);
      000FCD 90 01 07         [24]  472 	mov	dptr,#_get_semaphore_n_1_18
      000FD0 E0               [24]  473 	movx	a,@dptr
      000FD1 FE               [12]  474 	mov	r6,a
      000FD2 A3               [24]  475 	inc	dptr
      000FD3 E0               [24]  476 	movx	a,@dptr
      000FD4 90 00 93         [24]  477 	mov	dptr,#_display_PARM_2
      000FD7 EE               [12]  478 	mov	a,r6
      000FD8 F0               [24]  479 	movx	@dptr,a
      000FD9 90 21 AA         [24]  480 	mov	dptr,#___str_0
      000FDC 75 F0 80         [24]  481 	mov	b,#0x80
      000FDF 12 0D 80         [24]  482 	lcall	_display
                                    483 ;	semaphore.c:21: while(1);
      000FE2                        484 00102$:
      000FE2 80 FE            [24]  485 	sjmp	00102$
      000FE4                        486 00105$:
                                    487 ;	semaphore.c:23: if(semaphore[n]==1){
      000FE4 90 01 07         [24]  488 	mov	dptr,#_get_semaphore_n_1_18
      000FE7 E0               [24]  489 	movx	a,@dptr
      000FE8 FE               [12]  490 	mov	r6,a
      000FE9 A3               [24]  491 	inc	dptr
      000FEA E0               [24]  492 	movx	a,@dptr
      000FEB FF               [12]  493 	mov	r7,a
      000FEC EE               [12]  494 	mov	a,r6
      000FED 24 AB            [12]  495 	add	a,#_semaphore
      000FEF F5 82            [12]  496 	mov	dpl,a
      000FF1 EF               [12]  497 	mov	a,r7
      000FF2 34 03            [12]  498 	addc	a,#(_semaphore >> 8)
      000FF4 F5 83            [12]  499 	mov	dph,a
      000FF6 E0               [24]  500 	movx	a,@dptr
      000FF7 FF               [12]  501 	mov	r7,a
      000FF8 BF 01 15         [24]  502 	cjne	r7,#0x01,00107$
                                    503 ;	semaphore.c:24: semaphore[n]=0;
      000FFB 90 01 07         [24]  504 	mov	dptr,#_get_semaphore_n_1_18
      000FFE E0               [24]  505 	movx	a,@dptr
      000FFF FE               [12]  506 	mov	r6,a
      001000 A3               [24]  507 	inc	dptr
      001001 E0               [24]  508 	movx	a,@dptr
      001002 FF               [12]  509 	mov	r7,a
      001003 EE               [12]  510 	mov	a,r6
      001004 24 AB            [12]  511 	add	a,#_semaphore
      001006 F5 82            [12]  512 	mov	dpl,a
      001008 EF               [12]  513 	mov	a,r7
      001009 34 03            [12]  514 	addc	a,#(_semaphore >> 8)
      00100B F5 83            [12]  515 	mov	dph,a
      00100D E4               [12]  516 	clr	a
      00100E F0               [24]  517 	movx	@dptr,a
                                    518 ;	semaphore.c:25: return;	//成功取得信号量,否则进程阻塞
      00100F 22               [24]  519 	ret
      001010                        520 00107$:
                                    521 ;	semaphore.c:27: EA=0;
      001010 C2 AF            [12]  522 	clr	_EA
                                    523 ;	semaphore.c:28: READY=READY&(~MASK[CUR]);
      001012 90 00 03         [24]  524 	mov	dptr,#_CUR
      001015 E0               [24]  525 	movx	a,@dptr
      001016 FE               [12]  526 	mov	r6,a
      001017 A3               [24]  527 	inc	dptr
      001018 E0               [24]  528 	movx	a,@dptr
      001019 CE               [12]  529 	xch	a,r6
      00101A 25 E0            [12]  530 	add	a,acc
      00101C CE               [12]  531 	xch	a,r6
      00101D 33               [12]  532 	rlc	a
      00101E FF               [12]  533 	mov	r7,a
      00101F EE               [12]  534 	mov	a,r6
      001020 24 5E            [12]  535 	add	a,#_MASK
      001022 F5 82            [12]  536 	mov	dpl,a
      001024 EF               [12]  537 	mov	a,r7
      001025 34 21            [12]  538 	addc	a,#(_MASK >> 8)
      001027 F5 83            [12]  539 	mov	dph,a
      001029 E4               [12]  540 	clr	a
      00102A 93               [24]  541 	movc	a,@a+dptr
      00102B FE               [12]  542 	mov	r6,a
      00102C A3               [24]  543 	inc	dptr
      00102D E4               [12]  544 	clr	a
      00102E 93               [24]  545 	movc	a,@a+dptr
      00102F FF               [12]  546 	mov	r7,a
      001030 EE               [12]  547 	mov	a,r6
      001031 F4               [12]  548 	cpl	a
      001032 FC               [12]  549 	mov	r4,a
      001033 EF               [12]  550 	mov	a,r7
      001034 F4               [12]  551 	cpl	a
      001035 FD               [12]  552 	mov	r5,a
      001036 90 00 01         [24]  553 	mov	dptr,#_READY
      001039 E0               [24]  554 	movx	a,@dptr
      00103A FA               [12]  555 	mov	r2,a
      00103B A3               [24]  556 	inc	dptr
      00103C E0               [24]  557 	movx	a,@dptr
      00103D FB               [12]  558 	mov	r3,a
      00103E 90 00 01         [24]  559 	mov	dptr,#_READY
      001041 EC               [12]  560 	mov	a,r4
      001042 5A               [12]  561 	anl	a,r2
      001043 F0               [24]  562 	movx	@dptr,a
      001044 ED               [12]  563 	mov	a,r5
      001045 5B               [12]  564 	anl	a,r3
      001046 A3               [24]  565 	inc	dptr
      001047 F0               [24]  566 	movx	@dptr,a
                                    567 ;	semaphore.c:29: ready_list[n]|=MASK[CUR];
      001048 90 01 07         [24]  568 	mov	dptr,#_get_semaphore_n_1_18
      00104B E0               [24]  569 	movx	a,@dptr
      00104C FC               [12]  570 	mov	r4,a
      00104D A3               [24]  571 	inc	dptr
      00104E E0               [24]  572 	movx	a,@dptr
      00104F FD               [12]  573 	mov	r5,a
      001050 EC               [12]  574 	mov	a,r4
      001051 24 BB            [12]  575 	add	a,#_ready_list
      001053 FC               [12]  576 	mov	r4,a
      001054 ED               [12]  577 	mov	a,r5
      001055 34 03            [12]  578 	addc	a,#(_ready_list >> 8)
      001057 FD               [12]  579 	mov	r5,a
      001058 8C 82            [24]  580 	mov	dpl,r4
      00105A 8D 83            [24]  581 	mov	dph,r5
      00105C E0               [24]  582 	movx	a,@dptr
      00105D 7A 00            [12]  583 	mov	r2,#0x00
      00105F 42 06            [12]  584 	orl	ar6,a
      001061 EA               [12]  585 	mov	a,r2
      001062 42 07            [12]  586 	orl	ar7,a
      001064 8C 82            [24]  587 	mov	dpl,r4
      001066 8D 83            [24]  588 	mov	dph,r5
      001068 EE               [12]  589 	mov	a,r6
      001069 F0               [24]  590 	movx	@dptr,a
                                    591 ;	semaphore.c:30: EA=1;
      00106A D2 AF            [12]  592 	setb	_EA
                                    593 ;	semaphore.c:31: schedule();
                                    594 ;	semaphore.c:32: return;
      00106C 02 00 A5         [24]  595 	ljmp	_schedule
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'release_semaphore'
                                    598 ;------------------------------------------------------------
                                    599 ;n                         Allocated with name '_release_semaphore_n_1_22'
                                    600 ;hg                        Allocated with name '_release_semaphore_hg_1_23'
                                    601 ;------------------------------------------------------------
                                    602 ;	semaphore.c:37: void release_semaphore(uint n)
                                    603 ;	-----------------------------------------
                                    604 ;	 function release_semaphore
                                    605 ;	-----------------------------------------
      00106F                        606 _release_semaphore:
      00106F AF 83            [24]  607 	mov	r7,dph
      001071 E5 82            [12]  608 	mov	a,dpl
      001073 90 01 09         [24]  609 	mov	dptr,#_release_semaphore_n_1_22
      001076 F0               [24]  610 	movx	@dptr,a
      001077 EF               [12]  611 	mov	a,r7
      001078 A3               [24]  612 	inc	dptr
      001079 F0               [24]  613 	movx	@dptr,a
                                    614 ;	semaphore.c:40: if(n>16){	//防止n>16
      00107A 90 01 09         [24]  615 	mov	dptr,#_release_semaphore_n_1_22
      00107D E0               [24]  616 	movx	a,@dptr
      00107E FE               [12]  617 	mov	r6,a
      00107F A3               [24]  618 	inc	dptr
      001080 E0               [24]  619 	movx	a,@dptr
      001081 FF               [12]  620 	mov	r7,a
      001082 C3               [12]  621 	clr	c
      001083 74 10            [12]  622 	mov	a,#0x10
      001085 9E               [12]  623 	subb	a,r6
      001086 E4               [12]  624 	clr	a
      001087 9F               [12]  625 	subb	a,r7
      001088 40 02            [24]  626 	jc	00104$
      00108A 80 17            [24]  627 	sjmp	00105$
      00108C                        628 00104$:
                                    629 ;	semaphore.c:41: display("n>16,in release_semaphore()",n);
      00108C 90 01 09         [24]  630 	mov	dptr,#_release_semaphore_n_1_22
      00108F E0               [24]  631 	movx	a,@dptr
      001090 FE               [12]  632 	mov	r6,a
      001091 A3               [24]  633 	inc	dptr
      001092 E0               [24]  634 	movx	a,@dptr
      001093 90 00 93         [24]  635 	mov	dptr,#_display_PARM_2
      001096 EE               [12]  636 	mov	a,r6
      001097 F0               [24]  637 	movx	@dptr,a
      001098 90 21 C2         [24]  638 	mov	dptr,#___str_1
      00109B 75 F0 80         [24]  639 	mov	b,#0x80
      00109E 12 0D 80         [24]  640 	lcall	_display
                                    641 ;	semaphore.c:42: while(1);
      0010A1                        642 00102$:
      0010A1 80 FE            [24]  643 	sjmp	00102$
      0010A3                        644 00105$:
                                    645 ;	semaphore.c:44: if(semaphore[n]==0){	
      0010A3 90 01 09         [24]  646 	mov	dptr,#_release_semaphore_n_1_22
      0010A6 E0               [24]  647 	movx	a,@dptr
      0010A7 FE               [12]  648 	mov	r6,a
      0010A8 A3               [24]  649 	inc	dptr
      0010A9 E0               [24]  650 	movx	a,@dptr
      0010AA FF               [12]  651 	mov	r7,a
      0010AB EE               [12]  652 	mov	a,r6
      0010AC 24 AB            [12]  653 	add	a,#_semaphore
      0010AE FE               [12]  654 	mov	r6,a
      0010AF EF               [12]  655 	mov	a,r7
      0010B0 34 03            [12]  656 	addc	a,#(_semaphore >> 8)
      0010B2 FF               [12]  657 	mov	r7,a
      0010B3 8E 82            [24]  658 	mov	dpl,r6
      0010B5 8F 83            [24]  659 	mov	dph,r7
      0010B7 E0               [24]  660 	movx	a,@dptr
      0010B8 60 03            [24]  661 	jz	00120$
      0010BA 02 11 5A         [24]  662 	ljmp	00110$
      0010BD                        663 00120$:
                                    664 ;	semaphore.c:45: EA=0;
      0010BD C2 AF            [12]  665 	clr	_EA
                                    666 ;	semaphore.c:46: if(ready_list[n]==0){
      0010BF 90 01 09         [24]  667 	mov	dptr,#_release_semaphore_n_1_22
      0010C2 E0               [24]  668 	movx	a,@dptr
      0010C3 FE               [12]  669 	mov	r6,a
      0010C4 A3               [24]  670 	inc	dptr
      0010C5 E0               [24]  671 	movx	a,@dptr
      0010C6 FF               [12]  672 	mov	r7,a
      0010C7 EE               [12]  673 	mov	a,r6
      0010C8 24 BB            [12]  674 	add	a,#_ready_list
      0010CA FE               [12]  675 	mov	r6,a
      0010CB EF               [12]  676 	mov	a,r7
      0010CC 34 03            [12]  677 	addc	a,#(_ready_list >> 8)
      0010CE FF               [12]  678 	mov	r7,a
      0010CF 8E 82            [24]  679 	mov	dpl,r6
      0010D1 8F 83            [24]  680 	mov	dph,r7
      0010D3 E0               [24]  681 	movx	a,@dptr
      0010D4 70 18            [24]  682 	jnz	00107$
                                    683 ;	semaphore.c:47: semaphore[n]=1;		//为零且无等待任务,信号量置1
      0010D6 90 01 09         [24]  684 	mov	dptr,#_release_semaphore_n_1_22
      0010D9 E0               [24]  685 	movx	a,@dptr
      0010DA FE               [12]  686 	mov	r6,a
      0010DB A3               [24]  687 	inc	dptr
      0010DC E0               [24]  688 	movx	a,@dptr
      0010DD FF               [12]  689 	mov	r7,a
      0010DE EE               [12]  690 	mov	a,r6
      0010DF 24 AB            [12]  691 	add	a,#_semaphore
      0010E1 F5 82            [12]  692 	mov	dpl,a
      0010E3 EF               [12]  693 	mov	a,r7
      0010E4 34 03            [12]  694 	addc	a,#(_semaphore >> 8)
      0010E6 F5 83            [12]  695 	mov	dph,a
      0010E8 74 01            [12]  696 	mov	a,#0x01
      0010EA F0               [24]  697 	movx	@dptr,a
                                    698 ;	semaphore.c:48: EA=1;
      0010EB D2 AF            [12]  699 	setb	_EA
                                    700 ;	semaphore.c:49: return;
      0010ED 22               [24]  701 	ret
      0010EE                        702 00107$:
                                    703 ;	semaphore.c:51: hg=READYMAP[ready_list[n]];	//有人任务阻塞,取最高级任务调度
      0010EE 90 01 09         [24]  704 	mov	dptr,#_release_semaphore_n_1_22
      0010F1 E0               [24]  705 	movx	a,@dptr
      0010F2 FE               [12]  706 	mov	r6,a
      0010F3 A3               [24]  707 	inc	dptr
      0010F4 E0               [24]  708 	movx	a,@dptr
      0010F5 FF               [12]  709 	mov	r7,a
      0010F6 EE               [12]  710 	mov	a,r6
      0010F7 24 BB            [12]  711 	add	a,#_ready_list
      0010F9 FE               [12]  712 	mov	r6,a
      0010FA EF               [12]  713 	mov	a,r7
      0010FB 34 03            [12]  714 	addc	a,#(_ready_list >> 8)
      0010FD FF               [12]  715 	mov	r7,a
      0010FE 8E 82            [24]  716 	mov	dpl,r6
      001100 8F 83            [24]  717 	mov	dph,r7
      001102 E0               [24]  718 	movx	a,@dptr
      001103 FD               [12]  719 	mov	r5,a
      001104 75 F0 02         [24]  720 	mov	b,#0x02
      001107 A4               [48]  721 	mul	ab
      001108 24 5E            [12]  722 	add	a,#_READYMAP
      00110A F5 82            [12]  723 	mov	dpl,a
      00110C 74 1F            [12]  724 	mov	a,#(_READYMAP >> 8)
      00110E 35 F0            [12]  725 	addc	a,b
      001110 F5 83            [12]  726 	mov	dph,a
      001112 E4               [12]  727 	clr	a
      001113 93               [24]  728 	movc	a,@a+dptr
      001114 FB               [12]  729 	mov	r3,a
      001115 A3               [24]  730 	inc	dptr
      001116 E4               [12]  731 	clr	a
      001117 93               [24]  732 	movc	a,@a+dptr
                                    733 ;	semaphore.c:52: ready_list[n]=ready_list[n]&(~MASK[hg]);
      001118 CB               [12]  734 	xch	a,r3
      001119 25 E0            [12]  735 	add	a,acc
      00111B CB               [12]  736 	xch	a,r3
      00111C 33               [12]  737 	rlc	a
      00111D FC               [12]  738 	mov	r4,a
      00111E EB               [12]  739 	mov	a,r3
      00111F 24 5E            [12]  740 	add	a,#_MASK
      001121 FB               [12]  741 	mov	r3,a
      001122 EC               [12]  742 	mov	a,r4
      001123 34 21            [12]  743 	addc	a,#(_MASK >> 8)
      001125 FC               [12]  744 	mov	r4,a
      001126 8B 82            [24]  745 	mov	dpl,r3
      001128 8C 83            [24]  746 	mov	dph,r4
      00112A E4               [12]  747 	clr	a
      00112B 93               [24]  748 	movc	a,@a+dptr
      00112C F9               [12]  749 	mov	r1,a
      00112D A3               [24]  750 	inc	dptr
      00112E E4               [12]  751 	clr	a
      00112F 93               [24]  752 	movc	a,@a+dptr
      001130 E9               [12]  753 	mov	a,r1
      001131 F4               [12]  754 	cpl	a
      001132 52 05            [12]  755 	anl	ar5,a
      001134 8E 82            [24]  756 	mov	dpl,r6
      001136 8F 83            [24]  757 	mov	dph,r7
      001138 ED               [12]  758 	mov	a,r5
      001139 F0               [24]  759 	movx	@dptr,a
                                    760 ;	semaphore.c:53: READY|=MASK[hg];
      00113A 8B 82            [24]  761 	mov	dpl,r3
      00113C 8C 83            [24]  762 	mov	dph,r4
      00113E E4               [12]  763 	clr	a
      00113F 93               [24]  764 	movc	a,@a+dptr
      001140 FB               [12]  765 	mov	r3,a
      001141 A3               [24]  766 	inc	dptr
      001142 E4               [12]  767 	clr	a
      001143 93               [24]  768 	movc	a,@a+dptr
      001144 FC               [12]  769 	mov	r4,a
      001145 90 00 01         [24]  770 	mov	dptr,#_READY
      001148 E0               [24]  771 	movx	a,@dptr
      001149 FE               [12]  772 	mov	r6,a
      00114A A3               [24]  773 	inc	dptr
      00114B E0               [24]  774 	movx	a,@dptr
      00114C FF               [12]  775 	mov	r7,a
      00114D 90 00 01         [24]  776 	mov	dptr,#_READY
      001150 EB               [12]  777 	mov	a,r3
      001151 4E               [12]  778 	orl	a,r6
      001152 F0               [24]  779 	movx	@dptr,a
      001153 EC               [12]  780 	mov	a,r4
      001154 4F               [12]  781 	orl	a,r7
      001155 A3               [24]  782 	inc	dptr
      001156 F0               [24]  783 	movx	@dptr,a
                                    784 ;	semaphore.c:54: schedule();
      001157 12 00 A5         [24]  785 	lcall	_schedule
      00115A                        786 00110$:
                                    787 ;	semaphore.c:57: return;
      00115A 22               [24]  788 	ret
                                    789 	.area CSEG    (CODE)
                                    790 	.area CONST   (CODE)
      0021AA                        791 ___str_0:
      0021AA 6E 3E 31 36 2C 69 6E   792 	.ascii "n>16,in get_semaphore()"
             20 67 65 74 5F 73 65
             6D 61 70 68 6F 72 65
             28 29
      0021C1 00                     793 	.db 0x00
      0021C2                        794 ___str_1:
      0021C2 6E 3E 31 36 2C 69 6E   795 	.ascii "n>16,in release_semaphore()"
             20 72 65 6C 65 61 73
             65 5F 73 65 6D 61 70
             68 6F 72 65 28 29
      0021DD 00                     796 	.db 0x00
                                    797 	.area XINIT   (CODE)
      002217                        798 __xinit__semaphore:
      002217 00                     799 	.db #0x00	; 0
      002218 00                     800 	.db 0x00
      002219 00                     801 	.db 0x00
      00221A 00                     802 	.db 0x00
      00221B 00                     803 	.db 0x00
      00221C 00                     804 	.db 0x00
      00221D 00                     805 	.db 0x00
      00221E 00                     806 	.db 0x00
      00221F 00                     807 	.db 0x00
      002220 00                     808 	.db 0x00
      002221 00                     809 	.db 0x00
      002222 00                     810 	.db 0x00
      002223 00                     811 	.db 0x00
      002224 00                     812 	.db 0x00
      002225 00                     813 	.db 0x00
      002226 00                     814 	.db 0x00
      002227                        815 __xinit__ready_list:
      002227 00                     816 	.db #0x00	; 0
      002228 00                     817 	.db 0x00
      002229 00                     818 	.db 0x00
      00222A 00                     819 	.db 0x00
      00222B 00                     820 	.db 0x00
      00222C 00                     821 	.db 0x00
      00222D 00                     822 	.db 0x00
      00222E 00                     823 	.db 0x00
      00222F 00                     824 	.db 0x00
      002230 00                     825 	.db 0x00
      002231 00                     826 	.db 0x00
      002232 00                     827 	.db 0x00
      002233 00                     828 	.db 0x00
      002234 00                     829 	.db 0x00
      002235 00                     830 	.db 0x00
      002236 00                     831 	.db 0x00
                                    832 	.area CABS    (ABS,CODE)
