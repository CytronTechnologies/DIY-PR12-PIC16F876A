//============================================================================================
//	Author				:Cytron Technologies		
//	Project				:REAL TIME CLOCK
//	Project description	:Display time, day, date, month and year by using 
//						 DS 1307 real time clock chip and LCD display.The 
//						 time and calender can be changeed by pressing push 
//						 button.
//=============================================================================================

//=============================================================================================
//	include
//=============================================================================================
#include <pic.h> 
#include "i2c.h"
#include "i2c_rtc.h" 

//==========================================================================================
//	configuration
//=========================================================================================
__CONFIG ( 0x3F32 );

//==========================================================================================
//	define
//==========================================================================================
#define	sw0			RC0
#define sw1			RC1
#define sw2			RC2
#define	rs			RA0
#define	e			RA1
#define	led_yellow	RA2
#define led_white	RA3
#define	lcd_data	PORTB
#define	sdata		RC4			// SDA
#define	tclk		RC3			// SCL



//===========================================================================================
//	global variable
//===========================================================================================
unsigned char step=0;
unsigned char store=0;
unsigned char clksec=0;
unsigned char clkmin=0;
unsigned char clkhrs=0;
unsigned char day=0;
unsigned char date=0;
unsigned char month=0;
unsigned char year=0;

unsigned char secondh=0;
unsigned char secondl=0;
unsigned char minutesh=0;
unsigned char minutesl=0;
unsigned char hourh=0;
unsigned char hourl=0;
unsigned char dateh=0;
unsigned char datel=0;
unsigned char monthh=0;
unsigned char monthl=0;
unsigned char yearh=0;
unsigned char yearl=0;

//==============================================================================================
//	function prototype
//==============================================================================================
void delay(unsigned long data);
void send_config(unsigned char data);
void send_char(unsigned char data);
void e_pulse(void);
void lcd_goto(unsigned char data);
void lcd_clr(void);
void send_string(const char *s);
void send_dec(unsigned long data,unsigned char num_dig);
void writertc(void);	
void readrtc(void);			// Read RTC 

//============================================================================================
//	main function
//============================================================================================
void main(void)
{
	i2c_initialize();
	i2c_rtc_initialize();
	unsigned char i;
	
	ADCON1 = 0b00000110;			//set all portA as digital I/O
	TRISA = 0b00000000;				//set all PORTA pin as OUTPUT
	TRISB = 0b00000000;				//set all PORTB pin as output
	TRISC = 0b00011111;				//set all PORTC pin as output

	led_white=0;					//led white off
	led_yellow=0;					//led yellow off

	send_config(0b00000001);		//clear display at lcd
	send_config(0b00000010);		//Lcd Return to home 
	send_config(0b00000110);		//entry mode-cursor increase 1
	send_config(0b00001100);		//diplay on, cursor off and cursor blink off
	send_config(0b00111000);		//function
	
	readrtc();							
}
//================================================================================================
// Write to RTC function
//================================================================================================
	
void writertc(void)
{
	led_yellow=0;								//led yellow off
	led_white=1;								//led white on

		
	while(sw0==0)continue;						//waiting sw0 to depress
		
// SET HOUR ===========================================================
	
	while(sw0==1)						//infinity loop if switch0 is not pressed
	{
		if(sw1==1)						//if switch 1 is not pressed
		{
				lcd_goto(0);			//maintain current hour value on LCD and make it blinking
				send_dec(clkhrs,2);	
				delay(10000);
				lcd_goto(1);
				send_char(' ');
				lcd_goto(0);
				send_char(' ');
				delay(10000);
		}	
		if(sw1==0)								//if switch 1 is pressed
		{	
			while(sw1==0)continue;				//wait switch1 to depress

			if(clkhrs<=22)clkhrs++;
			else clkhrs=0;
		}
	}

	lcd_goto(0);								//overwrite changed hour value on LCD
	send_dec(clkhrs,2);	
	while(sw0==0)continue;						//wait switch 0 to be depressed


// SET MINUTES ====================================================================

	while(sw0==1)								//infinity loop if switch0 is not pressed
	{
		if(sw1==1)								//if switch 1 is not pressed
		{
				lcd_goto(3);				//maintain current minute value on LCD and make it blinking
				send_dec(clkmin,2);	
				delay(10000);
				lcd_goto(4);
				send_char(' ');
				lcd_goto(3);
				send_char(' ');
				delay(10000);
		}	
		if(sw1==0)								//if switch 1 is pressed
		{	
			while(sw1==0)continue;				//wait switch1 to depress

			if(clkmin<=58) clkmin++;
			else clkmin=0;
		}
	}
	
	lcd_goto(3);								//overwrite changed minute value on LCD
	send_dec(clkmin,2);	
	while(sw0==0)continue;						//wait switch 0 to be depressed

	
// SET SECONDS ===============================================================

	while(sw0==1)							//infinity loop if switch0 is not pressed
	{
		
		if(sw1==1)							//if switch 1 is not pressed
		{
				lcd_goto(6);				//maintain current minute value on LCD and make it blinking
				send_dec(clksec,2);	
				delay(10000);
				lcd_goto(7);
				send_char(' ');
				lcd_goto(6);
				send_char(' ');
				delay(10000);
		}	
		if(sw1==0)								//if switch 1 is pressed
		{	
			while(sw1==0)continue;				//wait switch1 to depress

			if(clksec<=58) clksec++;
			else clksec=0;
		}
	}

	lcd_goto(6);								//overwrite changed second value on LCD
	send_dec(clksec,2);	
	while(sw0==0)continue;						//wait switch 0 to be depressed


	
// SET DATE =========================================

	while(sw0==1)						//infinity loop if switch0 is not pressed
	{
		
		if(sw1==1)						//if switch 1 is not pressed
		{
				lcd_goto(20);				//maintain current date value on LCD and make it blinking
				send_dec(date,2);	
				delay(10000);
				lcd_goto(21);
				send_char(' ');
				lcd_goto(20);
				send_char(' ');
				delay(10000);
		}	
		if(sw1==0)								//if switch 1 is pressed
		{	
			while(sw1==0)continue;				//wait switch1 to depress

			if(date<=30) date++;
			else date=1;
		}
	}

	lcd_goto(20);								//overwrite changed date value on LCD
	send_dec(date,2);
	while(sw0==0)continue;						//wait switch 0 to be depressed

// SET MONTH ==========================================

	while(sw0==1)						//infinity loop if switch0 is not pressed
	{
		
		if(sw1==1)						//if switch 1 is not pressed
		{
				lcd_goto(23);				//maintain current month value on LCD and make it blinking
				send_dec(month,2);	
				delay(10000);
				lcd_goto(24);
				send_char(' ');
				lcd_goto(23);
				send_char(' ');
				delay(10000);
		}	
		if(sw1==0)								//if switch 1 is pressed
		{	
			while(sw1==0)continue;				//wait switch1 to depress

			if(month<=11) month++;
			else month=1;
		}
	}

	lcd_goto(23);								//overwrite changed month value on LCD
	send_dec(month,2);
	while(sw0==0)continue;						//wait switch 0 to be depressed


// SET YEAR =======================================================================================

	while(sw0==1)						//infinity loop if switch0 is not pressed
	{
		
		if(sw1==1)						//if switch 1 is not pressed
		{
				lcd_goto(26);				//maintain current month value on LCD and make it blinking
				send_dec(year,2);
				delay(10000);
				lcd_goto(27);
				send_char(' ');
				lcd_goto(26);
				send_char(' ');
				delay(10000);
		}	
		if(sw1==0)								//if switch 1 is pressed
		{	
			while(sw1==0)continue;				//wait switch1 to depress

			if(year<=99) year++;
			else year=0;
		}
	}

	lcd_goto(26);							//overwrite changed year value on LCD
	send_dec(year,2);
	while(sw0==0)continue;					//wait switch 0 to be depressed


// SET DAY ====================================================================================

	while(sw0==1)					//infinity loop if switch0 is not pressed
	{
		if(sw1==1)					//if switch 1 is not pressed
		{	
			if(day==7)				//maintain current day value on LCD and make it blinking
			{
			lcd_goto(31);
			send_string("SUN");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
			}
			else if(day==1)
			{
			lcd_goto(31);
			send_string("MON");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
			}
			else if(day==2)
			{
			lcd_goto(31);
			send_string("TUE");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
			}
			else if(day==3)
			{
			lcd_goto(31);
			send_string("WED");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
			}
			else if(day==4)
			{
			lcd_goto(31);
			send_string("THU");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
			}
			else if(day==5)
			{
			lcd_goto(31);
			send_string("FRI");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
			}
			else if(day==6)
			{
			lcd_goto(31);
			send_string("SAT");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
			}
		}
		else										//if switch 1 is pressed
		{
			while(sw1==0)continue;					//wait switch1 to depress
			if(day>6)								//if day value greater than 11
			{
				day=1;								//change setday variable to 1
			}
			else
			{
				day+=1;								//increse day value by 1
			}
		}
	}
	if(sw1==0)
	{
		if(day==7)										//overwrite changed day value on LCD
		{
			lcd_goto(31);
			send_string("SUN");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
		}
		else if(day==1)
		{
			lcd_goto(31);
			send_string("MON");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
		}
		else if(day==2)
		{
			lcd_goto(31);
			send_string("TUE");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
		}
		else if(day==3)
		{
			lcd_goto(31);
			send_string("WED");
		}
		else if(day==4)
		{
			lcd_goto(31);
			send_string("THU");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
		}
		else if(day==5)
		{
			lcd_goto(31);
			send_string("FRI");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
		}
		else if(day==6)
		{
			lcd_goto(31);
			send_string("SAT");
			delay(10000);
			lcd_goto(31);
			send_char(' ');
			send_char(' ');
			send_char(' ');
			delay(10000);
		}
	}
	while(sw0==0)continue;					//wait switch 0 to be depressed
	
	i2c_rtc_set_seconds(clksec);				//send changed second
	i2c_rtc_set_minutes(clkmin);				//send changed minute
	i2c_rtc_set_hours(clkhrs);					//send changed hour
	i2c_rtc_set_day(day);						//send changed day
	i2c_rtc_set_date(date);						//send changed date
	i2c_rtc_set_month(month);					//send changed month					
	i2c_rtc_set_year(year);						//send changed year

}

//===================================================================================
// Read RTC function
//===================================================================================

void readrtc(void)
{	
	while(1)
	{
		led_yellow=1;
		led_white=0;
		if(sw0==0)								//reset button
		{
			writertc();							//goto write mode
		}
		else
		{
			clksec=uc_i2c_rtc_get_seconds();					//read 1 byte seconds
			clkmin=	uc_i2c_rtc_get_minutes();					//read 1 byte min
			clkhrs=uc_i2c_rtc_get_hours();						//read 1 byte hrs
			day=uc_i2c_rtc_get_day();							//read 1 byte day
			date=uc_i2c_rtc_get_date();							//read 1 byte date
			month=uc_i2c_rtc_get_month();						//read 1 byte month
			year=uc_i2c_rtc_get_year();							//read 1 byte year
			
			lcd_goto(0);
			send_dec(clkhrs,2);
	
			lcd_goto(2);						//display ':'
			send_char(0x3A);
	
			lcd_goto(3);
			send_dec(clkmin,2);
	
			lcd_goto(5);						//display ':'
			send_char(0x3A);
	
			lcd_goto(6);
			send_dec(clksec,2);

			if(day==7)							// display day
			{
			lcd_goto(31);
			send_string("SUN");
			}
			else if(day==1)
			{
			lcd_goto(31);
			send_string("MON");		
			}
			else if(day==2)
			{
			lcd_goto(31);
			send_string("TUE");
			}
			else if(day==3)
			{
			lcd_goto(31);
			send_string("WED");
			}
			else if(day==4)
			{
			lcd_goto(31);
			send_string("THU");
			}
			else if(day==5)
			{
			lcd_goto(31);
			send_string("FRI");
			}
			else if(day==6)
			{
			lcd_goto(31);
			send_string("SAT");
			}

			lcd_goto(20);					// display date
			send_dec(date,2);

			lcd_goto(22);					//display '/'
			send_char(0x2F);


			lcd_goto(23);					// display month
			send_dec(month,2);

			lcd_goto(25);					// display '/'
			send_char(0x2F);

			lcd_goto(26);					// display year							
			send_dec(year,2);
		
		}	
	}		
}

//==========================================================================
//	LCD	functions
//==========================================================================
void delay(unsigned long data)
{
	for( ;data>0;data-=1);
}
void send_config(unsigned char data)
{
	rs=0;										//clear rs into config mode 
	lcd_data=data;
	delay(300);
	e_pulse();
}
void send_char(unsigned char data)
{
	rs=1;										//set rs into write mode
	lcd_data=data;						 
	delay(300);
	e_pulse();
}
void e_pulse(void)
{
	e=1;
	delay(300);
	e=0;
	delay(300);
}
void lcd_goto(unsigned char data)
{
 	if(data<16)
	{
	 	send_config(0x80+data);
	}
	else
	{
	 	data=data-20;
		send_config(0xc0+data);
	}
}
void lcd_clr(void)
{
 	send_config(0x01);
	delay(350);	
}
void send_string(const char *s)
{          
	unsigned char i=0;
  	while (s && *s)send_char (*s++);
}
void send_dec(unsigned long data,unsigned char num_dig)
{
	
	if(num_dig>=10)
	{
		data=data%10000000000;
		send_char(data/1000000000+0x30);
	}	
	if(num_dig>=9)
	{
		data=data%1000000000;
		send_char(data/100000000+0x30);
	}	
	if(num_dig>=8)
	{
		data=data%100000000;
		send_char(data/10000000+0x30);
	}	
	if(num_dig>=7)
	{
		data=data%10000000;
		send_char(data/1000000+0x30);
	}	
	if(num_dig>=6)
	{
		data=data%1000000;
		send_char(data/100000+0x30);
	}	
	if(num_dig>=5)
	{
		data=data%100000;
		send_char(data/10000+0x30);
	}	
	if(num_dig>=4)
	{
		data=data%10000;
		send_char(data/1000+0x30);
	}
	if(num_dig>=3)
	{
		data=data%1000;
		send_char(data/100+0x30);
	}
	if(num_dig>=2)
	{
		data=data%100;
		send_char(data/10+0x30);
	}
	if(num_dig>=1)
	{
		data=data%10;
		send_char(data+0x30);
	}
}

		