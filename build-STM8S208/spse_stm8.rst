                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module spse_stm8
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC2_GetConversionValue
                                     12 	.globl _ADC_get
                                     13 	.globl _ADC2_Select_Channel
                                     14 	.globl _ADC2_AlignConfig
                                     15 	.globl _ADC2_Startup_Wait
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                           000000    53 	Sspse_stm8$_delay_cycl$0 ==.
                                     54 ;	inc/delay.h: 14: static @inline void _delay_cycl( unsigned short __ticks )
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function _delay_cycl
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      008300                         61 __delay_cycl:
                           000000    62 	Sspse_stm8$_delay_cycl$1 ==.
                           000000    63 	Sspse_stm8$_delay_cycl$2 ==.
                                     64 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                     65 ;	genInline
      008300 9D               [ 1]   66 	nop
      008301 9D               [ 1]   67 	nop
                           000002    68 	Sspse_stm8$_delay_cycl$3 ==.
                                     69 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                     70 ; genAssign
      008302 1E 03            [ 2]   71 	ldw	x, (0x03, sp)
                                     72 ; genLabel
      008304                         73 00101$:
                           000004    74 	Sspse_stm8$_delay_cycl$4 ==.
                           000004    75 	Sspse_stm8$_delay_cycl$5 ==.
                                     76 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                     77 ; genMinus
      008304 5A               [ 2]   78 	decw	x
                           000005    79 	Sspse_stm8$_delay_cycl$6 ==.
                           000005    80 	Sspse_stm8$_delay_cycl$7 ==.
                                     81 ;	inc/delay.h: 28: } while ( __ticks );
                                     82 ; genIfx
      008305 5D               [ 2]   83 	tnzw	x
      008306 27 03            [ 1]   84 	jreq	00117$
      008308 CC 83 04         [ 2]   85 	jp	00101$
      00830B                         86 00117$:
                           00000B    87 	Sspse_stm8$_delay_cycl$8 ==.
                                     88 ;	inc/delay.h: 29: __asm__("nop\n");
                                     89 ;	genInline
      00830B 9D               [ 1]   90 	nop
                                     91 ; genLabel
      00830C                         92 00104$:
                           00000C    93 	Sspse_stm8$_delay_cycl$9 ==.
                                     94 ;	inc/delay.h: 39: }
                                     95 ; genEndFunction
                           00000C    96 	Sspse_stm8$_delay_cycl$10 ==.
                           00000C    97 	XFspse_stm8$_delay_cycl$0$0 ==.
      00830C 81               [ 4]   98 	ret
                           00000D    99 	Sspse_stm8$_delay_cycl$11 ==.
                           00000D   100 	Sspse_stm8$_delay_us$12 ==.
                                    101 ;	inc/delay.h: 41: static @inline void _delay_us( const unsigned short __us ){
                                    102 ; genLabel
                                    103 ;	-----------------------------------------
                                    104 ;	 function _delay_us
                                    105 ;	-----------------------------------------
                                    106 ;	Register assignment might be sub-optimal.
                                    107 ;	Stack space usage: 0 bytes.
      00830D                        108 __delay_us:
                           00000D   109 	Sspse_stm8$_delay_us$13 ==.
                           00000D   110 	Sspse_stm8$_delay_us$14 ==.
                                    111 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    112 ; genCast
                                    113 ; genAssign
      00830D 16 03            [ 2]  114 	ldw	y, (0x03, sp)
      00830F 5F               [ 1]  115 	clrw	x
                                    116 ; genIPush
      008310 90 89            [ 2]  117 	pushw	y
                           000012   118 	Sspse_stm8$_delay_us$15 ==.
      008312 89               [ 2]  119 	pushw	x
                           000013   120 	Sspse_stm8$_delay_us$16 ==.
                                    121 ; genIPush
      008313 4B 00            [ 1]  122 	push	#0x00
                           000015   123 	Sspse_stm8$_delay_us$17 ==.
      008315 4B 24            [ 1]  124 	push	#0x24
                           000017   125 	Sspse_stm8$_delay_us$18 ==.
      008317 4B F4            [ 1]  126 	push	#0xf4
                           000019   127 	Sspse_stm8$_delay_us$19 ==.
      008319 4B 00            [ 1]  128 	push	#0x00
                           00001B   129 	Sspse_stm8$_delay_us$20 ==.
                                    130 ; genCall
      00831B CD BA F8         [ 4]  131 	call	__mullong
      00831E 5B 08            [ 2]  132 	addw	sp, #8
                           000020   133 	Sspse_stm8$_delay_us$21 ==.
                           000020   134 	Sspse_stm8$_delay_us$22 ==.
                                    135 ; genCast
                                    136 ; genAssign
                                    137 ; genIPush
      008320 4B 40            [ 1]  138 	push	#0x40
                           000022   139 	Sspse_stm8$_delay_us$23 ==.
      008322 4B 42            [ 1]  140 	push	#0x42
                           000024   141 	Sspse_stm8$_delay_us$24 ==.
      008324 4B 0F            [ 1]  142 	push	#0x0f
                           000026   143 	Sspse_stm8$_delay_us$25 ==.
      008326 4B 00            [ 1]  144 	push	#0x00
                           000028   145 	Sspse_stm8$_delay_us$26 ==.
                                    146 ; genIPush
      008328 89               [ 2]  147 	pushw	x
                           000029   148 	Sspse_stm8$_delay_us$27 ==.
      008329 90 89            [ 2]  149 	pushw	y
                           00002B   150 	Sspse_stm8$_delay_us$28 ==.
                                    151 ; genCall
      00832B CD BA 9E         [ 4]  152 	call	__divulong
      00832E 5B 08            [ 2]  153 	addw	sp, #8
                           000030   154 	Sspse_stm8$_delay_us$29 ==.
                           000030   155 	Sspse_stm8$_delay_us$30 ==.
                                    156 ; genRightShiftLiteral
      008330 90 54            [ 2]  157 	srlw	y
      008332 56               [ 2]  158 	rrcw	x
      008333 90 54            [ 2]  159 	srlw	y
      008335 56               [ 2]  160 	rrcw	x
      008336 90 54            [ 2]  161 	srlw	y
      008338 56               [ 2]  162 	rrcw	x
                                    163 ; genCast
                                    164 ; genAssign
                           000039   165 	Sspse_stm8$_delay_us$31 ==.
                                    166 ; genPlus
      008339 5C               [ 1]  167 	incw	x
                                    168 ; genAssign
                                    169 ; genAssign
                           00003A   170 	Sspse_stm8$_delay_us$32 ==.
                                    171 ; genAssign
                           00003A   172 	Sspse_stm8$_delay_us$33 ==.
                                    173 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    174 ;	genInline
      00833A 9D               [ 1]  175 	nop
      00833B 9D               [ 1]  176 	nop
                           00003C   177 	Sspse_stm8$_delay_us$34 ==.
                           00003C   178 	Sspse_stm8$_delay_us$35 ==.
                                    179 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    180 ; genAssign
                                    181 ; genLabel
      00833C                        182 00101$:
                           00003C   183 	Sspse_stm8$_delay_us$36 ==.
                                    184 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    185 ; genMinus
      00833C 5A               [ 2]  186 	decw	x
                           00003D   187 	Sspse_stm8$_delay_us$37 ==.
                                    188 ;	inc/delay.h: 28: } while ( __ticks );
                                    189 ; genIfx
      00833D 5D               [ 2]  190 	tnzw	x
      00833E 27 03            [ 1]  191 	jreq	00118$
      008340 CC 83 3C         [ 2]  192 	jp	00101$
      008343                        193 00118$:
                                    194 ;	inc/delay.h: 29: __asm__("nop\n");
                                    195 ;	genInline
      008343 9D               [ 1]  196 	nop
                           000044   197 	Sspse_stm8$_delay_us$38 ==.
                           000044   198 	Sspse_stm8$_delay_us$39 ==.
                                    199 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    200 ; genLabel
      008344                        201 00105$:
                           000044   202 	Sspse_stm8$_delay_us$40 ==.
                                    203 ;	inc/delay.h: 43: }
                                    204 ; genEndFunction
                           000044   205 	Sspse_stm8$_delay_us$41 ==.
                           000044   206 	XFspse_stm8$_delay_us$0$0 ==.
      008344 81               [ 4]  207 	ret
                           000045   208 	Sspse_stm8$_delay_us$42 ==.
                           000045   209 	Sspse_stm8$ADC_get$43 ==.
                                    210 ;	./src/spse_stm8.c: 10: uint16_t ADC_get(ADC2_Channel_TypeDef ADC2_Channel){
                                    211 ; genLabel
                                    212 ;	-----------------------------------------
                                    213 ;	 function ADC_get
                                    214 ;	-----------------------------------------
                                    215 ;	Register assignment is optimal.
                                    216 ;	Stack space usage: 0 bytes.
      008345                        217 _ADC_get:
                           000045   218 	Sspse_stm8$ADC_get$44 ==.
                           000045   219 	Sspse_stm8$ADC_get$45 ==.
                                    220 ;	./src/spse_stm8.c: 11: ADC2_Select_Channel(ADC2_Channel); // vybere kanál / nastavuje analogový multiplexer
                                    221 ; genIPush
      008345 7B 03            [ 1]  222 	ld	a, (0x03, sp)
      008347 88               [ 1]  223 	push	a
                           000048   224 	Sspse_stm8$ADC_get$46 ==.
                                    225 ; genCall
      008348 CD 83 69         [ 4]  226 	call	_ADC2_Select_Channel
      00834B 84               [ 1]  227 	pop	a
                           00004C   228 	Sspse_stm8$ADC_get$47 ==.
                           00004C   229 	Sspse_stm8$ADC_get$48 ==.
                                    230 ;	./src/spse_stm8.c: 12: ADC2->CR1 |= ADC2_CR1_ADON; // Start Conversion (ADON must be SET before => ADC must be enabled !)
                                    231 ; genPointerGet
      00834C C6 54 01         [ 1]  232 	ld	a, 0x5401
                                    233 ; genOr
      00834F AA 01            [ 1]  234 	or	a, #0x01
                                    235 ; genPointerSet
      008351 C7 54 01         [ 1]  236 	ld	0x5401, a
                           000054   237 	Sspse_stm8$ADC_get$49 ==.
                                    238 ;	./src/spse_stm8.c: 13: while(!(ADC2->CSR & ADC2_CSR_EOC)); // èeká na dokonèení pøevodu (End Of Conversion)
                                    239 ; genLabel
      008354                        240 00101$:
                                    241 ; genPointerGet
      008354 C6 54 00         [ 1]  242 	ld	a, 0x5400
                                    243 ; genAnd
      008357 4D               [ 1]  244 	tnz	a
      008358 2B 03            [ 1]  245 	jrmi	00116$
      00835A CC 83 54         [ 2]  246 	jp	00101$
      00835D                        247 00116$:
                                    248 ; skipping generated iCode
                           00005D   249 	Sspse_stm8$ADC_get$50 ==.
                                    250 ;	./src/spse_stm8.c: 14: ADC2->CSR &=~ADC2_CSR_EOC; // maže vlajku 
                                    251 ; genPointerGet
      00835D C6 54 00         [ 1]  252 	ld	a, 0x5400
                                    253 ; genAnd
      008360 A4 7F            [ 1]  254 	and	a, #0x7f
                                    255 ; genPointerSet
      008362 C7 54 00         [ 1]  256 	ld	0x5400, a
                           000065   257 	Sspse_stm8$ADC_get$51 ==.
                                    258 ;	./src/spse_stm8.c: 15: return ADC2_GetConversionValue(); // vrací výsledek
                                    259 ; genCall
      008365 CC 9F A9         [ 2]  260 	jp	_ADC2_GetConversionValue
                                    261 ; genReturn
                                    262 ; genLabel
      008368                        263 00104$:
                           000068   264 	Sspse_stm8$ADC_get$52 ==.
                                    265 ;	./src/spse_stm8.c: 16: }
                                    266 ; genEndFunction
                           000068   267 	Sspse_stm8$ADC_get$53 ==.
                           000068   268 	XG$ADC_get$0$0 ==.
      008368 81               [ 4]  269 	ret
                           000069   270 	Sspse_stm8$ADC_get$54 ==.
                           000069   271 	Sspse_stm8$ADC2_Select_Channel$55 ==.
                                    272 ;	./src/spse_stm8.c: 21: void ADC2_Select_Channel(ADC2_Channel_TypeDef ADC2_Channel){
                                    273 ; genLabel
                                    274 ;	-----------------------------------------
                                    275 ;	 function ADC2_Select_Channel
                                    276 ;	-----------------------------------------
                                    277 ;	Register assignment is optimal.
                                    278 ;	Stack space usage: 1 bytes.
      008369                        279 _ADC2_Select_Channel:
                           000069   280 	Sspse_stm8$ADC2_Select_Channel$56 ==.
      008369 88               [ 1]  281 	push	a
                           00006A   282 	Sspse_stm8$ADC2_Select_Channel$57 ==.
                           00006A   283 	Sspse_stm8$ADC2_Select_Channel$58 ==.
                                    284 ;	./src/spse_stm8.c: 22: uint8_t tmp = (ADC2->CSR) & (~ADC2_CSR_CH);
                                    285 ; genPointerGet
      00836A C6 54 00         [ 1]  286 	ld	a, 0x5400
                                    287 ; genAnd
      00836D A4 F0            [ 1]  288 	and	a, #0xf0
      00836F 6B 01            [ 1]  289 	ld	(0x01, sp), a
                           000071   290 	Sspse_stm8$ADC2_Select_Channel$59 ==.
                                    291 ;	./src/spse_stm8.c: 23: tmp |= ADC2_Channel | ADC2_CSR_EOC;
                                    292 ; genOr
      008371 7B 04            [ 1]  293 	ld	a, (0x04, sp)
      008373 AA 80            [ 1]  294 	or	a, #0x80
                                    295 ; genOr
      008375 1A 01            [ 1]  296 	or	a, (0x01, sp)
                                    297 ; genAssign
                           000077   298 	Sspse_stm8$ADC2_Select_Channel$60 ==.
                                    299 ;	./src/spse_stm8.c: 24: ADC2->CSR = tmp;
                                    300 ; genPointerSet
      008377 C7 54 00         [ 1]  301 	ld	0x5400, a
                                    302 ; genLabel
      00837A                        303 00101$:
                           00007A   304 	Sspse_stm8$ADC2_Select_Channel$61 ==.
                                    305 ;	./src/spse_stm8.c: 25: }
                                    306 ; genEndFunction
      00837A 84               [ 1]  307 	pop	a
                           00007B   308 	Sspse_stm8$ADC2_Select_Channel$62 ==.
                           00007B   309 	Sspse_stm8$ADC2_Select_Channel$63 ==.
                           00007B   310 	XG$ADC2_Select_Channel$0$0 ==.
      00837B 81               [ 4]  311 	ret
                           00007C   312 	Sspse_stm8$ADC2_Select_Channel$64 ==.
                           00007C   313 	Sspse_stm8$ADC2_AlignConfig$65 ==.
                                    314 ;	./src/spse_stm8.c: 30: void ADC2_AlignConfig(ADC2_Align_TypeDef ADC2_Align){
                                    315 ; genLabel
                                    316 ;	-----------------------------------------
                                    317 ;	 function ADC2_AlignConfig
                                    318 ;	-----------------------------------------
                                    319 ;	Register assignment is optimal.
                                    320 ;	Stack space usage: 0 bytes.
      00837C                        321 _ADC2_AlignConfig:
                           00007C   322 	Sspse_stm8$ADC2_AlignConfig$66 ==.
                           00007C   323 	Sspse_stm8$ADC2_AlignConfig$67 ==.
                                    324 ;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    325 ; genPointerGet
      00837C C6 54 02         [ 1]  326 	ld	a, 0x5402
                           00007F   327 	Sspse_stm8$ADC2_AlignConfig$68 ==.
                                    328 ;	./src/spse_stm8.c: 31: if(ADC2_Align){
                                    329 ; genIfx
      00837F 0D 03            [ 1]  330 	tnz	(0x03, sp)
      008381 26 03            [ 1]  331 	jrne	00111$
      008383 CC 83 8E         [ 2]  332 	jp	00102$
      008386                        333 00111$:
                           000086   334 	Sspse_stm8$ADC2_AlignConfig$69 ==.
                           000086   335 	Sspse_stm8$ADC2_AlignConfig$70 ==.
                                    336 ;	./src/spse_stm8.c: 32: ADC2->CR2 |= (uint8_t)(ADC2_Align);
                                    337 ; genOr
      008386 1A 03            [ 1]  338 	or	a, (0x03, sp)
                                    339 ; genPointerSet
      008388 C7 54 02         [ 1]  340 	ld	0x5402, a
                           00008B   341 	Sspse_stm8$ADC2_AlignConfig$71 ==.
                                    342 ; genGoto
      00838B CC 83 93         [ 2]  343 	jp	00104$
                                    344 ; genLabel
      00838E                        345 00102$:
                           00008E   346 	Sspse_stm8$ADC2_AlignConfig$72 ==.
                           00008E   347 	Sspse_stm8$ADC2_AlignConfig$73 ==.
                                    348 ;	./src/spse_stm8.c: 34: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
                                    349 ; genAnd
      00838E A4 F7            [ 1]  350 	and	a, #0xf7
                                    351 ; genPointerSet
      008390 C7 54 02         [ 1]  352 	ld	0x5402, a
                           000093   353 	Sspse_stm8$ADC2_AlignConfig$74 ==.
                                    354 ; genLabel
      008393                        355 00104$:
                           000093   356 	Sspse_stm8$ADC2_AlignConfig$75 ==.
                                    357 ;	./src/spse_stm8.c: 36: }
                                    358 ; genEndFunction
                           000093   359 	Sspse_stm8$ADC2_AlignConfig$76 ==.
                           000093   360 	XG$ADC2_AlignConfig$0$0 ==.
      008393 81               [ 4]  361 	ret
                           000094   362 	Sspse_stm8$ADC2_AlignConfig$77 ==.
                           000094   363 	Sspse_stm8$ADC2_Startup_Wait$78 ==.
                                    364 ;	./src/spse_stm8.c: 40: void ADC2_Startup_Wait(void){
                                    365 ; genLabel
                                    366 ;	-----------------------------------------
                                    367 ;	 function ADC2_Startup_Wait
                                    368 ;	-----------------------------------------
                                    369 ;	Register assignment is optimal.
                                    370 ;	Stack space usage: 0 bytes.
      008394                        371 _ADC2_Startup_Wait:
                           000094   372 	Sspse_stm8$ADC2_Startup_Wait$79 ==.
                           000094   373 	Sspse_stm8$ADC2_Startup_Wait$80 ==.
                                    374 ;	inc/delay.h: 42: _delay_cycl( (unsigned short)( T_COUNT(__us) ));
                                    375 ; genAssign
      008394 AE 00 0F         [ 2]  376 	ldw	x, #0x000f
                           000097   377 	Sspse_stm8$ADC2_Startup_Wait$81 ==.
                                    378 ;	inc/delay.h: 25: __asm__("nop\n nop\n"); 
                                    379 ;	genInline
      008397 9D               [ 1]  380 	nop
      008398 9D               [ 1]  381 	nop
                           000099   382 	Sspse_stm8$ADC2_Startup_Wait$82 ==.
                           000099   383 	Sspse_stm8$ADC2_Startup_Wait$83 ==.
                                    384 ;	inc/delay.h: 26: do { 		// ASM: ldw X, #tick; lab$: decw X; tnzw X; jrne lab$
                                    385 ; genAssign
                                    386 ; genLabel
      008399                        387 00101$:
                           000099   388 	Sspse_stm8$ADC2_Startup_Wait$84 ==.
                                    389 ;	inc/delay.h: 27: __ticks--;//      2c;                 1c;     2c    ; 1/2c   
                                    390 ; genMinus
      008399 5A               [ 2]  391 	decw	x
                           00009A   392 	Sspse_stm8$ADC2_Startup_Wait$85 ==.
                                    393 ;	inc/delay.h: 28: } while ( __ticks );
                                    394 ; genIfx
      00839A 5D               [ 2]  395 	tnzw	x
      00839B 27 03            [ 1]  396 	jreq	00119$
      00839D CC 83 99         [ 2]  397 	jp	00101$
      0083A0                        398 00119$:
                                    399 ;	inc/delay.h: 29: __asm__("nop\n");
                                    400 ;	genInline
      0083A0 9D               [ 1]  401 	nop
                           0000A1   402 	Sspse_stm8$ADC2_Startup_Wait$86 ==.
                           0000A1   403 	Sspse_stm8$ADC2_Startup_Wait$87 ==.
                                    404 ;	./src/spse_stm8.c: 41: _delay_us(ADC_TSTAB);
                                    405 ; genLabel
      0083A1                        406 00106$:
                           0000A1   407 	Sspse_stm8$ADC2_Startup_Wait$88 ==.
                                    408 ;	./src/spse_stm8.c: 42: }
                                    409 ; genEndFunction
                           0000A1   410 	Sspse_stm8$ADC2_Startup_Wait$89 ==.
                           0000A1   411 	XG$ADC2_Startup_Wait$0$0 ==.
      0083A1 81               [ 4]  412 	ret
                           0000A2   413 	Sspse_stm8$ADC2_Startup_Wait$90 ==.
                                    414 	.area CODE
                                    415 	.area CONST
                                    416 	.area INITIALIZER
                                    417 	.area CABS (ABS)
                                    418 
                                    419 	.area .debug_line (NOLOAD)
      0002FA 00 00 01 95            420 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0002FE                        421 Ldebug_line_start:
      0002FE 00 02                  422 	.dw	2
      000300 00 00 00 81            423 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000304 01                     424 	.db	1
      000305 01                     425 	.db	1
      000306 FB                     426 	.db	-5
      000307 0F                     427 	.db	15
      000308 0A                     428 	.db	10
      000309 00                     429 	.db	0
      00030A 01                     430 	.db	1
      00030B 01                     431 	.db	1
      00030C 01                     432 	.db	1
      00030D 01                     433 	.db	1
      00030E 00                     434 	.db	0
      00030F 00                     435 	.db	0
      000310 00                     436 	.db	0
      000311 01                     437 	.db	1
      000312 43 3A 5C 50 72 6F 67   438 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00033A 00                     439 	.db	0
      00033B 43 3A 5C 50 72 6F 67   440 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00035E 00                     441 	.db	0
      00035F 00                     442 	.db	0
      000360 69 6E 63 2F 64 65 6C   443 	.ascii "inc/delay.h"
             61 79 2E 68
      00036B 00                     444 	.db	0
      00036C 00                     445 	.uleb128	0
      00036D 00                     446 	.uleb128	0
      00036E 00                     447 	.uleb128	0
      00036F 2E 2F 73 72 63 2F 73   448 	.ascii "./src/spse_stm8.c"
             70 73 65 5F 73 74 6D
             38 2E 63
      000380 00                     449 	.db	0
      000381 00                     450 	.uleb128	0
      000382 00                     451 	.uleb128	0
      000383 00                     452 	.uleb128	0
      000384 00                     453 	.db	0
      000385                        454 Ldebug_line_stmt:
      000385 00                     455 	.db	0
      000386 05                     456 	.uleb128	5
      000387 02                     457 	.db	2
      000388 00 00 83 00            458 	.dw	0,(Sspse_stm8$_delay_cycl$0)
      00038C 03                     459 	.db	3
      00038D 0D                     460 	.sleb128	13
      00038E 01                     461 	.db	1
      00038F 09                     462 	.db	9
      000390 00 00                  463 	.dw	Sspse_stm8$_delay_cycl$2-Sspse_stm8$_delay_cycl$0
      000392 03                     464 	.db	3
      000393 0B                     465 	.sleb128	11
      000394 01                     466 	.db	1
      000395 09                     467 	.db	9
      000396 00 02                  468 	.dw	Sspse_stm8$_delay_cycl$3-Sspse_stm8$_delay_cycl$2
      000398 03                     469 	.db	3
      000399 01                     470 	.sleb128	1
      00039A 01                     471 	.db	1
      00039B 09                     472 	.db	9
      00039C 00 02                  473 	.dw	Sspse_stm8$_delay_cycl$5-Sspse_stm8$_delay_cycl$3
      00039E 03                     474 	.db	3
      00039F 01                     475 	.sleb128	1
      0003A0 01                     476 	.db	1
      0003A1 09                     477 	.db	9
      0003A2 00 01                  478 	.dw	Sspse_stm8$_delay_cycl$7-Sspse_stm8$_delay_cycl$5
      0003A4 03                     479 	.db	3
      0003A5 01                     480 	.sleb128	1
      0003A6 01                     481 	.db	1
      0003A7 09                     482 	.db	9
      0003A8 00 06                  483 	.dw	Sspse_stm8$_delay_cycl$8-Sspse_stm8$_delay_cycl$7
      0003AA 03                     484 	.db	3
      0003AB 01                     485 	.sleb128	1
      0003AC 01                     486 	.db	1
      0003AD 09                     487 	.db	9
      0003AE 00 01                  488 	.dw	Sspse_stm8$_delay_cycl$9-Sspse_stm8$_delay_cycl$8
      0003B0 03                     489 	.db	3
      0003B1 0A                     490 	.sleb128	10
      0003B2 01                     491 	.db	1
      0003B3 09                     492 	.db	9
      0003B4 00 01                  493 	.dw	1+Sspse_stm8$_delay_cycl$10-Sspse_stm8$_delay_cycl$9
      0003B6 00                     494 	.db	0
      0003B7 01                     495 	.uleb128	1
      0003B8 01                     496 	.db	1
      0003B9 00                     497 	.db	0
      0003BA 05                     498 	.uleb128	5
      0003BB 02                     499 	.db	2
      0003BC 00 00 83 0D            500 	.dw	0,(Sspse_stm8$_delay_us$12)
      0003C0 03                     501 	.db	3
      0003C1 28                     502 	.sleb128	40
      0003C2 01                     503 	.db	1
      0003C3 09                     504 	.db	9
      0003C4 00 2F                  505 	.dw	Sspse_stm8$_delay_us$35-Sspse_stm8$_delay_us$12
      0003C6 03                     506 	.db	3
      0003C7 71                     507 	.sleb128	-15
      0003C8 01                     508 	.db	1
      0003C9 09                     509 	.db	9
      0003CA 00 08                  510 	.dw	Sspse_stm8$_delay_us$39-Sspse_stm8$_delay_us$35
      0003CC 03                     511 	.db	3
      0003CD 10                     512 	.sleb128	16
      0003CE 01                     513 	.db	1
      0003CF 09                     514 	.db	9
      0003D0 00 00                  515 	.dw	Sspse_stm8$_delay_us$40-Sspse_stm8$_delay_us$39
      0003D2 03                     516 	.db	3
      0003D3 01                     517 	.sleb128	1
      0003D4 01                     518 	.db	1
      0003D5 09                     519 	.db	9
      0003D6 00 01                  520 	.dw	1+Sspse_stm8$_delay_us$41-Sspse_stm8$_delay_us$40
      0003D8 00                     521 	.db	0
      0003D9 01                     522 	.uleb128	1
      0003DA 01                     523 	.db	1
      0003DB 04                     524 	.db	4
      0003DC 02                     525 	.uleb128	2
      0003DD 00                     526 	.db	0
      0003DE 05                     527 	.uleb128	5
      0003DF 02                     528 	.db	2
      0003E0 00 00 83 45            529 	.dw	0,(Sspse_stm8$ADC_get$43)
      0003E4 03                     530 	.db	3
      0003E5 09                     531 	.sleb128	9
      0003E6 01                     532 	.db	1
      0003E7 09                     533 	.db	9
      0003E8 00 00                  534 	.dw	Sspse_stm8$ADC_get$45-Sspse_stm8$ADC_get$43
      0003EA 03                     535 	.db	3
      0003EB 01                     536 	.sleb128	1
      0003EC 01                     537 	.db	1
      0003ED 09                     538 	.db	9
      0003EE 00 07                  539 	.dw	Sspse_stm8$ADC_get$48-Sspse_stm8$ADC_get$45
      0003F0 03                     540 	.db	3
      0003F1 01                     541 	.sleb128	1
      0003F2 01                     542 	.db	1
      0003F3 09                     543 	.db	9
      0003F4 00 08                  544 	.dw	Sspse_stm8$ADC_get$49-Sspse_stm8$ADC_get$48
      0003F6 03                     545 	.db	3
      0003F7 01                     546 	.sleb128	1
      0003F8 01                     547 	.db	1
      0003F9 09                     548 	.db	9
      0003FA 00 09                  549 	.dw	Sspse_stm8$ADC_get$50-Sspse_stm8$ADC_get$49
      0003FC 03                     550 	.db	3
      0003FD 01                     551 	.sleb128	1
      0003FE 01                     552 	.db	1
      0003FF 09                     553 	.db	9
      000400 00 08                  554 	.dw	Sspse_stm8$ADC_get$51-Sspse_stm8$ADC_get$50
      000402 03                     555 	.db	3
      000403 01                     556 	.sleb128	1
      000404 01                     557 	.db	1
      000405 09                     558 	.db	9
      000406 00 03                  559 	.dw	Sspse_stm8$ADC_get$52-Sspse_stm8$ADC_get$51
      000408 03                     560 	.db	3
      000409 01                     561 	.sleb128	1
      00040A 01                     562 	.db	1
      00040B 09                     563 	.db	9
      00040C 00 01                  564 	.dw	1+Sspse_stm8$ADC_get$53-Sspse_stm8$ADC_get$52
      00040E 00                     565 	.db	0
      00040F 01                     566 	.uleb128	1
      000410 01                     567 	.db	1
      000411 04                     568 	.db	4
      000412 02                     569 	.uleb128	2
      000413 00                     570 	.db	0
      000414 05                     571 	.uleb128	5
      000415 02                     572 	.db	2
      000416 00 00 83 69            573 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$55)
      00041A 03                     574 	.db	3
      00041B 14                     575 	.sleb128	20
      00041C 01                     576 	.db	1
      00041D 09                     577 	.db	9
      00041E 00 01                  578 	.dw	Sspse_stm8$ADC2_Select_Channel$58-Sspse_stm8$ADC2_Select_Channel$55
      000420 03                     579 	.db	3
      000421 01                     580 	.sleb128	1
      000422 01                     581 	.db	1
      000423 09                     582 	.db	9
      000424 00 07                  583 	.dw	Sspse_stm8$ADC2_Select_Channel$59-Sspse_stm8$ADC2_Select_Channel$58
      000426 03                     584 	.db	3
      000427 01                     585 	.sleb128	1
      000428 01                     586 	.db	1
      000429 09                     587 	.db	9
      00042A 00 06                  588 	.dw	Sspse_stm8$ADC2_Select_Channel$60-Sspse_stm8$ADC2_Select_Channel$59
      00042C 03                     589 	.db	3
      00042D 01                     590 	.sleb128	1
      00042E 01                     591 	.db	1
      00042F 09                     592 	.db	9
      000430 00 03                  593 	.dw	Sspse_stm8$ADC2_Select_Channel$61-Sspse_stm8$ADC2_Select_Channel$60
      000432 03                     594 	.db	3
      000433 01                     595 	.sleb128	1
      000434 01                     596 	.db	1
      000435 09                     597 	.db	9
      000436 00 02                  598 	.dw	1+Sspse_stm8$ADC2_Select_Channel$63-Sspse_stm8$ADC2_Select_Channel$61
      000438 00                     599 	.db	0
      000439 01                     600 	.uleb128	1
      00043A 01                     601 	.db	1
      00043B 04                     602 	.db	4
      00043C 02                     603 	.uleb128	2
      00043D 00                     604 	.db	0
      00043E 05                     605 	.uleb128	5
      00043F 02                     606 	.db	2
      000440 00 00 83 7C            607 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$65)
      000444 03                     608 	.db	3
      000445 1D                     609 	.sleb128	29
      000446 01                     610 	.db	1
      000447 09                     611 	.db	9
      000448 00 00                  612 	.dw	Sspse_stm8$ADC2_AlignConfig$67-Sspse_stm8$ADC2_AlignConfig$65
      00044A 03                     613 	.db	3
      00044B 02                     614 	.sleb128	2
      00044C 01                     615 	.db	1
      00044D 09                     616 	.db	9
      00044E 00 03                  617 	.dw	Sspse_stm8$ADC2_AlignConfig$68-Sspse_stm8$ADC2_AlignConfig$67
      000450 03                     618 	.db	3
      000451 7F                     619 	.sleb128	-1
      000452 01                     620 	.db	1
      000453 09                     621 	.db	9
      000454 00 07                  622 	.dw	Sspse_stm8$ADC2_AlignConfig$70-Sspse_stm8$ADC2_AlignConfig$68
      000456 03                     623 	.db	3
      000457 01                     624 	.sleb128	1
      000458 01                     625 	.db	1
      000459 09                     626 	.db	9
      00045A 00 08                  627 	.dw	Sspse_stm8$ADC2_AlignConfig$73-Sspse_stm8$ADC2_AlignConfig$70
      00045C 03                     628 	.db	3
      00045D 02                     629 	.sleb128	2
      00045E 01                     630 	.db	1
      00045F 09                     631 	.db	9
      000460 00 05                  632 	.dw	Sspse_stm8$ADC2_AlignConfig$75-Sspse_stm8$ADC2_AlignConfig$73
      000462 03                     633 	.db	3
      000463 02                     634 	.sleb128	2
      000464 01                     635 	.db	1
      000465 09                     636 	.db	9
      000466 00 01                  637 	.dw	1+Sspse_stm8$ADC2_AlignConfig$76-Sspse_stm8$ADC2_AlignConfig$75
      000468 00                     638 	.db	0
      000469 01                     639 	.uleb128	1
      00046A 01                     640 	.db	1
      00046B 04                     641 	.db	4
      00046C 02                     642 	.uleb128	2
      00046D 00                     643 	.db	0
      00046E 05                     644 	.uleb128	5
      00046F 02                     645 	.db	2
      000470 00 00 83 94            646 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$78)
      000474 03                     647 	.db	3
      000475 27                     648 	.sleb128	39
      000476 01                     649 	.db	1
      000477 04                     650 	.db	4
      000478 01                     651 	.uleb128	1
      000479 09                     652 	.db	9
      00047A 00 05                  653 	.dw	Sspse_stm8$ADC2_Startup_Wait$83-Sspse_stm8$ADC2_Startup_Wait$78
      00047C 03                     654 	.db	3
      00047D 72                     655 	.sleb128	-14
      00047E 01                     656 	.db	1
      00047F 04                     657 	.db	4
      000480 02                     658 	.uleb128	2
      000481 09                     659 	.db	9
      000482 00 08                  660 	.dw	Sspse_stm8$ADC2_Startup_Wait$87-Sspse_stm8$ADC2_Startup_Wait$83
      000484 03                     661 	.db	3
      000485 0F                     662 	.sleb128	15
      000486 01                     663 	.db	1
      000487 09                     664 	.db	9
      000488 00 00                  665 	.dw	Sspse_stm8$ADC2_Startup_Wait$88-Sspse_stm8$ADC2_Startup_Wait$87
      00048A 03                     666 	.db	3
      00048B 01                     667 	.sleb128	1
      00048C 01                     668 	.db	1
      00048D 09                     669 	.db	9
      00048E 00 01                  670 	.dw	1+Sspse_stm8$ADC2_Startup_Wait$89-Sspse_stm8$ADC2_Startup_Wait$88
      000490 00                     671 	.db	0
      000491 01                     672 	.uleb128	1
      000492 01                     673 	.db	1
      000493                        674 Ldebug_line_end:
                                    675 
                                    676 	.area .debug_loc (NOLOAD)
      000504                        677 Ldebug_loc_start:
      000504 00 00 83 94            678 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
      000508 00 00 83 A2            679 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$90)
      00050C 00 02                  680 	.dw	2
      00050E 78                     681 	.db	120
      00050F 01                     682 	.sleb128	1
      000510 00 00 00 00            683 	.dw	0,0
      000514 00 00 00 00            684 	.dw	0,0
      000518 00 00 83 7C            685 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
      00051C 00 00 83 94            686 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$77)
      000520 00 02                  687 	.dw	2
      000522 78                     688 	.db	120
      000523 01                     689 	.sleb128	1
      000524 00 00 00 00            690 	.dw	0,0
      000528 00 00 00 00            691 	.dw	0,0
      00052C 00 00 83 7B            692 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      000530 00 00 83 7C            693 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$64)
      000534 00 02                  694 	.dw	2
      000536 78                     695 	.db	120
      000537 01                     696 	.sleb128	1
      000538 00 00 83 6A            697 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      00053C 00 00 83 7B            698 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      000540 00 02                  699 	.dw	2
      000542 78                     700 	.db	120
      000543 02                     701 	.sleb128	2
      000544 00 00 83 69            702 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
      000548 00 00 83 6A            703 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      00054C 00 02                  704 	.dw	2
      00054E 78                     705 	.db	120
      00054F 01                     706 	.sleb128	1
      000550 00 00 00 00            707 	.dw	0,0
      000554 00 00 00 00            708 	.dw	0,0
      000558 00 00 83 4C            709 	.dw	0,(Sspse_stm8$ADC_get$47)
      00055C 00 00 83 69            710 	.dw	0,(Sspse_stm8$ADC_get$54)
      000560 00 02                  711 	.dw	2
      000562 78                     712 	.db	120
      000563 01                     713 	.sleb128	1
      000564 00 00 83 48            714 	.dw	0,(Sspse_stm8$ADC_get$46)
      000568 00 00 83 4C            715 	.dw	0,(Sspse_stm8$ADC_get$47)
      00056C 00 02                  716 	.dw	2
      00056E 78                     717 	.db	120
      00056F 02                     718 	.sleb128	2
      000570 00 00 83 45            719 	.dw	0,(Sspse_stm8$ADC_get$44)
      000574 00 00 83 48            720 	.dw	0,(Sspse_stm8$ADC_get$46)
      000578 00 02                  721 	.dw	2
      00057A 78                     722 	.db	120
      00057B 01                     723 	.sleb128	1
      00057C 00 00 00 00            724 	.dw	0,0
      000580 00 00 00 00            725 	.dw	0,0
      000584 00 00 83 30            726 	.dw	0,(Sspse_stm8$_delay_us$29)
      000588 00 00 83 45            727 	.dw	0,(Sspse_stm8$_delay_us$42)
      00058C 00 02                  728 	.dw	2
      00058E 78                     729 	.db	120
      00058F 01                     730 	.sleb128	1
      000590 00 00 83 2B            731 	.dw	0,(Sspse_stm8$_delay_us$28)
      000594 00 00 83 30            732 	.dw	0,(Sspse_stm8$_delay_us$29)
      000598 00 02                  733 	.dw	2
      00059A 78                     734 	.db	120
      00059B 09                     735 	.sleb128	9
      00059C 00 00 83 29            736 	.dw	0,(Sspse_stm8$_delay_us$27)
      0005A0 00 00 83 2B            737 	.dw	0,(Sspse_stm8$_delay_us$28)
      0005A4 00 02                  738 	.dw	2
      0005A6 78                     739 	.db	120
      0005A7 07                     740 	.sleb128	7
      0005A8 00 00 83 28            741 	.dw	0,(Sspse_stm8$_delay_us$26)
      0005AC 00 00 83 29            742 	.dw	0,(Sspse_stm8$_delay_us$27)
      0005B0 00 02                  743 	.dw	2
      0005B2 78                     744 	.db	120
      0005B3 05                     745 	.sleb128	5
      0005B4 00 00 83 26            746 	.dw	0,(Sspse_stm8$_delay_us$25)
      0005B8 00 00 83 28            747 	.dw	0,(Sspse_stm8$_delay_us$26)
      0005BC 00 02                  748 	.dw	2
      0005BE 78                     749 	.db	120
      0005BF 04                     750 	.sleb128	4
      0005C0 00 00 83 24            751 	.dw	0,(Sspse_stm8$_delay_us$24)
      0005C4 00 00 83 26            752 	.dw	0,(Sspse_stm8$_delay_us$25)
      0005C8 00 02                  753 	.dw	2
      0005CA 78                     754 	.db	120
      0005CB 03                     755 	.sleb128	3
      0005CC 00 00 83 22            756 	.dw	0,(Sspse_stm8$_delay_us$23)
      0005D0 00 00 83 24            757 	.dw	0,(Sspse_stm8$_delay_us$24)
      0005D4 00 02                  758 	.dw	2
      0005D6 78                     759 	.db	120
      0005D7 02                     760 	.sleb128	2
      0005D8 00 00 83 20            761 	.dw	0,(Sspse_stm8$_delay_us$21)
      0005DC 00 00 83 22            762 	.dw	0,(Sspse_stm8$_delay_us$23)
      0005E0 00 02                  763 	.dw	2
      0005E2 78                     764 	.db	120
      0005E3 01                     765 	.sleb128	1
      0005E4 00 00 83 1B            766 	.dw	0,(Sspse_stm8$_delay_us$20)
      0005E8 00 00 83 20            767 	.dw	0,(Sspse_stm8$_delay_us$21)
      0005EC 00 02                  768 	.dw	2
      0005EE 78                     769 	.db	120
      0005EF 09                     770 	.sleb128	9
      0005F0 00 00 83 19            771 	.dw	0,(Sspse_stm8$_delay_us$19)
      0005F4 00 00 83 1B            772 	.dw	0,(Sspse_stm8$_delay_us$20)
      0005F8 00 02                  773 	.dw	2
      0005FA 78                     774 	.db	120
      0005FB 08                     775 	.sleb128	8
      0005FC 00 00 83 17            776 	.dw	0,(Sspse_stm8$_delay_us$18)
      000600 00 00 83 19            777 	.dw	0,(Sspse_stm8$_delay_us$19)
      000604 00 02                  778 	.dw	2
      000606 78                     779 	.db	120
      000607 07                     780 	.sleb128	7
      000608 00 00 83 15            781 	.dw	0,(Sspse_stm8$_delay_us$17)
      00060C 00 00 83 17            782 	.dw	0,(Sspse_stm8$_delay_us$18)
      000610 00 02                  783 	.dw	2
      000612 78                     784 	.db	120
      000613 06                     785 	.sleb128	6
      000614 00 00 83 13            786 	.dw	0,(Sspse_stm8$_delay_us$16)
      000618 00 00 83 15            787 	.dw	0,(Sspse_stm8$_delay_us$17)
      00061C 00 02                  788 	.dw	2
      00061E 78                     789 	.db	120
      00061F 05                     790 	.sleb128	5
      000620 00 00 83 12            791 	.dw	0,(Sspse_stm8$_delay_us$15)
      000624 00 00 83 13            792 	.dw	0,(Sspse_stm8$_delay_us$16)
      000628 00 02                  793 	.dw	2
      00062A 78                     794 	.db	120
      00062B 03                     795 	.sleb128	3
      00062C 00 00 83 0D            796 	.dw	0,(Sspse_stm8$_delay_us$13)
      000630 00 00 83 12            797 	.dw	0,(Sspse_stm8$_delay_us$15)
      000634 00 02                  798 	.dw	2
      000636 78                     799 	.db	120
      000637 01                     800 	.sleb128	1
      000638 00 00 00 00            801 	.dw	0,0
      00063C 00 00 00 00            802 	.dw	0,0
      000640 00 00 83 00            803 	.dw	0,(Sspse_stm8$_delay_cycl$1)
      000644 00 00 83 0D            804 	.dw	0,(Sspse_stm8$_delay_cycl$11)
      000648 00 02                  805 	.dw	2
      00064A 78                     806 	.db	120
      00064B 01                     807 	.sleb128	1
      00064C 00 00 00 00            808 	.dw	0,0
      000650 00 00 00 00            809 	.dw	0,0
                                    810 
                                    811 	.area .debug_abbrev (NOLOAD)
      000115                        812 Ldebug_abbrev:
      000115 0D                     813 	.uleb128	13
      000116 0B                     814 	.uleb128	11
      000117 01                     815 	.db	1
      000118 00                     816 	.uleb128	0
      000119 00                     817 	.uleb128	0
      00011A 03                     818 	.uleb128	3
      00011B 05                     819 	.uleb128	5
      00011C 00                     820 	.db	0
      00011D 02                     821 	.uleb128	2
      00011E 0A                     822 	.uleb128	10
      00011F 03                     823 	.uleb128	3
      000120 08                     824 	.uleb128	8
      000121 49                     825 	.uleb128	73
      000122 13                     826 	.uleb128	19
      000123 00                     827 	.uleb128	0
      000124 00                     828 	.uleb128	0
      000125 02                     829 	.uleb128	2
      000126 2E                     830 	.uleb128	46
      000127 01                     831 	.db	1
      000128 01                     832 	.uleb128	1
      000129 13                     833 	.uleb128	19
      00012A 03                     834 	.uleb128	3
      00012B 08                     835 	.uleb128	8
      00012C 11                     836 	.uleb128	17
      00012D 01                     837 	.uleb128	1
      00012E 12                     838 	.uleb128	18
      00012F 01                     839 	.uleb128	1
      000130 3F                     840 	.uleb128	63
      000131 0C                     841 	.uleb128	12
      000132 40                     842 	.uleb128	64
      000133 06                     843 	.uleb128	6
      000134 00                     844 	.uleb128	0
      000135 00                     845 	.uleb128	0
      000136 0A                     846 	.uleb128	10
      000137 34                     847 	.uleb128	52
      000138 00                     848 	.db	0
      000139 02                     849 	.uleb128	2
      00013A 0A                     850 	.uleb128	10
      00013B 03                     851 	.uleb128	3
      00013C 08                     852 	.uleb128	8
      00013D 49                     853 	.uleb128	73
      00013E 13                     854 	.uleb128	19
      00013F 00                     855 	.uleb128	0
      000140 00                     856 	.uleb128	0
      000141 0B                     857 	.uleb128	11
      000142 2E                     858 	.uleb128	46
      000143 01                     859 	.db	1
      000144 01                     860 	.uleb128	1
      000145 13                     861 	.uleb128	19
      000146 03                     862 	.uleb128	3
      000147 08                     863 	.uleb128	8
      000148 11                     864 	.uleb128	17
      000149 01                     865 	.uleb128	1
      00014A 12                     866 	.uleb128	18
      00014B 01                     867 	.uleb128	1
      00014C 3F                     868 	.uleb128	63
      00014D 0C                     869 	.uleb128	12
      00014E 40                     870 	.uleb128	64
      00014F 06                     871 	.uleb128	6
      000150 49                     872 	.uleb128	73
      000151 13                     873 	.uleb128	19
      000152 00                     874 	.uleb128	0
      000153 00                     875 	.uleb128	0
      000154 0E                     876 	.uleb128	14
      000155 0B                     877 	.uleb128	11
      000156 01                     878 	.db	1
      000157 01                     879 	.uleb128	1
      000158 13                     880 	.uleb128	19
      000159 00                     881 	.uleb128	0
      00015A 00                     882 	.uleb128	0
      00015B 06                     883 	.uleb128	6
      00015C 26                     884 	.uleb128	38
      00015D 00                     885 	.db	0
      00015E 49                     886 	.uleb128	73
      00015F 13                     887 	.uleb128	19
      000160 00                     888 	.uleb128	0
      000161 00                     889 	.uleb128	0
      000162 01                     890 	.uleb128	1
      000163 11                     891 	.uleb128	17
      000164 01                     892 	.db	1
      000165 03                     893 	.uleb128	3
      000166 08                     894 	.uleb128	8
      000167 10                     895 	.uleb128	16
      000168 06                     896 	.uleb128	6
      000169 13                     897 	.uleb128	19
      00016A 0B                     898 	.uleb128	11
      00016B 25                     899 	.uleb128	37
      00016C 08                     900 	.uleb128	8
      00016D 00                     901 	.uleb128	0
      00016E 00                     902 	.uleb128	0
      00016F 04                     903 	.uleb128	4
      000170 0B                     904 	.uleb128	11
      000171 00                     905 	.db	0
      000172 11                     906 	.uleb128	17
      000173 01                     907 	.uleb128	1
      000174 12                     908 	.uleb128	18
      000175 01                     909 	.uleb128	1
      000176 00                     910 	.uleb128	0
      000177 00                     911 	.uleb128	0
      000178 07                     912 	.uleb128	7
      000179 0B                     913 	.uleb128	11
      00017A 01                     914 	.db	1
      00017B 11                     915 	.uleb128	17
      00017C 01                     916 	.uleb128	1
      00017D 12                     917 	.uleb128	18
      00017E 01                     918 	.uleb128	1
      00017F 00                     919 	.uleb128	0
      000180 00                     920 	.uleb128	0
      000181 08                     921 	.uleb128	8
      000182 0B                     922 	.uleb128	11
      000183 01                     923 	.db	1
      000184 01                     924 	.uleb128	1
      000185 13                     925 	.uleb128	19
      000186 11                     926 	.uleb128	17
      000187 01                     927 	.uleb128	1
      000188 00                     928 	.uleb128	0
      000189 00                     929 	.uleb128	0
      00018A 0C                     930 	.uleb128	12
      00018B 2E                     931 	.uleb128	46
      00018C 01                     932 	.db	1
      00018D 03                     933 	.uleb128	3
      00018E 08                     934 	.uleb128	8
      00018F 11                     935 	.uleb128	17
      000190 01                     936 	.uleb128	1
      000191 12                     937 	.uleb128	18
      000192 01                     938 	.uleb128	1
      000193 3F                     939 	.uleb128	63
      000194 0C                     940 	.uleb128	12
      000195 40                     941 	.uleb128	64
      000196 06                     942 	.uleb128	6
      000197 00                     943 	.uleb128	0
      000198 00                     944 	.uleb128	0
      000199 09                     945 	.uleb128	9
      00019A 0B                     946 	.uleb128	11
      00019B 01                     947 	.db	1
      00019C 01                     948 	.uleb128	1
      00019D 13                     949 	.uleb128	19
      00019E 11                     950 	.uleb128	17
      00019F 01                     951 	.uleb128	1
      0001A0 12                     952 	.uleb128	18
      0001A1 01                     953 	.uleb128	1
      0001A2 00                     954 	.uleb128	0
      0001A3 00                     955 	.uleb128	0
      0001A4 05                     956 	.uleb128	5
      0001A5 24                     957 	.uleb128	36
      0001A6 00                     958 	.db	0
      0001A7 03                     959 	.uleb128	3
      0001A8 08                     960 	.uleb128	8
      0001A9 0B                     961 	.uleb128	11
      0001AA 0B                     962 	.uleb128	11
      0001AB 3E                     963 	.uleb128	62
      0001AC 0B                     964 	.uleb128	11
      0001AD 00                     965 	.uleb128	0
      0001AE 00                     966 	.uleb128	0
      0001AF 00                     967 	.uleb128	0
                                    968 
                                    969 	.area .debug_info (NOLOAD)
      000377 00 00 02 7D            970 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00037B                        971 Ldebug_info_start:
      00037B 00 02                  972 	.dw	2
      00037D 00 00 01 15            973 	.dw	0,(Ldebug_abbrev)
      000381 04                     974 	.db	4
      000382 01                     975 	.uleb128	1
      000383 2E 2F 73 72 63 2F 73   976 	.ascii "./src/spse_stm8.c"
             70 73 65 5F 73 74 6D
             38 2E 63
      000394 00                     977 	.db	0
      000395 00 00 02 FA            978 	.dw	0,(Ldebug_line_start+-4)
      000399 01                     979 	.db	1
      00039A 53 44 43 43 20 76 65   980 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0003B3 00                     981 	.db	0
      0003B4 02                     982 	.uleb128	2
      0003B5 00 00 00 75            983 	.dw	0,117
      0003B9 5F 64 65 6C 61 79 5F   984 	.ascii "_delay_cycl"
             63 79 63 6C
      0003C4 00                     985 	.db	0
      0003C5 00 00 83 00            986 	.dw	0,(__delay_cycl)
      0003C9 00 00 83 0D            987 	.dw	0,(XFspse_stm8$_delay_cycl$0$0+1)
      0003CD 00                     988 	.db	0
      0003CE 00 00 06 40            989 	.dw	0,(Ldebug_loc_start+316)
      0003D2 03                     990 	.uleb128	3
      0003D3 02                     991 	.db	2
      0003D4 91                     992 	.db	145
      0003D5 02                     993 	.sleb128	2
      0003D6 5F 5F 74 69 63 6B 73   994 	.ascii "__ticks"
      0003DD 00                     995 	.db	0
      0003DE 00 00 00 75            996 	.dw	0,117
      0003E2 04                     997 	.uleb128	4
      0003E3 00 00 83 04            998 	.dw	0,(Sspse_stm8$_delay_cycl$4)
      0003E7 00 00 83 05            999 	.dw	0,(Sspse_stm8$_delay_cycl$6)
      0003EB 00                    1000 	.uleb128	0
      0003EC 05                    1001 	.uleb128	5
      0003ED 75 6E 73 69 67 6E 65  1002 	.ascii "unsigned int"
             64 20 69 6E 74
      0003F9 00                    1003 	.db	0
      0003FA 02                    1004 	.db	2
      0003FB 07                    1005 	.db	7
      0003FC 02                    1006 	.uleb128	2
      0003FD 00 00 01 0C           1007 	.dw	0,268
      000401 5F 64 65 6C 61 79 5F  1008 	.ascii "_delay_us"
             75 73
      00040A 00                    1009 	.db	0
      00040B 00 00 83 0D           1010 	.dw	0,(__delay_us)
      00040F 00 00 83 45           1011 	.dw	0,(XFspse_stm8$_delay_us$0$0+1)
      000413 00                    1012 	.db	0
      000414 00 00 05 84           1013 	.dw	0,(Ldebug_loc_start+128)
      000418 06                    1014 	.uleb128	6
      000419 00 00 00 75           1015 	.dw	0,117
      00041D 03                    1016 	.uleb128	3
      00041E 02                    1017 	.db	2
      00041F 91                    1018 	.db	145
      000420 02                    1019 	.sleb128	2
      000421 5F 5F 75 73           1020 	.ascii "__us"
      000425 00                    1021 	.db	0
      000426 00 00 00 A1           1022 	.dw	0,161
      00042A 07                    1023 	.uleb128	7
      00042B 00 00 83 0D           1024 	.dw	0,(Sspse_stm8$_delay_us$14)
      00042F 00 00 83 39           1025 	.dw	0,(Sspse_stm8$_delay_us$31)
      000433 08                    1026 	.uleb128	8
      000434 00 00 00 F1           1027 	.dw	0,241
      000438 00 00 83 3A           1028 	.dw	0,(Sspse_stm8$_delay_us$32)
      00043C 09                    1029 	.uleb128	9
      00043D 00 00 00 DC           1030 	.dw	0,220
      000441 00 00 83 3A           1031 	.dw	0,(Sspse_stm8$_delay_us$33)
      000445 00 00 83 44           1032 	.dw	0,(Sspse_stm8$_delay_us$38)
      000449 04                    1033 	.uleb128	4
      00044A 00 00 83 3C           1034 	.dw	0,(Sspse_stm8$_delay_us$36)
      00044E 00 00 83 3D           1035 	.dw	0,(Sspse_stm8$_delay_us$37)
      000452 00                    1036 	.uleb128	0
      000453 0A                    1037 	.uleb128	10
      000454 06                    1038 	.db	6
      000455 52                    1039 	.db	82
      000456 93                    1040 	.db	147
      000457 01                    1041 	.uleb128	1
      000458 51                    1042 	.db	81
      000459 93                    1043 	.db	147
      00045A 01                    1044 	.uleb128	1
      00045B 5F 5F 74 69 63 6B 73  1045 	.ascii "__ticks"
      000462 00                    1046 	.db	0
      000463 00 00 00 75           1047 	.dw	0,117
      000467 00                    1048 	.uleb128	0
      000468 0A                    1049 	.uleb128	10
      000469 06                    1050 	.db	6
      00046A 52                    1051 	.db	82
      00046B 93                    1052 	.db	147
      00046C 01                    1053 	.uleb128	1
      00046D 51                    1054 	.db	81
      00046E 93                    1055 	.db	147
      00046F 01                    1056 	.uleb128	1
      000470 5F 5F 31 33 31 30 37  1057 	.ascii "__1310720010"
             32 30 30 31 30
      00047C 00                    1058 	.db	0
      00047D 00 00 00 75           1059 	.dw	0,117
      000481 00                    1060 	.uleb128	0
      000482 00                    1061 	.uleb128	0
      000483 0B                    1062 	.uleb128	11
      000484 00 00 01 40           1063 	.dw	0,320
      000488 41 44 43 5F 67 65 74  1064 	.ascii "ADC_get"
      00048F 00                    1065 	.db	0
      000490 00 00 83 45           1066 	.dw	0,(_ADC_get)
      000494 00 00 83 69           1067 	.dw	0,(XG$ADC_get$0$0+1)
      000498 01                    1068 	.db	1
      000499 00 00 05 58           1069 	.dw	0,(Ldebug_loc_start+84)
      00049D 00 00 00 75           1070 	.dw	0,117
      0004A1 03                    1071 	.uleb128	3
      0004A2 02                    1072 	.db	2
      0004A3 91                    1073 	.db	145
      0004A4 02                    1074 	.sleb128	2
      0004A5 41 44 43 32 5F 43 68  1075 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      0004B1 00                    1076 	.db	0
      0004B2 00 00 01 40           1077 	.dw	0,320
      0004B6 00                    1078 	.uleb128	0
      0004B7 05                    1079 	.uleb128	5
      0004B8 75 6E 73 69 67 6E 65  1080 	.ascii "unsigned char"
             64 20 63 68 61 72
      0004C5 00                    1081 	.db	0
      0004C6 01                    1082 	.db	1
      0004C7 08                    1083 	.db	8
      0004C8 02                    1084 	.uleb128	2
      0004C9 00 00 01 98           1085 	.dw	0,408
      0004CD 41 44 43 32 5F 53 65  1086 	.ascii "ADC2_Select_Channel"
             6C 65 63 74 5F 43 68
             61 6E 6E 65 6C
      0004E0 00                    1087 	.db	0
      0004E1 00 00 83 69           1088 	.dw	0,(_ADC2_Select_Channel)
      0004E5 00 00 83 7C           1089 	.dw	0,(XG$ADC2_Select_Channel$0$0+1)
      0004E9 01                    1090 	.db	1
      0004EA 00 00 05 2C           1091 	.dw	0,(Ldebug_loc_start+40)
      0004EE 03                    1092 	.uleb128	3
      0004EF 02                    1093 	.db	2
      0004F0 91                    1094 	.db	145
      0004F1 02                    1095 	.sleb128	2
      0004F2 41 44 43 32 5F 43 68  1096 	.ascii "ADC2_Channel"
             61 6E 6E 65 6C
      0004FE 00                    1097 	.db	0
      0004FF 00 00 01 40           1098 	.dw	0,320
      000503 0A                    1099 	.uleb128	10
      000504 01                    1100 	.db	1
      000505 50                    1101 	.db	80
      000506 74 6D 70              1102 	.ascii "tmp"
      000509 00                    1103 	.db	0
      00050A 00 00 01 40           1104 	.dw	0,320
      00050E 00                    1105 	.uleb128	0
      00050F 02                    1106 	.uleb128	2
      000510 00 00 01 E1           1107 	.dw	0,481
      000514 41 44 43 32 5F 41 6C  1108 	.ascii "ADC2_AlignConfig"
             69 67 6E 43 6F 6E 66
             69 67
      000524 00                    1109 	.db	0
      000525 00 00 83 7C           1110 	.dw	0,(_ADC2_AlignConfig)
      000529 00 00 83 94           1111 	.dw	0,(XG$ADC2_AlignConfig$0$0+1)
      00052D 01                    1112 	.db	1
      00052E 00 00 05 18           1113 	.dw	0,(Ldebug_loc_start+20)
      000532 03                    1114 	.uleb128	3
      000533 02                    1115 	.db	2
      000534 91                    1116 	.db	145
      000535 02                    1117 	.sleb128	2
      000536 41 44 43 32 5F 41 6C  1118 	.ascii "ADC2_Align"
             69 67 6E
      000540 00                    1119 	.db	0
      000541 00 00 01 40           1120 	.dw	0,320
      000545 04                    1121 	.uleb128	4
      000546 00 00 83 86           1122 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$69)
      00054A 00 00 83 8B           1123 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$71)
      00054E 04                    1124 	.uleb128	4
      00054F 00 00 83 8E           1125 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$72)
      000553 00 00 83 93           1126 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$74)
      000557 00                    1127 	.uleb128	0
      000558 0C                    1128 	.uleb128	12
      000559 41 44 43 32 5F 53 74  1129 	.ascii "ADC2_Startup_Wait"
             61 72 74 75 70 5F 57
             61 69 74
      00056A 00                    1130 	.db	0
      00056B 00 00 83 94           1131 	.dw	0,(_ADC2_Startup_Wait)
      00056F 00 00 83 A2           1132 	.dw	0,(XG$ADC2_Startup_Wait$0$0+1)
      000573 01                    1133 	.db	1
      000574 00 00 05 04           1134 	.dw	0,(Ldebug_loc_start)
      000578 0D                    1135 	.uleb128	13
      000579 0E                    1136 	.uleb128	14
      00057A 00 00 02 67           1137 	.dw	0,615
      00057E 0E                    1138 	.uleb128	14
      00057F 00 00 02 59           1139 	.dw	0,601
      000583 0D                    1140 	.uleb128	13
      000584 08                    1141 	.uleb128	8
      000585 00 00 02 42           1142 	.dw	0,578
      000589 00 00 83 94           1143 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$80)
      00058D 09                    1144 	.uleb128	9
      00058E 00 00 02 2D           1145 	.dw	0,557
      000592 00 00 83 97           1146 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$81)
      000596 00 00 83 A1           1147 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$86)
      00059A 04                    1148 	.uleb128	4
      00059B 00 00 83 99           1149 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$84)
      00059F 00 00 83 9A           1150 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$85)
      0005A3 00                    1151 	.uleb128	0
      0005A4 0A                    1152 	.uleb128	10
      0005A5 06                    1153 	.db	6
      0005A6 52                    1154 	.db	82
      0005A7 93                    1155 	.db	147
      0005A8 01                    1156 	.uleb128	1
      0005A9 51                    1157 	.db	81
      0005AA 93                    1158 	.db	147
      0005AB 01                    1159 	.uleb128	1
      0005AC 5F 5F 74 69 63 6B 73  1160 	.ascii "__ticks"
      0005B3 00                    1161 	.db	0
      0005B4 00 00 00 75           1162 	.dw	0,117
      0005B8 00                    1163 	.uleb128	0
      0005B9 0A                    1164 	.uleb128	10
      0005BA 02                    1165 	.db	2
      0005BB 91                    1166 	.db	145
      0005BC 00                    1167 	.sleb128	0
      0005BD 5F 5F 31 33 31 30 37  1168 	.ascii "__1310720010"
             32 30 30 31 30
      0005C9 00                    1169 	.db	0
      0005CA 00 00 00 75           1170 	.dw	0,117
      0005CE 00                    1171 	.uleb128	0
      0005CF 00                    1172 	.uleb128	0
      0005D0 0A                    1173 	.uleb128	10
      0005D1 02                    1174 	.db	2
      0005D2 91                    1175 	.db	145
      0005D3 00                    1176 	.sleb128	0
      0005D4 5F 5F 75 73           1177 	.ascii "__us"
      0005D8 00                    1178 	.db	0
      0005D9 00 00 00 A1           1179 	.dw	0,161
      0005DD 00                    1180 	.uleb128	0
      0005DE 0A                    1181 	.uleb128	10
      0005DF 02                    1182 	.db	2
      0005E0 91                    1183 	.db	145
      0005E1 00                    1184 	.sleb128	0
      0005E2 5F 5F 31 33 31 30 37  1185 	.ascii "__1310720012"
             32 30 30 31 32
      0005EE 00                    1186 	.db	0
      0005EF 00 00 00 A1           1187 	.dw	0,161
      0005F3 00                    1188 	.uleb128	0
      0005F4 00                    1189 	.uleb128	0
      0005F5 00                    1190 	.uleb128	0
      0005F6 00                    1191 	.uleb128	0
      0005F7 00                    1192 	.uleb128	0
      0005F8                       1193 Ldebug_info_end:
                                   1194 
                                   1195 	.area .debug_pubnames (NOLOAD)
      00009F 00 00 00 5D           1196 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0000A3                       1197 Ldebug_pubnames_start:
      0000A3 00 02                 1198 	.dw	2
      0000A5 00 00 03 77           1199 	.dw	0,(Ldebug_info_start-4)
      0000A9 00 00 02 81           1200 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0000AD 00 00 01 0C           1201 	.dw	0,268
      0000B1 41 44 43 5F 67 65 74  1202 	.ascii "ADC_get"
      0000B8 00                    1203 	.db	0
      0000B9 00 00 01 51           1204 	.dw	0,337
      0000BD 41 44 43 32 5F 53 65  1205 	.ascii "ADC2_Select_Channel"
             6C 65 63 74 5F 43 68
             61 6E 6E 65 6C
      0000D0 00                    1206 	.db	0
      0000D1 00 00 01 98           1207 	.dw	0,408
      0000D5 41 44 43 32 5F 41 6C  1208 	.ascii "ADC2_AlignConfig"
             69 67 6E 43 6F 6E 66
             69 67
      0000E5 00                    1209 	.db	0
      0000E6 00 00 01 E1           1210 	.dw	0,481
      0000EA 41 44 43 32 5F 53 74  1211 	.ascii "ADC2_Startup_Wait"
             61 72 74 75 70 5F 57
             61 69 74
      0000FB 00                    1212 	.db	0
      0000FC 00 00 00 00           1213 	.dw	0,0
      000100                       1214 Ldebug_pubnames_end:
                                   1215 
                                   1216 	.area .debug_frame (NOLOAD)
      0003F5 00 00                 1217 	.dw	0
      0003F7 00 0E                 1218 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0003F9                       1219 Ldebug_CIE0_start:
      0003F9 FF FF                 1220 	.dw	0xffff
      0003FB FF FF                 1221 	.dw	0xffff
      0003FD 01                    1222 	.db	1
      0003FE 00                    1223 	.db	0
      0003FF 01                    1224 	.uleb128	1
      000400 7F                    1225 	.sleb128	-1
      000401 09                    1226 	.db	9
      000402 0C                    1227 	.db	12
      000403 08                    1228 	.uleb128	8
      000404 02                    1229 	.uleb128	2
      000405 89                    1230 	.db	137
      000406 01                    1231 	.uleb128	1
      000407                       1232 Ldebug_CIE0_end:
      000407 00 00 00 13           1233 	.dw	0,19
      00040B 00 00 03 F5           1234 	.dw	0,(Ldebug_CIE0_start-4)
      00040F 00 00 83 94           1235 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)	;initial loc
      000413 00 00 00 0E           1236 	.dw	0,Sspse_stm8$ADC2_Startup_Wait$90-Sspse_stm8$ADC2_Startup_Wait$79
      000417 01                    1237 	.db	1
      000418 00 00 83 94           1238 	.dw	0,(Sspse_stm8$ADC2_Startup_Wait$79)
      00041C 0E                    1239 	.db	14
      00041D 02                    1240 	.uleb128	2
                                   1241 
                                   1242 	.area .debug_frame (NOLOAD)
      00041E 00 00                 1243 	.dw	0
      000420 00 0E                 1244 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000422                       1245 Ldebug_CIE1_start:
      000422 FF FF                 1246 	.dw	0xffff
      000424 FF FF                 1247 	.dw	0xffff
      000426 01                    1248 	.db	1
      000427 00                    1249 	.db	0
      000428 01                    1250 	.uleb128	1
      000429 7F                    1251 	.sleb128	-1
      00042A 09                    1252 	.db	9
      00042B 0C                    1253 	.db	12
      00042C 08                    1254 	.uleb128	8
      00042D 02                    1255 	.uleb128	2
      00042E 89                    1256 	.db	137
      00042F 01                    1257 	.uleb128	1
      000430                       1258 Ldebug_CIE1_end:
      000430 00 00 00 13           1259 	.dw	0,19
      000434 00 00 04 1E           1260 	.dw	0,(Ldebug_CIE1_start-4)
      000438 00 00 83 7C           1261 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)	;initial loc
      00043C 00 00 00 18           1262 	.dw	0,Sspse_stm8$ADC2_AlignConfig$77-Sspse_stm8$ADC2_AlignConfig$66
      000440 01                    1263 	.db	1
      000441 00 00 83 7C           1264 	.dw	0,(Sspse_stm8$ADC2_AlignConfig$66)
      000445 0E                    1265 	.db	14
      000446 02                    1266 	.uleb128	2
                                   1267 
                                   1268 	.area .debug_frame (NOLOAD)
      000447 00 00                 1269 	.dw	0
      000449 00 0E                 1270 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00044B                       1271 Ldebug_CIE2_start:
      00044B FF FF                 1272 	.dw	0xffff
      00044D FF FF                 1273 	.dw	0xffff
      00044F 01                    1274 	.db	1
      000450 00                    1275 	.db	0
      000451 01                    1276 	.uleb128	1
      000452 7F                    1277 	.sleb128	-1
      000453 09                    1278 	.db	9
      000454 0C                    1279 	.db	12
      000455 08                    1280 	.uleb128	8
      000456 02                    1281 	.uleb128	2
      000457 89                    1282 	.db	137
      000458 01                    1283 	.uleb128	1
      000459                       1284 Ldebug_CIE2_end:
      000459 00 00 00 21           1285 	.dw	0,33
      00045D 00 00 04 47           1286 	.dw	0,(Ldebug_CIE2_start-4)
      000461 00 00 83 69           1287 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)	;initial loc
      000465 00 00 00 13           1288 	.dw	0,Sspse_stm8$ADC2_Select_Channel$64-Sspse_stm8$ADC2_Select_Channel$56
      000469 01                    1289 	.db	1
      00046A 00 00 83 69           1290 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$56)
      00046E 0E                    1291 	.db	14
      00046F 02                    1292 	.uleb128	2
      000470 01                    1293 	.db	1
      000471 00 00 83 6A           1294 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$57)
      000475 0E                    1295 	.db	14
      000476 03                    1296 	.uleb128	3
      000477 01                    1297 	.db	1
      000478 00 00 83 7B           1298 	.dw	0,(Sspse_stm8$ADC2_Select_Channel$62)
      00047C 0E                    1299 	.db	14
      00047D 02                    1300 	.uleb128	2
                                   1301 
                                   1302 	.area .debug_frame (NOLOAD)
      00047E 00 00                 1303 	.dw	0
      000480 00 0E                 1304 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000482                       1305 Ldebug_CIE3_start:
      000482 FF FF                 1306 	.dw	0xffff
      000484 FF FF                 1307 	.dw	0xffff
      000486 01                    1308 	.db	1
      000487 00                    1309 	.db	0
      000488 01                    1310 	.uleb128	1
      000489 7F                    1311 	.sleb128	-1
      00048A 09                    1312 	.db	9
      00048B 0C                    1313 	.db	12
      00048C 08                    1314 	.uleb128	8
      00048D 02                    1315 	.uleb128	2
      00048E 89                    1316 	.db	137
      00048F 01                    1317 	.uleb128	1
      000490                       1318 Ldebug_CIE3_end:
      000490 00 00 00 21           1319 	.dw	0,33
      000494 00 00 04 7E           1320 	.dw	0,(Ldebug_CIE3_start-4)
      000498 00 00 83 45           1321 	.dw	0,(Sspse_stm8$ADC_get$44)	;initial loc
      00049C 00 00 00 24           1322 	.dw	0,Sspse_stm8$ADC_get$54-Sspse_stm8$ADC_get$44
      0004A0 01                    1323 	.db	1
      0004A1 00 00 83 45           1324 	.dw	0,(Sspse_stm8$ADC_get$44)
      0004A5 0E                    1325 	.db	14
      0004A6 02                    1326 	.uleb128	2
      0004A7 01                    1327 	.db	1
      0004A8 00 00 83 48           1328 	.dw	0,(Sspse_stm8$ADC_get$46)
      0004AC 0E                    1329 	.db	14
      0004AD 03                    1330 	.uleb128	3
      0004AE 01                    1331 	.db	1
      0004AF 00 00 83 4C           1332 	.dw	0,(Sspse_stm8$ADC_get$47)
      0004B3 0E                    1333 	.db	14
      0004B4 02                    1334 	.uleb128	2
                                   1335 
                                   1336 	.area .debug_frame (NOLOAD)
      0004B5 00 00                 1337 	.dw	0
      0004B7 00 0E                 1338 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0004B9                       1339 Ldebug_CIE4_start:
      0004B9 FF FF                 1340 	.dw	0xffff
      0004BB FF FF                 1341 	.dw	0xffff
      0004BD 01                    1342 	.db	1
      0004BE 00                    1343 	.db	0
      0004BF 01                    1344 	.uleb128	1
      0004C0 7F                    1345 	.sleb128	-1
      0004C1 09                    1346 	.db	9
      0004C2 0C                    1347 	.db	12
      0004C3 08                    1348 	.uleb128	8
      0004C4 02                    1349 	.uleb128	2
      0004C5 89                    1350 	.db	137
      0004C6 01                    1351 	.uleb128	1
      0004C7                       1352 Ldebug_CIE4_end:
      0004C7 00 00 00 75           1353 	.dw	0,117
      0004CB 00 00 04 B5           1354 	.dw	0,(Ldebug_CIE4_start-4)
      0004CF 00 00 83 0D           1355 	.dw	0,(Sspse_stm8$_delay_us$13)	;initial loc
      0004D3 00 00 00 38           1356 	.dw	0,Sspse_stm8$_delay_us$42-Sspse_stm8$_delay_us$13
      0004D7 01                    1357 	.db	1
      0004D8 00 00 83 0D           1358 	.dw	0,(Sspse_stm8$_delay_us$13)
      0004DC 0E                    1359 	.db	14
      0004DD 02                    1360 	.uleb128	2
      0004DE 01                    1361 	.db	1
      0004DF 00 00 83 12           1362 	.dw	0,(Sspse_stm8$_delay_us$15)
      0004E3 0E                    1363 	.db	14
      0004E4 04                    1364 	.uleb128	4
      0004E5 01                    1365 	.db	1
      0004E6 00 00 83 13           1366 	.dw	0,(Sspse_stm8$_delay_us$16)
      0004EA 0E                    1367 	.db	14
      0004EB 06                    1368 	.uleb128	6
      0004EC 01                    1369 	.db	1
      0004ED 00 00 83 15           1370 	.dw	0,(Sspse_stm8$_delay_us$17)
      0004F1 0E                    1371 	.db	14
      0004F2 07                    1372 	.uleb128	7
      0004F3 01                    1373 	.db	1
      0004F4 00 00 83 17           1374 	.dw	0,(Sspse_stm8$_delay_us$18)
      0004F8 0E                    1375 	.db	14
      0004F9 08                    1376 	.uleb128	8
      0004FA 01                    1377 	.db	1
      0004FB 00 00 83 19           1378 	.dw	0,(Sspse_stm8$_delay_us$19)
      0004FF 0E                    1379 	.db	14
      000500 09                    1380 	.uleb128	9
      000501 01                    1381 	.db	1
      000502 00 00 83 1B           1382 	.dw	0,(Sspse_stm8$_delay_us$20)
      000506 0E                    1383 	.db	14
      000507 0A                    1384 	.uleb128	10
      000508 01                    1385 	.db	1
      000509 00 00 83 20           1386 	.dw	0,(Sspse_stm8$_delay_us$21)
      00050D 0E                    1387 	.db	14
      00050E 02                    1388 	.uleb128	2
      00050F 01                    1389 	.db	1
      000510 00 00 83 22           1390 	.dw	0,(Sspse_stm8$_delay_us$23)
      000514 0E                    1391 	.db	14
      000515 03                    1392 	.uleb128	3
      000516 01                    1393 	.db	1
      000517 00 00 83 24           1394 	.dw	0,(Sspse_stm8$_delay_us$24)
      00051B 0E                    1395 	.db	14
      00051C 04                    1396 	.uleb128	4
      00051D 01                    1397 	.db	1
      00051E 00 00 83 26           1398 	.dw	0,(Sspse_stm8$_delay_us$25)
      000522 0E                    1399 	.db	14
      000523 05                    1400 	.uleb128	5
      000524 01                    1401 	.db	1
      000525 00 00 83 28           1402 	.dw	0,(Sspse_stm8$_delay_us$26)
      000529 0E                    1403 	.db	14
      00052A 06                    1404 	.uleb128	6
      00052B 01                    1405 	.db	1
      00052C 00 00 83 29           1406 	.dw	0,(Sspse_stm8$_delay_us$27)
      000530 0E                    1407 	.db	14
      000531 08                    1408 	.uleb128	8
      000532 01                    1409 	.db	1
      000533 00 00 83 2B           1410 	.dw	0,(Sspse_stm8$_delay_us$28)
      000537 0E                    1411 	.db	14
      000538 0A                    1412 	.uleb128	10
      000539 01                    1413 	.db	1
      00053A 00 00 83 30           1414 	.dw	0,(Sspse_stm8$_delay_us$29)
      00053E 0E                    1415 	.db	14
      00053F 02                    1416 	.uleb128	2
                                   1417 
                                   1418 	.area .debug_frame (NOLOAD)
      000540 00 00                 1419 	.dw	0
      000542 00 0E                 1420 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000544                       1421 Ldebug_CIE5_start:
      000544 FF FF                 1422 	.dw	0xffff
      000546 FF FF                 1423 	.dw	0xffff
      000548 01                    1424 	.db	1
      000549 00                    1425 	.db	0
      00054A 01                    1426 	.uleb128	1
      00054B 7F                    1427 	.sleb128	-1
      00054C 09                    1428 	.db	9
      00054D 0C                    1429 	.db	12
      00054E 08                    1430 	.uleb128	8
      00054F 02                    1431 	.uleb128	2
      000550 89                    1432 	.db	137
      000551 01                    1433 	.uleb128	1
      000552                       1434 Ldebug_CIE5_end:
      000552 00 00 00 13           1435 	.dw	0,19
      000556 00 00 05 40           1436 	.dw	0,(Ldebug_CIE5_start-4)
      00055A 00 00 83 00           1437 	.dw	0,(Sspse_stm8$_delay_cycl$1)	;initial loc
      00055E 00 00 00 0D           1438 	.dw	0,Sspse_stm8$_delay_cycl$11-Sspse_stm8$_delay_cycl$1
      000562 01                    1439 	.db	1
      000563 00 00 83 00           1440 	.dw	0,(Sspse_stm8$_delay_cycl$1)
      000567 0E                    1441 	.db	14
      000568 02                    1442 	.uleb128	2
