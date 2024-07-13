;perform addition of two 64 bits numbers. 
;Assume data is stored in memory locations “data1” and “data2”. 
;Each location will have two 32bit numbers stored. (IN AN ARRAY) 
;Store the final summation result in location “sum”. 
;Hint: ADC instruction should be used to perform second word addition.

	AREA data_1 , DATA, READONLY
data1 dcd 0x0405, 0x0000   ; each no. of 32 bits  = 64
data2 dcd 0x0607, 0x0000   ; each no. of 32 bits  = 64

	AREA data_2, DATA, READWRITE
sum dcd 0x0000 , 0x0000

	AREA exp, CODE, READONLY
	ldr r0, =data1
	ldr r1, [r0]
	ldr r2, [r0,#4]   ;pre-increment

	ldr r3, =data2
	ldr r4, [r3]
	ldr r5, [r3,#4]   ;pre-increment

	add r6, r1, r4
	adc r7, r2, r5	 ;add with carry from previous computation

	ldr r8, =sum
	str r6, [r8]
	str r7, [r8,#4]

e b e
	end








