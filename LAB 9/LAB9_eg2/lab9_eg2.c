//count the external events occurred using Counter

#include <LPC21xx.H>

#define T0CTCR (*((volatile unsigned long *)0xE0004070))
#define T1CTCR (*((volatile unsigned long *)0xE0008070))

int count;

int main()
{
PINSEL0 = 0x00200020; // 0000 0000 0010 0000 0000 0000 0010 0000 --> CAPTURE 0.0 TIMER 0 , CAPTURE 1.0 TIMER 1

T0TCR = 0x00000001;		 //initializing timer 1
T1TCR = 0x00000001;		 //initializing timer 2

T0CTCR = 0x00000001;  //counting on RISING EDGE of timer0
T1CTCR = 0x00000001; //counting on RISING EDGE of timer1

while(1)
	count = T0TC;	//continuously updates the count variable with the current value of Timer 0 counter

}