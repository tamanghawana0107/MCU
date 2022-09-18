        ORG 0000H
        MOV TMOD,#01	;Timer 0 mode 1(16 bit mode)
HERE:   MOV TL0,#0f2H	;TL0=F2H,low byte
	MOV TH0,#0FFH	;TH0=FFH,the high byte
	CPL P1.5	;togglr P1.5(CPL instruction logically complements the value of the 					specified destination operand and stores the result back in the 					destination operand)
	ACALL DELAY
	SJMP HERE	;Short Jump
	DELAY:
	SETB TR0	;start the timer 0
AGAIN: 	JNB TF0,AGAIN 	;monitor timer flag 0 unitl it rolls
	CLR TR0	;stop timer 0
	CLR TF0 ; clear timer 0 flag
	RET	;return from subroutine
	END