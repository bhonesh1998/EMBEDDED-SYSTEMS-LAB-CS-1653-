#include<reg51.h>
void main()
{
	int a,i=1,res=1;
	P1=0x26;
	P2=0x00;
	a=P1;
	while(res<=a)
	{
		i++;
		res=i*i;
	}
	P2=i-1;
	

}
	
