	.data
L0 : 	.SPACE 32
L1 : 	.WORD 0
L2 : 	.WORD 0
	.text
	MOVA R1 L0
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #0
	ADD (R1) R0 R2
	MOVA R1 L0
	ADDI R1 R1 #1
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #1
	ADD (R1) R0 R2
	MOVA R1 L0
	ADDI R1 R1 #2
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #2
	ADD (R1) R0 R2
	MOVA R1 L0
	ADDI R1 R1 #3
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #3
	ADD (R1) R0 R2
	MOVA R1 L0
	ADDI R1 R1 #4
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #4
	ADD (R1) R0 R2
	MOVA R1 L0
	ADDI R1 R1 #5
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #5
	ADD (R1) R0 R2
	MOVA R1 L0
	ADDI R1 R1 #6
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #6
	ADD (R1) R0 R2
	MOVA R1 L0
	ADDI R1 R1 #7
	ADDI R2 R0 #0
	SHLI R2 R2 #16
	ADDI R2 R2 #7
	ADD (R1) R0 R2
	ADDI R1 R0 #0
	SHLI R1 R1 #16
	ADDI R1 R1 #0
	MOVA R2 L0
	ADD R2 R2 R1
	ADD R3 R0 (R2)
	ANDB R2 R3 R3
	STORE R2 L1
L3 : 	LOAD R3 L2
	LOAD R2 L1
	ADD R4 R3 R2
	STORE R2 L1
	ADD R3 R0 R4
	WRITE R3 0
	STORE R3 L2
	BT L5
L6 : 	ADDI R3 R0 #0
	SHLI R3 R3 #16
	ADDI R3 R3 #0
	WRITE R3 0
	STORE R3 L2
L5 : 	ADDI R1 R1 #1
	SUBI R3 R1 #8
	BEQ L4
	MOVA R4 L0
	ADD R4 R4 R1
	ADD R5 R0 (R4)
	ANDB R2 R5 R5
	STORE R2 L1
	DIVI R3 R1 #2
	MULI R3 R3 #2
	SUB R3 R3 R1
	BEQ L6
	BT L3
L4 : 	HALT
