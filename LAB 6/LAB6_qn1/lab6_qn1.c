//form a chasing LED pattern with eight LEDs

#include <LPC21xx.H>

void delay() {
    int count;
    for (count = 0; count <= 100000; count++);
}

int main()
{
	IODIR0 |= (0xFF<<0);	//	p0.0 to p0.7 1111 1111	   
	while(1)
	{	
		int i = 0;
		for( i=0; i<8; i++)
		{
			IOSET0 |= (1<<i);
			delay();
			IOCLR0 |= (1<<i);
			delay();
	    }
	delay();
	}
	return(0);
}