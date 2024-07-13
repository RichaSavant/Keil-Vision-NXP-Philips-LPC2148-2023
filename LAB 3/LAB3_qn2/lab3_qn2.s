;Write a ARM assembly language program to perform byte addition of an array of numbers.
;The data bytes are stores in an array starting with memory location “num” and the length of
;the array is stored in memory location “len”. Store the final result in a memory location
;“result”.


	AREA data1 , DATA, READONLY
num dcb 0x01, 0x02, 0x03, 0x04	 ;!!COMMA!! INITIALIZING ARRAY VALUES
len dcb 0x4	; length of array is 4

	AREA data2, DATA, READWRITE
res dcb 0x00   ;result initialized to 0x00

	AREA exp , CODE, READONLY
    ldr r0, =num   ;Address of first ele of array
	ldr r1, =len   ;Address where length of array value present
	ldr r2, =res   ;Address of result destination

	mov r3, #0x00  ;result value register  

	ldr r5, [r1]   ;Loading len value into register
    
adding
	ldrb r4, [r0]  ;loading one BYTE into register
	add r3, r3, r4
	add r0, r0, #0x01  ;Incrementing address to next byte

byte 
	sub r5, r5, #0x01  ;Decrementing length by one
	cmp r5, #0x00
	bne adding
	str r3, [r2]
e b e
	end





