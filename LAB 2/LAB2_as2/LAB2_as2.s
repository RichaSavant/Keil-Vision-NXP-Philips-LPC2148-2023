;find the number of 0’s in a byte data stored in r5.
;Store the final count in r1.

	AREA LAB2_as2 , CODE , READONLY

	mov r5 , #0x04
	mov r2 , #0x08 ;shift counter
	mov r1, #0x00

label_shift movs r5, r5, lsr #1	;ALWAYS USE lsr
    addcc r1, r1, #0x01
	sub r2, r2 , #0x01
	cmp r2 , #0x00
	bne label_shift

e b e
	end

