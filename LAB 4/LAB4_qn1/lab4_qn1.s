;count the number of negative numbers in an array of 32-bit numbers stored in memory location “num” 
;and the length of the array is stored in memory location “len”. 
;Store the final count in a memory location “result”.

	AREA data1 , DATA, READONLY
num dcd 1 , 2 , 3 , -4
len dcd 4

	AREA data2, DATA, READWRITE
result dcb 0

	AREA exp , CODE, READONLY
	ldr r0 , =num
	ldr r1 , =len
	ldr r7 , [r1]
	ldr r9 ,=result
	mov r2, #0

loop
	ldr r3, [r0]
	movs r3, r3
	addmi r2, r2, #1
	sub r7, r7, #1
	cmp r7, #0
	add r0, r0, #4
	bne loop

	str r2 , [r9]
e b e
	end




