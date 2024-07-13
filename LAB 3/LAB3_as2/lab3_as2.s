;Find the number of 0’s in a byte data stored location “data”. 
;Store the final count in location “count”.

	AREA data1 , DATA, READONLY
data dcb 0x0f

	AREA data2, DATA, READWRITE
count dcb 0x00 ;initializing count to 0

	AREA exp, CODE, READONLY

	ldr r0 , =data
	ldr r1, [r0] ;r1 now has 0x0f

	mov r2, #0x00
	mov r5, #0x08   ;counter for no. of bits

	ldr r7 , =count

shift
	movs r1 , r1, lsr #1	;override
	addcc r2, r2, #0x01
	sub r5, r5, #0x01
	cmp r5, #0x00
	bne shift
	
	str r2 , [r7]

e b e
	end




