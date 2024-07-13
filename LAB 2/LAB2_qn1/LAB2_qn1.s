;Find if a given number is multiple of 4. 
;Assume the number to be in r1. 
;If the number is a multiple then move 0xFF to r2 
;else move 0xAA to r2.
	
	AREA LAB2_qn1 , CODE , READONLY

;In the binary number system, a number is divisible by 4 if and only if it ends with two or more consecutive zeros (i.e., it's divisible by 2^2, which is 4 in decimal)

	mov r1, #0x04
	
	ands r1, r1, #0x03	 ;Because 3 --> 0011 and a no. is divisible by 4 if it ends with 00 bits
	moveq r2, #0xFF
	movne r2, #0xAA 

e b e
	end