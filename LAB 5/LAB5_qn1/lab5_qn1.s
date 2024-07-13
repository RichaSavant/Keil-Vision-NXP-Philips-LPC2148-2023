;Write a ARM assembly language program to find the length of the string terminated by
;NULL character. The string is stored in memory location “string”. 
;Store the result in memory location “length”.

	AREA data1, DATA, READONLY
string dcb "Amrita\0"

	AREA data2, DATA, READWRITE
length dcd 0

	AREA exp, CODE, READONLY
	ldr r0, =string
	ldr r1, =length
	
	mov r3, #0
	
loop
	ldrb r2, [r0] , #1 ;POST INCREMENT
	cmp r2, #"\0"
	addne r3, r3, #1
	bne loop

	str r3, [r1]
e b e
	end


			