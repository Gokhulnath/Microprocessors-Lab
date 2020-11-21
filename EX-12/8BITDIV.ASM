	MOV R0, #00
	MOV A, r1 ;input1
	MOV B, r2 ;input2
	DIV AB
	MOV r4, A
	MOV r5, B
HERE: 	SJMP HERE