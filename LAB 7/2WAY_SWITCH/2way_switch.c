//NOT WORKING PROPERLY

#include <LPC21xx.H>

delay()
{
int count;
for(count=0;count<=100000;count++);
}

int main()
{

IODIR0 |= (1<<10);

IODIR0 &= ~(1 << 1);  // Clear bit 1 to set P0.1 as an input
IODIR0 &= ~(1 << 2);  // Clear bit 2 to set P0.2 as an input

while(1)
{
if( (IOPIN0 & (1<<1)) || (IOPIN0 & (1<<2)) )
	{
	if (IOSET0 & (1<<10))
		{
		delay();
		IOCLR0 |= (1<<10);
		delay();
		}
	else
	   {
	   IOSET0 |= (1<<10);
	   delay();
	   }
	}
	delay();
}
return (0);
}

