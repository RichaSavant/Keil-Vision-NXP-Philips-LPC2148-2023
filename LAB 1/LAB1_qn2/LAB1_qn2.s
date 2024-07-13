	AREA LAB1_qn2 , CODE, READONLY
	
	mov r2, #0x12
	mov r3, #0x13

	add r1, r2, r3	    ; Convert to binary, add
	sub r4, r2, r3	    ; Convert to binary, convert the negative no. to 2's complement, then ADD
	and r5, r3, r2		; AND each bit

e b e
	end
