;find two strings are equal or not. 
;The two strings are stored in locations “string1” and “string2”. 
;If it equal move 0xFF to location “result” else move 0x00.

	AREA data1, DATA, READONLY
string1 dcb "Amrita\0"
string2 dcb "Amrita\0"

	AREA data2, DATA, READWRITE
result dcd 0

	AREA exp, CODE, READONLY
	ldr r0, =string1
	ldr r1, =string2
	ldr r10, =result

	mov r8 , #0x06
	mov r9, #0x00	;counter

loop
	ldrb r2, [r0] , #1
	ldrb r3, [r1] , #1
	
	cmp r2, r3
	addeq r9 , r9, #1

	cmp r2, #"\0"
	bne loop

	cmp r9, r8
	
	moveq r6,#0xff
 	movne r6,#0x00
	str r6,[r10]
e b e
	end










