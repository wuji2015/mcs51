ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 1.
Hexadecimal [24-Bits]



                                      1 .area CSEG (CODE)
                                      2 .macro  PUSHALL          ;保存现场
                                      3 ;	push bits
                                      4         INC SP
                                      5         PUSH ACC
                                      6         PUSH B
                                      7         PUSH DPL
                                      8         PUSH DPH
                                      9         MOV  A,R7 
                                     10         PUSH ACC
                                     11         MOV  A,R6
                                     12         PUSH ACC
                                     13         MOV  A,R5
                                     14         PUSH ACC
                                     15         MOV  A,R4
                                     16         PUSH ACC
                                     17         MOV  A,R3
                                     18         PUSH ACC
                                     19         MOV  A,R2
                                     20         PUSH ACC
                                     21         MOV  A,R1
                                     22         PUSH ACC
                                     23         MOV  A,R0
                                     24 	PUSH ACC
                                     25         PUSH PSW
                                     26 .endm
                                     27 .macro  POPALL   		;恢复现场
                                     28         POP  PSW
                                     29 	POP  ACC
                                     30         MOV  R0,A
                                     31         POP  ACC
                                     32         MOV  R1,A
                                     33         POP  ACC
                                     34         MOV  R2,A
                                     35         POP  ACC
                                     36         MOV  R3,A
                                     37         POP  ACC
                                     38         MOV  R4,A
                                     39         POP  ACC
                                     40         MOV  R5,A
                                     41         POP  ACC
                                     42         MOV  R6,A
                                     43         POP  ACC
                                     44         MOV  R7,A
                                     45         POP  DPH
                                     46         POP  DPL
                                     47         POP  B
                                     48         POP  ACC
                                     49 	DEC  SP
                                     50 ;	pop  bits
                                     51 .endm
                                     52 .globl _switch_task
                                     53 .globl _switch_task_int
      000370                         54 _switch_task:	
                                     55 ;任务切换函数
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 2.
Hexadecimal [24-Bits]



      000000                         56 	PUSHALL
                                      1 ;	push bits
      000370 05 81            [12]    2         INC SP
      000372 C0 E0            [24]    3         PUSH ACC
      000374 C0 F0            [24]    4         PUSH B
      000376 C0 82            [24]    5         PUSH DPL
      000378 C0 83            [24]    6         PUSH DPH
      00037A EF               [12]    7         MOV  A,R7 
      00037B C0 E0            [24]    8         PUSH ACC
      00037D EE               [12]    9         MOV  A,R6
      00037E C0 E0            [24]   10         PUSH ACC
      000380 ED               [12]   11         MOV  A,R5
      000381 C0 E0            [24]   12         PUSH ACC
      000383 EC               [12]   13         MOV  A,R4
      000384 C0 E0            [24]   14         PUSH ACC
      000386 EB               [12]   15         MOV  A,R3
      000387 C0 E0            [24]   16         PUSH ACC
      000389 EA               [12]   17         MOV  A,R2
      00038A C0 E0            [24]   18         PUSH ACC
      00038C E9               [12]   19         MOV  A,R1
      00038D C0 E0            [24]   20         PUSH ACC
      00038F E8               [12]   21         MOV  A,R0
      000390 C0 E0            [24]   22 	PUSH ACC
      000392 C0 D0            [24]   23         PUSH PSW
      000394 79 EE            [12]   57 	MOV R1,# _CUR_TCB_T	;保存好当前任务
      000396 87 82            [24]   58 	MOV DPL, @R1
      000398 09               [12]   59 	INC R1
      000399 87 83            [24]   60 	MOV DPH, @R1
      00039B E5 81            [12]   61 	MOV A ,SP
      00039D F0               [24]   62 	MOVX @DPTR, A
      00039E                         63 _switch_task_int:
      00039E 79 EE            [12]   64 	MOV R1,# _CUR_TCB_T	;将CUR_TCB_T置为HIGHT_TCB_T
      0003A0 78 F1            [12]   65 	MOV R0 ,# _HIGHT_TCB_T
      0003A2 86 82            [24]   66 	MOV DPL , @R0
      0003A4 A7 82            [24]   67 	MOV @R1,DPL
      0003A6 08               [12]   68 	INC R0
      0003A7 09               [12]   69 	INC R1
      0003A8 86 83            [24]   70 	MOV DPH , @R0
      0003AA A7 83            [24]   71 	MOV @R1,DPH
      0003AC E0               [24]   72 	MOVX A, @DPTR		;取出保存的SP指针
      0003AD 85 E0 81         [24]   73 	MOV SP , ACC
      000040                         74 	POPALL
      0003B0 D0 D0            [24]    1         POP  PSW
      0003B2 D0 E0            [24]    2 	POP  ACC
      0003B4 F8               [12]    3         MOV  R0,A
      0003B5 D0 E0            [24]    4         POP  ACC
      0003B7 F9               [12]    5         MOV  R1,A
      0003B8 D0 E0            [24]    6         POP  ACC
      0003BA FA               [12]    7         MOV  R2,A
      0003BB D0 E0            [24]    8         POP  ACC
      0003BD FB               [12]    9         MOV  R3,A
      0003BE D0 E0            [24]   10         POP  ACC
      0003C0 FC               [12]   11         MOV  R4,A
      0003C1 D0 E0            [24]   12         POP  ACC
      0003C3 FD               [12]   13         MOV  R5,A
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 3.
Hexadecimal [24-Bits]



      0003C4 D0 E0            [24]   14         POP  ACC
      0003C6 FE               [12]   15         MOV  R6,A
      0003C7 D0 E0            [24]   16         POP  ACC
      0003C9 FF               [12]   17         MOV  R7,A
      0003CA D0 83            [24]   18         POP  DPH
      0003CC D0 82            [24]   19         POP  DPL
      0003CE D0 F0            [24]   20         POP  B
      0003D0 D0 E0            [24]   21         POP  ACC
      0003D2 15 81            [12]   22 	DEC  SP
                                     23 ;	pop  bits
      0003D4 D2 AF            [12]   75 	SETB EA
      0003D6 22               [24]   76 	RET
                                     77 	
                                     78 .globl _exit_int
      0003D7                         79 _exit_int:
                                     80 		
      0003D7 75 82 1D         [24]   81 	MOV DPL,# _interrup   
      0003DA 75 83 00         [24]   82 	MOV DPH,# ( _interrup>>8) 
      0003DD E0               [24]   83 	MOVX A,@DPTR
      0003DE 14               [12]   84 	DEC A
      0003DF F0               [24]   85 	MOVX @DPTR, A
      0003E0 79 EE            [12]   86 	MOV R1,# _CUR_TCB_T	;将CUR_TCB_T置为HIGHT_TCB_T
      0003E2 78 F1            [12]   87 	MOV R0 ,# _HIGHT_TCB_T
      0003E4 86 82            [24]   88 	MOV DPL , @R0
      0003E6 A7 82            [24]   89 	MOV @R1,DPL
      0003E8 08               [12]   90 	INC R0
      0003E9 09               [12]   91 	INC R1
      0003EA 86 83            [24]   92 	MOV DPH , @R0
      0003EC A7 83            [24]   93 	MOV @R1,DPH
      0003EE E0               [24]   94 	MOVX A, @DPTR		;取出保存的SP指针
      0003EF 85 E0 81         [24]   95 	MOV SP , ACC
      000082                         96 	POPALL
      0003F2 D0 D0            [24]    1         POP  PSW
      0003F4 D0 E0            [24]    2 	POP  ACC
      0003F6 F8               [12]    3         MOV  R0,A
      0003F7 D0 E0            [24]    4         POP  ACC
      0003F9 F9               [12]    5         MOV  R1,A
      0003FA D0 E0            [24]    6         POP  ACC
      0003FC FA               [12]    7         MOV  R2,A
      0003FD D0 E0            [24]    8         POP  ACC
      0003FF FB               [12]    9         MOV  R3,A
      000400 D0 E0            [24]   10         POP  ACC
      000402 FC               [12]   11         MOV  R4,A
      000403 D0 E0            [24]   12         POP  ACC
      000405 FD               [12]   13         MOV  R5,A
      000406 D0 E0            [24]   14         POP  ACC
      000408 FE               [12]   15         MOV  R6,A
      000409 D0 E0            [24]   16         POP  ACC
      00040B FF               [12]   17         MOV  R7,A
      00040C D0 83            [24]   18         POP  DPH
      00040E D0 82            [24]   19         POP  DPL
      000410 D0 F0            [24]   20         POP  B
      000412 D0 E0            [24]   21         POP  ACC
      000414 15 81            [12]   22 	DEC  SP
                                     23 ;	pop  bits
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 4.
Hexadecimal [24-Bits]



      000416 D2 AF            [12]   97 	SETB EA
      000418 32               [24]   98 	RETI
                                     99 
                                    100 .globl _hongwai
      000419                        101 _hongwai:
      0000A9                        102 	PUSHALL
                                      1 ;	push bits
      000419 05 81            [12]    2         INC SP
      00041B C0 E0            [24]    3         PUSH ACC
      00041D C0 F0            [24]    4         PUSH B
      00041F C0 82            [24]    5         PUSH DPL
      000421 C0 83            [24]    6         PUSH DPH
      000423 EF               [12]    7         MOV  A,R7 
      000424 C0 E0            [24]    8         PUSH ACC
      000426 EE               [12]    9         MOV  A,R6
      000427 C0 E0            [24]   10         PUSH ACC
      000429 ED               [12]   11         MOV  A,R5
      00042A C0 E0            [24]   12         PUSH ACC
      00042C EC               [12]   13         MOV  A,R4
      00042D C0 E0            [24]   14         PUSH ACC
      00042F EB               [12]   15         MOV  A,R3
      000430 C0 E0            [24]   16         PUSH ACC
      000432 EA               [12]   17         MOV  A,R2
      000433 C0 E0            [24]   18         PUSH ACC
      000435 E9               [12]   19         MOV  A,R1
      000436 C0 E0            [24]   20         PUSH ACC
      000438 E8               [12]   21         MOV  A,R0
      000439 C0 E0            [24]   22 	PUSH ACC
      00043B C0 D0            [24]   23         PUSH PSW
      00043D AE 82            [24]  103 	MOV R6, DPL
      00043F AF 83            [24]  104 	MOV R7, DPH
                                    105 
