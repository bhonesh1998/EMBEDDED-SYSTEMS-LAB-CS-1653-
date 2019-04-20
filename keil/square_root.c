#include<reg51.h>
void main()
{
	int a,c=0;
	P1=0x10;
	P2=0x00;
	a=P1;
	while(a>1)
	{
	a=a/2;
	c++;
	}
	
	P2=c;
	

}
	
