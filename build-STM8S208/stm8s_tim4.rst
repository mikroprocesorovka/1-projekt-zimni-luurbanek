                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim4
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _TIM4_DeInit
                                     13 	.globl _TIM4_TimeBaseInit
                                     14 	.globl _TIM4_Cmd
                                     15 	.globl _TIM4_ITConfig
                                     16 	.globl _TIM4_UpdateDisableConfig
                                     17 	.globl _TIM4_UpdateRequestConfig
                                     18 	.globl _TIM4_SelectOnePulseMode
                                     19 	.globl _TIM4_PrescalerConfig
                                     20 	.globl _TIM4_ARRPreloadConfig
                                     21 	.globl _TIM4_GenerateEvent
                                     22 	.globl _TIM4_SetCounter
                                     23 	.globl _TIM4_SetAutoreload
                                     24 	.globl _TIM4_GetCounter
                                     25 	.globl _TIM4_GetPrescaler
                                     26 	.globl _TIM4_GetFlagStatus
                                     27 	.globl _TIM4_ClearFlag
                                     28 	.globl _TIM4_GetITStatus
                                     29 	.globl _TIM4_ClearITPendingBit
                                     30 ;--------------------------------------------------------
                                     31 ; ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DATA
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area INITIALIZED
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 
                                     43 ; default segment ordering for linker
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area CONST
                                     48 	.area INITIALIZER
                                     49 	.area CODE
                                     50 
                                     51 ;--------------------------------------------------------
                                     52 ; global & static initialisations
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area GSINIT
                                     56 	.area GSFINAL
                                     57 	.area GSINIT
                                     58 ;--------------------------------------------------------
                                     59 ; Home
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area HOME
                                     63 ;--------------------------------------------------------
                                     64 ; code
                                     65 ;--------------------------------------------------------
                                     66 	.area CODE
                           000000    67 	Sstm8s_tim4$TIM4_DeInit$0 ==.
                                     68 ;	../SPL/src/stm8s_tim4.c: 49: void TIM4_DeInit(void)
                                     69 ; genLabel
                                     70 ;	-----------------------------------------
                                     71 ;	 function TIM4_DeInit
                                     72 ;	-----------------------------------------
                                     73 ;	Register assignment is optimal.
                                     74 ;	Stack space usage: 0 bytes.
      0093EA                         75 _TIM4_DeInit:
                           000000    76 	Sstm8s_tim4$TIM4_DeInit$1 ==.
                           000000    77 	Sstm8s_tim4$TIM4_DeInit$2 ==.
                                     78 ;	../SPL/src/stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
                                     79 ; genPointerSet
      0093EA 35 00 53 40      [ 1]   80 	mov	0x5340+0, #0x00
                           000004    81 	Sstm8s_tim4$TIM4_DeInit$3 ==.
                                     82 ;	../SPL/src/stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
                                     83 ; genPointerSet
      0093EE 35 00 53 41      [ 1]   84 	mov	0x5341+0, #0x00
                           000008    85 	Sstm8s_tim4$TIM4_DeInit$4 ==.
                                     86 ;	../SPL/src/stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
                                     87 ; genPointerSet
      0093F2 35 00 53 44      [ 1]   88 	mov	0x5344+0, #0x00
                           00000C    89 	Sstm8s_tim4$TIM4_DeInit$5 ==.
                                     90 ;	../SPL/src/stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
                                     91 ; genPointerSet
      0093F6 35 00 53 45      [ 1]   92 	mov	0x5345+0, #0x00
                           000010    93 	Sstm8s_tim4$TIM4_DeInit$6 ==.
                                     94 ;	../SPL/src/stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
                                     95 ; genPointerSet
      0093FA 35 FF 53 46      [ 1]   96 	mov	0x5346+0, #0xff
                           000014    97 	Sstm8s_tim4$TIM4_DeInit$7 ==.
                                     98 ;	../SPL/src/stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
                                     99 ; genPointerSet
      0093FE 35 00 53 42      [ 1]  100 	mov	0x5342+0, #0x00
                                    101 ; genLabel
      009402                        102 00101$:
                           000018   103 	Sstm8s_tim4$TIM4_DeInit$8 ==.
                                    104 ;	../SPL/src/stm8s_tim4.c: 57: }
                                    105 ; genEndFunction
                           000018   106 	Sstm8s_tim4$TIM4_DeInit$9 ==.
                           000018   107 	XG$TIM4_DeInit$0$0 ==.
      009402 81               [ 4]  108 	ret
                           000019   109 	Sstm8s_tim4$TIM4_DeInit$10 ==.
                           000019   110 	Sstm8s_tim4$TIM4_TimeBaseInit$11 ==.
                                    111 ;	../SPL/src/stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
                                    112 ; genLabel
                                    113 ;	-----------------------------------------
                                    114 ;	 function TIM4_TimeBaseInit
                                    115 ;	-----------------------------------------
                                    116 ;	Register assignment is optimal.
                                    117 ;	Stack space usage: 0 bytes.
      009403                        118 _TIM4_TimeBaseInit:
                           000019   119 	Sstm8s_tim4$TIM4_TimeBaseInit$12 ==.
                           000019   120 	Sstm8s_tim4$TIM4_TimeBaseInit$13 ==.
                                    121 ;	../SPL/src/stm8s_tim4.c: 68: assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
                                    122 ; genIfx
      009403 0D 03            [ 1]  123 	tnz	(0x03, sp)
      009405 26 03            [ 1]  124 	jrne	00166$
      009407 CC 94 57         [ 2]  125 	jp	00104$
      00940A                        126 00166$:
                                    127 ; genCmpEQorNE
      00940A 7B 03            [ 1]  128 	ld	a, (0x03, sp)
      00940C 4A               [ 1]  129 	dec	a
      00940D 26 03            [ 1]  130 	jrne	00168$
      00940F CC 94 57         [ 2]  131 	jp	00104$
      009412                        132 00168$:
                           000028   133 	Sstm8s_tim4$TIM4_TimeBaseInit$14 ==.
                                    134 ; skipping generated iCode
                                    135 ; genCmpEQorNE
      009412 7B 03            [ 1]  136 	ld	a, (0x03, sp)
      009414 A1 02            [ 1]  137 	cp	a, #0x02
      009416 26 03            [ 1]  138 	jrne	00171$
      009418 CC 94 57         [ 2]  139 	jp	00104$
      00941B                        140 00171$:
                           000031   141 	Sstm8s_tim4$TIM4_TimeBaseInit$15 ==.
                                    142 ; skipping generated iCode
                                    143 ; genCmpEQorNE
      00941B 7B 03            [ 1]  144 	ld	a, (0x03, sp)
      00941D A1 03            [ 1]  145 	cp	a, #0x03
      00941F 26 03            [ 1]  146 	jrne	00174$
      009421 CC 94 57         [ 2]  147 	jp	00104$
      009424                        148 00174$:
                           00003A   149 	Sstm8s_tim4$TIM4_TimeBaseInit$16 ==.
                                    150 ; skipping generated iCode
                                    151 ; genCmpEQorNE
      009424 7B 03            [ 1]  152 	ld	a, (0x03, sp)
      009426 A1 04            [ 1]  153 	cp	a, #0x04
      009428 26 03            [ 1]  154 	jrne	00177$
      00942A CC 94 57         [ 2]  155 	jp	00104$
      00942D                        156 00177$:
                           000043   157 	Sstm8s_tim4$TIM4_TimeBaseInit$17 ==.
                                    158 ; skipping generated iCode
                                    159 ; genCmpEQorNE
      00942D 7B 03            [ 1]  160 	ld	a, (0x03, sp)
      00942F A1 05            [ 1]  161 	cp	a, #0x05
      009431 26 03            [ 1]  162 	jrne	00180$
      009433 CC 94 57         [ 2]  163 	jp	00104$
      009436                        164 00180$:
                           00004C   165 	Sstm8s_tim4$TIM4_TimeBaseInit$18 ==.
                                    166 ; skipping generated iCode
                                    167 ; genCmpEQorNE
      009436 7B 03            [ 1]  168 	ld	a, (0x03, sp)
      009438 A1 06            [ 1]  169 	cp	a, #0x06
      00943A 26 03            [ 1]  170 	jrne	00183$
      00943C CC 94 57         [ 2]  171 	jp	00104$
      00943F                        172 00183$:
                           000055   173 	Sstm8s_tim4$TIM4_TimeBaseInit$19 ==.
                                    174 ; skipping generated iCode
                                    175 ; genCmpEQorNE
      00943F 7B 03            [ 1]  176 	ld	a, (0x03, sp)
      009441 A1 07            [ 1]  177 	cp	a, #0x07
      009443 26 03            [ 1]  178 	jrne	00186$
      009445 CC 94 57         [ 2]  179 	jp	00104$
      009448                        180 00186$:
                           00005E   181 	Sstm8s_tim4$TIM4_TimeBaseInit$20 ==.
                                    182 ; skipping generated iCode
                                    183 ; skipping iCode since result will be rematerialized
                                    184 ; skipping iCode since result will be rematerialized
                                    185 ; genIPush
      009448 4B 44            [ 1]  186 	push	#0x44
                           000060   187 	Sstm8s_tim4$TIM4_TimeBaseInit$21 ==.
      00944A 5F               [ 1]  188 	clrw	x
      00944B 89               [ 2]  189 	pushw	x
                           000062   190 	Sstm8s_tim4$TIM4_TimeBaseInit$22 ==.
      00944C 4B 00            [ 1]  191 	push	#0x00
                           000064   192 	Sstm8s_tim4$TIM4_TimeBaseInit$23 ==.
                                    193 ; genIPush
      00944E 4B D4            [ 1]  194 	push	#<(___str_0+0)
                           000066   195 	Sstm8s_tim4$TIM4_TimeBaseInit$24 ==.
      009450 4B 80            [ 1]  196 	push	#((___str_0+0) >> 8)
                           000068   197 	Sstm8s_tim4$TIM4_TimeBaseInit$25 ==.
                                    198 ; genCall
      009452 CD 82 99         [ 4]  199 	call	_assert_failed
      009455 5B 06            [ 2]  200 	addw	sp, #6
                           00006D   201 	Sstm8s_tim4$TIM4_TimeBaseInit$26 ==.
                                    202 ; genLabel
      009457                        203 00104$:
                           00006D   204 	Sstm8s_tim4$TIM4_TimeBaseInit$27 ==.
                                    205 ;	../SPL/src/stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
                                    206 ; genPointerSet
      009457 AE 53 45         [ 2]  207 	ldw	x, #0x5345
      00945A 7B 03            [ 1]  208 	ld	a, (0x03, sp)
      00945C F7               [ 1]  209 	ld	(x), a
                           000073   210 	Sstm8s_tim4$TIM4_TimeBaseInit$28 ==.
                                    211 ;	../SPL/src/stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
                                    212 ; genPointerSet
      00945D AE 53 46         [ 2]  213 	ldw	x, #0x5346
      009460 7B 04            [ 1]  214 	ld	a, (0x04, sp)
      009462 F7               [ 1]  215 	ld	(x), a
                                    216 ; genLabel
      009463                        217 00101$:
                           000079   218 	Sstm8s_tim4$TIM4_TimeBaseInit$29 ==.
                                    219 ;	../SPL/src/stm8s_tim4.c: 73: }
                                    220 ; genEndFunction
                           000079   221 	Sstm8s_tim4$TIM4_TimeBaseInit$30 ==.
                           000079   222 	XG$TIM4_TimeBaseInit$0$0 ==.
      009463 81               [ 4]  223 	ret
                           00007A   224 	Sstm8s_tim4$TIM4_TimeBaseInit$31 ==.
                           00007A   225 	Sstm8s_tim4$TIM4_Cmd$32 ==.
                                    226 ;	../SPL/src/stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
                                    227 ; genLabel
                                    228 ;	-----------------------------------------
                                    229 ;	 function TIM4_Cmd
                                    230 ;	-----------------------------------------
                                    231 ;	Register assignment is optimal.
                                    232 ;	Stack space usage: 0 bytes.
      009464                        233 _TIM4_Cmd:
                           00007A   234 	Sstm8s_tim4$TIM4_Cmd$33 ==.
                           00007A   235 	Sstm8s_tim4$TIM4_Cmd$34 ==.
                                    236 ;	../SPL/src/stm8s_tim4.c: 84: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    237 ; genIfx
      009464 0D 03            [ 1]  238 	tnz	(0x03, sp)
      009466 26 03            [ 1]  239 	jrne	00126$
      009468 CC 94 82         [ 2]  240 	jp	00107$
      00946B                        241 00126$:
                                    242 ; genCmpEQorNE
      00946B 7B 03            [ 1]  243 	ld	a, (0x03, sp)
      00946D 4A               [ 1]  244 	dec	a
      00946E 26 03            [ 1]  245 	jrne	00128$
      009470 CC 94 82         [ 2]  246 	jp	00107$
      009473                        247 00128$:
                           000089   248 	Sstm8s_tim4$TIM4_Cmd$35 ==.
                                    249 ; skipping generated iCode
                                    250 ; skipping iCode since result will be rematerialized
                                    251 ; skipping iCode since result will be rematerialized
                                    252 ; genIPush
      009473 4B 54            [ 1]  253 	push	#0x54
                           00008B   254 	Sstm8s_tim4$TIM4_Cmd$36 ==.
      009475 5F               [ 1]  255 	clrw	x
      009476 89               [ 2]  256 	pushw	x
                           00008D   257 	Sstm8s_tim4$TIM4_Cmd$37 ==.
      009477 4B 00            [ 1]  258 	push	#0x00
                           00008F   259 	Sstm8s_tim4$TIM4_Cmd$38 ==.
                                    260 ; genIPush
      009479 4B D4            [ 1]  261 	push	#<(___str_0+0)
                           000091   262 	Sstm8s_tim4$TIM4_Cmd$39 ==.
      00947B 4B 80            [ 1]  263 	push	#((___str_0+0) >> 8)
                           000093   264 	Sstm8s_tim4$TIM4_Cmd$40 ==.
                                    265 ; genCall
      00947D CD 82 99         [ 4]  266 	call	_assert_failed
      009480 5B 06            [ 2]  267 	addw	sp, #6
                           000098   268 	Sstm8s_tim4$TIM4_Cmd$41 ==.
                                    269 ; genLabel
      009482                        270 00107$:
                           000098   271 	Sstm8s_tim4$TIM4_Cmd$42 ==.
                                    272 ;	../SPL/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
                                    273 ; genPointerGet
      009482 C6 53 40         [ 1]  274 	ld	a, 0x5340
                           00009B   275 	Sstm8s_tim4$TIM4_Cmd$43 ==.
                                    276 ;	../SPL/src/stm8s_tim4.c: 87: if (NewState != DISABLE)
                                    277 ; genIfx
      009485 0D 03            [ 1]  278 	tnz	(0x03, sp)
      009487 26 03            [ 1]  279 	jrne	00130$
      009489 CC 94 94         [ 2]  280 	jp	00102$
      00948C                        281 00130$:
                           0000A2   282 	Sstm8s_tim4$TIM4_Cmd$44 ==.
                           0000A2   283 	Sstm8s_tim4$TIM4_Cmd$45 ==.
                                    284 ;	../SPL/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
                                    285 ; genOr
      00948C AA 01            [ 1]  286 	or	a, #0x01
                                    287 ; genPointerSet
      00948E C7 53 40         [ 1]  288 	ld	0x5340, a
                           0000A7   289 	Sstm8s_tim4$TIM4_Cmd$46 ==.
                                    290 ; genGoto
      009491 CC 94 99         [ 2]  291 	jp	00104$
                                    292 ; genLabel
      009494                        293 00102$:
                           0000AA   294 	Sstm8s_tim4$TIM4_Cmd$47 ==.
                           0000AA   295 	Sstm8s_tim4$TIM4_Cmd$48 ==.
                                    296 ;	../SPL/src/stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
                                    297 ; genAnd
      009494 A4 FE            [ 1]  298 	and	a, #0xfe
                                    299 ; genPointerSet
      009496 C7 53 40         [ 1]  300 	ld	0x5340, a
                           0000AF   301 	Sstm8s_tim4$TIM4_Cmd$49 ==.
                                    302 ; genLabel
      009499                        303 00104$:
                           0000AF   304 	Sstm8s_tim4$TIM4_Cmd$50 ==.
                                    305 ;	../SPL/src/stm8s_tim4.c: 95: }
                                    306 ; genEndFunction
                           0000AF   307 	Sstm8s_tim4$TIM4_Cmd$51 ==.
                           0000AF   308 	XG$TIM4_Cmd$0$0 ==.
      009499 81               [ 4]  309 	ret
                           0000B0   310 	Sstm8s_tim4$TIM4_Cmd$52 ==.
                           0000B0   311 	Sstm8s_tim4$TIM4_ITConfig$53 ==.
                                    312 ;	../SPL/src/stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
                                    313 ; genLabel
                                    314 ;	-----------------------------------------
                                    315 ;	 function TIM4_ITConfig
                                    316 ;	-----------------------------------------
                                    317 ;	Register assignment is optimal.
                                    318 ;	Stack space usage: 1 bytes.
      00949A                        319 _TIM4_ITConfig:
                           0000B0   320 	Sstm8s_tim4$TIM4_ITConfig$54 ==.
      00949A 88               [ 1]  321 	push	a
                           0000B1   322 	Sstm8s_tim4$TIM4_ITConfig$55 ==.
                           0000B1   323 	Sstm8s_tim4$TIM4_ITConfig$56 ==.
                                    324 ;	../SPL/src/stm8s_tim4.c: 110: assert_param(IS_TIM4_IT_OK(TIM4_IT));
                                    325 ; genCmpEQorNE
      00949B 7B 04            [ 1]  326 	ld	a, (0x04, sp)
      00949D 4A               [ 1]  327 	dec	a
      00949E 26 03            [ 1]  328 	jrne	00134$
      0094A0 CC 94 B2         [ 2]  329 	jp	00107$
      0094A3                        330 00134$:
                           0000B9   331 	Sstm8s_tim4$TIM4_ITConfig$57 ==.
                                    332 ; skipping generated iCode
                                    333 ; skipping iCode since result will be rematerialized
                                    334 ; skipping iCode since result will be rematerialized
                                    335 ; genIPush
      0094A3 4B 6E            [ 1]  336 	push	#0x6e
                           0000BB   337 	Sstm8s_tim4$TIM4_ITConfig$58 ==.
      0094A5 5F               [ 1]  338 	clrw	x
      0094A6 89               [ 2]  339 	pushw	x
                           0000BD   340 	Sstm8s_tim4$TIM4_ITConfig$59 ==.
      0094A7 4B 00            [ 1]  341 	push	#0x00
                           0000BF   342 	Sstm8s_tim4$TIM4_ITConfig$60 ==.
                                    343 ; genIPush
      0094A9 4B D4            [ 1]  344 	push	#<(___str_0+0)
                           0000C1   345 	Sstm8s_tim4$TIM4_ITConfig$61 ==.
      0094AB 4B 80            [ 1]  346 	push	#((___str_0+0) >> 8)
                           0000C3   347 	Sstm8s_tim4$TIM4_ITConfig$62 ==.
                                    348 ; genCall
      0094AD CD 82 99         [ 4]  349 	call	_assert_failed
      0094B0 5B 06            [ 2]  350 	addw	sp, #6
                           0000C8   351 	Sstm8s_tim4$TIM4_ITConfig$63 ==.
                                    352 ; genLabel
      0094B2                        353 00107$:
                           0000C8   354 	Sstm8s_tim4$TIM4_ITConfig$64 ==.
                                    355 ;	../SPL/src/stm8s_tim4.c: 111: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    356 ; genIfx
      0094B2 0D 05            [ 1]  357 	tnz	(0x05, sp)
      0094B4 26 03            [ 1]  358 	jrne	00136$
      0094B6 CC 94 D0         [ 2]  359 	jp	00109$
      0094B9                        360 00136$:
                                    361 ; genCmpEQorNE
      0094B9 7B 05            [ 1]  362 	ld	a, (0x05, sp)
      0094BB 4A               [ 1]  363 	dec	a
      0094BC 26 03            [ 1]  364 	jrne	00138$
      0094BE CC 94 D0         [ 2]  365 	jp	00109$
      0094C1                        366 00138$:
                           0000D7   367 	Sstm8s_tim4$TIM4_ITConfig$65 ==.
                                    368 ; skipping generated iCode
                                    369 ; skipping iCode since result will be rematerialized
                                    370 ; skipping iCode since result will be rematerialized
                                    371 ; genIPush
      0094C1 4B 6F            [ 1]  372 	push	#0x6f
                           0000D9   373 	Sstm8s_tim4$TIM4_ITConfig$66 ==.
      0094C3 5F               [ 1]  374 	clrw	x
      0094C4 89               [ 2]  375 	pushw	x
                           0000DB   376 	Sstm8s_tim4$TIM4_ITConfig$67 ==.
      0094C5 4B 00            [ 1]  377 	push	#0x00
                           0000DD   378 	Sstm8s_tim4$TIM4_ITConfig$68 ==.
                                    379 ; genIPush
      0094C7 4B D4            [ 1]  380 	push	#<(___str_0+0)
                           0000DF   381 	Sstm8s_tim4$TIM4_ITConfig$69 ==.
      0094C9 4B 80            [ 1]  382 	push	#((___str_0+0) >> 8)
                           0000E1   383 	Sstm8s_tim4$TIM4_ITConfig$70 ==.
                                    384 ; genCall
      0094CB CD 82 99         [ 4]  385 	call	_assert_failed
      0094CE 5B 06            [ 2]  386 	addw	sp, #6
                           0000E6   387 	Sstm8s_tim4$TIM4_ITConfig$71 ==.
                                    388 ; genLabel
      0094D0                        389 00109$:
                           0000E6   390 	Sstm8s_tim4$TIM4_ITConfig$72 ==.
                                    391 ;	../SPL/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
                                    392 ; genPointerGet
      0094D0 C6 53 41         [ 1]  393 	ld	a, 0x5341
                           0000E9   394 	Sstm8s_tim4$TIM4_ITConfig$73 ==.
                                    395 ;	../SPL/src/stm8s_tim4.c: 113: if (NewState != DISABLE)
                                    396 ; genIfx
      0094D3 0D 05            [ 1]  397 	tnz	(0x05, sp)
      0094D5 26 03            [ 1]  398 	jrne	00140$
      0094D7 CC 94 E2         [ 2]  399 	jp	00102$
      0094DA                        400 00140$:
                           0000F0   401 	Sstm8s_tim4$TIM4_ITConfig$74 ==.
                           0000F0   402 	Sstm8s_tim4$TIM4_ITConfig$75 ==.
                                    403 ;	../SPL/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
                                    404 ; genOr
      0094DA 1A 04            [ 1]  405 	or	a, (0x04, sp)
                                    406 ; genPointerSet
      0094DC C7 53 41         [ 1]  407 	ld	0x5341, a
                           0000F5   408 	Sstm8s_tim4$TIM4_ITConfig$76 ==.
                                    409 ; genGoto
      0094DF CC 94 EE         [ 2]  410 	jp	00104$
                                    411 ; genLabel
      0094E2                        412 00102$:
                           0000F8   413 	Sstm8s_tim4$TIM4_ITConfig$77 ==.
                           0000F8   414 	Sstm8s_tim4$TIM4_ITConfig$78 ==.
                                    415 ;	../SPL/src/stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
                                    416 ; genCpl
      0094E2 88               [ 1]  417 	push	a
                           0000F9   418 	Sstm8s_tim4$TIM4_ITConfig$79 ==.
      0094E3 7B 05            [ 1]  419 	ld	a, (0x05, sp)
      0094E5 43               [ 1]  420 	cpl	a
      0094E6 6B 02            [ 1]  421 	ld	(0x02, sp), a
      0094E8 84               [ 1]  422 	pop	a
                           0000FF   423 	Sstm8s_tim4$TIM4_ITConfig$80 ==.
                                    424 ; genAnd
      0094E9 14 01            [ 1]  425 	and	a, (0x01, sp)
                                    426 ; genPointerSet
      0094EB C7 53 41         [ 1]  427 	ld	0x5341, a
                           000104   428 	Sstm8s_tim4$TIM4_ITConfig$81 ==.
                                    429 ; genLabel
      0094EE                        430 00104$:
                           000104   431 	Sstm8s_tim4$TIM4_ITConfig$82 ==.
                                    432 ;	../SPL/src/stm8s_tim4.c: 123: }
                                    433 ; genEndFunction
      0094EE 84               [ 1]  434 	pop	a
                           000105   435 	Sstm8s_tim4$TIM4_ITConfig$83 ==.
                           000105   436 	Sstm8s_tim4$TIM4_ITConfig$84 ==.
                           000105   437 	XG$TIM4_ITConfig$0$0 ==.
      0094EF 81               [ 4]  438 	ret
                           000106   439 	Sstm8s_tim4$TIM4_ITConfig$85 ==.
                           000106   440 	Sstm8s_tim4$TIM4_UpdateDisableConfig$86 ==.
                                    441 ;	../SPL/src/stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
                                    442 ; genLabel
                                    443 ;	-----------------------------------------
                                    444 ;	 function TIM4_UpdateDisableConfig
                                    445 ;	-----------------------------------------
                                    446 ;	Register assignment is optimal.
                                    447 ;	Stack space usage: 0 bytes.
      0094F0                        448 _TIM4_UpdateDisableConfig:
                           000106   449 	Sstm8s_tim4$TIM4_UpdateDisableConfig$87 ==.
                           000106   450 	Sstm8s_tim4$TIM4_UpdateDisableConfig$88 ==.
                                    451 ;	../SPL/src/stm8s_tim4.c: 134: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    452 ; genIfx
      0094F0 0D 03            [ 1]  453 	tnz	(0x03, sp)
      0094F2 26 03            [ 1]  454 	jrne	00126$
      0094F4 CC 95 0E         [ 2]  455 	jp	00107$
      0094F7                        456 00126$:
                                    457 ; genCmpEQorNE
      0094F7 7B 03            [ 1]  458 	ld	a, (0x03, sp)
      0094F9 4A               [ 1]  459 	dec	a
      0094FA 26 03            [ 1]  460 	jrne	00128$
      0094FC CC 95 0E         [ 2]  461 	jp	00107$
      0094FF                        462 00128$:
                           000115   463 	Sstm8s_tim4$TIM4_UpdateDisableConfig$89 ==.
                                    464 ; skipping generated iCode
                                    465 ; skipping iCode since result will be rematerialized
                                    466 ; skipping iCode since result will be rematerialized
                                    467 ; genIPush
      0094FF 4B 86            [ 1]  468 	push	#0x86
                           000117   469 	Sstm8s_tim4$TIM4_UpdateDisableConfig$90 ==.
      009501 5F               [ 1]  470 	clrw	x
      009502 89               [ 2]  471 	pushw	x
                           000119   472 	Sstm8s_tim4$TIM4_UpdateDisableConfig$91 ==.
      009503 4B 00            [ 1]  473 	push	#0x00
                           00011B   474 	Sstm8s_tim4$TIM4_UpdateDisableConfig$92 ==.
                                    475 ; genIPush
      009505 4B D4            [ 1]  476 	push	#<(___str_0+0)
                           00011D   477 	Sstm8s_tim4$TIM4_UpdateDisableConfig$93 ==.
      009507 4B 80            [ 1]  478 	push	#((___str_0+0) >> 8)
                           00011F   479 	Sstm8s_tim4$TIM4_UpdateDisableConfig$94 ==.
                                    480 ; genCall
      009509 CD 82 99         [ 4]  481 	call	_assert_failed
      00950C 5B 06            [ 2]  482 	addw	sp, #6
                           000124   483 	Sstm8s_tim4$TIM4_UpdateDisableConfig$95 ==.
                                    484 ; genLabel
      00950E                        485 00107$:
                           000124   486 	Sstm8s_tim4$TIM4_UpdateDisableConfig$96 ==.
                                    487 ;	../SPL/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
                                    488 ; genPointerGet
      00950E C6 53 40         [ 1]  489 	ld	a, 0x5340
                           000127   490 	Sstm8s_tim4$TIM4_UpdateDisableConfig$97 ==.
                                    491 ;	../SPL/src/stm8s_tim4.c: 137: if (NewState != DISABLE)
                                    492 ; genIfx
      009511 0D 03            [ 1]  493 	tnz	(0x03, sp)
      009513 26 03            [ 1]  494 	jrne	00130$
      009515 CC 95 20         [ 2]  495 	jp	00102$
      009518                        496 00130$:
                           00012E   497 	Sstm8s_tim4$TIM4_UpdateDisableConfig$98 ==.
                           00012E   498 	Sstm8s_tim4$TIM4_UpdateDisableConfig$99 ==.
                                    499 ;	../SPL/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
                                    500 ; genOr
      009518 AA 02            [ 1]  501 	or	a, #0x02
                                    502 ; genPointerSet
      00951A C7 53 40         [ 1]  503 	ld	0x5340, a
                           000133   504 	Sstm8s_tim4$TIM4_UpdateDisableConfig$100 ==.
                                    505 ; genGoto
      00951D CC 95 25         [ 2]  506 	jp	00104$
                                    507 ; genLabel
      009520                        508 00102$:
                           000136   509 	Sstm8s_tim4$TIM4_UpdateDisableConfig$101 ==.
                           000136   510 	Sstm8s_tim4$TIM4_UpdateDisableConfig$102 ==.
                                    511 ;	../SPL/src/stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
                                    512 ; genAnd
      009520 A4 FD            [ 1]  513 	and	a, #0xfd
                                    514 ; genPointerSet
      009522 C7 53 40         [ 1]  515 	ld	0x5340, a
                           00013B   516 	Sstm8s_tim4$TIM4_UpdateDisableConfig$103 ==.
                                    517 ; genLabel
      009525                        518 00104$:
                           00013B   519 	Sstm8s_tim4$TIM4_UpdateDisableConfig$104 ==.
                                    520 ;	../SPL/src/stm8s_tim4.c: 145: }
                                    521 ; genEndFunction
                           00013B   522 	Sstm8s_tim4$TIM4_UpdateDisableConfig$105 ==.
                           00013B   523 	XG$TIM4_UpdateDisableConfig$0$0 ==.
      009525 81               [ 4]  524 	ret
                           00013C   525 	Sstm8s_tim4$TIM4_UpdateDisableConfig$106 ==.
                           00013C   526 	Sstm8s_tim4$TIM4_UpdateRequestConfig$107 ==.
                                    527 ;	../SPL/src/stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
                                    528 ; genLabel
                                    529 ;	-----------------------------------------
                                    530 ;	 function TIM4_UpdateRequestConfig
                                    531 ;	-----------------------------------------
                                    532 ;	Register assignment is optimal.
                                    533 ;	Stack space usage: 0 bytes.
      009526                        534 _TIM4_UpdateRequestConfig:
                           00013C   535 	Sstm8s_tim4$TIM4_UpdateRequestConfig$108 ==.
                           00013C   536 	Sstm8s_tim4$TIM4_UpdateRequestConfig$109 ==.
                                    537 ;	../SPL/src/stm8s_tim4.c: 158: assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
                                    538 ; genIfx
      009526 0D 03            [ 1]  539 	tnz	(0x03, sp)
      009528 26 03            [ 1]  540 	jrne	00126$
      00952A CC 95 44         [ 2]  541 	jp	00107$
      00952D                        542 00126$:
                                    543 ; genCmpEQorNE
      00952D 7B 03            [ 1]  544 	ld	a, (0x03, sp)
      00952F 4A               [ 1]  545 	dec	a
      009530 26 03            [ 1]  546 	jrne	00128$
      009532 CC 95 44         [ 2]  547 	jp	00107$
      009535                        548 00128$:
                           00014B   549 	Sstm8s_tim4$TIM4_UpdateRequestConfig$110 ==.
                                    550 ; skipping generated iCode
                                    551 ; skipping iCode since result will be rematerialized
                                    552 ; skipping iCode since result will be rematerialized
                                    553 ; genIPush
      009535 4B 9E            [ 1]  554 	push	#0x9e
                           00014D   555 	Sstm8s_tim4$TIM4_UpdateRequestConfig$111 ==.
      009537 5F               [ 1]  556 	clrw	x
      009538 89               [ 2]  557 	pushw	x
                           00014F   558 	Sstm8s_tim4$TIM4_UpdateRequestConfig$112 ==.
      009539 4B 00            [ 1]  559 	push	#0x00
                           000151   560 	Sstm8s_tim4$TIM4_UpdateRequestConfig$113 ==.
                                    561 ; genIPush
      00953B 4B D4            [ 1]  562 	push	#<(___str_0+0)
                           000153   563 	Sstm8s_tim4$TIM4_UpdateRequestConfig$114 ==.
      00953D 4B 80            [ 1]  564 	push	#((___str_0+0) >> 8)
                           000155   565 	Sstm8s_tim4$TIM4_UpdateRequestConfig$115 ==.
                                    566 ; genCall
      00953F CD 82 99         [ 4]  567 	call	_assert_failed
      009542 5B 06            [ 2]  568 	addw	sp, #6
                           00015A   569 	Sstm8s_tim4$TIM4_UpdateRequestConfig$116 ==.
                                    570 ; genLabel
      009544                        571 00107$:
                           00015A   572 	Sstm8s_tim4$TIM4_UpdateRequestConfig$117 ==.
                                    573 ;	../SPL/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
                                    574 ; genPointerGet
      009544 C6 53 40         [ 1]  575 	ld	a, 0x5340
                           00015D   576 	Sstm8s_tim4$TIM4_UpdateRequestConfig$118 ==.
                                    577 ;	../SPL/src/stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
                                    578 ; genIfx
      009547 0D 03            [ 1]  579 	tnz	(0x03, sp)
      009549 26 03            [ 1]  580 	jrne	00130$
      00954B CC 95 56         [ 2]  581 	jp	00102$
      00954E                        582 00130$:
                           000164   583 	Sstm8s_tim4$TIM4_UpdateRequestConfig$119 ==.
                           000164   584 	Sstm8s_tim4$TIM4_UpdateRequestConfig$120 ==.
                                    585 ;	../SPL/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
                                    586 ; genOr
      00954E AA 04            [ 1]  587 	or	a, #0x04
                                    588 ; genPointerSet
      009550 C7 53 40         [ 1]  589 	ld	0x5340, a
                           000169   590 	Sstm8s_tim4$TIM4_UpdateRequestConfig$121 ==.
                                    591 ; genGoto
      009553 CC 95 5B         [ 2]  592 	jp	00104$
                                    593 ; genLabel
      009556                        594 00102$:
                           00016C   595 	Sstm8s_tim4$TIM4_UpdateRequestConfig$122 ==.
                           00016C   596 	Sstm8s_tim4$TIM4_UpdateRequestConfig$123 ==.
                                    597 ;	../SPL/src/stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
                                    598 ; genAnd
      009556 A4 FB            [ 1]  599 	and	a, #0xfb
                                    600 ; genPointerSet
      009558 C7 53 40         [ 1]  601 	ld	0x5340, a
                           000171   602 	Sstm8s_tim4$TIM4_UpdateRequestConfig$124 ==.
                                    603 ; genLabel
      00955B                        604 00104$:
                           000171   605 	Sstm8s_tim4$TIM4_UpdateRequestConfig$125 ==.
                                    606 ;	../SPL/src/stm8s_tim4.c: 169: }
                                    607 ; genEndFunction
                           000171   608 	Sstm8s_tim4$TIM4_UpdateRequestConfig$126 ==.
                           000171   609 	XG$TIM4_UpdateRequestConfig$0$0 ==.
      00955B 81               [ 4]  610 	ret
                           000172   611 	Sstm8s_tim4$TIM4_UpdateRequestConfig$127 ==.
                           000172   612 	Sstm8s_tim4$TIM4_SelectOnePulseMode$128 ==.
                                    613 ;	../SPL/src/stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
                                    614 ; genLabel
                                    615 ;	-----------------------------------------
                                    616 ;	 function TIM4_SelectOnePulseMode
                                    617 ;	-----------------------------------------
                                    618 ;	Register assignment is optimal.
                                    619 ;	Stack space usage: 0 bytes.
      00955C                        620 _TIM4_SelectOnePulseMode:
                           000172   621 	Sstm8s_tim4$TIM4_SelectOnePulseMode$129 ==.
                           000172   622 	Sstm8s_tim4$TIM4_SelectOnePulseMode$130 ==.
                                    623 ;	../SPL/src/stm8s_tim4.c: 182: assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
                                    624 ; genCmpEQorNE
      00955C 7B 03            [ 1]  625 	ld	a, (0x03, sp)
      00955E 4A               [ 1]  626 	dec	a
      00955F 26 03            [ 1]  627 	jrne	00127$
      009561 CC 95 7A         [ 2]  628 	jp	00107$
      009564                        629 00127$:
                           00017A   630 	Sstm8s_tim4$TIM4_SelectOnePulseMode$131 ==.
                                    631 ; skipping generated iCode
                                    632 ; genIfx
      009564 0D 03            [ 1]  633 	tnz	(0x03, sp)
      009566 26 03            [ 1]  634 	jrne	00129$
      009568 CC 95 7A         [ 2]  635 	jp	00107$
      00956B                        636 00129$:
                                    637 ; skipping iCode since result will be rematerialized
                                    638 ; skipping iCode since result will be rematerialized
                                    639 ; genIPush
      00956B 4B B6            [ 1]  640 	push	#0xb6
                           000183   641 	Sstm8s_tim4$TIM4_SelectOnePulseMode$132 ==.
      00956D 5F               [ 1]  642 	clrw	x
      00956E 89               [ 2]  643 	pushw	x
                           000185   644 	Sstm8s_tim4$TIM4_SelectOnePulseMode$133 ==.
      00956F 4B 00            [ 1]  645 	push	#0x00
                           000187   646 	Sstm8s_tim4$TIM4_SelectOnePulseMode$134 ==.
                                    647 ; genIPush
      009571 4B D4            [ 1]  648 	push	#<(___str_0+0)
                           000189   649 	Sstm8s_tim4$TIM4_SelectOnePulseMode$135 ==.
      009573 4B 80            [ 1]  650 	push	#((___str_0+0) >> 8)
                           00018B   651 	Sstm8s_tim4$TIM4_SelectOnePulseMode$136 ==.
                                    652 ; genCall
      009575 CD 82 99         [ 4]  653 	call	_assert_failed
      009578 5B 06            [ 2]  654 	addw	sp, #6
                           000190   655 	Sstm8s_tim4$TIM4_SelectOnePulseMode$137 ==.
                                    656 ; genLabel
      00957A                        657 00107$:
                           000190   658 	Sstm8s_tim4$TIM4_SelectOnePulseMode$138 ==.
                                    659 ;	../SPL/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
                                    660 ; genPointerGet
      00957A C6 53 40         [ 1]  661 	ld	a, 0x5340
                           000193   662 	Sstm8s_tim4$TIM4_SelectOnePulseMode$139 ==.
                                    663 ;	../SPL/src/stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
                                    664 ; genIfx
      00957D 0D 03            [ 1]  665 	tnz	(0x03, sp)
      00957F 26 03            [ 1]  666 	jrne	00130$
      009581 CC 95 8C         [ 2]  667 	jp	00102$
      009584                        668 00130$:
                           00019A   669 	Sstm8s_tim4$TIM4_SelectOnePulseMode$140 ==.
                           00019A   670 	Sstm8s_tim4$TIM4_SelectOnePulseMode$141 ==.
                                    671 ;	../SPL/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
                                    672 ; genOr
      009584 AA 08            [ 1]  673 	or	a, #0x08
                                    674 ; genPointerSet
      009586 C7 53 40         [ 1]  675 	ld	0x5340, a
                           00019F   676 	Sstm8s_tim4$TIM4_SelectOnePulseMode$142 ==.
                                    677 ; genGoto
      009589 CC 95 91         [ 2]  678 	jp	00104$
                                    679 ; genLabel
      00958C                        680 00102$:
                           0001A2   681 	Sstm8s_tim4$TIM4_SelectOnePulseMode$143 ==.
                           0001A2   682 	Sstm8s_tim4$TIM4_SelectOnePulseMode$144 ==.
                                    683 ;	../SPL/src/stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
                                    684 ; genAnd
      00958C A4 F7            [ 1]  685 	and	a, #0xf7
                                    686 ; genPointerSet
      00958E C7 53 40         [ 1]  687 	ld	0x5340, a
                           0001A7   688 	Sstm8s_tim4$TIM4_SelectOnePulseMode$145 ==.
                                    689 ; genLabel
      009591                        690 00104$:
                           0001A7   691 	Sstm8s_tim4$TIM4_SelectOnePulseMode$146 ==.
                                    692 ;	../SPL/src/stm8s_tim4.c: 193: }
                                    693 ; genEndFunction
                           0001A7   694 	Sstm8s_tim4$TIM4_SelectOnePulseMode$147 ==.
                           0001A7   695 	XG$TIM4_SelectOnePulseMode$0$0 ==.
      009591 81               [ 4]  696 	ret
                           0001A8   697 	Sstm8s_tim4$TIM4_SelectOnePulseMode$148 ==.
                           0001A8   698 	Sstm8s_tim4$TIM4_PrescalerConfig$149 ==.
                                    699 ;	../SPL/src/stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
                                    700 ; genLabel
                                    701 ;	-----------------------------------------
                                    702 ;	 function TIM4_PrescalerConfig
                                    703 ;	-----------------------------------------
                                    704 ;	Register assignment is optimal.
                                    705 ;	Stack space usage: 0 bytes.
      009592                        706 _TIM4_PrescalerConfig:
                           0001A8   707 	Sstm8s_tim4$TIM4_PrescalerConfig$150 ==.
                           0001A8   708 	Sstm8s_tim4$TIM4_PrescalerConfig$151 ==.
                                    709 ;	../SPL/src/stm8s_tim4.c: 218: assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
                                    710 ; genIfx
      009592 0D 04            [ 1]  711 	tnz	(0x04, sp)
      009594 26 03            [ 1]  712 	jrne	00181$
      009596 CC 95 B0         [ 2]  713 	jp	00104$
      009599                        714 00181$:
                                    715 ; genCmpEQorNE
      009599 7B 04            [ 1]  716 	ld	a, (0x04, sp)
      00959B 4A               [ 1]  717 	dec	a
      00959C 26 03            [ 1]  718 	jrne	00183$
      00959E CC 95 B0         [ 2]  719 	jp	00104$
      0095A1                        720 00183$:
                           0001B7   721 	Sstm8s_tim4$TIM4_PrescalerConfig$152 ==.
                                    722 ; skipping generated iCode
                                    723 ; skipping iCode since result will be rematerialized
                                    724 ; skipping iCode since result will be rematerialized
                                    725 ; genIPush
      0095A1 4B DA            [ 1]  726 	push	#0xda
                           0001B9   727 	Sstm8s_tim4$TIM4_PrescalerConfig$153 ==.
      0095A3 5F               [ 1]  728 	clrw	x
      0095A4 89               [ 2]  729 	pushw	x
                           0001BB   730 	Sstm8s_tim4$TIM4_PrescalerConfig$154 ==.
      0095A5 4B 00            [ 1]  731 	push	#0x00
                           0001BD   732 	Sstm8s_tim4$TIM4_PrescalerConfig$155 ==.
                                    733 ; genIPush
      0095A7 4B D4            [ 1]  734 	push	#<(___str_0+0)
                           0001BF   735 	Sstm8s_tim4$TIM4_PrescalerConfig$156 ==.
      0095A9 4B 80            [ 1]  736 	push	#((___str_0+0) >> 8)
                           0001C1   737 	Sstm8s_tim4$TIM4_PrescalerConfig$157 ==.
                                    738 ; genCall
      0095AB CD 82 99         [ 4]  739 	call	_assert_failed
      0095AE 5B 06            [ 2]  740 	addw	sp, #6
                           0001C6   741 	Sstm8s_tim4$TIM4_PrescalerConfig$158 ==.
                                    742 ; genLabel
      0095B0                        743 00104$:
                           0001C6   744 	Sstm8s_tim4$TIM4_PrescalerConfig$159 ==.
                                    745 ;	../SPL/src/stm8s_tim4.c: 219: assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
                                    746 ; genIfx
      0095B0 0D 03            [ 1]  747 	tnz	(0x03, sp)
      0095B2 26 03            [ 1]  748 	jrne	00185$
      0095B4 CC 96 04         [ 2]  749 	jp	00109$
      0095B7                        750 00185$:
                                    751 ; genCmpEQorNE
      0095B7 7B 03            [ 1]  752 	ld	a, (0x03, sp)
      0095B9 4A               [ 1]  753 	dec	a
      0095BA 26 03            [ 1]  754 	jrne	00187$
      0095BC CC 96 04         [ 2]  755 	jp	00109$
      0095BF                        756 00187$:
                           0001D5   757 	Sstm8s_tim4$TIM4_PrescalerConfig$160 ==.
                                    758 ; skipping generated iCode
                                    759 ; genCmpEQorNE
      0095BF 7B 03            [ 1]  760 	ld	a, (0x03, sp)
      0095C1 A1 02            [ 1]  761 	cp	a, #0x02
      0095C3 26 03            [ 1]  762 	jrne	00190$
      0095C5 CC 96 04         [ 2]  763 	jp	00109$
      0095C8                        764 00190$:
                           0001DE   765 	Sstm8s_tim4$TIM4_PrescalerConfig$161 ==.
                                    766 ; skipping generated iCode
                                    767 ; genCmpEQorNE
      0095C8 7B 03            [ 1]  768 	ld	a, (0x03, sp)
      0095CA A1 03            [ 1]  769 	cp	a, #0x03
      0095CC 26 03            [ 1]  770 	jrne	00193$
      0095CE CC 96 04         [ 2]  771 	jp	00109$
      0095D1                        772 00193$:
                           0001E7   773 	Sstm8s_tim4$TIM4_PrescalerConfig$162 ==.
                                    774 ; skipping generated iCode
                                    775 ; genCmpEQorNE
      0095D1 7B 03            [ 1]  776 	ld	a, (0x03, sp)
      0095D3 A1 04            [ 1]  777 	cp	a, #0x04
      0095D5 26 03            [ 1]  778 	jrne	00196$
      0095D7 CC 96 04         [ 2]  779 	jp	00109$
      0095DA                        780 00196$:
                           0001F0   781 	Sstm8s_tim4$TIM4_PrescalerConfig$163 ==.
                                    782 ; skipping generated iCode
                                    783 ; genCmpEQorNE
      0095DA 7B 03            [ 1]  784 	ld	a, (0x03, sp)
      0095DC A1 05            [ 1]  785 	cp	a, #0x05
      0095DE 26 03            [ 1]  786 	jrne	00199$
      0095E0 CC 96 04         [ 2]  787 	jp	00109$
      0095E3                        788 00199$:
                           0001F9   789 	Sstm8s_tim4$TIM4_PrescalerConfig$164 ==.
                                    790 ; skipping generated iCode
                                    791 ; genCmpEQorNE
      0095E3 7B 03            [ 1]  792 	ld	a, (0x03, sp)
      0095E5 A1 06            [ 1]  793 	cp	a, #0x06
      0095E7 26 03            [ 1]  794 	jrne	00202$
      0095E9 CC 96 04         [ 2]  795 	jp	00109$
      0095EC                        796 00202$:
                           000202   797 	Sstm8s_tim4$TIM4_PrescalerConfig$165 ==.
                                    798 ; skipping generated iCode
                                    799 ; genCmpEQorNE
      0095EC 7B 03            [ 1]  800 	ld	a, (0x03, sp)
      0095EE A1 07            [ 1]  801 	cp	a, #0x07
      0095F0 26 03            [ 1]  802 	jrne	00205$
      0095F2 CC 96 04         [ 2]  803 	jp	00109$
      0095F5                        804 00205$:
                           00020B   805 	Sstm8s_tim4$TIM4_PrescalerConfig$166 ==.
                                    806 ; skipping generated iCode
                                    807 ; skipping iCode since result will be rematerialized
                                    808 ; skipping iCode since result will be rematerialized
                                    809 ; genIPush
      0095F5 4B DB            [ 1]  810 	push	#0xdb
                           00020D   811 	Sstm8s_tim4$TIM4_PrescalerConfig$167 ==.
      0095F7 5F               [ 1]  812 	clrw	x
      0095F8 89               [ 2]  813 	pushw	x
                           00020F   814 	Sstm8s_tim4$TIM4_PrescalerConfig$168 ==.
      0095F9 4B 00            [ 1]  815 	push	#0x00
                           000211   816 	Sstm8s_tim4$TIM4_PrescalerConfig$169 ==.
                                    817 ; genIPush
      0095FB 4B D4            [ 1]  818 	push	#<(___str_0+0)
                           000213   819 	Sstm8s_tim4$TIM4_PrescalerConfig$170 ==.
      0095FD 4B 80            [ 1]  820 	push	#((___str_0+0) >> 8)
                           000215   821 	Sstm8s_tim4$TIM4_PrescalerConfig$171 ==.
                                    822 ; genCall
      0095FF CD 82 99         [ 4]  823 	call	_assert_failed
      009602 5B 06            [ 2]  824 	addw	sp, #6
                           00021A   825 	Sstm8s_tim4$TIM4_PrescalerConfig$172 ==.
                                    826 ; genLabel
      009604                        827 00109$:
                           00021A   828 	Sstm8s_tim4$TIM4_PrescalerConfig$173 ==.
                                    829 ;	../SPL/src/stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
                                    830 ; genPointerSet
      009604 AE 53 45         [ 2]  831 	ldw	x, #0x5345
      009607 7B 03            [ 1]  832 	ld	a, (0x03, sp)
      009609 F7               [ 1]  833 	ld	(x), a
                           000220   834 	Sstm8s_tim4$TIM4_PrescalerConfig$174 ==.
                                    835 ;	../SPL/src/stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
                                    836 ; genPointerSet
      00960A AE 53 43         [ 2]  837 	ldw	x, #0x5343
      00960D 7B 04            [ 1]  838 	ld	a, (0x04, sp)
      00960F F7               [ 1]  839 	ld	(x), a
                                    840 ; genLabel
      009610                        841 00101$:
                           000226   842 	Sstm8s_tim4$TIM4_PrescalerConfig$175 ==.
                                    843 ;	../SPL/src/stm8s_tim4.c: 226: }
                                    844 ; genEndFunction
                           000226   845 	Sstm8s_tim4$TIM4_PrescalerConfig$176 ==.
                           000226   846 	XG$TIM4_PrescalerConfig$0$0 ==.
      009610 81               [ 4]  847 	ret
                           000227   848 	Sstm8s_tim4$TIM4_PrescalerConfig$177 ==.
                           000227   849 	Sstm8s_tim4$TIM4_ARRPreloadConfig$178 ==.
                                    850 ;	../SPL/src/stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
                                    851 ; genLabel
                                    852 ;	-----------------------------------------
                                    853 ;	 function TIM4_ARRPreloadConfig
                                    854 ;	-----------------------------------------
                                    855 ;	Register assignment is optimal.
                                    856 ;	Stack space usage: 0 bytes.
      009611                        857 _TIM4_ARRPreloadConfig:
                           000227   858 	Sstm8s_tim4$TIM4_ARRPreloadConfig$179 ==.
                           000227   859 	Sstm8s_tim4$TIM4_ARRPreloadConfig$180 ==.
                                    860 ;	../SPL/src/stm8s_tim4.c: 237: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    861 ; genIfx
      009611 0D 03            [ 1]  862 	tnz	(0x03, sp)
      009613 26 03            [ 1]  863 	jrne	00126$
      009615 CC 96 2F         [ 2]  864 	jp	00107$
      009618                        865 00126$:
                                    866 ; genCmpEQorNE
      009618 7B 03            [ 1]  867 	ld	a, (0x03, sp)
      00961A 4A               [ 1]  868 	dec	a
      00961B 26 03            [ 1]  869 	jrne	00128$
      00961D CC 96 2F         [ 2]  870 	jp	00107$
      009620                        871 00128$:
                           000236   872 	Sstm8s_tim4$TIM4_ARRPreloadConfig$181 ==.
                                    873 ; skipping generated iCode
                                    874 ; skipping iCode since result will be rematerialized
                                    875 ; skipping iCode since result will be rematerialized
                                    876 ; genIPush
      009620 4B ED            [ 1]  877 	push	#0xed
                           000238   878 	Sstm8s_tim4$TIM4_ARRPreloadConfig$182 ==.
      009622 5F               [ 1]  879 	clrw	x
      009623 89               [ 2]  880 	pushw	x
                           00023A   881 	Sstm8s_tim4$TIM4_ARRPreloadConfig$183 ==.
      009624 4B 00            [ 1]  882 	push	#0x00
                           00023C   883 	Sstm8s_tim4$TIM4_ARRPreloadConfig$184 ==.
                                    884 ; genIPush
      009626 4B D4            [ 1]  885 	push	#<(___str_0+0)
                           00023E   886 	Sstm8s_tim4$TIM4_ARRPreloadConfig$185 ==.
      009628 4B 80            [ 1]  887 	push	#((___str_0+0) >> 8)
                           000240   888 	Sstm8s_tim4$TIM4_ARRPreloadConfig$186 ==.
                                    889 ; genCall
      00962A CD 82 99         [ 4]  890 	call	_assert_failed
      00962D 5B 06            [ 2]  891 	addw	sp, #6
                           000245   892 	Sstm8s_tim4$TIM4_ARRPreloadConfig$187 ==.
                                    893 ; genLabel
      00962F                        894 00107$:
                           000245   895 	Sstm8s_tim4$TIM4_ARRPreloadConfig$188 ==.
                                    896 ;	../SPL/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
                                    897 ; genPointerGet
      00962F C6 53 40         [ 1]  898 	ld	a, 0x5340
                           000248   899 	Sstm8s_tim4$TIM4_ARRPreloadConfig$189 ==.
                                    900 ;	../SPL/src/stm8s_tim4.c: 240: if (NewState != DISABLE)
                                    901 ; genIfx
      009632 0D 03            [ 1]  902 	tnz	(0x03, sp)
      009634 26 03            [ 1]  903 	jrne	00130$
      009636 CC 96 41         [ 2]  904 	jp	00102$
      009639                        905 00130$:
                           00024F   906 	Sstm8s_tim4$TIM4_ARRPreloadConfig$190 ==.
                           00024F   907 	Sstm8s_tim4$TIM4_ARRPreloadConfig$191 ==.
                                    908 ;	../SPL/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
                                    909 ; genOr
      009639 AA 80            [ 1]  910 	or	a, #0x80
                                    911 ; genPointerSet
      00963B C7 53 40         [ 1]  912 	ld	0x5340, a
                           000254   913 	Sstm8s_tim4$TIM4_ARRPreloadConfig$192 ==.
                                    914 ; genGoto
      00963E CC 96 46         [ 2]  915 	jp	00104$
                                    916 ; genLabel
      009641                        917 00102$:
                           000257   918 	Sstm8s_tim4$TIM4_ARRPreloadConfig$193 ==.
                           000257   919 	Sstm8s_tim4$TIM4_ARRPreloadConfig$194 ==.
                                    920 ;	../SPL/src/stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
                                    921 ; genAnd
      009641 A4 7F            [ 1]  922 	and	a, #0x7f
                                    923 ; genPointerSet
      009643 C7 53 40         [ 1]  924 	ld	0x5340, a
                           00025C   925 	Sstm8s_tim4$TIM4_ARRPreloadConfig$195 ==.
                                    926 ; genLabel
      009646                        927 00104$:
                           00025C   928 	Sstm8s_tim4$TIM4_ARRPreloadConfig$196 ==.
                                    929 ;	../SPL/src/stm8s_tim4.c: 248: }
                                    930 ; genEndFunction
                           00025C   931 	Sstm8s_tim4$TIM4_ARRPreloadConfig$197 ==.
                           00025C   932 	XG$TIM4_ARRPreloadConfig$0$0 ==.
      009646 81               [ 4]  933 	ret
                           00025D   934 	Sstm8s_tim4$TIM4_ARRPreloadConfig$198 ==.
                           00025D   935 	Sstm8s_tim4$TIM4_GenerateEvent$199 ==.
                                    936 ;	../SPL/src/stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
                                    937 ; genLabel
                                    938 ;	-----------------------------------------
                                    939 ;	 function TIM4_GenerateEvent
                                    940 ;	-----------------------------------------
                                    941 ;	Register assignment is optimal.
                                    942 ;	Stack space usage: 0 bytes.
      009647                        943 _TIM4_GenerateEvent:
                           00025D   944 	Sstm8s_tim4$TIM4_GenerateEvent$200 ==.
                           00025D   945 	Sstm8s_tim4$TIM4_GenerateEvent$201 ==.
                                    946 ;	../SPL/src/stm8s_tim4.c: 260: assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
                                    947 ; genCmpEQorNE
      009647 7B 03            [ 1]  948 	ld	a, (0x03, sp)
      009649 4A               [ 1]  949 	dec	a
      00964A 26 03            [ 1]  950 	jrne	00111$
      00964C CC 96 5E         [ 2]  951 	jp	00104$
      00964F                        952 00111$:
                           000265   953 	Sstm8s_tim4$TIM4_GenerateEvent$202 ==.
                                    954 ; skipping generated iCode
                                    955 ; skipping iCode since result will be rematerialized
                                    956 ; skipping iCode since result will be rematerialized
                                    957 ; genIPush
      00964F 4B 04            [ 1]  958 	push	#0x04
                           000267   959 	Sstm8s_tim4$TIM4_GenerateEvent$203 ==.
      009651 4B 01            [ 1]  960 	push	#0x01
                           000269   961 	Sstm8s_tim4$TIM4_GenerateEvent$204 ==.
      009653 5F               [ 1]  962 	clrw	x
      009654 89               [ 2]  963 	pushw	x
                           00026B   964 	Sstm8s_tim4$TIM4_GenerateEvent$205 ==.
                                    965 ; genIPush
      009655 4B D4            [ 1]  966 	push	#<(___str_0+0)
                           00026D   967 	Sstm8s_tim4$TIM4_GenerateEvent$206 ==.
      009657 4B 80            [ 1]  968 	push	#((___str_0+0) >> 8)
                           00026F   969 	Sstm8s_tim4$TIM4_GenerateEvent$207 ==.
                                    970 ; genCall
      009659 CD 82 99         [ 4]  971 	call	_assert_failed
      00965C 5B 06            [ 2]  972 	addw	sp, #6
                           000274   973 	Sstm8s_tim4$TIM4_GenerateEvent$208 ==.
                                    974 ; genLabel
      00965E                        975 00104$:
                           000274   976 	Sstm8s_tim4$TIM4_GenerateEvent$209 ==.
                                    977 ;	../SPL/src/stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
                                    978 ; genPointerSet
      00965E AE 53 43         [ 2]  979 	ldw	x, #0x5343
      009661 7B 03            [ 1]  980 	ld	a, (0x03, sp)
      009663 F7               [ 1]  981 	ld	(x), a
                                    982 ; genLabel
      009664                        983 00101$:
                           00027A   984 	Sstm8s_tim4$TIM4_GenerateEvent$210 ==.
                                    985 ;	../SPL/src/stm8s_tim4.c: 264: }
                                    986 ; genEndFunction
                           00027A   987 	Sstm8s_tim4$TIM4_GenerateEvent$211 ==.
                           00027A   988 	XG$TIM4_GenerateEvent$0$0 ==.
      009664 81               [ 4]  989 	ret
                           00027B   990 	Sstm8s_tim4$TIM4_GenerateEvent$212 ==.
                           00027B   991 	Sstm8s_tim4$TIM4_SetCounter$213 ==.
                                    992 ;	../SPL/src/stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
                                    993 ; genLabel
                                    994 ;	-----------------------------------------
                                    995 ;	 function TIM4_SetCounter
                                    996 ;	-----------------------------------------
                                    997 ;	Register assignment is optimal.
                                    998 ;	Stack space usage: 0 bytes.
      009665                        999 _TIM4_SetCounter:
                           00027B  1000 	Sstm8s_tim4$TIM4_SetCounter$214 ==.
                           00027B  1001 	Sstm8s_tim4$TIM4_SetCounter$215 ==.
                                   1002 ;	../SPL/src/stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
                                   1003 ; genPointerSet
      009665 AE 53 44         [ 2] 1004 	ldw	x, #0x5344
      009668 7B 03            [ 1] 1005 	ld	a, (0x03, sp)
      00966A F7               [ 1] 1006 	ld	(x), a
                                   1007 ; genLabel
      00966B                       1008 00101$:
                           000281  1009 	Sstm8s_tim4$TIM4_SetCounter$216 ==.
                                   1010 ;	../SPL/src/stm8s_tim4.c: 276: }
                                   1011 ; genEndFunction
                           000281  1012 	Sstm8s_tim4$TIM4_SetCounter$217 ==.
                           000281  1013 	XG$TIM4_SetCounter$0$0 ==.
      00966B 81               [ 4] 1014 	ret
                           000282  1015 	Sstm8s_tim4$TIM4_SetCounter$218 ==.
                           000282  1016 	Sstm8s_tim4$TIM4_SetAutoreload$219 ==.
                                   1017 ;	../SPL/src/stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
                                   1018 ; genLabel
                                   1019 ;	-----------------------------------------
                                   1020 ;	 function TIM4_SetAutoreload
                                   1021 ;	-----------------------------------------
                                   1022 ;	Register assignment is optimal.
                                   1023 ;	Stack space usage: 0 bytes.
      00966C                       1024 _TIM4_SetAutoreload:
                           000282  1025 	Sstm8s_tim4$TIM4_SetAutoreload$220 ==.
                           000282  1026 	Sstm8s_tim4$TIM4_SetAutoreload$221 ==.
                                   1027 ;	../SPL/src/stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
                                   1028 ; genPointerSet
      00966C AE 53 46         [ 2] 1029 	ldw	x, #0x5346
      00966F 7B 03            [ 1] 1030 	ld	a, (0x03, sp)
      009671 F7               [ 1] 1031 	ld	(x), a
                                   1032 ; genLabel
      009672                       1033 00101$:
                           000288  1034 	Sstm8s_tim4$TIM4_SetAutoreload$222 ==.
                                   1035 ;	../SPL/src/stm8s_tim4.c: 288: }
                                   1036 ; genEndFunction
                           000288  1037 	Sstm8s_tim4$TIM4_SetAutoreload$223 ==.
                           000288  1038 	XG$TIM4_SetAutoreload$0$0 ==.
      009672 81               [ 4] 1039 	ret
                           000289  1040 	Sstm8s_tim4$TIM4_SetAutoreload$224 ==.
                           000289  1041 	Sstm8s_tim4$TIM4_GetCounter$225 ==.
                                   1042 ;	../SPL/src/stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
                                   1043 ; genLabel
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function TIM4_GetCounter
                                   1046 ;	-----------------------------------------
                                   1047 ;	Register assignment is optimal.
                                   1048 ;	Stack space usage: 0 bytes.
      009673                       1049 _TIM4_GetCounter:
                           000289  1050 	Sstm8s_tim4$TIM4_GetCounter$226 ==.
                           000289  1051 	Sstm8s_tim4$TIM4_GetCounter$227 ==.
                                   1052 ;	../SPL/src/stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
                                   1053 ; genPointerGet
      009673 C6 53 44         [ 1] 1054 	ld	a, 0x5344
                                   1055 ; genReturn
                                   1056 ; genLabel
      009676                       1057 00101$:
                           00028C  1058 	Sstm8s_tim4$TIM4_GetCounter$228 ==.
                                   1059 ;	../SPL/src/stm8s_tim4.c: 299: }
                                   1060 ; genEndFunction
                           00028C  1061 	Sstm8s_tim4$TIM4_GetCounter$229 ==.
                           00028C  1062 	XG$TIM4_GetCounter$0$0 ==.
      009676 81               [ 4] 1063 	ret
                           00028D  1064 	Sstm8s_tim4$TIM4_GetCounter$230 ==.
                           00028D  1065 	Sstm8s_tim4$TIM4_GetPrescaler$231 ==.
                                   1066 ;	../SPL/src/stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
                                   1067 ; genLabel
                                   1068 ;	-----------------------------------------
                                   1069 ;	 function TIM4_GetPrescaler
                                   1070 ;	-----------------------------------------
                                   1071 ;	Register assignment is optimal.
                                   1072 ;	Stack space usage: 0 bytes.
      009677                       1073 _TIM4_GetPrescaler:
                           00028D  1074 	Sstm8s_tim4$TIM4_GetPrescaler$232 ==.
                           00028D  1075 	Sstm8s_tim4$TIM4_GetPrescaler$233 ==.
                                   1076 ;	../SPL/src/stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
                                   1077 ; genPointerGet
      009677 C6 53 45         [ 1] 1078 	ld	a, 0x5345
                                   1079 ; genReturn
                                   1080 ; genLabel
      00967A                       1081 00101$:
                           000290  1082 	Sstm8s_tim4$TIM4_GetPrescaler$234 ==.
                                   1083 ;	../SPL/src/stm8s_tim4.c: 310: }
                                   1084 ; genEndFunction
                           000290  1085 	Sstm8s_tim4$TIM4_GetPrescaler$235 ==.
                           000290  1086 	XG$TIM4_GetPrescaler$0$0 ==.
      00967A 81               [ 4] 1087 	ret
                           000291  1088 	Sstm8s_tim4$TIM4_GetPrescaler$236 ==.
                           000291  1089 	Sstm8s_tim4$TIM4_GetFlagStatus$237 ==.
                                   1090 ;	../SPL/src/stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
                                   1091 ; genLabel
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function TIM4_GetFlagStatus
                                   1094 ;	-----------------------------------------
                                   1095 ;	Register assignment is optimal.
                                   1096 ;	Stack space usage: 0 bytes.
      00967B                       1097 _TIM4_GetFlagStatus:
                           000291  1098 	Sstm8s_tim4$TIM4_GetFlagStatus$238 ==.
                           000291  1099 	Sstm8s_tim4$TIM4_GetFlagStatus$239 ==.
                                   1100 ;	../SPL/src/stm8s_tim4.c: 324: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
                                   1101 ; genCmpEQorNE
      00967B 7B 03            [ 1] 1102 	ld	a, (0x03, sp)
      00967D 4A               [ 1] 1103 	dec	a
      00967E 26 03            [ 1] 1104 	jrne	00119$
      009680 CC 96 92         [ 2] 1105 	jp	00107$
      009683                       1106 00119$:
                           000299  1107 	Sstm8s_tim4$TIM4_GetFlagStatus$240 ==.
                                   1108 ; skipping generated iCode
                                   1109 ; skipping iCode since result will be rematerialized
                                   1110 ; skipping iCode since result will be rematerialized
                                   1111 ; genIPush
      009683 4B 44            [ 1] 1112 	push	#0x44
                           00029B  1113 	Sstm8s_tim4$TIM4_GetFlagStatus$241 ==.
      009685 4B 01            [ 1] 1114 	push	#0x01
                           00029D  1115 	Sstm8s_tim4$TIM4_GetFlagStatus$242 ==.
      009687 5F               [ 1] 1116 	clrw	x
      009688 89               [ 2] 1117 	pushw	x
                           00029F  1118 	Sstm8s_tim4$TIM4_GetFlagStatus$243 ==.
                                   1119 ; genIPush
      009689 4B D4            [ 1] 1120 	push	#<(___str_0+0)
                           0002A1  1121 	Sstm8s_tim4$TIM4_GetFlagStatus$244 ==.
      00968B 4B 80            [ 1] 1122 	push	#((___str_0+0) >> 8)
                           0002A3  1123 	Sstm8s_tim4$TIM4_GetFlagStatus$245 ==.
                                   1124 ; genCall
      00968D CD 82 99         [ 4] 1125 	call	_assert_failed
      009690 5B 06            [ 2] 1126 	addw	sp, #6
                           0002A8  1127 	Sstm8s_tim4$TIM4_GetFlagStatus$246 ==.
                                   1128 ; genLabel
      009692                       1129 00107$:
                           0002A8  1130 	Sstm8s_tim4$TIM4_GetFlagStatus$247 ==.
                                   1131 ;	../SPL/src/stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
                                   1132 ; genPointerGet
      009692 C6 53 42         [ 1] 1133 	ld	a, 0x5342
                                   1134 ; genAnd
      009695 14 03            [ 1] 1135 	and	a, (0x03, sp)
                                   1136 ; genIfx
      009697 4D               [ 1] 1137 	tnz	a
      009698 26 03            [ 1] 1138 	jrne	00121$
      00969A CC 96 A2         [ 2] 1139 	jp	00102$
      00969D                       1140 00121$:
                           0002B3  1141 	Sstm8s_tim4$TIM4_GetFlagStatus$248 ==.
                           0002B3  1142 	Sstm8s_tim4$TIM4_GetFlagStatus$249 ==.
                                   1143 ;	../SPL/src/stm8s_tim4.c: 328: bitstatus = SET;
                                   1144 ; genAssign
      00969D A6 01            [ 1] 1145 	ld	a, #0x01
                           0002B5  1146 	Sstm8s_tim4$TIM4_GetFlagStatus$250 ==.
                                   1147 ; genGoto
      00969F CC 96 A3         [ 2] 1148 	jp	00103$
                                   1149 ; genLabel
      0096A2                       1150 00102$:
                           0002B8  1151 	Sstm8s_tim4$TIM4_GetFlagStatus$251 ==.
                           0002B8  1152 	Sstm8s_tim4$TIM4_GetFlagStatus$252 ==.
                                   1153 ;	../SPL/src/stm8s_tim4.c: 332: bitstatus = RESET;
                                   1154 ; genAssign
      0096A2 4F               [ 1] 1155 	clr	a
                           0002B9  1156 	Sstm8s_tim4$TIM4_GetFlagStatus$253 ==.
                                   1157 ; genLabel
      0096A3                       1158 00103$:
                           0002B9  1159 	Sstm8s_tim4$TIM4_GetFlagStatus$254 ==.
                                   1160 ;	../SPL/src/stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
                                   1161 ; genReturn
                                   1162 ; genLabel
      0096A3                       1163 00104$:
                           0002B9  1164 	Sstm8s_tim4$TIM4_GetFlagStatus$255 ==.
                                   1165 ;	../SPL/src/stm8s_tim4.c: 335: }
                                   1166 ; genEndFunction
                           0002B9  1167 	Sstm8s_tim4$TIM4_GetFlagStatus$256 ==.
                           0002B9  1168 	XG$TIM4_GetFlagStatus$0$0 ==.
      0096A3 81               [ 4] 1169 	ret
                           0002BA  1170 	Sstm8s_tim4$TIM4_GetFlagStatus$257 ==.
                           0002BA  1171 	Sstm8s_tim4$TIM4_ClearFlag$258 ==.
                                   1172 ;	../SPL/src/stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
                                   1173 ; genLabel
                                   1174 ;	-----------------------------------------
                                   1175 ;	 function TIM4_ClearFlag
                                   1176 ;	-----------------------------------------
                                   1177 ;	Register assignment is optimal.
                                   1178 ;	Stack space usage: 0 bytes.
      0096A4                       1179 _TIM4_ClearFlag:
                           0002BA  1180 	Sstm8s_tim4$TIM4_ClearFlag$259 ==.
                           0002BA  1181 	Sstm8s_tim4$TIM4_ClearFlag$260 ==.
                                   1182 ;	../SPL/src/stm8s_tim4.c: 347: assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
                                   1183 ; genCmpEQorNE
      0096A4 7B 03            [ 1] 1184 	ld	a, (0x03, sp)
      0096A6 4A               [ 1] 1185 	dec	a
      0096A7 26 03            [ 1] 1186 	jrne	00111$
      0096A9 CC 96 BB         [ 2] 1187 	jp	00104$
      0096AC                       1188 00111$:
                           0002C2  1189 	Sstm8s_tim4$TIM4_ClearFlag$261 ==.
                                   1190 ; skipping generated iCode
                                   1191 ; skipping iCode since result will be rematerialized
                                   1192 ; skipping iCode since result will be rematerialized
                                   1193 ; genIPush
      0096AC 4B 5B            [ 1] 1194 	push	#0x5b
                           0002C4  1195 	Sstm8s_tim4$TIM4_ClearFlag$262 ==.
      0096AE 4B 01            [ 1] 1196 	push	#0x01
                           0002C6  1197 	Sstm8s_tim4$TIM4_ClearFlag$263 ==.
      0096B0 5F               [ 1] 1198 	clrw	x
      0096B1 89               [ 2] 1199 	pushw	x
                           0002C8  1200 	Sstm8s_tim4$TIM4_ClearFlag$264 ==.
                                   1201 ; genIPush
      0096B2 4B D4            [ 1] 1202 	push	#<(___str_0+0)
                           0002CA  1203 	Sstm8s_tim4$TIM4_ClearFlag$265 ==.
      0096B4 4B 80            [ 1] 1204 	push	#((___str_0+0) >> 8)
                           0002CC  1205 	Sstm8s_tim4$TIM4_ClearFlag$266 ==.
                                   1206 ; genCall
      0096B6 CD 82 99         [ 4] 1207 	call	_assert_failed
      0096B9 5B 06            [ 2] 1208 	addw	sp, #6
                           0002D1  1209 	Sstm8s_tim4$TIM4_ClearFlag$267 ==.
                                   1210 ; genLabel
      0096BB                       1211 00104$:
                           0002D1  1212 	Sstm8s_tim4$TIM4_ClearFlag$268 ==.
                                   1213 ;	../SPL/src/stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
                                   1214 ; genCpl
      0096BB 7B 03            [ 1] 1215 	ld	a, (0x03, sp)
      0096BD 43               [ 1] 1216 	cpl	a
                                   1217 ; genPointerSet
      0096BE C7 53 42         [ 1] 1218 	ld	0x5342, a
                                   1219 ; genLabel
      0096C1                       1220 00101$:
                           0002D7  1221 	Sstm8s_tim4$TIM4_ClearFlag$269 ==.
                                   1222 ;	../SPL/src/stm8s_tim4.c: 351: }
                                   1223 ; genEndFunction
                           0002D7  1224 	Sstm8s_tim4$TIM4_ClearFlag$270 ==.
                           0002D7  1225 	XG$TIM4_ClearFlag$0$0 ==.
      0096C1 81               [ 4] 1226 	ret
                           0002D8  1227 	Sstm8s_tim4$TIM4_ClearFlag$271 ==.
                           0002D8  1228 	Sstm8s_tim4$TIM4_GetITStatus$272 ==.
                                   1229 ;	../SPL/src/stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
                                   1230 ; genLabel
                                   1231 ;	-----------------------------------------
                                   1232 ;	 function TIM4_GetITStatus
                                   1233 ;	-----------------------------------------
                                   1234 ;	Register assignment is optimal.
                                   1235 ;	Stack space usage: 1 bytes.
      0096C2                       1236 _TIM4_GetITStatus:
                           0002D8  1237 	Sstm8s_tim4$TIM4_GetITStatus$273 ==.
      0096C2 88               [ 1] 1238 	push	a
                           0002D9  1239 	Sstm8s_tim4$TIM4_GetITStatus$274 ==.
                           0002D9  1240 	Sstm8s_tim4$TIM4_GetITStatus$275 ==.
                                   1241 ;	../SPL/src/stm8s_tim4.c: 367: assert_param(IS_TIM4_IT_OK(TIM4_IT));
                                   1242 ; genCmpEQorNE
      0096C3 7B 04            [ 1] 1243 	ld	a, (0x04, sp)
      0096C5 4A               [ 1] 1244 	dec	a
      0096C6 26 03            [ 1] 1245 	jrne	00125$
      0096C8 CC 96 DA         [ 2] 1246 	jp	00108$
      0096CB                       1247 00125$:
                           0002E1  1248 	Sstm8s_tim4$TIM4_GetITStatus$276 ==.
                                   1249 ; skipping generated iCode
                                   1250 ; skipping iCode since result will be rematerialized
                                   1251 ; skipping iCode since result will be rematerialized
                                   1252 ; genIPush
      0096CB 4B 6F            [ 1] 1253 	push	#0x6f
                           0002E3  1254 	Sstm8s_tim4$TIM4_GetITStatus$277 ==.
      0096CD 4B 01            [ 1] 1255 	push	#0x01
                           0002E5  1256 	Sstm8s_tim4$TIM4_GetITStatus$278 ==.
      0096CF 5F               [ 1] 1257 	clrw	x
      0096D0 89               [ 2] 1258 	pushw	x
                           0002E7  1259 	Sstm8s_tim4$TIM4_GetITStatus$279 ==.
                                   1260 ; genIPush
      0096D1 4B D4            [ 1] 1261 	push	#<(___str_0+0)
                           0002E9  1262 	Sstm8s_tim4$TIM4_GetITStatus$280 ==.
      0096D3 4B 80            [ 1] 1263 	push	#((___str_0+0) >> 8)
                           0002EB  1264 	Sstm8s_tim4$TIM4_GetITStatus$281 ==.
                                   1265 ; genCall
      0096D5 CD 82 99         [ 4] 1266 	call	_assert_failed
      0096D8 5B 06            [ 2] 1267 	addw	sp, #6
                           0002F0  1268 	Sstm8s_tim4$TIM4_GetITStatus$282 ==.
                                   1269 ; genLabel
      0096DA                       1270 00108$:
                           0002F0  1271 	Sstm8s_tim4$TIM4_GetITStatus$283 ==.
                                   1272 ;	../SPL/src/stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
                                   1273 ; genPointerGet
      0096DA C6 53 42         [ 1] 1274 	ld	a, 0x5342
                                   1275 ; genAnd
      0096DD 14 04            [ 1] 1276 	and	a, (0x04, sp)
                                   1277 ; genAssign
      0096DF 6B 01            [ 1] 1278 	ld	(0x01, sp), a
                           0002F7  1279 	Sstm8s_tim4$TIM4_GetITStatus$284 ==.
                                   1280 ;	../SPL/src/stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
                                   1281 ; genPointerGet
      0096E1 C6 53 41         [ 1] 1282 	ld	a, 0x5341
                                   1283 ; genAnd
      0096E4 14 04            [ 1] 1284 	and	a, (0x04, sp)
                                   1285 ; genAssign
                           0002FC  1286 	Sstm8s_tim4$TIM4_GetITStatus$285 ==.
                                   1287 ;	../SPL/src/stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
                                   1288 ; genIfx
      0096E6 0D 01            [ 1] 1289 	tnz	(0x01, sp)
      0096E8 26 03            [ 1] 1290 	jrne	00127$
      0096EA CC 96 F8         [ 2] 1291 	jp	00102$
      0096ED                       1292 00127$:
                                   1293 ; genIfx
      0096ED 4D               [ 1] 1294 	tnz	a
      0096EE 26 03            [ 1] 1295 	jrne	00128$
      0096F0 CC 96 F8         [ 2] 1296 	jp	00102$
      0096F3                       1297 00128$:
                           000309  1298 	Sstm8s_tim4$TIM4_GetITStatus$286 ==.
                           000309  1299 	Sstm8s_tim4$TIM4_GetITStatus$287 ==.
                                   1300 ;	../SPL/src/stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
                                   1301 ; genAssign
      0096F3 A6 01            [ 1] 1302 	ld	a, #0x01
                           00030B  1303 	Sstm8s_tim4$TIM4_GetITStatus$288 ==.
                                   1304 ; genGoto
      0096F5 CC 96 F9         [ 2] 1305 	jp	00103$
                                   1306 ; genLabel
      0096F8                       1307 00102$:
                           00030E  1308 	Sstm8s_tim4$TIM4_GetITStatus$289 ==.
                           00030E  1309 	Sstm8s_tim4$TIM4_GetITStatus$290 ==.
                                   1310 ;	../SPL/src/stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
                                   1311 ; genAssign
      0096F8 4F               [ 1] 1312 	clr	a
                           00030F  1313 	Sstm8s_tim4$TIM4_GetITStatus$291 ==.
                                   1314 ; genLabel
      0096F9                       1315 00103$:
                           00030F  1316 	Sstm8s_tim4$TIM4_GetITStatus$292 ==.
                                   1317 ;	../SPL/src/stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
                                   1318 ; genReturn
                                   1319 ; genLabel
      0096F9                       1320 00105$:
                           00030F  1321 	Sstm8s_tim4$TIM4_GetITStatus$293 ==.
                                   1322 ;	../SPL/src/stm8s_tim4.c: 382: }
                                   1323 ; genEndFunction
      0096F9 5B 01            [ 2] 1324 	addw	sp, #1
                           000311  1325 	Sstm8s_tim4$TIM4_GetITStatus$294 ==.
                           000311  1326 	Sstm8s_tim4$TIM4_GetITStatus$295 ==.
                           000311  1327 	XG$TIM4_GetITStatus$0$0 ==.
      0096FB 81               [ 4] 1328 	ret
                           000312  1329 	Sstm8s_tim4$TIM4_GetITStatus$296 ==.
                           000312  1330 	Sstm8s_tim4$TIM4_ClearITPendingBit$297 ==.
                                   1331 ;	../SPL/src/stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
                                   1332 ; genLabel
                                   1333 ;	-----------------------------------------
                                   1334 ;	 function TIM4_ClearITPendingBit
                                   1335 ;	-----------------------------------------
                                   1336 ;	Register assignment is optimal.
                                   1337 ;	Stack space usage: 0 bytes.
      0096FC                       1338 _TIM4_ClearITPendingBit:
                           000312  1339 	Sstm8s_tim4$TIM4_ClearITPendingBit$298 ==.
                           000312  1340 	Sstm8s_tim4$TIM4_ClearITPendingBit$299 ==.
                                   1341 ;	../SPL/src/stm8s_tim4.c: 394: assert_param(IS_TIM4_IT_OK(TIM4_IT));
                                   1342 ; genCmpEQorNE
      0096FC 7B 03            [ 1] 1343 	ld	a, (0x03, sp)
      0096FE 4A               [ 1] 1344 	dec	a
      0096FF 26 03            [ 1] 1345 	jrne	00111$
      009701 CC 97 13         [ 2] 1346 	jp	00104$
      009704                       1347 00111$:
                           00031A  1348 	Sstm8s_tim4$TIM4_ClearITPendingBit$300 ==.
                                   1349 ; skipping generated iCode
                                   1350 ; skipping iCode since result will be rematerialized
                                   1351 ; skipping iCode since result will be rematerialized
                                   1352 ; genIPush
      009704 4B 8A            [ 1] 1353 	push	#0x8a
                           00031C  1354 	Sstm8s_tim4$TIM4_ClearITPendingBit$301 ==.
      009706 4B 01            [ 1] 1355 	push	#0x01
                           00031E  1356 	Sstm8s_tim4$TIM4_ClearITPendingBit$302 ==.
      009708 5F               [ 1] 1357 	clrw	x
      009709 89               [ 2] 1358 	pushw	x
                           000320  1359 	Sstm8s_tim4$TIM4_ClearITPendingBit$303 ==.
                                   1360 ; genIPush
      00970A 4B D4            [ 1] 1361 	push	#<(___str_0+0)
                           000322  1362 	Sstm8s_tim4$TIM4_ClearITPendingBit$304 ==.
      00970C 4B 80            [ 1] 1363 	push	#((___str_0+0) >> 8)
                           000324  1364 	Sstm8s_tim4$TIM4_ClearITPendingBit$305 ==.
                                   1365 ; genCall
      00970E CD 82 99         [ 4] 1366 	call	_assert_failed
      009711 5B 06            [ 2] 1367 	addw	sp, #6
                           000329  1368 	Sstm8s_tim4$TIM4_ClearITPendingBit$306 ==.
                                   1369 ; genLabel
      009713                       1370 00104$:
                           000329  1371 	Sstm8s_tim4$TIM4_ClearITPendingBit$307 ==.
                                   1372 ;	../SPL/src/stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
                                   1373 ; genCpl
      009713 7B 03            [ 1] 1374 	ld	a, (0x03, sp)
      009715 43               [ 1] 1375 	cpl	a
                                   1376 ; genPointerSet
      009716 C7 53 42         [ 1] 1377 	ld	0x5342, a
                                   1378 ; genLabel
      009719                       1379 00101$:
                           00032F  1380 	Sstm8s_tim4$TIM4_ClearITPendingBit$308 ==.
                                   1381 ;	../SPL/src/stm8s_tim4.c: 398: }
                                   1382 ; genEndFunction
                           00032F  1383 	Sstm8s_tim4$TIM4_ClearITPendingBit$309 ==.
                           00032F  1384 	XG$TIM4_ClearITPendingBit$0$0 ==.
      009719 81               [ 4] 1385 	ret
                           000330  1386 	Sstm8s_tim4$TIM4_ClearITPendingBit$310 ==.
                                   1387 	.area CODE
                                   1388 	.area CONST
                           000000  1389 Fstm8s_tim4$__str_0$0_0$0 == .
                                   1390 	.area CONST
      0080D4                       1391 ___str_0:
      0080D4 2E 2E 2F 53 50 4C 2F  1392 	.ascii "../SPL/src/stm8s_tim4.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      0080EB 00                    1393 	.db 0x00
                                   1394 	.area CODE
                                   1395 	.area INITIALIZER
                                   1396 	.area CABS (ABS)
                                   1397 
                                   1398 	.area .debug_line (NOLOAD)
      00169E 00 00 03 A7           1399 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0016A2                       1400 Ldebug_line_start:
      0016A2 00 02                 1401 	.dw	2
      0016A4 00 00 00 78           1402 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0016A8 01                    1403 	.db	1
      0016A9 01                    1404 	.db	1
      0016AA FB                    1405 	.db	-5
      0016AB 0F                    1406 	.db	15
      0016AC 0A                    1407 	.db	10
      0016AD 00                    1408 	.db	0
      0016AE 01                    1409 	.db	1
      0016AF 01                    1410 	.db	1
      0016B0 01                    1411 	.db	1
      0016B1 01                    1412 	.db	1
      0016B2 00                    1413 	.db	0
      0016B3 00                    1414 	.db	0
      0016B4 00                    1415 	.db	0
      0016B5 01                    1416 	.db	1
      0016B6 43 3A 5C 50 72 6F 67  1417 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0016DE 00                    1418 	.db	0
      0016DF 43 3A 5C 50 72 6F 67  1419 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001702 00                    1420 	.db	0
      001703 00                    1421 	.db	0
      001704 2E 2E 2F 53 50 4C 2F  1422 	.ascii "../SPL/src/stm8s_tim4.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      00171B 00                    1423 	.db	0
      00171C 00                    1424 	.uleb128	0
      00171D 00                    1425 	.uleb128	0
      00171E 00                    1426 	.uleb128	0
      00171F 00                    1427 	.db	0
      001720                       1428 Ldebug_line_stmt:
      001720 00                    1429 	.db	0
      001721 05                    1430 	.uleb128	5
      001722 02                    1431 	.db	2
      001723 00 00 93 EA           1432 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$0)
      001727 03                    1433 	.db	3
      001728 30                    1434 	.sleb128	48
      001729 01                    1435 	.db	1
      00172A 09                    1436 	.db	9
      00172B 00 00                 1437 	.dw	Sstm8s_tim4$TIM4_DeInit$2-Sstm8s_tim4$TIM4_DeInit$0
      00172D 03                    1438 	.db	3
      00172E 02                    1439 	.sleb128	2
      00172F 01                    1440 	.db	1
      001730 09                    1441 	.db	9
      001731 00 04                 1442 	.dw	Sstm8s_tim4$TIM4_DeInit$3-Sstm8s_tim4$TIM4_DeInit$2
      001733 03                    1443 	.db	3
      001734 01                    1444 	.sleb128	1
      001735 01                    1445 	.db	1
      001736 09                    1446 	.db	9
      001737 00 04                 1447 	.dw	Sstm8s_tim4$TIM4_DeInit$4-Sstm8s_tim4$TIM4_DeInit$3
      001739 03                    1448 	.db	3
      00173A 01                    1449 	.sleb128	1
      00173B 01                    1450 	.db	1
      00173C 09                    1451 	.db	9
      00173D 00 04                 1452 	.dw	Sstm8s_tim4$TIM4_DeInit$5-Sstm8s_tim4$TIM4_DeInit$4
      00173F 03                    1453 	.db	3
      001740 01                    1454 	.sleb128	1
      001741 01                    1455 	.db	1
      001742 09                    1456 	.db	9
      001743 00 04                 1457 	.dw	Sstm8s_tim4$TIM4_DeInit$6-Sstm8s_tim4$TIM4_DeInit$5
      001745 03                    1458 	.db	3
      001746 01                    1459 	.sleb128	1
      001747 01                    1460 	.db	1
      001748 09                    1461 	.db	9
      001749 00 04                 1462 	.dw	Sstm8s_tim4$TIM4_DeInit$7-Sstm8s_tim4$TIM4_DeInit$6
      00174B 03                    1463 	.db	3
      00174C 01                    1464 	.sleb128	1
      00174D 01                    1465 	.db	1
      00174E 09                    1466 	.db	9
      00174F 00 04                 1467 	.dw	Sstm8s_tim4$TIM4_DeInit$8-Sstm8s_tim4$TIM4_DeInit$7
      001751 03                    1468 	.db	3
      001752 01                    1469 	.sleb128	1
      001753 01                    1470 	.db	1
      001754 09                    1471 	.db	9
      001755 00 01                 1472 	.dw	1+Sstm8s_tim4$TIM4_DeInit$9-Sstm8s_tim4$TIM4_DeInit$8
      001757 00                    1473 	.db	0
      001758 01                    1474 	.uleb128	1
      001759 01                    1475 	.db	1
      00175A 00                    1476 	.db	0
      00175B 05                    1477 	.uleb128	5
      00175C 02                    1478 	.db	2
      00175D 00 00 94 03           1479 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$11)
      001761 03                    1480 	.db	3
      001762 C0 00                 1481 	.sleb128	64
      001764 01                    1482 	.db	1
      001765 09                    1483 	.db	9
      001766 00 00                 1484 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$13-Sstm8s_tim4$TIM4_TimeBaseInit$11
      001768 03                    1485 	.db	3
      001769 03                    1486 	.sleb128	3
      00176A 01                    1487 	.db	1
      00176B 09                    1488 	.db	9
      00176C 00 54                 1489 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$27-Sstm8s_tim4$TIM4_TimeBaseInit$13
      00176E 03                    1490 	.db	3
      00176F 02                    1491 	.sleb128	2
      001770 01                    1492 	.db	1
      001771 09                    1493 	.db	9
      001772 00 06                 1494 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$28-Sstm8s_tim4$TIM4_TimeBaseInit$27
      001774 03                    1495 	.db	3
      001775 02                    1496 	.sleb128	2
      001776 01                    1497 	.db	1
      001777 09                    1498 	.db	9
      001778 00 06                 1499 	.dw	Sstm8s_tim4$TIM4_TimeBaseInit$29-Sstm8s_tim4$TIM4_TimeBaseInit$28
      00177A 03                    1500 	.db	3
      00177B 01                    1501 	.sleb128	1
      00177C 01                    1502 	.db	1
      00177D 09                    1503 	.db	9
      00177E 00 01                 1504 	.dw	1+Sstm8s_tim4$TIM4_TimeBaseInit$30-Sstm8s_tim4$TIM4_TimeBaseInit$29
      001780 00                    1505 	.db	0
      001781 01                    1506 	.uleb128	1
      001782 01                    1507 	.db	1
      001783 00                    1508 	.db	0
      001784 05                    1509 	.uleb128	5
      001785 02                    1510 	.db	2
      001786 00 00 94 64           1511 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$32)
      00178A 03                    1512 	.db	3
      00178B D0 00                 1513 	.sleb128	80
      00178D 01                    1514 	.db	1
      00178E 09                    1515 	.db	9
      00178F 00 00                 1516 	.dw	Sstm8s_tim4$TIM4_Cmd$34-Sstm8s_tim4$TIM4_Cmd$32
      001791 03                    1517 	.db	3
      001792 03                    1518 	.sleb128	3
      001793 01                    1519 	.db	1
      001794 09                    1520 	.db	9
      001795 00 1E                 1521 	.dw	Sstm8s_tim4$TIM4_Cmd$42-Sstm8s_tim4$TIM4_Cmd$34
      001797 03                    1522 	.db	3
      001798 05                    1523 	.sleb128	5
      001799 01                    1524 	.db	1
      00179A 09                    1525 	.db	9
      00179B 00 03                 1526 	.dw	Sstm8s_tim4$TIM4_Cmd$43-Sstm8s_tim4$TIM4_Cmd$42
      00179D 03                    1527 	.db	3
      00179E 7E                    1528 	.sleb128	-2
      00179F 01                    1529 	.db	1
      0017A0 09                    1530 	.db	9
      0017A1 00 07                 1531 	.dw	Sstm8s_tim4$TIM4_Cmd$45-Sstm8s_tim4$TIM4_Cmd$43
      0017A3 03                    1532 	.db	3
      0017A4 02                    1533 	.sleb128	2
      0017A5 01                    1534 	.db	1
      0017A6 09                    1535 	.db	9
      0017A7 00 08                 1536 	.dw	Sstm8s_tim4$TIM4_Cmd$48-Sstm8s_tim4$TIM4_Cmd$45
      0017A9 03                    1537 	.db	3
      0017AA 04                    1538 	.sleb128	4
      0017AB 01                    1539 	.db	1
      0017AC 09                    1540 	.db	9
      0017AD 00 05                 1541 	.dw	Sstm8s_tim4$TIM4_Cmd$50-Sstm8s_tim4$TIM4_Cmd$48
      0017AF 03                    1542 	.db	3
      0017B0 02                    1543 	.sleb128	2
      0017B1 01                    1544 	.db	1
      0017B2 09                    1545 	.db	9
      0017B3 00 01                 1546 	.dw	1+Sstm8s_tim4$TIM4_Cmd$51-Sstm8s_tim4$TIM4_Cmd$50
      0017B5 00                    1547 	.db	0
      0017B6 01                    1548 	.uleb128	1
      0017B7 01                    1549 	.db	1
      0017B8 00                    1550 	.db	0
      0017B9 05                    1551 	.uleb128	5
      0017BA 02                    1552 	.db	2
      0017BB 00 00 94 9A           1553 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$53)
      0017BF 03                    1554 	.db	3
      0017C0 EA 00                 1555 	.sleb128	106
      0017C2 01                    1556 	.db	1
      0017C3 09                    1557 	.db	9
      0017C4 00 01                 1558 	.dw	Sstm8s_tim4$TIM4_ITConfig$56-Sstm8s_tim4$TIM4_ITConfig$53
      0017C6 03                    1559 	.db	3
      0017C7 03                    1560 	.sleb128	3
      0017C8 01                    1561 	.db	1
      0017C9 09                    1562 	.db	9
      0017CA 00 17                 1563 	.dw	Sstm8s_tim4$TIM4_ITConfig$64-Sstm8s_tim4$TIM4_ITConfig$56
      0017CC 03                    1564 	.db	3
      0017CD 01                    1565 	.sleb128	1
      0017CE 01                    1566 	.db	1
      0017CF 09                    1567 	.db	9
      0017D0 00 1E                 1568 	.dw	Sstm8s_tim4$TIM4_ITConfig$72-Sstm8s_tim4$TIM4_ITConfig$64
      0017D2 03                    1569 	.db	3
      0017D3 05                    1570 	.sleb128	5
      0017D4 01                    1571 	.db	1
      0017D5 09                    1572 	.db	9
      0017D6 00 03                 1573 	.dw	Sstm8s_tim4$TIM4_ITConfig$73-Sstm8s_tim4$TIM4_ITConfig$72
      0017D8 03                    1574 	.db	3
      0017D9 7D                    1575 	.sleb128	-3
      0017DA 01                    1576 	.db	1
      0017DB 09                    1577 	.db	9
      0017DC 00 07                 1578 	.dw	Sstm8s_tim4$TIM4_ITConfig$75-Sstm8s_tim4$TIM4_ITConfig$73
      0017DE 03                    1579 	.db	3
      0017DF 03                    1580 	.sleb128	3
      0017E0 01                    1581 	.db	1
      0017E1 09                    1582 	.db	9
      0017E2 00 08                 1583 	.dw	Sstm8s_tim4$TIM4_ITConfig$78-Sstm8s_tim4$TIM4_ITConfig$75
      0017E4 03                    1584 	.db	3
      0017E5 05                    1585 	.sleb128	5
      0017E6 01                    1586 	.db	1
      0017E7 09                    1587 	.db	9
      0017E8 00 0C                 1588 	.dw	Sstm8s_tim4$TIM4_ITConfig$82-Sstm8s_tim4$TIM4_ITConfig$78
      0017EA 03                    1589 	.db	3
      0017EB 02                    1590 	.sleb128	2
      0017EC 01                    1591 	.db	1
      0017ED 09                    1592 	.db	9
      0017EE 00 02                 1593 	.dw	1+Sstm8s_tim4$TIM4_ITConfig$84-Sstm8s_tim4$TIM4_ITConfig$82
      0017F0 00                    1594 	.db	0
      0017F1 01                    1595 	.uleb128	1
      0017F2 01                    1596 	.db	1
      0017F3 00                    1597 	.db	0
      0017F4 05                    1598 	.uleb128	5
      0017F5 02                    1599 	.db	2
      0017F6 00 00 94 F0           1600 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$86)
      0017FA 03                    1601 	.db	3
      0017FB 82 01                 1602 	.sleb128	130
      0017FD 01                    1603 	.db	1
      0017FE 09                    1604 	.db	9
      0017FF 00 00                 1605 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$88-Sstm8s_tim4$TIM4_UpdateDisableConfig$86
      001801 03                    1606 	.db	3
      001802 03                    1607 	.sleb128	3
      001803 01                    1608 	.db	1
      001804 09                    1609 	.db	9
      001805 00 1E                 1610 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$96-Sstm8s_tim4$TIM4_UpdateDisableConfig$88
      001807 03                    1611 	.db	3
      001808 05                    1612 	.sleb128	5
      001809 01                    1613 	.db	1
      00180A 09                    1614 	.db	9
      00180B 00 03                 1615 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$97-Sstm8s_tim4$TIM4_UpdateDisableConfig$96
      00180D 03                    1616 	.db	3
      00180E 7E                    1617 	.sleb128	-2
      00180F 01                    1618 	.db	1
      001810 09                    1619 	.db	9
      001811 00 07                 1620 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$99-Sstm8s_tim4$TIM4_UpdateDisableConfig$97
      001813 03                    1621 	.db	3
      001814 02                    1622 	.sleb128	2
      001815 01                    1623 	.db	1
      001816 09                    1624 	.db	9
      001817 00 08                 1625 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$102-Sstm8s_tim4$TIM4_UpdateDisableConfig$99
      001819 03                    1626 	.db	3
      00181A 04                    1627 	.sleb128	4
      00181B 01                    1628 	.db	1
      00181C 09                    1629 	.db	9
      00181D 00 05                 1630 	.dw	Sstm8s_tim4$TIM4_UpdateDisableConfig$104-Sstm8s_tim4$TIM4_UpdateDisableConfig$102
      00181F 03                    1631 	.db	3
      001820 02                    1632 	.sleb128	2
      001821 01                    1633 	.db	1
      001822 09                    1634 	.db	9
      001823 00 01                 1635 	.dw	1+Sstm8s_tim4$TIM4_UpdateDisableConfig$105-Sstm8s_tim4$TIM4_UpdateDisableConfig$104
      001825 00                    1636 	.db	0
      001826 01                    1637 	.uleb128	1
      001827 01                    1638 	.db	1
      001828 00                    1639 	.db	0
      001829 05                    1640 	.uleb128	5
      00182A 02                    1641 	.db	2
      00182B 00 00 95 26           1642 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$107)
      00182F 03                    1643 	.db	3
      001830 9A 01                 1644 	.sleb128	154
      001832 01                    1645 	.db	1
      001833 09                    1646 	.db	9
      001834 00 00                 1647 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$109-Sstm8s_tim4$TIM4_UpdateRequestConfig$107
      001836 03                    1648 	.db	3
      001837 03                    1649 	.sleb128	3
      001838 01                    1650 	.db	1
      001839 09                    1651 	.db	9
      00183A 00 1E                 1652 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$117-Sstm8s_tim4$TIM4_UpdateRequestConfig$109
      00183C 03                    1653 	.db	3
      00183D 05                    1654 	.sleb128	5
      00183E 01                    1655 	.db	1
      00183F 09                    1656 	.db	9
      001840 00 03                 1657 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$118-Sstm8s_tim4$TIM4_UpdateRequestConfig$117
      001842 03                    1658 	.db	3
      001843 7E                    1659 	.sleb128	-2
      001844 01                    1660 	.db	1
      001845 09                    1661 	.db	9
      001846 00 07                 1662 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$120-Sstm8s_tim4$TIM4_UpdateRequestConfig$118
      001848 03                    1663 	.db	3
      001849 02                    1664 	.sleb128	2
      00184A 01                    1665 	.db	1
      00184B 09                    1666 	.db	9
      00184C 00 08                 1667 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$123-Sstm8s_tim4$TIM4_UpdateRequestConfig$120
      00184E 03                    1668 	.db	3
      00184F 04                    1669 	.sleb128	4
      001850 01                    1670 	.db	1
      001851 09                    1671 	.db	9
      001852 00 05                 1672 	.dw	Sstm8s_tim4$TIM4_UpdateRequestConfig$125-Sstm8s_tim4$TIM4_UpdateRequestConfig$123
      001854 03                    1673 	.db	3
      001855 02                    1674 	.sleb128	2
      001856 01                    1675 	.db	1
      001857 09                    1676 	.db	9
      001858 00 01                 1677 	.dw	1+Sstm8s_tim4$TIM4_UpdateRequestConfig$126-Sstm8s_tim4$TIM4_UpdateRequestConfig$125
      00185A 00                    1678 	.db	0
      00185B 01                    1679 	.uleb128	1
      00185C 01                    1680 	.db	1
      00185D 00                    1681 	.db	0
      00185E 05                    1682 	.uleb128	5
      00185F 02                    1683 	.db	2
      001860 00 00 95 5C           1684 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$128)
      001864 03                    1685 	.db	3
      001865 B2 01                 1686 	.sleb128	178
      001867 01                    1687 	.db	1
      001868 09                    1688 	.db	9
      001869 00 00                 1689 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$130-Sstm8s_tim4$TIM4_SelectOnePulseMode$128
      00186B 03                    1690 	.db	3
      00186C 03                    1691 	.sleb128	3
      00186D 01                    1692 	.db	1
      00186E 09                    1693 	.db	9
      00186F 00 1E                 1694 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$138-Sstm8s_tim4$TIM4_SelectOnePulseMode$130
      001871 03                    1695 	.db	3
      001872 05                    1696 	.sleb128	5
      001873 01                    1697 	.db	1
      001874 09                    1698 	.db	9
      001875 00 03                 1699 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$139-Sstm8s_tim4$TIM4_SelectOnePulseMode$138
      001877 03                    1700 	.db	3
      001878 7E                    1701 	.sleb128	-2
      001879 01                    1702 	.db	1
      00187A 09                    1703 	.db	9
      00187B 00 07                 1704 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$141-Sstm8s_tim4$TIM4_SelectOnePulseMode$139
      00187D 03                    1705 	.db	3
      00187E 02                    1706 	.sleb128	2
      00187F 01                    1707 	.db	1
      001880 09                    1708 	.db	9
      001881 00 08                 1709 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$144-Sstm8s_tim4$TIM4_SelectOnePulseMode$141
      001883 03                    1710 	.db	3
      001884 04                    1711 	.sleb128	4
      001885 01                    1712 	.db	1
      001886 09                    1713 	.db	9
      001887 00 05                 1714 	.dw	Sstm8s_tim4$TIM4_SelectOnePulseMode$146-Sstm8s_tim4$TIM4_SelectOnePulseMode$144
      001889 03                    1715 	.db	3
      00188A 02                    1716 	.sleb128	2
      00188B 01                    1717 	.db	1
      00188C 09                    1718 	.db	9
      00188D 00 01                 1719 	.dw	1+Sstm8s_tim4$TIM4_SelectOnePulseMode$147-Sstm8s_tim4$TIM4_SelectOnePulseMode$146
      00188F 00                    1720 	.db	0
      001890 01                    1721 	.uleb128	1
      001891 01                    1722 	.db	1
      001892 00                    1723 	.db	0
      001893 05                    1724 	.uleb128	5
      001894 02                    1725 	.db	2
      001895 00 00 95 92           1726 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$149)
      001899 03                    1727 	.db	3
      00189A D6 01                 1728 	.sleb128	214
      00189C 01                    1729 	.db	1
      00189D 09                    1730 	.db	9
      00189E 00 00                 1731 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$151-Sstm8s_tim4$TIM4_PrescalerConfig$149
      0018A0 03                    1732 	.db	3
      0018A1 03                    1733 	.sleb128	3
      0018A2 01                    1734 	.db	1
      0018A3 09                    1735 	.db	9
      0018A4 00 1E                 1736 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$159-Sstm8s_tim4$TIM4_PrescalerConfig$151
      0018A6 03                    1737 	.db	3
      0018A7 01                    1738 	.sleb128	1
      0018A8 01                    1739 	.db	1
      0018A9 09                    1740 	.db	9
      0018AA 00 54                 1741 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$173-Sstm8s_tim4$TIM4_PrescalerConfig$159
      0018AC 03                    1742 	.db	3
      0018AD 03                    1743 	.sleb128	3
      0018AE 01                    1744 	.db	1
      0018AF 09                    1745 	.db	9
      0018B0 00 06                 1746 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$174-Sstm8s_tim4$TIM4_PrescalerConfig$173
      0018B2 03                    1747 	.db	3
      0018B3 03                    1748 	.sleb128	3
      0018B4 01                    1749 	.db	1
      0018B5 09                    1750 	.db	9
      0018B6 00 06                 1751 	.dw	Sstm8s_tim4$TIM4_PrescalerConfig$175-Sstm8s_tim4$TIM4_PrescalerConfig$174
      0018B8 03                    1752 	.db	3
      0018B9 01                    1753 	.sleb128	1
      0018BA 01                    1754 	.db	1
      0018BB 09                    1755 	.db	9
      0018BC 00 01                 1756 	.dw	1+Sstm8s_tim4$TIM4_PrescalerConfig$176-Sstm8s_tim4$TIM4_PrescalerConfig$175
      0018BE 00                    1757 	.db	0
      0018BF 01                    1758 	.uleb128	1
      0018C0 01                    1759 	.db	1
      0018C1 00                    1760 	.db	0
      0018C2 05                    1761 	.uleb128	5
      0018C3 02                    1762 	.db	2
      0018C4 00 00 96 11           1763 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$178)
      0018C8 03                    1764 	.db	3
      0018C9 E9 01                 1765 	.sleb128	233
      0018CB 01                    1766 	.db	1
      0018CC 09                    1767 	.db	9
      0018CD 00 00                 1768 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$180-Sstm8s_tim4$TIM4_ARRPreloadConfig$178
      0018CF 03                    1769 	.db	3
      0018D0 03                    1770 	.sleb128	3
      0018D1 01                    1771 	.db	1
      0018D2 09                    1772 	.db	9
      0018D3 00 1E                 1773 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$188-Sstm8s_tim4$TIM4_ARRPreloadConfig$180
      0018D5 03                    1774 	.db	3
      0018D6 05                    1775 	.sleb128	5
      0018D7 01                    1776 	.db	1
      0018D8 09                    1777 	.db	9
      0018D9 00 03                 1778 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$189-Sstm8s_tim4$TIM4_ARRPreloadConfig$188
      0018DB 03                    1779 	.db	3
      0018DC 7E                    1780 	.sleb128	-2
      0018DD 01                    1781 	.db	1
      0018DE 09                    1782 	.db	9
      0018DF 00 07                 1783 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$191-Sstm8s_tim4$TIM4_ARRPreloadConfig$189
      0018E1 03                    1784 	.db	3
      0018E2 02                    1785 	.sleb128	2
      0018E3 01                    1786 	.db	1
      0018E4 09                    1787 	.db	9
      0018E5 00 08                 1788 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$194-Sstm8s_tim4$TIM4_ARRPreloadConfig$191
      0018E7 03                    1789 	.db	3
      0018E8 04                    1790 	.sleb128	4
      0018E9 01                    1791 	.db	1
      0018EA 09                    1792 	.db	9
      0018EB 00 05                 1793 	.dw	Sstm8s_tim4$TIM4_ARRPreloadConfig$196-Sstm8s_tim4$TIM4_ARRPreloadConfig$194
      0018ED 03                    1794 	.db	3
      0018EE 02                    1795 	.sleb128	2
      0018EF 01                    1796 	.db	1
      0018F0 09                    1797 	.db	9
      0018F1 00 01                 1798 	.dw	1+Sstm8s_tim4$TIM4_ARRPreloadConfig$197-Sstm8s_tim4$TIM4_ARRPreloadConfig$196
      0018F3 00                    1799 	.db	0
      0018F4 01                    1800 	.uleb128	1
      0018F5 01                    1801 	.db	1
      0018F6 00                    1802 	.db	0
      0018F7 05                    1803 	.uleb128	5
      0018F8 02                    1804 	.db	2
      0018F9 00 00 96 47           1805 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$199)
      0018FD 03                    1806 	.db	3
      0018FE 80 02                 1807 	.sleb128	256
      001900 01                    1808 	.db	1
      001901 09                    1809 	.db	9
      001902 00 00                 1810 	.dw	Sstm8s_tim4$TIM4_GenerateEvent$201-Sstm8s_tim4$TIM4_GenerateEvent$199
      001904 03                    1811 	.db	3
      001905 03                    1812 	.sleb128	3
      001906 01                    1813 	.db	1
      001907 09                    1814 	.db	9
      001908 00 17                 1815 	.dw	Sstm8s_tim4$TIM4_GenerateEvent$209-Sstm8s_tim4$TIM4_GenerateEvent$201
      00190A 03                    1816 	.db	3
      00190B 03                    1817 	.sleb128	3
      00190C 01                    1818 	.db	1
      00190D 09                    1819 	.db	9
      00190E 00 06                 1820 	.dw	Sstm8s_tim4$TIM4_GenerateEvent$210-Sstm8s_tim4$TIM4_GenerateEvent$209
      001910 03                    1821 	.db	3
      001911 01                    1822 	.sleb128	1
      001912 01                    1823 	.db	1
      001913 09                    1824 	.db	9
      001914 00 01                 1825 	.dw	1+Sstm8s_tim4$TIM4_GenerateEvent$211-Sstm8s_tim4$TIM4_GenerateEvent$210
      001916 00                    1826 	.db	0
      001917 01                    1827 	.uleb128	1
      001918 01                    1828 	.db	1
      001919 00                    1829 	.db	0
      00191A 05                    1830 	.uleb128	5
      00191B 02                    1831 	.db	2
      00191C 00 00 96 65           1832 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$213)
      001920 03                    1833 	.db	3
      001921 8F 02                 1834 	.sleb128	271
      001923 01                    1835 	.db	1
      001924 09                    1836 	.db	9
      001925 00 00                 1837 	.dw	Sstm8s_tim4$TIM4_SetCounter$215-Sstm8s_tim4$TIM4_SetCounter$213
      001927 03                    1838 	.db	3
      001928 03                    1839 	.sleb128	3
      001929 01                    1840 	.db	1
      00192A 09                    1841 	.db	9
      00192B 00 06                 1842 	.dw	Sstm8s_tim4$TIM4_SetCounter$216-Sstm8s_tim4$TIM4_SetCounter$215
      00192D 03                    1843 	.db	3
      00192E 01                    1844 	.sleb128	1
      00192F 01                    1845 	.db	1
      001930 09                    1846 	.db	9
      001931 00 01                 1847 	.dw	1+Sstm8s_tim4$TIM4_SetCounter$217-Sstm8s_tim4$TIM4_SetCounter$216
      001933 00                    1848 	.db	0
      001934 01                    1849 	.uleb128	1
      001935 01                    1850 	.db	1
      001936 00                    1851 	.db	0
      001937 05                    1852 	.uleb128	5
      001938 02                    1853 	.db	2
      001939 00 00 96 6C           1854 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$219)
      00193D 03                    1855 	.db	3
      00193E 9B 02                 1856 	.sleb128	283
      001940 01                    1857 	.db	1
      001941 09                    1858 	.db	9
      001942 00 00                 1859 	.dw	Sstm8s_tim4$TIM4_SetAutoreload$221-Sstm8s_tim4$TIM4_SetAutoreload$219
      001944 03                    1860 	.db	3
      001945 03                    1861 	.sleb128	3
      001946 01                    1862 	.db	1
      001947 09                    1863 	.db	9
      001948 00 06                 1864 	.dw	Sstm8s_tim4$TIM4_SetAutoreload$222-Sstm8s_tim4$TIM4_SetAutoreload$221
      00194A 03                    1865 	.db	3
      00194B 01                    1866 	.sleb128	1
      00194C 01                    1867 	.db	1
      00194D 09                    1868 	.db	9
      00194E 00 01                 1869 	.dw	1+Sstm8s_tim4$TIM4_SetAutoreload$223-Sstm8s_tim4$TIM4_SetAutoreload$222
      001950 00                    1870 	.db	0
      001951 01                    1871 	.uleb128	1
      001952 01                    1872 	.db	1
      001953 00                    1873 	.db	0
      001954 05                    1874 	.uleb128	5
      001955 02                    1875 	.db	2
      001956 00 00 96 73           1876 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$225)
      00195A 03                    1877 	.db	3
      00195B A6 02                 1878 	.sleb128	294
      00195D 01                    1879 	.db	1
      00195E 09                    1880 	.db	9
      00195F 00 00                 1881 	.dw	Sstm8s_tim4$TIM4_GetCounter$227-Sstm8s_tim4$TIM4_GetCounter$225
      001961 03                    1882 	.db	3
      001962 03                    1883 	.sleb128	3
      001963 01                    1884 	.db	1
      001964 09                    1885 	.db	9
      001965 00 03                 1886 	.dw	Sstm8s_tim4$TIM4_GetCounter$228-Sstm8s_tim4$TIM4_GetCounter$227
      001967 03                    1887 	.db	3
      001968 01                    1888 	.sleb128	1
      001969 01                    1889 	.db	1
      00196A 09                    1890 	.db	9
      00196B 00 01                 1891 	.dw	1+Sstm8s_tim4$TIM4_GetCounter$229-Sstm8s_tim4$TIM4_GetCounter$228
      00196D 00                    1892 	.db	0
      00196E 01                    1893 	.uleb128	1
      00196F 01                    1894 	.db	1
      001970 00                    1895 	.db	0
      001971 05                    1896 	.uleb128	5
      001972 02                    1897 	.db	2
      001973 00 00 96 77           1898 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$231)
      001977 03                    1899 	.db	3
      001978 B1 02                 1900 	.sleb128	305
      00197A 01                    1901 	.db	1
      00197B 09                    1902 	.db	9
      00197C 00 00                 1903 	.dw	Sstm8s_tim4$TIM4_GetPrescaler$233-Sstm8s_tim4$TIM4_GetPrescaler$231
      00197E 03                    1904 	.db	3
      00197F 03                    1905 	.sleb128	3
      001980 01                    1906 	.db	1
      001981 09                    1907 	.db	9
      001982 00 03                 1908 	.dw	Sstm8s_tim4$TIM4_GetPrescaler$234-Sstm8s_tim4$TIM4_GetPrescaler$233
      001984 03                    1909 	.db	3
      001985 01                    1910 	.sleb128	1
      001986 01                    1911 	.db	1
      001987 09                    1912 	.db	9
      001988 00 01                 1913 	.dw	1+Sstm8s_tim4$TIM4_GetPrescaler$235-Sstm8s_tim4$TIM4_GetPrescaler$234
      00198A 00                    1914 	.db	0
      00198B 01                    1915 	.uleb128	1
      00198C 01                    1916 	.db	1
      00198D 00                    1917 	.db	0
      00198E 05                    1918 	.uleb128	5
      00198F 02                    1919 	.db	2
      001990 00 00 96 7B           1920 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$237)
      001994 03                    1921 	.db	3
      001995 BE 02                 1922 	.sleb128	318
      001997 01                    1923 	.db	1
      001998 09                    1924 	.db	9
      001999 00 00                 1925 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$239-Sstm8s_tim4$TIM4_GetFlagStatus$237
      00199B 03                    1926 	.db	3
      00199C 05                    1927 	.sleb128	5
      00199D 01                    1928 	.db	1
      00199E 09                    1929 	.db	9
      00199F 00 17                 1930 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$247-Sstm8s_tim4$TIM4_GetFlagStatus$239
      0019A1 03                    1931 	.db	3
      0019A2 02                    1932 	.sleb128	2
      0019A3 01                    1933 	.db	1
      0019A4 09                    1934 	.db	9
      0019A5 00 0B                 1935 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$249-Sstm8s_tim4$TIM4_GetFlagStatus$247
      0019A7 03                    1936 	.db	3
      0019A8 02                    1937 	.sleb128	2
      0019A9 01                    1938 	.db	1
      0019AA 09                    1939 	.db	9
      0019AB 00 05                 1940 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$252-Sstm8s_tim4$TIM4_GetFlagStatus$249
      0019AD 03                    1941 	.db	3
      0019AE 04                    1942 	.sleb128	4
      0019AF 01                    1943 	.db	1
      0019B0 09                    1944 	.db	9
      0019B1 00 01                 1945 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$254-Sstm8s_tim4$TIM4_GetFlagStatus$252
      0019B3 03                    1946 	.db	3
      0019B4 02                    1947 	.sleb128	2
      0019B5 01                    1948 	.db	1
      0019B6 09                    1949 	.db	9
      0019B7 00 00                 1950 	.dw	Sstm8s_tim4$TIM4_GetFlagStatus$255-Sstm8s_tim4$TIM4_GetFlagStatus$254
      0019B9 03                    1951 	.db	3
      0019BA 01                    1952 	.sleb128	1
      0019BB 01                    1953 	.db	1
      0019BC 09                    1954 	.db	9
      0019BD 00 01                 1955 	.dw	1+Sstm8s_tim4$TIM4_GetFlagStatus$256-Sstm8s_tim4$TIM4_GetFlagStatus$255
      0019BF 00                    1956 	.db	0
      0019C0 01                    1957 	.uleb128	1
      0019C1 01                    1958 	.db	1
      0019C2 00                    1959 	.db	0
      0019C3 05                    1960 	.uleb128	5
      0019C4 02                    1961 	.db	2
      0019C5 00 00 96 A4           1962 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$258)
      0019C9 03                    1963 	.db	3
      0019CA D7 02                 1964 	.sleb128	343
      0019CC 01                    1965 	.db	1
      0019CD 09                    1966 	.db	9
      0019CE 00 00                 1967 	.dw	Sstm8s_tim4$TIM4_ClearFlag$260-Sstm8s_tim4$TIM4_ClearFlag$258
      0019D0 03                    1968 	.db	3
      0019D1 03                    1969 	.sleb128	3
      0019D2 01                    1970 	.db	1
      0019D3 09                    1971 	.db	9
      0019D4 00 17                 1972 	.dw	Sstm8s_tim4$TIM4_ClearFlag$268-Sstm8s_tim4$TIM4_ClearFlag$260
      0019D6 03                    1973 	.db	3
      0019D7 03                    1974 	.sleb128	3
      0019D8 01                    1975 	.db	1
      0019D9 09                    1976 	.db	9
      0019DA 00 06                 1977 	.dw	Sstm8s_tim4$TIM4_ClearFlag$269-Sstm8s_tim4$TIM4_ClearFlag$268
      0019DC 03                    1978 	.db	3
      0019DD 01                    1979 	.sleb128	1
      0019DE 01                    1980 	.db	1
      0019DF 09                    1981 	.db	9
      0019E0 00 01                 1982 	.dw	1+Sstm8s_tim4$TIM4_ClearFlag$270-Sstm8s_tim4$TIM4_ClearFlag$269
      0019E2 00                    1983 	.db	0
      0019E3 01                    1984 	.uleb128	1
      0019E4 01                    1985 	.db	1
      0019E5 00                    1986 	.db	0
      0019E6 05                    1987 	.uleb128	5
      0019E7 02                    1988 	.db	2
      0019E8 00 00 96 C2           1989 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$272)
      0019EC 03                    1990 	.db	3
      0019ED E7 02                 1991 	.sleb128	359
      0019EF 01                    1992 	.db	1
      0019F0 09                    1993 	.db	9
      0019F1 00 01                 1994 	.dw	Sstm8s_tim4$TIM4_GetITStatus$275-Sstm8s_tim4$TIM4_GetITStatus$272
      0019F3 03                    1995 	.db	3
      0019F4 07                    1996 	.sleb128	7
      0019F5 01                    1997 	.db	1
      0019F6 09                    1998 	.db	9
      0019F7 00 17                 1999 	.dw	Sstm8s_tim4$TIM4_GetITStatus$283-Sstm8s_tim4$TIM4_GetITStatus$275
      0019F9 03                    2000 	.db	3
      0019FA 02                    2001 	.sleb128	2
      0019FB 01                    2002 	.db	1
      0019FC 09                    2003 	.db	9
      0019FD 00 07                 2004 	.dw	Sstm8s_tim4$TIM4_GetITStatus$284-Sstm8s_tim4$TIM4_GetITStatus$283
      0019FF 03                    2005 	.db	3
      001A00 02                    2006 	.sleb128	2
      001A01 01                    2007 	.db	1
      001A02 09                    2008 	.db	9
      001A03 00 05                 2009 	.dw	Sstm8s_tim4$TIM4_GetITStatus$285-Sstm8s_tim4$TIM4_GetITStatus$284
      001A05 03                    2010 	.db	3
      001A06 02                    2011 	.sleb128	2
      001A07 01                    2012 	.db	1
      001A08 09                    2013 	.db	9
      001A09 00 0D                 2014 	.dw	Sstm8s_tim4$TIM4_GetITStatus$287-Sstm8s_tim4$TIM4_GetITStatus$285
      001A0B 03                    2015 	.db	3
      001A0C 02                    2016 	.sleb128	2
      001A0D 01                    2017 	.db	1
      001A0E 09                    2018 	.db	9
      001A0F 00 05                 2019 	.dw	Sstm8s_tim4$TIM4_GetITStatus$290-Sstm8s_tim4$TIM4_GetITStatus$287
      001A11 03                    2020 	.db	3
      001A12 04                    2021 	.sleb128	4
      001A13 01                    2022 	.db	1
      001A14 09                    2023 	.db	9
      001A15 00 01                 2024 	.dw	Sstm8s_tim4$TIM4_GetITStatus$292-Sstm8s_tim4$TIM4_GetITStatus$290
      001A17 03                    2025 	.db	3
      001A18 02                    2026 	.sleb128	2
      001A19 01                    2027 	.db	1
      001A1A 09                    2028 	.db	9
      001A1B 00 00                 2029 	.dw	Sstm8s_tim4$TIM4_GetITStatus$293-Sstm8s_tim4$TIM4_GetITStatus$292
      001A1D 03                    2030 	.db	3
      001A1E 01                    2031 	.sleb128	1
      001A1F 01                    2032 	.db	1
      001A20 09                    2033 	.db	9
      001A21 00 03                 2034 	.dw	1+Sstm8s_tim4$TIM4_GetITStatus$295-Sstm8s_tim4$TIM4_GetITStatus$293
      001A23 00                    2035 	.db	0
      001A24 01                    2036 	.uleb128	1
      001A25 01                    2037 	.db	1
      001A26 00                    2038 	.db	0
      001A27 05                    2039 	.uleb128	5
      001A28 02                    2040 	.db	2
      001A29 00 00 96 FC           2041 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$297)
      001A2D 03                    2042 	.db	3
      001A2E 86 03                 2043 	.sleb128	390
      001A30 01                    2044 	.db	1
      001A31 09                    2045 	.db	9
      001A32 00 00                 2046 	.dw	Sstm8s_tim4$TIM4_ClearITPendingBit$299-Sstm8s_tim4$TIM4_ClearITPendingBit$297
      001A34 03                    2047 	.db	3
      001A35 03                    2048 	.sleb128	3
      001A36 01                    2049 	.db	1
      001A37 09                    2050 	.db	9
      001A38 00 17                 2051 	.dw	Sstm8s_tim4$TIM4_ClearITPendingBit$307-Sstm8s_tim4$TIM4_ClearITPendingBit$299
      001A3A 03                    2052 	.db	3
      001A3B 03                    2053 	.sleb128	3
      001A3C 01                    2054 	.db	1
      001A3D 09                    2055 	.db	9
      001A3E 00 06                 2056 	.dw	Sstm8s_tim4$TIM4_ClearITPendingBit$308-Sstm8s_tim4$TIM4_ClearITPendingBit$307
      001A40 03                    2057 	.db	3
      001A41 01                    2058 	.sleb128	1
      001A42 01                    2059 	.db	1
      001A43 09                    2060 	.db	9
      001A44 00 01                 2061 	.dw	1+Sstm8s_tim4$TIM4_ClearITPendingBit$309-Sstm8s_tim4$TIM4_ClearITPendingBit$308
      001A46 00                    2062 	.db	0
      001A47 01                    2063 	.uleb128	1
      001A48 01                    2064 	.db	1
      001A49                       2065 Ldebug_line_end:
                                   2066 
                                   2067 	.area .debug_loc (NOLOAD)
      0029FC                       2068 Ldebug_loc_start:
      0029FC 00 00 97 13           2069 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$306)
      002A00 00 00 97 1A           2070 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$310)
      002A04 00 02                 2071 	.dw	2
      002A06 78                    2072 	.db	120
      002A07 01                    2073 	.sleb128	1
      002A08 00 00 97 0E           2074 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$305)
      002A0C 00 00 97 13           2075 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$306)
      002A10 00 02                 2076 	.dw	2
      002A12 78                    2077 	.db	120
      002A13 07                    2078 	.sleb128	7
      002A14 00 00 97 0C           2079 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$304)
      002A18 00 00 97 0E           2080 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$305)
      002A1C 00 02                 2081 	.dw	2
      002A1E 78                    2082 	.db	120
      002A1F 06                    2083 	.sleb128	6
      002A20 00 00 97 0A           2084 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$303)
      002A24 00 00 97 0C           2085 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$304)
      002A28 00 02                 2086 	.dw	2
      002A2A 78                    2087 	.db	120
      002A2B 05                    2088 	.sleb128	5
      002A2C 00 00 97 08           2089 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$302)
      002A30 00 00 97 0A           2090 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$303)
      002A34 00 02                 2091 	.dw	2
      002A36 78                    2092 	.db	120
      002A37 03                    2093 	.sleb128	3
      002A38 00 00 97 06           2094 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$301)
      002A3C 00 00 97 08           2095 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$302)
      002A40 00 02                 2096 	.dw	2
      002A42 78                    2097 	.db	120
      002A43 02                    2098 	.sleb128	2
      002A44 00 00 97 04           2099 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$300)
      002A48 00 00 97 06           2100 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$301)
      002A4C 00 02                 2101 	.dw	2
      002A4E 78                    2102 	.db	120
      002A4F 01                    2103 	.sleb128	1
      002A50 00 00 96 FC           2104 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$298)
      002A54 00 00 97 04           2105 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$300)
      002A58 00 02                 2106 	.dw	2
      002A5A 78                    2107 	.db	120
      002A5B 01                    2108 	.sleb128	1
      002A5C 00 00 00 00           2109 	.dw	0,0
      002A60 00 00 00 00           2110 	.dw	0,0
      002A64 00 00 96 FB           2111 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$294)
      002A68 00 00 96 FC           2112 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$296)
      002A6C 00 02                 2113 	.dw	2
      002A6E 78                    2114 	.db	120
      002A6F 01                    2115 	.sleb128	1
      002A70 00 00 96 DA           2116 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$282)
      002A74 00 00 96 FB           2117 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$294)
      002A78 00 02                 2118 	.dw	2
      002A7A 78                    2119 	.db	120
      002A7B 02                    2120 	.sleb128	2
      002A7C 00 00 96 D5           2121 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$281)
      002A80 00 00 96 DA           2122 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$282)
      002A84 00 02                 2123 	.dw	2
      002A86 78                    2124 	.db	120
      002A87 08                    2125 	.sleb128	8
      002A88 00 00 96 D3           2126 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$280)
      002A8C 00 00 96 D5           2127 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$281)
      002A90 00 02                 2128 	.dw	2
      002A92 78                    2129 	.db	120
      002A93 07                    2130 	.sleb128	7
      002A94 00 00 96 D1           2131 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$279)
      002A98 00 00 96 D3           2132 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$280)
      002A9C 00 02                 2133 	.dw	2
      002A9E 78                    2134 	.db	120
      002A9F 06                    2135 	.sleb128	6
      002AA0 00 00 96 CF           2136 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$278)
      002AA4 00 00 96 D1           2137 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$279)
      002AA8 00 02                 2138 	.dw	2
      002AAA 78                    2139 	.db	120
      002AAB 04                    2140 	.sleb128	4
      002AAC 00 00 96 CD           2141 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$277)
      002AB0 00 00 96 CF           2142 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$278)
      002AB4 00 02                 2143 	.dw	2
      002AB6 78                    2144 	.db	120
      002AB7 03                    2145 	.sleb128	3
      002AB8 00 00 96 CB           2146 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$276)
      002ABC 00 00 96 CD           2147 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$277)
      002AC0 00 02                 2148 	.dw	2
      002AC2 78                    2149 	.db	120
      002AC3 02                    2150 	.sleb128	2
      002AC4 00 00 96 C3           2151 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$274)
      002AC8 00 00 96 CB           2152 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$276)
      002ACC 00 02                 2153 	.dw	2
      002ACE 78                    2154 	.db	120
      002ACF 02                    2155 	.sleb128	2
      002AD0 00 00 96 C2           2156 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$273)
      002AD4 00 00 96 C3           2157 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$274)
      002AD8 00 02                 2158 	.dw	2
      002ADA 78                    2159 	.db	120
      002ADB 01                    2160 	.sleb128	1
      002ADC 00 00 00 00           2161 	.dw	0,0
      002AE0 00 00 00 00           2162 	.dw	0,0
      002AE4 00 00 96 BB           2163 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$267)
      002AE8 00 00 96 C2           2164 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$271)
      002AEC 00 02                 2165 	.dw	2
      002AEE 78                    2166 	.db	120
      002AEF 01                    2167 	.sleb128	1
      002AF0 00 00 96 B6           2168 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$266)
      002AF4 00 00 96 BB           2169 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$267)
      002AF8 00 02                 2170 	.dw	2
      002AFA 78                    2171 	.db	120
      002AFB 07                    2172 	.sleb128	7
      002AFC 00 00 96 B4           2173 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$265)
      002B00 00 00 96 B6           2174 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$266)
      002B04 00 02                 2175 	.dw	2
      002B06 78                    2176 	.db	120
      002B07 06                    2177 	.sleb128	6
      002B08 00 00 96 B2           2178 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$264)
      002B0C 00 00 96 B4           2179 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$265)
      002B10 00 02                 2180 	.dw	2
      002B12 78                    2181 	.db	120
      002B13 05                    2182 	.sleb128	5
      002B14 00 00 96 B0           2183 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$263)
      002B18 00 00 96 B2           2184 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$264)
      002B1C 00 02                 2185 	.dw	2
      002B1E 78                    2186 	.db	120
      002B1F 03                    2187 	.sleb128	3
      002B20 00 00 96 AE           2188 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$262)
      002B24 00 00 96 B0           2189 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$263)
      002B28 00 02                 2190 	.dw	2
      002B2A 78                    2191 	.db	120
      002B2B 02                    2192 	.sleb128	2
      002B2C 00 00 96 AC           2193 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$261)
      002B30 00 00 96 AE           2194 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$262)
      002B34 00 02                 2195 	.dw	2
      002B36 78                    2196 	.db	120
      002B37 01                    2197 	.sleb128	1
      002B38 00 00 96 A4           2198 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$259)
      002B3C 00 00 96 AC           2199 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$261)
      002B40 00 02                 2200 	.dw	2
      002B42 78                    2201 	.db	120
      002B43 01                    2202 	.sleb128	1
      002B44 00 00 00 00           2203 	.dw	0,0
      002B48 00 00 00 00           2204 	.dw	0,0
      002B4C 00 00 96 92           2205 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$246)
      002B50 00 00 96 A4           2206 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$257)
      002B54 00 02                 2207 	.dw	2
      002B56 78                    2208 	.db	120
      002B57 01                    2209 	.sleb128	1
      002B58 00 00 96 8D           2210 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$245)
      002B5C 00 00 96 92           2211 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$246)
      002B60 00 02                 2212 	.dw	2
      002B62 78                    2213 	.db	120
      002B63 07                    2214 	.sleb128	7
      002B64 00 00 96 8B           2215 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$244)
      002B68 00 00 96 8D           2216 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$245)
      002B6C 00 02                 2217 	.dw	2
      002B6E 78                    2218 	.db	120
      002B6F 06                    2219 	.sleb128	6
      002B70 00 00 96 89           2220 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$243)
      002B74 00 00 96 8B           2221 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$244)
      002B78 00 02                 2222 	.dw	2
      002B7A 78                    2223 	.db	120
      002B7B 05                    2224 	.sleb128	5
      002B7C 00 00 96 87           2225 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$242)
      002B80 00 00 96 89           2226 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$243)
      002B84 00 02                 2227 	.dw	2
      002B86 78                    2228 	.db	120
      002B87 03                    2229 	.sleb128	3
      002B88 00 00 96 85           2230 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$241)
      002B8C 00 00 96 87           2231 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$242)
      002B90 00 02                 2232 	.dw	2
      002B92 78                    2233 	.db	120
      002B93 02                    2234 	.sleb128	2
      002B94 00 00 96 83           2235 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$240)
      002B98 00 00 96 85           2236 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$241)
      002B9C 00 02                 2237 	.dw	2
      002B9E 78                    2238 	.db	120
      002B9F 01                    2239 	.sleb128	1
      002BA0 00 00 96 7B           2240 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$238)
      002BA4 00 00 96 83           2241 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$240)
      002BA8 00 02                 2242 	.dw	2
      002BAA 78                    2243 	.db	120
      002BAB 01                    2244 	.sleb128	1
      002BAC 00 00 00 00           2245 	.dw	0,0
      002BB0 00 00 00 00           2246 	.dw	0,0
      002BB4 00 00 96 77           2247 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$232)
      002BB8 00 00 96 7B           2248 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$236)
      002BBC 00 02                 2249 	.dw	2
      002BBE 78                    2250 	.db	120
      002BBF 01                    2251 	.sleb128	1
      002BC0 00 00 00 00           2252 	.dw	0,0
      002BC4 00 00 00 00           2253 	.dw	0,0
      002BC8 00 00 96 73           2254 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$226)
      002BCC 00 00 96 77           2255 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$230)
      002BD0 00 02                 2256 	.dw	2
      002BD2 78                    2257 	.db	120
      002BD3 01                    2258 	.sleb128	1
      002BD4 00 00 00 00           2259 	.dw	0,0
      002BD8 00 00 00 00           2260 	.dw	0,0
      002BDC 00 00 96 6C           2261 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$220)
      002BE0 00 00 96 73           2262 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$224)
      002BE4 00 02                 2263 	.dw	2
      002BE6 78                    2264 	.db	120
      002BE7 01                    2265 	.sleb128	1
      002BE8 00 00 00 00           2266 	.dw	0,0
      002BEC 00 00 00 00           2267 	.dw	0,0
      002BF0 00 00 96 65           2268 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$214)
      002BF4 00 00 96 6C           2269 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$218)
      002BF8 00 02                 2270 	.dw	2
      002BFA 78                    2271 	.db	120
      002BFB 01                    2272 	.sleb128	1
      002BFC 00 00 00 00           2273 	.dw	0,0
      002C00 00 00 00 00           2274 	.dw	0,0
      002C04 00 00 96 5E           2275 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$208)
      002C08 00 00 96 65           2276 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$212)
      002C0C 00 02                 2277 	.dw	2
      002C0E 78                    2278 	.db	120
      002C0F 01                    2279 	.sleb128	1
      002C10 00 00 96 59           2280 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$207)
      002C14 00 00 96 5E           2281 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$208)
      002C18 00 02                 2282 	.dw	2
      002C1A 78                    2283 	.db	120
      002C1B 07                    2284 	.sleb128	7
      002C1C 00 00 96 57           2285 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$206)
      002C20 00 00 96 59           2286 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$207)
      002C24 00 02                 2287 	.dw	2
      002C26 78                    2288 	.db	120
      002C27 06                    2289 	.sleb128	6
      002C28 00 00 96 55           2290 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$205)
      002C2C 00 00 96 57           2291 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$206)
      002C30 00 02                 2292 	.dw	2
      002C32 78                    2293 	.db	120
      002C33 05                    2294 	.sleb128	5
      002C34 00 00 96 53           2295 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$204)
      002C38 00 00 96 55           2296 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$205)
      002C3C 00 02                 2297 	.dw	2
      002C3E 78                    2298 	.db	120
      002C3F 03                    2299 	.sleb128	3
      002C40 00 00 96 51           2300 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$203)
      002C44 00 00 96 53           2301 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$204)
      002C48 00 02                 2302 	.dw	2
      002C4A 78                    2303 	.db	120
      002C4B 02                    2304 	.sleb128	2
      002C4C 00 00 96 4F           2305 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$202)
      002C50 00 00 96 51           2306 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$203)
      002C54 00 02                 2307 	.dw	2
      002C56 78                    2308 	.db	120
      002C57 01                    2309 	.sleb128	1
      002C58 00 00 96 47           2310 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$200)
      002C5C 00 00 96 4F           2311 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$202)
      002C60 00 02                 2312 	.dw	2
      002C62 78                    2313 	.db	120
      002C63 01                    2314 	.sleb128	1
      002C64 00 00 00 00           2315 	.dw	0,0
      002C68 00 00 00 00           2316 	.dw	0,0
      002C6C 00 00 96 2F           2317 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$187)
      002C70 00 00 96 47           2318 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$198)
      002C74 00 02                 2319 	.dw	2
      002C76 78                    2320 	.db	120
      002C77 01                    2321 	.sleb128	1
      002C78 00 00 96 2A           2322 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$186)
      002C7C 00 00 96 2F           2323 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$187)
      002C80 00 02                 2324 	.dw	2
      002C82 78                    2325 	.db	120
      002C83 07                    2326 	.sleb128	7
      002C84 00 00 96 28           2327 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$185)
      002C88 00 00 96 2A           2328 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$186)
      002C8C 00 02                 2329 	.dw	2
      002C8E 78                    2330 	.db	120
      002C8F 06                    2331 	.sleb128	6
      002C90 00 00 96 26           2332 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$184)
      002C94 00 00 96 28           2333 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$185)
      002C98 00 02                 2334 	.dw	2
      002C9A 78                    2335 	.db	120
      002C9B 05                    2336 	.sleb128	5
      002C9C 00 00 96 24           2337 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$183)
      002CA0 00 00 96 26           2338 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$184)
      002CA4 00 02                 2339 	.dw	2
      002CA6 78                    2340 	.db	120
      002CA7 04                    2341 	.sleb128	4
      002CA8 00 00 96 22           2342 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$182)
      002CAC 00 00 96 24           2343 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$183)
      002CB0 00 02                 2344 	.dw	2
      002CB2 78                    2345 	.db	120
      002CB3 02                    2346 	.sleb128	2
      002CB4 00 00 96 20           2347 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$181)
      002CB8 00 00 96 22           2348 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$182)
      002CBC 00 02                 2349 	.dw	2
      002CBE 78                    2350 	.db	120
      002CBF 01                    2351 	.sleb128	1
      002CC0 00 00 96 11           2352 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$179)
      002CC4 00 00 96 20           2353 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$181)
      002CC8 00 02                 2354 	.dw	2
      002CCA 78                    2355 	.db	120
      002CCB 01                    2356 	.sleb128	1
      002CCC 00 00 00 00           2357 	.dw	0,0
      002CD0 00 00 00 00           2358 	.dw	0,0
      002CD4 00 00 96 04           2359 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$172)
      002CD8 00 00 96 11           2360 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$177)
      002CDC 00 02                 2361 	.dw	2
      002CDE 78                    2362 	.db	120
      002CDF 01                    2363 	.sleb128	1
      002CE0 00 00 95 FF           2364 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$171)
      002CE4 00 00 96 04           2365 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$172)
      002CE8 00 02                 2366 	.dw	2
      002CEA 78                    2367 	.db	120
      002CEB 07                    2368 	.sleb128	7
      002CEC 00 00 95 FD           2369 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$170)
      002CF0 00 00 95 FF           2370 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$171)
      002CF4 00 02                 2371 	.dw	2
      002CF6 78                    2372 	.db	120
      002CF7 06                    2373 	.sleb128	6
      002CF8 00 00 95 FB           2374 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$169)
      002CFC 00 00 95 FD           2375 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$170)
      002D00 00 02                 2376 	.dw	2
      002D02 78                    2377 	.db	120
      002D03 05                    2378 	.sleb128	5
      002D04 00 00 95 F9           2379 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$168)
      002D08 00 00 95 FB           2380 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$169)
      002D0C 00 02                 2381 	.dw	2
      002D0E 78                    2382 	.db	120
      002D0F 04                    2383 	.sleb128	4
      002D10 00 00 95 F7           2384 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$167)
      002D14 00 00 95 F9           2385 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$168)
      002D18 00 02                 2386 	.dw	2
      002D1A 78                    2387 	.db	120
      002D1B 02                    2388 	.sleb128	2
      002D1C 00 00 95 F5           2389 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$166)
      002D20 00 00 95 F7           2390 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$167)
      002D24 00 02                 2391 	.dw	2
      002D26 78                    2392 	.db	120
      002D27 01                    2393 	.sleb128	1
      002D28 00 00 95 EC           2394 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$165)
      002D2C 00 00 95 F5           2395 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$166)
      002D30 00 02                 2396 	.dw	2
      002D32 78                    2397 	.db	120
      002D33 01                    2398 	.sleb128	1
      002D34 00 00 95 E3           2399 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$164)
      002D38 00 00 95 EC           2400 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$165)
      002D3C 00 02                 2401 	.dw	2
      002D3E 78                    2402 	.db	120
      002D3F 01                    2403 	.sleb128	1
      002D40 00 00 95 DA           2404 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$163)
      002D44 00 00 95 E3           2405 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$164)
      002D48 00 02                 2406 	.dw	2
      002D4A 78                    2407 	.db	120
      002D4B 01                    2408 	.sleb128	1
      002D4C 00 00 95 D1           2409 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$162)
      002D50 00 00 95 DA           2410 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$163)
      002D54 00 02                 2411 	.dw	2
      002D56 78                    2412 	.db	120
      002D57 01                    2413 	.sleb128	1
      002D58 00 00 95 C8           2414 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$161)
      002D5C 00 00 95 D1           2415 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$162)
      002D60 00 02                 2416 	.dw	2
      002D62 78                    2417 	.db	120
      002D63 01                    2418 	.sleb128	1
      002D64 00 00 95 BF           2419 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$160)
      002D68 00 00 95 C8           2420 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$161)
      002D6C 00 02                 2421 	.dw	2
      002D6E 78                    2422 	.db	120
      002D6F 01                    2423 	.sleb128	1
      002D70 00 00 95 B0           2424 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$158)
      002D74 00 00 95 BF           2425 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$160)
      002D78 00 02                 2426 	.dw	2
      002D7A 78                    2427 	.db	120
      002D7B 01                    2428 	.sleb128	1
      002D7C 00 00 95 AB           2429 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$157)
      002D80 00 00 95 B0           2430 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$158)
      002D84 00 02                 2431 	.dw	2
      002D86 78                    2432 	.db	120
      002D87 07                    2433 	.sleb128	7
      002D88 00 00 95 A9           2434 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$156)
      002D8C 00 00 95 AB           2435 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$157)
      002D90 00 02                 2436 	.dw	2
      002D92 78                    2437 	.db	120
      002D93 06                    2438 	.sleb128	6
      002D94 00 00 95 A7           2439 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$155)
      002D98 00 00 95 A9           2440 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$156)
      002D9C 00 02                 2441 	.dw	2
      002D9E 78                    2442 	.db	120
      002D9F 05                    2443 	.sleb128	5
      002DA0 00 00 95 A5           2444 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$154)
      002DA4 00 00 95 A7           2445 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$155)
      002DA8 00 02                 2446 	.dw	2
      002DAA 78                    2447 	.db	120
      002DAB 04                    2448 	.sleb128	4
      002DAC 00 00 95 A3           2449 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$153)
      002DB0 00 00 95 A5           2450 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$154)
      002DB4 00 02                 2451 	.dw	2
      002DB6 78                    2452 	.db	120
      002DB7 02                    2453 	.sleb128	2
      002DB8 00 00 95 A1           2454 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$152)
      002DBC 00 00 95 A3           2455 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$153)
      002DC0 00 02                 2456 	.dw	2
      002DC2 78                    2457 	.db	120
      002DC3 01                    2458 	.sleb128	1
      002DC4 00 00 95 92           2459 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$150)
      002DC8 00 00 95 A1           2460 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$152)
      002DCC 00 02                 2461 	.dw	2
      002DCE 78                    2462 	.db	120
      002DCF 01                    2463 	.sleb128	1
      002DD0 00 00 00 00           2464 	.dw	0,0
      002DD4 00 00 00 00           2465 	.dw	0,0
      002DD8 00 00 95 7A           2466 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$137)
      002DDC 00 00 95 92           2467 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$148)
      002DE0 00 02                 2468 	.dw	2
      002DE2 78                    2469 	.db	120
      002DE3 01                    2470 	.sleb128	1
      002DE4 00 00 95 75           2471 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$136)
      002DE8 00 00 95 7A           2472 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$137)
      002DEC 00 02                 2473 	.dw	2
      002DEE 78                    2474 	.db	120
      002DEF 07                    2475 	.sleb128	7
      002DF0 00 00 95 73           2476 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$135)
      002DF4 00 00 95 75           2477 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$136)
      002DF8 00 02                 2478 	.dw	2
      002DFA 78                    2479 	.db	120
      002DFB 06                    2480 	.sleb128	6
      002DFC 00 00 95 71           2481 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$134)
      002E00 00 00 95 73           2482 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$135)
      002E04 00 02                 2483 	.dw	2
      002E06 78                    2484 	.db	120
      002E07 05                    2485 	.sleb128	5
      002E08 00 00 95 6F           2486 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$133)
      002E0C 00 00 95 71           2487 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$134)
      002E10 00 02                 2488 	.dw	2
      002E12 78                    2489 	.db	120
      002E13 04                    2490 	.sleb128	4
      002E14 00 00 95 6D           2491 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$132)
      002E18 00 00 95 6F           2492 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$133)
      002E1C 00 02                 2493 	.dw	2
      002E1E 78                    2494 	.db	120
      002E1F 02                    2495 	.sleb128	2
      002E20 00 00 95 64           2496 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$131)
      002E24 00 00 95 6D           2497 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$132)
      002E28 00 02                 2498 	.dw	2
      002E2A 78                    2499 	.db	120
      002E2B 01                    2500 	.sleb128	1
      002E2C 00 00 95 5C           2501 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$129)
      002E30 00 00 95 64           2502 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$131)
      002E34 00 02                 2503 	.dw	2
      002E36 78                    2504 	.db	120
      002E37 01                    2505 	.sleb128	1
      002E38 00 00 00 00           2506 	.dw	0,0
      002E3C 00 00 00 00           2507 	.dw	0,0
      002E40 00 00 95 44           2508 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$116)
      002E44 00 00 95 5C           2509 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$127)
      002E48 00 02                 2510 	.dw	2
      002E4A 78                    2511 	.db	120
      002E4B 01                    2512 	.sleb128	1
      002E4C 00 00 95 3F           2513 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$115)
      002E50 00 00 95 44           2514 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$116)
      002E54 00 02                 2515 	.dw	2
      002E56 78                    2516 	.db	120
      002E57 07                    2517 	.sleb128	7
      002E58 00 00 95 3D           2518 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$114)
      002E5C 00 00 95 3F           2519 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$115)
      002E60 00 02                 2520 	.dw	2
      002E62 78                    2521 	.db	120
      002E63 06                    2522 	.sleb128	6
      002E64 00 00 95 3B           2523 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$113)
      002E68 00 00 95 3D           2524 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$114)
      002E6C 00 02                 2525 	.dw	2
      002E6E 78                    2526 	.db	120
      002E6F 05                    2527 	.sleb128	5
      002E70 00 00 95 39           2528 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$112)
      002E74 00 00 95 3B           2529 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$113)
      002E78 00 02                 2530 	.dw	2
      002E7A 78                    2531 	.db	120
      002E7B 04                    2532 	.sleb128	4
      002E7C 00 00 95 37           2533 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$111)
      002E80 00 00 95 39           2534 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$112)
      002E84 00 02                 2535 	.dw	2
      002E86 78                    2536 	.db	120
      002E87 02                    2537 	.sleb128	2
      002E88 00 00 95 35           2538 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$110)
      002E8C 00 00 95 37           2539 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$111)
      002E90 00 02                 2540 	.dw	2
      002E92 78                    2541 	.db	120
      002E93 01                    2542 	.sleb128	1
      002E94 00 00 95 26           2543 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$108)
      002E98 00 00 95 35           2544 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$110)
      002E9C 00 02                 2545 	.dw	2
      002E9E 78                    2546 	.db	120
      002E9F 01                    2547 	.sleb128	1
      002EA0 00 00 00 00           2548 	.dw	0,0
      002EA4 00 00 00 00           2549 	.dw	0,0
      002EA8 00 00 95 0E           2550 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$95)
      002EAC 00 00 95 26           2551 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$106)
      002EB0 00 02                 2552 	.dw	2
      002EB2 78                    2553 	.db	120
      002EB3 01                    2554 	.sleb128	1
      002EB4 00 00 95 09           2555 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$94)
      002EB8 00 00 95 0E           2556 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$95)
      002EBC 00 02                 2557 	.dw	2
      002EBE 78                    2558 	.db	120
      002EBF 07                    2559 	.sleb128	7
      002EC0 00 00 95 07           2560 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$93)
      002EC4 00 00 95 09           2561 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$94)
      002EC8 00 02                 2562 	.dw	2
      002ECA 78                    2563 	.db	120
      002ECB 06                    2564 	.sleb128	6
      002ECC 00 00 95 05           2565 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$92)
      002ED0 00 00 95 07           2566 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$93)
      002ED4 00 02                 2567 	.dw	2
      002ED6 78                    2568 	.db	120
      002ED7 05                    2569 	.sleb128	5
      002ED8 00 00 95 03           2570 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$91)
      002EDC 00 00 95 05           2571 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$92)
      002EE0 00 02                 2572 	.dw	2
      002EE2 78                    2573 	.db	120
      002EE3 04                    2574 	.sleb128	4
      002EE4 00 00 95 01           2575 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$90)
      002EE8 00 00 95 03           2576 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$91)
      002EEC 00 02                 2577 	.dw	2
      002EEE 78                    2578 	.db	120
      002EEF 02                    2579 	.sleb128	2
      002EF0 00 00 94 FF           2580 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$89)
      002EF4 00 00 95 01           2581 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$90)
      002EF8 00 02                 2582 	.dw	2
      002EFA 78                    2583 	.db	120
      002EFB 01                    2584 	.sleb128	1
      002EFC 00 00 94 F0           2585 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$87)
      002F00 00 00 94 FF           2586 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$89)
      002F04 00 02                 2587 	.dw	2
      002F06 78                    2588 	.db	120
      002F07 01                    2589 	.sleb128	1
      002F08 00 00 00 00           2590 	.dw	0,0
      002F0C 00 00 00 00           2591 	.dw	0,0
      002F10 00 00 94 EF           2592 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$83)
      002F14 00 00 94 F0           2593 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$85)
      002F18 00 02                 2594 	.dw	2
      002F1A 78                    2595 	.db	120
      002F1B 01                    2596 	.sleb128	1
      002F1C 00 00 94 E9           2597 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$80)
      002F20 00 00 94 EF           2598 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$83)
      002F24 00 02                 2599 	.dw	2
      002F26 78                    2600 	.db	120
      002F27 02                    2601 	.sleb128	2
      002F28 00 00 94 E3           2602 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$79)
      002F2C 00 00 94 E9           2603 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$80)
      002F30 00 02                 2604 	.dw	2
      002F32 78                    2605 	.db	120
      002F33 03                    2606 	.sleb128	3
      002F34 00 00 94 D0           2607 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$71)
      002F38 00 00 94 E3           2608 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$79)
      002F3C 00 02                 2609 	.dw	2
      002F3E 78                    2610 	.db	120
      002F3F 02                    2611 	.sleb128	2
      002F40 00 00 94 CB           2612 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$70)
      002F44 00 00 94 D0           2613 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$71)
      002F48 00 02                 2614 	.dw	2
      002F4A 78                    2615 	.db	120
      002F4B 08                    2616 	.sleb128	8
      002F4C 00 00 94 C9           2617 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$69)
      002F50 00 00 94 CB           2618 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$70)
      002F54 00 02                 2619 	.dw	2
      002F56 78                    2620 	.db	120
      002F57 07                    2621 	.sleb128	7
      002F58 00 00 94 C7           2622 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$68)
      002F5C 00 00 94 C9           2623 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$69)
      002F60 00 02                 2624 	.dw	2
      002F62 78                    2625 	.db	120
      002F63 06                    2626 	.sleb128	6
      002F64 00 00 94 C5           2627 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$67)
      002F68 00 00 94 C7           2628 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$68)
      002F6C 00 02                 2629 	.dw	2
      002F6E 78                    2630 	.db	120
      002F6F 05                    2631 	.sleb128	5
      002F70 00 00 94 C3           2632 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$66)
      002F74 00 00 94 C5           2633 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$67)
      002F78 00 02                 2634 	.dw	2
      002F7A 78                    2635 	.db	120
      002F7B 03                    2636 	.sleb128	3
      002F7C 00 00 94 C1           2637 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$65)
      002F80 00 00 94 C3           2638 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$66)
      002F84 00 02                 2639 	.dw	2
      002F86 78                    2640 	.db	120
      002F87 02                    2641 	.sleb128	2
      002F88 00 00 94 B2           2642 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$63)
      002F8C 00 00 94 C1           2643 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$65)
      002F90 00 02                 2644 	.dw	2
      002F92 78                    2645 	.db	120
      002F93 02                    2646 	.sleb128	2
      002F94 00 00 94 AD           2647 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$62)
      002F98 00 00 94 B2           2648 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$63)
      002F9C 00 02                 2649 	.dw	2
      002F9E 78                    2650 	.db	120
      002F9F 08                    2651 	.sleb128	8
      002FA0 00 00 94 AB           2652 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$61)
      002FA4 00 00 94 AD           2653 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$62)
      002FA8 00 02                 2654 	.dw	2
      002FAA 78                    2655 	.db	120
      002FAB 07                    2656 	.sleb128	7
      002FAC 00 00 94 A9           2657 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$60)
      002FB0 00 00 94 AB           2658 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$61)
      002FB4 00 02                 2659 	.dw	2
      002FB6 78                    2660 	.db	120
      002FB7 06                    2661 	.sleb128	6
      002FB8 00 00 94 A7           2662 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$59)
      002FBC 00 00 94 A9           2663 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$60)
      002FC0 00 02                 2664 	.dw	2
      002FC2 78                    2665 	.db	120
      002FC3 05                    2666 	.sleb128	5
      002FC4 00 00 94 A5           2667 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$58)
      002FC8 00 00 94 A7           2668 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$59)
      002FCC 00 02                 2669 	.dw	2
      002FCE 78                    2670 	.db	120
      002FCF 03                    2671 	.sleb128	3
      002FD0 00 00 94 A3           2672 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$57)
      002FD4 00 00 94 A5           2673 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$58)
      002FD8 00 02                 2674 	.dw	2
      002FDA 78                    2675 	.db	120
      002FDB 02                    2676 	.sleb128	2
      002FDC 00 00 94 9B           2677 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$55)
      002FE0 00 00 94 A3           2678 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$57)
      002FE4 00 02                 2679 	.dw	2
      002FE6 78                    2680 	.db	120
      002FE7 02                    2681 	.sleb128	2
      002FE8 00 00 94 9A           2682 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$54)
      002FEC 00 00 94 9B           2683 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$55)
      002FF0 00 02                 2684 	.dw	2
      002FF2 78                    2685 	.db	120
      002FF3 01                    2686 	.sleb128	1
      002FF4 00 00 00 00           2687 	.dw	0,0
      002FF8 00 00 00 00           2688 	.dw	0,0
      002FFC 00 00 94 82           2689 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$41)
      003000 00 00 94 9A           2690 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$52)
      003004 00 02                 2691 	.dw	2
      003006 78                    2692 	.db	120
      003007 01                    2693 	.sleb128	1
      003008 00 00 94 7D           2694 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$40)
      00300C 00 00 94 82           2695 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$41)
      003010 00 02                 2696 	.dw	2
      003012 78                    2697 	.db	120
      003013 07                    2698 	.sleb128	7
      003014 00 00 94 7B           2699 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$39)
      003018 00 00 94 7D           2700 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$40)
      00301C 00 02                 2701 	.dw	2
      00301E 78                    2702 	.db	120
      00301F 06                    2703 	.sleb128	6
      003020 00 00 94 79           2704 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$38)
      003024 00 00 94 7B           2705 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$39)
      003028 00 02                 2706 	.dw	2
      00302A 78                    2707 	.db	120
      00302B 05                    2708 	.sleb128	5
      00302C 00 00 94 77           2709 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$37)
      003030 00 00 94 79           2710 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$38)
      003034 00 02                 2711 	.dw	2
      003036 78                    2712 	.db	120
      003037 04                    2713 	.sleb128	4
      003038 00 00 94 75           2714 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$36)
      00303C 00 00 94 77           2715 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$37)
      003040 00 02                 2716 	.dw	2
      003042 78                    2717 	.db	120
      003043 02                    2718 	.sleb128	2
      003044 00 00 94 73           2719 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$35)
      003048 00 00 94 75           2720 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$36)
      00304C 00 02                 2721 	.dw	2
      00304E 78                    2722 	.db	120
      00304F 01                    2723 	.sleb128	1
      003050 00 00 94 64           2724 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$33)
      003054 00 00 94 73           2725 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$35)
      003058 00 02                 2726 	.dw	2
      00305A 78                    2727 	.db	120
      00305B 01                    2728 	.sleb128	1
      00305C 00 00 00 00           2729 	.dw	0,0
      003060 00 00 00 00           2730 	.dw	0,0
      003064 00 00 94 57           2731 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$26)
      003068 00 00 94 64           2732 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$31)
      00306C 00 02                 2733 	.dw	2
      00306E 78                    2734 	.db	120
      00306F 01                    2735 	.sleb128	1
      003070 00 00 94 52           2736 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$25)
      003074 00 00 94 57           2737 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$26)
      003078 00 02                 2738 	.dw	2
      00307A 78                    2739 	.db	120
      00307B 07                    2740 	.sleb128	7
      00307C 00 00 94 50           2741 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$24)
      003080 00 00 94 52           2742 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$25)
      003084 00 02                 2743 	.dw	2
      003086 78                    2744 	.db	120
      003087 06                    2745 	.sleb128	6
      003088 00 00 94 4E           2746 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$23)
      00308C 00 00 94 50           2747 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$24)
      003090 00 02                 2748 	.dw	2
      003092 78                    2749 	.db	120
      003093 05                    2750 	.sleb128	5
      003094 00 00 94 4C           2751 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$22)
      003098 00 00 94 4E           2752 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$23)
      00309C 00 02                 2753 	.dw	2
      00309E 78                    2754 	.db	120
      00309F 04                    2755 	.sleb128	4
      0030A0 00 00 94 4A           2756 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$21)
      0030A4 00 00 94 4C           2757 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$22)
      0030A8 00 02                 2758 	.dw	2
      0030AA 78                    2759 	.db	120
      0030AB 02                    2760 	.sleb128	2
      0030AC 00 00 94 48           2761 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$20)
      0030B0 00 00 94 4A           2762 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$21)
      0030B4 00 02                 2763 	.dw	2
      0030B6 78                    2764 	.db	120
      0030B7 01                    2765 	.sleb128	1
      0030B8 00 00 94 3F           2766 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$19)
      0030BC 00 00 94 48           2767 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$20)
      0030C0 00 02                 2768 	.dw	2
      0030C2 78                    2769 	.db	120
      0030C3 01                    2770 	.sleb128	1
      0030C4 00 00 94 36           2771 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$18)
      0030C8 00 00 94 3F           2772 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$19)
      0030CC 00 02                 2773 	.dw	2
      0030CE 78                    2774 	.db	120
      0030CF 01                    2775 	.sleb128	1
      0030D0 00 00 94 2D           2776 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$17)
      0030D4 00 00 94 36           2777 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$18)
      0030D8 00 02                 2778 	.dw	2
      0030DA 78                    2779 	.db	120
      0030DB 01                    2780 	.sleb128	1
      0030DC 00 00 94 24           2781 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$16)
      0030E0 00 00 94 2D           2782 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$17)
      0030E4 00 02                 2783 	.dw	2
      0030E6 78                    2784 	.db	120
      0030E7 01                    2785 	.sleb128	1
      0030E8 00 00 94 1B           2786 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$15)
      0030EC 00 00 94 24           2787 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$16)
      0030F0 00 02                 2788 	.dw	2
      0030F2 78                    2789 	.db	120
      0030F3 01                    2790 	.sleb128	1
      0030F4 00 00 94 12           2791 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$14)
      0030F8 00 00 94 1B           2792 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$15)
      0030FC 00 02                 2793 	.dw	2
      0030FE 78                    2794 	.db	120
      0030FF 01                    2795 	.sleb128	1
      003100 00 00 94 03           2796 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)
      003104 00 00 94 12           2797 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$14)
      003108 00 02                 2798 	.dw	2
      00310A 78                    2799 	.db	120
      00310B 01                    2800 	.sleb128	1
      00310C 00 00 00 00           2801 	.dw	0,0
      003110 00 00 00 00           2802 	.dw	0,0
      003114 00 00 93 EA           2803 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)
      003118 00 00 94 03           2804 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$10)
      00311C 00 02                 2805 	.dw	2
      00311E 78                    2806 	.db	120
      00311F 01                    2807 	.sleb128	1
      003120 00 00 00 00           2808 	.dw	0,0
      003124 00 00 00 00           2809 	.dw	0,0
                                   2810 
                                   2811 	.area .debug_abbrev (NOLOAD)
      00044A                       2812 Ldebug_abbrev:
      00044A 07                    2813 	.uleb128	7
      00044B 2E                    2814 	.uleb128	46
      00044C 00                    2815 	.db	0
      00044D 03                    2816 	.uleb128	3
      00044E 08                    2817 	.uleb128	8
      00044F 11                    2818 	.uleb128	17
      000450 01                    2819 	.uleb128	1
      000451 12                    2820 	.uleb128	18
      000452 01                    2821 	.uleb128	1
      000453 3F                    2822 	.uleb128	63
      000454 0C                    2823 	.uleb128	12
      000455 40                    2824 	.uleb128	64
      000456 06                    2825 	.uleb128	6
      000457 49                    2826 	.uleb128	73
      000458 13                    2827 	.uleb128	19
      000459 00                    2828 	.uleb128	0
      00045A 00                    2829 	.uleb128	0
      00045B 04                    2830 	.uleb128	4
      00045C 05                    2831 	.uleb128	5
      00045D 00                    2832 	.db	0
      00045E 02                    2833 	.uleb128	2
      00045F 0A                    2834 	.uleb128	10
      000460 03                    2835 	.uleb128	3
      000461 08                    2836 	.uleb128	8
      000462 49                    2837 	.uleb128	73
      000463 13                    2838 	.uleb128	19
      000464 00                    2839 	.uleb128	0
      000465 00                    2840 	.uleb128	0
      000466 0B                    2841 	.uleb128	11
      000467 01                    2842 	.uleb128	1
      000468 01                    2843 	.db	1
      000469 01                    2844 	.uleb128	1
      00046A 13                    2845 	.uleb128	19
      00046B 0B                    2846 	.uleb128	11
      00046C 0B                    2847 	.uleb128	11
      00046D 49                    2848 	.uleb128	73
      00046E 13                    2849 	.uleb128	19
      00046F 00                    2850 	.uleb128	0
      000470 00                    2851 	.uleb128	0
      000471 03                    2852 	.uleb128	3
      000472 2E                    2853 	.uleb128	46
      000473 01                    2854 	.db	1
      000474 01                    2855 	.uleb128	1
      000475 13                    2856 	.uleb128	19
      000476 03                    2857 	.uleb128	3
      000477 08                    2858 	.uleb128	8
      000478 11                    2859 	.uleb128	17
      000479 01                    2860 	.uleb128	1
      00047A 12                    2861 	.uleb128	18
      00047B 01                    2862 	.uleb128	1
      00047C 3F                    2863 	.uleb128	63
      00047D 0C                    2864 	.uleb128	12
      00047E 40                    2865 	.uleb128	64
      00047F 06                    2866 	.uleb128	6
      000480 00                    2867 	.uleb128	0
      000481 00                    2868 	.uleb128	0
      000482 09                    2869 	.uleb128	9
      000483 34                    2870 	.uleb128	52
      000484 00                    2871 	.db	0
      000485 02                    2872 	.uleb128	2
      000486 0A                    2873 	.uleb128	10
      000487 03                    2874 	.uleb128	3
      000488 08                    2875 	.uleb128	8
      000489 49                    2876 	.uleb128	73
      00048A 13                    2877 	.uleb128	19
      00048B 00                    2878 	.uleb128	0
      00048C 00                    2879 	.uleb128	0
      00048D 08                    2880 	.uleb128	8
      00048E 2E                    2881 	.uleb128	46
      00048F 01                    2882 	.db	1
      000490 01                    2883 	.uleb128	1
      000491 13                    2884 	.uleb128	19
      000492 03                    2885 	.uleb128	3
      000493 08                    2886 	.uleb128	8
      000494 11                    2887 	.uleb128	17
      000495 01                    2888 	.uleb128	1
      000496 12                    2889 	.uleb128	18
      000497 01                    2890 	.uleb128	1
      000498 3F                    2891 	.uleb128	63
      000499 0C                    2892 	.uleb128	12
      00049A 40                    2893 	.uleb128	64
      00049B 06                    2894 	.uleb128	6
      00049C 49                    2895 	.uleb128	73
      00049D 13                    2896 	.uleb128	19
      00049E 00                    2897 	.uleb128	0
      00049F 00                    2898 	.uleb128	0
      0004A0 0A                    2899 	.uleb128	10
      0004A1 26                    2900 	.uleb128	38
      0004A2 00                    2901 	.db	0
      0004A3 49                    2902 	.uleb128	73
      0004A4 13                    2903 	.uleb128	19
      0004A5 00                    2904 	.uleb128	0
      0004A6 00                    2905 	.uleb128	0
      0004A7 01                    2906 	.uleb128	1
      0004A8 11                    2907 	.uleb128	17
      0004A9 01                    2908 	.db	1
      0004AA 03                    2909 	.uleb128	3
      0004AB 08                    2910 	.uleb128	8
      0004AC 10                    2911 	.uleb128	16
      0004AD 06                    2912 	.uleb128	6
      0004AE 13                    2913 	.uleb128	19
      0004AF 0B                    2914 	.uleb128	11
      0004B0 25                    2915 	.uleb128	37
      0004B1 08                    2916 	.uleb128	8
      0004B2 00                    2917 	.uleb128	0
      0004B3 00                    2918 	.uleb128	0
      0004B4 06                    2919 	.uleb128	6
      0004B5 0B                    2920 	.uleb128	11
      0004B6 00                    2921 	.db	0
      0004B7 11                    2922 	.uleb128	17
      0004B8 01                    2923 	.uleb128	1
      0004B9 12                    2924 	.uleb128	18
      0004BA 01                    2925 	.uleb128	1
      0004BB 00                    2926 	.uleb128	0
      0004BC 00                    2927 	.uleb128	0
      0004BD 02                    2928 	.uleb128	2
      0004BE 2E                    2929 	.uleb128	46
      0004BF 00                    2930 	.db	0
      0004C0 03                    2931 	.uleb128	3
      0004C1 08                    2932 	.uleb128	8
      0004C2 11                    2933 	.uleb128	17
      0004C3 01                    2934 	.uleb128	1
      0004C4 12                    2935 	.uleb128	18
      0004C5 01                    2936 	.uleb128	1
      0004C6 3F                    2937 	.uleb128	63
      0004C7 0C                    2938 	.uleb128	12
      0004C8 40                    2939 	.uleb128	64
      0004C9 06                    2940 	.uleb128	6
      0004CA 00                    2941 	.uleb128	0
      0004CB 00                    2942 	.uleb128	0
      0004CC 0C                    2943 	.uleb128	12
      0004CD 21                    2944 	.uleb128	33
      0004CE 00                    2945 	.db	0
      0004CF 2F                    2946 	.uleb128	47
      0004D0 0B                    2947 	.uleb128	11
      0004D1 00                    2948 	.uleb128	0
      0004D2 00                    2949 	.uleb128	0
      0004D3 05                    2950 	.uleb128	5
      0004D4 24                    2951 	.uleb128	36
      0004D5 00                    2952 	.db	0
      0004D6 03                    2953 	.uleb128	3
      0004D7 08                    2954 	.uleb128	8
      0004D8 0B                    2955 	.uleb128	11
      0004D9 0B                    2956 	.uleb128	11
      0004DA 3E                    2957 	.uleb128	62
      0004DB 0B                    2958 	.uleb128	11
      0004DC 00                    2959 	.uleb128	0
      0004DD 00                    2960 	.uleb128	0
      0004DE 00                    2961 	.uleb128	0
                                   2962 
                                   2963 	.area .debug_info (NOLOAD)
      002262 00 00 05 48           2964 	.dw	0,Ldebug_info_end-Ldebug_info_start
      002266                       2965 Ldebug_info_start:
      002266 00 02                 2966 	.dw	2
      002268 00 00 04 4A           2967 	.dw	0,(Ldebug_abbrev)
      00226C 04                    2968 	.db	4
      00226D 01                    2969 	.uleb128	1
      00226E 2E 2E 2F 53 50 4C 2F  2970 	.ascii "../SPL/src/stm8s_tim4.c"
             73 72 63 2F 73 74 6D
             38 73 5F 74 69 6D 34
             2E 63
      002285 00                    2971 	.db	0
      002286 00 00 16 9E           2972 	.dw	0,(Ldebug_line_start+-4)
      00228A 01                    2973 	.db	1
      00228B 53 44 43 43 20 76 65  2974 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0022A4 00                    2975 	.db	0
      0022A5 02                    2976 	.uleb128	2
      0022A6 54 49 4D 34 5F 44 65  2977 	.ascii "TIM4_DeInit"
             49 6E 69 74
      0022B1 00                    2978 	.db	0
      0022B2 00 00 93 EA           2979 	.dw	0,(_TIM4_DeInit)
      0022B6 00 00 94 03           2980 	.dw	0,(XG$TIM4_DeInit$0$0+1)
      0022BA 01                    2981 	.db	1
      0022BB 00 00 31 14           2982 	.dw	0,(Ldebug_loc_start+1816)
      0022BF 03                    2983 	.uleb128	3
      0022C0 00 00 00 AD           2984 	.dw	0,173
      0022C4 54 49 4D 34 5F 54 69  2985 	.ascii "TIM4_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      0022D5 00                    2986 	.db	0
      0022D6 00 00 94 03           2987 	.dw	0,(_TIM4_TimeBaseInit)
      0022DA 00 00 94 64           2988 	.dw	0,(XG$TIM4_TimeBaseInit$0$0+1)
      0022DE 01                    2989 	.db	1
      0022DF 00 00 30 64           2990 	.dw	0,(Ldebug_loc_start+1640)
      0022E3 04                    2991 	.uleb128	4
      0022E4 02                    2992 	.db	2
      0022E5 91                    2993 	.db	145
      0022E6 02                    2994 	.sleb128	2
      0022E7 54 49 4D 34 5F 50 72  2995 	.ascii "TIM4_Prescaler"
             65 73 63 61 6C 65 72
      0022F5 00                    2996 	.db	0
      0022F6 00 00 00 AD           2997 	.dw	0,173
      0022FA 04                    2998 	.uleb128	4
      0022FB 02                    2999 	.db	2
      0022FC 91                    3000 	.db	145
      0022FD 03                    3001 	.sleb128	3
      0022FE 54 49 4D 34 5F 50 65  3002 	.ascii "TIM4_Period"
             72 69 6F 64
      002309 00                    3003 	.db	0
      00230A 00 00 00 AD           3004 	.dw	0,173
      00230E 00                    3005 	.uleb128	0
      00230F 05                    3006 	.uleb128	5
      002310 75 6E 73 69 67 6E 65  3007 	.ascii "unsigned char"
             64 20 63 68 61 72
      00231D 00                    3008 	.db	0
      00231E 01                    3009 	.db	1
      00231F 08                    3010 	.db	8
      002320 03                    3011 	.uleb128	3
      002321 00 00 00 FD           3012 	.dw	0,253
      002325 54 49 4D 34 5F 43 6D  3013 	.ascii "TIM4_Cmd"
             64
      00232D 00                    3014 	.db	0
      00232E 00 00 94 64           3015 	.dw	0,(_TIM4_Cmd)
      002332 00 00 94 9A           3016 	.dw	0,(XG$TIM4_Cmd$0$0+1)
      002336 01                    3017 	.db	1
      002337 00 00 2F FC           3018 	.dw	0,(Ldebug_loc_start+1536)
      00233B 04                    3019 	.uleb128	4
      00233C 02                    3020 	.db	2
      00233D 91                    3021 	.db	145
      00233E 02                    3022 	.sleb128	2
      00233F 4E 65 77 53 74 61 74  3023 	.ascii "NewState"
             65
      002347 00                    3024 	.db	0
      002348 00 00 00 AD           3025 	.dw	0,173
      00234C 06                    3026 	.uleb128	6
      00234D 00 00 94 8C           3027 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$44)
      002351 00 00 94 91           3028 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$46)
      002355 06                    3029 	.uleb128	6
      002356 00 00 94 94           3030 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$47)
      00235A 00 00 94 99           3031 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$49)
      00235E 00                    3032 	.uleb128	0
      00235F 03                    3033 	.uleb128	3
      002360 00 00 01 51           3034 	.dw	0,337
      002364 54 49 4D 34 5F 49 54  3035 	.ascii "TIM4_ITConfig"
             43 6F 6E 66 69 67
      002371 00                    3036 	.db	0
      002372 00 00 94 9A           3037 	.dw	0,(_TIM4_ITConfig)
      002376 00 00 94 F0           3038 	.dw	0,(XG$TIM4_ITConfig$0$0+1)
      00237A 01                    3039 	.db	1
      00237B 00 00 2F 10           3040 	.dw	0,(Ldebug_loc_start+1300)
      00237F 04                    3041 	.uleb128	4
      002380 02                    3042 	.db	2
      002381 91                    3043 	.db	145
      002382 02                    3044 	.sleb128	2
      002383 54 49 4D 34 5F 49 54  3045 	.ascii "TIM4_IT"
      00238A 00                    3046 	.db	0
      00238B 00 00 00 AD           3047 	.dw	0,173
      00238F 04                    3048 	.uleb128	4
      002390 02                    3049 	.db	2
      002391 91                    3050 	.db	145
      002392 03                    3051 	.sleb128	3
      002393 4E 65 77 53 74 61 74  3052 	.ascii "NewState"
             65
      00239B 00                    3053 	.db	0
      00239C 00 00 00 AD           3054 	.dw	0,173
      0023A0 06                    3055 	.uleb128	6
      0023A1 00 00 94 DA           3056 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$74)
      0023A5 00 00 94 DF           3057 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$76)
      0023A9 06                    3058 	.uleb128	6
      0023AA 00 00 94 E2           3059 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$77)
      0023AE 00 00 94 EE           3060 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$81)
      0023B2 00                    3061 	.uleb128	0
      0023B3 03                    3062 	.uleb128	3
      0023B4 00 00 01 A0           3063 	.dw	0,416
      0023B8 54 49 4D 34 5F 55 70  3064 	.ascii "TIM4_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      0023D0 00                    3065 	.db	0
      0023D1 00 00 94 F0           3066 	.dw	0,(_TIM4_UpdateDisableConfig)
      0023D5 00 00 95 26           3067 	.dw	0,(XG$TIM4_UpdateDisableConfig$0$0+1)
      0023D9 01                    3068 	.db	1
      0023DA 00 00 2E A8           3069 	.dw	0,(Ldebug_loc_start+1196)
      0023DE 04                    3070 	.uleb128	4
      0023DF 02                    3071 	.db	2
      0023E0 91                    3072 	.db	145
      0023E1 02                    3073 	.sleb128	2
      0023E2 4E 65 77 53 74 61 74  3074 	.ascii "NewState"
             65
      0023EA 00                    3075 	.db	0
      0023EB 00 00 00 AD           3076 	.dw	0,173
      0023EF 06                    3077 	.uleb128	6
      0023F0 00 00 95 18           3078 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$98)
      0023F4 00 00 95 1D           3079 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$100)
      0023F8 06                    3080 	.uleb128	6
      0023F9 00 00 95 20           3081 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$101)
      0023FD 00 00 95 25           3082 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$103)
      002401 00                    3083 	.uleb128	0
      002402 03                    3084 	.uleb128	3
      002403 00 00 01 F8           3085 	.dw	0,504
      002407 54 49 4D 34 5F 55 70  3086 	.ascii "TIM4_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      00241F 00                    3087 	.db	0
      002420 00 00 95 26           3088 	.dw	0,(_TIM4_UpdateRequestConfig)
      002424 00 00 95 5C           3089 	.dw	0,(XG$TIM4_UpdateRequestConfig$0$0+1)
      002428 01                    3090 	.db	1
      002429 00 00 2E 40           3091 	.dw	0,(Ldebug_loc_start+1092)
      00242D 04                    3092 	.uleb128	4
      00242E 02                    3093 	.db	2
      00242F 91                    3094 	.db	145
      002430 02                    3095 	.sleb128	2
      002431 54 49 4D 34 5F 55 70  3096 	.ascii "TIM4_UpdateSource"
             64 61 74 65 53 6F 75
             72 63 65
      002442 00                    3097 	.db	0
      002443 00 00 00 AD           3098 	.dw	0,173
      002447 06                    3099 	.uleb128	6
      002448 00 00 95 4E           3100 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$119)
      00244C 00 00 95 53           3101 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$121)
      002450 06                    3102 	.uleb128	6
      002451 00 00 95 56           3103 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$122)
      002455 00 00 95 5B           3104 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$124)
      002459 00                    3105 	.uleb128	0
      00245A 03                    3106 	.uleb128	3
      00245B 00 00 02 49           3107 	.dw	0,585
      00245F 54 49 4D 34 5F 53 65  3108 	.ascii "TIM4_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      002476 00                    3109 	.db	0
      002477 00 00 95 5C           3110 	.dw	0,(_TIM4_SelectOnePulseMode)
      00247B 00 00 95 92           3111 	.dw	0,(XG$TIM4_SelectOnePulseMode$0$0+1)
      00247F 01                    3112 	.db	1
      002480 00 00 2D D8           3113 	.dw	0,(Ldebug_loc_start+988)
      002484 04                    3114 	.uleb128	4
      002485 02                    3115 	.db	2
      002486 91                    3116 	.db	145
      002487 02                    3117 	.sleb128	2
      002488 54 49 4D 34 5F 4F 50  3118 	.ascii "TIM4_OPMode"
             4D 6F 64 65
      002493 00                    3119 	.db	0
      002494 00 00 00 AD           3120 	.dw	0,173
      002498 06                    3121 	.uleb128	6
      002499 00 00 95 84           3122 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$140)
      00249D 00 00 95 89           3123 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$142)
      0024A1 06                    3124 	.uleb128	6
      0024A2 00 00 95 8C           3125 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$143)
      0024A6 00 00 95 91           3126 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$145)
      0024AA 00                    3127 	.uleb128	0
      0024AB 03                    3128 	.uleb128	3
      0024AC 00 00 02 9E           3129 	.dw	0,670
      0024B0 54 49 4D 34 5F 50 72  3130 	.ascii "TIM4_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0024C4 00                    3131 	.db	0
      0024C5 00 00 95 92           3132 	.dw	0,(_TIM4_PrescalerConfig)
      0024C9 00 00 96 11           3133 	.dw	0,(XG$TIM4_PrescalerConfig$0$0+1)
      0024CD 01                    3134 	.db	1
      0024CE 00 00 2C D4           3135 	.dw	0,(Ldebug_loc_start+728)
      0024D2 04                    3136 	.uleb128	4
      0024D3 02                    3137 	.db	2
      0024D4 91                    3138 	.db	145
      0024D5 02                    3139 	.sleb128	2
      0024D6 50 72 65 73 63 61 6C  3140 	.ascii "Prescaler"
             65 72
      0024DF 00                    3141 	.db	0
      0024E0 00 00 00 AD           3142 	.dw	0,173
      0024E4 04                    3143 	.uleb128	4
      0024E5 02                    3144 	.db	2
      0024E6 91                    3145 	.db	145
      0024E7 03                    3146 	.sleb128	3
      0024E8 54 49 4D 34 5F 50 53  3147 	.ascii "TIM4_PSCReloadMode"
             43 52 65 6C 6F 61 64
             4D 6F 64 65
      0024FA 00                    3148 	.db	0
      0024FB 00 00 00 AD           3149 	.dw	0,173
      0024FF 00                    3150 	.uleb128	0
      002500 03                    3151 	.uleb128	3
      002501 00 00 02 EA           3152 	.dw	0,746
      002505 54 49 4D 34 5F 41 52  3153 	.ascii "TIM4_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      00251A 00                    3154 	.db	0
      00251B 00 00 96 11           3155 	.dw	0,(_TIM4_ARRPreloadConfig)
      00251F 00 00 96 47           3156 	.dw	0,(XG$TIM4_ARRPreloadConfig$0$0+1)
      002523 01                    3157 	.db	1
      002524 00 00 2C 6C           3158 	.dw	0,(Ldebug_loc_start+624)
      002528 04                    3159 	.uleb128	4
      002529 02                    3160 	.db	2
      00252A 91                    3161 	.db	145
      00252B 02                    3162 	.sleb128	2
      00252C 4E 65 77 53 74 61 74  3163 	.ascii "NewState"
             65
      002534 00                    3164 	.db	0
      002535 00 00 00 AD           3165 	.dw	0,173
      002539 06                    3166 	.uleb128	6
      00253A 00 00 96 39           3167 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$190)
      00253E 00 00 96 3E           3168 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$192)
      002542 06                    3169 	.uleb128	6
      002543 00 00 96 41           3170 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$193)
      002547 00 00 96 46           3171 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$195)
      00254B 00                    3172 	.uleb128	0
      00254C 03                    3173 	.uleb128	3
      00254D 00 00 03 29           3174 	.dw	0,809
      002551 54 49 4D 34 5F 47 65  3175 	.ascii "TIM4_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      002563 00                    3176 	.db	0
      002564 00 00 96 47           3177 	.dw	0,(_TIM4_GenerateEvent)
      002568 00 00 96 65           3178 	.dw	0,(XG$TIM4_GenerateEvent$0$0+1)
      00256C 01                    3179 	.db	1
      00256D 00 00 2C 04           3180 	.dw	0,(Ldebug_loc_start+520)
      002571 04                    3181 	.uleb128	4
      002572 02                    3182 	.db	2
      002573 91                    3183 	.db	145
      002574 02                    3184 	.sleb128	2
      002575 54 49 4D 34 5F 45 76  3185 	.ascii "TIM4_EventSource"
             65 6E 74 53 6F 75 72
             63 65
      002585 00                    3186 	.db	0
      002586 00 00 00 AD           3187 	.dw	0,173
      00258A 00                    3188 	.uleb128	0
      00258B 03                    3189 	.uleb128	3
      00258C 00 00 03 5C           3190 	.dw	0,860
      002590 54 49 4D 34 5F 53 65  3191 	.ascii "TIM4_SetCounter"
             74 43 6F 75 6E 74 65
             72
      00259F 00                    3192 	.db	0
      0025A0 00 00 96 65           3193 	.dw	0,(_TIM4_SetCounter)
      0025A4 00 00 96 6C           3194 	.dw	0,(XG$TIM4_SetCounter$0$0+1)
      0025A8 01                    3195 	.db	1
      0025A9 00 00 2B F0           3196 	.dw	0,(Ldebug_loc_start+500)
      0025AD 04                    3197 	.uleb128	4
      0025AE 02                    3198 	.db	2
      0025AF 91                    3199 	.db	145
      0025B0 02                    3200 	.sleb128	2
      0025B1 43 6F 75 6E 74 65 72  3201 	.ascii "Counter"
      0025B8 00                    3202 	.db	0
      0025B9 00 00 00 AD           3203 	.dw	0,173
      0025BD 00                    3204 	.uleb128	0
      0025BE 03                    3205 	.uleb128	3
      0025BF 00 00 03 95           3206 	.dw	0,917
      0025C3 54 49 4D 34 5F 53 65  3207 	.ascii "TIM4_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      0025D5 00                    3208 	.db	0
      0025D6 00 00 96 6C           3209 	.dw	0,(_TIM4_SetAutoreload)
      0025DA 00 00 96 73           3210 	.dw	0,(XG$TIM4_SetAutoreload$0$0+1)
      0025DE 01                    3211 	.db	1
      0025DF 00 00 2B DC           3212 	.dw	0,(Ldebug_loc_start+480)
      0025E3 04                    3213 	.uleb128	4
      0025E4 02                    3214 	.db	2
      0025E5 91                    3215 	.db	145
      0025E6 02                    3216 	.sleb128	2
      0025E7 41 75 74 6F 72 65 6C  3217 	.ascii "Autoreload"
             6F 61 64
      0025F1 00                    3218 	.db	0
      0025F2 00 00 00 AD           3219 	.dw	0,173
      0025F6 00                    3220 	.uleb128	0
      0025F7 07                    3221 	.uleb128	7
      0025F8 54 49 4D 34 5F 47 65  3222 	.ascii "TIM4_GetCounter"
             74 43 6F 75 6E 74 65
             72
      002607 00                    3223 	.db	0
      002608 00 00 96 73           3224 	.dw	0,(_TIM4_GetCounter)
      00260C 00 00 96 77           3225 	.dw	0,(XG$TIM4_GetCounter$0$0+1)
      002610 01                    3226 	.db	1
      002611 00 00 2B C8           3227 	.dw	0,(Ldebug_loc_start+460)
      002615 00 00 00 AD           3228 	.dw	0,173
      002619 07                    3229 	.uleb128	7
      00261A 54 49 4D 34 5F 47 65  3230 	.ascii "TIM4_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      00262B 00                    3231 	.db	0
      00262C 00 00 96 77           3232 	.dw	0,(_TIM4_GetPrescaler)
      002630 00 00 96 7B           3233 	.dw	0,(XG$TIM4_GetPrescaler$0$0+1)
      002634 01                    3234 	.db	1
      002635 00 00 2B B4           3235 	.dw	0,(Ldebug_loc_start+440)
      002639 00 00 00 AD           3236 	.dw	0,173
      00263D 08                    3237 	.uleb128	8
      00263E 00 00 04 3A           3238 	.dw	0,1082
      002642 54 49 4D 34 5F 47 65  3239 	.ascii "TIM4_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      002654 00                    3240 	.db	0
      002655 00 00 96 7B           3241 	.dw	0,(_TIM4_GetFlagStatus)
      002659 00 00 96 A4           3242 	.dw	0,(XG$TIM4_GetFlagStatus$0$0+1)
      00265D 01                    3243 	.db	1
      00265E 00 00 2B 4C           3244 	.dw	0,(Ldebug_loc_start+336)
      002662 00 00 00 AD           3245 	.dw	0,173
      002666 04                    3246 	.uleb128	4
      002667 02                    3247 	.db	2
      002668 91                    3248 	.db	145
      002669 02                    3249 	.sleb128	2
      00266A 54 49 4D 34 5F 46 4C  3250 	.ascii "TIM4_FLAG"
             41 47
      002673 00                    3251 	.db	0
      002674 00 00 00 AD           3252 	.dw	0,173
      002678 06                    3253 	.uleb128	6
      002679 00 00 96 9D           3254 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$248)
      00267D 00 00 96 9F           3255 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$250)
      002681 06                    3256 	.uleb128	6
      002682 00 00 96 A2           3257 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$251)
      002686 00 00 96 A3           3258 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$253)
      00268A 09                    3259 	.uleb128	9
      00268B 01                    3260 	.db	1
      00268C 50                    3261 	.db	80
      00268D 62 69 74 73 74 61 74  3262 	.ascii "bitstatus"
             75 73
      002696 00                    3263 	.db	0
      002697 00 00 00 AD           3264 	.dw	0,173
      00269B 00                    3265 	.uleb128	0
      00269C 03                    3266 	.uleb128	3
      00269D 00 00 04 6E           3267 	.dw	0,1134
      0026A1 54 49 4D 34 5F 43 6C  3268 	.ascii "TIM4_ClearFlag"
             65 61 72 46 6C 61 67
      0026AF 00                    3269 	.db	0
      0026B0 00 00 96 A4           3270 	.dw	0,(_TIM4_ClearFlag)
      0026B4 00 00 96 C2           3271 	.dw	0,(XG$TIM4_ClearFlag$0$0+1)
      0026B8 01                    3272 	.db	1
      0026B9 00 00 2A E4           3273 	.dw	0,(Ldebug_loc_start+232)
      0026BD 04                    3274 	.uleb128	4
      0026BE 02                    3275 	.db	2
      0026BF 91                    3276 	.db	145
      0026C0 02                    3277 	.sleb128	2
      0026C1 54 49 4D 34 5F 46 4C  3278 	.ascii "TIM4_FLAG"
             41 47
      0026CA 00                    3279 	.db	0
      0026CB 00 00 00 AD           3280 	.dw	0,173
      0026CF 00                    3281 	.uleb128	0
      0026D0 08                    3282 	.uleb128	8
      0026D1 00 00 04 EA           3283 	.dw	0,1258
      0026D5 54 49 4D 34 5F 47 65  3284 	.ascii "TIM4_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      0026E5 00                    3285 	.db	0
      0026E6 00 00 96 C2           3286 	.dw	0,(_TIM4_GetITStatus)
      0026EA 00 00 96 FC           3287 	.dw	0,(XG$TIM4_GetITStatus$0$0+1)
      0026EE 01                    3288 	.db	1
      0026EF 00 00 2A 64           3289 	.dw	0,(Ldebug_loc_start+104)
      0026F3 00 00 00 AD           3290 	.dw	0,173
      0026F7 04                    3291 	.uleb128	4
      0026F8 02                    3292 	.db	2
      0026F9 91                    3293 	.db	145
      0026FA 02                    3294 	.sleb128	2
      0026FB 54 49 4D 34 5F 49 54  3295 	.ascii "TIM4_IT"
      002702 00                    3296 	.db	0
      002703 00 00 00 AD           3297 	.dw	0,173
      002707 06                    3298 	.uleb128	6
      002708 00 00 96 F3           3299 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$286)
      00270C 00 00 96 F5           3300 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$288)
      002710 06                    3301 	.uleb128	6
      002711 00 00 96 F8           3302 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$289)
      002715 00 00 96 F9           3303 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$291)
      002719 09                    3304 	.uleb128	9
      00271A 01                    3305 	.db	1
      00271B 50                    3306 	.db	80
      00271C 62 69 74 73 74 61 74  3307 	.ascii "bitstatus"
             75 73
      002725 00                    3308 	.db	0
      002726 00 00 00 AD           3309 	.dw	0,173
      00272A 09                    3310 	.uleb128	9
      00272B 02                    3311 	.db	2
      00272C 91                    3312 	.db	145
      00272D 7F                    3313 	.sleb128	-1
      00272E 69 74 73 74 61 74 75  3314 	.ascii "itstatus"
             73
      002736 00                    3315 	.db	0
      002737 00 00 00 AD           3316 	.dw	0,173
      00273B 09                    3317 	.uleb128	9
      00273C 01                    3318 	.db	1
      00273D 50                    3319 	.db	80
      00273E 69 74 65 6E 61 62 6C  3320 	.ascii "itenable"
             65
      002746 00                    3321 	.db	0
      002747 00 00 00 AD           3322 	.dw	0,173
      00274B 00                    3323 	.uleb128	0
      00274C 03                    3324 	.uleb128	3
      00274D 00 00 05 24           3325 	.dw	0,1316
      002751 54 49 4D 34 5F 43 6C  3326 	.ascii "TIM4_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      002767 00                    3327 	.db	0
      002768 00 00 96 FC           3328 	.dw	0,(_TIM4_ClearITPendingBit)
      00276C 00 00 97 1A           3329 	.dw	0,(XG$TIM4_ClearITPendingBit$0$0+1)
      002770 01                    3330 	.db	1
      002771 00 00 29 FC           3331 	.dw	0,(Ldebug_loc_start)
      002775 04                    3332 	.uleb128	4
      002776 02                    3333 	.db	2
      002777 91                    3334 	.db	145
      002778 02                    3335 	.sleb128	2
      002779 54 49 4D 34 5F 49 54  3336 	.ascii "TIM4_IT"
      002780 00                    3337 	.db	0
      002781 00 00 00 AD           3338 	.dw	0,173
      002785 00                    3339 	.uleb128	0
      002786 0A                    3340 	.uleb128	10
      002787 00 00 00 AD           3341 	.dw	0,173
      00278B 0B                    3342 	.uleb128	11
      00278C 00 00 05 36           3343 	.dw	0,1334
      002790 18                    3344 	.db	24
      002791 00 00 05 24           3345 	.dw	0,1316
      002795 0C                    3346 	.uleb128	12
      002796 17                    3347 	.db	23
      002797 00                    3348 	.uleb128	0
      002798 09                    3349 	.uleb128	9
      002799 05                    3350 	.db	5
      00279A 03                    3351 	.db	3
      00279B 00 00 80 D4           3352 	.dw	0,(___str_0)
      00279F 5F 5F 73 74 72 5F 30  3353 	.ascii "__str_0"
      0027A6 00                    3354 	.db	0
      0027A7 00 00 05 29           3355 	.dw	0,1321
      0027AB 00                    3356 	.uleb128	0
      0027AC 00                    3357 	.uleb128	0
      0027AD 00                    3358 	.uleb128	0
      0027AE                       3359 Ldebug_info_end:
                                   3360 
                                   3361 	.area .debug_pubnames (NOLOAD)
      0007F1 00 00 01 A2           3362 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0007F5                       3363 Ldebug_pubnames_start:
      0007F5 00 02                 3364 	.dw	2
      0007F7 00 00 22 62           3365 	.dw	0,(Ldebug_info_start-4)
      0007FB 00 00 05 4C           3366 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0007FF 00 00 00 43           3367 	.dw	0,67
      000803 54 49 4D 34 5F 44 65  3368 	.ascii "TIM4_DeInit"
             49 6E 69 74
      00080E 00                    3369 	.db	0
      00080F 00 00 00 5D           3370 	.dw	0,93
      000813 54 49 4D 34 5F 54 69  3371 	.ascii "TIM4_TimeBaseInit"
             6D 65 42 61 73 65 49
             6E 69 74
      000824 00                    3372 	.db	0
      000825 00 00 00 BE           3373 	.dw	0,190
      000829 54 49 4D 34 5F 43 6D  3374 	.ascii "TIM4_Cmd"
             64
      000831 00                    3375 	.db	0
      000832 00 00 00 FD           3376 	.dw	0,253
      000836 54 49 4D 34 5F 49 54  3377 	.ascii "TIM4_ITConfig"
             43 6F 6E 66 69 67
      000843 00                    3378 	.db	0
      000844 00 00 01 51           3379 	.dw	0,337
      000848 54 49 4D 34 5F 55 70  3380 	.ascii "TIM4_UpdateDisableConfig"
             64 61 74 65 44 69 73
             61 62 6C 65 43 6F 6E
             66 69 67
      000860 00                    3381 	.db	0
      000861 00 00 01 A0           3382 	.dw	0,416
      000865 54 49 4D 34 5F 55 70  3383 	.ascii "TIM4_UpdateRequestConfig"
             64 61 74 65 52 65 71
             75 65 73 74 43 6F 6E
             66 69 67
      00087D 00                    3384 	.db	0
      00087E 00 00 01 F8           3385 	.dw	0,504
      000882 54 49 4D 34 5F 53 65  3386 	.ascii "TIM4_SelectOnePulseMode"
             6C 65 63 74 4F 6E 65
             50 75 6C 73 65 4D 6F
             64 65
      000899 00                    3387 	.db	0
      00089A 00 00 02 49           3388 	.dw	0,585
      00089E 54 49 4D 34 5F 50 72  3389 	.ascii "TIM4_PrescalerConfig"
             65 73 63 61 6C 65 72
             43 6F 6E 66 69 67
      0008B2 00                    3390 	.db	0
      0008B3 00 00 02 9E           3391 	.dw	0,670
      0008B7 54 49 4D 34 5F 41 52  3392 	.ascii "TIM4_ARRPreloadConfig"
             52 50 72 65 6C 6F 61
             64 43 6F 6E 66 69 67
      0008CC 00                    3393 	.db	0
      0008CD 00 00 02 EA           3394 	.dw	0,746
      0008D1 54 49 4D 34 5F 47 65  3395 	.ascii "TIM4_GenerateEvent"
             6E 65 72 61 74 65 45
             76 65 6E 74
      0008E3 00                    3396 	.db	0
      0008E4 00 00 03 29           3397 	.dw	0,809
      0008E8 54 49 4D 34 5F 53 65  3398 	.ascii "TIM4_SetCounter"
             74 43 6F 75 6E 74 65
             72
      0008F7 00                    3399 	.db	0
      0008F8 00 00 03 5C           3400 	.dw	0,860
      0008FC 54 49 4D 34 5F 53 65  3401 	.ascii "TIM4_SetAutoreload"
             74 41 75 74 6F 72 65
             6C 6F 61 64
      00090E 00                    3402 	.db	0
      00090F 00 00 03 95           3403 	.dw	0,917
      000913 54 49 4D 34 5F 47 65  3404 	.ascii "TIM4_GetCounter"
             74 43 6F 75 6E 74 65
             72
      000922 00                    3405 	.db	0
      000923 00 00 03 B7           3406 	.dw	0,951
      000927 54 49 4D 34 5F 47 65  3407 	.ascii "TIM4_GetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      000938 00                    3408 	.db	0
      000939 00 00 03 DB           3409 	.dw	0,987
      00093D 54 49 4D 34 5F 47 65  3410 	.ascii "TIM4_GetFlagStatus"
             74 46 6C 61 67 53 74
             61 74 75 73
      00094F 00                    3411 	.db	0
      000950 00 00 04 3A           3412 	.dw	0,1082
      000954 54 49 4D 34 5F 43 6C  3413 	.ascii "TIM4_ClearFlag"
             65 61 72 46 6C 61 67
      000962 00                    3414 	.db	0
      000963 00 00 04 6E           3415 	.dw	0,1134
      000967 54 49 4D 34 5F 47 65  3416 	.ascii "TIM4_GetITStatus"
             74 49 54 53 74 61 74
             75 73
      000977 00                    3417 	.db	0
      000978 00 00 04 EA           3418 	.dw	0,1258
      00097C 54 49 4D 34 5F 43 6C  3419 	.ascii "TIM4_ClearITPendingBit"
             65 61 72 49 54 50 65
             6E 64 69 6E 67 42 69
             74
      000992 00                    3420 	.db	0
      000993 00 00 00 00           3421 	.dw	0,0
      000997                       3422 Ldebug_pubnames_end:
                                   3423 
                                   3424 	.area .debug_frame (NOLOAD)
      002343 00 00                 3425 	.dw	0
      002345 00 0E                 3426 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      002347                       3427 Ldebug_CIE0_start:
      002347 FF FF                 3428 	.dw	0xffff
      002349 FF FF                 3429 	.dw	0xffff
      00234B 01                    3430 	.db	1
      00234C 00                    3431 	.db	0
      00234D 01                    3432 	.uleb128	1
      00234E 7F                    3433 	.sleb128	-1
      00234F 09                    3434 	.db	9
      002350 0C                    3435 	.db	12
      002351 08                    3436 	.uleb128	8
      002352 02                    3437 	.uleb128	2
      002353 89                    3438 	.db	137
      002354 01                    3439 	.uleb128	1
      002355                       3440 Ldebug_CIE0_end:
      002355 00 00 00 44           3441 	.dw	0,68
      002359 00 00 23 43           3442 	.dw	0,(Ldebug_CIE0_start-4)
      00235D 00 00 96 FC           3443 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$298)	;initial loc
      002361 00 00 00 1E           3444 	.dw	0,Sstm8s_tim4$TIM4_ClearITPendingBit$310-Sstm8s_tim4$TIM4_ClearITPendingBit$298
      002365 01                    3445 	.db	1
      002366 00 00 96 FC           3446 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$298)
      00236A 0E                    3447 	.db	14
      00236B 02                    3448 	.uleb128	2
      00236C 01                    3449 	.db	1
      00236D 00 00 97 04           3450 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$300)
      002371 0E                    3451 	.db	14
      002372 02                    3452 	.uleb128	2
      002373 01                    3453 	.db	1
      002374 00 00 97 06           3454 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$301)
      002378 0E                    3455 	.db	14
      002379 03                    3456 	.uleb128	3
      00237A 01                    3457 	.db	1
      00237B 00 00 97 08           3458 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$302)
      00237F 0E                    3459 	.db	14
      002380 04                    3460 	.uleb128	4
      002381 01                    3461 	.db	1
      002382 00 00 97 0A           3462 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$303)
      002386 0E                    3463 	.db	14
      002387 06                    3464 	.uleb128	6
      002388 01                    3465 	.db	1
      002389 00 00 97 0C           3466 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$304)
      00238D 0E                    3467 	.db	14
      00238E 07                    3468 	.uleb128	7
      00238F 01                    3469 	.db	1
      002390 00 00 97 0E           3470 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$305)
      002394 0E                    3471 	.db	14
      002395 08                    3472 	.uleb128	8
      002396 01                    3473 	.db	1
      002397 00 00 97 13           3474 	.dw	0,(Sstm8s_tim4$TIM4_ClearITPendingBit$306)
      00239B 0E                    3475 	.db	14
      00239C 02                    3476 	.uleb128	2
                                   3477 
                                   3478 	.area .debug_frame (NOLOAD)
      00239D 00 00                 3479 	.dw	0
      00239F 00 0E                 3480 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0023A1                       3481 Ldebug_CIE1_start:
      0023A1 FF FF                 3482 	.dw	0xffff
      0023A3 FF FF                 3483 	.dw	0xffff
      0023A5 01                    3484 	.db	1
      0023A6 00                    3485 	.db	0
      0023A7 01                    3486 	.uleb128	1
      0023A8 7F                    3487 	.sleb128	-1
      0023A9 09                    3488 	.db	9
      0023AA 0C                    3489 	.db	12
      0023AB 08                    3490 	.uleb128	8
      0023AC 02                    3491 	.uleb128	2
      0023AD 89                    3492 	.db	137
      0023AE 01                    3493 	.uleb128	1
      0023AF                       3494 Ldebug_CIE1_end:
      0023AF 00 00 00 52           3495 	.dw	0,82
      0023B3 00 00 23 9D           3496 	.dw	0,(Ldebug_CIE1_start-4)
      0023B7 00 00 96 C2           3497 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$273)	;initial loc
      0023BB 00 00 00 3A           3498 	.dw	0,Sstm8s_tim4$TIM4_GetITStatus$296-Sstm8s_tim4$TIM4_GetITStatus$273
      0023BF 01                    3499 	.db	1
      0023C0 00 00 96 C2           3500 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$273)
      0023C4 0E                    3501 	.db	14
      0023C5 02                    3502 	.uleb128	2
      0023C6 01                    3503 	.db	1
      0023C7 00 00 96 C3           3504 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$274)
      0023CB 0E                    3505 	.db	14
      0023CC 03                    3506 	.uleb128	3
      0023CD 01                    3507 	.db	1
      0023CE 00 00 96 CB           3508 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$276)
      0023D2 0E                    3509 	.db	14
      0023D3 03                    3510 	.uleb128	3
      0023D4 01                    3511 	.db	1
      0023D5 00 00 96 CD           3512 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$277)
      0023D9 0E                    3513 	.db	14
      0023DA 04                    3514 	.uleb128	4
      0023DB 01                    3515 	.db	1
      0023DC 00 00 96 CF           3516 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$278)
      0023E0 0E                    3517 	.db	14
      0023E1 05                    3518 	.uleb128	5
      0023E2 01                    3519 	.db	1
      0023E3 00 00 96 D1           3520 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$279)
      0023E7 0E                    3521 	.db	14
      0023E8 07                    3522 	.uleb128	7
      0023E9 01                    3523 	.db	1
      0023EA 00 00 96 D3           3524 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$280)
      0023EE 0E                    3525 	.db	14
      0023EF 08                    3526 	.uleb128	8
      0023F0 01                    3527 	.db	1
      0023F1 00 00 96 D5           3528 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$281)
      0023F5 0E                    3529 	.db	14
      0023F6 09                    3530 	.uleb128	9
      0023F7 01                    3531 	.db	1
      0023F8 00 00 96 DA           3532 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$282)
      0023FC 0E                    3533 	.db	14
      0023FD 03                    3534 	.uleb128	3
      0023FE 01                    3535 	.db	1
      0023FF 00 00 96 FB           3536 	.dw	0,(Sstm8s_tim4$TIM4_GetITStatus$294)
      002403 0E                    3537 	.db	14
      002404 02                    3538 	.uleb128	2
                                   3539 
                                   3540 	.area .debug_frame (NOLOAD)
      002405 00 00                 3541 	.dw	0
      002407 00 0E                 3542 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      002409                       3543 Ldebug_CIE2_start:
      002409 FF FF                 3544 	.dw	0xffff
      00240B FF FF                 3545 	.dw	0xffff
      00240D 01                    3546 	.db	1
      00240E 00                    3547 	.db	0
      00240F 01                    3548 	.uleb128	1
      002410 7F                    3549 	.sleb128	-1
      002411 09                    3550 	.db	9
      002412 0C                    3551 	.db	12
      002413 08                    3552 	.uleb128	8
      002414 02                    3553 	.uleb128	2
      002415 89                    3554 	.db	137
      002416 01                    3555 	.uleb128	1
      002417                       3556 Ldebug_CIE2_end:
      002417 00 00 00 44           3557 	.dw	0,68
      00241B 00 00 24 05           3558 	.dw	0,(Ldebug_CIE2_start-4)
      00241F 00 00 96 A4           3559 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$259)	;initial loc
      002423 00 00 00 1E           3560 	.dw	0,Sstm8s_tim4$TIM4_ClearFlag$271-Sstm8s_tim4$TIM4_ClearFlag$259
      002427 01                    3561 	.db	1
      002428 00 00 96 A4           3562 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$259)
      00242C 0E                    3563 	.db	14
      00242D 02                    3564 	.uleb128	2
      00242E 01                    3565 	.db	1
      00242F 00 00 96 AC           3566 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$261)
      002433 0E                    3567 	.db	14
      002434 02                    3568 	.uleb128	2
      002435 01                    3569 	.db	1
      002436 00 00 96 AE           3570 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$262)
      00243A 0E                    3571 	.db	14
      00243B 03                    3572 	.uleb128	3
      00243C 01                    3573 	.db	1
      00243D 00 00 96 B0           3574 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$263)
      002441 0E                    3575 	.db	14
      002442 04                    3576 	.uleb128	4
      002443 01                    3577 	.db	1
      002444 00 00 96 B2           3578 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$264)
      002448 0E                    3579 	.db	14
      002449 06                    3580 	.uleb128	6
      00244A 01                    3581 	.db	1
      00244B 00 00 96 B4           3582 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$265)
      00244F 0E                    3583 	.db	14
      002450 07                    3584 	.uleb128	7
      002451 01                    3585 	.db	1
      002452 00 00 96 B6           3586 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$266)
      002456 0E                    3587 	.db	14
      002457 08                    3588 	.uleb128	8
      002458 01                    3589 	.db	1
      002459 00 00 96 BB           3590 	.dw	0,(Sstm8s_tim4$TIM4_ClearFlag$267)
      00245D 0E                    3591 	.db	14
      00245E 02                    3592 	.uleb128	2
                                   3593 
                                   3594 	.area .debug_frame (NOLOAD)
      00245F 00 00                 3595 	.dw	0
      002461 00 0E                 3596 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      002463                       3597 Ldebug_CIE3_start:
      002463 FF FF                 3598 	.dw	0xffff
      002465 FF FF                 3599 	.dw	0xffff
      002467 01                    3600 	.db	1
      002468 00                    3601 	.db	0
      002469 01                    3602 	.uleb128	1
      00246A 7F                    3603 	.sleb128	-1
      00246B 09                    3604 	.db	9
      00246C 0C                    3605 	.db	12
      00246D 08                    3606 	.uleb128	8
      00246E 02                    3607 	.uleb128	2
      00246F 89                    3608 	.db	137
      002470 01                    3609 	.uleb128	1
      002471                       3610 Ldebug_CIE3_end:
      002471 00 00 00 44           3611 	.dw	0,68
      002475 00 00 24 5F           3612 	.dw	0,(Ldebug_CIE3_start-4)
      002479 00 00 96 7B           3613 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$238)	;initial loc
      00247D 00 00 00 29           3614 	.dw	0,Sstm8s_tim4$TIM4_GetFlagStatus$257-Sstm8s_tim4$TIM4_GetFlagStatus$238
      002481 01                    3615 	.db	1
      002482 00 00 96 7B           3616 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$238)
      002486 0E                    3617 	.db	14
      002487 02                    3618 	.uleb128	2
      002488 01                    3619 	.db	1
      002489 00 00 96 83           3620 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$240)
      00248D 0E                    3621 	.db	14
      00248E 02                    3622 	.uleb128	2
      00248F 01                    3623 	.db	1
      002490 00 00 96 85           3624 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$241)
      002494 0E                    3625 	.db	14
      002495 03                    3626 	.uleb128	3
      002496 01                    3627 	.db	1
      002497 00 00 96 87           3628 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$242)
      00249B 0E                    3629 	.db	14
      00249C 04                    3630 	.uleb128	4
      00249D 01                    3631 	.db	1
      00249E 00 00 96 89           3632 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$243)
      0024A2 0E                    3633 	.db	14
      0024A3 06                    3634 	.uleb128	6
      0024A4 01                    3635 	.db	1
      0024A5 00 00 96 8B           3636 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$244)
      0024A9 0E                    3637 	.db	14
      0024AA 07                    3638 	.uleb128	7
      0024AB 01                    3639 	.db	1
      0024AC 00 00 96 8D           3640 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$245)
      0024B0 0E                    3641 	.db	14
      0024B1 08                    3642 	.uleb128	8
      0024B2 01                    3643 	.db	1
      0024B3 00 00 96 92           3644 	.dw	0,(Sstm8s_tim4$TIM4_GetFlagStatus$246)
      0024B7 0E                    3645 	.db	14
      0024B8 02                    3646 	.uleb128	2
                                   3647 
                                   3648 	.area .debug_frame (NOLOAD)
      0024B9 00 00                 3649 	.dw	0
      0024BB 00 0E                 3650 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0024BD                       3651 Ldebug_CIE4_start:
      0024BD FF FF                 3652 	.dw	0xffff
      0024BF FF FF                 3653 	.dw	0xffff
      0024C1 01                    3654 	.db	1
      0024C2 00                    3655 	.db	0
      0024C3 01                    3656 	.uleb128	1
      0024C4 7F                    3657 	.sleb128	-1
      0024C5 09                    3658 	.db	9
      0024C6 0C                    3659 	.db	12
      0024C7 08                    3660 	.uleb128	8
      0024C8 02                    3661 	.uleb128	2
      0024C9 89                    3662 	.db	137
      0024CA 01                    3663 	.uleb128	1
      0024CB                       3664 Ldebug_CIE4_end:
      0024CB 00 00 00 13           3665 	.dw	0,19
      0024CF 00 00 24 B9           3666 	.dw	0,(Ldebug_CIE4_start-4)
      0024D3 00 00 96 77           3667 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$232)	;initial loc
      0024D7 00 00 00 04           3668 	.dw	0,Sstm8s_tim4$TIM4_GetPrescaler$236-Sstm8s_tim4$TIM4_GetPrescaler$232
      0024DB 01                    3669 	.db	1
      0024DC 00 00 96 77           3670 	.dw	0,(Sstm8s_tim4$TIM4_GetPrescaler$232)
      0024E0 0E                    3671 	.db	14
      0024E1 02                    3672 	.uleb128	2
                                   3673 
                                   3674 	.area .debug_frame (NOLOAD)
      0024E2 00 00                 3675 	.dw	0
      0024E4 00 0E                 3676 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0024E6                       3677 Ldebug_CIE5_start:
      0024E6 FF FF                 3678 	.dw	0xffff
      0024E8 FF FF                 3679 	.dw	0xffff
      0024EA 01                    3680 	.db	1
      0024EB 00                    3681 	.db	0
      0024EC 01                    3682 	.uleb128	1
      0024ED 7F                    3683 	.sleb128	-1
      0024EE 09                    3684 	.db	9
      0024EF 0C                    3685 	.db	12
      0024F0 08                    3686 	.uleb128	8
      0024F1 02                    3687 	.uleb128	2
      0024F2 89                    3688 	.db	137
      0024F3 01                    3689 	.uleb128	1
      0024F4                       3690 Ldebug_CIE5_end:
      0024F4 00 00 00 13           3691 	.dw	0,19
      0024F8 00 00 24 E2           3692 	.dw	0,(Ldebug_CIE5_start-4)
      0024FC 00 00 96 73           3693 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$226)	;initial loc
      002500 00 00 00 04           3694 	.dw	0,Sstm8s_tim4$TIM4_GetCounter$230-Sstm8s_tim4$TIM4_GetCounter$226
      002504 01                    3695 	.db	1
      002505 00 00 96 73           3696 	.dw	0,(Sstm8s_tim4$TIM4_GetCounter$226)
      002509 0E                    3697 	.db	14
      00250A 02                    3698 	.uleb128	2
                                   3699 
                                   3700 	.area .debug_frame (NOLOAD)
      00250B 00 00                 3701 	.dw	0
      00250D 00 0E                 3702 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      00250F                       3703 Ldebug_CIE6_start:
      00250F FF FF                 3704 	.dw	0xffff
      002511 FF FF                 3705 	.dw	0xffff
      002513 01                    3706 	.db	1
      002514 00                    3707 	.db	0
      002515 01                    3708 	.uleb128	1
      002516 7F                    3709 	.sleb128	-1
      002517 09                    3710 	.db	9
      002518 0C                    3711 	.db	12
      002519 08                    3712 	.uleb128	8
      00251A 02                    3713 	.uleb128	2
      00251B 89                    3714 	.db	137
      00251C 01                    3715 	.uleb128	1
      00251D                       3716 Ldebug_CIE6_end:
      00251D 00 00 00 13           3717 	.dw	0,19
      002521 00 00 25 0B           3718 	.dw	0,(Ldebug_CIE6_start-4)
      002525 00 00 96 6C           3719 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$220)	;initial loc
      002529 00 00 00 07           3720 	.dw	0,Sstm8s_tim4$TIM4_SetAutoreload$224-Sstm8s_tim4$TIM4_SetAutoreload$220
      00252D 01                    3721 	.db	1
      00252E 00 00 96 6C           3722 	.dw	0,(Sstm8s_tim4$TIM4_SetAutoreload$220)
      002532 0E                    3723 	.db	14
      002533 02                    3724 	.uleb128	2
                                   3725 
                                   3726 	.area .debug_frame (NOLOAD)
      002534 00 00                 3727 	.dw	0
      002536 00 0E                 3728 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      002538                       3729 Ldebug_CIE7_start:
      002538 FF FF                 3730 	.dw	0xffff
      00253A FF FF                 3731 	.dw	0xffff
      00253C 01                    3732 	.db	1
      00253D 00                    3733 	.db	0
      00253E 01                    3734 	.uleb128	1
      00253F 7F                    3735 	.sleb128	-1
      002540 09                    3736 	.db	9
      002541 0C                    3737 	.db	12
      002542 08                    3738 	.uleb128	8
      002543 02                    3739 	.uleb128	2
      002544 89                    3740 	.db	137
      002545 01                    3741 	.uleb128	1
      002546                       3742 Ldebug_CIE7_end:
      002546 00 00 00 13           3743 	.dw	0,19
      00254A 00 00 25 34           3744 	.dw	0,(Ldebug_CIE7_start-4)
      00254E 00 00 96 65           3745 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$214)	;initial loc
      002552 00 00 00 07           3746 	.dw	0,Sstm8s_tim4$TIM4_SetCounter$218-Sstm8s_tim4$TIM4_SetCounter$214
      002556 01                    3747 	.db	1
      002557 00 00 96 65           3748 	.dw	0,(Sstm8s_tim4$TIM4_SetCounter$214)
      00255B 0E                    3749 	.db	14
      00255C 02                    3750 	.uleb128	2
                                   3751 
                                   3752 	.area .debug_frame (NOLOAD)
      00255D 00 00                 3753 	.dw	0
      00255F 00 0E                 3754 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      002561                       3755 Ldebug_CIE8_start:
      002561 FF FF                 3756 	.dw	0xffff
      002563 FF FF                 3757 	.dw	0xffff
      002565 01                    3758 	.db	1
      002566 00                    3759 	.db	0
      002567 01                    3760 	.uleb128	1
      002568 7F                    3761 	.sleb128	-1
      002569 09                    3762 	.db	9
      00256A 0C                    3763 	.db	12
      00256B 08                    3764 	.uleb128	8
      00256C 02                    3765 	.uleb128	2
      00256D 89                    3766 	.db	137
      00256E 01                    3767 	.uleb128	1
      00256F                       3768 Ldebug_CIE8_end:
      00256F 00 00 00 44           3769 	.dw	0,68
      002573 00 00 25 5D           3770 	.dw	0,(Ldebug_CIE8_start-4)
      002577 00 00 96 47           3771 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$200)	;initial loc
      00257B 00 00 00 1E           3772 	.dw	0,Sstm8s_tim4$TIM4_GenerateEvent$212-Sstm8s_tim4$TIM4_GenerateEvent$200
      00257F 01                    3773 	.db	1
      002580 00 00 96 47           3774 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$200)
      002584 0E                    3775 	.db	14
      002585 02                    3776 	.uleb128	2
      002586 01                    3777 	.db	1
      002587 00 00 96 4F           3778 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$202)
      00258B 0E                    3779 	.db	14
      00258C 02                    3780 	.uleb128	2
      00258D 01                    3781 	.db	1
      00258E 00 00 96 51           3782 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$203)
      002592 0E                    3783 	.db	14
      002593 03                    3784 	.uleb128	3
      002594 01                    3785 	.db	1
      002595 00 00 96 53           3786 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$204)
      002599 0E                    3787 	.db	14
      00259A 04                    3788 	.uleb128	4
      00259B 01                    3789 	.db	1
      00259C 00 00 96 55           3790 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$205)
      0025A0 0E                    3791 	.db	14
      0025A1 06                    3792 	.uleb128	6
      0025A2 01                    3793 	.db	1
      0025A3 00 00 96 57           3794 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$206)
      0025A7 0E                    3795 	.db	14
      0025A8 07                    3796 	.uleb128	7
      0025A9 01                    3797 	.db	1
      0025AA 00 00 96 59           3798 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$207)
      0025AE 0E                    3799 	.db	14
      0025AF 08                    3800 	.uleb128	8
      0025B0 01                    3801 	.db	1
      0025B1 00 00 96 5E           3802 	.dw	0,(Sstm8s_tim4$TIM4_GenerateEvent$208)
      0025B5 0E                    3803 	.db	14
      0025B6 02                    3804 	.uleb128	2
                                   3805 
                                   3806 	.area .debug_frame (NOLOAD)
      0025B7 00 00                 3807 	.dw	0
      0025B9 00 0E                 3808 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      0025BB                       3809 Ldebug_CIE9_start:
      0025BB FF FF                 3810 	.dw	0xffff
      0025BD FF FF                 3811 	.dw	0xffff
      0025BF 01                    3812 	.db	1
      0025C0 00                    3813 	.db	0
      0025C1 01                    3814 	.uleb128	1
      0025C2 7F                    3815 	.sleb128	-1
      0025C3 09                    3816 	.db	9
      0025C4 0C                    3817 	.db	12
      0025C5 08                    3818 	.uleb128	8
      0025C6 02                    3819 	.uleb128	2
      0025C7 89                    3820 	.db	137
      0025C8 01                    3821 	.uleb128	1
      0025C9                       3822 Ldebug_CIE9_end:
      0025C9 00 00 00 44           3823 	.dw	0,68
      0025CD 00 00 25 B7           3824 	.dw	0,(Ldebug_CIE9_start-4)
      0025D1 00 00 96 11           3825 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$179)	;initial loc
      0025D5 00 00 00 36           3826 	.dw	0,Sstm8s_tim4$TIM4_ARRPreloadConfig$198-Sstm8s_tim4$TIM4_ARRPreloadConfig$179
      0025D9 01                    3827 	.db	1
      0025DA 00 00 96 11           3828 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$179)
      0025DE 0E                    3829 	.db	14
      0025DF 02                    3830 	.uleb128	2
      0025E0 01                    3831 	.db	1
      0025E1 00 00 96 20           3832 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$181)
      0025E5 0E                    3833 	.db	14
      0025E6 02                    3834 	.uleb128	2
      0025E7 01                    3835 	.db	1
      0025E8 00 00 96 22           3836 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$182)
      0025EC 0E                    3837 	.db	14
      0025ED 03                    3838 	.uleb128	3
      0025EE 01                    3839 	.db	1
      0025EF 00 00 96 24           3840 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$183)
      0025F3 0E                    3841 	.db	14
      0025F4 05                    3842 	.uleb128	5
      0025F5 01                    3843 	.db	1
      0025F6 00 00 96 26           3844 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$184)
      0025FA 0E                    3845 	.db	14
      0025FB 06                    3846 	.uleb128	6
      0025FC 01                    3847 	.db	1
      0025FD 00 00 96 28           3848 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$185)
      002601 0E                    3849 	.db	14
      002602 07                    3850 	.uleb128	7
      002603 01                    3851 	.db	1
      002604 00 00 96 2A           3852 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$186)
      002608 0E                    3853 	.db	14
      002609 08                    3854 	.uleb128	8
      00260A 01                    3855 	.db	1
      00260B 00 00 96 2F           3856 	.dw	0,(Sstm8s_tim4$TIM4_ARRPreloadConfig$187)
      00260F 0E                    3857 	.db	14
      002610 02                    3858 	.uleb128	2
                                   3859 
                                   3860 	.area .debug_frame (NOLOAD)
      002611 00 00                 3861 	.dw	0
      002613 00 0E                 3862 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      002615                       3863 Ldebug_CIE10_start:
      002615 FF FF                 3864 	.dw	0xffff
      002617 FF FF                 3865 	.dw	0xffff
      002619 01                    3866 	.db	1
      00261A 00                    3867 	.db	0
      00261B 01                    3868 	.uleb128	1
      00261C 7F                    3869 	.sleb128	-1
      00261D 09                    3870 	.db	9
      00261E 0C                    3871 	.db	12
      00261F 08                    3872 	.uleb128	8
      002620 02                    3873 	.uleb128	2
      002621 89                    3874 	.db	137
      002622 01                    3875 	.uleb128	1
      002623                       3876 Ldebug_CIE10_end:
      002623 00 00 00 9F           3877 	.dw	0,159
      002627 00 00 26 11           3878 	.dw	0,(Ldebug_CIE10_start-4)
      00262B 00 00 95 92           3879 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$150)	;initial loc
      00262F 00 00 00 7F           3880 	.dw	0,Sstm8s_tim4$TIM4_PrescalerConfig$177-Sstm8s_tim4$TIM4_PrescalerConfig$150
      002633 01                    3881 	.db	1
      002634 00 00 95 92           3882 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$150)
      002638 0E                    3883 	.db	14
      002639 02                    3884 	.uleb128	2
      00263A 01                    3885 	.db	1
      00263B 00 00 95 A1           3886 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$152)
      00263F 0E                    3887 	.db	14
      002640 02                    3888 	.uleb128	2
      002641 01                    3889 	.db	1
      002642 00 00 95 A3           3890 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$153)
      002646 0E                    3891 	.db	14
      002647 03                    3892 	.uleb128	3
      002648 01                    3893 	.db	1
      002649 00 00 95 A5           3894 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$154)
      00264D 0E                    3895 	.db	14
      00264E 05                    3896 	.uleb128	5
      00264F 01                    3897 	.db	1
      002650 00 00 95 A7           3898 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$155)
      002654 0E                    3899 	.db	14
      002655 06                    3900 	.uleb128	6
      002656 01                    3901 	.db	1
      002657 00 00 95 A9           3902 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$156)
      00265B 0E                    3903 	.db	14
      00265C 07                    3904 	.uleb128	7
      00265D 01                    3905 	.db	1
      00265E 00 00 95 AB           3906 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$157)
      002662 0E                    3907 	.db	14
      002663 08                    3908 	.uleb128	8
      002664 01                    3909 	.db	1
      002665 00 00 95 B0           3910 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$158)
      002669 0E                    3911 	.db	14
      00266A 02                    3912 	.uleb128	2
      00266B 01                    3913 	.db	1
      00266C 00 00 95 BF           3914 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$160)
      002670 0E                    3915 	.db	14
      002671 02                    3916 	.uleb128	2
      002672 01                    3917 	.db	1
      002673 00 00 95 C8           3918 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$161)
      002677 0E                    3919 	.db	14
      002678 02                    3920 	.uleb128	2
      002679 01                    3921 	.db	1
      00267A 00 00 95 D1           3922 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$162)
      00267E 0E                    3923 	.db	14
      00267F 02                    3924 	.uleb128	2
      002680 01                    3925 	.db	1
      002681 00 00 95 DA           3926 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$163)
      002685 0E                    3927 	.db	14
      002686 02                    3928 	.uleb128	2
      002687 01                    3929 	.db	1
      002688 00 00 95 E3           3930 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$164)
      00268C 0E                    3931 	.db	14
      00268D 02                    3932 	.uleb128	2
      00268E 01                    3933 	.db	1
      00268F 00 00 95 EC           3934 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$165)
      002693 0E                    3935 	.db	14
      002694 02                    3936 	.uleb128	2
      002695 01                    3937 	.db	1
      002696 00 00 95 F5           3938 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$166)
      00269A 0E                    3939 	.db	14
      00269B 02                    3940 	.uleb128	2
      00269C 01                    3941 	.db	1
      00269D 00 00 95 F7           3942 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$167)
      0026A1 0E                    3943 	.db	14
      0026A2 03                    3944 	.uleb128	3
      0026A3 01                    3945 	.db	1
      0026A4 00 00 95 F9           3946 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$168)
      0026A8 0E                    3947 	.db	14
      0026A9 05                    3948 	.uleb128	5
      0026AA 01                    3949 	.db	1
      0026AB 00 00 95 FB           3950 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$169)
      0026AF 0E                    3951 	.db	14
      0026B0 06                    3952 	.uleb128	6
      0026B1 01                    3953 	.db	1
      0026B2 00 00 95 FD           3954 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$170)
      0026B6 0E                    3955 	.db	14
      0026B7 07                    3956 	.uleb128	7
      0026B8 01                    3957 	.db	1
      0026B9 00 00 95 FF           3958 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$171)
      0026BD 0E                    3959 	.db	14
      0026BE 08                    3960 	.uleb128	8
      0026BF 01                    3961 	.db	1
      0026C0 00 00 96 04           3962 	.dw	0,(Sstm8s_tim4$TIM4_PrescalerConfig$172)
      0026C4 0E                    3963 	.db	14
      0026C5 02                    3964 	.uleb128	2
                                   3965 
                                   3966 	.area .debug_frame (NOLOAD)
      0026C6 00 00                 3967 	.dw	0
      0026C8 00 0E                 3968 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      0026CA                       3969 Ldebug_CIE11_start:
      0026CA FF FF                 3970 	.dw	0xffff
      0026CC FF FF                 3971 	.dw	0xffff
      0026CE 01                    3972 	.db	1
      0026CF 00                    3973 	.db	0
      0026D0 01                    3974 	.uleb128	1
      0026D1 7F                    3975 	.sleb128	-1
      0026D2 09                    3976 	.db	9
      0026D3 0C                    3977 	.db	12
      0026D4 08                    3978 	.uleb128	8
      0026D5 02                    3979 	.uleb128	2
      0026D6 89                    3980 	.db	137
      0026D7 01                    3981 	.uleb128	1
      0026D8                       3982 Ldebug_CIE11_end:
      0026D8 00 00 00 44           3983 	.dw	0,68
      0026DC 00 00 26 C6           3984 	.dw	0,(Ldebug_CIE11_start-4)
      0026E0 00 00 95 5C           3985 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$129)	;initial loc
      0026E4 00 00 00 36           3986 	.dw	0,Sstm8s_tim4$TIM4_SelectOnePulseMode$148-Sstm8s_tim4$TIM4_SelectOnePulseMode$129
      0026E8 01                    3987 	.db	1
      0026E9 00 00 95 5C           3988 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$129)
      0026ED 0E                    3989 	.db	14
      0026EE 02                    3990 	.uleb128	2
      0026EF 01                    3991 	.db	1
      0026F0 00 00 95 64           3992 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$131)
      0026F4 0E                    3993 	.db	14
      0026F5 02                    3994 	.uleb128	2
      0026F6 01                    3995 	.db	1
      0026F7 00 00 95 6D           3996 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$132)
      0026FB 0E                    3997 	.db	14
      0026FC 03                    3998 	.uleb128	3
      0026FD 01                    3999 	.db	1
      0026FE 00 00 95 6F           4000 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$133)
      002702 0E                    4001 	.db	14
      002703 05                    4002 	.uleb128	5
      002704 01                    4003 	.db	1
      002705 00 00 95 71           4004 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$134)
      002709 0E                    4005 	.db	14
      00270A 06                    4006 	.uleb128	6
      00270B 01                    4007 	.db	1
      00270C 00 00 95 73           4008 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$135)
      002710 0E                    4009 	.db	14
      002711 07                    4010 	.uleb128	7
      002712 01                    4011 	.db	1
      002713 00 00 95 75           4012 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$136)
      002717 0E                    4013 	.db	14
      002718 08                    4014 	.uleb128	8
      002719 01                    4015 	.db	1
      00271A 00 00 95 7A           4016 	.dw	0,(Sstm8s_tim4$TIM4_SelectOnePulseMode$137)
      00271E 0E                    4017 	.db	14
      00271F 02                    4018 	.uleb128	2
                                   4019 
                                   4020 	.area .debug_frame (NOLOAD)
      002720 00 00                 4021 	.dw	0
      002722 00 0E                 4022 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      002724                       4023 Ldebug_CIE12_start:
      002724 FF FF                 4024 	.dw	0xffff
      002726 FF FF                 4025 	.dw	0xffff
      002728 01                    4026 	.db	1
      002729 00                    4027 	.db	0
      00272A 01                    4028 	.uleb128	1
      00272B 7F                    4029 	.sleb128	-1
      00272C 09                    4030 	.db	9
      00272D 0C                    4031 	.db	12
      00272E 08                    4032 	.uleb128	8
      00272F 02                    4033 	.uleb128	2
      002730 89                    4034 	.db	137
      002731 01                    4035 	.uleb128	1
      002732                       4036 Ldebug_CIE12_end:
      002732 00 00 00 44           4037 	.dw	0,68
      002736 00 00 27 20           4038 	.dw	0,(Ldebug_CIE12_start-4)
      00273A 00 00 95 26           4039 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$108)	;initial loc
      00273E 00 00 00 36           4040 	.dw	0,Sstm8s_tim4$TIM4_UpdateRequestConfig$127-Sstm8s_tim4$TIM4_UpdateRequestConfig$108
      002742 01                    4041 	.db	1
      002743 00 00 95 26           4042 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$108)
      002747 0E                    4043 	.db	14
      002748 02                    4044 	.uleb128	2
      002749 01                    4045 	.db	1
      00274A 00 00 95 35           4046 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$110)
      00274E 0E                    4047 	.db	14
      00274F 02                    4048 	.uleb128	2
      002750 01                    4049 	.db	1
      002751 00 00 95 37           4050 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$111)
      002755 0E                    4051 	.db	14
      002756 03                    4052 	.uleb128	3
      002757 01                    4053 	.db	1
      002758 00 00 95 39           4054 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$112)
      00275C 0E                    4055 	.db	14
      00275D 05                    4056 	.uleb128	5
      00275E 01                    4057 	.db	1
      00275F 00 00 95 3B           4058 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$113)
      002763 0E                    4059 	.db	14
      002764 06                    4060 	.uleb128	6
      002765 01                    4061 	.db	1
      002766 00 00 95 3D           4062 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$114)
      00276A 0E                    4063 	.db	14
      00276B 07                    4064 	.uleb128	7
      00276C 01                    4065 	.db	1
      00276D 00 00 95 3F           4066 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$115)
      002771 0E                    4067 	.db	14
      002772 08                    4068 	.uleb128	8
      002773 01                    4069 	.db	1
      002774 00 00 95 44           4070 	.dw	0,(Sstm8s_tim4$TIM4_UpdateRequestConfig$116)
      002778 0E                    4071 	.db	14
      002779 02                    4072 	.uleb128	2
                                   4073 
                                   4074 	.area .debug_frame (NOLOAD)
      00277A 00 00                 4075 	.dw	0
      00277C 00 0E                 4076 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      00277E                       4077 Ldebug_CIE13_start:
      00277E FF FF                 4078 	.dw	0xffff
      002780 FF FF                 4079 	.dw	0xffff
      002782 01                    4080 	.db	1
      002783 00                    4081 	.db	0
      002784 01                    4082 	.uleb128	1
      002785 7F                    4083 	.sleb128	-1
      002786 09                    4084 	.db	9
      002787 0C                    4085 	.db	12
      002788 08                    4086 	.uleb128	8
      002789 02                    4087 	.uleb128	2
      00278A 89                    4088 	.db	137
      00278B 01                    4089 	.uleb128	1
      00278C                       4090 Ldebug_CIE13_end:
      00278C 00 00 00 44           4091 	.dw	0,68
      002790 00 00 27 7A           4092 	.dw	0,(Ldebug_CIE13_start-4)
      002794 00 00 94 F0           4093 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$87)	;initial loc
      002798 00 00 00 36           4094 	.dw	0,Sstm8s_tim4$TIM4_UpdateDisableConfig$106-Sstm8s_tim4$TIM4_UpdateDisableConfig$87
      00279C 01                    4095 	.db	1
      00279D 00 00 94 F0           4096 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$87)
      0027A1 0E                    4097 	.db	14
      0027A2 02                    4098 	.uleb128	2
      0027A3 01                    4099 	.db	1
      0027A4 00 00 94 FF           4100 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$89)
      0027A8 0E                    4101 	.db	14
      0027A9 02                    4102 	.uleb128	2
      0027AA 01                    4103 	.db	1
      0027AB 00 00 95 01           4104 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$90)
      0027AF 0E                    4105 	.db	14
      0027B0 03                    4106 	.uleb128	3
      0027B1 01                    4107 	.db	1
      0027B2 00 00 95 03           4108 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$91)
      0027B6 0E                    4109 	.db	14
      0027B7 05                    4110 	.uleb128	5
      0027B8 01                    4111 	.db	1
      0027B9 00 00 95 05           4112 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$92)
      0027BD 0E                    4113 	.db	14
      0027BE 06                    4114 	.uleb128	6
      0027BF 01                    4115 	.db	1
      0027C0 00 00 95 07           4116 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$93)
      0027C4 0E                    4117 	.db	14
      0027C5 07                    4118 	.uleb128	7
      0027C6 01                    4119 	.db	1
      0027C7 00 00 95 09           4120 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$94)
      0027CB 0E                    4121 	.db	14
      0027CC 08                    4122 	.uleb128	8
      0027CD 01                    4123 	.db	1
      0027CE 00 00 95 0E           4124 	.dw	0,(Sstm8s_tim4$TIM4_UpdateDisableConfig$95)
      0027D2 0E                    4125 	.db	14
      0027D3 02                    4126 	.uleb128	2
                                   4127 
                                   4128 	.area .debug_frame (NOLOAD)
      0027D4 00 00                 4129 	.dw	0
      0027D6 00 0E                 4130 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      0027D8                       4131 Ldebug_CIE14_start:
      0027D8 FF FF                 4132 	.dw	0xffff
      0027DA FF FF                 4133 	.dw	0xffff
      0027DC 01                    4134 	.db	1
      0027DD 00                    4135 	.db	0
      0027DE 01                    4136 	.uleb128	1
      0027DF 7F                    4137 	.sleb128	-1
      0027E0 09                    4138 	.db	9
      0027E1 0C                    4139 	.db	12
      0027E2 08                    4140 	.uleb128	8
      0027E3 02                    4141 	.uleb128	2
      0027E4 89                    4142 	.db	137
      0027E5 01                    4143 	.uleb128	1
      0027E6                       4144 Ldebug_CIE14_end:
      0027E6 00 00 00 91           4145 	.dw	0,145
      0027EA 00 00 27 D4           4146 	.dw	0,(Ldebug_CIE14_start-4)
      0027EE 00 00 94 9A           4147 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$54)	;initial loc
      0027F2 00 00 00 56           4148 	.dw	0,Sstm8s_tim4$TIM4_ITConfig$85-Sstm8s_tim4$TIM4_ITConfig$54
      0027F6 01                    4149 	.db	1
      0027F7 00 00 94 9A           4150 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$54)
      0027FB 0E                    4151 	.db	14
      0027FC 02                    4152 	.uleb128	2
      0027FD 01                    4153 	.db	1
      0027FE 00 00 94 9B           4154 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$55)
      002802 0E                    4155 	.db	14
      002803 03                    4156 	.uleb128	3
      002804 01                    4157 	.db	1
      002805 00 00 94 A3           4158 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$57)
      002809 0E                    4159 	.db	14
      00280A 03                    4160 	.uleb128	3
      00280B 01                    4161 	.db	1
      00280C 00 00 94 A5           4162 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$58)
      002810 0E                    4163 	.db	14
      002811 04                    4164 	.uleb128	4
      002812 01                    4165 	.db	1
      002813 00 00 94 A7           4166 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$59)
      002817 0E                    4167 	.db	14
      002818 06                    4168 	.uleb128	6
      002819 01                    4169 	.db	1
      00281A 00 00 94 A9           4170 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$60)
      00281E 0E                    4171 	.db	14
      00281F 07                    4172 	.uleb128	7
      002820 01                    4173 	.db	1
      002821 00 00 94 AB           4174 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$61)
      002825 0E                    4175 	.db	14
      002826 08                    4176 	.uleb128	8
      002827 01                    4177 	.db	1
      002828 00 00 94 AD           4178 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$62)
      00282C 0E                    4179 	.db	14
      00282D 09                    4180 	.uleb128	9
      00282E 01                    4181 	.db	1
      00282F 00 00 94 B2           4182 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$63)
      002833 0E                    4183 	.db	14
      002834 03                    4184 	.uleb128	3
      002835 01                    4185 	.db	1
      002836 00 00 94 C1           4186 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$65)
      00283A 0E                    4187 	.db	14
      00283B 03                    4188 	.uleb128	3
      00283C 01                    4189 	.db	1
      00283D 00 00 94 C3           4190 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$66)
      002841 0E                    4191 	.db	14
      002842 04                    4192 	.uleb128	4
      002843 01                    4193 	.db	1
      002844 00 00 94 C5           4194 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$67)
      002848 0E                    4195 	.db	14
      002849 06                    4196 	.uleb128	6
      00284A 01                    4197 	.db	1
      00284B 00 00 94 C7           4198 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$68)
      00284F 0E                    4199 	.db	14
      002850 07                    4200 	.uleb128	7
      002851 01                    4201 	.db	1
      002852 00 00 94 C9           4202 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$69)
      002856 0E                    4203 	.db	14
      002857 08                    4204 	.uleb128	8
      002858 01                    4205 	.db	1
      002859 00 00 94 CB           4206 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$70)
      00285D 0E                    4207 	.db	14
      00285E 09                    4208 	.uleb128	9
      00285F 01                    4209 	.db	1
      002860 00 00 94 D0           4210 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$71)
      002864 0E                    4211 	.db	14
      002865 03                    4212 	.uleb128	3
      002866 01                    4213 	.db	1
      002867 00 00 94 E3           4214 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$79)
      00286B 0E                    4215 	.db	14
      00286C 04                    4216 	.uleb128	4
      00286D 01                    4217 	.db	1
      00286E 00 00 94 E9           4218 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$80)
      002872 0E                    4219 	.db	14
      002873 03                    4220 	.uleb128	3
      002874 01                    4221 	.db	1
      002875 00 00 94 EF           4222 	.dw	0,(Sstm8s_tim4$TIM4_ITConfig$83)
      002879 0E                    4223 	.db	14
      00287A 02                    4224 	.uleb128	2
                                   4225 
                                   4226 	.area .debug_frame (NOLOAD)
      00287B 00 00                 4227 	.dw	0
      00287D 00 0E                 4228 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      00287F                       4229 Ldebug_CIE15_start:
      00287F FF FF                 4230 	.dw	0xffff
      002881 FF FF                 4231 	.dw	0xffff
      002883 01                    4232 	.db	1
      002884 00                    4233 	.db	0
      002885 01                    4234 	.uleb128	1
      002886 7F                    4235 	.sleb128	-1
      002887 09                    4236 	.db	9
      002888 0C                    4237 	.db	12
      002889 08                    4238 	.uleb128	8
      00288A 02                    4239 	.uleb128	2
      00288B 89                    4240 	.db	137
      00288C 01                    4241 	.uleb128	1
      00288D                       4242 Ldebug_CIE15_end:
      00288D 00 00 00 44           4243 	.dw	0,68
      002891 00 00 28 7B           4244 	.dw	0,(Ldebug_CIE15_start-4)
      002895 00 00 94 64           4245 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$33)	;initial loc
      002899 00 00 00 36           4246 	.dw	0,Sstm8s_tim4$TIM4_Cmd$52-Sstm8s_tim4$TIM4_Cmd$33
      00289D 01                    4247 	.db	1
      00289E 00 00 94 64           4248 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$33)
      0028A2 0E                    4249 	.db	14
      0028A3 02                    4250 	.uleb128	2
      0028A4 01                    4251 	.db	1
      0028A5 00 00 94 73           4252 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$35)
      0028A9 0E                    4253 	.db	14
      0028AA 02                    4254 	.uleb128	2
      0028AB 01                    4255 	.db	1
      0028AC 00 00 94 75           4256 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$36)
      0028B0 0E                    4257 	.db	14
      0028B1 03                    4258 	.uleb128	3
      0028B2 01                    4259 	.db	1
      0028B3 00 00 94 77           4260 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$37)
      0028B7 0E                    4261 	.db	14
      0028B8 05                    4262 	.uleb128	5
      0028B9 01                    4263 	.db	1
      0028BA 00 00 94 79           4264 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$38)
      0028BE 0E                    4265 	.db	14
      0028BF 06                    4266 	.uleb128	6
      0028C0 01                    4267 	.db	1
      0028C1 00 00 94 7B           4268 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$39)
      0028C5 0E                    4269 	.db	14
      0028C6 07                    4270 	.uleb128	7
      0028C7 01                    4271 	.db	1
      0028C8 00 00 94 7D           4272 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$40)
      0028CC 0E                    4273 	.db	14
      0028CD 08                    4274 	.uleb128	8
      0028CE 01                    4275 	.db	1
      0028CF 00 00 94 82           4276 	.dw	0,(Sstm8s_tim4$TIM4_Cmd$41)
      0028D3 0E                    4277 	.db	14
      0028D4 02                    4278 	.uleb128	2
                                   4279 
                                   4280 	.area .debug_frame (NOLOAD)
      0028D5 00 00                 4281 	.dw	0
      0028D7 00 0E                 4282 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      0028D9                       4283 Ldebug_CIE16_start:
      0028D9 FF FF                 4284 	.dw	0xffff
      0028DB FF FF                 4285 	.dw	0xffff
      0028DD 01                    4286 	.db	1
      0028DE 00                    4287 	.db	0
      0028DF 01                    4288 	.uleb128	1
      0028E0 7F                    4289 	.sleb128	-1
      0028E1 09                    4290 	.db	9
      0028E2 0C                    4291 	.db	12
      0028E3 08                    4292 	.uleb128	8
      0028E4 02                    4293 	.uleb128	2
      0028E5 89                    4294 	.db	137
      0028E6 01                    4295 	.uleb128	1
      0028E7                       4296 Ldebug_CIE16_end:
      0028E7 00 00 00 6E           4297 	.dw	0,110
      0028EB 00 00 28 D5           4298 	.dw	0,(Ldebug_CIE16_start-4)
      0028EF 00 00 94 03           4299 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)	;initial loc
      0028F3 00 00 00 61           4300 	.dw	0,Sstm8s_tim4$TIM4_TimeBaseInit$31-Sstm8s_tim4$TIM4_TimeBaseInit$12
      0028F7 01                    4301 	.db	1
      0028F8 00 00 94 03           4302 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$12)
      0028FC 0E                    4303 	.db	14
      0028FD 02                    4304 	.uleb128	2
      0028FE 01                    4305 	.db	1
      0028FF 00 00 94 12           4306 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$14)
      002903 0E                    4307 	.db	14
      002904 02                    4308 	.uleb128	2
      002905 01                    4309 	.db	1
      002906 00 00 94 1B           4310 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$15)
      00290A 0E                    4311 	.db	14
      00290B 02                    4312 	.uleb128	2
      00290C 01                    4313 	.db	1
      00290D 00 00 94 24           4314 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$16)
      002911 0E                    4315 	.db	14
      002912 02                    4316 	.uleb128	2
      002913 01                    4317 	.db	1
      002914 00 00 94 2D           4318 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$17)
      002918 0E                    4319 	.db	14
      002919 02                    4320 	.uleb128	2
      00291A 01                    4321 	.db	1
      00291B 00 00 94 36           4322 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$18)
      00291F 0E                    4323 	.db	14
      002920 02                    4324 	.uleb128	2
      002921 01                    4325 	.db	1
      002922 00 00 94 3F           4326 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$19)
      002926 0E                    4327 	.db	14
      002927 02                    4328 	.uleb128	2
      002928 01                    4329 	.db	1
      002929 00 00 94 48           4330 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$20)
      00292D 0E                    4331 	.db	14
      00292E 02                    4332 	.uleb128	2
      00292F 01                    4333 	.db	1
      002930 00 00 94 4A           4334 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$21)
      002934 0E                    4335 	.db	14
      002935 03                    4336 	.uleb128	3
      002936 01                    4337 	.db	1
      002937 00 00 94 4C           4338 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$22)
      00293B 0E                    4339 	.db	14
      00293C 05                    4340 	.uleb128	5
      00293D 01                    4341 	.db	1
      00293E 00 00 94 4E           4342 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$23)
      002942 0E                    4343 	.db	14
      002943 06                    4344 	.uleb128	6
      002944 01                    4345 	.db	1
      002945 00 00 94 50           4346 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$24)
      002949 0E                    4347 	.db	14
      00294A 07                    4348 	.uleb128	7
      00294B 01                    4349 	.db	1
      00294C 00 00 94 52           4350 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$25)
      002950 0E                    4351 	.db	14
      002951 08                    4352 	.uleb128	8
      002952 01                    4353 	.db	1
      002953 00 00 94 57           4354 	.dw	0,(Sstm8s_tim4$TIM4_TimeBaseInit$26)
      002957 0E                    4355 	.db	14
      002958 02                    4356 	.uleb128	2
                                   4357 
                                   4358 	.area .debug_frame (NOLOAD)
      002959 00 00                 4359 	.dw	0
      00295B 00 0E                 4360 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      00295D                       4361 Ldebug_CIE17_start:
      00295D FF FF                 4362 	.dw	0xffff
      00295F FF FF                 4363 	.dw	0xffff
      002961 01                    4364 	.db	1
      002962 00                    4365 	.db	0
      002963 01                    4366 	.uleb128	1
      002964 7F                    4367 	.sleb128	-1
      002965 09                    4368 	.db	9
      002966 0C                    4369 	.db	12
      002967 08                    4370 	.uleb128	8
      002968 02                    4371 	.uleb128	2
      002969 89                    4372 	.db	137
      00296A 01                    4373 	.uleb128	1
      00296B                       4374 Ldebug_CIE17_end:
      00296B 00 00 00 13           4375 	.dw	0,19
      00296F 00 00 29 59           4376 	.dw	0,(Ldebug_CIE17_start-4)
      002973 00 00 93 EA           4377 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)	;initial loc
      002977 00 00 00 19           4378 	.dw	0,Sstm8s_tim4$TIM4_DeInit$10-Sstm8s_tim4$TIM4_DeInit$1
      00297B 01                    4379 	.db	1
      00297C 00 00 93 EA           4380 	.dw	0,(Sstm8s_tim4$TIM4_DeInit$1)
      002980 0E                    4381 	.db	14
      002981 02                    4382 	.uleb128	2
