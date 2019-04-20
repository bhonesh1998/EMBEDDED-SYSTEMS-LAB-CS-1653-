#include<reg51.h>
void delay(int time)
{
	int i,j;
for(i=0;i<time;i++)
	for(j=0;j<1275;j++);
}

void main()
{

  int a,b,c,d;
	P1=0xff;
	c=0;
	a=1;
	b=1;
	P3=a;
	delay(1000);
	while(d<10)
	{
		P3=b;
		delay(1000);
		c=a+b;
		a=b;
		b=c;
		d++;
	}
}
