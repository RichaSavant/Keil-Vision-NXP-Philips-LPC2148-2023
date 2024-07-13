;find the first blank space in a string stored in memory location “string”. 
;Store the position of the black space in memory location “destination”.

	AREA data1 , DATA , READONLY
string dcb "Richa Savant\0" ;\0 represents end of string (null bit)

	AREA data2, DATA, READWRITE
destination dcd 0

	AREA exp, CODE, READONLY
	
	ldr r0, =string
	ldr r1, =destination
	mov r9 , #0x00	

loop	
	ldr r2, [r0] , #1
	add r9, r9, #1
	cmp r2, #"\0"
	moveq r3, #-1
	cmp r2, #" "
	bne loop
	beq space

space
	strb r9, [r1]
e b e
	end

	  													    
