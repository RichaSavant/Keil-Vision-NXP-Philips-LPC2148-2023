;find the number in location “num” is odd or even
;If the number is ODD then store 0x01 in location “result” else move 0x02

	AREA data1, DATA, READONLY
num dcd 0x05

	AREA data2, DATA, READWRITE
result dcd 0x00

	AREA exp, CODE, READONLY
	ldr r0 ,=num ;address
	ldr r1, [r0] ;value ie. 0x04
	ldr r5 ,=result ; address

	mov r7, #0x02
	mov r8, #0x01

    mov r3, #0
	movs r2, r1, lsr #1
	addcs r3, r3, #1
	cmp r3, #0
	streq r7 , [r5]
	strne r8 , [r5]

e b e
	end  
	 
