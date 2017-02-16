.area CSEG (CODE)
.macro  PUSHALL          ;保存现场
;	push bits
        INC SP
        PUSH ACC
        PUSH B
        PUSH DPL
        PUSH DPH
        MOV  A,R7 
        PUSH ACC
        MOV  A,R6
        PUSH ACC
        MOV  A,R5
        PUSH ACC
        MOV  A,R4
        PUSH ACC
        MOV  A,R3
        PUSH ACC
        MOV  A,R2
        PUSH ACC
        MOV  A,R1
        PUSH ACC
        MOV  A,R0
	PUSH ACC
        PUSH PSW
.endm
.macro  POPALL   		;恢复现场
        POP  PSW
	POP  ACC
        MOV  R0,A
        POP  ACC
        MOV  R1,A
        POP  ACC
        MOV  R2,A
        POP  ACC
        MOV  R3,A
        POP  ACC
        MOV  R4,A
        POP  ACC
        MOV  R5,A
        POP  ACC
        MOV  R6,A
        POP  ACC
        MOV  R7,A
        POP  DPH
        POP  DPL
        POP  B
        POP  ACC
	DEC  SP
;	pop  bits
.endm
.globl _switch_task
.globl _switch_task_int
_switch_task:	
;任务切换函数
	PUSHALL
	MOV R1,# _CUR_TCB_T	;保存好当前任务
	MOV DPL, @R1
	INC R1
	MOV DPH, @R1
	MOV A ,SP
	MOVX @DPTR, A
_switch_task_int:
	MOV R1,# _CUR_TCB_T	;将CUR_TCB_T置为HIGHT_TCB_T
	MOV R0 ,# _HIGHT_TCB_T
	MOV DPL , @R0
	MOV @R1,DPL
	INC R0
	INC R1
	MOV DPH , @R0
	MOV @R1,DPH
	MOVX A, @DPTR		;取出保存的SP指针
	MOV SP , ACC
	POPALL
	SETB EA
	RET
	
.globl _exit_int
_exit_int:
		
	MOV DPL,# _interrup   
	MOV DPH,# ( _interrup>>8) 
	MOVX A,@DPTR
	DEC A
	MOVX @DPTR, A
	MOV R1,# _CUR_TCB_T	;将CUR_TCB_T置为HIGHT_TCB_T
	MOV R0 ,# _HIGHT_TCB_T
	MOV DPL , @R0
	MOV @R1,DPL
	INC R0
	INC R1
	MOV DPH , @R0
	MOV @R1,DPH
	MOVX A, @DPTR		;取出保存的SP指针
	MOV SP , ACC
	POPALL
	SETB EA
	RETI

.globl _hongwai
_hongwai:
	PUSHALL
	MOV R6, DPL
	MOV R7, DPH

