;Find the number in r1 is odd or even number.
;If ODD move 0x01 to r2 else move 0x02 to r2.	
	
	AREA LAB2_as1 , CODE , READONLY

	mov r1 , #0x03
	mov r3, #0x00

	movs r5, r1, lsr #1  ; S UPDATES THE CARRY FLAG
	addcs r3, r3, #0x01  ;IF CARRY IS SET (LAST BIT 1 ie. ODD NO.) --> ADD 
    
	cmp r3 , #0
	moveq r2 , #0x02
	movne r2 , #0x01

e b e
	end


