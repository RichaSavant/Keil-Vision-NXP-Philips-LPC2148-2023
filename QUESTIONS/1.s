;find 3rd occurence of a number stored in location "input" from array of numbers stored in location "array"
;replace that number by 0x100

	AREA data1 , DATA , READONLY
array dcd 0x01, 0x02, 0x02, 0x04, 0x03, 0x02
len dcd 0x06

	AREA data2, DATA, READWRITE
input dcd 0x02

	AREA exp, CODE, READONLY
	ldr r0, =array
	ldr r1, =len
	ldr r2, =input


	ldr r3, [r2]

loop
	ldr r1, [r0] , #1
	cmp r1 , r3


