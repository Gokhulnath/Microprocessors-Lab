	MOV R0, #00
	MOV R2, #00
	MOV R3, #00
	MOV R4, #00
	MOV A, r1 ;input1
	MOV B, r1 ;input2
	MUL AB
	MOV r7, B
	MOV 08, A
	MOV B, r1
	MUL AB
	MOV r4, A
	MOV r5, B
	MOV A, r7
	MOV B, r1
	MUL AB
	MOV r2, A
	MOV r6, B
	MOV A, r5
	ADD A, r6
	MOV r3, A
HERE: 	SJMP HERE