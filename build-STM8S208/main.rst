                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _setup
                                     13 	.globl _encoder_init
                                     14 	.globl _sprintf
                                     15 	.globl _lcd_puts
                                     16 	.globl _lcd_gotoxy
                                     17 	.globl _lcd_init
                                     18 	.globl _milis
                                     19 	.globl _init_milis
                                     20 	.globl _TIM1_GetCounter
                                     21 	.globl _TIM1_EncoderInterfaceConfig
                                     22 	.globl _TIM1_Cmd
                                     23 	.globl _TIM1_TimeBaseInit
                                     24 	.globl _TIM1_DeInit
                                     25 	.globl _GPIO_WriteReverse
                                     26 	.globl _GPIO_Init
                                     27 	.globl _CLK_HSIPrescalerConfig
                                     28 	.globl _assert_failed
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DATA
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area INITIALIZED
                                     37 ;--------------------------------------------------------
                                     38 ; Stack segment in internal ram 
                                     39 ;--------------------------------------------------------
                                     40 	.area	SSEG
      000005                         41 __start__stack:
      000005                         42 	.ds	1
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 
                                     49 ; default segment ordering for linker
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area CONST
                                     54 	.area INITIALIZER
                                     55 	.area CODE
                                     56 
                                     57 ;--------------------------------------------------------
                                     58 ; interrupt vector 
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
      008000                         61 __interrupt_vect:
      008000 82 00 80 6F             62 	int s_GSINIT ; reset
      008004 82 00 88 87             63 	int _TRAP_IRQHandler ; trap
      008008 82 00 88 88             64 	int _TLI_IRQHandler ; int0
      00800C 82 00 88 89             65 	int _AWU_IRQHandler ; int1
      008010 82 00 88 8A             66 	int _CLK_IRQHandler ; int2
      008014 82 00 88 8B             67 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 88 8C             68 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 88 8D             69 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 88 8E             70 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 88 8F             71 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 88 90             72 	int _CAN_RX_IRQHandler ; int8
      00802C 82 00 88 91             73 	int _CAN_TX_IRQHandler ; int9
      008030 82 00 88 92             74 	int _SPI_IRQHandler ; int10
      008034 82 00 88 93             75 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 88 94             76 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 88 95             77 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 88 96             78 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 88 97             79 	int _TIM3_UPD_OVF_BRK_IRQHandler ; int15
      008048 82 00 88 98             80 	int _TIM3_CAP_COM_IRQHandler ; int16
      00804C 82 00 88 99             81 	int _UART1_TX_IRQHandler ; int17
      008050 82 00 88 9A             82 	int _UART1_RX_IRQHandler ; int18
      008054 82 00 88 9B             83 	int _I2C_IRQHandler ; int19
      008058 82 00 88 9C             84 	int _UART3_TX_IRQHandler ; int20
      00805C 82 00 88 9D             85 	int _UART3_RX_IRQHandler ; int21
      008060 82 00 88 9E             86 	int _ADC2_IRQHandler ; int22
      008064 82 00 82 E5             87 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 88 9F             88 	int _EEPROM_EEC_IRQHandler ; int24
                                     89 ;--------------------------------------------------------
                                     90 ; global & static initialisations
                                     91 ;--------------------------------------------------------
                                     92 	.area HOME
                                     93 	.area GSINIT
                                     94 	.area GSFINAL
                                     95 	.area GSINIT
      00806F                         96 __sdcc_init_data:
                                     97 ; stm8_genXINIT() start
      00806F AE 00 00         [ 2]   98 	ldw x, #l_DATA
      008072 27 07            [ 1]   99 	jreq	00002$
      008074                        100 00001$:
      008074 72 4F 00 00      [ 1]  101 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  102 	decw x
      008079 26 F9            [ 1]  103 	jrne	00001$
      00807B                        104 00002$:
      00807B AE 00 04         [ 2]  105 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  106 	jreq	00004$
      008080                        107 00003$:
      008080 D6 81 3D         [ 1]  108 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 00 00         [ 1]  109 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  110 	decw	x
      008087 26 F7            [ 1]  111 	jrne	00003$
      008089                        112 00004$:
                                    113 ; stm8_genXINIT() end
                                    114 	.area GSFINAL
      008089 CC 80 6C         [ 2]  115 	jp	__sdcc_program_startup
                                    116 ;--------------------------------------------------------
                                    117 ; Home
                                    118 ;--------------------------------------------------------
                                    119 	.area HOME
                                    120 	.area HOME
      00806C                        121 __sdcc_program_startup:
      00806C CC 81 E4         [ 2]  122 	jp	_main
                                    123 ;	return from main will return to caller
                                    124 ;--------------------------------------------------------
                                    125 ; code
                                    126 ;--------------------------------------------------------
                                    127 	.area CODE
                           000000   128 	Smain$_delay_cycl$0 ==.
                                    129 ;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
                                    130 ; genLabel
                                    131 ;	-----------------------------------------
                                    132 ;	 function _delay_cycl
                                    133 ;	-----------------------------------------
                                    134 ;	Register assignment is optimal.
                                    135 ;	Stack space usage: 0 bytes.
      008142                        136 __delay_cycl:
                           000000   137 	Smain$_delay_cycl$1 ==.
                           000000   138 	Smain$_delay_cycl$2 ==.
                                    139 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    140 ;	genInline
      008142 9D               [ 1]  141 	nop
      008143 9D               [ 1]  142 	nop
                           000002   143 	Smain$_delay_cycl$3 ==.
                                    144 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    145 ; genAssign
      008144 1E 03            [ 2]  146 	ldw	x, (0x03, sp)
                                    147 ; genLabel
      008146                        148 00101$:
                           000004   149 	Smain$_delay_cycl$4 ==.
                           000004   150 	Smain$_delay_cycl$5 ==.
                                    151 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    152 ; genMinus
      008146 5A               [ 2]  153 	decw	x
                           000005   154 	Smain$_delay_cycl$6 ==.
                           000005   155 	Smain$_delay_cycl$7 ==.
                                    156 ;	inc/delay.h: 28: } while ( __ticks );
                                    157 ; genIfx
      008147 5D               [ 2]  158 	tnzw	x
      008148 27 03            [ 1]  159 	jreq	00117$
      00814A CC 81 46         [ 2]  160 	jp	00101$
      00814D                        161 00117$:
                           00000B   162 	Smain$_delay_cycl$8 ==.
                                    163 ;	inc/delay.h: 29: __asm__("nop\n");
                                    164 ;	genInline
      00814D 9D               [ 1]  165 	nop
                                    166 ; genLabel
      00814E                        167 00104$:
                           00000C   168 	Smain$_delay_cycl$9 ==.
                                    169 ;	inc/delay.h: 39: }
                                    170 ; genEndFunction
                           00000C   171 	Smain$_delay_cycl$10 ==.
                           00000C   172 	XFmain$_delay_cycl$0$0 ==.
      00814E 81               [ 4]  173 	ret
                           00000D   174 	Smain$_delay_cycl$11 ==.
                           00000D   175 	Smain$_delay_us$12 ==.
                                    176 ;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
                                    177 ; genLabel
                                    178 ;	-----------------------------------------
                                    179 ;	 function _delay_us
                                    180 ;	-----------------------------------------
                                    181 ;	Register assignment might be sub-optimal.
                                    182 ;	Stack space usage: 0 bytes.
      00814F                        183 __delay_us:
                           00000D   184 	Smain$_delay_us$13 ==.
                           00000D   185 	Smain$_delay_us$14 ==.
                                    186 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    187 ; genCast
                                    188 ; genAssign
      00814F 16 03            [ 2]  189 	ldw	y, (0x03, sp)
      008151 5F               [ 1]  190 	clrw	x
                                    191 ; genIPush
      008152 90 89            [ 2]  192 	pushw	y
                           000012   193 	Smain$_delay_us$15 ==.
      008154 89               [ 2]  194 	pushw	x
                           000013   195 	Smain$_delay_us$16 ==.
                                    196 ; genIPush
      008155 4B 00            [ 1]  197 	push	#0x00
                           000015   198 	Smain$_delay_us$17 ==.
      008157 4B 24            [ 1]  199 	push	#0x24
                           000017   200 	Smain$_delay_us$18 ==.
      008159 4B F4            [ 1]  201 	push	#0xf4
                           000019   202 	Smain$_delay_us$19 ==.
      00815B 4B 00            [ 1]  203 	push	#0x00
                           00001B   204 	Smain$_delay_us$20 ==.
                                    205 ; genCall
      00815D CD BA F8         [ 4]  206 	call	__mullong
      008160 5B 08            [ 2]  207 	addw	sp, #8
                           000020   208 	Smain$_delay_us$21 ==.
                           000020   209 	Smain$_delay_us$22 ==.
                                    210 ; genCast
                                    211 ; genAssign
                                    212 ; genIPush
      008162 4B 40            [ 1]  213 	push	#0x40
                           000022   214 	Smain$_delay_us$23 ==.
      008164 4B 42            [ 1]  215 	push	#0x42
                           000024   216 	Smain$_delay_us$24 ==.
      008166 4B 0F            [ 1]  217 	push	#0x0f
                           000026   218 	Smain$_delay_us$25 ==.
      008168 4B 00            [ 1]  219 	push	#0x00
                           000028   220 	Smain$_delay_us$26 ==.
                                    221 ; genIPush
      00816A 89               [ 2]  222 	pushw	x
                           000029   223 	Smain$_delay_us$27 ==.
      00816B 90 89            [ 2]  224 	pushw	y
                           00002B   225 	Smain$_delay_us$28 ==.
                                    226 ; genCall
      00816D CD BA 9E         [ 4]  227 	call	__divulong
      008170 5B 08            [ 2]  228 	addw	sp, #8
                           000030   229 	Smain$_delay_us$29 ==.
                           000030   230 	Smain$_delay_us$30 ==.
                                    231 ; genRightShiftLiteral
      008172 90 54            [ 2]  232 	srlw	y
      008174 56               [ 2]  233 	rrcw	x
      008175 90 54            [ 2]  234 	srlw	y
      008177 56               [ 2]  235 	rrcw	x
      008178 90 54            [ 2]  236 	srlw	y
      00817A 56               [ 2]  237 	rrcw	x
                                    238 ; genCast
                                    239 ; genAssign
                           000039   240 	Smain$_delay_us$31 ==.
                                    241 ; genPlus
      00817B 5C               [ 1]  242 	incw	x
                                    243 ; genAssign
                                    244 ; genAssign
                           00003A   245 	Smain$_delay_us$32 ==.
                                    246 ; genAssign
                           00003A   247 	Smain$_delay_us$33 ==.
                                    248 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    249 ;	genInline
      00817C 9D               [ 1]  250 	nop
      00817D 9D               [ 1]  251 	nop
                           00003C   252 	Smain$_delay_us$34 ==.
                           00003C   253 	Smain$_delay_us$35 ==.
                                    254 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    255 ; genAssign
                                    256 ; genLabel
      00817E                        257 00101$:
                           00003C   258 	Smain$_delay_us$36 ==.
                                    259 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    260 ; genMinus
      00817E 5A               [ 2]  261 	decw	x
                           00003D   262 	Smain$_delay_us$37 ==.
                                    263 ;	inc/delay.h: 28: } while ( __ticks );
                                    264 ; genIfx
      00817F 5D               [ 2]  265 	tnzw	x
      008180 27 03            [ 1]  266 	jreq	00118$
      008182 CC 81 7E         [ 2]  267 	jp	00101$
      008185                        268 00118$:
                                    269 ;	inc/delay.h: 29: __asm__("nop\n");
                                    270 ;	genInline
      008185 9D               [ 1]  271 	nop
                           000044   272 	Smain$_delay_us$38 ==.
                           000044   273 	Smain$_delay_us$39 ==.
                                    274 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    275 ; genLabel
      008186                        276 00105$:
                           000044   277 	Smain$_delay_us$40 ==.
                                    278 ;	inc/delay.h: 43: }
                                    279 ; genEndFunction
                           000044   280 	Smain$_delay_us$41 ==.
                           000044   281 	XFmain$_delay_us$0$0 ==.
      008186 81               [ 4]  282 	ret
                           000045   283 	Smain$_delay_us$42 ==.
                           000045   284 	Smain$encoder_init$43 ==.
                                    285 ;	./src/main.c: 11: void encoder_init(void){
                                    286 ; genLabel
                                    287 ;	-----------------------------------------
                                    288 ;	 function encoder_init
                                    289 ;	-----------------------------------------
                                    290 ;	Register assignment is optimal.
                                    291 ;	Stack space usage: 0 bytes.
      008187                        292 _encoder_init:
                           000045   293 	Smain$encoder_init$44 ==.
                           000045   294 	Smain$encoder_init$45 ==.
                                    295 ;	./src/main.c: 12: GPIO_Init(GPIOC, GPIO_PIN_1,GPIO_MODE_IN_PU_NO_IT);
                                    296 ; genIPush
      008187 4B 40            [ 1]  297 	push	#0x40
                           000047   298 	Smain$encoder_init$46 ==.
                                    299 ; genIPush
      008189 4B 02            [ 1]  300 	push	#0x02
                           000049   301 	Smain$encoder_init$47 ==.
                                    302 ; genIPush
      00818B 4B 0A            [ 1]  303 	push	#0x0a
                           00004B   304 	Smain$encoder_init$48 ==.
      00818D 4B 50            [ 1]  305 	push	#0x50
                           00004D   306 	Smain$encoder_init$49 ==.
                                    307 ; genCall
      00818F CD 89 46         [ 4]  308 	call	_GPIO_Init
      008192 5B 04            [ 2]  309 	addw	sp, #4
                           000052   310 	Smain$encoder_init$50 ==.
                           000052   311 	Smain$encoder_init$51 ==.
                                    312 ;	./src/main.c: 13: GPIO_Init(GPIOC, GPIO_PIN_2,GPIO_MODE_IN_PU_NO_IT);
                                    313 ; genIPush
      008194 4B 40            [ 1]  314 	push	#0x40
                           000054   315 	Smain$encoder_init$52 ==.
                                    316 ; genIPush
      008196 4B 04            [ 1]  317 	push	#0x04
                           000056   318 	Smain$encoder_init$53 ==.
                                    319 ; genIPush
      008198 4B 0A            [ 1]  320 	push	#0x0a
                           000058   321 	Smain$encoder_init$54 ==.
      00819A 4B 50            [ 1]  322 	push	#0x50
                           00005A   323 	Smain$encoder_init$55 ==.
                                    324 ; genCall
      00819C CD 89 46         [ 4]  325 	call	_GPIO_Init
      00819F 5B 04            [ 2]  326 	addw	sp, #4
                           00005F   327 	Smain$encoder_init$56 ==.
                           00005F   328 	Smain$encoder_init$57 ==.
                                    329 ;	./src/main.c: 15: TIM1_DeInit();
                                    330 ; genCall
      0081A1 CD A0 0F         [ 4]  331 	call	_TIM1_DeInit
                           000062   332 	Smain$encoder_init$58 ==.
                                    333 ;	./src/main.c: 16: TIM1_TimeBaseInit(16, TIM1_COUNTERMODE_UP, 500, 16); //inicializace enkoderu
                                    334 ; genIPush
      0081A4 4B 10            [ 1]  335 	push	#0x10
                           000064   336 	Smain$encoder_init$59 ==.
                                    337 ; genIPush
      0081A6 4B F4            [ 1]  338 	push	#0xf4
                           000066   339 	Smain$encoder_init$60 ==.
      0081A8 4B 01            [ 1]  340 	push	#0x01
                           000068   341 	Smain$encoder_init$61 ==.
                                    342 ; genIPush
      0081AA 4B 00            [ 1]  343 	push	#0x00
                           00006A   344 	Smain$encoder_init$62 ==.
                                    345 ; genIPush
      0081AC 4B 10            [ 1]  346 	push	#0x10
                           00006C   347 	Smain$encoder_init$63 ==.
      0081AE 4B 00            [ 1]  348 	push	#0x00
                           00006E   349 	Smain$encoder_init$64 ==.
                                    350 ; genCall
      0081B0 CD A0 A8         [ 4]  351 	call	_TIM1_TimeBaseInit
      0081B3 5B 06            [ 2]  352 	addw	sp, #6
                           000073   353 	Smain$encoder_init$65 ==.
                           000073   354 	Smain$encoder_init$66 ==.
                                    355 ;	./src/main.c: 17: TIM1_EncoderInterfaceConfig(TIM1_ENCODERMODE_TI12,TIM1_ICPOLARITY_FALLING,TIM1_ICPOLARITY_FALLING);
                                    356 ; genIPush
      0081B5 4B 01            [ 1]  357 	push	#0x01
                           000075   358 	Smain$encoder_init$67 ==.
                                    359 ; genIPush
      0081B7 4B 01            [ 1]  360 	push	#0x01
                           000077   361 	Smain$encoder_init$68 ==.
                                    362 ; genIPush
      0081B9 4B 03            [ 1]  363 	push	#0x03
                           000079   364 	Smain$encoder_init$69 ==.
                                    365 ; genCall
      0081BB CD AD C4         [ 4]  366 	call	_TIM1_EncoderInterfaceConfig
      0081BE 5B 03            [ 2]  367 	addw	sp, #3
                           00007E   368 	Smain$encoder_init$70 ==.
                           00007E   369 	Smain$encoder_init$71 ==.
                                    370 ;	./src/main.c: 18: TIM1_Cmd(ENABLE);
                                    371 ; genIPush
      0081C0 4B 01            [ 1]  372 	push	#0x01
                           000080   373 	Smain$encoder_init$72 ==.
                                    374 ; genCall
      0081C2 CD A9 6A         [ 4]  375 	call	_TIM1_Cmd
      0081C5 84               [ 1]  376 	pop	a
                           000084   377 	Smain$encoder_init$73 ==.
                                    378 ; genLabel
      0081C6                        379 00101$:
                           000084   380 	Smain$encoder_init$74 ==.
                                    381 ;	./src/main.c: 19: }
                                    382 ; genEndFunction
                           000084   383 	Smain$encoder_init$75 ==.
                           000084   384 	XG$encoder_init$0$0 ==.
      0081C6 81               [ 4]  385 	ret
                           000085   386 	Smain$encoder_init$76 ==.
                           000085   387 	Smain$setup$77 ==.
                                    388 ;	./src/main.c: 21: void setup(void)
                                    389 ; genLabel
                                    390 ;	-----------------------------------------
                                    391 ;	 function setup
                                    392 ;	-----------------------------------------
                                    393 ;	Register assignment is optimal.
                                    394 ;	Stack space usage: 0 bytes.
      0081C7                        395 _setup:
                           000085   396 	Smain$setup$78 ==.
                           000085   397 	Smain$setup$79 ==.
                                    398 ;	./src/main.c: 23: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
                                    399 ; genIPush
      0081C7 4B 00            [ 1]  400 	push	#0x00
                           000087   401 	Smain$setup$80 ==.
                                    402 ; genCall
      0081C9 CD 8F 42         [ 4]  403 	call	_CLK_HSIPrescalerConfig
      0081CC 84               [ 1]  404 	pop	a
                           00008B   405 	Smain$setup$81 ==.
                           00008B   406 	Smain$setup$82 ==.
                                    407 ;	./src/main.c: 25: lcd_init(); //inicializace LCD
                                    408 ; genCall
      0081CD CD 84 34         [ 4]  409 	call	_lcd_init
                           00008E   410 	Smain$setup$83 ==.
                                    411 ;	./src/main.c: 26: init_milis(); //inicializace mmilisu
                                    412 ; genCall
      0081D0 CD 82 BF         [ 4]  413 	call	_init_milis
                           000091   414 	Smain$setup$84 ==.
                                    415 ;	./src/main.c: 28: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_SLOW); // nastav??me PC5 jako v??stup typu push-pull (LEDka)
                                    416 ; genIPush
      0081D3 4B C0            [ 1]  417 	push	#0xc0
                           000093   418 	Smain$setup$85 ==.
                                    419 ; genIPush
      0081D5 4B 20            [ 1]  420 	push	#0x20
                           000095   421 	Smain$setup$86 ==.
                                    422 ; genIPush
      0081D7 4B 0A            [ 1]  423 	push	#0x0a
                           000097   424 	Smain$setup$87 ==.
      0081D9 4B 50            [ 1]  425 	push	#0x50
                           000099   426 	Smain$setup$88 ==.
                                    427 ; genCall
      0081DB CD 89 46         [ 4]  428 	call	_GPIO_Init
      0081DE 5B 04            [ 2]  429 	addw	sp, #4
                           00009E   430 	Smain$setup$89 ==.
                           00009E   431 	Smain$setup$90 ==.
                                    432 ;	./src/main.c: 30: encoder_init();
                                    433 ; genCall
      0081E0 CC 81 87         [ 2]  434 	jp	_encoder_init
                                    435 ; genLabel
      0081E3                        436 00101$:
                           0000A1   437 	Smain$setup$91 ==.
                                    438 ;	./src/main.c: 32: }
                                    439 ; genEndFunction
                           0000A1   440 	Smain$setup$92 ==.
                           0000A1   441 	XG$setup$0$0 ==.
      0081E3 81               [ 4]  442 	ret
                           0000A2   443 	Smain$setup$93 ==.
                           0000A2   444 	Smain$main$94 ==.
                                    445 ;	./src/main.c: 34: int main(void)
                                    446 ; genLabel
                                    447 ;	-----------------------------------------
                                    448 ;	 function main
                                    449 ;	-----------------------------------------
                                    450 ;	Register assignment might be sub-optimal.
                                    451 ;	Stack space usage: 50 bytes.
      0081E4                        452 _main:
                           0000A2   453 	Smain$main$95 ==.
      0081E4 52 32            [ 2]  454 	sub	sp, #50
                           0000A4   455 	Smain$main$96 ==.
                           0000A4   456 	Smain$main$97 ==.
                                    457 ;	./src/main.c: 36: uint32_t time = milis(); //inicializace prom??nn??ch
                                    458 ; genCall
      0081E6 CD 82 9D         [ 4]  459 	call	_milis
                                    460 ; genAssign
      0081E9 1F 23            [ 2]  461 	ldw	(0x23, sp), x
      0081EB 17 21            [ 2]  462 	ldw	(0x21, sp), y
                           0000AB   463 	Smain$main$98 ==.
                                    464 ;	./src/main.c: 39: unsigned int previous_value = 0x0001;
                                    465 ; genAssign
      0081ED AE 00 01         [ 2]  466 	ldw	x, #0x0001
      0081F0 1F 25            [ 2]  467 	ldw	(0x25, sp), x
                           0000B0   468 	Smain$main$99 ==.
                                    469 ;	./src/main.c: 45: setup();
                                    470 ; genCall
      0081F2 CD 81 C7         [ 4]  471 	call	_setup
                           0000B3   472 	Smain$main$100 ==.
                                    473 ;	./src/main.c: 47: lcd_gotoxy(0,0);
                                    474 ; genIPush
      0081F5 4B 00            [ 1]  475 	push	#0x00
                           0000B5   476 	Smain$main$101 ==.
                                    477 ; genIPush
      0081F7 4B 00            [ 1]  478 	push	#0x00
                           0000B7   479 	Smain$main$102 ==.
                                    480 ; genCall
      0081F9 CD 84 B7         [ 4]  481 	call	_lcd_gotoxy
      0081FC 85               [ 2]  482 	popw	x
                           0000BB   483 	Smain$main$103 ==.
                           0000BB   484 	Smain$main$104 ==.
                                    485 ;	./src/main.c: 48: lcd_puts("perioda");
                                    486 ; skipping iCode since result will be rematerialized
                                    487 ; skipping iCode since result will be rematerialized
                                    488 ; genIPush
      0081FD 4B 8C            [ 1]  489 	push	#<(___str_0+0)
                           0000BD   490 	Smain$main$105 ==.
      0081FF 4B 80            [ 1]  491 	push	#((___str_0+0) >> 8)
                           0000BF   492 	Smain$main$106 ==.
                                    493 ; genCall
      008201 CD 84 1F         [ 4]  494 	call	_lcd_puts
      008204 85               [ 2]  495 	popw	x
                           0000C3   496 	Smain$main$107 ==.
                           0000C3   497 	Smain$main$108 ==.
                                    498 ;	./src/main.c: 49: while (1) {
                                    499 ; genAssign
      008205 5F               [ 1]  500 	clrw	x
      008206 1F 29            [ 2]  501 	ldw	(0x29, sp), x
      008208 1F 27            [ 2]  502 	ldw	(0x27, sp), x
                                    503 ; genLabel
      00820A                        504 00106$:
                           0000C8   505 	Smain$main$109 ==.
                           0000C8   506 	Smain$main$110 ==.
                                    507 ;	./src/main.c: 50: if(milis() - time > perioda/2){
                                    508 ; genCall
      00820A CD 82 9D         [ 4]  509 	call	_milis
      00820D 1F 31            [ 2]  510 	ldw	(0x31, sp), x
      00820F 17 2F            [ 2]  511 	ldw	(0x2f, sp), y
                                    512 ; genMinus
      008211 1E 31            [ 2]  513 	ldw	x, (0x31, sp)
      008213 72 F0 23         [ 2]  514 	subw	x, (0x23, sp)
      008216 1F 2D            [ 2]  515 	ldw	(0x2d, sp), x
      008218 7B 30            [ 1]  516 	ld	a, (0x30, sp)
      00821A 12 22            [ 1]  517 	sbc	a, (0x22, sp)
      00821C 6B 2C            [ 1]  518 	ld	(0x2c, sp), a
      00821E 7B 2F            [ 1]  519 	ld	a, (0x2f, sp)
      008220 12 21            [ 1]  520 	sbc	a, (0x21, sp)
      008222 6B 2B            [ 1]  521 	ld	(0x2b, sp), a
                                    522 ; genRightShiftLiteral
      008224 16 27            [ 2]  523 	ldw	y, (0x27, sp)
      008226 17 2F            [ 2]  524 	ldw	(0x2f, sp), y
      008228 1E 29            [ 2]  525 	ldw	x, (0x29, sp)
      00822A 04 2F            [ 1]  526 	srl	(0x2f, sp)
      00822C 06 30            [ 1]  527 	rrc	(0x30, sp)
      00822E 56               [ 2]  528 	rrcw	x
      00822F 1F 31            [ 2]  529 	ldw	(0x31, sp), x
                                    530 ; genCmp
                                    531 ; genCmpTop
      008231 1E 31            [ 2]  532 	ldw	x, (0x31, sp)
      008233 13 2D            [ 2]  533 	cpw	x, (0x2d, sp)
      008235 7B 30            [ 1]  534 	ld	a, (0x30, sp)
      008237 12 2C            [ 1]  535 	sbc	a, (0x2c, sp)
      008239 7B 2F            [ 1]  536 	ld	a, (0x2f, sp)
      00823B 12 2B            [ 1]  537 	sbc	a, (0x2b, sp)
      00823D 25 03            [ 1]  538 	jrc	00125$
      00823F CC 82 54         [ 2]  539 	jp	00102$
      008242                        540 00125$:
                                    541 ; skipping generated iCode
                           000100   542 	Smain$main$111 ==.
                           000100   543 	Smain$main$112 ==.
                                    544 ;	./src/main.c: 51: GPIO_WriteReverse(GPIOC,GPIO_PIN_5);
                                    545 ; genIPush
      008242 4B 20            [ 1]  546 	push	#0x20
                           000102   547 	Smain$main$113 ==.
                                    548 ; genIPush
      008244 4B 0A            [ 1]  549 	push	#0x0a
                           000104   550 	Smain$main$114 ==.
      008246 4B 50            [ 1]  551 	push	#0x50
                           000106   552 	Smain$main$115 ==.
                                    553 ; genCall
      008248 CD 8A 77         [ 4]  554 	call	_GPIO_WriteReverse
      00824B 5B 03            [ 2]  555 	addw	sp, #3
                           00010B   556 	Smain$main$116 ==.
                           00010B   557 	Smain$main$117 ==.
                                    558 ;	./src/main.c: 52: time = milis();
                                    559 ; genCall
      00824D CD 82 9D         [ 4]  560 	call	_milis
                                    561 ; genAssign
      008250 1F 23            [ 2]  562 	ldw	(0x23, sp), x
      008252 17 21            [ 2]  563 	ldw	(0x21, sp), y
                           000112   564 	Smain$main$118 ==.
                                    565 ; genLabel
      008254                        566 00102$:
                           000112   567 	Smain$main$119 ==.
                                    568 ;	./src/main.c: 56: present_value = TIM1_GetCounter();
                                    569 ; genCall
      008254 CD B7 CC         [ 4]  570 	call	_TIM1_GetCounter
                                    571 ; genCast
                                    572 ; genAssign
                                    573 ; genAssign
      008257 1F 31            [ 2]  574 	ldw	(0x31, sp), x
                           000117   575 	Smain$main$120 ==.
                                    576 ;	./src/main.c: 58: if(present_value != previous_value)
                                    577 ; genCmpEQorNE
      008259 1E 31            [ 2]  578 	ldw	x, (0x31, sp)
      00825B 13 25            [ 2]  579 	cpw	x, (0x25, sp)
      00825D 26 03            [ 1]  580 	jrne	00127$
      00825F CC 82 8F         [ 2]  581 	jp	00104$
      008262                        582 00127$:
                           000120   583 	Smain$main$121 ==.
                                    584 ; skipping generated iCode
                           000120   585 	Smain$main$122 ==.
                           000120   586 	Smain$main$123 ==.
                                    587 ;	./src/main.c: 61: lcd_gotoxy(12, 0);
                                    588 ; genIPush
      008262 4B 00            [ 1]  589 	push	#0x00
                           000122   590 	Smain$main$124 ==.
                                    591 ; genIPush
      008264 4B 0C            [ 1]  592 	push	#0x0c
                           000124   593 	Smain$main$125 ==.
                                    594 ; genCall
      008266 CD 84 B7         [ 4]  595 	call	_lcd_gotoxy
      008269 85               [ 2]  596 	popw	x
                           000128   597 	Smain$main$126 ==.
                           000128   598 	Smain$main$127 ==.
                                    599 ;	./src/main.c: 62: sprintf(text,"%1u ",present_value*4);
                                    600 ; genLeftShiftLiteral
      00826A 1E 31            [ 2]  601 	ldw	x, (0x31, sp)
      00826C 58               [ 2]  602 	sllw	x
      00826D 58               [ 2]  603 	sllw	x
      00826E 1F 2F            [ 2]  604 	ldw	(0x2f, sp), x
                                    605 ; skipping iCode since result will be rematerialized
                                    606 ; skipping iCode since result will be rematerialized
                                    607 ; skipping iCode since result will be rematerialized
                                    608 ; skipping iCode since result will be rematerialized
                                    609 ; genIPush
      008270 1E 2F            [ 2]  610 	ldw	x, (0x2f, sp)
      008272 89               [ 2]  611 	pushw	x
                           000131   612 	Smain$main$128 ==.
                                    613 ; genIPush
      008273 4B 94            [ 1]  614 	push	#<(___str_1+0)
                           000133   615 	Smain$main$129 ==.
      008275 4B 80            [ 1]  616 	push	#((___str_1+0) >> 8)
                           000135   617 	Smain$main$130 ==.
                                    618 ; genIPush
      008277 96               [ 1]  619 	ldw	x, sp
      008278 1C 00 05         [ 2]  620 	addw	x, #5
      00827B 89               [ 2]  621 	pushw	x
                           00013A   622 	Smain$main$131 ==.
                                    623 ; genCall
      00827C CD BA 83         [ 4]  624 	call	_sprintf
      00827F 5B 06            [ 2]  625 	addw	sp, #6
                           00013F   626 	Smain$main$132 ==.
                           00013F   627 	Smain$main$133 ==.
                                    628 ;	./src/main.c: 63: lcd_puts(text);
                                    629 ; skipping iCode since result will be rematerialized
                                    630 ; skipping iCode since result will be rematerialized
                                    631 ; genIPush
      008281 96               [ 1]  632 	ldw	x, sp
      008282 5C               [ 1]  633 	incw	x
      008283 89               [ 2]  634 	pushw	x
                           000142   635 	Smain$main$134 ==.
                                    636 ; genCall
      008284 CD 84 1F         [ 4]  637 	call	_lcd_puts
      008287 85               [ 2]  638 	popw	x
                           000146   639 	Smain$main$135 ==.
                           000146   640 	Smain$main$136 ==.
                                    641 ;	./src/main.c: 64: perioda = present_value * 4;
                                    642 ; genCast
                                    643 ; genAssign
      008288 16 2F            [ 2]  644 	ldw	y, (0x2f, sp)
      00828A 5F               [ 1]  645 	clrw	x
                                    646 ; genAssign
      00828B 17 29            [ 2]  647 	ldw	(0x29, sp), y
      00828D 1F 27            [ 2]  648 	ldw	(0x27, sp), x
                           00014D   649 	Smain$main$137 ==.
                                    650 ; genLabel
      00828F                        651 00104$:
                           00014D   652 	Smain$main$138 ==.
                                    653 ;	./src/main.c: 66: previous_value = present_value;
                                    654 ; genAssign
      00828F 16 31            [ 2]  655 	ldw	y, (0x31, sp)
      008291 17 25            [ 2]  656 	ldw	(0x25, sp), y
                           000151   657 	Smain$main$139 ==.
                                    658 ; genGoto
      008293 CC 82 0A         [ 2]  659 	jp	00106$
                                    660 ; genLabel
      008296                        661 00108$:
                           000154   662 	Smain$main$140 ==.
                                    663 ;	./src/main.c: 69: }
                                    664 ; genEndFunction
      008296 5B 32            [ 2]  665 	addw	sp, #50
                           000156   666 	Smain$main$141 ==.
                           000156   667 	Smain$main$142 ==.
                           000156   668 	XG$main$0$0 ==.
      008298 81               [ 4]  669 	ret
                           000157   670 	Smain$main$143 ==.
                           000157   671 	Smain$assert_failed$144 ==.
                                    672 ;	inc/__assert__.h: 13: void assert_failed(uint8_t* file, uint32_t line)
                                    673 ; genLabel
                                    674 ;	-----------------------------------------
                                    675 ;	 function assert_failed
                                    676 ;	-----------------------------------------
                                    677 ;	Register assignment is optimal.
                                    678 ;	Stack space usage: 0 bytes.
      008299                        679 _assert_failed:
                           000157   680 	Smain$assert_failed$145 ==.
                           000157   681 	Smain$assert_failed$146 ==.
                                    682 ;	inc/__assert__.h: 22: while (1)
                                    683 ; genLabel
      008299                        684 00102$:
                                    685 ; genGoto
      008299 CC 82 99         [ 2]  686 	jp	00102$
                                    687 ; genLabel
      00829C                        688 00104$:
                           00015A   689 	Smain$assert_failed$147 ==.
                                    690 ;	inc/__assert__.h: 25: }
                                    691 ; genEndFunction
                           00015A   692 	Smain$assert_failed$148 ==.
                           00015A   693 	XG$assert_failed$0$0 ==.
      00829C 81               [ 4]  694 	ret
                           00015B   695 	Smain$assert_failed$149 ==.
                                    696 	.area CODE
                                    697 	.area CONST
                           000000   698 Fmain$__str_0$0_0$0 == .
                                    699 	.area CONST
      00808C                        700 ___str_0:
      00808C 70 65 72 69 6F 64 61   701 	.ascii "perioda"
      008093 00                     702 	.db 0x00
                                    703 	.area CODE
                           00015B   704 Fmain$__str_1$0_0$0 == .
                                    705 	.area CONST
      008094                        706 ___str_1:
      008094 25 31 75 20            707 	.ascii "%1u "
      008098 00                     708 	.db 0x00
                                    709 	.area CODE
                                    710 	.area INITIALIZER
                                    711 	.area CABS (ABS)
                                    712 
                                    713 	.area .debug_line (NOLOAD)
      000000 00 00 01 F4            714 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000004                        715 Ldebug_line_start:
      000004 00 02                  716 	.dw	2
      000006 00 00 00 90            717 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00000A 01                     718 	.db	1
      00000B 01                     719 	.db	1
      00000C FB                     720 	.db	-5
      00000D 0F                     721 	.db	15
      00000E 0A                     722 	.db	10
      00000F 00                     723 	.db	0
      000010 01                     724 	.db	1
      000011 01                     725 	.db	1
      000012 01                     726 	.db	1
      000013 01                     727 	.db	1
      000014 00                     728 	.db	0
      000015 00                     729 	.db	0
      000016 00                     730 	.db	0
      000017 01                     731 	.db	1
      000018 43 3A 5C 50 72 6F 67   732 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000040 00                     733 	.db	0
      000041 43 3A 5C 50 72 6F 67   734 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000064 00                     735 	.db	0
      000065 00                     736 	.db	0
      000066 69 6E 63 2F 64 65 6C   737 	.ascii "inc/delay.h"
             61 79 2E 68
      000071 00                     738 	.db	0
      000072 00                     739 	.uleb128	0
      000073 00                     740 	.uleb128	0
      000074 00                     741 	.uleb128	0
      000075 2E 2F 73 72 63 2F 6D   742 	.ascii "./src/main.c"
             61 69 6E 2E 63
      000081 00                     743 	.db	0
      000082 00                     744 	.uleb128	0
      000083 00                     745 	.uleb128	0
      000084 00                     746 	.uleb128	0
      000085 69 6E 63 2F 5F 5F 61   747 	.ascii "inc/__assert__.h"
             73 73 65 72 74 5F 5F
             2E 68
      000095 00                     748 	.db	0
      000096 00                     749 	.uleb128	0
      000097 00                     750 	.uleb128	0
      000098 00                     751 	.uleb128	0
      000099 00                     752 	.db	0
      00009A                        753 Ldebug_line_stmt:
      00009A 00                     754 	.db	0
      00009B 05                     755 	.uleb128	5
      00009C 02                     756 	.db	2
      00009D 00 00 81 42            757 	.dw	0,(Smain$_delay_cycl$0)
      0000A1 03                     758 	.db	3
      0000A2 0D                     759 	.sleb128	13
      0000A3 01                     760 	.db	1
      0000A4 09                     761 	.db	9
      0000A5 00 00                  762 	.dw	Smain$_delay_cycl$2-Smain$_delay_cycl$0
      0000A7 03                     763 	.db	3
      0000A8 0B                     764 	.sleb128	11
      0000A9 01                     765 	.db	1
      0000AA 09                     766 	.db	9
      0000AB 00 02                  767 	.dw	Smain$_delay_cycl$3-Smain$_delay_cycl$2
      0000AD 03                     768 	.db	3
      0000AE 01                     769 	.sleb128	1
      0000AF 01                     770 	.db	1
      0000B0 09                     771 	.db	9
      0000B1 00 02                  772 	.dw	Smain$_delay_cycl$5-Smain$_delay_cycl$3
      0000B3 03                     773 	.db	3
      0000B4 01                     774 	.sleb128	1
      0000B5 01                     775 	.db	1
      0000B6 09                     776 	.db	9
      0000B7 00 01                  777 	.dw	Smain$_delay_cycl$7-Smain$_delay_cycl$5
      0000B9 03                     778 	.db	3
      0000BA 01                     779 	.sleb128	1
      0000BB 01                     780 	.db	1
      0000BC 09                     781 	.db	9
      0000BD 00 06                  782 	.dw	Smain$_delay_cycl$8-Smain$_delay_cycl$7
      0000BF 03                     783 	.db	3
      0000C0 01                     784 	.sleb128	1
      0000C1 01                     785 	.db	1
      0000C2 09                     786 	.db	9
      0000C3 00 01                  787 	.dw	Smain$_delay_cycl$9-Smain$_delay_cycl$8
      0000C5 03                     788 	.db	3
      0000C6 0A                     789 	.sleb128	10
      0000C7 01                     790 	.db	1
      0000C8 09                     791 	.db	9
      0000C9 00 01                  792 	.dw	1+Smain$_delay_cycl$10-Smain$_delay_cycl$9
      0000CB 00                     793 	.db	0
      0000CC 01                     794 	.uleb128	1
      0000CD 01                     795 	.db	1
      0000CE 00                     796 	.db	0
      0000CF 05                     797 	.uleb128	5
      0000D0 02                     798 	.db	2
      0000D1 00 00 81 4F            799 	.dw	0,(Smain$_delay_us$12)
      0000D5 03                     800 	.db	3
      0000D6 28                     801 	.sleb128	40
      0000D7 01                     802 	.db	1
      0000D8 09                     803 	.db	9
      0000D9 00 2F                  804 	.dw	Smain$_delay_us$35-Smain$_delay_us$12
      0000DB 03                     805 	.db	3
      0000DC 71                     806 	.sleb128	-15
      0000DD 01                     807 	.db	1
      0000DE 09                     808 	.db	9
      0000DF 00 08                  809 	.dw	Smain$_delay_us$39-Smain$_delay_us$35
      0000E1 03                     810 	.db	3
      0000E2 10                     811 	.sleb128	16
      0000E3 01                     812 	.db	1
      0000E4 09                     813 	.db	9
      0000E5 00 00                  814 	.dw	Smain$_delay_us$40-Smain$_delay_us$39
      0000E7 03                     815 	.db	3
      0000E8 01                     816 	.sleb128	1
      0000E9 01                     817 	.db	1
      0000EA 09                     818 	.db	9
      0000EB 00 01                  819 	.dw	1+Smain$_delay_us$41-Smain$_delay_us$40
      0000ED 00                     820 	.db	0
      0000EE 01                     821 	.uleb128	1
      0000EF 01                     822 	.db	1
      0000F0 04                     823 	.db	4
      0000F1 02                     824 	.uleb128	2
      0000F2 00                     825 	.db	0
      0000F3 05                     826 	.uleb128	5
      0000F4 02                     827 	.db	2
      0000F5 00 00 81 87            828 	.dw	0,(Smain$encoder_init$43)
      0000F9 03                     829 	.db	3
      0000FA 0A                     830 	.sleb128	10
      0000FB 01                     831 	.db	1
      0000FC 09                     832 	.db	9
      0000FD 00 00                  833 	.dw	Smain$encoder_init$45-Smain$encoder_init$43
      0000FF 03                     834 	.db	3
      000100 01                     835 	.sleb128	1
      000101 01                     836 	.db	1
      000102 09                     837 	.db	9
      000103 00 0D                  838 	.dw	Smain$encoder_init$51-Smain$encoder_init$45
      000105 03                     839 	.db	3
      000106 01                     840 	.sleb128	1
      000107 01                     841 	.db	1
      000108 09                     842 	.db	9
      000109 00 0D                  843 	.dw	Smain$encoder_init$57-Smain$encoder_init$51
      00010B 03                     844 	.db	3
      00010C 02                     845 	.sleb128	2
      00010D 01                     846 	.db	1
      00010E 09                     847 	.db	9
      00010F 00 03                  848 	.dw	Smain$encoder_init$58-Smain$encoder_init$57
      000111 03                     849 	.db	3
      000112 01                     850 	.sleb128	1
      000113 01                     851 	.db	1
      000114 09                     852 	.db	9
      000115 00 11                  853 	.dw	Smain$encoder_init$66-Smain$encoder_init$58
      000117 03                     854 	.db	3
      000118 01                     855 	.sleb128	1
      000119 01                     856 	.db	1
      00011A 09                     857 	.db	9
      00011B 00 0B                  858 	.dw	Smain$encoder_init$71-Smain$encoder_init$66
      00011D 03                     859 	.db	3
      00011E 01                     860 	.sleb128	1
      00011F 01                     861 	.db	1
      000120 09                     862 	.db	9
      000121 00 06                  863 	.dw	Smain$encoder_init$74-Smain$encoder_init$71
      000123 03                     864 	.db	3
      000124 01                     865 	.sleb128	1
      000125 01                     866 	.db	1
      000126 09                     867 	.db	9
      000127 00 01                  868 	.dw	1+Smain$encoder_init$75-Smain$encoder_init$74
      000129 00                     869 	.db	0
      00012A 01                     870 	.uleb128	1
      00012B 01                     871 	.db	1
      00012C 04                     872 	.db	4
      00012D 02                     873 	.uleb128	2
      00012E 00                     874 	.db	0
      00012F 05                     875 	.uleb128	5
      000130 02                     876 	.db	2
      000131 00 00 81 C7            877 	.dw	0,(Smain$setup$77)
      000135 03                     878 	.db	3
      000136 14                     879 	.sleb128	20
      000137 01                     880 	.db	1
      000138 09                     881 	.db	9
      000139 00 00                  882 	.dw	Smain$setup$79-Smain$setup$77
      00013B 03                     883 	.db	3
      00013C 02                     884 	.sleb128	2
      00013D 01                     885 	.db	1
      00013E 09                     886 	.db	9
      00013F 00 06                  887 	.dw	Smain$setup$82-Smain$setup$79
      000141 03                     888 	.db	3
      000142 02                     889 	.sleb128	2
      000143 01                     890 	.db	1
      000144 09                     891 	.db	9
      000145 00 03                  892 	.dw	Smain$setup$83-Smain$setup$82
      000147 03                     893 	.db	3
      000148 01                     894 	.sleb128	1
      000149 01                     895 	.db	1
      00014A 09                     896 	.db	9
      00014B 00 03                  897 	.dw	Smain$setup$84-Smain$setup$83
      00014D 03                     898 	.db	3
      00014E 02                     899 	.sleb128	2
      00014F 01                     900 	.db	1
      000150 09                     901 	.db	9
      000151 00 0D                  902 	.dw	Smain$setup$90-Smain$setup$84
      000153 03                     903 	.db	3
      000154 02                     904 	.sleb128	2
      000155 01                     905 	.db	1
      000156 09                     906 	.db	9
      000157 00 03                  907 	.dw	Smain$setup$91-Smain$setup$90
      000159 03                     908 	.db	3
      00015A 02                     909 	.sleb128	2
      00015B 01                     910 	.db	1
      00015C 09                     911 	.db	9
      00015D 00 01                  912 	.dw	1+Smain$setup$92-Smain$setup$91
      00015F 00                     913 	.db	0
      000160 01                     914 	.uleb128	1
      000161 01                     915 	.db	1
      000162 04                     916 	.db	4
      000163 02                     917 	.uleb128	2
      000164 00                     918 	.db	0
      000165 05                     919 	.uleb128	5
      000166 02                     920 	.db	2
      000167 00 00 81 E4            921 	.dw	0,(Smain$main$94)
      00016B 03                     922 	.db	3
      00016C 21                     923 	.sleb128	33
      00016D 01                     924 	.db	1
      00016E 09                     925 	.db	9
      00016F 00 02                  926 	.dw	Smain$main$97-Smain$main$94
      000171 03                     927 	.db	3
      000172 02                     928 	.sleb128	2
      000173 01                     929 	.db	1
      000174 09                     930 	.db	9
      000175 00 07                  931 	.dw	Smain$main$98-Smain$main$97
      000177 03                     932 	.db	3
      000178 03                     933 	.sleb128	3
      000179 01                     934 	.db	1
      00017A 09                     935 	.db	9
      00017B 00 05                  936 	.dw	Smain$main$99-Smain$main$98
      00017D 03                     937 	.db	3
      00017E 06                     938 	.sleb128	6
      00017F 01                     939 	.db	1
      000180 09                     940 	.db	9
      000181 00 03                  941 	.dw	Smain$main$100-Smain$main$99
      000183 03                     942 	.db	3
      000184 02                     943 	.sleb128	2
      000185 01                     944 	.db	1
      000186 09                     945 	.db	9
      000187 00 08                  946 	.dw	Smain$main$104-Smain$main$100
      000189 03                     947 	.db	3
      00018A 01                     948 	.sleb128	1
      00018B 01                     949 	.db	1
      00018C 09                     950 	.db	9
      00018D 00 08                  951 	.dw	Smain$main$108-Smain$main$104
      00018F 03                     952 	.db	3
      000190 01                     953 	.sleb128	1
      000191 01                     954 	.db	1
      000192 09                     955 	.db	9
      000193 00 05                  956 	.dw	Smain$main$110-Smain$main$108
      000195 03                     957 	.db	3
      000196 01                     958 	.sleb128	1
      000197 01                     959 	.db	1
      000198 09                     960 	.db	9
      000199 00 38                  961 	.dw	Smain$main$112-Smain$main$110
      00019B 03                     962 	.db	3
      00019C 01                     963 	.sleb128	1
      00019D 01                     964 	.db	1
      00019E 09                     965 	.db	9
      00019F 00 0B                  966 	.dw	Smain$main$117-Smain$main$112
      0001A1 03                     967 	.db	3
      0001A2 01                     968 	.sleb128	1
      0001A3 01                     969 	.db	1
      0001A4 09                     970 	.db	9
      0001A5 00 07                  971 	.dw	Smain$main$119-Smain$main$117
      0001A7 03                     972 	.db	3
      0001A8 04                     973 	.sleb128	4
      0001A9 01                     974 	.db	1
      0001AA 09                     975 	.db	9
      0001AB 00 05                  976 	.dw	Smain$main$120-Smain$main$119
      0001AD 03                     977 	.db	3
      0001AE 02                     978 	.sleb128	2
      0001AF 01                     979 	.db	1
      0001B0 09                     980 	.db	9
      0001B1 00 09                  981 	.dw	Smain$main$123-Smain$main$120
      0001B3 03                     982 	.db	3
      0001B4 03                     983 	.sleb128	3
      0001B5 01                     984 	.db	1
      0001B6 09                     985 	.db	9
      0001B7 00 08                  986 	.dw	Smain$main$127-Smain$main$123
      0001B9 03                     987 	.db	3
      0001BA 01                     988 	.sleb128	1
      0001BB 01                     989 	.db	1
      0001BC 09                     990 	.db	9
      0001BD 00 17                  991 	.dw	Smain$main$133-Smain$main$127
      0001BF 03                     992 	.db	3
      0001C0 01                     993 	.sleb128	1
      0001C1 01                     994 	.db	1
      0001C2 09                     995 	.db	9
      0001C3 00 07                  996 	.dw	Smain$main$136-Smain$main$133
      0001C5 03                     997 	.db	3
      0001C6 01                     998 	.sleb128	1
      0001C7 01                     999 	.db	1
      0001C8 09                    1000 	.db	9
      0001C9 00 07                 1001 	.dw	Smain$main$138-Smain$main$136
      0001CB 03                    1002 	.db	3
      0001CC 02                    1003 	.sleb128	2
      0001CD 01                    1004 	.db	1
      0001CE 09                    1005 	.db	9
      0001CF 00 07                 1006 	.dw	Smain$main$140-Smain$main$138
      0001D1 03                    1007 	.db	3
      0001D2 03                    1008 	.sleb128	3
      0001D3 01                    1009 	.db	1
      0001D4 09                    1010 	.db	9
      0001D5 00 03                 1011 	.dw	1+Smain$main$142-Smain$main$140
      0001D7 00                    1012 	.db	0
      0001D8 01                    1013 	.uleb128	1
      0001D9 01                    1014 	.db	1
      0001DA 04                    1015 	.db	4
      0001DB 03                    1016 	.uleb128	3
      0001DC 00                    1017 	.db	0
      0001DD 05                    1018 	.uleb128	5
      0001DE 02                    1019 	.db	2
      0001DF 00 00 82 99           1020 	.dw	0,(Smain$assert_failed$144)
      0001E3 03                    1021 	.db	3
      0001E4 0C                    1022 	.sleb128	12
      0001E5 01                    1023 	.db	1
      0001E6 09                    1024 	.db	9
      0001E7 00 00                 1025 	.dw	Smain$assert_failed$146-Smain$assert_failed$144
      0001E9 03                    1026 	.db	3
      0001EA 09                    1027 	.sleb128	9
      0001EB 01                    1028 	.db	1
      0001EC 09                    1029 	.db	9
      0001ED 00 03                 1030 	.dw	Smain$assert_failed$147-Smain$assert_failed$146
      0001EF 03                    1031 	.db	3
      0001F0 03                    1032 	.sleb128	3
      0001F1 01                    1033 	.db	1
      0001F2 09                    1034 	.db	9
      0001F3 00 01                 1035 	.dw	1+Smain$assert_failed$148-Smain$assert_failed$147
      0001F5 00                    1036 	.db	0
      0001F6 01                    1037 	.uleb128	1
      0001F7 01                    1038 	.db	1
      0001F8                       1039 Ldebug_line_end:
                                   1040 
                                   1041 	.area .debug_loc (NOLOAD)
      000000                       1042 Ldebug_loc_start:
      000000 00 00 82 99           1043 	.dw	0,(Smain$assert_failed$145)
      000004 00 00 82 9D           1044 	.dw	0,(Smain$assert_failed$149)
      000008 00 02                 1045 	.dw	2
      00000A 78                    1046 	.db	120
      00000B 01                    1047 	.sleb128	1
      00000C 00 00 00 00           1048 	.dw	0,0
      000010 00 00 00 00           1049 	.dw	0,0
      000014 00 00 82 98           1050 	.dw	0,(Smain$main$141)
      000018 00 00 82 99           1051 	.dw	0,(Smain$main$143)
      00001C 00 02                 1052 	.dw	2
      00001E 78                    1053 	.db	120
      00001F 01                    1054 	.sleb128	1
      000020 00 00 82 88           1055 	.dw	0,(Smain$main$135)
      000024 00 00 82 98           1056 	.dw	0,(Smain$main$141)
      000028 00 02                 1057 	.dw	2
      00002A 78                    1058 	.db	120
      00002B 33                    1059 	.sleb128	51
      00002C 00 00 82 84           1060 	.dw	0,(Smain$main$134)
      000030 00 00 82 88           1061 	.dw	0,(Smain$main$135)
      000034 00 02                 1062 	.dw	2
      000036 78                    1063 	.db	120
      000037 35                    1064 	.sleb128	53
      000038 00 00 82 81           1065 	.dw	0,(Smain$main$132)
      00003C 00 00 82 84           1066 	.dw	0,(Smain$main$134)
      000040 00 02                 1067 	.dw	2
      000042 78                    1068 	.db	120
      000043 33                    1069 	.sleb128	51
      000044 00 00 82 7C           1070 	.dw	0,(Smain$main$131)
      000048 00 00 82 81           1071 	.dw	0,(Smain$main$132)
      00004C 00 02                 1072 	.dw	2
      00004E 78                    1073 	.db	120
      00004F 39                    1074 	.sleb128	57
      000050 00 00 82 77           1075 	.dw	0,(Smain$main$130)
      000054 00 00 82 7C           1076 	.dw	0,(Smain$main$131)
      000058 00 02                 1077 	.dw	2
      00005A 78                    1078 	.db	120
      00005B 37                    1079 	.sleb128	55
      00005C 00 00 82 75           1080 	.dw	0,(Smain$main$129)
      000060 00 00 82 77           1081 	.dw	0,(Smain$main$130)
      000064 00 02                 1082 	.dw	2
      000066 78                    1083 	.db	120
      000067 36                    1084 	.sleb128	54
      000068 00 00 82 73           1085 	.dw	0,(Smain$main$128)
      00006C 00 00 82 75           1086 	.dw	0,(Smain$main$129)
      000070 00 02                 1087 	.dw	2
      000072 78                    1088 	.db	120
      000073 35                    1089 	.sleb128	53
      000074 00 00 82 6A           1090 	.dw	0,(Smain$main$126)
      000078 00 00 82 73           1091 	.dw	0,(Smain$main$128)
      00007C 00 02                 1092 	.dw	2
      00007E 78                    1093 	.db	120
      00007F 33                    1094 	.sleb128	51
      000080 00 00 82 66           1095 	.dw	0,(Smain$main$125)
      000084 00 00 82 6A           1096 	.dw	0,(Smain$main$126)
      000088 00 02                 1097 	.dw	2
      00008A 78                    1098 	.db	120
      00008B 35                    1099 	.sleb128	53
      00008C 00 00 82 64           1100 	.dw	0,(Smain$main$124)
      000090 00 00 82 66           1101 	.dw	0,(Smain$main$125)
      000094 00 02                 1102 	.dw	2
      000096 78                    1103 	.db	120
      000097 34                    1104 	.sleb128	52
      000098 00 00 82 62           1105 	.dw	0,(Smain$main$121)
      00009C 00 00 82 64           1106 	.dw	0,(Smain$main$124)
      0000A0 00 02                 1107 	.dw	2
      0000A2 78                    1108 	.db	120
      0000A3 33                    1109 	.sleb128	51
      0000A4 00 00 82 4D           1110 	.dw	0,(Smain$main$116)
      0000A8 00 00 82 62           1111 	.dw	0,(Smain$main$121)
      0000AC 00 02                 1112 	.dw	2
      0000AE 78                    1113 	.db	120
      0000AF 33                    1114 	.sleb128	51
      0000B0 00 00 82 48           1115 	.dw	0,(Smain$main$115)
      0000B4 00 00 82 4D           1116 	.dw	0,(Smain$main$116)
      0000B8 00 02                 1117 	.dw	2
      0000BA 78                    1118 	.db	120
      0000BB 36                    1119 	.sleb128	54
      0000BC 00 00 82 46           1120 	.dw	0,(Smain$main$114)
      0000C0 00 00 82 48           1121 	.dw	0,(Smain$main$115)
      0000C4 00 02                 1122 	.dw	2
      0000C6 78                    1123 	.db	120
      0000C7 35                    1124 	.sleb128	53
      0000C8 00 00 82 44           1125 	.dw	0,(Smain$main$113)
      0000CC 00 00 82 46           1126 	.dw	0,(Smain$main$114)
      0000D0 00 02                 1127 	.dw	2
      0000D2 78                    1128 	.db	120
      0000D3 34                    1129 	.sleb128	52
      0000D4 00 00 82 05           1130 	.dw	0,(Smain$main$107)
      0000D8 00 00 82 44           1131 	.dw	0,(Smain$main$113)
      0000DC 00 02                 1132 	.dw	2
      0000DE 78                    1133 	.db	120
      0000DF 33                    1134 	.sleb128	51
      0000E0 00 00 82 01           1135 	.dw	0,(Smain$main$106)
      0000E4 00 00 82 05           1136 	.dw	0,(Smain$main$107)
      0000E8 00 02                 1137 	.dw	2
      0000EA 78                    1138 	.db	120
      0000EB 35                    1139 	.sleb128	53
      0000EC 00 00 81 FF           1140 	.dw	0,(Smain$main$105)
      0000F0 00 00 82 01           1141 	.dw	0,(Smain$main$106)
      0000F4 00 02                 1142 	.dw	2
      0000F6 78                    1143 	.db	120
      0000F7 34                    1144 	.sleb128	52
      0000F8 00 00 81 FD           1145 	.dw	0,(Smain$main$103)
      0000FC 00 00 81 FF           1146 	.dw	0,(Smain$main$105)
      000100 00 02                 1147 	.dw	2
      000102 78                    1148 	.db	120
      000103 33                    1149 	.sleb128	51
      000104 00 00 81 F9           1150 	.dw	0,(Smain$main$102)
      000108 00 00 81 FD           1151 	.dw	0,(Smain$main$103)
      00010C 00 02                 1152 	.dw	2
      00010E 78                    1153 	.db	120
      00010F 35                    1154 	.sleb128	53
      000110 00 00 81 F7           1155 	.dw	0,(Smain$main$101)
      000114 00 00 81 F9           1156 	.dw	0,(Smain$main$102)
      000118 00 02                 1157 	.dw	2
      00011A 78                    1158 	.db	120
      00011B 34                    1159 	.sleb128	52
      00011C 00 00 81 E6           1160 	.dw	0,(Smain$main$96)
      000120 00 00 81 F7           1161 	.dw	0,(Smain$main$101)
      000124 00 02                 1162 	.dw	2
      000126 78                    1163 	.db	120
      000127 33                    1164 	.sleb128	51
      000128 00 00 81 E4           1165 	.dw	0,(Smain$main$95)
      00012C 00 00 81 E6           1166 	.dw	0,(Smain$main$96)
      000130 00 02                 1167 	.dw	2
      000132 78                    1168 	.db	120
      000133 01                    1169 	.sleb128	1
      000134 00 00 00 00           1170 	.dw	0,0
      000138 00 00 00 00           1171 	.dw	0,0
      00013C 00 00 81 E0           1172 	.dw	0,(Smain$setup$89)
      000140 00 00 81 E4           1173 	.dw	0,(Smain$setup$93)
      000144 00 02                 1174 	.dw	2
      000146 78                    1175 	.db	120
      000147 01                    1176 	.sleb128	1
      000148 00 00 81 DB           1177 	.dw	0,(Smain$setup$88)
      00014C 00 00 81 E0           1178 	.dw	0,(Smain$setup$89)
      000150 00 02                 1179 	.dw	2
      000152 78                    1180 	.db	120
      000153 05                    1181 	.sleb128	5
      000154 00 00 81 D9           1182 	.dw	0,(Smain$setup$87)
      000158 00 00 81 DB           1183 	.dw	0,(Smain$setup$88)
      00015C 00 02                 1184 	.dw	2
      00015E 78                    1185 	.db	120
      00015F 04                    1186 	.sleb128	4
      000160 00 00 81 D7           1187 	.dw	0,(Smain$setup$86)
      000164 00 00 81 D9           1188 	.dw	0,(Smain$setup$87)
      000168 00 02                 1189 	.dw	2
      00016A 78                    1190 	.db	120
      00016B 03                    1191 	.sleb128	3
      00016C 00 00 81 D5           1192 	.dw	0,(Smain$setup$85)
      000170 00 00 81 D7           1193 	.dw	0,(Smain$setup$86)
      000174 00 02                 1194 	.dw	2
      000176 78                    1195 	.db	120
      000177 02                    1196 	.sleb128	2
      000178 00 00 81 CD           1197 	.dw	0,(Smain$setup$81)
      00017C 00 00 81 D5           1198 	.dw	0,(Smain$setup$85)
      000180 00 02                 1199 	.dw	2
      000182 78                    1200 	.db	120
      000183 01                    1201 	.sleb128	1
      000184 00 00 81 C9           1202 	.dw	0,(Smain$setup$80)
      000188 00 00 81 CD           1203 	.dw	0,(Smain$setup$81)
      00018C 00 02                 1204 	.dw	2
      00018E 78                    1205 	.db	120
      00018F 02                    1206 	.sleb128	2
      000190 00 00 81 C7           1207 	.dw	0,(Smain$setup$78)
      000194 00 00 81 C9           1208 	.dw	0,(Smain$setup$80)
      000198 00 02                 1209 	.dw	2
      00019A 78                    1210 	.db	120
      00019B 01                    1211 	.sleb128	1
      00019C 00 00 00 00           1212 	.dw	0,0
      0001A0 00 00 00 00           1213 	.dw	0,0
      0001A4 00 00 81 C6           1214 	.dw	0,(Smain$encoder_init$73)
      0001A8 00 00 81 C7           1215 	.dw	0,(Smain$encoder_init$76)
      0001AC 00 02                 1216 	.dw	2
      0001AE 78                    1217 	.db	120
      0001AF 01                    1218 	.sleb128	1
      0001B0 00 00 81 C2           1219 	.dw	0,(Smain$encoder_init$72)
      0001B4 00 00 81 C6           1220 	.dw	0,(Smain$encoder_init$73)
      0001B8 00 02                 1221 	.dw	2
      0001BA 78                    1222 	.db	120
      0001BB 02                    1223 	.sleb128	2
      0001BC 00 00 81 C0           1224 	.dw	0,(Smain$encoder_init$70)
      0001C0 00 00 81 C2           1225 	.dw	0,(Smain$encoder_init$72)
      0001C4 00 02                 1226 	.dw	2
      0001C6 78                    1227 	.db	120
      0001C7 01                    1228 	.sleb128	1
      0001C8 00 00 81 BB           1229 	.dw	0,(Smain$encoder_init$69)
      0001CC 00 00 81 C0           1230 	.dw	0,(Smain$encoder_init$70)
      0001D0 00 02                 1231 	.dw	2
      0001D2 78                    1232 	.db	120
      0001D3 04                    1233 	.sleb128	4
      0001D4 00 00 81 B9           1234 	.dw	0,(Smain$encoder_init$68)
      0001D8 00 00 81 BB           1235 	.dw	0,(Smain$encoder_init$69)
      0001DC 00 02                 1236 	.dw	2
      0001DE 78                    1237 	.db	120
      0001DF 03                    1238 	.sleb128	3
      0001E0 00 00 81 B7           1239 	.dw	0,(Smain$encoder_init$67)
      0001E4 00 00 81 B9           1240 	.dw	0,(Smain$encoder_init$68)
      0001E8 00 02                 1241 	.dw	2
      0001EA 78                    1242 	.db	120
      0001EB 02                    1243 	.sleb128	2
      0001EC 00 00 81 B5           1244 	.dw	0,(Smain$encoder_init$65)
      0001F0 00 00 81 B7           1245 	.dw	0,(Smain$encoder_init$67)
      0001F4 00 02                 1246 	.dw	2
      0001F6 78                    1247 	.db	120
      0001F7 01                    1248 	.sleb128	1
      0001F8 00 00 81 B0           1249 	.dw	0,(Smain$encoder_init$64)
      0001FC 00 00 81 B5           1250 	.dw	0,(Smain$encoder_init$65)
      000200 00 02                 1251 	.dw	2
      000202 78                    1252 	.db	120
      000203 07                    1253 	.sleb128	7
      000204 00 00 81 AE           1254 	.dw	0,(Smain$encoder_init$63)
      000208 00 00 81 B0           1255 	.dw	0,(Smain$encoder_init$64)
      00020C 00 02                 1256 	.dw	2
      00020E 78                    1257 	.db	120
      00020F 06                    1258 	.sleb128	6
      000210 00 00 81 AC           1259 	.dw	0,(Smain$encoder_init$62)
      000214 00 00 81 AE           1260 	.dw	0,(Smain$encoder_init$63)
      000218 00 02                 1261 	.dw	2
      00021A 78                    1262 	.db	120
      00021B 05                    1263 	.sleb128	5
      00021C 00 00 81 AA           1264 	.dw	0,(Smain$encoder_init$61)
      000220 00 00 81 AC           1265 	.dw	0,(Smain$encoder_init$62)
      000224 00 02                 1266 	.dw	2
      000226 78                    1267 	.db	120
      000227 04                    1268 	.sleb128	4
      000228 00 00 81 A8           1269 	.dw	0,(Smain$encoder_init$60)
      00022C 00 00 81 AA           1270 	.dw	0,(Smain$encoder_init$61)
      000230 00 02                 1271 	.dw	2
      000232 78                    1272 	.db	120
      000233 03                    1273 	.sleb128	3
      000234 00 00 81 A6           1274 	.dw	0,(Smain$encoder_init$59)
      000238 00 00 81 A8           1275 	.dw	0,(Smain$encoder_init$60)
      00023C 00 02                 1276 	.dw	2
      00023E 78                    1277 	.db	120
      00023F 02                    1278 	.sleb128	2
      000240 00 00 81 A1           1279 	.dw	0,(Smain$encoder_init$56)
      000244 00 00 81 A6           1280 	.dw	0,(Smain$encoder_init$59)
      000248 00 02                 1281 	.dw	2
      00024A 78                    1282 	.db	120
      00024B 01                    1283 	.sleb128	1
      00024C 00 00 81 9C           1284 	.dw	0,(Smain$encoder_init$55)
      000250 00 00 81 A1           1285 	.dw	0,(Smain$encoder_init$56)
      000254 00 02                 1286 	.dw	2
      000256 78                    1287 	.db	120
      000257 05                    1288 	.sleb128	5
      000258 00 00 81 9A           1289 	.dw	0,(Smain$encoder_init$54)
      00025C 00 00 81 9C           1290 	.dw	0,(Smain$encoder_init$55)
      000260 00 02                 1291 	.dw	2
      000262 78                    1292 	.db	120
      000263 04                    1293 	.sleb128	4
      000264 00 00 81 98           1294 	.dw	0,(Smain$encoder_init$53)
      000268 00 00 81 9A           1295 	.dw	0,(Smain$encoder_init$54)
      00026C 00 02                 1296 	.dw	2
      00026E 78                    1297 	.db	120
      00026F 03                    1298 	.sleb128	3
      000270 00 00 81 96           1299 	.dw	0,(Smain$encoder_init$52)
      000274 00 00 81 98           1300 	.dw	0,(Smain$encoder_init$53)
      000278 00 02                 1301 	.dw	2
      00027A 78                    1302 	.db	120
      00027B 02                    1303 	.sleb128	2
      00027C 00 00 81 94           1304 	.dw	0,(Smain$encoder_init$50)
      000280 00 00 81 96           1305 	.dw	0,(Smain$encoder_init$52)
      000284 00 02                 1306 	.dw	2
      000286 78                    1307 	.db	120
      000287 01                    1308 	.sleb128	1
      000288 00 00 81 8F           1309 	.dw	0,(Smain$encoder_init$49)
      00028C 00 00 81 94           1310 	.dw	0,(Smain$encoder_init$50)
      000290 00 02                 1311 	.dw	2
      000292 78                    1312 	.db	120
      000293 05                    1313 	.sleb128	5
      000294 00 00 81 8D           1314 	.dw	0,(Smain$encoder_init$48)
      000298 00 00 81 8F           1315 	.dw	0,(Smain$encoder_init$49)
      00029C 00 02                 1316 	.dw	2
      00029E 78                    1317 	.db	120
      00029F 04                    1318 	.sleb128	4
      0002A0 00 00 81 8B           1319 	.dw	0,(Smain$encoder_init$47)
      0002A4 00 00 81 8D           1320 	.dw	0,(Smain$encoder_init$48)
      0002A8 00 02                 1321 	.dw	2
      0002AA 78                    1322 	.db	120
      0002AB 03                    1323 	.sleb128	3
      0002AC 00 00 81 89           1324 	.dw	0,(Smain$encoder_init$46)
      0002B0 00 00 81 8B           1325 	.dw	0,(Smain$encoder_init$47)
      0002B4 00 02                 1326 	.dw	2
      0002B6 78                    1327 	.db	120
      0002B7 02                    1328 	.sleb128	2
      0002B8 00 00 81 87           1329 	.dw	0,(Smain$encoder_init$44)
      0002BC 00 00 81 89           1330 	.dw	0,(Smain$encoder_init$46)
      0002C0 00 02                 1331 	.dw	2
      0002C2 78                    1332 	.db	120
      0002C3 01                    1333 	.sleb128	1
      0002C4 00 00 00 00           1334 	.dw	0,0
      0002C8 00 00 00 00           1335 	.dw	0,0
      0002CC 00 00 81 72           1336 	.dw	0,(Smain$_delay_us$29)
      0002D0 00 00 81 87           1337 	.dw	0,(Smain$_delay_us$42)
      0002D4 00 02                 1338 	.dw	2
      0002D6 78                    1339 	.db	120
      0002D7 01                    1340 	.sleb128	1
      0002D8 00 00 81 6D           1341 	.dw	0,(Smain$_delay_us$28)
      0002DC 00 00 81 72           1342 	.dw	0,(Smain$_delay_us$29)
      0002E0 00 02                 1343 	.dw	2
      0002E2 78                    1344 	.db	120
      0002E3 09                    1345 	.sleb128	9
      0002E4 00 00 81 6B           1346 	.dw	0,(Smain$_delay_us$27)
      0002E8 00 00 81 6D           1347 	.dw	0,(Smain$_delay_us$28)
      0002EC 00 02                 1348 	.dw	2
      0002EE 78                    1349 	.db	120
      0002EF 07                    1350 	.sleb128	7
      0002F0 00 00 81 6A           1351 	.dw	0,(Smain$_delay_us$26)
      0002F4 00 00 81 6B           1352 	.dw	0,(Smain$_delay_us$27)
      0002F8 00 02                 1353 	.dw	2
      0002FA 78                    1354 	.db	120
      0002FB 05                    1355 	.sleb128	5
      0002FC 00 00 81 68           1356 	.dw	0,(Smain$_delay_us$25)
      000300 00 00 81 6A           1357 	.dw	0,(Smain$_delay_us$26)
      000304 00 02                 1358 	.dw	2
      000306 78                    1359 	.db	120
      000307 04                    1360 	.sleb128	4
      000308 00 00 81 66           1361 	.dw	0,(Smain$_delay_us$24)
      00030C 00 00 81 68           1362 	.dw	0,(Smain$_delay_us$25)
      000310 00 02                 1363 	.dw	2
      000312 78                    1364 	.db	120
      000313 03                    1365 	.sleb128	3
      000314 00 00 81 64           1366 	.dw	0,(Smain$_delay_us$23)
      000318 00 00 81 66           1367 	.dw	0,(Smain$_delay_us$24)
      00031C 00 02                 1368 	.dw	2
      00031E 78                    1369 	.db	120
      00031F 02                    1370 	.sleb128	2
      000320 00 00 81 62           1371 	.dw	0,(Smain$_delay_us$21)
      000324 00 00 81 64           1372 	.dw	0,(Smain$_delay_us$23)
      000328 00 02                 1373 	.dw	2
      00032A 78                    1374 	.db	120
      00032B 01                    1375 	.sleb128	1
      00032C 00 00 81 5D           1376 	.dw	0,(Smain$_delay_us$20)
      000330 00 00 81 62           1377 	.dw	0,(Smain$_delay_us$21)
      000334 00 02                 1378 	.dw	2
      000336 78                    1379 	.db	120
      000337 09                    1380 	.sleb128	9
      000338 00 00 81 5B           1381 	.dw	0,(Smain$_delay_us$19)
      00033C 00 00 81 5D           1382 	.dw	0,(Smain$_delay_us$20)
      000340 00 02                 1383 	.dw	2
      000342 78                    1384 	.db	120
      000343 08                    1385 	.sleb128	8
      000344 00 00 81 59           1386 	.dw	0,(Smain$_delay_us$18)
      000348 00 00 81 5B           1387 	.dw	0,(Smain$_delay_us$19)
      00034C 00 02                 1388 	.dw	2
      00034E 78                    1389 	.db	120
      00034F 07                    1390 	.sleb128	7
      000350 00 00 81 57           1391 	.dw	0,(Smain$_delay_us$17)
      000354 00 00 81 59           1392 	.dw	0,(Smain$_delay_us$18)
      000358 00 02                 1393 	.dw	2
      00035A 78                    1394 	.db	120
      00035B 06                    1395 	.sleb128	6
      00035C 00 00 81 55           1396 	.dw	0,(Smain$_delay_us$16)
      000360 00 00 81 57           1397 	.dw	0,(Smain$_delay_us$17)
      000364 00 02                 1398 	.dw	2
      000366 78                    1399 	.db	120
      000367 05                    1400 	.sleb128	5
      000368 00 00 81 54           1401 	.dw	0,(Smain$_delay_us$15)
      00036C 00 00 81 55           1402 	.dw	0,(Smain$_delay_us$16)
      000370 00 02                 1403 	.dw	2
      000372 78                    1404 	.db	120
      000373 03                    1405 	.sleb128	3
      000374 00 00 81 4F           1406 	.dw	0,(Smain$_delay_us$13)
      000378 00 00 81 54           1407 	.dw	0,(Smain$_delay_us$15)
      00037C 00 02                 1408 	.dw	2
      00037E 78                    1409 	.db	120
      00037F 01                    1410 	.sleb128	1
      000380 00 00 00 00           1411 	.dw	0,0
      000384 00 00 00 00           1412 	.dw	0,0
      000388 00 00 81 42           1413 	.dw	0,(Smain$_delay_cycl$1)
      00038C 00 00 81 4F           1414 	.dw	0,(Smain$_delay_cycl$11)
      000390 00 02                 1415 	.dw	2
      000392 78                    1416 	.db	120
      000393 01                    1417 	.sleb128	1
      000394 00 00 00 00           1418 	.dw	0,0
      000398 00 00 00 00           1419 	.dw	0,0
                                   1420 
                                   1421 	.area .debug_abbrev (NOLOAD)
      000000                       1422 Ldebug_abbrev:
      000000 0F                    1423 	.uleb128	15
      000001 0F                    1424 	.uleb128	15
      000002 00                    1425 	.db	0
      000003 0B                    1426 	.uleb128	11
      000004 0B                    1427 	.uleb128	11
      000005 49                    1428 	.uleb128	73
      000006 13                    1429 	.uleb128	19
      000007 00                    1430 	.uleb128	0
      000008 00                    1431 	.uleb128	0
      000009 03                    1432 	.uleb128	3
      00000A 05                    1433 	.uleb128	5
      00000B 00                    1434 	.db	0
      00000C 02                    1435 	.uleb128	2
      00000D 0A                    1436 	.uleb128	10
      00000E 03                    1437 	.uleb128	3
      00000F 08                    1438 	.uleb128	8
      000010 49                    1439 	.uleb128	73
      000011 13                    1440 	.uleb128	19
      000012 00                    1441 	.uleb128	0
      000013 00                    1442 	.uleb128	0
      000014 0D                    1443 	.uleb128	13
      000015 01                    1444 	.uleb128	1
      000016 01                    1445 	.db	1
      000017 01                    1446 	.uleb128	1
      000018 13                    1447 	.uleb128	19
      000019 0B                    1448 	.uleb128	11
      00001A 0B                    1449 	.uleb128	11
      00001B 49                    1450 	.uleb128	73
      00001C 13                    1451 	.uleb128	19
      00001D 00                    1452 	.uleb128	0
      00001E 00                    1453 	.uleb128	0
      00001F 02                    1454 	.uleb128	2
      000020 2E                    1455 	.uleb128	46
      000021 01                    1456 	.db	1
      000022 01                    1457 	.uleb128	1
      000023 13                    1458 	.uleb128	19
      000024 03                    1459 	.uleb128	3
      000025 08                    1460 	.uleb128	8
      000026 11                    1461 	.uleb128	17
      000027 01                    1462 	.uleb128	1
      000028 12                    1463 	.uleb128	18
      000029 01                    1464 	.uleb128	1
      00002A 3F                    1465 	.uleb128	63
      00002B 0C                    1466 	.uleb128	12
      00002C 40                    1467 	.uleb128	64
      00002D 06                    1468 	.uleb128	6
      00002E 00                    1469 	.uleb128	0
      00002F 00                    1470 	.uleb128	0
      000030 0A                    1471 	.uleb128	10
      000031 34                    1472 	.uleb128	52
      000032 00                    1473 	.db	0
      000033 02                    1474 	.uleb128	2
      000034 0A                    1475 	.uleb128	10
      000035 03                    1476 	.uleb128	3
      000036 08                    1477 	.uleb128	8
      000037 49                    1478 	.uleb128	73
      000038 13                    1479 	.uleb128	19
      000039 00                    1480 	.uleb128	0
      00003A 00                    1481 	.uleb128	0
      00003B 0C                    1482 	.uleb128	12
      00003C 2E                    1483 	.uleb128	46
      00003D 01                    1484 	.db	1
      00003E 01                    1485 	.uleb128	1
      00003F 13                    1486 	.uleb128	19
      000040 03                    1487 	.uleb128	3
      000041 08                    1488 	.uleb128	8
      000042 11                    1489 	.uleb128	17
      000043 01                    1490 	.uleb128	1
      000044 12                    1491 	.uleb128	18
      000045 01                    1492 	.uleb128	1
      000046 3F                    1493 	.uleb128	63
      000047 0C                    1494 	.uleb128	12
      000048 40                    1495 	.uleb128	64
      000049 06                    1496 	.uleb128	6
      00004A 49                    1497 	.uleb128	73
      00004B 13                    1498 	.uleb128	19
      00004C 00                    1499 	.uleb128	0
      00004D 00                    1500 	.uleb128	0
      00004E 06                    1501 	.uleb128	6
      00004F 26                    1502 	.uleb128	38
      000050 00                    1503 	.db	0
      000051 49                    1504 	.uleb128	73
      000052 13                    1505 	.uleb128	19
      000053 00                    1506 	.uleb128	0
      000054 00                    1507 	.uleb128	0
      000055 01                    1508 	.uleb128	1
      000056 11                    1509 	.uleb128	17
      000057 01                    1510 	.db	1
      000058 03                    1511 	.uleb128	3
      000059 08                    1512 	.uleb128	8
      00005A 10                    1513 	.uleb128	16
      00005B 06                    1514 	.uleb128	6
      00005C 13                    1515 	.uleb128	19
      00005D 0B                    1516 	.uleb128	11
      00005E 25                    1517 	.uleb128	37
      00005F 08                    1518 	.uleb128	8
      000060 00                    1519 	.uleb128	0
      000061 00                    1520 	.uleb128	0
      000062 04                    1521 	.uleb128	4
      000063 0B                    1522 	.uleb128	11
      000064 00                    1523 	.db	0
      000065 11                    1524 	.uleb128	17
      000066 01                    1525 	.uleb128	1
      000067 12                    1526 	.uleb128	18
      000068 01                    1527 	.uleb128	1
      000069 00                    1528 	.uleb128	0
      00006A 00                    1529 	.uleb128	0
      00006B 07                    1530 	.uleb128	7
      00006C 0B                    1531 	.uleb128	11
      00006D 01                    1532 	.db	1
      00006E 11                    1533 	.uleb128	17
      00006F 01                    1534 	.uleb128	1
      000070 12                    1535 	.uleb128	18
      000071 01                    1536 	.uleb128	1
      000072 00                    1537 	.uleb128	0
      000073 00                    1538 	.uleb128	0
      000074 08                    1539 	.uleb128	8
      000075 0B                    1540 	.uleb128	11
      000076 01                    1541 	.db	1
      000077 01                    1542 	.uleb128	1
      000078 13                    1543 	.uleb128	19
      000079 11                    1544 	.uleb128	17
      00007A 01                    1545 	.uleb128	1
      00007B 00                    1546 	.uleb128	0
      00007C 00                    1547 	.uleb128	0
      00007D 0B                    1548 	.uleb128	11
      00007E 2E                    1549 	.uleb128	46
      00007F 00                    1550 	.db	0
      000080 03                    1551 	.uleb128	3
      000081 08                    1552 	.uleb128	8
      000082 11                    1553 	.uleb128	17
      000083 01                    1554 	.uleb128	1
      000084 12                    1555 	.uleb128	18
      000085 01                    1556 	.uleb128	1
      000086 3F                    1557 	.uleb128	63
      000087 0C                    1558 	.uleb128	12
      000088 40                    1559 	.uleb128	64
      000089 06                    1560 	.uleb128	6
      00008A 00                    1561 	.uleb128	0
      00008B 00                    1562 	.uleb128	0
      00008C 09                    1563 	.uleb128	9
      00008D 0B                    1564 	.uleb128	11
      00008E 01                    1565 	.db	1
      00008F 01                    1566 	.uleb128	1
      000090 13                    1567 	.uleb128	19
      000091 11                    1568 	.uleb128	17
      000092 01                    1569 	.uleb128	1
      000093 12                    1570 	.uleb128	18
      000094 01                    1571 	.uleb128	1
      000095 00                    1572 	.uleb128	0
      000096 00                    1573 	.uleb128	0
      000097 0E                    1574 	.uleb128	14
      000098 21                    1575 	.uleb128	33
      000099 00                    1576 	.db	0
      00009A 2F                    1577 	.uleb128	47
      00009B 0B                    1578 	.uleb128	11
      00009C 00                    1579 	.uleb128	0
      00009D 00                    1580 	.uleb128	0
      00009E 05                    1581 	.uleb128	5
      00009F 24                    1582 	.uleb128	36
      0000A0 00                    1583 	.db	0
      0000A1 03                    1584 	.uleb128	3
      0000A2 08                    1585 	.uleb128	8
      0000A3 0B                    1586 	.uleb128	11
      0000A4 0B                    1587 	.uleb128	11
      0000A5 3E                    1588 	.uleb128	62
      0000A6 0B                    1589 	.uleb128	11
      0000A7 00                    1590 	.uleb128	0
      0000A8 00                    1591 	.uleb128	0
      0000A9 00                    1592 	.uleb128	0
                                   1593 
                                   1594 	.area .debug_info (NOLOAD)
      000000 00 00 02 94           1595 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000004                       1596 Ldebug_info_start:
      000004 00 02                 1597 	.dw	2
      000006 00 00 00 00           1598 	.dw	0,(Ldebug_abbrev)
      00000A 04                    1599 	.db	4
      00000B 01                    1600 	.uleb128	1
      00000C 2E 2F 73 72 63 2F 6D  1601 	.ascii "./src/main.c"
             61 69 6E 2E 63
      000018 00                    1602 	.db	0
      000019 00 00 00 00           1603 	.dw	0,(Ldebug_line_start+-4)
      00001D 01                    1604 	.db	1
      00001E 53 44 43 43 20 76 65  1605 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      000037 00                    1606 	.db	0
      000038 02                    1607 	.uleb128	2
      000039 00 00 00 70           1608 	.dw	0,112
      00003D 5F 64 65 6C 61 79 5F  1609 	.ascii "_delay_cycl"
             63 79 63 6C
      000048 00                    1610 	.db	0
      000049 00 00 81 42           1611 	.dw	0,(__delay_cycl)
      00004D 00 00 81 4F           1612 	.dw	0,(XFmain$_delay_cycl$0$0+1)
      000051 00                    1613 	.db	0
      000052 00 00 03 88           1614 	.dw	0,(Ldebug_loc_start+904)
      000056 03                    1615 	.uleb128	3
      000057 02                    1616 	.db	2
      000058 91                    1617 	.db	145
      000059 02                    1618 	.sleb128	2
      00005A 5F 5F 74 69 63 6B 73  1619 	.ascii "__ticks"
      000061 00                    1620 	.db	0
      000062 00 00 00 70           1621 	.dw	0,112
      000066 04                    1622 	.uleb128	4
      000067 00 00 81 46           1623 	.dw	0,(Smain$_delay_cycl$4)
      00006B 00 00 81 47           1624 	.dw	0,(Smain$_delay_cycl$6)
      00006F 00                    1625 	.uleb128	0
      000070 05                    1626 	.uleb128	5
      000071 75 6E 73 69 67 6E 65  1627 	.ascii "unsigned int"
             64 20 69 6E 74
      00007D 00                    1628 	.db	0
      00007E 02                    1629 	.db	2
      00007F 07                    1630 	.db	7
      000080 02                    1631 	.uleb128	2
      000081 00 00 01 07           1632 	.dw	0,263
      000085 5F 64 65 6C 61 79 5F  1633 	.ascii "_delay_us"
             75 73
      00008E 00                    1634 	.db	0
      00008F 00 00 81 4F           1635 	.dw	0,(__delay_us)
      000093 00 00 81 87           1636 	.dw	0,(XFmain$_delay_us$0$0+1)
      000097 00                    1637 	.db	0
      000098 00 00 02 CC           1638 	.dw	0,(Ldebug_loc_start+716)
      00009C 06                    1639 	.uleb128	6
      00009D 00 00 00 70           1640 	.dw	0,112
      0000A1 03                    1641 	.uleb128	3
      0000A2 02                    1642 	.db	2
      0000A3 91                    1643 	.db	145
      0000A4 02                    1644 	.sleb128	2
      0000A5 5F 5F 75 73           1645 	.ascii "__us"
      0000A9 00                    1646 	.db	0
      0000AA 00 00 00 9C           1647 	.dw	0,156
      0000AE 07                    1648 	.uleb128	7
      0000AF 00 00 81 4F           1649 	.dw	0,(Smain$_delay_us$14)
      0000B3 00 00 81 7B           1650 	.dw	0,(Smain$_delay_us$31)
      0000B7 08                    1651 	.uleb128	8
      0000B8 00 00 00 EC           1652 	.dw	0,236
      0000BC 00 00 81 7C           1653 	.dw	0,(Smain$_delay_us$32)
      0000C0 09                    1654 	.uleb128	9
      0000C1 00 00 00 D7           1655 	.dw	0,215
      0000C5 00 00 81 7C           1656 	.dw	0,(Smain$_delay_us$33)
      0000C9 00 00 81 86           1657 	.dw	0,(Smain$_delay_us$38)
      0000CD 04                    1658 	.uleb128	4
      0000CE 00 00 81 7E           1659 	.dw	0,(Smain$_delay_us$36)
      0000D2 00 00 81 7F           1660 	.dw	0,(Smain$_delay_us$37)
      0000D6 00                    1661 	.uleb128	0
      0000D7 0A                    1662 	.uleb128	10
      0000D8 06                    1663 	.db	6
      0000D9 52                    1664 	.db	82
      0000DA 93                    1665 	.db	147
      0000DB 01                    1666 	.uleb128	1
      0000DC 51                    1667 	.db	81
      0000DD 93                    1668 	.db	147
      0000DE 01                    1669 	.uleb128	1
      0000DF 5F 5F 74 69 63 6B 73  1670 	.ascii "__ticks"
      0000E6 00                    1671 	.db	0
      0000E7 00 00 00 70           1672 	.dw	0,112
      0000EB 00                    1673 	.uleb128	0
      0000EC 0A                    1674 	.uleb128	10
      0000ED 06                    1675 	.db	6
      0000EE 52                    1676 	.db	82
      0000EF 93                    1677 	.db	147
      0000F0 01                    1678 	.uleb128	1
      0000F1 51                    1679 	.db	81
      0000F2 93                    1680 	.db	147
      0000F3 01                    1681 	.uleb128	1
      0000F4 5F 5F 31 33 31 30 37  1682 	.ascii "__1310720010"
             32 30 30 31 30
      000100 00                    1683 	.db	0
      000101 00 00 00 70           1684 	.dw	0,112
      000105 00                    1685 	.uleb128	0
      000106 00                    1686 	.uleb128	0
      000107 0B                    1687 	.uleb128	11
      000108 65 6E 63 6F 64 65 72  1688 	.ascii "encoder_init"
             5F 69 6E 69 74
      000114 00                    1689 	.db	0
      000115 00 00 81 87           1690 	.dw	0,(_encoder_init)
      000119 00 00 81 C7           1691 	.dw	0,(XG$encoder_init$0$0+1)
      00011D 01                    1692 	.db	1
      00011E 00 00 01 A4           1693 	.dw	0,(Ldebug_loc_start+420)
      000122 0B                    1694 	.uleb128	11
      000123 73 65 74 75 70        1695 	.ascii "setup"
      000128 00                    1696 	.db	0
      000129 00 00 81 C7           1697 	.dw	0,(_setup)
      00012D 00 00 81 E4           1698 	.dw	0,(XG$setup$0$0+1)
      000131 01                    1699 	.db	1
      000132 00 00 01 3C           1700 	.dw	0,(Ldebug_loc_start+316)
      000136 05                    1701 	.uleb128	5
      000137 69 6E 74              1702 	.ascii "int"
      00013A 00                    1703 	.db	0
      00013B 02                    1704 	.db	2
      00013C 05                    1705 	.db	5
      00013D 0C                    1706 	.uleb128	12
      00013E 00 00 01 DD           1707 	.dw	0,477
      000142 6D 61 69 6E           1708 	.ascii "main"
      000146 00                    1709 	.db	0
      000147 00 00 81 E4           1710 	.dw	0,(_main)
      00014B 00 00 82 99           1711 	.dw	0,(XG$main$0$0+1)
      00014F 01                    1712 	.db	1
      000150 00 00 00 14           1713 	.dw	0,(Ldebug_loc_start+20)
      000154 00 00 01 36           1714 	.dw	0,310
      000158 09                    1715 	.uleb128	9
      000159 00 00 01 78           1716 	.dw	0,376
      00015D 00 00 82 0A           1717 	.dw	0,(Smain$main$109)
      000161 00 00 82 93           1718 	.dw	0,(Smain$main$139)
      000165 04                    1719 	.uleb128	4
      000166 00 00 82 42           1720 	.dw	0,(Smain$main$111)
      00016A 00 00 82 54           1721 	.dw	0,(Smain$main$118)
      00016E 04                    1722 	.uleb128	4
      00016F 00 00 82 62           1723 	.dw	0,(Smain$main$122)
      000173 00 00 82 8F           1724 	.dw	0,(Smain$main$137)
      000177 00                    1725 	.uleb128	0
      000178 0A                    1726 	.uleb128	10
      000179 02                    1727 	.db	2
      00017A 91                    1728 	.db	145
      00017B 6E                    1729 	.sleb128	-18
      00017C 74 69 6D 65           1730 	.ascii "time"
      000180 00                    1731 	.db	0
      000181 00 00 01 DD           1732 	.dw	0,477
      000185 0A                    1733 	.uleb128	10
      000186 02                    1734 	.db	2
      000187 91                    1735 	.db	145
      000188 7E                    1736 	.sleb128	-2
      000189 70 72 65 73 65 6E 74  1737 	.ascii "present_value"
             5F 76 61 6C 75 65
      000196 00                    1738 	.db	0
      000197 00 00 01 EE           1739 	.dw	0,494
      00019B 0A                    1740 	.uleb128	10
      00019C 02                    1741 	.db	2
      00019D 91                    1742 	.db	145
      00019E 72                    1743 	.sleb128	-14
      00019F 70 72 65 76 69 6F 75  1744 	.ascii "previous_value"
             73 5F 76 61 6C 75 65
      0001AD 00                    1745 	.db	0
      0001AE 00 00 01 EE           1746 	.dw	0,494
      0001B2 0D                    1747 	.uleb128	13
      0001B3 00 00 01 BF           1748 	.dw	0,447
      0001B7 20                    1749 	.db	32
      0001B8 00 00 01 FE           1750 	.dw	0,510
      0001BC 0E                    1751 	.uleb128	14
      0001BD 1F                    1752 	.db	31
      0001BE 00                    1753 	.uleb128	0
      0001BF 0A                    1754 	.uleb128	10
      0001C0 02                    1755 	.db	2
      0001C1 91                    1756 	.db	145
      0001C2 4E                    1757 	.sleb128	-50
      0001C3 74 65 78 74           1758 	.ascii "text"
      0001C7 00                    1759 	.db	0
      0001C8 00 00 01 B2           1760 	.dw	0,434
      0001CC 0A                    1761 	.uleb128	10
      0001CD 02                    1762 	.db	2
      0001CE 91                    1763 	.db	145
      0001CF 74                    1764 	.sleb128	-12
      0001D0 70 65 72 69 6F 64 61  1765 	.ascii "perioda"
      0001D7 00                    1766 	.db	0
      0001D8 00 00 01 DD           1767 	.dw	0,477
      0001DC 00                    1768 	.uleb128	0
      0001DD 05                    1769 	.uleb128	5
      0001DE 75 6E 73 69 67 6E 65  1770 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      0001EB 00                    1771 	.db	0
      0001EC 04                    1772 	.db	4
      0001ED 07                    1773 	.db	7
      0001EE 05                    1774 	.uleb128	5
      0001EF 75 6E 73 69 67 6E 65  1775 	.ascii "unsigned int"
             64 20 69 6E 74
      0001FB 00                    1776 	.db	0
      0001FC 02                    1777 	.db	2
      0001FD 07                    1778 	.db	7
      0001FE 05                    1779 	.uleb128	5
      0001FF 75 6E 73 69 67 6E 65  1780 	.ascii "unsigned char"
             64 20 63 68 61 72
      00020C 00                    1781 	.db	0
      00020D 01                    1782 	.db	1
      00020E 08                    1783 	.db	8
      00020F 02                    1784 	.uleb128	2
      000210 00 00 02 50           1785 	.dw	0,592
      000214 61 73 73 65 72 74 5F  1786 	.ascii "assert_failed"
             66 61 69 6C 65 64
      000221 00                    1787 	.db	0
      000222 00 00 82 99           1788 	.dw	0,(_assert_failed)
      000226 00 00 82 9D           1789 	.dw	0,(XG$assert_failed$0$0+1)
      00022A 01                    1790 	.db	1
      00022B 00 00 00 00           1791 	.dw	0,(Ldebug_loc_start)
      00022F 0F                    1792 	.uleb128	15
      000230 02                    1793 	.db	2
      000231 00 00 01 FE           1794 	.dw	0,510
      000235 03                    1795 	.uleb128	3
      000236 02                    1796 	.db	2
      000237 91                    1797 	.db	145
      000238 02                    1798 	.sleb128	2
      000239 66 69 6C 65           1799 	.ascii "file"
      00023D 00                    1800 	.db	0
      00023E 00 00 02 2F           1801 	.dw	0,559
      000242 03                    1802 	.uleb128	3
      000243 02                    1803 	.db	2
      000244 91                    1804 	.db	145
      000245 04                    1805 	.sleb128	4
      000246 6C 69 6E 65           1806 	.ascii "line"
      00024A 00                    1807 	.db	0
      00024B 00 00 01 DD           1808 	.dw	0,477
      00024F 00                    1809 	.uleb128	0
      000250 06                    1810 	.uleb128	6
      000251 00 00 01 FE           1811 	.dw	0,510
      000255 0D                    1812 	.uleb128	13
      000256 00 00 02 62           1813 	.dw	0,610
      00025A 08                    1814 	.db	8
      00025B 00 00 02 50           1815 	.dw	0,592
      00025F 0E                    1816 	.uleb128	14
      000260 07                    1817 	.db	7
      000261 00                    1818 	.uleb128	0
      000262 0A                    1819 	.uleb128	10
      000263 05                    1820 	.db	5
      000264 03                    1821 	.db	3
      000265 00 00 80 8C           1822 	.dw	0,(___str_0)
      000269 5F 5F 73 74 72 5F 30  1823 	.ascii "__str_0"
      000270 00                    1824 	.db	0
      000271 00 00 02 55           1825 	.dw	0,597
      000275 0D                    1826 	.uleb128	13
      000276 00 00 02 82           1827 	.dw	0,642
      00027A 05                    1828 	.db	5
      00027B 00 00 02 50           1829 	.dw	0,592
      00027F 0E                    1830 	.uleb128	14
      000280 04                    1831 	.db	4
      000281 00                    1832 	.uleb128	0
      000282 0A                    1833 	.uleb128	10
      000283 05                    1834 	.db	5
      000284 03                    1835 	.db	3
      000285 00 00 80 94           1836 	.dw	0,(___str_1)
      000289 5F 5F 73 74 72 5F 31  1837 	.ascii "__str_1"
      000290 00                    1838 	.db	0
      000291 00 00 02 75           1839 	.dw	0,629
      000295 00                    1840 	.uleb128	0
      000296 00                    1841 	.uleb128	0
      000297 00                    1842 	.uleb128	0
      000298                       1843 Ldebug_info_end:
                                   1844 
                                   1845 	.area .debug_pubnames (NOLOAD)
      000000 00 00 00 44           1846 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000004                       1847 Ldebug_pubnames_start:
      000004 00 02                 1848 	.dw	2
      000006 00 00 00 00           1849 	.dw	0,(Ldebug_info_start-4)
      00000A 00 00 02 98           1850 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00000E 00 00 01 07           1851 	.dw	0,263
      000012 65 6E 63 6F 64 65 72  1852 	.ascii "encoder_init"
             5F 69 6E 69 74
      00001E 00                    1853 	.db	0
      00001F 00 00 01 22           1854 	.dw	0,290
      000023 73 65 74 75 70        1855 	.ascii "setup"
      000028 00                    1856 	.db	0
      000029 00 00 01 3D           1857 	.dw	0,317
      00002D 6D 61 69 6E           1858 	.ascii "main"
      000031 00                    1859 	.db	0
      000032 00 00 02 0F           1860 	.dw	0,527
      000036 61 73 73 65 72 74 5F  1861 	.ascii "assert_failed"
             66 61 69 6C 65 64
      000043 00                    1862 	.db	0
      000044 00 00 00 00           1863 	.dw	0,0
      000048                       1864 Ldebug_pubnames_end:
                                   1865 
                                   1866 	.area .debug_frame (NOLOAD)
      000000 00 00                 1867 	.dw	0
      000002 00 0E                 1868 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000004                       1869 Ldebug_CIE0_start:
      000004 FF FF                 1870 	.dw	0xffff
      000006 FF FF                 1871 	.dw	0xffff
      000008 01                    1872 	.db	1
      000009 00                    1873 	.db	0
      00000A 01                    1874 	.uleb128	1
      00000B 7F                    1875 	.sleb128	-1
      00000C 09                    1876 	.db	9
      00000D 0C                    1877 	.db	12
      00000E 08                    1878 	.uleb128	8
      00000F 02                    1879 	.uleb128	2
      000010 89                    1880 	.db	137
      000011 01                    1881 	.uleb128	1
      000012                       1882 Ldebug_CIE0_end:
      000012 00 00 00 13           1883 	.dw	0,19
      000016 00 00 00 00           1884 	.dw	0,(Ldebug_CIE0_start-4)
      00001A 00 00 82 99           1885 	.dw	0,(Smain$assert_failed$145)	;initial loc
      00001E 00 00 00 04           1886 	.dw	0,Smain$assert_failed$149-Smain$assert_failed$145
      000022 01                    1887 	.db	1
      000023 00 00 82 99           1888 	.dw	0,(Smain$assert_failed$145)
      000027 0E                    1889 	.db	14
      000028 02                    1890 	.uleb128	2
                                   1891 
                                   1892 	.area .debug_frame (NOLOAD)
      000029 00 00                 1893 	.dw	0
      00002B 00 0E                 1894 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00002D                       1895 Ldebug_CIE1_start:
      00002D FF FF                 1896 	.dw	0xffff
      00002F FF FF                 1897 	.dw	0xffff
      000031 01                    1898 	.db	1
      000032 00                    1899 	.db	0
      000033 01                    1900 	.uleb128	1
      000034 7F                    1901 	.sleb128	-1
      000035 09                    1902 	.db	9
      000036 0C                    1903 	.db	12
      000037 08                    1904 	.uleb128	8
      000038 02                    1905 	.uleb128	2
      000039 89                    1906 	.db	137
      00003A 01                    1907 	.uleb128	1
      00003B                       1908 Ldebug_CIE1_end:
      00003B 00 00 00 B4           1909 	.dw	0,180
      00003F 00 00 00 29           1910 	.dw	0,(Ldebug_CIE1_start-4)
      000043 00 00 81 E4           1911 	.dw	0,(Smain$main$95)	;initial loc
      000047 00 00 00 B5           1912 	.dw	0,Smain$main$143-Smain$main$95
      00004B 01                    1913 	.db	1
      00004C 00 00 81 E4           1914 	.dw	0,(Smain$main$95)
      000050 0E                    1915 	.db	14
      000051 02                    1916 	.uleb128	2
      000052 01                    1917 	.db	1
      000053 00 00 81 E6           1918 	.dw	0,(Smain$main$96)
      000057 0E                    1919 	.db	14
      000058 34                    1920 	.uleb128	52
      000059 01                    1921 	.db	1
      00005A 00 00 81 F7           1922 	.dw	0,(Smain$main$101)
      00005E 0E                    1923 	.db	14
      00005F 35                    1924 	.uleb128	53
      000060 01                    1925 	.db	1
      000061 00 00 81 F9           1926 	.dw	0,(Smain$main$102)
      000065 0E                    1927 	.db	14
      000066 36                    1928 	.uleb128	54
      000067 01                    1929 	.db	1
      000068 00 00 81 FD           1930 	.dw	0,(Smain$main$103)
      00006C 0E                    1931 	.db	14
      00006D 34                    1932 	.uleb128	52
      00006E 01                    1933 	.db	1
      00006F 00 00 81 FF           1934 	.dw	0,(Smain$main$105)
      000073 0E                    1935 	.db	14
      000074 35                    1936 	.uleb128	53
      000075 01                    1937 	.db	1
      000076 00 00 82 01           1938 	.dw	0,(Smain$main$106)
      00007A 0E                    1939 	.db	14
      00007B 36                    1940 	.uleb128	54
      00007C 01                    1941 	.db	1
      00007D 00 00 82 05           1942 	.dw	0,(Smain$main$107)
      000081 0E                    1943 	.db	14
      000082 34                    1944 	.uleb128	52
      000083 01                    1945 	.db	1
      000084 00 00 82 44           1946 	.dw	0,(Smain$main$113)
      000088 0E                    1947 	.db	14
      000089 35                    1948 	.uleb128	53
      00008A 01                    1949 	.db	1
      00008B 00 00 82 46           1950 	.dw	0,(Smain$main$114)
      00008F 0E                    1951 	.db	14
      000090 36                    1952 	.uleb128	54
      000091 01                    1953 	.db	1
      000092 00 00 82 48           1954 	.dw	0,(Smain$main$115)
      000096 0E                    1955 	.db	14
      000097 37                    1956 	.uleb128	55
      000098 01                    1957 	.db	1
      000099 00 00 82 4D           1958 	.dw	0,(Smain$main$116)
      00009D 0E                    1959 	.db	14
      00009E 34                    1960 	.uleb128	52
      00009F 01                    1961 	.db	1
      0000A0 00 00 82 62           1962 	.dw	0,(Smain$main$121)
      0000A4 0E                    1963 	.db	14
      0000A5 34                    1964 	.uleb128	52
      0000A6 01                    1965 	.db	1
      0000A7 00 00 82 64           1966 	.dw	0,(Smain$main$124)
      0000AB 0E                    1967 	.db	14
      0000AC 35                    1968 	.uleb128	53
      0000AD 01                    1969 	.db	1
      0000AE 00 00 82 66           1970 	.dw	0,(Smain$main$125)
      0000B2 0E                    1971 	.db	14
      0000B3 36                    1972 	.uleb128	54
      0000B4 01                    1973 	.db	1
      0000B5 00 00 82 6A           1974 	.dw	0,(Smain$main$126)
      0000B9 0E                    1975 	.db	14
      0000BA 34                    1976 	.uleb128	52
      0000BB 01                    1977 	.db	1
      0000BC 00 00 82 73           1978 	.dw	0,(Smain$main$128)
      0000C0 0E                    1979 	.db	14
      0000C1 36                    1980 	.uleb128	54
      0000C2 01                    1981 	.db	1
      0000C3 00 00 82 75           1982 	.dw	0,(Smain$main$129)
      0000C7 0E                    1983 	.db	14
      0000C8 37                    1984 	.uleb128	55
      0000C9 01                    1985 	.db	1
      0000CA 00 00 82 77           1986 	.dw	0,(Smain$main$130)
      0000CE 0E                    1987 	.db	14
      0000CF 38                    1988 	.uleb128	56
      0000D0 01                    1989 	.db	1
      0000D1 00 00 82 7C           1990 	.dw	0,(Smain$main$131)
      0000D5 0E                    1991 	.db	14
      0000D6 3A                    1992 	.uleb128	58
      0000D7 01                    1993 	.db	1
      0000D8 00 00 82 81           1994 	.dw	0,(Smain$main$132)
      0000DC 0E                    1995 	.db	14
      0000DD 34                    1996 	.uleb128	52
      0000DE 01                    1997 	.db	1
      0000DF 00 00 82 84           1998 	.dw	0,(Smain$main$134)
      0000E3 0E                    1999 	.db	14
      0000E4 36                    2000 	.uleb128	54
      0000E5 01                    2001 	.db	1
      0000E6 00 00 82 88           2002 	.dw	0,(Smain$main$135)
      0000EA 0E                    2003 	.db	14
      0000EB 34                    2004 	.uleb128	52
      0000EC 01                    2005 	.db	1
      0000ED 00 00 82 98           2006 	.dw	0,(Smain$main$141)
      0000F1 0E                    2007 	.db	14
      0000F2 02                    2008 	.uleb128	2
                                   2009 
                                   2010 	.area .debug_frame (NOLOAD)
      0000F3 00 00                 2011 	.dw	0
      0000F5 00 0E                 2012 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0000F7                       2013 Ldebug_CIE2_start:
      0000F7 FF FF                 2014 	.dw	0xffff
      0000F9 FF FF                 2015 	.dw	0xffff
      0000FB 01                    2016 	.db	1
      0000FC 00                    2017 	.db	0
      0000FD 01                    2018 	.uleb128	1
      0000FE 7F                    2019 	.sleb128	-1
      0000FF 09                    2020 	.db	9
      000100 0C                    2021 	.db	12
      000101 08                    2022 	.uleb128	8
      000102 02                    2023 	.uleb128	2
      000103 89                    2024 	.db	137
      000104 01                    2025 	.uleb128	1
      000105                       2026 Ldebug_CIE2_end:
      000105 00 00 00 44           2027 	.dw	0,68
      000109 00 00 00 F3           2028 	.dw	0,(Ldebug_CIE2_start-4)
      00010D 00 00 81 C7           2029 	.dw	0,(Smain$setup$78)	;initial loc
      000111 00 00 00 1D           2030 	.dw	0,Smain$setup$93-Smain$setup$78
      000115 01                    2031 	.db	1
      000116 00 00 81 C7           2032 	.dw	0,(Smain$setup$78)
      00011A 0E                    2033 	.db	14
      00011B 02                    2034 	.uleb128	2
      00011C 01                    2035 	.db	1
      00011D 00 00 81 C9           2036 	.dw	0,(Smain$setup$80)
      000121 0E                    2037 	.db	14
      000122 03                    2038 	.uleb128	3
      000123 01                    2039 	.db	1
      000124 00 00 81 CD           2040 	.dw	0,(Smain$setup$81)
      000128 0E                    2041 	.db	14
      000129 02                    2042 	.uleb128	2
      00012A 01                    2043 	.db	1
      00012B 00 00 81 D5           2044 	.dw	0,(Smain$setup$85)
      00012F 0E                    2045 	.db	14
      000130 03                    2046 	.uleb128	3
      000131 01                    2047 	.db	1
      000132 00 00 81 D7           2048 	.dw	0,(Smain$setup$86)
      000136 0E                    2049 	.db	14
      000137 04                    2050 	.uleb128	4
      000138 01                    2051 	.db	1
      000139 00 00 81 D9           2052 	.dw	0,(Smain$setup$87)
      00013D 0E                    2053 	.db	14
      00013E 05                    2054 	.uleb128	5
      00013F 01                    2055 	.db	1
      000140 00 00 81 DB           2056 	.dw	0,(Smain$setup$88)
      000144 0E                    2057 	.db	14
      000145 06                    2058 	.uleb128	6
      000146 01                    2059 	.db	1
      000147 00 00 81 E0           2060 	.dw	0,(Smain$setup$89)
      00014B 0E                    2061 	.db	14
      00014C 02                    2062 	.uleb128	2
                                   2063 
                                   2064 	.area .debug_frame (NOLOAD)
      00014D 00 00                 2065 	.dw	0
      00014F 00 0E                 2066 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000151                       2067 Ldebug_CIE3_start:
      000151 FF FF                 2068 	.dw	0xffff
      000153 FF FF                 2069 	.dw	0xffff
      000155 01                    2070 	.db	1
      000156 00                    2071 	.db	0
      000157 01                    2072 	.uleb128	1
      000158 7F                    2073 	.sleb128	-1
      000159 09                    2074 	.db	9
      00015A 0C                    2075 	.db	12
      00015B 08                    2076 	.uleb128	8
      00015C 02                    2077 	.uleb128	2
      00015D 89                    2078 	.db	137
      00015E 01                    2079 	.uleb128	1
      00015F                       2080 Ldebug_CIE3_end:
      00015F 00 00 00 B4           2081 	.dw	0,180
      000163 00 00 01 4D           2082 	.dw	0,(Ldebug_CIE3_start-4)
      000167 00 00 81 87           2083 	.dw	0,(Smain$encoder_init$44)	;initial loc
      00016B 00 00 00 40           2084 	.dw	0,Smain$encoder_init$76-Smain$encoder_init$44
      00016F 01                    2085 	.db	1
      000170 00 00 81 87           2086 	.dw	0,(Smain$encoder_init$44)
      000174 0E                    2087 	.db	14
      000175 02                    2088 	.uleb128	2
      000176 01                    2089 	.db	1
      000177 00 00 81 89           2090 	.dw	0,(Smain$encoder_init$46)
      00017B 0E                    2091 	.db	14
      00017C 03                    2092 	.uleb128	3
      00017D 01                    2093 	.db	1
      00017E 00 00 81 8B           2094 	.dw	0,(Smain$encoder_init$47)
      000182 0E                    2095 	.db	14
      000183 04                    2096 	.uleb128	4
      000184 01                    2097 	.db	1
      000185 00 00 81 8D           2098 	.dw	0,(Smain$encoder_init$48)
      000189 0E                    2099 	.db	14
      00018A 05                    2100 	.uleb128	5
      00018B 01                    2101 	.db	1
      00018C 00 00 81 8F           2102 	.dw	0,(Smain$encoder_init$49)
      000190 0E                    2103 	.db	14
      000191 06                    2104 	.uleb128	6
      000192 01                    2105 	.db	1
      000193 00 00 81 94           2106 	.dw	0,(Smain$encoder_init$50)
      000197 0E                    2107 	.db	14
      000198 02                    2108 	.uleb128	2
      000199 01                    2109 	.db	1
      00019A 00 00 81 96           2110 	.dw	0,(Smain$encoder_init$52)
      00019E 0E                    2111 	.db	14
      00019F 03                    2112 	.uleb128	3
      0001A0 01                    2113 	.db	1
      0001A1 00 00 81 98           2114 	.dw	0,(Smain$encoder_init$53)
      0001A5 0E                    2115 	.db	14
      0001A6 04                    2116 	.uleb128	4
      0001A7 01                    2117 	.db	1
      0001A8 00 00 81 9A           2118 	.dw	0,(Smain$encoder_init$54)
      0001AC 0E                    2119 	.db	14
      0001AD 05                    2120 	.uleb128	5
      0001AE 01                    2121 	.db	1
      0001AF 00 00 81 9C           2122 	.dw	0,(Smain$encoder_init$55)
      0001B3 0E                    2123 	.db	14
      0001B4 06                    2124 	.uleb128	6
      0001B5 01                    2125 	.db	1
      0001B6 00 00 81 A1           2126 	.dw	0,(Smain$encoder_init$56)
      0001BA 0E                    2127 	.db	14
      0001BB 02                    2128 	.uleb128	2
      0001BC 01                    2129 	.db	1
      0001BD 00 00 81 A6           2130 	.dw	0,(Smain$encoder_init$59)
      0001C1 0E                    2131 	.db	14
      0001C2 03                    2132 	.uleb128	3
      0001C3 01                    2133 	.db	1
      0001C4 00 00 81 A8           2134 	.dw	0,(Smain$encoder_init$60)
      0001C8 0E                    2135 	.db	14
      0001C9 04                    2136 	.uleb128	4
      0001CA 01                    2137 	.db	1
      0001CB 00 00 81 AA           2138 	.dw	0,(Smain$encoder_init$61)
      0001CF 0E                    2139 	.db	14
      0001D0 05                    2140 	.uleb128	5
      0001D1 01                    2141 	.db	1
      0001D2 00 00 81 AC           2142 	.dw	0,(Smain$encoder_init$62)
      0001D6 0E                    2143 	.db	14
      0001D7 06                    2144 	.uleb128	6
      0001D8 01                    2145 	.db	1
      0001D9 00 00 81 AE           2146 	.dw	0,(Smain$encoder_init$63)
      0001DD 0E                    2147 	.db	14
      0001DE 07                    2148 	.uleb128	7
      0001DF 01                    2149 	.db	1
      0001E0 00 00 81 B0           2150 	.dw	0,(Smain$encoder_init$64)
      0001E4 0E                    2151 	.db	14
      0001E5 08                    2152 	.uleb128	8
      0001E6 01                    2153 	.db	1
      0001E7 00 00 81 B5           2154 	.dw	0,(Smain$encoder_init$65)
      0001EB 0E                    2155 	.db	14
      0001EC 02                    2156 	.uleb128	2
      0001ED 01                    2157 	.db	1
      0001EE 00 00 81 B7           2158 	.dw	0,(Smain$encoder_init$67)
      0001F2 0E                    2159 	.db	14
      0001F3 03                    2160 	.uleb128	3
      0001F4 01                    2161 	.db	1
      0001F5 00 00 81 B9           2162 	.dw	0,(Smain$encoder_init$68)
      0001F9 0E                    2163 	.db	14
      0001FA 04                    2164 	.uleb128	4
      0001FB 01                    2165 	.db	1
      0001FC 00 00 81 BB           2166 	.dw	0,(Smain$encoder_init$69)
      000200 0E                    2167 	.db	14
      000201 05                    2168 	.uleb128	5
      000202 01                    2169 	.db	1
      000203 00 00 81 C0           2170 	.dw	0,(Smain$encoder_init$70)
      000207 0E                    2171 	.db	14
      000208 02                    2172 	.uleb128	2
      000209 01                    2173 	.db	1
      00020A 00 00 81 C2           2174 	.dw	0,(Smain$encoder_init$72)
      00020E 0E                    2175 	.db	14
      00020F 03                    2176 	.uleb128	3
      000210 01                    2177 	.db	1
      000211 00 00 81 C6           2178 	.dw	0,(Smain$encoder_init$73)
      000215 0E                    2179 	.db	14
      000216 02                    2180 	.uleb128	2
                                   2181 
                                   2182 	.area .debug_frame (NOLOAD)
      000217 00 00                 2183 	.dw	0
      000219 00 0E                 2184 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      00021B                       2185 Ldebug_CIE4_start:
      00021B FF FF                 2186 	.dw	0xffff
      00021D FF FF                 2187 	.dw	0xffff
      00021F 01                    2188 	.db	1
      000220 00                    2189 	.db	0
      000221 01                    2190 	.uleb128	1
      000222 7F                    2191 	.sleb128	-1
      000223 09                    2192 	.db	9
      000224 0C                    2193 	.db	12
      000225 08                    2194 	.uleb128	8
      000226 02                    2195 	.uleb128	2
      000227 89                    2196 	.db	137
      000228 01                    2197 	.uleb128	1
      000229                       2198 Ldebug_CIE4_end:
      000229 00 00 00 75           2199 	.dw	0,117
      00022D 00 00 02 17           2200 	.dw	0,(Ldebug_CIE4_start-4)
      000231 00 00 81 4F           2201 	.dw	0,(Smain$_delay_us$13)	;initial loc
      000235 00 00 00 38           2202 	.dw	0,Smain$_delay_us$42-Smain$_delay_us$13
      000239 01                    2203 	.db	1
      00023A 00 00 81 4F           2204 	.dw	0,(Smain$_delay_us$13)
      00023E 0E                    2205 	.db	14
      00023F 02                    2206 	.uleb128	2
      000240 01                    2207 	.db	1
      000241 00 00 81 54           2208 	.dw	0,(Smain$_delay_us$15)
      000245 0E                    2209 	.db	14
      000246 04                    2210 	.uleb128	4
      000247 01                    2211 	.db	1
      000248 00 00 81 55           2212 	.dw	0,(Smain$_delay_us$16)
      00024C 0E                    2213 	.db	14
      00024D 06                    2214 	.uleb128	6
      00024E 01                    2215 	.db	1
      00024F 00 00 81 57           2216 	.dw	0,(Smain$_delay_us$17)
      000253 0E                    2217 	.db	14
      000254 07                    2218 	.uleb128	7
      000255 01                    2219 	.db	1
      000256 00 00 81 59           2220 	.dw	0,(Smain$_delay_us$18)
      00025A 0E                    2221 	.db	14
      00025B 08                    2222 	.uleb128	8
      00025C 01                    2223 	.db	1
      00025D 00 00 81 5B           2224 	.dw	0,(Smain$_delay_us$19)
      000261 0E                    2225 	.db	14
      000262 09                    2226 	.uleb128	9
      000263 01                    2227 	.db	1
      000264 00 00 81 5D           2228 	.dw	0,(Smain$_delay_us$20)
      000268 0E                    2229 	.db	14
      000269 0A                    2230 	.uleb128	10
      00026A 01                    2231 	.db	1
      00026B 00 00 81 62           2232 	.dw	0,(Smain$_delay_us$21)
      00026F 0E                    2233 	.db	14
      000270 02                    2234 	.uleb128	2
      000271 01                    2235 	.db	1
      000272 00 00 81 64           2236 	.dw	0,(Smain$_delay_us$23)
      000276 0E                    2237 	.db	14
      000277 03                    2238 	.uleb128	3
      000278 01                    2239 	.db	1
      000279 00 00 81 66           2240 	.dw	0,(Smain$_delay_us$24)
      00027D 0E                    2241 	.db	14
      00027E 04                    2242 	.uleb128	4
      00027F 01                    2243 	.db	1
      000280 00 00 81 68           2244 	.dw	0,(Smain$_delay_us$25)
      000284 0E                    2245 	.db	14
      000285 05                    2246 	.uleb128	5
      000286 01                    2247 	.db	1
      000287 00 00 81 6A           2248 	.dw	0,(Smain$_delay_us$26)
      00028B 0E                    2249 	.db	14
      00028C 06                    2250 	.uleb128	6
      00028D 01                    2251 	.db	1
      00028E 00 00 81 6B           2252 	.dw	0,(Smain$_delay_us$27)
      000292 0E                    2253 	.db	14
      000293 08                    2254 	.uleb128	8
      000294 01                    2255 	.db	1
      000295 00 00 81 6D           2256 	.dw	0,(Smain$_delay_us$28)
      000299 0E                    2257 	.db	14
      00029A 0A                    2258 	.uleb128	10
      00029B 01                    2259 	.db	1
      00029C 00 00 81 72           2260 	.dw	0,(Smain$_delay_us$29)
      0002A0 0E                    2261 	.db	14
      0002A1 02                    2262 	.uleb128	2
                                   2263 
                                   2264 	.area .debug_frame (NOLOAD)
      0002A2 00 00                 2265 	.dw	0
      0002A4 00 0E                 2266 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0002A6                       2267 Ldebug_CIE5_start:
      0002A6 FF FF                 2268 	.dw	0xffff
      0002A8 FF FF                 2269 	.dw	0xffff
      0002AA 01                    2270 	.db	1
      0002AB 00                    2271 	.db	0
      0002AC 01                    2272 	.uleb128	1
      0002AD 7F                    2273 	.sleb128	-1
      0002AE 09                    2274 	.db	9
      0002AF 0C                    2275 	.db	12
      0002B0 08                    2276 	.uleb128	8
      0002B1 02                    2277 	.uleb128	2
      0002B2 89                    2278 	.db	137
      0002B3 01                    2279 	.uleb128	1
      0002B4                       2280 Ldebug_CIE5_end:
      0002B4 00 00 00 13           2281 	.dw	0,19
      0002B8 00 00 02 A2           2282 	.dw	0,(Ldebug_CIE5_start-4)
      0002BC 00 00 81 42           2283 	.dw	0,(Smain$_delay_cycl$1)	;initial loc
      0002C0 00 00 00 0D           2284 	.dw	0,Smain$_delay_cycl$11-Smain$_delay_cycl$1
      0002C4 01                    2285 	.db	1
      0002C5 00 00 81 42           2286 	.dw	0,(Smain$_delay_cycl$1)
      0002C9 0E                    2287 	.db	14
      0002CA 02                    2288 	.uleb128	2
