	AREA LAB1_as1b , CODE, READONLY
	
	MOV r1, #0x1f
	MOV r2, #0xff
	MOV r3, #0x25
	MOV r4, #0x13


	AND r5, r1, r2
	
	MVN r3, r3

	AND r6, r3, r4


	ORR r7, r5, r6

e b e
	end

	