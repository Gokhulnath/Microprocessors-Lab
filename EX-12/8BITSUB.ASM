	MOV R0, #00
	MOV R4, #00
	MOV A, r1 ;input1
	SUBB A, r2 ;input2
	JNC LABEL
	INC R4
	MOV B, R4
	MOV r4, B
LABEL: 	MOV r5, a
HERE: 	SJMP HERE