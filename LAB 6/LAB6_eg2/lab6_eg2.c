//program to blink an LED connected to P1.17 

#include<LPC21xx.H>

delay()
{
int count;
for(count=0;count<10000;count++);
}

int main()
{
IODIR1 |= (1<<17);  //setting as an ouput pin

while(1)
{
IOSET1 |= (1<<17);	  //sending HIGH signal
delay();
IOCLR1 |= (1<<17);	  //sending LOW signal
delay();
}
return (0);
}
