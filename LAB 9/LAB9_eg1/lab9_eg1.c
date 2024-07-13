//configure Timer 0 create a delay of 1secs between an LED on and off. 
//Assume LED's are connected in all the PINS of GPIO0 and clock frequency is 3MHz.
//Hint1: Use the formula in Lecture Section-9 Slide 36 to calculate the Match register value.
//Hint2: Use Logic analyzer to visualize the time delay

//	CLOCK FREQUENCY (f) --> 3 MHz = 3x10^6 Hz
//	DELAY = 1/f = 0.3 x 10^-6 s
//	DESIRED DELAY = 1s
//	TOTAL PULSES => 1/(0.3 x 10^-6) = 3000000 pulses.


#include<LPC21xx.H>

void delay()
{
//match register [no. to match with]:
T0MR0 = 3000000;   //COMPARED WITH T0TC VALUE
//match control register [to do if match]:
T0MCR = 0x00000004;	 //interrupt will be generated.	[LPC 2000 SERIES]

//timer control register:
T0TCR = 1;	 //ENABLING TIMER 0
while(T0TC != T0MR0);

T0TC = 0;    //reset WHEN EQUAL
}


main()
{
IODIR0 = 0xffffffff;  //all pins are O/P
while(1)
{
IOSET0 = 0xffffffff;
delay();
IOCLR0 = 0xffffffff;
delay();
}

}







