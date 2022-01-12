#include <reg51.h>

unsigned char scroll_pattern[] = { 
	0x39, 0x3f, 0x6f, 0xbf, 0x39, 0x3f, 
	0x6f, 0x86, 0x39, 0x3f, 0x6f, 0xdb, 
	0x39, 0x3f, 0x6f, 0xcf, 0x39, 0x3f, 
	0x6f};

void delay(int time)
{
	unsigned int i,j;
	for (i=0; i<time; i++)
	for (j=0; j<125; j++);
}

void display(unsigned int i)
{
	unsigned int j;
	for(j=0; j<20; j++)
	{
		P2 = 0x1;
		P0 = scroll_pattern[i-4];
		delay(10);
		P2 = 0x2;
		P0 = scroll_pattern[i-3];
		delay(10);
		P2 = 0x4;
		P0 = scroll_pattern[i-2];
		delay(10);
		P2 = 0x8;
		P0 = scroll_pattern[i-1];
		delay(10);
	}
}

void main(void)
{
	unsigned int i;
	while(1)
	for(i=4; i<20; i++)
		display(i);
}