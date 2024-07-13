;Write ARM assembly language program to perform addition of two 64bits numbers. Assume
;Hint: ADC instruction should be used to perform second word addition.

	AREA data1, DATA, READONLY
data1 dcd 0x01, 0x02 
data2 dcd 0x03, 0x04


	AREA data2, DATA, READWRITE
sum dcd 0x00, 0x00

	AREA exp, CODE, READONLY
	ldr r0, =data1
	ldr r1, =data2

	ldr r2, [r0]
	ldr r3, [r1]

	mov r4, #0x00
	add r4, r2, r3

	add r0, r0, #0x04
	add r1, r1, #0x04

	ldr r2, [r0]
	ldr r3, [r1]

	mov r5, #0x00
	adc r5, r2, r3

