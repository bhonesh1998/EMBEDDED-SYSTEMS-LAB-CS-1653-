#include<reg51.h>
//#include<stdio.h>
void main()
{
	unsigned char a,b,c,d,carr=0;
	int e,f;
	P1=0x00;
	P2=0x00;
	P3=0x00;
	
	a=0xff;
	b=0xff;
	c=0xff;
	d=0xff;
	
	
	e=b+d; 
	f=a+c;
//	printf("%c",e);
	
	if(e>255)
	{
		carr++;
	}
	f+=carr;
	P1=f;
	P2=e;
	P3=carr;
	
}
