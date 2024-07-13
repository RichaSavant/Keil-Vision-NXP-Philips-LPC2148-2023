	AREA data,DATA,READONLY
num dcd 0x04

	AREA data1,DATA,READWRITE
count dcd 0x00

	AREA expt,CODE,READONLY
	ldr r0,=num
	ldr r1,=count
	ldr r2,[r0]
	mov r3,#0x08
	mov r4,#0x00
shift movs r2,r2,lsr #1
	addcc r4,r4,#0x01
 	sub r3,r3,#0x01
 	cmp r3,#0x00
 	bne shift
 	str r4,[r1]
e b e
 	end