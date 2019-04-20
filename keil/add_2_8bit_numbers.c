#include<reg51.h>
void main()
{
	unsigned char a,b,c=0;
	P1=0x00;
	a=0x02;
	b=0x03;
	c=a+b;
	P1=c;
}
