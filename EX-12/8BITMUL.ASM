	MOV R0, #00
	MOV A, r1 ;input1
	MOV B, r2 ;input2
	MUL AB
	MOV r4, B
	MOV r5, A
HERE: 	SJMP HERE