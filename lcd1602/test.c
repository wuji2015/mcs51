#include "std.h"
#include "1602.h"
int main(void)
{
	lcd_init();
	//display_char(0, 1, 'a');
	display_string("zj's test,zj's test,zj's test,zj's test");
	while(1);
}
