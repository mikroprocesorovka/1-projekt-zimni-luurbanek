;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setup
	.globl _encoder_init
	.globl _sprintf
	.globl _lcd_puts
	.globl _lcd_gotoxy
	.globl _lcd_init
	.globl _milis
	.globl _init_milis
	.globl _TIM1_GetCounter
	.globl _TIM1_EncoderInterfaceConfig
	.globl _TIM1_Cmd
	.globl _TIM1_TimeBaseInit
	.globl _TIM1_DeInit
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _CLK_HSIPrescalerConfig
	.globl _assert_failed
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int _CAN_RX_IRQHandler ; int8
	int _CAN_TX_IRQHandler ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
	int _TIM3_CAP_COM_IRQHandler ; int16
	int _UART1_TX_IRQHandler ; int17
	int _UART1_RX_IRQHandler ; int18
	int _I2C_IRQHandler ; int19
	int _UART3_TX_IRQHandler ; int20
	int _UART3_RX_IRQHandler ; int21
	int _ADC2_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$_delay_cycl$0 ==.
;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
; genLabel
;	-----------------------------------------
;	 function _delay_cycl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__delay_cycl:
	Smain$_delay_cycl$1 ==.
	Smain$_delay_cycl$2 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$_delay_cycl$3 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
	ldw	x, (0x03, sp)
; genLabel
00101$:
	Smain$_delay_cycl$4 ==.
	Smain$_delay_cycl$5 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$_delay_cycl$6 ==.
	Smain$_delay_cycl$7 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00117$
	jp	00101$
00117$:
	Smain$_delay_cycl$8 ==.
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
; genLabel
00104$:
	Smain$_delay_cycl$9 ==.
;	inc/delay.h: 39: }
; genEndFunction
	Smain$_delay_cycl$10 ==.
	XFmain$_delay_cycl$0$0 ==.
	ret
	Smain$_delay_cycl$11 ==.
	Smain$_delay_us$12 ==.
;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
; genLabel
;	-----------------------------------------
;	 function _delay_us
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__delay_us:
	Smain$_delay_us$13 ==.
	Smain$_delay_us$14 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genCast
; genAssign
	ldw	y, (0x03, sp)
	clrw	x
; genIPush
	pushw	y
	Smain$_delay_us$15 ==.
	pushw	x
	Smain$_delay_us$16 ==.
; genIPush
	push	#0x00
	Smain$_delay_us$17 ==.
	push	#0x24
	Smain$_delay_us$18 ==.
	push	#0xf4
	Smain$_delay_us$19 ==.
	push	#0x00
	Smain$_delay_us$20 ==.
; genCall
	call	__mullong
	addw	sp, #8
	Smain$_delay_us$21 ==.
	Smain$_delay_us$22 ==.
; genCast
; genAssign
; genIPush
	push	#0x40
	Smain$_delay_us$23 ==.
	push	#0x42
	Smain$_delay_us$24 ==.
	push	#0x0f
	Smain$_delay_us$25 ==.
	push	#0x00
	Smain$_delay_us$26 ==.
; genIPush
	pushw	x
	Smain$_delay_us$27 ==.
	pushw	y
	Smain$_delay_us$28 ==.
; genCall
	call	__divulong
	addw	sp, #8
	Smain$_delay_us$29 ==.
	Smain$_delay_us$30 ==.
; genRightShiftLiteral
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
; genCast
; genAssign
	Smain$_delay_us$31 ==.
; genPlus
	incw	x
; genAssign
; genAssign
	Smain$_delay_us$32 ==.
; genAssign
	Smain$_delay_us$33 ==.
;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
;	genInline
	nop
	nop
	Smain$_delay_us$34 ==.
	Smain$_delay_us$35 ==.
;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
; genAssign
; genLabel
00101$:
	Smain$_delay_us$36 ==.
;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
; genMinus
	decw	x
	Smain$_delay_us$37 ==.
;	inc/delay.h: 28: } while ( __ticks );
; genIfx
	tnzw	x
	jreq	00118$
	jp	00101$
00118$:
;	inc/delay.h: 29: __asm__("nop\n");
;	genInline
	nop
	Smain$_delay_us$38 ==.
	Smain$_delay_us$39 ==.
;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
; genLabel
00105$:
	Smain$_delay_us$40 ==.
;	inc/delay.h: 43: }
; genEndFunction
	Smain$_delay_us$41 ==.
	XFmain$_delay_us$0$0 ==.
	ret
	Smain$_delay_us$42 ==.
	Smain$encoder_init$43 ==.
;	./src/main.c: 11: void encoder_init(void){
; genLabel
;	-----------------------------------------
;	 function encoder_init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_encoder_init:
	Smain$encoder_init$44 ==.
	Smain$encoder_init$45 ==.
;	./src/main.c: 12: GPIO_Init(GPIOC, GPIO_PIN_1,GPIO_MODE_IN_PU_NO_IT);
; genIPush
	push	#0x40
	Smain$encoder_init$46 ==.
; genIPush
	push	#0x02
	Smain$encoder_init$47 ==.
; genIPush
	push	#0x0a
	Smain$encoder_init$48 ==.
	push	#0x50
	Smain$encoder_init$49 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$encoder_init$50 ==.
	Smain$encoder_init$51 ==.
;	./src/main.c: 13: GPIO_Init(GPIOC, GPIO_PIN_2,GPIO_MODE_IN_PU_NO_IT);
; genIPush
	push	#0x40
	Smain$encoder_init$52 ==.
; genIPush
	push	#0x04
	Smain$encoder_init$53 ==.
; genIPush
	push	#0x0a
	Smain$encoder_init$54 ==.
	push	#0x50
	Smain$encoder_init$55 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$encoder_init$56 ==.
	Smain$encoder_init$57 ==.
;	./src/main.c: 15: TIM1_DeInit();
; genCall
	call	_TIM1_DeInit
	Smain$encoder_init$58 ==.
;	./src/main.c: 16: TIM1_TimeBaseInit(16, TIM1_COUNTERMODE_UP, 500, 16); //inicializace enkoderu
; genIPush
	push	#0x10
	Smain$encoder_init$59 ==.
; genIPush
	push	#0xf4
	Smain$encoder_init$60 ==.
	push	#0x01
	Smain$encoder_init$61 ==.
; genIPush
	push	#0x00
	Smain$encoder_init$62 ==.
; genIPush
	push	#0x10
	Smain$encoder_init$63 ==.
	push	#0x00
	Smain$encoder_init$64 ==.
; genCall
	call	_TIM1_TimeBaseInit
	addw	sp, #6
	Smain$encoder_init$65 ==.
	Smain$encoder_init$66 ==.
;	./src/main.c: 17: TIM1_EncoderInterfaceConfig(TIM1_ENCODERMODE_TI12,TIM1_ICPOLARITY_FALLING,TIM1_ICPOLARITY_FALLING);
; genIPush
	push	#0x01
	Smain$encoder_init$67 ==.
; genIPush
	push	#0x01
	Smain$encoder_init$68 ==.
; genIPush
	push	#0x03
	Smain$encoder_init$69 ==.
; genCall
	call	_TIM1_EncoderInterfaceConfig
	addw	sp, #3
	Smain$encoder_init$70 ==.
	Smain$encoder_init$71 ==.
;	./src/main.c: 18: TIM1_Cmd(ENABLE);
; genIPush
	push	#0x01
	Smain$encoder_init$72 ==.
; genCall
	call	_TIM1_Cmd
	pop	a
	Smain$encoder_init$73 ==.
; genLabel
00101$:
	Smain$encoder_init$74 ==.
;	./src/main.c: 19: }
; genEndFunction
	Smain$encoder_init$75 ==.
	XG$encoder_init$0$0 ==.
	ret
	Smain$encoder_init$76 ==.
	Smain$setup$77 ==.
;	./src/main.c: 21: void setup(void)
; genLabel
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_setup:
	Smain$setup$78 ==.
	Smain$setup$79 ==.
;	./src/main.c: 23: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
; genIPush
	push	#0x00
	Smain$setup$80 ==.
; genCall
	call	_CLK_HSIPrescalerConfig
	pop	a
	Smain$setup$81 ==.
	Smain$setup$82 ==.
;	./src/main.c: 25: lcd_init(); //inicializace LCD
; genCall
	call	_lcd_init
	Smain$setup$83 ==.
;	./src/main.c: 26: init_milis(); //inicializace mmilisu
; genCall
	call	_init_milis
	Smain$setup$84 ==.
;	./src/main.c: 28: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_SLOW); // nastavíme PC5 jako výstup typu push-pull (LEDka)
; genIPush
	push	#0xc0
	Smain$setup$85 ==.
; genIPush
	push	#0x20
	Smain$setup$86 ==.
; genIPush
	push	#0x0a
	Smain$setup$87 ==.
	push	#0x50
	Smain$setup$88 ==.
; genCall
	call	_GPIO_Init
	addw	sp, #4
	Smain$setup$89 ==.
	Smain$setup$90 ==.
;	./src/main.c: 30: encoder_init();
; genCall
	jp	_encoder_init
; genLabel
00101$:
	Smain$setup$91 ==.
;	./src/main.c: 32: }
; genEndFunction
	Smain$setup$92 ==.
	XG$setup$0$0 ==.
	ret
	Smain$setup$93 ==.
	Smain$main$94 ==.
;	./src/main.c: 34: int main(void)
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 50 bytes.
_main:
	Smain$main$95 ==.
	sub	sp, #50
	Smain$main$96 ==.
	Smain$main$97 ==.
;	./src/main.c: 36: uint32_t time = milis(); //inicializace proměnných
; genCall
	call	_milis
; genAssign
	ldw	(0x23, sp), x
	ldw	(0x21, sp), y
	Smain$main$98 ==.
;	./src/main.c: 39: unsigned int previous_value = 0x0001;
; genAssign
	ldw	x, #0x0001
	ldw	(0x25, sp), x
	Smain$main$99 ==.
;	./src/main.c: 45: setup();
; genCall
	call	_setup
	Smain$main$100 ==.
;	./src/main.c: 47: lcd_gotoxy(0,0);
; genIPush
	push	#0x00
	Smain$main$101 ==.
; genIPush
	push	#0x00
	Smain$main$102 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$103 ==.
	Smain$main$104 ==.
;	./src/main.c: 48: lcd_puts("perioda");
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#<(___str_0+0)
	Smain$main$105 ==.
	push	#((___str_0+0) >> 8)
	Smain$main$106 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$107 ==.
	Smain$main$108 ==.
;	./src/main.c: 49: while (1) {
; genAssign
	clrw	x
	ldw	(0x29, sp), x
	ldw	(0x27, sp), x
; genLabel
00106$:
	Smain$main$109 ==.
	Smain$main$110 ==.
;	./src/main.c: 50: if(milis() - time > perioda/2){
; genCall
	call	_milis
	ldw	(0x31, sp), x
	ldw	(0x2f, sp), y
; genMinus
	ldw	x, (0x31, sp)
	subw	x, (0x23, sp)
	ldw	(0x2d, sp), x
	ld	a, (0x30, sp)
	sbc	a, (0x22, sp)
	ld	(0x2c, sp), a
	ld	a, (0x2f, sp)
	sbc	a, (0x21, sp)
	ld	(0x2b, sp), a
; genRightShiftLiteral
	ldw	y, (0x27, sp)
	ldw	(0x2f, sp), y
	ldw	x, (0x29, sp)
	srl	(0x2f, sp)
	rrc	(0x30, sp)
	rrcw	x
	ldw	(0x31, sp), x
; genCmp
; genCmpTop
	ldw	x, (0x31, sp)
	cpw	x, (0x2d, sp)
	ld	a, (0x30, sp)
	sbc	a, (0x2c, sp)
	ld	a, (0x2f, sp)
	sbc	a, (0x2b, sp)
	jrc	00125$
	jp	00102$
00125$:
; skipping generated iCode
	Smain$main$111 ==.
	Smain$main$112 ==.
;	./src/main.c: 51: GPIO_WriteReverse(GPIOC,GPIO_PIN_5);
; genIPush
	push	#0x20
	Smain$main$113 ==.
; genIPush
	push	#0x0a
	Smain$main$114 ==.
	push	#0x50
	Smain$main$115 ==.
; genCall
	call	_GPIO_WriteReverse
	addw	sp, #3
	Smain$main$116 ==.
	Smain$main$117 ==.
;	./src/main.c: 52: time = milis();
; genCall
	call	_milis
; genAssign
	ldw	(0x23, sp), x
	ldw	(0x21, sp), y
	Smain$main$118 ==.
; genLabel
00102$:
	Smain$main$119 ==.
;	./src/main.c: 56: present_value = TIM1_GetCounter();
; genCall
	call	_TIM1_GetCounter
; genCast
; genAssign
; genAssign
	ldw	(0x31, sp), x
	Smain$main$120 ==.
;	./src/main.c: 58: if(present_value != previous_value)
; genCmpEQorNE
	ldw	x, (0x31, sp)
	cpw	x, (0x25, sp)
	jrne	00127$
	jp	00104$
00127$:
	Smain$main$121 ==.
; skipping generated iCode
	Smain$main$122 ==.
	Smain$main$123 ==.
;	./src/main.c: 61: lcd_gotoxy(12, 0);
; genIPush
	push	#0x00
	Smain$main$124 ==.
; genIPush
	push	#0x0c
	Smain$main$125 ==.
; genCall
	call	_lcd_gotoxy
	popw	x
	Smain$main$126 ==.
	Smain$main$127 ==.
;	./src/main.c: 62: sprintf(text,"%1u ",present_value*4);
; genLeftShiftLiteral
	ldw	x, (0x31, sp)
	sllw	x
	sllw	x
	ldw	(0x2f, sp), x
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, (0x2f, sp)
	pushw	x
	Smain$main$128 ==.
; genIPush
	push	#<(___str_1+0)
	Smain$main$129 ==.
	push	#((___str_1+0) >> 8)
	Smain$main$130 ==.
; genIPush
	ldw	x, sp
	addw	x, #5
	pushw	x
	Smain$main$131 ==.
; genCall
	call	_sprintf
	addw	sp, #6
	Smain$main$132 ==.
	Smain$main$133 ==.
;	./src/main.c: 63: lcd_puts(text);
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	ldw	x, sp
	incw	x
	pushw	x
	Smain$main$134 ==.
; genCall
	call	_lcd_puts
	popw	x
	Smain$main$135 ==.
	Smain$main$136 ==.
;	./src/main.c: 64: perioda = present_value * 4;
; genCast
; genAssign
	ldw	y, (0x2f, sp)
	clrw	x
; genAssign
	ldw	(0x29, sp), y
	ldw	(0x27, sp), x
	Smain$main$137 ==.
; genLabel
00104$:
	Smain$main$138 ==.
;	./src/main.c: 66: previous_value = present_value;
; genAssign
	ldw	y, (0x31, sp)
	ldw	(0x25, sp), y
	Smain$main$139 ==.
; genGoto
	jp	00106$
; genLabel
00108$:
	Smain$main$140 ==.
;	./src/main.c: 69: }
; genEndFunction
	addw	sp, #50
	Smain$main$141 ==.
	Smain$main$142 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$143 ==.
	Smain$assert_failed$144 ==.
;	inc/__assert__.h: 13: void assert_failed(uint8_t* file, uint32_t line)
; genLabel
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_assert_failed:
	Smain$assert_failed$145 ==.
	Smain$assert_failed$146 ==.
;	inc/__assert__.h: 22: while (1)
; genLabel
00102$:
; genGoto
	jp	00102$
; genLabel
00104$:
	Smain$assert_failed$147 ==.
;	inc/__assert__.h: 25: }
; genEndFunction
	Smain$assert_failed$148 ==.
	XG$assert_failed$0$0 ==.
	ret
	Smain$assert_failed$149 ==.
	.area CODE
	.area CONST
Fmain$__str_0$0_0$0 == .
	.area CONST
___str_0:
	.ascii "perioda"
	.db 0x00
	.area CODE
Fmain$__str_1$0_0$0 == .
	.area CONST
___str_1:
	.ascii "%1u "
	.db 0x00
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
	.db	0
	.ascii "C:\Program Files\SDCC\bin\..\include"
	.db	0
	.db	0
	.ascii "inc/delay.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "./src/main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "inc/__assert__.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$_delay_cycl$0)
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$2-Smain$_delay_cycl$0
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$3-Smain$_delay_cycl$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$5-Smain$_delay_cycl$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$7-Smain$_delay_cycl$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$8-Smain$_delay_cycl$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$_delay_cycl$9-Smain$_delay_cycl$8
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	1+Smain$_delay_cycl$10-Smain$_delay_cycl$9
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$_delay_us$12)
	.db	3
	.sleb128	40
	.db	1
	.db	9
	.dw	Smain$_delay_us$35-Smain$_delay_us$12
	.db	3
	.sleb128	-15
	.db	1
	.db	9
	.dw	Smain$_delay_us$39-Smain$_delay_us$35
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Smain$_delay_us$40-Smain$_delay_us$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$_delay_us$41-Smain$_delay_us$40
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$encoder_init$43)
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Smain$encoder_init$45-Smain$encoder_init$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$encoder_init$51-Smain$encoder_init$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$encoder_init$57-Smain$encoder_init$51
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$encoder_init$58-Smain$encoder_init$57
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$encoder_init$66-Smain$encoder_init$58
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$encoder_init$71-Smain$encoder_init$66
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$encoder_init$74-Smain$encoder_init$71
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$encoder_init$75-Smain$encoder_init$74
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$setup$77)
	.db	3
	.sleb128	20
	.db	1
	.db	9
	.dw	Smain$setup$79-Smain$setup$77
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$82-Smain$setup$79
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$83-Smain$setup$82
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$84-Smain$setup$83
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$90-Smain$setup$84
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$setup$91-Smain$setup$90
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$setup$92-Smain$setup$91
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	2
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$94)
	.db	3
	.sleb128	33
	.db	1
	.db	9
	.dw	Smain$main$97-Smain$main$94
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$98-Smain$main$97
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$99-Smain$main$98
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$main$100-Smain$main$99
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$104-Smain$main$100
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$108-Smain$main$104
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$110-Smain$main$108
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$112-Smain$main$110
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$117-Smain$main$112
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$119-Smain$main$117
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$120-Smain$main$119
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$123-Smain$main$120
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$127-Smain$main$123
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$133-Smain$main$127
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$136-Smain$main$133
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$138-Smain$main$136
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$140-Smain$main$138
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$main$142-Smain$main$140
	.db	0
	.uleb128	1
	.db	1
	.db	4
	.uleb128	3
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$assert_failed$144)
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Smain$assert_failed$146-Smain$assert_failed$144
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Smain$assert_failed$147-Smain$assert_failed$146
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$assert_failed$148-Smain$assert_failed$147
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$assert_failed$145)
	.dw	0,(Smain$assert_failed$149)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$main$141)
	.dw	0,(Smain$main$143)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$135)
	.dw	0,(Smain$main$141)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$134)
	.dw	0,(Smain$main$135)
	.dw	2
	.db	120
	.sleb128	53
	.dw	0,(Smain$main$132)
	.dw	0,(Smain$main$134)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$131)
	.dw	0,(Smain$main$132)
	.dw	2
	.db	120
	.sleb128	57
	.dw	0,(Smain$main$130)
	.dw	0,(Smain$main$131)
	.dw	2
	.db	120
	.sleb128	55
	.dw	0,(Smain$main$129)
	.dw	0,(Smain$main$130)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$128)
	.dw	0,(Smain$main$129)
	.dw	2
	.db	120
	.sleb128	53
	.dw	0,(Smain$main$126)
	.dw	0,(Smain$main$128)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$125)
	.dw	0,(Smain$main$126)
	.dw	2
	.db	120
	.sleb128	53
	.dw	0,(Smain$main$124)
	.dw	0,(Smain$main$125)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$121)
	.dw	0,(Smain$main$124)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$116)
	.dw	0,(Smain$main$121)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$115)
	.dw	0,(Smain$main$116)
	.dw	2
	.db	120
	.sleb128	54
	.dw	0,(Smain$main$114)
	.dw	0,(Smain$main$115)
	.dw	2
	.db	120
	.sleb128	53
	.dw	0,(Smain$main$113)
	.dw	0,(Smain$main$114)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$107)
	.dw	0,(Smain$main$113)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$106)
	.dw	0,(Smain$main$107)
	.dw	2
	.db	120
	.sleb128	53
	.dw	0,(Smain$main$105)
	.dw	0,(Smain$main$106)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$103)
	.dw	0,(Smain$main$105)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$102)
	.dw	0,(Smain$main$103)
	.dw	2
	.db	120
	.sleb128	53
	.dw	0,(Smain$main$101)
	.dw	0,(Smain$main$102)
	.dw	2
	.db	120
	.sleb128	52
	.dw	0,(Smain$main$96)
	.dw	0,(Smain$main$101)
	.dw	2
	.db	120
	.sleb128	51
	.dw	0,(Smain$main$95)
	.dw	0,(Smain$main$96)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$setup$89)
	.dw	0,(Smain$setup$93)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$88)
	.dw	0,(Smain$setup$89)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$setup$87)
	.dw	0,(Smain$setup$88)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$setup$86)
	.dw	0,(Smain$setup$87)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$setup$85)
	.dw	0,(Smain$setup$86)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$81)
	.dw	0,(Smain$setup$85)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$setup$80)
	.dw	0,(Smain$setup$81)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$setup$78)
	.dw	0,(Smain$setup$80)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$encoder_init$73)
	.dw	0,(Smain$encoder_init$76)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$encoder_init$72)
	.dw	0,(Smain$encoder_init$73)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$encoder_init$70)
	.dw	0,(Smain$encoder_init$72)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$encoder_init$69)
	.dw	0,(Smain$encoder_init$70)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$encoder_init$68)
	.dw	0,(Smain$encoder_init$69)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$encoder_init$67)
	.dw	0,(Smain$encoder_init$68)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$encoder_init$65)
	.dw	0,(Smain$encoder_init$67)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$encoder_init$64)
	.dw	0,(Smain$encoder_init$65)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$encoder_init$63)
	.dw	0,(Smain$encoder_init$64)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$encoder_init$62)
	.dw	0,(Smain$encoder_init$63)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$encoder_init$61)
	.dw	0,(Smain$encoder_init$62)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$encoder_init$60)
	.dw	0,(Smain$encoder_init$61)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$encoder_init$59)
	.dw	0,(Smain$encoder_init$60)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$encoder_init$56)
	.dw	0,(Smain$encoder_init$59)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$encoder_init$55)
	.dw	0,(Smain$encoder_init$56)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$encoder_init$54)
	.dw	0,(Smain$encoder_init$55)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$encoder_init$53)
	.dw	0,(Smain$encoder_init$54)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$encoder_init$52)
	.dw	0,(Smain$encoder_init$53)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$encoder_init$50)
	.dw	0,(Smain$encoder_init$52)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$encoder_init$49)
	.dw	0,(Smain$encoder_init$50)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$encoder_init$48)
	.dw	0,(Smain$encoder_init$49)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$encoder_init$47)
	.dw	0,(Smain$encoder_init$48)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$encoder_init$46)
	.dw	0,(Smain$encoder_init$47)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$encoder_init$44)
	.dw	0,(Smain$encoder_init$46)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$_delay_us$29)
	.dw	0,(Smain$_delay_us$42)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$_delay_us$28)
	.dw	0,(Smain$_delay_us$29)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Smain$_delay_us$27)
	.dw	0,(Smain$_delay_us$28)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$_delay_us$26)
	.dw	0,(Smain$_delay_us$27)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$_delay_us$25)
	.dw	0,(Smain$_delay_us$26)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$_delay_us$24)
	.dw	0,(Smain$_delay_us$25)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$_delay_us$23)
	.dw	0,(Smain$_delay_us$24)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$_delay_us$21)
	.dw	0,(Smain$_delay_us$23)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$_delay_us$20)
	.dw	0,(Smain$_delay_us$21)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Smain$_delay_us$19)
	.dw	0,(Smain$_delay_us$20)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Smain$_delay_us$18)
	.dw	0,(Smain$_delay_us$19)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$_delay_us$17)
	.dw	0,(Smain$_delay_us$18)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$_delay_us$16)
	.dw	0,(Smain$_delay_us$17)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$_delay_us$15)
	.dw	0,(Smain$_delay_us$16)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$_delay_us$13)
	.dw	0,(Smain$_delay_us$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$_delay_cycl$1)
	.dw	0,(Smain$_delay_cycl$11)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	15
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	13
	.uleb128	1
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	38
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	14
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "./src/main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.dw	0,112
	.ascii "_delay_cycl"
	.db	0
	.dw	0,(__delay_cycl)
	.dw	0,(XFmain$_delay_cycl$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+904)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__ticks"
	.db	0
	.dw	0,112
	.uleb128	4
	.dw	0,(Smain$_delay_cycl$4)
	.dw	0,(Smain$_delay_cycl$6)
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	2
	.dw	0,263
	.ascii "_delay_us"
	.db	0
	.dw	0,(__delay_us)
	.dw	0,(XFmain$_delay_us$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start+716)
	.uleb128	6
	.dw	0,112
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "__us"
	.db	0
	.dw	0,156
	.uleb128	7
	.dw	0,(Smain$_delay_us$14)
	.dw	0,(Smain$_delay_us$31)
	.uleb128	8
	.dw	0,236
	.dw	0,(Smain$_delay_us$32)
	.uleb128	9
	.dw	0,215
	.dw	0,(Smain$_delay_us$33)
	.dw	0,(Smain$_delay_us$38)
	.uleb128	4
	.dw	0,(Smain$_delay_us$36)
	.dw	0,(Smain$_delay_us$37)
	.uleb128	0
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "__ticks"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	10
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "__1310720010"
	.db	0
	.dw	0,112
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.ascii "encoder_init"
	.db	0
	.dw	0,(_encoder_init)
	.dw	0,(XG$encoder_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+420)
	.uleb128	11
	.ascii "setup"
	.db	0
	.dw	0,(_setup)
	.dw	0,(XG$setup$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+316)
	.uleb128	5
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	12
	.dw	0,477
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,310
	.uleb128	9
	.dw	0,376
	.dw	0,(Smain$main$109)
	.dw	0,(Smain$main$139)
	.uleb128	4
	.dw	0,(Smain$main$111)
	.dw	0,(Smain$main$118)
	.uleb128	4
	.dw	0,(Smain$main$122)
	.dw	0,(Smain$main$137)
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-18
	.ascii "time"
	.db	0
	.dw	0,477
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-2
	.ascii "present_value"
	.db	0
	.dw	0,494
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-14
	.ascii "previous_value"
	.db	0
	.dw	0,494
	.uleb128	13
	.dw	0,447
	.db	32
	.dw	0,510
	.uleb128	14
	.db	31
	.uleb128	0
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-50
	.ascii "text"
	.db	0
	.dw	0,434
	.uleb128	10
	.db	2
	.db	145
	.sleb128	-12
	.ascii "perioda"
	.db	0
	.dw	0,477
	.uleb128	0
	.uleb128	5
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,592
	.ascii "assert_failed"
	.db	0
	.dw	0,(_assert_failed)
	.dw	0,(XG$assert_failed$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	15
	.db	2
	.dw	0,510
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "file"
	.db	0
	.dw	0,559
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "line"
	.db	0
	.dw	0,477
	.uleb128	0
	.uleb128	6
	.dw	0,510
	.uleb128	13
	.dw	0,610
	.db	8
	.dw	0,592
	.uleb128	14
	.db	7
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_0)
	.ascii "__str_0"
	.db	0
	.dw	0,597
	.uleb128	13
	.dw	0,642
	.db	5
	.dw	0,592
	.uleb128	14
	.db	4
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_1)
	.ascii "__str_1"
	.db	0
	.dw	0,629
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,263
	.ascii "encoder_init"
	.db	0
	.dw	0,290
	.ascii "setup"
	.db	0
	.dw	0,317
	.ascii "main"
	.db	0
	.dw	0,527
	.ascii "assert_failed"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$assert_failed$145)	;initial loc
	.dw	0,Smain$assert_failed$149-Smain$assert_failed$145
	.db	1
	.dw	0,(Smain$assert_failed$145)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,180
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$main$95)	;initial loc
	.dw	0,Smain$main$143-Smain$main$95
	.db	1
	.dw	0,(Smain$main$95)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$96)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$101)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$102)
	.db	14
	.uleb128	54
	.db	1
	.dw	0,(Smain$main$103)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$105)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$106)
	.db	14
	.uleb128	54
	.db	1
	.dw	0,(Smain$main$107)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$113)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$114)
	.db	14
	.uleb128	54
	.db	1
	.dw	0,(Smain$main$115)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$116)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$121)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$124)
	.db	14
	.uleb128	53
	.db	1
	.dw	0,(Smain$main$125)
	.db	14
	.uleb128	54
	.db	1
	.dw	0,(Smain$main$126)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$128)
	.db	14
	.uleb128	54
	.db	1
	.dw	0,(Smain$main$129)
	.db	14
	.uleb128	55
	.db	1
	.dw	0,(Smain$main$130)
	.db	14
	.uleb128	56
	.db	1
	.dw	0,(Smain$main$131)
	.db	14
	.uleb128	58
	.db	1
	.dw	0,(Smain$main$132)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$134)
	.db	14
	.uleb128	54
	.db	1
	.dw	0,(Smain$main$135)
	.db	14
	.uleb128	52
	.db	1
	.dw	0,(Smain$main$141)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,68
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Smain$setup$78)	;initial loc
	.dw	0,Smain$setup$93-Smain$setup$78
	.db	1
	.dw	0,(Smain$setup$78)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$80)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$81)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$setup$85)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$setup$86)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$setup$87)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$setup$88)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$setup$89)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE3_end:
	.dw	0,180
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Smain$encoder_init$44)	;initial loc
	.dw	0,Smain$encoder_init$76-Smain$encoder_init$44
	.db	1
	.dw	0,(Smain$encoder_init$44)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$encoder_init$46)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$encoder_init$47)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$encoder_init$48)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$encoder_init$49)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$encoder_init$50)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$encoder_init$52)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$encoder_init$53)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$encoder_init$54)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$encoder_init$55)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$encoder_init$56)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$encoder_init$59)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$encoder_init$60)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$encoder_init$61)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$encoder_init$62)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$encoder_init$63)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$encoder_init$64)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$encoder_init$65)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$encoder_init$67)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$encoder_init$68)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$encoder_init$69)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$encoder_init$70)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$encoder_init$72)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$encoder_init$73)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE4_end:
	.dw	0,117
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Smain$_delay_us$13)	;initial loc
	.dw	0,Smain$_delay_us$42-Smain$_delay_us$13
	.db	1
	.dw	0,(Smain$_delay_us$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$_delay_us$15)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$_delay_us$16)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$_delay_us$17)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$_delay_us$18)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$_delay_us$19)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$_delay_us$20)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$_delay_us$21)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$_delay_us$23)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$_delay_us$24)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$_delay_us$25)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$_delay_us$26)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$_delay_us$27)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$_delay_us$28)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$_delay_us$29)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE5_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Smain$_delay_cycl$1)	;initial loc
	.dw	0,Smain$_delay_cycl$11-Smain$_delay_cycl$1
	.db	1
	.dw	0,(Smain$_delay_cycl$1)
	.db	14
	.uleb128	2
