opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 20 "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	psect config,class=CONFIG,delta=2 ;#
# 20 "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	dw 0x3F32 ;#
	FNCALL	_main,_i2c_initialize
	FNCALL	_main,_i2c_rtc_initialize
	FNCALL	_main,_send_config
	FNCALL	_main,_readrtc
	FNCALL	_readrtc,_writertc
	FNCALL	_readrtc,_uc_i2c_rtc_get_seconds
	FNCALL	_readrtc,_uc_i2c_rtc_get_minutes
	FNCALL	_readrtc,_uc_i2c_rtc_get_hours
	FNCALL	_readrtc,_uc_i2c_rtc_get_day
	FNCALL	_readrtc,_uc_i2c_rtc_get_date
	FNCALL	_readrtc,_uc_i2c_rtc_get_month
	FNCALL	_readrtc,_uc_i2c_rtc_get_year
	FNCALL	_readrtc,_lcd_goto
	FNCALL	_readrtc,_send_dec
	FNCALL	_readrtc,_send_char
	FNCALL	_readrtc,_send_string
	FNCALL	_writertc,_lcd_goto
	FNCALL	_writertc,_send_dec
	FNCALL	_writertc,_delay
	FNCALL	_writertc,_send_char
	FNCALL	_writertc,_send_string
	FNCALL	_writertc,_i2c_rtc_set_seconds
	FNCALL	_writertc,_i2c_rtc_set_minutes
	FNCALL	_writertc,_i2c_rtc_set_hours
	FNCALL	_writertc,_i2c_rtc_set_day
	FNCALL	_writertc,_i2c_rtc_set_date
	FNCALL	_writertc,_i2c_rtc_set_month
	FNCALL	_writertc,_i2c_rtc_set_year
	FNCALL	_send_string,_send_char
	FNCALL	_send_dec,___llmod
	FNCALL	_send_dec,___lldiv
	FNCALL	_send_dec,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_send_char,_delay
	FNCALL	_send_char,_e_pulse
	FNCALL	_send_config,_delay
	FNCALL	_send_config,_e_pulse
	FNCALL	_e_pulse,_delay
	FNCALL	_i2c_rtc_set_year,___awmod
	FNCALL	_i2c_rtc_set_year,___awdiv
	FNCALL	_i2c_rtc_set_year,_uc_i2c_write
	FNCALL	_uc_i2c_rtc_get_year,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_year,___bmul
	FNCALL	_i2c_rtc_set_month,___awmod
	FNCALL	_i2c_rtc_set_month,___awdiv
	FNCALL	_i2c_rtc_set_month,_uc_i2c_write
	FNCALL	_uc_i2c_rtc_get_month,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_month,___bmul
	FNCALL	_i2c_rtc_set_date,___awmod
	FNCALL	_i2c_rtc_set_date,___awdiv
	FNCALL	_i2c_rtc_set_date,_uc_i2c_write
	FNCALL	_uc_i2c_rtc_get_date,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_date,___bmul
	FNCALL	_i2c_rtc_set_day,_uc_i2c_write
	FNCALL	_uc_i2c_rtc_get_day,_uc_i2c_read
	FNCALL	_i2c_rtc_set_hours,___awmod
	FNCALL	_i2c_rtc_set_hours,___awdiv
	FNCALL	_i2c_rtc_set_hours,_uc_i2c_read
	FNCALL	_i2c_rtc_set_hours,_uc_i2c_write
	FNCALL	_uc_i2c_rtc_get_hours,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_hours,___bmul
	FNCALL	_i2c_rtc_set_minutes,___awmod
	FNCALL	_i2c_rtc_set_minutes,___awdiv
	FNCALL	_i2c_rtc_set_minutes,_uc_i2c_write
	FNCALL	_uc_i2c_rtc_get_minutes,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_minutes,___bmul
	FNCALL	_i2c_rtc_set_seconds,___awmod
	FNCALL	_i2c_rtc_set_seconds,___awdiv
	FNCALL	_i2c_rtc_set_seconds,_uc_i2c_read
	FNCALL	_i2c_rtc_set_seconds,_uc_i2c_write
	FNCALL	_uc_i2c_rtc_get_seconds,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_seconds,___bmul
	FNCALL	_i2c_rtc_initialize,_uc_i2c_read
	FNCALL	_i2c_rtc_initialize,_uc_i2c_write
	FNROOT	_main
	global	_b_i2c_error_flag
	global	_clkhrs
	global	_clkmin
	global	_clksec
	global	_date
	global	_dateh
	global	_datel
	global	_day
	global	_hourh
	global	_hourl
	global	_minutesh
	global	_minutesl
	global	_month
	global	_monthh
	global	_monthl
	global	_secondh
	global	_secondl
	global	_step
	global	_store
	global	_year
	global	_yearh
	global	_yearl
	global	_PORTB
psect	text578,local,class=CODE,delta=2
global __ptext578
__ptext578:
_PORTB	set	6
	global	_SSPBUF
_SSPBUF	set	19
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_SSPEN
_SSPEN	set	165
	global	_SSPM0
_SSPM0	set	160
	global	_SSPM1
_SSPM1	set	161
	global	_SSPM2
_SSPM2	set	162
	global	_SSPM3
_SSPM3	set	163
	global	_SSPOV
_SSPOV	set	166
	global	_WCOL
_WCOL	set	167
	global	_ADCON1
_ADCON1	set	159
	global	_SSPADD
_SSPADD	set	147
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_BF
_BF	set	1184
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_RW
_RW	set	1186
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_4:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_3:	
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_6:	
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	0
psect	strings
	
STR_2:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_1:	
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_7:	
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_5:	
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	85	;'U'
	retlw	0
psect	strings
STR_12	equ	STR_5+0
STR_19	equ	STR_5+0
STR_14	equ	STR_7+0
STR_21	equ	STR_7+0
STR_8	equ	STR_1+0
STR_15	equ	STR_1+0
STR_9	equ	STR_2+0
STR_16	equ	STR_2+0
STR_13	equ	STR_6+0
STR_20	equ	STR_6+0
STR_10	equ	STR_3+0
STR_17	equ	STR_3+0
STR_11	equ	STR_4+0
STR_18	equ	STR_4+0
	file	"PR 12.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_b_i2c_error_flag:
       ds      1

_clkhrs:
       ds      1

_clkmin:
       ds      1

_clksec:
       ds      1

_date:
       ds      1

_dateh:
       ds      1

_datel:
       ds      1

_day:
       ds      1

_hourh:
       ds      1

_hourl:
       ds      1

_minutesh:
       ds      1

_minutesl:
       ds      1

_month:
       ds      1

_monthh:
       ds      1

_monthl:
       ds      1

_secondh:
       ds      1

_secondl:
       ds      1

_step:
       ds      1

_store:
       ds      1

_year:
       ds      1

_yearh:
       ds      1

_yearl:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+016h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_readrtc
?_readrtc:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_e_pulse
?_e_pulse:	; 0 bytes @ 0x0
	global	?_i2c_initialize
?_i2c_initialize:	; 0 bytes @ 0x0
	global	??_i2c_initialize
??_i2c_initialize:	; 0 bytes @ 0x0
	global	?_uc_i2c_write
?_uc_i2c_write:	; 0 bytes @ 0x0
	global	?_i2c_rtc_initialize
?_i2c_rtc_initialize:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_seconds
?_i2c_rtc_set_seconds:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_minutes
?_i2c_rtc_set_minutes:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_hours
?_i2c_rtc_set_hours:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_day
?_i2c_rtc_set_day:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_date
?_i2c_rtc_set_date:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_month
?_i2c_rtc_set_month:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_year
?_i2c_rtc_set_year:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_writertc
?_writertc:	; 0 bytes @ 0x0
	global	?_uc_i2c_read
?_uc_i2c_read:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_seconds
?_uc_i2c_rtc_get_seconds:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_minutes
?_uc_i2c_rtc_get_minutes:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_hours
?_uc_i2c_rtc_get_hours:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_day
?_uc_i2c_rtc_get_day:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_date
?_uc_i2c_rtc_get_date:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_month
?_uc_i2c_rtc_get_month:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_year
?_uc_i2c_rtc_get_year:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	uc_i2c_read@uc_register
uc_i2c_read@uc_register:	; 1 bytes @ 0x0
	global	uc_i2c_write@uc_register
uc_i2c_write@uc_register:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??_uc_i2c_read
??_uc_i2c_read:	; 0 bytes @ 0x1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	uc_i2c_write@uc_data
uc_i2c_write@uc_data:	; 1 bytes @ 0x1
	ds	1
	global	??_uc_i2c_write
??_uc_i2c_write:	; 0 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	uc_i2c_write@uc_slave_address
uc_i2c_write@uc_slave_address:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	??_i2c_rtc_set_day
??_i2c_rtc_set_day:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	uc_i2c_read@count
uc_i2c_read@count:	; 4 bytes @ 0x5
	ds	1
	global	i2c_rtc_set_day@uc_value
i2c_rtc_set_day@uc_value:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	??_e_pulse
??_e_pulse:	; 0 bytes @ 0x8
	global	??___llmod
??___llmod:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	send_config@data
send_config@data:	; 1 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	global	uc_i2c_read@uc_received_byte
uc_i2c_read@uc_received_byte:	; 1 bytes @ 0x9
	global	i2c_rtc_set_minutes@uc_value
i2c_rtc_set_minutes@uc_value:	; 1 bytes @ 0x9
	global	i2c_rtc_set_date@uc_value
i2c_rtc_set_date@uc_value:	; 1 bytes @ 0x9
	global	i2c_rtc_set_month@uc_value
i2c_rtc_set_month@uc_value:	; 1 bytes @ 0x9
	global	i2c_rtc_set_year@uc_value
i2c_rtc_set_year@uc_value:	; 1 bytes @ 0x9
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	1
	global	uc_i2c_read@uc_slave_address
uc_i2c_read@uc_slave_address:	; 1 bytes @ 0xA
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0xA
	global	send_string@i
send_string@i:	; 1 bytes @ 0xA
	ds	1
	global	??_i2c_rtc_initialize
??_i2c_rtc_initialize:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_seconds
??_uc_i2c_rtc_get_seconds:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_minutes
??_uc_i2c_rtc_get_minutes:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_hours
??_uc_i2c_rtc_get_hours:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_day
??_uc_i2c_rtc_get_day:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_date
??_uc_i2c_rtc_get_date:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_month
??_uc_i2c_rtc_get_month:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_year
??_uc_i2c_rtc_get_year:	; 0 bytes @ 0xB
	global	i2c_rtc_set_seconds@uc_current_register_value
i2c_rtc_set_seconds@uc_current_register_value:	; 1 bytes @ 0xB
	global	i2c_rtc_set_hours@uc_current_register_value
i2c_rtc_set_hours@uc_current_register_value:	; 1 bytes @ 0xB
	global	send_string@s
send_string@s:	; 1 bytes @ 0xB
	ds	1
	global	i2c_rtc_set_seconds@uc_value
i2c_rtc_set_seconds@uc_value:	; 1 bytes @ 0xC
	global	i2c_rtc_set_hours@uc_value
i2c_rtc_set_hours@uc_value:	; 1 bytes @ 0xC
	ds	1
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	ds	1
	global	??_send_dec
??_send_dec:	; 0 bytes @ 0xE
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_send_dec
?_send_dec:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_seconds
??_i2c_rtc_set_seconds:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_minutes
??_i2c_rtc_set_minutes:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_hours
??_i2c_rtc_set_hours:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_date
??_i2c_rtc_set_date:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_month
??_i2c_rtc_set_month:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_year
??_i2c_rtc_set_year:	; 0 bytes @ 0x0
	global	uc_i2c_rtc_get_seconds@uc_i2c_data
uc_i2c_rtc_get_seconds@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_minutes@uc_i2c_data
uc_i2c_rtc_get_minutes@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_hours@uc_i2c_data
uc_i2c_rtc_get_hours@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_date@uc_i2c_data
uc_i2c_rtc_get_date@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_month@uc_i2c_data
uc_i2c_rtc_get_month@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_year@uc_i2c_data
uc_i2c_rtc_get_year@uc_i2c_data:	; 1 bytes @ 0x0
	global	i2c_rtc_initialize@i
i2c_rtc_initialize@i:	; 2 bytes @ 0x0
	global	send_dec@data
send_dec@data:	; 4 bytes @ 0x0
	ds	2
	global	i2c_rtc_initialize@uc_current_register_value
i2c_rtc_initialize@uc_current_register_value:	; 1 bytes @ 0x2
	ds	2
	global	send_dec@num_dig
send_dec@num_dig:	; 1 bytes @ 0x4
	ds	2
	global	??_writertc
??_writertc:	; 0 bytes @ 0x6
	ds	5
	global	??_readrtc
??_readrtc:	; 0 bytes @ 0xB
	ds	5
;;Data sizes: Strings 28, constant 0, data 0, bss 22, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     16      38
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_21(CODE[4]), STR_20(CODE[4]), STR_19(CODE[4]), STR_18(CODE[4]), 
;;		 -> STR_17(CODE[4]), STR_16(CODE[4]), STR_15(CODE[4]), STR_14(CODE[4]), 
;;		 -> STR_13(CODE[4]), STR_12(CODE[4]), STR_11(CODE[4]), STR_10(CODE[4]), 
;;		 -> STR_9(CODE[4]), STR_8(CODE[4]), STR_7(CODE[4]), STR_6(CODE[4]), 
;;		 -> STR_5(CODE[4]), STR_4(CODE[4]), STR_3(CODE[4]), STR_2(CODE[4]), 
;;		 -> STR_1(CODE[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _readrtc->_uc_i2c_rtc_get_seconds
;;   _readrtc->_uc_i2c_rtc_get_minutes
;;   _readrtc->_uc_i2c_rtc_get_hours
;;   _readrtc->_uc_i2c_rtc_get_date
;;   _readrtc->_uc_i2c_rtc_get_month
;;   _readrtc->_uc_i2c_rtc_get_year
;;   _send_string->_send_char
;;   _send_dec->___lldiv
;;   _lcd_goto->_send_config
;;   _send_char->_delay
;;   _send_config->_delay
;;   _e_pulse->_delay
;;   _i2c_rtc_set_year->___awdiv
;;   _uc_i2c_rtc_get_year->_uc_i2c_read
;;   _i2c_rtc_set_month->___awdiv
;;   _uc_i2c_rtc_get_month->_uc_i2c_read
;;   _i2c_rtc_set_date->___awdiv
;;   _uc_i2c_rtc_get_date->_uc_i2c_read
;;   _i2c_rtc_set_day->_uc_i2c_write
;;   _uc_i2c_rtc_get_day->_uc_i2c_read
;;   _i2c_rtc_set_hours->_uc_i2c_read
;;   _uc_i2c_rtc_get_hours->_uc_i2c_read
;;   _i2c_rtc_set_minutes->___awdiv
;;   _uc_i2c_rtc_get_minutes->_uc_i2c_read
;;   _i2c_rtc_set_seconds->_uc_i2c_read
;;   _uc_i2c_rtc_get_seconds->_uc_i2c_read
;;   _i2c_rtc_initialize->_uc_i2c_read
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_readrtc
;;   _readrtc->_writertc
;;   _writertc->_i2c_rtc_set_seconds
;;   _writertc->_i2c_rtc_set_minutes
;;   _writertc->_i2c_rtc_set_hours
;;   _writertc->_i2c_rtc_set_date
;;   _writertc->_i2c_rtc_set_month
;;   _writertc->_i2c_rtc_set_year
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0   10223
;;                     _i2c_initialize
;;                 _i2c_rtc_initialize
;;                        _send_config
;;                            _readrtc
;; ---------------------------------------------------------------------------------
;; (1) _readrtc                                              5     5      0    9797
;;                                             11 BANK0      5     5      0
;;                           _writertc
;;             _uc_i2c_rtc_get_seconds
;;             _uc_i2c_rtc_get_minutes
;;               _uc_i2c_rtc_get_hours
;;                 _uc_i2c_rtc_get_day
;;                _uc_i2c_rtc_get_date
;;               _uc_i2c_rtc_get_month
;;                _uc_i2c_rtc_get_year
;;                           _lcd_goto
;;                           _send_dec
;;                          _send_char
;;                        _send_string
;; ---------------------------------------------------------------------------------
;; (2) _writertc                                             5     5      0    6595
;;                                              6 BANK0      5     5      0
;;                           _lcd_goto
;;                           _send_dec
;;                              _delay
;;                          _send_char
;;                        _send_string
;;                _i2c_rtc_set_seconds
;;                _i2c_rtc_set_minutes
;;                  _i2c_rtc_set_hours
;;                    _i2c_rtc_set_day
;;                   _i2c_rtc_set_date
;;                  _i2c_rtc_set_month
;;                   _i2c_rtc_set_year
;; ---------------------------------------------------------------------------------
;; (2) _send_string                                          3     3      0     180
;;                                              9 COMMON     3     3      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _send_dec                                             5     0      5    1103
;;                                              0 BANK0      5     0      5
;;                            ___llmod
;;                            ___lldiv
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _lcd_goto                                             2     2      0     201
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (3) _send_char                                            1     1      0     112
;;                                              8 COMMON     1     1      0
;;                              _delay
;;                            _e_pulse
;; ---------------------------------------------------------------------------------
;; (3) _send_config                                          1     1      0     112
;;                                              8 COMMON     1     1      0
;;                              _delay
;;                            _e_pulse
;; ---------------------------------------------------------------------------------
;; (4) _e_pulse                                              0     0      0      45
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _i2c_rtc_set_year                                     7     7      0     751
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _uc_i2c_rtc_get_year                                  4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (3) _i2c_rtc_set_month                                    7     7      0     773
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _uc_i2c_rtc_get_month                                 4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (3) _i2c_rtc_set_date                                     7     7      0     773
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _uc_i2c_rtc_get_date                                  4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (3) _i2c_rtc_set_day                                      3     3      0     132
;;                                              4 COMMON     3     3      0
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _uc_i2c_rtc_get_day                                   1     1      0     112
;;                                             11 COMMON     1     1      0
;;                        _uc_i2c_read
;; ---------------------------------------------------------------------------------
;; (3) _i2c_rtc_set_hours                                    8     8      0     887
;;                                             11 COMMON     2     2      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                        _uc_i2c_read
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _uc_i2c_rtc_get_hours                                 4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (3) _i2c_rtc_set_minutes                                  7     7      0     751
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _uc_i2c_rtc_get_minutes                               4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (3) _i2c_rtc_set_seconds                                  8     8      0     887
;;                                             11 COMMON     2     2      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                        _uc_i2c_read
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _uc_i2c_rtc_get_seconds                               4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _i2c_rtc_initialize                                   5     5      0     314
;;                                             11 COMMON     2     2      0
;;                                              0 BANK0      3     3      0
;;                        _uc_i2c_read
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (4) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             14     6      8     162
;;                                              0 COMMON    14     6      8
;; ---------------------------------------------------------------------------------
;; (3) ___llmod                                             10     2      8     159
;;                                              0 COMMON    10     2      8
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               4     3      1      92
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (5) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (4) _uc_i2c_write                                         4     2      2      66
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (3) _uc_i2c_read                                         11    10      1     112
;;                                              0 COMMON    11    10      1
;; ---------------------------------------------------------------------------------
;; (1) _i2c_initialize                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _i2c_initialize
;;   _i2c_rtc_initialize
;;     _uc_i2c_read
;;     _uc_i2c_write
;;   _send_config
;;     _delay
;;     _e_pulse
;;       _delay
;;   _readrtc
;;     _writertc
;;       _lcd_goto
;;         _send_config
;;           _delay
;;           _e_pulse
;;             _delay
;;       _send_dec
;;         ___llmod
;;         ___lldiv
;;         _send_char
;;           _delay
;;           _e_pulse
;;             _delay
;;       _delay
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;       _send_string
;;         _send_char
;;           _delay
;;           _e_pulse
;;             _delay
;;       _i2c_rtc_set_seconds
;;         ___awmod
;;         ___awdiv
;;         _uc_i2c_read
;;         _uc_i2c_write
;;       _i2c_rtc_set_minutes
;;         ___awmod
;;         ___awdiv
;;         _uc_i2c_write
;;       _i2c_rtc_set_hours
;;         ___awmod
;;         ___awdiv
;;         _uc_i2c_read
;;         _uc_i2c_write
;;       _i2c_rtc_set_day
;;         _uc_i2c_write
;;       _i2c_rtc_set_date
;;         ___awmod
;;         ___awdiv
;;         _uc_i2c_write
;;       _i2c_rtc_set_month
;;         ___awmod
;;         ___awdiv
;;         _uc_i2c_write
;;       _i2c_rtc_set_year
;;         ___awmod
;;         ___awdiv
;;         _uc_i2c_write
;;     _uc_i2c_rtc_get_seconds
;;       _uc_i2c_read
;;       ___bmul
;;     _uc_i2c_rtc_get_minutes
;;       _uc_i2c_read
;;       ___bmul
;;     _uc_i2c_rtc_get_hours
;;       _uc_i2c_read
;;       ___bmul
;;     _uc_i2c_rtc_get_day
;;       _uc_i2c_read
;;     _uc_i2c_rtc_get_date
;;       _uc_i2c_read
;;       ___bmul
;;     _uc_i2c_rtc_get_month
;;       _uc_i2c_read
;;       ___bmul
;;     _uc_i2c_rtc_get_year
;;       _uc_i2c_read
;;       ___bmul
;;     _lcd_goto
;;       _send_config
;;         _delay
;;         _e_pulse
;;           _delay
;;     _send_dec
;;       ___llmod
;;       ___lldiv
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;     _send_char
;;       _delay
;;       _e_pulse
;;         _delay
;;     _send_string
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      34       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     10      26       5       47.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      3A      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_i2c_initialize
;;		_i2c_rtc_initialize
;;		_send_config
;;		_readrtc
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	83
	
l5199:	
;PR12.c: 83: i2c_initialize();
	fcall	_i2c_initialize
	line	84
;PR12.c: 84: i2c_rtc_initialize();
	fcall	_i2c_rtc_initialize
	line	87
	
l5201:	
;PR12.c: 85: unsigned char i;
;PR12.c: 87: ADCON1 = 0b00000110;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	88
	
l5203:	
;PR12.c: 88: TRISA = 0b00000000;
	clrf	(133)^080h	;volatile
	line	89
	
l5205:	
;PR12.c: 89: TRISB = 0b00000000;
	clrf	(134)^080h	;volatile
	line	90
	
l5207:	
;PR12.c: 90: TRISC = 0b00011111;
	movlw	(01Fh)
	movwf	(135)^080h	;volatile
	line	92
	
l5209:	
;PR12.c: 92: RA3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
	line	93
	
l5211:	
;PR12.c: 93: RA2=0;
	bcf	(42/8),(42)&7
	line	95
;PR12.c: 95: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	96
;PR12.c: 96: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	97
;PR12.c: 97: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	98
;PR12.c: 98: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	99
;PR12.c: 99: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	101
	
l5213:	
;PR12.c: 101: readrtc();
	fcall	_readrtc
	line	102
	
l1712:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_readrtc
psect	text579,local,class=CODE,delta=2
global __ptext579
__ptext579:

;; *************** function _readrtc *****************
;; Defined at:
;;		line 481 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_writertc
;;		_uc_i2c_rtc_get_seconds
;;		_uc_i2c_rtc_get_minutes
;;		_uc_i2c_rtc_get_hours
;;		_uc_i2c_rtc_get_day
;;		_uc_i2c_rtc_get_date
;;		_uc_i2c_rtc_get_month
;;		_uc_i2c_rtc_get_year
;;		_lcd_goto
;;		_send_dec
;;		_send_char
;;		_send_string
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text579
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	481
	global	__size_of_readrtc
	__size_of_readrtc	equ	__end_of_readrtc-_readrtc
	
_readrtc:	
	opt	stack 2
; Regs used in _readrtc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	482
;PR12.c: 482: while(1)
	
l1839:	
	line	484
;PR12.c: 483: {
;PR12.c: 484: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	485
;PR12.c: 485: RA3=0;
	bcf	(43/8),(43)&7
	line	486
;PR12.c: 486: if(RC0==0)
	btfsc	(56/8),(56)&7
	goto	u5101
	goto	u5100
u5101:
	goto	l5135
u5100:
	line	488
	
l5133:	
;PR12.c: 487: {
;PR12.c: 488: writertc();
	fcall	_writertc
	line	489
;PR12.c: 489: }
	goto	l1839
	line	490
	
l1840:	
	line	492
	
l5135:	
;PR12.c: 490: else
;PR12.c: 491: {
;PR12.c: 492: clksec=uc_i2c_rtc_get_seconds();
	fcall	_uc_i2c_rtc_get_seconds
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_readrtc+0)+0
	movf	(??_readrtc+0)+0,w
	movwf	(_clksec)
	line	493
;PR12.c: 493: clkmin= uc_i2c_rtc_get_minutes();
	fcall	_uc_i2c_rtc_get_minutes
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_readrtc+0)+0
	movf	(??_readrtc+0)+0,w
	movwf	(_clkmin)
	line	494
;PR12.c: 494: clkhrs=uc_i2c_rtc_get_hours();
	fcall	_uc_i2c_rtc_get_hours
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_readrtc+0)+0
	movf	(??_readrtc+0)+0,w
	movwf	(_clkhrs)
	line	495
;PR12.c: 495: day=uc_i2c_rtc_get_day();
	fcall	_uc_i2c_rtc_get_day
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_readrtc+0)+0
	movf	(??_readrtc+0)+0,w
	movwf	(_day)
	line	496
;PR12.c: 496: date=uc_i2c_rtc_get_date();
	fcall	_uc_i2c_rtc_get_date
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_readrtc+0)+0
	movf	(??_readrtc+0)+0,w
	movwf	(_date)
	line	497
;PR12.c: 497: month=uc_i2c_rtc_get_month();
	fcall	_uc_i2c_rtc_get_month
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_readrtc+0)+0
	movf	(??_readrtc+0)+0,w
	movwf	(_month)
	line	498
;PR12.c: 498: year=uc_i2c_rtc_get_year();
	fcall	_uc_i2c_rtc_get_year
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_readrtc+0)+0
	movf	(??_readrtc+0)+0,w
	movwf	(_year)
	line	500
;PR12.c: 500: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	501
;PR12.c: 501: send_dec(clkhrs,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkhrs),w
	movwf	(??_readrtc+0)+0
	clrf	((??_readrtc+0)+0+1)
	clrf	((??_readrtc+0)+0+2)
	clrf	((??_readrtc+0)+0+3)
	movf	3+(??_readrtc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_readrtc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_readrtc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_readrtc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_readrtc+4)+0
	movf	(??_readrtc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	503
;PR12.c: 503: lcd_goto(2);
	movlw	(02h)
	fcall	_lcd_goto
	line	504
;PR12.c: 504: send_char(0x3A);
	movlw	(03Ah)
	fcall	_send_char
	line	506
;PR12.c: 506: lcd_goto(3);
	movlw	(03h)
	fcall	_lcd_goto
	line	507
;PR12.c: 507: send_dec(clkmin,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkmin),w
	movwf	(??_readrtc+0)+0
	clrf	((??_readrtc+0)+0+1)
	clrf	((??_readrtc+0)+0+2)
	clrf	((??_readrtc+0)+0+3)
	movf	3+(??_readrtc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_readrtc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_readrtc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_readrtc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_readrtc+4)+0
	movf	(??_readrtc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	509
;PR12.c: 509: lcd_goto(5);
	movlw	(05h)
	fcall	_lcd_goto
	line	510
;PR12.c: 510: send_char(0x3A);
	movlw	(03Ah)
	fcall	_send_char
	line	512
;PR12.c: 512: lcd_goto(6);
	movlw	(06h)
	fcall	_lcd_goto
	line	513
;PR12.c: 513: send_dec(clksec,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clksec),w
	movwf	(??_readrtc+0)+0
	clrf	((??_readrtc+0)+0+1)
	clrf	((??_readrtc+0)+0+2)
	clrf	((??_readrtc+0)+0+3)
	movf	3+(??_readrtc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_readrtc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_readrtc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_readrtc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_readrtc+4)+0
	movf	(??_readrtc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	515
	
l5137:	
;PR12.c: 515: if(day==7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	07h
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l5143
u5110:
	line	517
	
l5139:	
;PR12.c: 516: {
;PR12.c: 517: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	518
	
l5141:	
;PR12.c: 518: send_string("SUN");
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_send_string
	line	519
;PR12.c: 519: }
	goto	l5179
	line	520
	
l1842:	
	
l5143:	
;PR12.c: 520: else if(day==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	01h
	skipz
	goto	u5121
	goto	u5120
u5121:
	goto	l5149
u5120:
	line	522
	
l5145:	
;PR12.c: 521: {
;PR12.c: 522: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	523
	
l5147:	
;PR12.c: 523: send_string("MON");
	movlw	((STR_16-__stringbase))&0ffh
	fcall	_send_string
	line	524
;PR12.c: 524: }
	goto	l5179
	line	525
	
l1844:	
	
l5149:	
;PR12.c: 525: else if(day==2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	02h
	skipz
	goto	u5131
	goto	u5130
u5131:
	goto	l5155
u5130:
	line	527
	
l5151:	
;PR12.c: 526: {
;PR12.c: 527: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	528
	
l5153:	
;PR12.c: 528: send_string("TUE");
	movlw	((STR_17-__stringbase))&0ffh
	fcall	_send_string
	line	529
;PR12.c: 529: }
	goto	l5179
	line	530
	
l1846:	
	
l5155:	
;PR12.c: 530: else if(day==3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	03h
	skipz
	goto	u5141
	goto	u5140
u5141:
	goto	l5161
u5140:
	line	532
	
l5157:	
;PR12.c: 531: {
;PR12.c: 532: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	533
	
l5159:	
;PR12.c: 533: send_string("WED");
	movlw	((STR_18-__stringbase))&0ffh
	fcall	_send_string
	line	534
;PR12.c: 534: }
	goto	l5179
	line	535
	
l1848:	
	
l5161:	
;PR12.c: 535: else if(day==4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	04h
	skipz
	goto	u5151
	goto	u5150
u5151:
	goto	l5167
u5150:
	line	537
	
l5163:	
;PR12.c: 536: {
;PR12.c: 537: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	538
	
l5165:	
;PR12.c: 538: send_string("THU");
	movlw	((STR_19-__stringbase))&0ffh
	fcall	_send_string
	line	539
;PR12.c: 539: }
	goto	l5179
	line	540
	
l1850:	
	
l5167:	
;PR12.c: 540: else if(day==5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	05h
	skipz
	goto	u5161
	goto	u5160
u5161:
	goto	l5173
u5160:
	line	542
	
l5169:	
;PR12.c: 541: {
;PR12.c: 542: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	543
	
l5171:	
;PR12.c: 543: send_string("FRI");
	movlw	((STR_20-__stringbase))&0ffh
	fcall	_send_string
	line	544
;PR12.c: 544: }
	goto	l5179
	line	545
	
l1852:	
	
l5173:	
;PR12.c: 545: else if(day==6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	06h
	skipz
	goto	u5171
	goto	u5170
u5171:
	goto	l5179
u5170:
	line	547
	
l5175:	
;PR12.c: 546: {
;PR12.c: 547: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	548
	
l5177:	
;PR12.c: 548: send_string("SAT");
	movlw	((STR_21-__stringbase))&0ffh
	fcall	_send_string
	goto	l5179
	line	549
	
l1854:	
	goto	l5179
	line	551
	
l1853:	
	goto	l5179
	
l1851:	
	goto	l5179
	
l1849:	
	goto	l5179
	
l1847:	
	goto	l5179
	
l1845:	
	goto	l5179
	
l1843:	
	
l5179:	
;PR12.c: 549: }
;PR12.c: 551: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	552
	
l5181:	
;PR12.c: 552: send_dec(date,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	movwf	(??_readrtc+0)+0
	clrf	((??_readrtc+0)+0+1)
	clrf	((??_readrtc+0)+0+2)
	clrf	((??_readrtc+0)+0+3)
	movf	3+(??_readrtc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_readrtc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_readrtc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_readrtc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_readrtc+4)+0
	movf	(??_readrtc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	554
	
l5183:	
;PR12.c: 554: lcd_goto(22);
	movlw	(016h)
	fcall	_lcd_goto
	line	555
	
l5185:	
;PR12.c: 555: send_char(0x2F);
	movlw	(02Fh)
	fcall	_send_char
	line	558
	
l5187:	
;PR12.c: 558: lcd_goto(23);
	movlw	(017h)
	fcall	_lcd_goto
	line	559
	
l5189:	
;PR12.c: 559: send_dec(month,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	movwf	(??_readrtc+0)+0
	clrf	((??_readrtc+0)+0+1)
	clrf	((??_readrtc+0)+0+2)
	clrf	((??_readrtc+0)+0+3)
	movf	3+(??_readrtc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_readrtc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_readrtc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_readrtc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_readrtc+4)+0
	movf	(??_readrtc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	561
	
l5191:	
;PR12.c: 561: lcd_goto(25);
	movlw	(019h)
	fcall	_lcd_goto
	line	562
	
l5193:	
;PR12.c: 562: send_char(0x2F);
	movlw	(02Fh)
	fcall	_send_char
	line	564
	
l5195:	
;PR12.c: 564: lcd_goto(26);
	movlw	(01Ah)
	fcall	_lcd_goto
	line	565
	
l5197:	
;PR12.c: 565: send_dec(year,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	movwf	(??_readrtc+0)+0
	clrf	((??_readrtc+0)+0+1)
	clrf	((??_readrtc+0)+0+2)
	clrf	((??_readrtc+0)+0+3)
	movf	3+(??_readrtc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_readrtc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_readrtc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_readrtc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_readrtc+4)+0
	movf	(??_readrtc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	goto	l1839
	line	567
	
l1841:	
	goto	l1839
	line	568
	
l1855:	
	line	482
	goto	l1839
	
l1856:	
	line	569
	
l1857:	
	return
	opt stack 0
GLOBAL	__end_of_readrtc
	__end_of_readrtc:
;; =============== function _readrtc ends ============

	signat	_readrtc,88
	global	_writertc
psect	text580,local,class=CODE,delta=2
global __ptext580
__ptext580:

;; *************** function _writertc *****************
;; Defined at:
;;		line 108 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_goto
;;		_send_dec
;;		_delay
;;		_send_char
;;		_send_string
;;		_i2c_rtc_set_seconds
;;		_i2c_rtc_set_minutes
;;		_i2c_rtc_set_hours
;;		_i2c_rtc_set_day
;;		_i2c_rtc_set_date
;;		_i2c_rtc_set_month
;;		_i2c_rtc_set_year
;; This function is called by:
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text580
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	108
	global	__size_of_writertc
	__size_of_writertc	equ	__end_of_writertc-_writertc
	
_writertc:	
	opt	stack 2
; Regs used in _writertc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	109
	
l4785:	
;PR12.c: 109: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	110
;PR12.c: 110: RA3=1;
	bsf	(43/8),(43)&7
	line	113
;PR12.c: 113: while(RC0==0)continue;
	goto	l1715
	
l1716:	
	
l1715:	
	btfss	(56/8),(56)&7
	goto	u4531
	goto	u4530
u4531:
	goto	l1715
u4530:
	goto	l4799
	
l1717:	
	line	117
;PR12.c: 117: while(RC0==1)
	goto	l4799
	
l1719:	
	line	119
;PR12.c: 118: {
;PR12.c: 119: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u4541
	goto	u4540
u4541:
	goto	l4789
u4540:
	line	121
	
l4787:	
;PR12.c: 120: {
;PR12.c: 121: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	122
;PR12.c: 122: send_dec(clkhrs,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkhrs),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	123
;PR12.c: 123: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	124
;PR12.c: 124: lcd_goto(1);
	movlw	(01h)
	fcall	_lcd_goto
	line	125
;PR12.c: 125: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	126
;PR12.c: 126: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	127
;PR12.c: 127: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	128
;PR12.c: 128: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l4789
	line	129
	
l1720:	
	line	130
	
l4789:	
;PR12.c: 129: }
;PR12.c: 130: if(RC1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u4551
	goto	u4550
u4551:
	goto	l4799
u4550:
	goto	l1722
	line	132
	
l4791:	
;PR12.c: 131: {
;PR12.c: 132: while(RC1==0)continue;
	goto	l1722
	
l1723:	
	
l1722:	
	btfss	(57/8),(57)&7
	goto	u4561
	goto	u4560
u4561:
	goto	l1722
u4560:
	goto	l4793
	
l1724:	
	line	134
	
l4793:	
;PR12.c: 134: if(clkhrs<=22)clkhrs++;
	movlw	(017h)
	subwf	(_clkhrs),w
	skipnc
	goto	u4571
	goto	u4570
u4571:
	goto	l4797
u4570:
	
l4795:	
	movlw	(01h)
	movwf	(??_writertc+0)+0
	movf	(??_writertc+0)+0,w
	addwf	(_clkhrs),f
	goto	l4799
	line	135
	
l1725:	
	
l4797:	
;PR12.c: 135: else clkhrs=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_clkhrs)
	goto	l4799
	
l1726:	
	goto	l4799
	line	136
	
l1721:	
	goto	l4799
	line	137
	
l1718:	
	line	117
	
l4799:	
	btfsc	(56/8),(56)&7
	goto	u4581
	goto	u4580
u4581:
	goto	l1719
u4580:
	goto	l4801
	
l1727:	
	line	139
	
l4801:	
;PR12.c: 136: }
;PR12.c: 137: }
;PR12.c: 139: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	140
;PR12.c: 140: send_dec(clkhrs,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkhrs),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	141
;PR12.c: 141: while(RC0==0)continue;
	goto	l1728
	
l1729:	
	
l1728:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u4591
	goto	u4590
u4591:
	goto	l1728
u4590:
	goto	l4815
	
l1730:	
	line	146
;PR12.c: 146: while(RC0==1)
	goto	l4815
	
l1732:	
	line	148
;PR12.c: 147: {
;PR12.c: 148: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u4601
	goto	u4600
u4601:
	goto	l4805
u4600:
	line	150
	
l4803:	
;PR12.c: 149: {
;PR12.c: 150: lcd_goto(3);
	movlw	(03h)
	fcall	_lcd_goto
	line	151
;PR12.c: 151: send_dec(clkmin,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkmin),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	152
;PR12.c: 152: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	153
;PR12.c: 153: lcd_goto(4);
	movlw	(04h)
	fcall	_lcd_goto
	line	154
;PR12.c: 154: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	155
;PR12.c: 155: lcd_goto(3);
	movlw	(03h)
	fcall	_lcd_goto
	line	156
;PR12.c: 156: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	157
;PR12.c: 157: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l4805
	line	158
	
l1733:	
	line	159
	
l4805:	
;PR12.c: 158: }
;PR12.c: 159: if(RC1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u4611
	goto	u4610
u4611:
	goto	l4815
u4610:
	goto	l1735
	line	161
	
l4807:	
;PR12.c: 160: {
;PR12.c: 161: while(RC1==0)continue;
	goto	l1735
	
l1736:	
	
l1735:	
	btfss	(57/8),(57)&7
	goto	u4621
	goto	u4620
u4621:
	goto	l1735
u4620:
	goto	l4809
	
l1737:	
	line	163
	
l4809:	
;PR12.c: 163: if(clkmin<=58) clkmin++;
	movlw	(03Bh)
	subwf	(_clkmin),w
	skipnc
	goto	u4631
	goto	u4630
u4631:
	goto	l4813
u4630:
	
l4811:	
	movlw	(01h)
	movwf	(??_writertc+0)+0
	movf	(??_writertc+0)+0,w
	addwf	(_clkmin),f
	goto	l4815
	line	164
	
l1738:	
	
l4813:	
;PR12.c: 164: else clkmin=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_clkmin)
	goto	l4815
	
l1739:	
	goto	l4815
	line	165
	
l1734:	
	goto	l4815
	line	166
	
l1731:	
	line	146
	
l4815:	
	btfsc	(56/8),(56)&7
	goto	u4641
	goto	u4640
u4641:
	goto	l1732
u4640:
	goto	l4817
	
l1740:	
	line	168
	
l4817:	
;PR12.c: 165: }
;PR12.c: 166: }
;PR12.c: 168: lcd_goto(3);
	movlw	(03h)
	fcall	_lcd_goto
	line	169
;PR12.c: 169: send_dec(clkmin,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkmin),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	170
;PR12.c: 170: while(RC0==0)continue;
	goto	l1741
	
l1742:	
	
l1741:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u4651
	goto	u4650
u4651:
	goto	l1741
u4650:
	goto	l4831
	
l1743:	
	line	175
;PR12.c: 175: while(RC0==1)
	goto	l4831
	
l1745:	
	line	178
;PR12.c: 176: {
;PR12.c: 178: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u4661
	goto	u4660
u4661:
	goto	l4821
u4660:
	line	180
	
l4819:	
;PR12.c: 179: {
;PR12.c: 180: lcd_goto(6);
	movlw	(06h)
	fcall	_lcd_goto
	line	181
;PR12.c: 181: send_dec(clksec,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clksec),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	182
;PR12.c: 182: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	183
;PR12.c: 183: lcd_goto(7);
	movlw	(07h)
	fcall	_lcd_goto
	line	184
;PR12.c: 184: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	185
;PR12.c: 185: lcd_goto(6);
	movlw	(06h)
	fcall	_lcd_goto
	line	186
;PR12.c: 186: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	187
;PR12.c: 187: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l4821
	line	188
	
l1746:	
	line	189
	
l4821:	
;PR12.c: 188: }
;PR12.c: 189: if(RC1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l4831
u4670:
	goto	l1748
	line	191
	
l4823:	
;PR12.c: 190: {
;PR12.c: 191: while(RC1==0)continue;
	goto	l1748
	
l1749:	
	
l1748:	
	btfss	(57/8),(57)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l1748
u4680:
	goto	l4825
	
l1750:	
	line	193
	
l4825:	
;PR12.c: 193: if(clksec<=58) clksec++;
	movlw	(03Bh)
	subwf	(_clksec),w
	skipnc
	goto	u4691
	goto	u4690
u4691:
	goto	l4829
u4690:
	
l4827:	
	movlw	(01h)
	movwf	(??_writertc+0)+0
	movf	(??_writertc+0)+0,w
	addwf	(_clksec),f
	goto	l4831
	line	194
	
l1751:	
	
l4829:	
;PR12.c: 194: else clksec=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_clksec)
	goto	l4831
	
l1752:	
	goto	l4831
	line	195
	
l1747:	
	goto	l4831
	line	196
	
l1744:	
	line	175
	
l4831:	
	btfsc	(56/8),(56)&7
	goto	u4701
	goto	u4700
u4701:
	goto	l1745
u4700:
	goto	l4833
	
l1753:	
	line	198
	
l4833:	
;PR12.c: 195: }
;PR12.c: 196: }
;PR12.c: 198: lcd_goto(6);
	movlw	(06h)
	fcall	_lcd_goto
	line	199
;PR12.c: 199: send_dec(clksec,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clksec),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	200
;PR12.c: 200: while(RC0==0)continue;
	goto	l1754
	
l1755:	
	
l1754:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u4711
	goto	u4710
u4711:
	goto	l1754
u4710:
	goto	l4847
	
l1756:	
	line	206
;PR12.c: 206: while(RC0==1)
	goto	l4847
	
l1758:	
	line	209
;PR12.c: 207: {
;PR12.c: 209: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u4721
	goto	u4720
u4721:
	goto	l4837
u4720:
	line	211
	
l4835:	
;PR12.c: 210: {
;PR12.c: 211: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	212
;PR12.c: 212: send_dec(date,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	213
;PR12.c: 213: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	214
;PR12.c: 214: lcd_goto(21);
	movlw	(015h)
	fcall	_lcd_goto
	line	215
;PR12.c: 215: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	216
;PR12.c: 216: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	217
;PR12.c: 217: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	218
;PR12.c: 218: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l4837
	line	219
	
l1759:	
	line	220
	
l4837:	
;PR12.c: 219: }
;PR12.c: 220: if(RC1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u4731
	goto	u4730
u4731:
	goto	l4847
u4730:
	goto	l1761
	line	222
	
l4839:	
;PR12.c: 221: {
;PR12.c: 222: while(RC1==0)continue;
	goto	l1761
	
l1762:	
	
l1761:	
	btfss	(57/8),(57)&7
	goto	u4741
	goto	u4740
u4741:
	goto	l1761
u4740:
	goto	l4841
	
l1763:	
	line	224
	
l4841:	
;PR12.c: 224: if(date<=30) date++;
	movlw	(01Fh)
	subwf	(_date),w
	skipnc
	goto	u4751
	goto	u4750
u4751:
	goto	l4845
u4750:
	
l4843:	
	movlw	(01h)
	movwf	(??_writertc+0)+0
	movf	(??_writertc+0)+0,w
	addwf	(_date),f
	goto	l4847
	line	225
	
l1764:	
	
l4845:	
;PR12.c: 225: else date=1;
	clrf	(_date)
	bsf	status,0
	rlf	(_date),f
	goto	l4847
	
l1765:	
	goto	l4847
	line	226
	
l1760:	
	goto	l4847
	line	227
	
l1757:	
	line	206
	
l4847:	
	btfsc	(56/8),(56)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l1758
u4760:
	goto	l4849
	
l1766:	
	line	229
	
l4849:	
;PR12.c: 226: }
;PR12.c: 227: }
;PR12.c: 229: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	230
;PR12.c: 230: send_dec(date,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	231
;PR12.c: 231: while(RC0==0)continue;
	goto	l1767
	
l1768:	
	
l1767:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l1767
u4770:
	goto	l4863
	
l1769:	
	line	235
;PR12.c: 235: while(RC0==1)
	goto	l4863
	
l1771:	
	line	238
;PR12.c: 236: {
;PR12.c: 238: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u4781
	goto	u4780
u4781:
	goto	l4853
u4780:
	line	240
	
l4851:	
;PR12.c: 239: {
;PR12.c: 240: lcd_goto(23);
	movlw	(017h)
	fcall	_lcd_goto
	line	241
;PR12.c: 241: send_dec(month,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	242
;PR12.c: 242: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	243
;PR12.c: 243: lcd_goto(24);
	movlw	(018h)
	fcall	_lcd_goto
	line	244
;PR12.c: 244: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	245
;PR12.c: 245: lcd_goto(23);
	movlw	(017h)
	fcall	_lcd_goto
	line	246
;PR12.c: 246: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	247
;PR12.c: 247: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l4853
	line	248
	
l1772:	
	line	249
	
l4853:	
;PR12.c: 248: }
;PR12.c: 249: if(RC1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u4791
	goto	u4790
u4791:
	goto	l4863
u4790:
	goto	l1774
	line	251
	
l4855:	
;PR12.c: 250: {
;PR12.c: 251: while(RC1==0)continue;
	goto	l1774
	
l1775:	
	
l1774:	
	btfss	(57/8),(57)&7
	goto	u4801
	goto	u4800
u4801:
	goto	l1774
u4800:
	goto	l4857
	
l1776:	
	line	253
	
l4857:	
;PR12.c: 253: if(month<=11) month++;
	movlw	(0Ch)
	subwf	(_month),w
	skipnc
	goto	u4811
	goto	u4810
u4811:
	goto	l4861
u4810:
	
l4859:	
	movlw	(01h)
	movwf	(??_writertc+0)+0
	movf	(??_writertc+0)+0,w
	addwf	(_month),f
	goto	l4863
	line	254
	
l1777:	
	
l4861:	
;PR12.c: 254: else month=1;
	clrf	(_month)
	bsf	status,0
	rlf	(_month),f
	goto	l4863
	
l1778:	
	goto	l4863
	line	255
	
l1773:	
	goto	l4863
	line	256
	
l1770:	
	line	235
	
l4863:	
	btfsc	(56/8),(56)&7
	goto	u4821
	goto	u4820
u4821:
	goto	l1771
u4820:
	goto	l4865
	
l1779:	
	line	258
	
l4865:	
;PR12.c: 255: }
;PR12.c: 256: }
;PR12.c: 258: lcd_goto(23);
	movlw	(017h)
	fcall	_lcd_goto
	line	259
;PR12.c: 259: send_dec(month,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	260
;PR12.c: 260: while(RC0==0)continue;
	goto	l1780
	
l1781:	
	
l1780:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u4831
	goto	u4830
u4831:
	goto	l1780
u4830:
	goto	l4879
	
l1782:	
	line	265
;PR12.c: 265: while(RC0==1)
	goto	l4879
	
l1784:	
	line	268
;PR12.c: 266: {
;PR12.c: 268: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u4841
	goto	u4840
u4841:
	goto	l4869
u4840:
	line	270
	
l4867:	
;PR12.c: 269: {
;PR12.c: 270: lcd_goto(26);
	movlw	(01Ah)
	fcall	_lcd_goto
	line	271
;PR12.c: 271: send_dec(year,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	272
;PR12.c: 272: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	273
;PR12.c: 273: lcd_goto(27);
	movlw	(01Bh)
	fcall	_lcd_goto
	line	274
;PR12.c: 274: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	275
;PR12.c: 275: lcd_goto(26);
	movlw	(01Ah)
	fcall	_lcd_goto
	line	276
;PR12.c: 276: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	277
;PR12.c: 277: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l4869
	line	278
	
l1785:	
	line	279
	
l4869:	
;PR12.c: 278: }
;PR12.c: 279: if(RC1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l4879
u4850:
	goto	l1787
	line	281
	
l4871:	
;PR12.c: 280: {
;PR12.c: 281: while(RC1==0)continue;
	goto	l1787
	
l1788:	
	
l1787:	
	btfss	(57/8),(57)&7
	goto	u4861
	goto	u4860
u4861:
	goto	l1787
u4860:
	goto	l4873
	
l1789:	
	line	283
	
l4873:	
;PR12.c: 283: if(year<=99) year++;
	movlw	(064h)
	subwf	(_year),w
	skipnc
	goto	u4871
	goto	u4870
u4871:
	goto	l4877
u4870:
	
l4875:	
	movlw	(01h)
	movwf	(??_writertc+0)+0
	movf	(??_writertc+0)+0,w
	addwf	(_year),f
	goto	l4879
	line	284
	
l1790:	
	
l4877:	
;PR12.c: 284: else year=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_year)
	goto	l4879
	
l1791:	
	goto	l4879
	line	285
	
l1786:	
	goto	l4879
	line	286
	
l1783:	
	line	265
	
l4879:	
	btfsc	(56/8),(56)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l1784
u4880:
	goto	l4881
	
l1792:	
	line	288
	
l4881:	
;PR12.c: 285: }
;PR12.c: 286: }
;PR12.c: 288: lcd_goto(26);
	movlw	(01Ah)
	fcall	_lcd_goto
	line	289
;PR12.c: 289: send_dec(year,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	movwf	(??_writertc+0)+0
	clrf	((??_writertc+0)+0+1)
	clrf	((??_writertc+0)+0+2)
	clrf	((??_writertc+0)+0+3)
	movf	3+(??_writertc+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_writertc+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_writertc+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_writertc+0)+0,w
	movwf	(?_send_dec)

	movlw	(02h)
	movwf	(??_writertc+4)+0
	movf	(??_writertc+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	290
;PR12.c: 290: while(RC0==0)continue;
	goto	l1793
	
l1794:	
	
l1793:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u4891
	goto	u4890
u4891:
	goto	l1793
u4890:
	goto	l5015
	
l1795:	
	line	295
;PR12.c: 295: while(RC0==1)
	goto	l5015
	
l1797:	
	line	297
;PR12.c: 296: {
;PR12.c: 297: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u4901
	goto	u4900
u4901:
	goto	l1813
u4900:
	line	299
	
l4883:	
;PR12.c: 298: {
;PR12.c: 299: if(day==7)
	movf	(_day),w
	xorlw	07h
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l4901
u4910:
	line	301
	
l4885:	
;PR12.c: 300: {
;PR12.c: 301: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	302
	
l4887:	
;PR12.c: 302: send_string("SUN");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	303
	
l4889:	
;PR12.c: 303: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	304
	
l4891:	
;PR12.c: 304: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	305
	
l4893:	
;PR12.c: 305: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	306
	
l4895:	
;PR12.c: 306: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	307
	
l4897:	
;PR12.c: 307: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	308
	
l4899:	
;PR12.c: 308: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	309
;PR12.c: 309: }
	goto	l5015
	line	310
	
l1799:	
	
l4901:	
;PR12.c: 310: else if(day==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	01h
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l4919
u4920:
	line	312
	
l4903:	
;PR12.c: 311: {
;PR12.c: 312: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	313
	
l4905:	
;PR12.c: 313: send_string("MON");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	314
	
l4907:	
;PR12.c: 314: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	315
	
l4909:	
;PR12.c: 315: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	316
	
l4911:	
;PR12.c: 316: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	317
	
l4913:	
;PR12.c: 317: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	318
	
l4915:	
;PR12.c: 318: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	319
	
l4917:	
;PR12.c: 319: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	320
;PR12.c: 320: }
	goto	l5015
	line	321
	
l1801:	
	
l4919:	
;PR12.c: 321: else if(day==2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	02h
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l4937
u4930:
	line	323
	
l4921:	
;PR12.c: 322: {
;PR12.c: 323: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	324
	
l4923:	
;PR12.c: 324: send_string("TUE");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	line	325
	
l4925:	
;PR12.c: 325: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	326
	
l4927:	
;PR12.c: 326: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	327
	
l4929:	
;PR12.c: 327: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	328
	
l4931:	
;PR12.c: 328: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	329
	
l4933:	
;PR12.c: 329: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	330
	
l4935:	
;PR12.c: 330: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	331
;PR12.c: 331: }
	goto	l5015
	line	332
	
l1803:	
	
l4937:	
;PR12.c: 332: else if(day==3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	03h
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l4955
u4940:
	line	334
	
l4939:	
;PR12.c: 333: {
;PR12.c: 334: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	335
	
l4941:	
;PR12.c: 335: send_string("WED");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_send_string
	line	336
	
l4943:	
;PR12.c: 336: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	337
	
l4945:	
;PR12.c: 337: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	338
	
l4947:	
;PR12.c: 338: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	339
	
l4949:	
;PR12.c: 339: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	340
	
l4951:	
;PR12.c: 340: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	341
	
l4953:	
;PR12.c: 341: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	342
;PR12.c: 342: }
	goto	l5015
	line	343
	
l1805:	
	
l4955:	
;PR12.c: 343: else if(day==4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	04h
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l4973
u4950:
	line	345
	
l4957:	
;PR12.c: 344: {
;PR12.c: 345: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	346
	
l4959:	
;PR12.c: 346: send_string("THU");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_send_string
	line	347
	
l4961:	
;PR12.c: 347: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	348
	
l4963:	
;PR12.c: 348: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	349
	
l4965:	
;PR12.c: 349: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	350
	
l4967:	
;PR12.c: 350: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	351
	
l4969:	
;PR12.c: 351: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	352
	
l4971:	
;PR12.c: 352: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	353
;PR12.c: 353: }
	goto	l5015
	line	354
	
l1807:	
	
l4973:	
;PR12.c: 354: else if(day==5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	05h
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l4991
u4960:
	line	356
	
l4975:	
;PR12.c: 355: {
;PR12.c: 356: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	357
	
l4977:	
;PR12.c: 357: send_string("FRI");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_send_string
	line	358
	
l4979:	
;PR12.c: 358: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	359
	
l4981:	
;PR12.c: 359: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	360
	
l4983:	
;PR12.c: 360: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	361
	
l4985:	
;PR12.c: 361: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	362
	
l4987:	
;PR12.c: 362: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	363
	
l4989:	
;PR12.c: 363: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	364
;PR12.c: 364: }
	goto	l5015
	line	365
	
l1809:	
	
l4991:	
;PR12.c: 365: else if(day==6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	06h
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l5015
u4970:
	line	367
	
l4993:	
;PR12.c: 366: {
;PR12.c: 367: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	368
	
l4995:	
;PR12.c: 368: send_string("SAT");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_send_string
	line	369
	
l4997:	
;PR12.c: 369: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	370
	
l4999:	
;PR12.c: 370: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	371
	
l5001:	
;PR12.c: 371: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	372
	
l5003:	
;PR12.c: 372: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	373
	
l5005:	
;PR12.c: 373: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	374
	
l5007:	
;PR12.c: 374: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l5015
	line	375
	
l1811:	
	goto	l5015
	line	376
	
l1810:	
	goto	l5015
	
l1808:	
	goto	l5015
	
l1806:	
	goto	l5015
	
l1804:	
	goto	l5015
	
l1802:	
	goto	l5015
	
l1800:	
;PR12.c: 375: }
;PR12.c: 376: }
	goto	l5015
	line	377
	
l1798:	
	line	379
;PR12.c: 377: else
;PR12.c: 378: {
;PR12.c: 379: while(RC1==0)continue;
	goto	l1813
	
l1814:	
	
l1813:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l1813
u4980:
	goto	l5009
	
l1815:	
	line	380
	
l5009:	
;PR12.c: 380: if(day>6)
	movlw	(07h)
	subwf	(_day),w
	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l5013
u4990:
	line	382
	
l5011:	
;PR12.c: 381: {
;PR12.c: 382: day=1;
	clrf	(_day)
	bsf	status,0
	rlf	(_day),f
	line	383
;PR12.c: 383: }
	goto	l5015
	line	384
	
l1816:	
	line	386
	
l5013:	
;PR12.c: 384: else
;PR12.c: 385: {
;PR12.c: 386: day+=1;
	movlw	(01h)
	movwf	(??_writertc+0)+0
	movf	(??_writertc+0)+0,w
	addwf	(_day),f
	goto	l5015
	line	387
	
l1817:	
	goto	l5015
	line	388
	
l1812:	
	goto	l5015
	line	389
	
l1796:	
	line	295
	
l5015:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u5001
	goto	u5000
u5001:
	goto	l1797
u5000:
	
l1818:	
	line	390
;PR12.c: 387: }
;PR12.c: 388: }
;PR12.c: 389: }
;PR12.c: 390: if(RC1==0)
	btfsc	(57/8),(57)&7
	goto	u5011
	goto	u5010
u5011:
	goto	l1833
u5010:
	line	392
	
l5017:	
;PR12.c: 391: {
;PR12.c: 392: if(day==7)
	movf	(_day),w
	xorlw	07h
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l5035
u5020:
	line	394
	
l5019:	
;PR12.c: 393: {
;PR12.c: 394: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	395
	
l5021:	
;PR12.c: 395: send_string("SUN");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_send_string
	line	396
	
l5023:	
;PR12.c: 396: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	397
	
l5025:	
;PR12.c: 397: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	398
	
l5027:	
;PR12.c: 398: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	399
	
l5029:	
;PR12.c: 399: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	400
	
l5031:	
;PR12.c: 400: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	401
	
l5033:	
;PR12.c: 401: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	402
;PR12.c: 402: }
	goto	l1833
	line	403
	
l1820:	
	
l5035:	
;PR12.c: 403: else if(day==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	01h
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l5053
u5030:
	line	405
	
l5037:	
;PR12.c: 404: {
;PR12.c: 405: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	406
	
l5039:	
;PR12.c: 406: send_string("MON");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_send_string
	line	407
	
l5041:	
;PR12.c: 407: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	408
	
l5043:	
;PR12.c: 408: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	409
	
l5045:	
;PR12.c: 409: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	410
	
l5047:	
;PR12.c: 410: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	411
	
l5049:	
;PR12.c: 411: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	412
	
l5051:	
;PR12.c: 412: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	413
;PR12.c: 413: }
	goto	l1833
	line	414
	
l1822:	
	
l5053:	
;PR12.c: 414: else if(day==2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	02h
	skipz
	goto	u5041
	goto	u5040
u5041:
	goto	l5071
u5040:
	line	416
	
l5055:	
;PR12.c: 415: {
;PR12.c: 416: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	417
	
l5057:	
;PR12.c: 417: send_string("TUE");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_send_string
	line	418
	
l5059:	
;PR12.c: 418: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	419
	
l5061:	
;PR12.c: 419: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	420
	
l5063:	
;PR12.c: 420: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	421
	
l5065:	
;PR12.c: 421: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	422
	
l5067:	
;PR12.c: 422: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	423
	
l5069:	
;PR12.c: 423: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	424
;PR12.c: 424: }
	goto	l1833
	line	425
	
l1824:	
	
l5071:	
;PR12.c: 425: else if(day==3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	03h
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l5077
u5050:
	line	427
	
l5073:	
;PR12.c: 426: {
;PR12.c: 427: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	428
	
l5075:	
;PR12.c: 428: send_string("WED");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_send_string
	line	429
;PR12.c: 429: }
	goto	l1833
	line	430
	
l1826:	
	
l5077:	
;PR12.c: 430: else if(day==4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	04h
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l5095
u5060:
	line	432
	
l5079:	
;PR12.c: 431: {
;PR12.c: 432: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	433
	
l5081:	
;PR12.c: 433: send_string("THU");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_send_string
	line	434
	
l5083:	
;PR12.c: 434: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	435
	
l5085:	
;PR12.c: 435: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	436
	
l5087:	
;PR12.c: 436: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	437
	
l5089:	
;PR12.c: 437: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	438
	
l5091:	
;PR12.c: 438: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	439
	
l5093:	
;PR12.c: 439: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	440
;PR12.c: 440: }
	goto	l1833
	line	441
	
l1828:	
	
l5095:	
;PR12.c: 441: else if(day==5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	05h
	skipz
	goto	u5071
	goto	u5070
u5071:
	goto	l5113
u5070:
	line	443
	
l5097:	
;PR12.c: 442: {
;PR12.c: 443: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	444
	
l5099:	
;PR12.c: 444: send_string("FRI");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_send_string
	line	445
	
l5101:	
;PR12.c: 445: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	446
	
l5103:	
;PR12.c: 446: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	447
	
l5105:	
;PR12.c: 447: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	448
	
l5107:	
;PR12.c: 448: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	449
	
l5109:	
;PR12.c: 449: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	450
	
l5111:	
;PR12.c: 450: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	451
;PR12.c: 451: }
	goto	l1833
	line	452
	
l1830:	
	
l5113:	
;PR12.c: 452: else if(day==6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	xorlw	06h
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l1833
u5080:
	line	454
	
l5115:	
;PR12.c: 453: {
;PR12.c: 454: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	455
	
l5117:	
;PR12.c: 455: send_string("SAT");
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_send_string
	line	456
	
l5119:	
;PR12.c: 456: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	457
	
l5121:	
;PR12.c: 457: lcd_goto(31);
	movlw	(01Fh)
	fcall	_lcd_goto
	line	458
	
l5123:	
;PR12.c: 458: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	459
	
l5125:	
;PR12.c: 459: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	460
	
l5127:	
;PR12.c: 460: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	461
	
l5129:	
;PR12.c: 461: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l1833
	line	462
	
l1832:	
	goto	l1833
	line	463
	
l1831:	
	goto	l1833
	
l1829:	
	goto	l1833
	
l1827:	
	goto	l1833
	
l1825:	
	goto	l1833
	
l1823:	
	goto	l1833
	
l1821:	
	goto	l1833
	
l1819:	
	line	464
;PR12.c: 462: }
;PR12.c: 463: }
;PR12.c: 464: while(RC0==0)continue;
	goto	l1833
	
l1834:	
	
l1833:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u5091
	goto	u5090
u5091:
	goto	l1833
u5090:
	goto	l5131
	
l1835:	
	line	466
	
l5131:	
;PR12.c: 466: i2c_rtc_set_seconds(clksec);
	movf	(_clksec),w
	fcall	_i2c_rtc_set_seconds
	line	467
;PR12.c: 467: i2c_rtc_set_minutes(clkmin);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkmin),w
	fcall	_i2c_rtc_set_minutes
	line	468
;PR12.c: 468: i2c_rtc_set_hours(clkhrs);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkhrs),w
	fcall	_i2c_rtc_set_hours
	line	469
;PR12.c: 469: i2c_rtc_set_day(day);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	fcall	_i2c_rtc_set_day
	line	470
;PR12.c: 470: i2c_rtc_set_date(date);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	fcall	_i2c_rtc_set_date
	line	471
;PR12.c: 471: i2c_rtc_set_month(month);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	fcall	_i2c_rtc_set_month
	line	472
;PR12.c: 472: i2c_rtc_set_year(year);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	fcall	_i2c_rtc_set_year
	line	474
	
l1836:	
	return
	opt stack 0
GLOBAL	__end_of_writertc
	__end_of_writertc:
;; =============== function _writertc ends ============

	signat	_writertc,88
	global	_send_string
psect	text581,local,class=CODE,delta=2
global __ptext581
__ptext581:

;; *************** function _send_string *****************
;; Defined at:
;;		line 617 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_21(4), STR_20(4), STR_19(4), STR_18(4), 
;;		 -> STR_17(4), STR_16(4), STR_15(4), STR_14(4), 
;;		 -> STR_13(4), STR_12(4), STR_11(4), STR_10(4), 
;;		 -> STR_9(4), STR_8(4), STR_7(4), STR_6(4), 
;;		 -> STR_5(4), STR_4(4), STR_3(4), STR_2(4), 
;;		 -> STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  s               1   11[COMMON] PTR const unsigned char 
;;		 -> STR_21(4), STR_20(4), STR_19(4), STR_18(4), 
;;		 -> STR_17(4), STR_16(4), STR_15(4), STR_14(4), 
;;		 -> STR_13(4), STR_12(4), STR_11(4), STR_10(4), 
;;		 -> STR_9(4), STR_8(4), STR_7(4), STR_6(4), 
;;		 -> STR_5(4), STR_4(4), STR_3(4), STR_2(4), 
;;		 -> STR_1(4), 
;;  i               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_writertc
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text581
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	617
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 3
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	618
	
l4775:	
;PR12.c: 618: unsigned char i=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(send_string@i)
	line	619
;PR12.c: 619: while (s && *s)send_char (*s++);
	goto	l4781
	
l1883:	
	
l4777:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l4779:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l4781
	
l1882:	
	
l4781:	
	movf	(send_string@s),w
	skipz
	goto	u4510
	goto	l1887
u4510:
	
l4783:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u4521
	goto	u4520
u4521:
	goto	l4777
u4520:
	goto	l1887
	
l1885:	
	goto	l1887
	
l1886:	
	line	620
	
l1887:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_send_dec
psect	text582,local,class=CODE,delta=2
global __ptext582
__ptext582:

;; *************** function _send_dec *****************
;; Defined at:
;;		line 622 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[BANK0 ] unsigned long 
;;  num_dig         1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___llmod
;;		___lldiv
;;		_send_char
;; This function is called by:
;;		_writertc
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text582
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	622
	global	__size_of_send_dec
	__size_of_send_dec	equ	__end_of_send_dec-_send_dec
	
_send_dec:	
	opt	stack 3
; Regs used in _send_dec: [wreg+status,2+status,0+pclath+cstack]
	line	624
	
l4735:	
;PR12.c: 624: if(num_dig>=10)
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l4739
u4410:
	line	626
	
l4737:	
;PR12.c: 625: {
;PR12.c: 626: data=data%10000000000;
	movlw	054h
	movwf	(?___llmod+3)
	movlw	0Bh
	movwf	(?___llmod+2)
	movlw	0E4h
	movwf	(?___llmod+1)
	movlw	0
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	627
;PR12.c: 627: send_char(data/1000000000+0x30);
	movlw	03Bh
	movwf	(?___lldiv+3)
	movlw	09Ah
	movwf	(?___lldiv+2)
	movlw	0CAh
	movwf	(?___lldiv+1)
	movlw	0
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4739
	line	628
	
l1890:	
	line	629
	
l4739:	
;PR12.c: 628: }
;PR12.c: 629: if(num_dig>=9)
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4421
	goto	u4420
u4421:
	goto	l4743
u4420:
	line	631
	
l4741:	
;PR12.c: 630: {
;PR12.c: 631: data=data%1000000000;
	movlw	03Bh
	movwf	(?___llmod+3)
	movlw	09Ah
	movwf	(?___llmod+2)
	movlw	0CAh
	movwf	(?___llmod+1)
	movlw	0
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	632
;PR12.c: 632: send_char(data/100000000+0x30);
	movlw	05h
	movwf	(?___lldiv+3)
	movlw	0F5h
	movwf	(?___lldiv+2)
	movlw	0E1h
	movwf	(?___lldiv+1)
	movlw	0
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4743
	line	633
	
l1891:	
	line	634
	
l4743:	
;PR12.c: 633: }
;PR12.c: 634: if(num_dig>=8)
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4431
	goto	u4430
u4431:
	goto	l4747
u4430:
	line	636
	
l4745:	
;PR12.c: 635: {
;PR12.c: 636: data=data%100000000;
	movlw	05h
	movwf	(?___llmod+3)
	movlw	0F5h
	movwf	(?___llmod+2)
	movlw	0E1h
	movwf	(?___llmod+1)
	movlw	0
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	637
;PR12.c: 637: send_char(data/10000000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	098h
	movwf	(?___lldiv+2)
	movlw	096h
	movwf	(?___lldiv+1)
	movlw	080h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4747
	line	638
	
l1892:	
	line	639
	
l4747:	
;PR12.c: 638: }
;PR12.c: 639: if(num_dig>=7)
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l4751
u4440:
	line	641
	
l4749:	
;PR12.c: 640: {
;PR12.c: 641: data=data%10000000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	098h
	movwf	(?___llmod+2)
	movlw	096h
	movwf	(?___llmod+1)
	movlw	080h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	642
;PR12.c: 642: send_char(data/1000000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0Fh
	movwf	(?___lldiv+2)
	movlw	042h
	movwf	(?___lldiv+1)
	movlw	040h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4751
	line	643
	
l1893:	
	line	644
	
l4751:	
;PR12.c: 643: }
;PR12.c: 644: if(num_dig>=6)
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l4755
u4450:
	line	646
	
l4753:	
;PR12.c: 645: {
;PR12.c: 646: data=data%1000000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0Fh
	movwf	(?___llmod+2)
	movlw	042h
	movwf	(?___llmod+1)
	movlw	040h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	647
;PR12.c: 647: send_char(data/100000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	01h
	movwf	(?___lldiv+2)
	movlw	086h
	movwf	(?___lldiv+1)
	movlw	0A0h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4755
	line	648
	
l1894:	
	line	649
	
l4755:	
;PR12.c: 648: }
;PR12.c: 649: if(num_dig>=5)
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l4759
u4460:
	line	651
	
l4757:	
;PR12.c: 650: {
;PR12.c: 651: data=data%100000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	01h
	movwf	(?___llmod+2)
	movlw	086h
	movwf	(?___llmod+1)
	movlw	0A0h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	652
;PR12.c: 652: send_char(data/10000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	027h
	movwf	(?___lldiv+1)
	movlw	010h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4759
	line	653
	
l1895:	
	line	654
	
l4759:	
;PR12.c: 653: }
;PR12.c: 654: if(num_dig>=4)
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4471
	goto	u4470
u4471:
	goto	l4763
u4470:
	line	656
	
l4761:	
;PR12.c: 655: {
;PR12.c: 656: data=data%10000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	027h
	movwf	(?___llmod+1)
	movlw	010h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	657
;PR12.c: 657: send_char(data/1000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	03h
	movwf	(?___lldiv+1)
	movlw	0E8h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4763
	line	658
	
l1896:	
	line	659
	
l4763:	
;PR12.c: 658: }
;PR12.c: 659: if(num_dig>=3)
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l4767
u4480:
	line	661
	
l4765:	
;PR12.c: 660: {
;PR12.c: 661: data=data%1000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	03h
	movwf	(?___llmod+1)
	movlw	0E8h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	662
;PR12.c: 662: send_char(data/100+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	0
	movwf	(?___lldiv+1)
	movlw	064h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4767
	line	663
	
l1897:	
	line	664
	
l4767:	
;PR12.c: 663: }
;PR12.c: 664: if(num_dig>=2)
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l4771
u4490:
	line	666
	
l4769:	
;PR12.c: 665: {
;PR12.c: 666: data=data%100;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	064h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	667
;PR12.c: 667: send_char(data/10+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	0
	movwf	(?___lldiv+1)
	movlw	0Ah
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l4771
	line	668
	
l1898:	
	line	669
	
l4771:	
;PR12.c: 668: }
;PR12.c: 669: if(num_dig>=1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(send_dec@num_dig),w
	skipz
	goto	u4500
	goto	l1900
u4500:
	line	671
	
l4773:	
;PR12.c: 670: {
;PR12.c: 671: data=data%10;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	672
;PR12.c: 672: send_char(data+0x30);
	movf	(send_dec@data),w
	addlw	030h
	fcall	_send_char
	goto	l1900
	line	673
	
l1899:	
	line	674
	
l1900:	
	return
	opt stack 0
GLOBAL	__end_of_send_dec
	__end_of_send_dec:
;; =============== function _send_dec ends ============

	signat	_send_dec,8312
	global	_lcd_goto
psect	text583,local,class=CODE,delta=2
global __ptext583
__ptext583:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 600 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_writertc
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text583
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	600
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 3
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	601
	
l4727:	
;PR12.c: 601: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u4401
	goto	u4400
u4401:
	goto	l4731
u4400:
	line	603
	
l4729:	
;PR12.c: 602: {
;PR12.c: 603: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	604
;PR12.c: 604: }
	goto	l1876
	line	605
	
l1874:	
	line	607
	
l4731:	
;PR12.c: 605: else
;PR12.c: 606: {
;PR12.c: 607: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	608
	
l4733:	
;PR12.c: 608: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l1876
	line	609
	
l1875:	
	line	610
	
l1876:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_send_char
psect	text584,local,class=CODE,delta=2
global __ptext584
__ptext584:

;; *************** function _send_char *****************
;; Defined at:
;;		line 586 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_e_pulse
;; This function is called by:
;;		_writertc
;;		_readrtc
;;		_send_string
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text584
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	586
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 3
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	587
	
l4719:	
;PR12.c: 587: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	588
	
l4721:	
;PR12.c: 588: PORTB=data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	589
	
l4723:	
;PR12.c: 589: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	590
	
l4725:	
;PR12.c: 590: e_pulse();
	fcall	_e_pulse
	line	591
	
l1868:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_config
psect	text585,local,class=CODE,delta=2
global __ptext585
__ptext585:

;; *************** function _send_config *****************
;; Defined at:
;;		line 579 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_e_pulse
;; This function is called by:
;;		_main
;;		_lcd_goto
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text585
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	579
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 3
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	580
	
l4711:	
;PR12.c: 580: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	581
	
l4713:	
;PR12.c: 581: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	582
	
l4715:	
;PR12.c: 582: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	583
	
l4717:	
;PR12.c: 583: e_pulse();
	fcall	_e_pulse
	line	584
	
l1865:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_e_pulse
psect	text586,local,class=CODE,delta=2
global __ptext586
__ptext586:

;; *************** function _e_pulse *****************
;; Defined at:
;;		line 593 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_send_config
;;		_send_char
;; This function uses a non-reentrant model
;;
psect	text586
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	593
	global	__size_of_e_pulse
	__size_of_e_pulse	equ	__end_of_e_pulse-_e_pulse
	
_e_pulse:	
	opt	stack 3
; Regs used in _e_pulse: [wreg+status,2+status,0+pclath+cstack]
	line	594
	
l4705:	
;PR12.c: 594: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	595
	
l4707:	
;PR12.c: 595: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	596
	
l4709:	
;PR12.c: 596: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	597
;PR12.c: 597: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	598
	
l1871:	
	return
	opt stack 0
GLOBAL	__end_of_e_pulse
	__end_of_e_pulse:
;; =============== function _e_pulse ends ============

	signat	_e_pulse,88
	global	_i2c_rtc_set_year
psect	text587,local,class=CODE,delta=2
global __ptext587
__ptext587:

;; *************** function _i2c_rtc_set_year *****************
;; Defined at:
;;		line 450 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_write
;; This function is called by:
;;		_writertc
;; This function uses a non-reentrant model
;;
psect	text587
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	450
	global	__size_of_i2c_rtc_set_year
	__size_of_i2c_rtc_set_year	equ	__end_of_i2c_rtc_set_year-_i2c_rtc_set_year
	
_i2c_rtc_set_year:	
	opt	stack 4
; Regs used in _i2c_rtc_set_year: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_year@uc_value stored from wreg
	line	452
	movwf	(i2c_rtc_set_year@uc_value)
	
l4701:	
;i2c_rtc.c: 452: if (uc_value < 100) {
	movlw	(064h)
	subwf	(i2c_rtc_set_year@uc_value),w
	skipnc
	goto	u4381
	goto	u4380
u4381:
	goto	l1127
u4380:
	line	455
	
l4703:	
;i2c_rtc.c: 455: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_year@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_year+0)+0
	clrf	(??_i2c_rtc_set_year+0)+0+1
	movf	0+(??_i2c_rtc_set_year+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_year+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_year+2)+0
	movlw	04h
u4395:
	clrc
	rlf	(??_i2c_rtc_set_year+2)+0,f
	addlw	-1
	skipz
	goto	u4395
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_year@uc_value),w
	movwf	(??_i2c_rtc_set_year+3)+0
	clrf	(??_i2c_rtc_set_year+3)+0+1
	movf	0+(??_i2c_rtc_set_year+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_year+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_year+2)+0,w
	movwf	(??_i2c_rtc_set_year+5)+0
	movf	(??_i2c_rtc_set_year+5)+0,w
	movwf	(i2c_rtc_set_year@uc_value)
	line	458
;i2c_rtc.c: 458: uc_i2c_write(0b01101000, 0x06, uc_value);
	movlw	(06h)
	movwf	(??_i2c_rtc_set_year+0)+0
	movf	(??_i2c_rtc_set_year+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_year@uc_value),w
	movwf	(??_i2c_rtc_set_year+1)+0
	movf	(??_i2c_rtc_set_year+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l1127
	line	459
	
l1126:	
	line	460
	
l1127:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_year
	__end_of_i2c_rtc_set_year:
;; =============== function _i2c_rtc_set_year ends ============

	signat	_i2c_rtc_set_year,4216
	global	_uc_i2c_rtc_get_year
psect	text588,local,class=CODE,delta=2
global __ptext588
__ptext588:

;; *************** function _uc_i2c_rtc_get_year *****************
;; Defined at:
;;		line 424 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text588
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	424
	global	__size_of_uc_i2c_rtc_get_year
	__size_of_uc_i2c_rtc_get_year	equ	__end_of_uc_i2c_rtc_get_year-_uc_i2c_rtc_get_year
	
_uc_i2c_rtc_get_year:	
	opt	stack 5
; Regs used in _uc_i2c_rtc_get_year: [wreg+status,2+status,0+pclath+cstack]
	line	428
	
l4697:	
;i2c_rtc.c: 425: unsigned char uc_i2c_data;
;i2c_rtc.c: 428: uc_i2c_data = uc_i2c_read(0b01101000, 0x06);
	movlw	(06h)
	movwf	(??_uc_i2c_rtc_get_year+0)+0
	movf	(??_uc_i2c_rtc_get_year+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_year+1)+0
	movf	(??_uc_i2c_rtc_get_year+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_year@uc_i2c_data)
	line	431
;i2c_rtc.c: 431: return (uc_i2c_data & 0x0f) + ((uc_i2c_data >> 4) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_year@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_year+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_year+1)+0
	movf	(??_uc_i2c_rtc_get_year+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_year@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_year+2)+0
	movlw	04h
u4375:
	clrc
	rrf	(??_uc_i2c_rtc_get_year+2)+0,f
	addlw	-1
	skipz
	goto	u4375
	movf	0+(??_uc_i2c_rtc_get_year+2)+0,w
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_year+0)+0,w
	goto	l1123
	
l4699:	
	line	432
	
l1123:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_year
	__end_of_uc_i2c_rtc_get_year:
;; =============== function _uc_i2c_rtc_get_year ends ============

	signat	_uc_i2c_rtc_get_year,89
	global	_i2c_rtc_set_month
psect	text589,local,class=CODE,delta=2
global __ptext589
__ptext589:

;; *************** function _i2c_rtc_set_month *****************
;; Defined at:
;;		line 396 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_write
;; This function is called by:
;;		_writertc
;; This function uses a non-reentrant model
;;
psect	text589
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	396
	global	__size_of_i2c_rtc_set_month
	__size_of_i2c_rtc_set_month	equ	__end_of_i2c_rtc_set_month-_i2c_rtc_set_month
	
_i2c_rtc_set_month:	
	opt	stack 4
; Regs used in _i2c_rtc_set_month: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_month@uc_value stored from wreg
	line	398
	movwf	(i2c_rtc_set_month@uc_value)
	
l4691:	
;i2c_rtc.c: 398: if (uc_value > 0 && uc_value <= 12) {
	movf	(i2c_rtc_set_month@uc_value),w
	skipz
	goto	u4340
	goto	l1120
u4340:
	
l4693:	
	movlw	(0Dh)
	subwf	(i2c_rtc_set_month@uc_value),w
	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l1120
u4350:
	line	401
	
l4695:	
;i2c_rtc.c: 401: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_month@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_month+0)+0
	clrf	(??_i2c_rtc_set_month+0)+0+1
	movf	0+(??_i2c_rtc_set_month+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_month+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_month+2)+0
	movlw	04h
u4365:
	clrc
	rlf	(??_i2c_rtc_set_month+2)+0,f
	addlw	-1
	skipz
	goto	u4365
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_month@uc_value),w
	movwf	(??_i2c_rtc_set_month+3)+0
	clrf	(??_i2c_rtc_set_month+3)+0+1
	movf	0+(??_i2c_rtc_set_month+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_month+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_month+2)+0,w
	movwf	(??_i2c_rtc_set_month+5)+0
	movf	(??_i2c_rtc_set_month+5)+0,w
	movwf	(i2c_rtc_set_month@uc_value)
	line	404
;i2c_rtc.c: 404: uc_i2c_write(0b01101000, 0x05, uc_value);
	movlw	(05h)
	movwf	(??_i2c_rtc_set_month+0)+0
	movf	(??_i2c_rtc_set_month+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_month@uc_value),w
	movwf	(??_i2c_rtc_set_month+1)+0
	movf	(??_i2c_rtc_set_month+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l1120
	line	405
	
l1119:	
	line	406
	
l1120:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_month
	__end_of_i2c_rtc_set_month:
;; =============== function _i2c_rtc_set_month ends ============

	signat	_i2c_rtc_set_month,4216
	global	_uc_i2c_rtc_get_month
psect	text590,local,class=CODE,delta=2
global __ptext590
__ptext590:

;; *************** function _uc_i2c_rtc_get_month *****************
;; Defined at:
;;		line 370 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text590
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	370
	global	__size_of_uc_i2c_rtc_get_month
	__size_of_uc_i2c_rtc_get_month	equ	__end_of_uc_i2c_rtc_get_month-_uc_i2c_rtc_get_month
	
_uc_i2c_rtc_get_month:	
	opt	stack 5
; Regs used in _uc_i2c_rtc_get_month: [wreg+status,2+status,0+pclath+cstack]
	line	374
	
l4687:	
;i2c_rtc.c: 371: unsigned char uc_i2c_data;
;i2c_rtc.c: 374: uc_i2c_data = uc_i2c_read(0b01101000, 0x05);
	movlw	(05h)
	movwf	(??_uc_i2c_rtc_get_month+0)+0
	movf	(??_uc_i2c_rtc_get_month+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_month+1)+0
	movf	(??_uc_i2c_rtc_get_month+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_month@uc_i2c_data)
	line	377
;i2c_rtc.c: 377: return (uc_i2c_data & 0x0f) + ((uc_i2c_data >> 4) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_month@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_month+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_month+1)+0
	movf	(??_uc_i2c_rtc_get_month+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_month@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_month+2)+0
	movlw	04h
u4335:
	clrc
	rrf	(??_uc_i2c_rtc_get_month+2)+0,f
	addlw	-1
	skipz
	goto	u4335
	movf	0+(??_uc_i2c_rtc_get_month+2)+0,w
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_month+0)+0,w
	goto	l1116
	
l4689:	
	line	378
	
l1116:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_month
	__end_of_uc_i2c_rtc_get_month:
;; =============== function _uc_i2c_rtc_get_month ends ============

	signat	_uc_i2c_rtc_get_month,89
	global	_i2c_rtc_set_date
psect	text591,local,class=CODE,delta=2
global __ptext591
__ptext591:

;; *************** function _i2c_rtc_set_date *****************
;; Defined at:
;;		line 342 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_write
;; This function is called by:
;;		_writertc
;; This function uses a non-reentrant model
;;
psect	text591
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	342
	global	__size_of_i2c_rtc_set_date
	__size_of_i2c_rtc_set_date	equ	__end_of_i2c_rtc_set_date-_i2c_rtc_set_date
	
_i2c_rtc_set_date:	
	opt	stack 4
; Regs used in _i2c_rtc_set_date: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_date@uc_value stored from wreg
	line	344
	movwf	(i2c_rtc_set_date@uc_value)
	
l4681:	
;i2c_rtc.c: 344: if (uc_value > 0 && uc_value <= 31) {
	movf	(i2c_rtc_set_date@uc_value),w
	skipz
	goto	u4300
	goto	l1113
u4300:
	
l4683:	
	movlw	(020h)
	subwf	(i2c_rtc_set_date@uc_value),w
	skipnc
	goto	u4311
	goto	u4310
u4311:
	goto	l1113
u4310:
	line	347
	
l4685:	
;i2c_rtc.c: 347: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_date@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_date+0)+0
	clrf	(??_i2c_rtc_set_date+0)+0+1
	movf	0+(??_i2c_rtc_set_date+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_date+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_date+2)+0
	movlw	04h
u4325:
	clrc
	rlf	(??_i2c_rtc_set_date+2)+0,f
	addlw	-1
	skipz
	goto	u4325
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_date@uc_value),w
	movwf	(??_i2c_rtc_set_date+3)+0
	clrf	(??_i2c_rtc_set_date+3)+0+1
	movf	0+(??_i2c_rtc_set_date+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_date+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_date+2)+0,w
	movwf	(??_i2c_rtc_set_date+5)+0
	movf	(??_i2c_rtc_set_date+5)+0,w
	movwf	(i2c_rtc_set_date@uc_value)
	line	350
;i2c_rtc.c: 350: uc_i2c_write(0b01101000, 0x04, uc_value);
	movlw	(04h)
	movwf	(??_i2c_rtc_set_date+0)+0
	movf	(??_i2c_rtc_set_date+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_date@uc_value),w
	movwf	(??_i2c_rtc_set_date+1)+0
	movf	(??_i2c_rtc_set_date+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l1113
	line	351
	
l1112:	
	line	352
	
l1113:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_date
	__end_of_i2c_rtc_set_date:
;; =============== function _i2c_rtc_set_date ends ============

	signat	_i2c_rtc_set_date,4216
	global	_uc_i2c_rtc_get_date
psect	text592,local,class=CODE,delta=2
global __ptext592
__ptext592:

;; *************** function _uc_i2c_rtc_get_date *****************
;; Defined at:
;;		line 316 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text592
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	316
	global	__size_of_uc_i2c_rtc_get_date
	__size_of_uc_i2c_rtc_get_date	equ	__end_of_uc_i2c_rtc_get_date-_uc_i2c_rtc_get_date
	
_uc_i2c_rtc_get_date:	
	opt	stack 5
; Regs used in _uc_i2c_rtc_get_date: [wreg+status,2+status,0+pclath+cstack]
	line	320
	
l4677:	
;i2c_rtc.c: 317: unsigned char uc_i2c_data;
;i2c_rtc.c: 320: uc_i2c_data = uc_i2c_read(0b01101000, 0x04);
	movlw	(04h)
	movwf	(??_uc_i2c_rtc_get_date+0)+0
	movf	(??_uc_i2c_rtc_get_date+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_date+1)+0
	movf	(??_uc_i2c_rtc_get_date+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_date@uc_i2c_data)
	line	323
;i2c_rtc.c: 323: return (uc_i2c_data & 0x0f) + ((uc_i2c_data >> 4) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_date@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_date+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_date+1)+0
	movf	(??_uc_i2c_rtc_get_date+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_date@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_date+2)+0
	movlw	04h
u4295:
	clrc
	rrf	(??_uc_i2c_rtc_get_date+2)+0,f
	addlw	-1
	skipz
	goto	u4295
	movf	0+(??_uc_i2c_rtc_get_date+2)+0,w
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_date+0)+0,w
	goto	l1109
	
l4679:	
	line	324
	
l1109:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_date
	__end_of_uc_i2c_rtc_get_date:
;; =============== function _uc_i2c_rtc_get_date ends ============

	signat	_uc_i2c_rtc_get_date,89
	global	_i2c_rtc_set_day
psect	text593,local,class=CODE,delta=2
global __ptext593
__ptext593:

;; *************** function _i2c_rtc_set_day *****************
;; Defined at:
;;		line 292 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_write
;; This function is called by:
;;		_writertc
;; This function uses a non-reentrant model
;;
psect	text593
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	292
	global	__size_of_i2c_rtc_set_day
	__size_of_i2c_rtc_set_day	equ	__end_of_i2c_rtc_set_day-_i2c_rtc_set_day
	
_i2c_rtc_set_day:	
	opt	stack 4
; Regs used in _i2c_rtc_set_day: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_day@uc_value stored from wreg
	line	294
	movwf	(i2c_rtc_set_day@uc_value)
	
l4671:	
;i2c_rtc.c: 294: if (uc_value > 0 && uc_value <= 7) {
	movf	(i2c_rtc_set_day@uc_value),w
	skipz
	goto	u4270
	goto	l1106
u4270:
	
l4673:	
	movlw	(08h)
	subwf	(i2c_rtc_set_day@uc_value),w
	skipnc
	goto	u4281
	goto	u4280
u4281:
	goto	l1106
u4280:
	line	296
	
l4675:	
;i2c_rtc.c: 296: uc_i2c_write(0b01101000, 0x03, uc_value);
	movlw	(03h)
	movwf	(??_i2c_rtc_set_day+0)+0
	movf	(??_i2c_rtc_set_day+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_day@uc_value),w
	movwf	(??_i2c_rtc_set_day+1)+0
	movf	(??_i2c_rtc_set_day+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l1106
	line	297
	
l1105:	
	line	298
	
l1106:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_day
	__end_of_i2c_rtc_set_day:
;; =============== function _i2c_rtc_set_day ends ============

	signat	_i2c_rtc_set_day,4216
	global	_uc_i2c_rtc_get_day
psect	text594,local,class=CODE,delta=2
global __ptext594
__ptext594:

;; *************** function _uc_i2c_rtc_get_day *****************
;; Defined at:
;;		line 271 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;; This function is called by:
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text594
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	271
	global	__size_of_uc_i2c_rtc_get_day
	__size_of_uc_i2c_rtc_get_day	equ	__end_of_uc_i2c_rtc_get_day-_uc_i2c_rtc_get_day
	
_uc_i2c_rtc_get_day:	
	opt	stack 5
; Regs used in _uc_i2c_rtc_get_day: [wreg+status,2+status,0+pclath+cstack]
	line	273
	
l4667:	
;i2c_rtc.c: 273: return uc_i2c_read(0b01101000, 0x03);
	movlw	(03h)
	movwf	(??_uc_i2c_rtc_get_day+0)+0
	movf	(??_uc_i2c_rtc_get_day+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	goto	l1102
	
l4669:	
	line	274
	
l1102:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_day
	__end_of_uc_i2c_rtc_get_day:
;; =============== function _uc_i2c_rtc_get_day ends ============

	signat	_uc_i2c_rtc_get_day,89
	global	_i2c_rtc_set_hours
psect	text595,local,class=CODE,delta=2
global __ptext595
__ptext595:

;; *************** function _i2c_rtc_set_hours *****************
;; Defined at:
;;		line 232 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1   12[COMMON] unsigned char 
;;  uc_current_r    1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_read
;;		_uc_i2c_write
;; This function is called by:
;;		_writertc
;; This function uses a non-reentrant model
;;
psect	text595
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	232
	global	__size_of_i2c_rtc_set_hours
	__size_of_i2c_rtc_set_hours	equ	__end_of_i2c_rtc_set_hours-_i2c_rtc_set_hours
	
_i2c_rtc_set_hours:	
	opt	stack 4
; Regs used in _i2c_rtc_set_hours: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_hours@uc_value stored from wreg
	line	239
	movwf	(i2c_rtc_set_hours@uc_value)
	
l4659:	
;i2c_rtc.c: 234: unsigned char uc_current_register_value;
;i2c_rtc.c: 239: if (uc_value < 24) {
	movlw	(018h)
	subwf	(i2c_rtc_set_hours@uc_value),w
	skipnc
	goto	u4251
	goto	u4250
u4251:
	goto	l1099
u4250:
	line	242
	
l4661:	
;i2c_rtc.c: 242: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_hours@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_hours+0)+0
	clrf	(??_i2c_rtc_set_hours+0)+0+1
	movf	0+(??_i2c_rtc_set_hours+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_hours+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_hours+2)+0
	movlw	04h
u4265:
	clrc
	rlf	(??_i2c_rtc_set_hours+2)+0,f
	addlw	-1
	skipz
	goto	u4265
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_hours@uc_value),w
	movwf	(??_i2c_rtc_set_hours+3)+0
	clrf	(??_i2c_rtc_set_hours+3)+0+1
	movf	0+(??_i2c_rtc_set_hours+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_hours+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_hours+2)+0,w
	movwf	(??_i2c_rtc_set_hours+5)+0
	movf	(??_i2c_rtc_set_hours+5)+0,w
	movwf	(i2c_rtc_set_hours@uc_value)
	line	245
;i2c_rtc.c: 245: uc_current_register_value = uc_i2c_read(0b01101000, 0x02);
	movlw	(02h)
	movwf	(??_i2c_rtc_set_hours+0)+0
	movf	(??_i2c_rtc_set_hours+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_hours+1)+0
	movf	(??_i2c_rtc_set_hours+1)+0,w
	movwf	(i2c_rtc_set_hours@uc_current_register_value)
	line	248
	
l4663:	
;i2c_rtc.c: 248: uc_current_register_value &= 0x40;
	movlw	(040h)
	movwf	(??_i2c_rtc_set_hours+0)+0
	movf	(??_i2c_rtc_set_hours+0)+0,w
	andwf	(i2c_rtc_set_hours@uc_current_register_value),f
	line	251
	
l4665:	
;i2c_rtc.c: 251: uc_i2c_write(0b01101000, 0x02, uc_current_register_value | uc_value);
	movlw	(02h)
	movwf	(??_i2c_rtc_set_hours+0)+0
	movf	(??_i2c_rtc_set_hours+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_hours@uc_current_register_value),w
	iorwf	(i2c_rtc_set_hours@uc_value),w
	movwf	(??_i2c_rtc_set_hours+1)+0
	movf	(??_i2c_rtc_set_hours+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l1099
	line	252
	
l1098:	
	line	253
	
l1099:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_hours
	__end_of_i2c_rtc_set_hours:
;; =============== function _i2c_rtc_set_hours ends ============

	signat	_i2c_rtc_set_hours,4216
	global	_uc_i2c_rtc_get_hours
psect	text596,local,class=CODE,delta=2
global __ptext596
__ptext596:

;; *************** function _uc_i2c_rtc_get_hours *****************
;; Defined at:
;;		line 206 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text596
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	206
	global	__size_of_uc_i2c_rtc_get_hours
	__size_of_uc_i2c_rtc_get_hours	equ	__end_of_uc_i2c_rtc_get_hours-_uc_i2c_rtc_get_hours
	
_uc_i2c_rtc_get_hours:	
	opt	stack 5
; Regs used in _uc_i2c_rtc_get_hours: [wreg+status,2+status,0+pclath+cstack]
	line	210
	
l4655:	
;i2c_rtc.c: 207: unsigned char uc_i2c_data;
;i2c_rtc.c: 210: uc_i2c_data = uc_i2c_read(0b01101000, 0x02);
	movlw	(02h)
	movwf	(??_uc_i2c_rtc_get_hours+0)+0
	movf	(??_uc_i2c_rtc_get_hours+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_hours+1)+0
	movf	(??_uc_i2c_rtc_get_hours+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_hours@uc_i2c_data)
	line	213
;i2c_rtc.c: 213: return (uc_i2c_data & 0x0f) + (((uc_i2c_data >> 4) & 0x03) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_hours@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_hours+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_hours+1)+0
	movf	(??_uc_i2c_rtc_get_hours+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_hours@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_hours+2)+0
	movlw	04h
u4245:
	clrc
	rrf	(??_uc_i2c_rtc_get_hours+2)+0,f
	addlw	-1
	skipz
	goto	u4245
	movf	0+(??_uc_i2c_rtc_get_hours+2)+0,w
	andlw	03h
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_hours+0)+0,w
	goto	l1095
	
l4657:	
	line	214
	
l1095:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_hours
	__end_of_uc_i2c_rtc_get_hours:
;; =============== function _uc_i2c_rtc_get_hours ends ============

	signat	_uc_i2c_rtc_get_hours,89
	global	_i2c_rtc_set_minutes
psect	text597,local,class=CODE,delta=2
global __ptext597
__ptext597:

;; *************** function _i2c_rtc_set_minutes *****************
;; Defined at:
;;		line 178 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_write
;; This function is called by:
;;		_writertc
;; This function uses a non-reentrant model
;;
psect	text597
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	178
	global	__size_of_i2c_rtc_set_minutes
	__size_of_i2c_rtc_set_minutes	equ	__end_of_i2c_rtc_set_minutes-_i2c_rtc_set_minutes
	
_i2c_rtc_set_minutes:	
	opt	stack 4
; Regs used in _i2c_rtc_set_minutes: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_minutes@uc_value stored from wreg
	line	180
	movwf	(i2c_rtc_set_minutes@uc_value)
	
l4651:	
;i2c_rtc.c: 180: if (uc_value < 60) {
	movlw	(03Ch)
	subwf	(i2c_rtc_set_minutes@uc_value),w
	skipnc
	goto	u4221
	goto	u4220
u4221:
	goto	l1092
u4220:
	line	183
	
l4653:	
;i2c_rtc.c: 183: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_minutes@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_minutes+0)+0
	clrf	(??_i2c_rtc_set_minutes+0)+0+1
	movf	0+(??_i2c_rtc_set_minutes+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_minutes+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_minutes+2)+0
	movlw	04h
u4235:
	clrc
	rlf	(??_i2c_rtc_set_minutes+2)+0,f
	addlw	-1
	skipz
	goto	u4235
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_minutes@uc_value),w
	movwf	(??_i2c_rtc_set_minutes+3)+0
	clrf	(??_i2c_rtc_set_minutes+3)+0+1
	movf	0+(??_i2c_rtc_set_minutes+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_minutes+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_minutes+2)+0,w
	movwf	(??_i2c_rtc_set_minutes+5)+0
	movf	(??_i2c_rtc_set_minutes+5)+0,w
	movwf	(i2c_rtc_set_minutes@uc_value)
	line	186
;i2c_rtc.c: 186: uc_i2c_write(0b01101000, 0x01, uc_value);
	clrf	(?_uc_i2c_write)
	bsf	status,0
	rlf	(?_uc_i2c_write),f
	movf	(i2c_rtc_set_minutes@uc_value),w
	movwf	(??_i2c_rtc_set_minutes+0)+0
	movf	(??_i2c_rtc_set_minutes+0)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l1092
	line	187
	
l1091:	
	line	188
	
l1092:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_minutes
	__end_of_i2c_rtc_set_minutes:
;; =============== function _i2c_rtc_set_minutes ends ============

	signat	_i2c_rtc_set_minutes,4216
	global	_uc_i2c_rtc_get_minutes
psect	text598,local,class=CODE,delta=2
global __ptext598
__ptext598:

;; *************** function _uc_i2c_rtc_get_minutes *****************
;; Defined at:
;;		line 152 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text598
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	152
	global	__size_of_uc_i2c_rtc_get_minutes
	__size_of_uc_i2c_rtc_get_minutes	equ	__end_of_uc_i2c_rtc_get_minutes-_uc_i2c_rtc_get_minutes
	
_uc_i2c_rtc_get_minutes:	
	opt	stack 5
; Regs used in _uc_i2c_rtc_get_minutes: [wreg+status,2+status,0+pclath+cstack]
	line	156
	
l4647:	
;i2c_rtc.c: 153: unsigned char uc_i2c_data;
;i2c_rtc.c: 156: uc_i2c_data = uc_i2c_read(0b01101000, 0x01);
	clrf	(?_uc_i2c_read)
	bsf	status,0
	rlf	(?_uc_i2c_read),f
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_minutes+0)+0
	movf	(??_uc_i2c_rtc_get_minutes+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_minutes@uc_i2c_data)
	line	159
;i2c_rtc.c: 159: return (uc_i2c_data & 0x0f) + ((uc_i2c_data >> 4) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_minutes@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_minutes+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_minutes+1)+0
	movf	(??_uc_i2c_rtc_get_minutes+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_minutes@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_minutes+2)+0
	movlw	04h
u4215:
	clrc
	rrf	(??_uc_i2c_rtc_get_minutes+2)+0,f
	addlw	-1
	skipz
	goto	u4215
	movf	0+(??_uc_i2c_rtc_get_minutes+2)+0,w
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_minutes+0)+0,w
	goto	l1088
	
l4649:	
	line	160
	
l1088:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_minutes
	__end_of_uc_i2c_rtc_get_minutes:
;; =============== function _uc_i2c_rtc_get_minutes ends ============

	signat	_uc_i2c_rtc_get_minutes,89
	global	_i2c_rtc_set_seconds
psect	text599,local,class=CODE,delta=2
global __ptext599
__ptext599:

;; *************** function _i2c_rtc_set_seconds *****************
;; Defined at:
;;		line 115 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1   12[COMMON] unsigned char 
;;  uc_current_r    1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_read
;;		_uc_i2c_write
;; This function is called by:
;;		_writertc
;; This function uses a non-reentrant model
;;
psect	text599
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	115
	global	__size_of_i2c_rtc_set_seconds
	__size_of_i2c_rtc_set_seconds	equ	__end_of_i2c_rtc_set_seconds-_i2c_rtc_set_seconds
	
_i2c_rtc_set_seconds:	
	opt	stack 4
; Regs used in _i2c_rtc_set_seconds: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_seconds@uc_value stored from wreg
	line	120
	movwf	(i2c_rtc_set_seconds@uc_value)
	
l4639:	
;i2c_rtc.c: 117: unsigned char uc_current_register_value;
;i2c_rtc.c: 120: if (uc_value < 60) {
	movlw	(03Ch)
	subwf	(i2c_rtc_set_seconds@uc_value),w
	skipnc
	goto	u4191
	goto	u4190
u4191:
	goto	l1085
u4190:
	line	123
	
l4641:	
;i2c_rtc.c: 123: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_seconds@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_seconds+0)+0
	clrf	(??_i2c_rtc_set_seconds+0)+0+1
	movf	0+(??_i2c_rtc_set_seconds+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_seconds+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_seconds+2)+0
	movlw	04h
u4205:
	clrc
	rlf	(??_i2c_rtc_set_seconds+2)+0,f
	addlw	-1
	skipz
	goto	u4205
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_seconds@uc_value),w
	movwf	(??_i2c_rtc_set_seconds+3)+0
	clrf	(??_i2c_rtc_set_seconds+3)+0+1
	movf	0+(??_i2c_rtc_set_seconds+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_seconds+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_seconds+2)+0,w
	movwf	(??_i2c_rtc_set_seconds+5)+0
	movf	(??_i2c_rtc_set_seconds+5)+0,w
	movwf	(i2c_rtc_set_seconds@uc_value)
	line	126
;i2c_rtc.c: 126: uc_current_register_value = uc_i2c_read(0b01101000, 0x00);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_seconds+0)+0
	movf	(??_i2c_rtc_set_seconds+0)+0,w
	movwf	(i2c_rtc_set_seconds@uc_current_register_value)
	line	129
	
l4643:	
;i2c_rtc.c: 129: uc_current_register_value &= 0x80;
	movlw	(080h)
	movwf	(??_i2c_rtc_set_seconds+0)+0
	movf	(??_i2c_rtc_set_seconds+0)+0,w
	andwf	(i2c_rtc_set_seconds@uc_current_register_value),f
	line	132
	
l4645:	
;i2c_rtc.c: 132: uc_i2c_write(0b01101000, 0x00, uc_current_register_value | uc_value);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_seconds@uc_current_register_value),w
	iorwf	(i2c_rtc_set_seconds@uc_value),w
	movwf	(??_i2c_rtc_set_seconds+0)+0
	movf	(??_i2c_rtc_set_seconds+0)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l1085
	line	133
	
l1084:	
	line	134
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_seconds
	__end_of_i2c_rtc_set_seconds:
;; =============== function _i2c_rtc_set_seconds ends ============

	signat	_i2c_rtc_set_seconds,4216
	global	_uc_i2c_rtc_get_seconds
psect	text600,local,class=CODE,delta=2
global __ptext600
__ptext600:

;; *************** function _uc_i2c_rtc_get_seconds *****************
;; Defined at:
;;		line 89 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_readrtc
;; This function uses a non-reentrant model
;;
psect	text600
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	89
	global	__size_of_uc_i2c_rtc_get_seconds
	__size_of_uc_i2c_rtc_get_seconds	equ	__end_of_uc_i2c_rtc_get_seconds-_uc_i2c_rtc_get_seconds
	
_uc_i2c_rtc_get_seconds:	
	opt	stack 5
; Regs used in _uc_i2c_rtc_get_seconds: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l4635:	
;i2c_rtc.c: 90: unsigned char uc_i2c_data;
;i2c_rtc.c: 93: uc_i2c_data = uc_i2c_read(0b01101000, 0x00);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_seconds+0)+0
	movf	(??_uc_i2c_rtc_get_seconds+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_seconds@uc_i2c_data)
	line	96
;i2c_rtc.c: 96: return (uc_i2c_data & 0x0f) + (((uc_i2c_data >> 4) & 0x07) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_seconds@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_seconds+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_seconds+1)+0
	movf	(??_uc_i2c_rtc_get_seconds+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_seconds@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_seconds+2)+0
	movlw	04h
u4185:
	clrc
	rrf	(??_uc_i2c_rtc_get_seconds+2)+0,f
	addlw	-1
	skipz
	goto	u4185
	movf	0+(??_uc_i2c_rtc_get_seconds+2)+0,w
	andlw	07h
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_seconds+0)+0,w
	goto	l1081
	
l4637:	
	line	97
	
l1081:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_seconds
	__end_of_uc_i2c_rtc_get_seconds:
;; =============== function _uc_i2c_rtc_get_seconds ends ============

	signat	_uc_i2c_rtc_get_seconds,89
	global	_i2c_rtc_initialize
psect	text601,local,class=CODE,delta=2
global __ptext601
__ptext601:

;; *************** function _i2c_rtc_initialize *****************
;; Defined at:
;;		line 43 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] unsigned int 
;;  uc_current_r    1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		_uc_i2c_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text601
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c_rtc.c"
	line	43
	global	__size_of_i2c_rtc_initialize
	__size_of_i2c_rtc_initialize	equ	__end_of_i2c_rtc_initialize-_i2c_rtc_initialize
	
_i2c_rtc_initialize:	
	opt	stack 6
; Regs used in _i2c_rtc_initialize: [wreg+status,2+status,0+pclath+cstack]
	line	52
	
l4615:	
;i2c_rtc.c: 44: unsigned int i;
;i2c_rtc.c: 49: unsigned char uc_current_register_value;
;i2c_rtc.c: 52: uc_current_register_value = uc_i2c_read(0b01101000, 0x00);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_i2c_rtc_initialize+0)+0
	movf	(??_i2c_rtc_initialize+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i2c_rtc_initialize@uc_current_register_value)
	line	55
	
l4617:	
;i2c_rtc.c: 55: if ((uc_current_register_value & 0x80) != 0) {
	btfss	(i2c_rtc_initialize@uc_current_register_value),(7)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l4629
u4140:
	line	56
	
l4619:	
;i2c_rtc.c: 56: uc_i2c_write(0b01101000, 0x00, uc_current_register_value & 0x7f);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_initialize@uc_current_register_value),w
	andlw	07Fh
	movwf	(??_i2c_rtc_initialize+0)+0
	movf	(??_i2c_rtc_initialize+0)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	line	59
	
l4621:	
;i2c_rtc.c: 59: for (i = 0; i < 500; i++) {
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i2c_rtc_initialize@i)
	movlw	high(0)
	movwf	((i2c_rtc_initialize@i))+1
	
l4623:	
	movlw	high(01F4h)
	subwf	(i2c_rtc_initialize@i+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(i2c_rtc_initialize@i),w
	skipc
	goto	u4151
	goto	u4150
u4151:
	goto	l4627
u4150:
	goto	l4629
	
l4625:	
	goto	l4629
	
l1075:	
	line	60
	
l4627:	
;i2c_rtc.c: 60: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_i2c_rtc_initialize+0)+0+1),f
	movlw	125
movwf	((??_i2c_rtc_initialize+0)+0),f
u5187:
	decfsz	((??_i2c_rtc_initialize+0)+0),f
	goto	u5187
	decfsz	((??_i2c_rtc_initialize+0)+0+1),f
	goto	u5187
opt asmopt_on

	line	59
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(i2c_rtc_initialize@i),f
	skipnc
	incf	(i2c_rtc_initialize@i+1),f
	movlw	high(01h)
	addwf	(i2c_rtc_initialize@i+1),f
	movlw	high(01F4h)
	subwf	(i2c_rtc_initialize@i+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(i2c_rtc_initialize@i),w
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l4627
u4160:
	goto	l4629
	
l1076:	
	goto	l4629
	line	62
	
l1074:	
	line	65
	
l4629:	
;i2c_rtc.c: 61: }
;i2c_rtc.c: 62: }
;i2c_rtc.c: 65: uc_current_register_value = uc_i2c_read(0b01101000, 0x02);
	movlw	(02h)
	movwf	(??_i2c_rtc_initialize+0)+0
	movf	(??_i2c_rtc_initialize+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_i2c_rtc_initialize+1)+0
	movf	(??_i2c_rtc_initialize+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i2c_rtc_initialize@uc_current_register_value)
	line	68
	
l4631:	
;i2c_rtc.c: 68: if ((uc_current_register_value & 0x40) != 0) {
	btfss	(i2c_rtc_initialize@uc_current_register_value),(6)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l1078
u4170:
	line	69
	
l4633:	
;i2c_rtc.c: 69: uc_i2c_write(0b01101000, 0x02, uc_current_register_value & 0xbf);
	movlw	(02h)
	movwf	(??_i2c_rtc_initialize+0)+0
	movf	(??_i2c_rtc_initialize+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_initialize@uc_current_register_value),w
	andlw	0BFh
	movwf	(??_i2c_rtc_initialize+1)+0
	movf	(??_i2c_rtc_initialize+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l1078
	line	70
	
l1077:	
	line	71
	
l1078:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_initialize
	__end_of_i2c_rtc_initialize:
;; =============== function _i2c_rtc_initialize ends ============

	signat	_i2c_rtc_initialize,88
	global	___awmod
psect	text602,local,class=CODE,delta=2
global __ptext602
__ptext602:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_rtc_set_seconds
;;		_i2c_rtc_set_minutes
;;		_i2c_rtc_set_hours
;;		_i2c_rtc_set_date
;;		_i2c_rtc_set_month
;;		_i2c_rtc_set_year
;; This function uses a non-reentrant model
;;
psect	text602
	file	"C:\Program Files\HI-TECH Software\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l4579:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l4581:	
	btfss	(___awmod@dividend+1),7
	goto	u4051
	goto	u4050
u4051:
	goto	l4585
u4050:
	line	10
	
l4583:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l4585
	line	12
	
l2117:	
	line	13
	
l4585:	
	btfss	(___awmod@divisor+1),7
	goto	u4061
	goto	u4060
u4061:
	goto	l4589
u4060:
	line	14
	
l4587:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l4589
	
l2118:	
	line	15
	
l4589:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4071
	goto	u4070
u4071:
	goto	l4607
u4070:
	line	16
	
l4591:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l4597
	
l2121:	
	line	18
	
l4593:	
	movlw	01h
	
u4085:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4085
	line	19
	
l4595:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l4597
	line	20
	
l2120:	
	line	17
	
l4597:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l4593
u4090:
	goto	l4599
	
l2122:	
	goto	l4599
	line	21
	
l2123:	
	line	22
	
l4599:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4105
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4105:
	skipc
	goto	u4101
	goto	u4100
u4101:
	goto	l4603
u4100:
	line	23
	
l4601:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l4603
	
l2124:	
	line	24
	
l4603:	
	movlw	01h
	
u4115:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4115
	line	25
	
l4605:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l4599
u4120:
	goto	l4607
	
l2125:	
	goto	l4607
	line	26
	
l2119:	
	line	27
	
l4607:	
	movf	(___awmod@sign),w
	skipz
	goto	u4130
	goto	l4611
u4130:
	line	28
	
l4609:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l4611
	
l2126:	
	line	29
	
l4611:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2127
	
l4613:	
	line	30
	
l2127:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text603,local,class=CODE,delta=2
global __ptext603
__ptext603:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text603
	file	"C:\Program Files\HI-TECH Software\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l4555:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3981
	goto	u3980
u3981:
	goto	l4575
u3980:
	line	11
	
l4557:	
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	line	12
	goto	l4561
	
l2083:	
	line	13
	
l4559:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3995:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3995
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l4561
	line	15
	
l2082:	
	line	12
	
l4561:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l4559
u4000:
	goto	l4563
	
l2084:	
	goto	l4563
	line	16
	
l2085:	
	line	17
	
l4563:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u4015:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u4015
	line	18
	
l4565:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u4025
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u4025
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u4025
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u4025:
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l4571
u4020:
	line	19
	
l4567:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l4569:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l4571
	line	21
	
l2086:	
	line	22
	
l4571:	
	movlw	01h
u4035:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u4035

	line	23
	
l4573:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l4563
u4040:
	goto	l4575
	
l2087:	
	goto	l4575
	line	24
	
l2081:	
	line	25
	
l4575:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l2088
	
l4577:	
	line	26
	
l2088:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___llmod
psect	text604,local,class=CODE,delta=2
global __ptext604
__ptext604:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text604
	file	"C:\Program Files\HI-TECH Software\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l4535:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3921
	goto	u3920
u3921:
	goto	l4551
u3920:
	line	9
	
l4537:	
	clrf	(___llmod@counter)
	bsf	status,0
	rlf	(___llmod@counter),f
	line	10
	goto	l4541
	
l2064:	
	line	11
	
l4539:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3935:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3935
	line	12
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l4541
	line	13
	
l2063:	
	line	10
	
l4541:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l4539
u3940:
	goto	l4543
	
l2065:	
	goto	l4543
	line	14
	
l2066:	
	line	15
	
l4543:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3955
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3955
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3955
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3955:
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l4547
u3950:
	line	16
	
l4545:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l4547
	
l2067:	
	line	17
	
l4547:	
	movlw	01h
u3965:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3965

	line	18
	
l4549:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l4543
u3970:
	goto	l4551
	
l2068:	
	goto	l4551
	line	19
	
l2062:	
	line	20
	
l4551:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l2069
	
l4553:	
	line	21
	
l2069:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text605,local,class=CODE,delta=2
global __ptext605
__ptext605:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_rtc_set_seconds
;;		_i2c_rtc_set_minutes
;;		_i2c_rtc_set_hours
;;		_i2c_rtc_set_date
;;		_i2c_rtc_set_month
;;		_i2c_rtc_set_year
;; This function uses a non-reentrant model
;;
psect	text605
	file	"C:\Program Files\HI-TECH Software\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l4497:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l4499:	
	btfss	(___awdiv@divisor+1),7
	goto	u3821
	goto	u3820
u3821:
	goto	l4503
u3820:
	line	11
	
l4501:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l4503
	line	13
	
l2049:	
	line	14
	
l4503:	
	btfss	(___awdiv@dividend+1),7
	goto	u3831
	goto	u3830
u3831:
	goto	l2050
u3830:
	line	15
	
l4505:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l4507:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l2050:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3841
	goto	u3840
u3841:
	goto	l4527
u3840:
	line	20
	
l4509:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l4515
	
l2053:	
	line	22
	
l4511:	
	movlw	01h
	
u3855:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3855
	line	23
	
l4513:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l4515
	line	24
	
l2052:	
	line	21
	
l4515:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l4511
u3860:
	goto	l4517
	
l2054:	
	goto	l4517
	line	25
	
l2055:	
	line	26
	
l4517:	
	movlw	01h
	
u3875:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3875
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3885
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3885:
	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l4523
u3880:
	line	28
	
l4519:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l4521:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l4523
	line	30
	
l2056:	
	line	31
	
l4523:	
	movlw	01h
	
u3895:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3895
	line	32
	
l4525:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l4517
u3900:
	goto	l4527
	
l2057:	
	goto	l4527
	line	33
	
l2051:	
	line	34
	
l4527:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3910
	goto	l4531
u3910:
	line	35
	
l4529:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l4531
	
l2058:	
	line	36
	
l4531:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2059
	
l4533:	
	line	37
	
l2059:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___bmul
psect	text606,local,class=CODE,delta=2
global __ptext606
__ptext606:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uc_i2c_rtc_get_seconds
;;		_uc_i2c_rtc_get_minutes
;;		_uc_i2c_rtc_get_hours
;;		_uc_i2c_rtc_get_date
;;		_uc_i2c_rtc_get_month
;;		_uc_i2c_rtc_get_year
;; This function uses a non-reentrant model
;;
psect	text606
	file	"C:\Program Files\HI-TECH Software\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l4481:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___bmul@product)
	goto	l4483
	line	6
	
l1903:	
	line	7
	
l4483:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l4487
u3800:
	line	8
	
l4485:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l4487
	
l1904:	
	line	9
	
l4487:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l4489:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l4491:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l4483
u3810:
	goto	l4493
	
l1905:	
	line	12
	
l4493:	
	movf	(___bmul@product),w
	goto	l1906
	
l4495:	
	line	13
	
l1906:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_delay
psect	text607,local,class=CODE,delta=2
global __ptext607
__ptext607:

;; *************** function _delay *****************
;; Defined at:
;;		line 575 in file "C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_writertc
;;		_send_config
;;		_send_char
;;		_e_pulse
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text607
	file	"C:\Users\Phang\Desktop\9.80\PR 12\PR12.c"
	line	575
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 3
; Regs used in _delay: [wreg]
	line	576
	
l4473:	
;PR12.c: 576: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l4477
u3770:
	goto	l1862
	
l4475:	
	goto	l1862
	
l1860:	
	
l4477:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u3785
	goto	u3786
u3785:
	subwf	(delay@data+1),f
u3786:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u3787
	goto	u3788
u3787:
	subwf	(delay@data+2),f
u3788:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u3789
	goto	u3780
u3789:
	subwf	(delay@data+3),f
u3780:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l4477
u3790:
	goto	l1862
	
l1861:	
	line	577
	
l1862:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_uc_i2c_write
psect	text608,local,class=CODE,delta=2
global __ptext608
__ptext608:

;; *************** function _uc_i2c_write *****************
;; Defined at:
;;		line 222 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c.c"
;; Parameters:    Size  Location     Type
;;  uc_slave_add    1    wreg     unsigned char 
;;  uc_register     1    0[COMMON] unsigned char 
;;  uc_data         1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_slave_add    1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_rtc_initialize
;;		_i2c_rtc_set_seconds
;;		_i2c_rtc_set_minutes
;;		_i2c_rtc_set_hours
;;		_i2c_rtc_set_day
;;		_i2c_rtc_set_date
;;		_i2c_rtc_set_month
;;		_i2c_rtc_set_year
;; This function uses a non-reentrant model
;;
psect	text608
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c.c"
	line	222
	global	__size_of_uc_i2c_write
	__size_of_uc_i2c_write	equ	__end_of_uc_i2c_write-_uc_i2c_write
	
_uc_i2c_write:	
	opt	stack 4
; Regs used in _uc_i2c_write: [wreg+status,2+status,0]
;uc_i2c_write@uc_slave_address stored from wreg
	line	224
	movwf	(uc_i2c_write@uc_slave_address)
	
l4443:	
;i2c.c: 224: b_i2c_error_flag = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b_i2c_error_flag)
	line	227
	
l4445:	
;i2c.c: 227: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	228
;i2c.c: 228: while (SEN == 1);
	goto	l546
	
l547:	
	
l546:	
	btfsc	(1160/8)^080h,(1160)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l546
u3660:
	goto	l4447
	
l548:	
	line	231
	
l4447:	
;i2c.c: 231: SSPBUF = (uc_slave_address << 1) & 0xfe;
	movf	(uc_i2c_write@uc_slave_address),w
	movwf	(??_uc_i2c_write+0)+0
	addwf	(??_uc_i2c_write+0)+0,w
	andlw	0FEh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	234
;i2c.c: 234: while (RW == 1);
	goto	l549
	
l550:	
	
l549:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l549
u3670:
	
l551:	
	line	237
;i2c.c: 237: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l4455
u3680:
	line	239
	
l4449:	
;i2c.c: 239: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	240
;i2c.c: 240: while (PEN == 1);
	goto	l553
	
l554:	
	
l553:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l553
u3690:
	goto	l4451
	
l555:	
	line	243
	
l4451:	
;i2c.c: 243: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	goto	l556
	line	244
	
l4453:	
;i2c.c: 244: return;
	goto	l556
	line	245
	
l552:	
	line	248
	
l4455:	
;i2c.c: 245: }
;i2c.c: 248: SSPBUF = uc_register;
	movf	(uc_i2c_write@uc_register),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	251
;i2c.c: 251: while (RW == 1);
	goto	l557
	
l558:	
	
l557:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l557
u3700:
	
l559:	
	line	254
;i2c.c: 254: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l4463
u3710:
	line	256
	
l4457:	
;i2c.c: 256: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	257
;i2c.c: 257: while (PEN == 1);
	goto	l561
	
l562:	
	
l561:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l561
u3720:
	goto	l4459
	
l563:	
	line	260
	
l4459:	
;i2c.c: 260: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	goto	l556
	line	261
	
l4461:	
;i2c.c: 261: return;
	goto	l556
	line	262
	
l560:	
	line	265
	
l4463:	
;i2c.c: 262: }
;i2c.c: 265: SSPBUF = uc_data;
	movf	(uc_i2c_write@uc_data),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	268
;i2c.c: 268: while (RW == 1);
	goto	l564
	
l565:	
	
l564:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l564
u3730:
	
l566:	
	line	271
;i2c.c: 271: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3741
	goto	u3740
u3741:
	goto	l567
u3740:
	line	273
	
l4465:	
;i2c.c: 273: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	274
;i2c.c: 274: while (PEN == 1);
	goto	l568
	
l569:	
	
l568:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l568
u3750:
	goto	l4467
	
l570:	
	line	277
	
l4467:	
;i2c.c: 277: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	goto	l556
	line	278
	
l4469:	
;i2c.c: 278: return;
	goto	l556
	line	279
	
l567:	
	line	282
;i2c.c: 279: }
;i2c.c: 282: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	283
;i2c.c: 283: while (PEN == 1);
	goto	l571
	
l572:	
	
l571:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l571
u3760:
	goto	l4471
	
l573:	
	line	286
	
l4471:	
;i2c.c: 286: b_i2c_error_flag = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b_i2c_error_flag)
	line	287
	
l556:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_write
	__end_of_uc_i2c_write:
;; =============== function _uc_i2c_write ends ============

	signat	_uc_i2c_write,12408
	global	_uc_i2c_read
psect	text609,local,class=CODE,delta=2
global __ptext609
__ptext609:

;; *************** function _uc_i2c_read *****************
;; Defined at:
;;		line 100 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c.c"
;; Parameters:    Size  Location     Type
;;  uc_slave_add    1    wreg     unsigned char 
;;  uc_register     1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_slave_add    1   10[COMMON] unsigned char 
;;  count           4    5[COMMON] unsigned long 
;;  uc_received_    1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        11       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_rtc_initialize
;;		_uc_i2c_rtc_get_seconds
;;		_i2c_rtc_set_seconds
;;		_uc_i2c_rtc_get_minutes
;;		_uc_i2c_rtc_get_hours
;;		_i2c_rtc_set_hours
;;		_uc_i2c_rtc_get_day
;;		_uc_i2c_rtc_get_date
;;		_uc_i2c_rtc_get_month
;;		_uc_i2c_rtc_get_year
;; This function uses a non-reentrant model
;;
psect	text609
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c.c"
	line	100
	global	__size_of_uc_i2c_read
	__size_of_uc_i2c_read	equ	__end_of_uc_i2c_read-_uc_i2c_read
	
_uc_i2c_read:	
	opt	stack 5
; Regs used in _uc_i2c_read: [wreg+status,2+status,0]
;uc_i2c_read@uc_slave_address stored from wreg
	line	105
	movwf	(uc_i2c_read@uc_slave_address)
	
l4385:	
;i2c.c: 102: unsigned char uc_received_byte;
;i2c.c: 105: b_i2c_error_flag = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b_i2c_error_flag)
	line	108
	
l4387:	
;i2c.c: 108: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	109
;i2c.c: 109: while (SEN == 1);
	goto	l503
	
l504:	
	
l503:	
	btfsc	(1160/8)^080h,(1160)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l503
u3490:
	goto	l4389
	
l505:	
	line	112
	
l4389:	
;i2c.c: 112: SSPBUF = (uc_slave_address << 1) & 0xfe;
	movf	(uc_i2c_read@uc_slave_address),w
	movwf	(??_uc_i2c_read+0)+0
	addwf	(??_uc_i2c_read+0)+0,w
	andlw	0FEh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	115
;i2c.c: 115: while (RW == 1);
	goto	l506
	
l507:	
	
l506:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l506
u3500:
	
l508:	
	line	118
;i2c.c: 118: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l4399
u3510:
	line	120
	
l4391:	
;i2c.c: 120: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	121
;i2c.c: 121: while (PEN == 1);
	goto	l510
	
l511:	
	
l510:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l510
u3520:
	goto	l4393
	
l512:	
	line	124
	
l4393:	
;i2c.c: 124: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	line	125
	
l4395:	
;i2c.c: 125: return 0;
	movlw	(0)
	goto	l513
	
l4397:	
	goto	l513
	line	126
	
l509:	
	line	129
	
l4399:	
;i2c.c: 126: }
;i2c.c: 129: SSPBUF = uc_register;
	movf	(uc_i2c_read@uc_register),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	132
;i2c.c: 132: while (RW == 1);
	goto	l514
	
l515:	
	
l514:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l514
u3530:
	
l516:	
	line	135
;i2c.c: 135: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l517
u3540:
	line	137
	
l4401:	
;i2c.c: 137: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	138
;i2c.c: 138: while (PEN == 1);
	goto	l518
	
l519:	
	
l518:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l518
u3550:
	goto	l4403
	
l520:	
	line	141
	
l4403:	
;i2c.c: 141: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	line	142
	
l4405:	
;i2c.c: 142: return 0;
	movlw	(0)
	goto	l513
	
l4407:	
	goto	l513
	line	143
	
l517:	
	line	148
;i2c.c: 143: }
;i2c.c: 148: RSEN = 1;
	bsf	(1161/8)^080h,(1161)&7
	line	149
;i2c.c: 149: while (RSEN == 1);
	goto	l521
	
l522:	
	
l521:	
	btfsc	(1161/8)^080h,(1161)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l521
u3560:
	goto	l4409
	
l523:	
	line	152
	
l4409:	
;i2c.c: 152: SSPBUF = (uc_slave_address << 1) | 0x01;
	setc
	rlf	(uc_i2c_read@uc_slave_address),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	155
;i2c.c: 155: while (RW == 1);
	goto	l524
	
l525:	
	
l524:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l524
u3570:
	
l526:	
	line	158
;i2c.c: 158: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l527
u3580:
	line	160
	
l4411:	
;i2c.c: 160: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	161
;i2c.c: 161: while (PEN == 1);
	goto	l528
	
l529:	
	
l528:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l528
u3590:
	goto	l4413
	
l530:	
	line	164
	
l4413:	
;i2c.c: 164: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	line	165
	
l4415:	
;i2c.c: 165: return 0;
	movlw	(0)
	goto	l513
	
l4417:	
	goto	l513
	line	166
	
l527:	
	line	169
;i2c.c: 166: }
;i2c.c: 169: RCEN = 1;
	bsf	(1163/8)^080h,(1163)&7
	line	172
	
l4419:	
;i2c.c: 172: unsigned long count = 10000L;
	movlw	0
	movwf	(uc_i2c_read@count+3)
	movlw	0
	movwf	(uc_i2c_read@count+2)
	movlw	027h
	movwf	(uc_i2c_read@count+1)
	movlw	010h
	movwf	(uc_i2c_read@count)

	line	173
;i2c.c: 173: while (BF == 0) {
	goto	l531
	
l532:	
	line	176
	
l4421:	
;i2c.c: 176: if (--count == 0) {
	movlw	01h
	movwf	((??_uc_i2c_read+0)+0)
	movlw	0
	movwf	((??_uc_i2c_read+0)+0+1)
	movlw	0
	movwf	((??_uc_i2c_read+0)+0+2)
	movlw	0
	movwf	((??_uc_i2c_read+0)+0+3)
	movf	0+(??_uc_i2c_read+0)+0,w
	subwf	(uc_i2c_read@count),f
	movf	1+(??_uc_i2c_read+0)+0,w
	skipc
	incfsz	1+(??_uc_i2c_read+0)+0,w
	goto	u3605
	goto	u3606
u3605:
	subwf	(uc_i2c_read@count+1),f
u3606:
	movf	2+(??_uc_i2c_read+0)+0,w
	skipc
	incfsz	2+(??_uc_i2c_read+0)+0,w
	goto	u3607
	goto	u3608
u3607:
	subwf	(uc_i2c_read@count+2),f
u3608:
	movf	3+(??_uc_i2c_read+0)+0,w
	skipc
	incfsz	3+(??_uc_i2c_read+0)+0,w
	goto	u3609
	goto	u3600
u3609:
	subwf	(uc_i2c_read@count+3),f
u3600:

	movf	((uc_i2c_read@count+3)),w
	iorwf	((uc_i2c_read@count+2)),w
	iorwf	((uc_i2c_read@count+1)),w
	iorwf	((uc_i2c_read@count)),w
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l531
u3610:
	line	178
	
l4423:	
;i2c.c: 178: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	179
;i2c.c: 179: while (PEN == 1);
	goto	l534
	
l535:	
	
l534:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l534
u3620:
	goto	l4425
	
l536:	
	line	182
	
l4425:	
;i2c.c: 182: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	line	183
	
l4427:	
;i2c.c: 183: return 0;
	movlw	(0)
	goto	l513
	
l4429:	
	goto	l513
	line	184
	
l533:	
	line	185
	
l531:	
	line	173
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l4421
u3630:
	goto	l4431
	
l537:	
	line	188
	
l4431:	
;i2c.c: 184: }
;i2c.c: 185: }
;i2c.c: 188: uc_received_byte = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_uc_i2c_read+0)+0
	movf	(??_uc_i2c_read+0)+0,w
	movwf	(uc_i2c_read@uc_received_byte)
	line	191
	
l4433:	
;i2c.c: 191: ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	192
	
l4435:	
;i2c.c: 192: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	193
;i2c.c: 193: while (ACKEN == 1);
	goto	l538
	
l539:	
	
l538:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l538
u3640:
	
l540:	
	line	196
;i2c.c: 196: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	197
;i2c.c: 197: while (PEN == 1);
	goto	l541
	
l542:	
	
l541:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l541
u3650:
	goto	l4437
	
l543:	
	line	200
	
l4437:	
;i2c.c: 200: b_i2c_error_flag = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b_i2c_error_flag)
	line	201
	
l4439:	
;i2c.c: 201: return uc_received_byte;
	movf	(uc_i2c_read@uc_received_byte),w
	goto	l513
	
l4441:	
	line	202
	
l513:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_read
	__end_of_uc_i2c_read:
;; =============== function _uc_i2c_read ends ============

	signat	_uc_i2c_read,8313
	global	_i2c_initialize
psect	text610,local,class=CODE,delta=2
global __ptext610
__ptext610:

;; *************** function _i2c_initialize *****************
;; Defined at:
;;		line 37 in file "C:\Users\Phang\Desktop\9.80\PR 12\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text610
	file	"C:\Users\Phang\Desktop\9.80\PR 12\i2c.c"
	line	37
	global	__size_of_i2c_initialize
	__size_of_i2c_initialize	equ	__end_of_i2c_initialize-_i2c_initialize
	
_i2c_initialize:	
	opt	stack 7
; Regs used in _i2c_initialize: [wreg]
	line	39
	
l2791:	
;i2c.c: 39: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	40
;i2c.c: 40: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	44
	
l2793:	
;i2c.c: 44: SSPADD = 12;
	movlw	(0Ch)
	movwf	(147)^080h	;volatile
	line	47
	
l2795:	
;i2c.c: 47: SSPM3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(163/8),(163)&7
	line	48
	
l2797:	
;i2c.c: 48: SSPM2 = 0;
	bcf	(162/8),(162)&7
	line	49
	
l2799:	
;i2c.c: 49: SSPM1 = 0;
	bcf	(161/8),(161)&7
	line	50
	
l2801:	
;i2c.c: 50: SSPM0 = 0;
	bcf	(160/8),(160)&7
	line	53
	
l2803:	
;i2c.c: 53: WCOL = 0;
	bcf	(167/8),(167)&7
	line	56
	
l2805:	
;i2c.c: 56: SSPOV = 0;
	bcf	(166/8),(166)&7
	line	59
	
l2807:	
;i2c.c: 59: SSPEN = 1;
	bsf	(165/8),(165)&7
	line	60
	
l497:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_initialize
	__end_of_i2c_initialize:
;; =============== function _i2c_initialize ends ============

	signat	_i2c_initialize,88
psect	text611,local,class=CODE,delta=2
global __ptext611
__ptext611:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
