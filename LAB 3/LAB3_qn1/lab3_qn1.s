;add two 32-bit numbers stored in memory location “value1” and “value2”. 
;Store the result in a memory location “result”.


;ASSIGNING LABELS TO *MEMORY LOCATIONS* + VALUES AT THOSE LOCATIONS
	AREA data1 , DATA , READONLY
;DCD (Define Constant Doubleword) directive is used to allocate memory space and initialize it with a 32-bit (4-byte) doubleword constant.
value1 dcd 0x43	  ;value1 is the label, 0x43 is the value
value2 dcd 0x45	  

	AREA data2, DATA, READWRITE
result dcd 0x00   ;result initialized to 0x00

											   
;COMPUTATION IN THE *REGISTERS*
	AREA exp , CODE, READONLY
	ldr r0, =value1 ;ADDRESS OF value1
	ldr r1, =value2 ;ADDRESS OF value2

	ldr r2, [r0]   ;VALUE AT MEM LOCATION POINTED TO BY r0
	ldr r3, [r1]	;VALUE AT MEM LOCATION POINTED TO BY r1

	add r4, r2, r3

    ldr r5, =result
	str r4, [r5]

e b e
	end

 			 


