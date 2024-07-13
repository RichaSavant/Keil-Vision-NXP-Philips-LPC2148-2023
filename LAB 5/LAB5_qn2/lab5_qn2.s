;copy a string stored in memory location “source” to memory location “destination”.	   

	AREA data1, DATA, READONLY
source dcb "Richa\0" 

	AREA data2, DATA, READWRITE
destination dcd 0

	AREA exp, CODE, READONLY
	ldr r0, =source
	ldr r1, =destination

loop
	ldrb r2, [r0] , #1
	strb r2, [r1] , #1
	cmp r2, #"\0"
	bne loop

e b e
	end

	
	 