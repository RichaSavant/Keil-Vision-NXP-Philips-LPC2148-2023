;find the number of 1’s in a byte data stored in r5
;Store the final count in r1.

	AREA LAB2_qn2 , CODE, READONLY 
	mov r5 , #0x03
	mov r2 , #0x08 ;shift counter (8 bits)
	mov r1 , #0x00 ;result register

label_shift 
	movs r5, r5 , lsr #1
	addcs r1, r1, #0x01  ;Add ONLY IF C=1

	sub r2 , r2 , #0x01	;decrementing shift counter
	cmp r2, #0
	bne label_shift


e b e
	end
	
