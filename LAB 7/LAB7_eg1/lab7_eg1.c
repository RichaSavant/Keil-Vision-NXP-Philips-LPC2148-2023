//turn on/off an LED connected to P0.10 using a on/off switch connected in P0.1

#include <LPC21xx.H>

int main()
{
IODIR0 |= (1<<10); //10th pin--> O/P 
IODIR0 |= (0<<1);  //1st pin --> I/P

while(1)
{
if ( IOPIN0 & (1<<1) ) //if 1st pin HIGH
	IOSET0 |= (1<<10);
else
	IOCLR0 |= (1<<10);
}
return (0);
}
	