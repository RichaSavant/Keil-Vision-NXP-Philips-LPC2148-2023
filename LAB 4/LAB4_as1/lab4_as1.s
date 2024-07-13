;find the biggest number in an array of 8-bit number in location “num”. 
;Store the result in location “biggest”.

	AREA data1 , DATA , READONLY
num dcb 0x01, 0x05, 0x02, 0x04, 0x03
len dcd 0x05
	AREA data2, DATA, READWRITE
biggest dcb 0x00


	AREA exp , CODE, READONLY

	ldr r0, =num ; pointing to first array ele
	ldrb r2, [r0] ; r2 having value 1 initialized as BIGGEST

	ldr r5, =len
	ldr r6, [r5]

	ldr r9, =biggest

loop

	ldrb r3, [r0]
	cmp r3, r2
	movgt r2, r3
	add r0 , r0, #0x01

	sub r6, r6, #0x01
	cmp r6, #0x00
	bne loop

	str r2, [r9]
e b e
	end


 
				    