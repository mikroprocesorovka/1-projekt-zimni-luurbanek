                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteHigh
                                     16 	.globl _GPIO_WriteLow
                                     17 	.globl _GPIO_WriteReverse
                                     18 	.globl _GPIO_ReadOutputData
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_ExternalPullUpConfig
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 
                                     35 ; default segment ordering for linker
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area CONST
                                     40 	.area INITIALIZER
                                     41 	.area CODE
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; global & static initialisations
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area GSINIT
                                     50 ;--------------------------------------------------------
                                     51 ; Home
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area HOME
                                     55 ;--------------------------------------------------------
                                     56 ; code
                                     57 ;--------------------------------------------------------
                                     58 	.area CODE
                           000000    59 	Sstm8s_gpio$GPIO_DeInit$0 ==.
                                     60 ;	../SPL/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     61 ; genLabel
                                     62 ;	-----------------------------------------
                                     63 ;	 function GPIO_DeInit
                                     64 ;	-----------------------------------------
                                     65 ;	Register assignment might be sub-optimal.
                                     66 ;	Stack space usage: 0 bytes.
      008933                         67 _GPIO_DeInit:
                           000000    68 	Sstm8s_gpio$GPIO_DeInit$1 ==.
                           000000    69 	Sstm8s_gpio$GPIO_DeInit$2 ==.
                                     70 ;	../SPL/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
                                     71 ; genAssign
      008933 16 03            [ 2]   72 	ldw	y, (0x03, sp)
                                     73 ; genPointerSet
      008935 90 7F            [ 1]   74 	clr	(y)
                           000004    75 	Sstm8s_gpio$GPIO_DeInit$3 ==.
                                     76 ;	../SPL/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
                                     77 ; genPlus
      008937 93               [ 1]   78 	ldw	x, y
      008938 5C               [ 1]   79 	incw	x
      008939 5C               [ 1]   80 	incw	x
                                     81 ; genPointerSet
      00893A 7F               [ 1]   82 	clr	(x)
                           000008    83 	Sstm8s_gpio$GPIO_DeInit$4 ==.
                                     84 ;	../SPL/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
                                     85 ; genPlus
      00893B 93               [ 1]   86 	ldw	x, y
      00893C 1C 00 03         [ 2]   87 	addw	x, #0x0003
                                     88 ; genPointerSet
      00893F 7F               [ 1]   89 	clr	(x)
                           00000D    90 	Sstm8s_gpio$GPIO_DeInit$5 ==.
                                     91 ;	../SPL/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
                                     92 ; genPlus
      008940 93               [ 1]   93 	ldw	x, y
      008941 1C 00 04         [ 2]   94 	addw	x, #0x0004
                                     95 ; genPointerSet
      008944 7F               [ 1]   96 	clr	(x)
                                     97 ; genLabel
      008945                         98 00101$:
                           000012    99 	Sstm8s_gpio$GPIO_DeInit$6 ==.
                                    100 ;	../SPL/src/stm8s_gpio.c: 59: }
                                    101 ; genEndFunction
                           000012   102 	Sstm8s_gpio$GPIO_DeInit$7 ==.
                           000012   103 	XG$GPIO_DeInit$0$0 ==.
      008945 81               [ 4]  104 	ret
                           000013   105 	Sstm8s_gpio$GPIO_DeInit$8 ==.
                           000013   106 	Sstm8s_gpio$GPIO_Init$9 ==.
                                    107 ;	../SPL/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                    108 ; genLabel
                                    109 ;	-----------------------------------------
                                    110 ;	 function GPIO_Init
                                    111 ;	-----------------------------------------
                                    112 ;	Register assignment might be sub-optimal.
                                    113 ;	Stack space usage: 5 bytes.
      008946                        114 _GPIO_Init:
                           000013   115 	Sstm8s_gpio$GPIO_Init$10 ==.
      008946 52 05            [ 2]  116 	sub	sp, #5
                           000015   117 	Sstm8s_gpio$GPIO_Init$11 ==.
                           000015   118 	Sstm8s_gpio$GPIO_Init$12 ==.
                                    119 ;	../SPL/src/stm8s_gpio.c: 77: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
                                    120 ; genIfx
      008948 0D 0B            [ 1]  121 	tnz	(0x0b, sp)
      00894A 26 03            [ 1]  122 	jrne	00237$
      00894C CC 89 C1         [ 2]  123 	jp	00116$
      00894F                        124 00237$:
                                    125 ; genCmpEQorNE
      00894F 7B 0B            [ 1]  126 	ld	a, (0x0b, sp)
      008951 A1 40            [ 1]  127 	cp	a, #0x40
      008953 26 03            [ 1]  128 	jrne	00239$
      008955 CC 89 C1         [ 2]  129 	jp	00116$
      008958                        130 00239$:
                           000025   131 	Sstm8s_gpio$GPIO_Init$13 ==.
                                    132 ; skipping generated iCode
                                    133 ; genCmpEQorNE
      008958 7B 0B            [ 1]  134 	ld	a, (0x0b, sp)
      00895A A1 20            [ 1]  135 	cp	a, #0x20
      00895C 26 03            [ 1]  136 	jrne	00242$
      00895E CC 89 C1         [ 2]  137 	jp	00116$
      008961                        138 00242$:
                           00002E   139 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    140 ; skipping generated iCode
                                    141 ; genCmpEQorNE
      008961 7B 0B            [ 1]  142 	ld	a, (0x0b, sp)
      008963 A1 60            [ 1]  143 	cp	a, #0x60
      008965 26 03            [ 1]  144 	jrne	00245$
      008967 CC 89 C1         [ 2]  145 	jp	00116$
      00896A                        146 00245$:
                           000037   147 	Sstm8s_gpio$GPIO_Init$15 ==.
                                    148 ; skipping generated iCode
                                    149 ; genCmpEQorNE
      00896A 7B 0B            [ 1]  150 	ld	a, (0x0b, sp)
      00896C A1 A0            [ 1]  151 	cp	a, #0xa0
      00896E 26 03            [ 1]  152 	jrne	00248$
      008970 CC 89 C1         [ 2]  153 	jp	00116$
      008973                        154 00248$:
                           000040   155 	Sstm8s_gpio$GPIO_Init$16 ==.
                                    156 ; skipping generated iCode
                                    157 ; genCmpEQorNE
      008973 7B 0B            [ 1]  158 	ld	a, (0x0b, sp)
      008975 A1 E0            [ 1]  159 	cp	a, #0xe0
      008977 26 03            [ 1]  160 	jrne	00251$
      008979 CC 89 C1         [ 2]  161 	jp	00116$
      00897C                        162 00251$:
                           000049   163 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    164 ; skipping generated iCode
                                    165 ; genCmpEQorNE
      00897C 7B 0B            [ 1]  166 	ld	a, (0x0b, sp)
      00897E A1 80            [ 1]  167 	cp	a, #0x80
      008980 26 03            [ 1]  168 	jrne	00254$
      008982 CC 89 C1         [ 2]  169 	jp	00116$
      008985                        170 00254$:
                           000052   171 	Sstm8s_gpio$GPIO_Init$18 ==.
                                    172 ; skipping generated iCode
                                    173 ; genCmpEQorNE
      008985 7B 0B            [ 1]  174 	ld	a, (0x0b, sp)
      008987 A1 C0            [ 1]  175 	cp	a, #0xc0
      008989 26 03            [ 1]  176 	jrne	00257$
      00898B CC 89 C1         [ 2]  177 	jp	00116$
      00898E                        178 00257$:
                           00005B   179 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    180 ; skipping generated iCode
                                    181 ; genCmpEQorNE
      00898E 7B 0B            [ 1]  182 	ld	a, (0x0b, sp)
      008990 A1 B0            [ 1]  183 	cp	a, #0xb0
      008992 26 03            [ 1]  184 	jrne	00260$
      008994 CC 89 C1         [ 2]  185 	jp	00116$
      008997                        186 00260$:
                           000064   187 	Sstm8s_gpio$GPIO_Init$20 ==.
                                    188 ; skipping generated iCode
                                    189 ; genCmpEQorNE
      008997 7B 0B            [ 1]  190 	ld	a, (0x0b, sp)
      008999 A1 F0            [ 1]  191 	cp	a, #0xf0
      00899B 26 03            [ 1]  192 	jrne	00263$
      00899D CC 89 C1         [ 2]  193 	jp	00116$
      0089A0                        194 00263$:
                           00006D   195 	Sstm8s_gpio$GPIO_Init$21 ==.
                                    196 ; skipping generated iCode
                                    197 ; genCmpEQorNE
      0089A0 7B 0B            [ 1]  198 	ld	a, (0x0b, sp)
      0089A2 A1 90            [ 1]  199 	cp	a, #0x90
      0089A4 26 03            [ 1]  200 	jrne	00266$
      0089A6 CC 89 C1         [ 2]  201 	jp	00116$
      0089A9                        202 00266$:
                           000076   203 	Sstm8s_gpio$GPIO_Init$22 ==.
                                    204 ; skipping generated iCode
                                    205 ; genCmpEQorNE
      0089A9 7B 0B            [ 1]  206 	ld	a, (0x0b, sp)
      0089AB A1 D0            [ 1]  207 	cp	a, #0xd0
      0089AD 26 03            [ 1]  208 	jrne	00269$
      0089AF CC 89 C1         [ 2]  209 	jp	00116$
      0089B2                        210 00269$:
                           00007F   211 	Sstm8s_gpio$GPIO_Init$23 ==.
                                    212 ; skipping generated iCode
                                    213 ; skipping iCode since result will be rematerialized
                                    214 ; skipping iCode since result will be rematerialized
                                    215 ; genIPush
      0089B2 4B 4D            [ 1]  216 	push	#0x4d
                           000081   217 	Sstm8s_gpio$GPIO_Init$24 ==.
      0089B4 5F               [ 1]  218 	clrw	x
      0089B5 89               [ 2]  219 	pushw	x
                           000083   220 	Sstm8s_gpio$GPIO_Init$25 ==.
      0089B6 4B 00            [ 1]  221 	push	#0x00
                           000085   222 	Sstm8s_gpio$GPIO_Init$26 ==.
                                    223 ; genIPush
      0089B8 4B 99            [ 1]  224 	push	#<(___str_0+0)
                           000087   225 	Sstm8s_gpio$GPIO_Init$27 ==.
      0089BA 4B 80            [ 1]  226 	push	#((___str_0+0) >> 8)
                           000089   227 	Sstm8s_gpio$GPIO_Init$28 ==.
                                    228 ; genCall
      0089BC CD 82 99         [ 4]  229 	call	_assert_failed
      0089BF 5B 06            [ 2]  230 	addw	sp, #6
                           00008E   231 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    232 ; genLabel
      0089C1                        233 00116$:
                           00008E   234 	Sstm8s_gpio$GPIO_Init$30 ==.
                                    235 ;	../SPL/src/stm8s_gpio.c: 78: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
                                    236 ; genIfx
      0089C1 0D 0A            [ 1]  237 	tnz	(0x0a, sp)
      0089C3 27 03            [ 1]  238 	jreq	00271$
      0089C5 CC 89 D7         [ 2]  239 	jp	00151$
      0089C8                        240 00271$:
                                    241 ; skipping iCode since result will be rematerialized
                                    242 ; skipping iCode since result will be rematerialized
                                    243 ; genIPush
      0089C8 4B 4E            [ 1]  244 	push	#0x4e
                           000097   245 	Sstm8s_gpio$GPIO_Init$31 ==.
      0089CA 5F               [ 1]  246 	clrw	x
      0089CB 89               [ 2]  247 	pushw	x
                           000099   248 	Sstm8s_gpio$GPIO_Init$32 ==.
      0089CC 4B 00            [ 1]  249 	push	#0x00
                           00009B   250 	Sstm8s_gpio$GPIO_Init$33 ==.
                                    251 ; genIPush
      0089CE 4B 99            [ 1]  252 	push	#<(___str_0+0)
                           00009D   253 	Sstm8s_gpio$GPIO_Init$34 ==.
      0089D0 4B 80            [ 1]  254 	push	#((___str_0+0) >> 8)
                           00009F   255 	Sstm8s_gpio$GPIO_Init$35 ==.
                                    256 ; genCall
      0089D2 CD 82 99         [ 4]  257 	call	_assert_failed
      0089D5 5B 06            [ 2]  258 	addw	sp, #6
                           0000A4   259 	Sstm8s_gpio$GPIO_Init$36 ==.
                                    260 ; genLabel
      0089D7                        261 00151$:
                           0000A4   262 	Sstm8s_gpio$GPIO_Init$37 ==.
                                    263 ;	../SPL/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    264 ; genAssign
      0089D7 16 08            [ 2]  265 	ldw	y, (0x08, sp)
                                    266 ; genPlus
      0089D9 93               [ 1]  267 	ldw	x, y
      0089DA 1C 00 04         [ 2]  268 	addw	x, #0x0004
      0089DD 1F 01            [ 2]  269 	ldw	(0x01, sp), x
                                    270 ; genPointerGet
      0089DF 1E 01            [ 2]  271 	ldw	x, (0x01, sp)
      0089E1 F6               [ 1]  272 	ld	a, (x)
                                    273 ; genCpl
      0089E2 88               [ 1]  274 	push	a
                           0000B0   275 	Sstm8s_gpio$GPIO_Init$38 ==.
      0089E3 7B 0B            [ 1]  276 	ld	a, (0x0b, sp)
      0089E5 43               [ 1]  277 	cpl	a
      0089E6 6B 04            [ 1]  278 	ld	(0x04, sp), a
      0089E8 84               [ 1]  279 	pop	a
                           0000B6   280 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    281 ; genAnd
      0089E9 14 03            [ 1]  282 	and	a, (0x03, sp)
                                    283 ; genPointerSet
      0089EB 1E 01            [ 2]  284 	ldw	x, (0x01, sp)
      0089ED F7               [ 1]  285 	ld	(x), a
                           0000BB   286 	Sstm8s_gpio$GPIO_Init$40 ==.
                                    287 ;	../SPL/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    288 ; genPlus
      0089EE 93               [ 1]  289 	ldw	x, y
      0089EF 5C               [ 1]  290 	incw	x
      0089F0 5C               [ 1]  291 	incw	x
      0089F1 1F 04            [ 2]  292 	ldw	(0x04, sp), x
                           0000C0   293 	Sstm8s_gpio$GPIO_Init$41 ==.
                                    294 ;	../SPL/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
                                    295 ; genAnd
      0089F3 0D 0B            [ 1]  296 	tnz	(0x0b, sp)
      0089F5 2B 03            [ 1]  297 	jrmi	00272$
      0089F7 CC 8A 1D         [ 2]  298 	jp	00105$
      0089FA                        299 00272$:
                                    300 ; skipping generated iCode
                           0000C7   301 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    302 ;	../SPL/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    303 ; genPointerGet
      0089FA 90 F6            [ 1]  304 	ld	a, (y)
                           0000C9   305 	Sstm8s_gpio$GPIO_Init$43 ==.
                           0000C9   306 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    307 ;	../SPL/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
                                    308 ; genAnd
      0089FC 88               [ 1]  309 	push	a
                           0000CA   310 	Sstm8s_gpio$GPIO_Init$45 ==.
      0089FD 7B 0C            [ 1]  311 	ld	a, (0x0c, sp)
      0089FF A5 10            [ 1]  312 	bcp	a, #0x10
      008A01 84               [ 1]  313 	pop	a
                           0000CF   314 	Sstm8s_gpio$GPIO_Init$46 ==.
      008A02 26 03            [ 1]  315 	jrne	00273$
      008A04 CC 8A 0E         [ 2]  316 	jp	00102$
      008A07                        317 00273$:
                                    318 ; skipping generated iCode
                           0000D4   319 	Sstm8s_gpio$GPIO_Init$47 ==.
                           0000D4   320 	Sstm8s_gpio$GPIO_Init$48 ==.
                                    321 ;	../SPL/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    322 ; genOr
      008A07 1A 0A            [ 1]  323 	or	a, (0x0a, sp)
                                    324 ; genPointerSet
      008A09 90 F7            [ 1]  325 	ld	(y), a
                           0000D8   326 	Sstm8s_gpio$GPIO_Init$49 ==.
                                    327 ; genGoto
      008A0B CC 8A 12         [ 2]  328 	jp	00103$
                                    329 ; genLabel
      008A0E                        330 00102$:
                           0000DB   331 	Sstm8s_gpio$GPIO_Init$50 ==.
                           0000DB   332 	Sstm8s_gpio$GPIO_Init$51 ==.
                                    333 ;	../SPL/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
                                    334 ; genAnd
      008A0E 14 03            [ 1]  335 	and	a, (0x03, sp)
                                    336 ; genPointerSet
      008A10 90 F7            [ 1]  337 	ld	(y), a
                           0000DF   338 	Sstm8s_gpio$GPIO_Init$52 ==.
                                    339 ; genLabel
      008A12                        340 00103$:
                           0000DF   341 	Sstm8s_gpio$GPIO_Init$53 ==.
                                    342 ;	../SPL/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    343 ; genPointerGet
      008A12 1E 04            [ 2]  344 	ldw	x, (0x04, sp)
      008A14 F6               [ 1]  345 	ld	a, (x)
                                    346 ; genOr
      008A15 1A 0A            [ 1]  347 	or	a, (0x0a, sp)
                                    348 ; genPointerSet
      008A17 1E 04            [ 2]  349 	ldw	x, (0x04, sp)
      008A19 F7               [ 1]  350 	ld	(x), a
                           0000E7   351 	Sstm8s_gpio$GPIO_Init$54 ==.
                                    352 ; genGoto
      008A1A CC 8A 25         [ 2]  353 	jp	00106$
                                    354 ; genLabel
      008A1D                        355 00105$:
                           0000EA   356 	Sstm8s_gpio$GPIO_Init$55 ==.
                           0000EA   357 	Sstm8s_gpio$GPIO_Init$56 ==.
                                    358 ;	../SPL/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
                                    359 ; genPointerGet
      008A1D 1E 04            [ 2]  360 	ldw	x, (0x04, sp)
      008A1F F6               [ 1]  361 	ld	a, (x)
                                    362 ; genAnd
      008A20 14 03            [ 1]  363 	and	a, (0x03, sp)
                                    364 ; genPointerSet
      008A22 1E 04            [ 2]  365 	ldw	x, (0x04, sp)
      008A24 F7               [ 1]  366 	ld	(x), a
                           0000F2   367 	Sstm8s_gpio$GPIO_Init$57 ==.
                                    368 ; genLabel
      008A25                        369 00106$:
                           0000F2   370 	Sstm8s_gpio$GPIO_Init$58 ==.
                                    371 ;	../SPL/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    372 ; genPlus
      008A25 93               [ 1]  373 	ldw	x, y
      008A26 1C 00 03         [ 2]  374 	addw	x, #0x0003
                                    375 ; genPointerGet
      008A29 F6               [ 1]  376 	ld	a, (x)
                           0000F7   377 	Sstm8s_gpio$GPIO_Init$59 ==.
                                    378 ;	../SPL/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
                                    379 ; genAnd
      008A2A 88               [ 1]  380 	push	a
                           0000F8   381 	Sstm8s_gpio$GPIO_Init$60 ==.
      008A2B 7B 0C            [ 1]  382 	ld	a, (0x0c, sp)
      008A2D A5 40            [ 1]  383 	bcp	a, #0x40
      008A2F 84               [ 1]  384 	pop	a
                           0000FD   385 	Sstm8s_gpio$GPIO_Init$61 ==.
      008A30 26 03            [ 1]  386 	jrne	00274$
      008A32 CC 8A 3B         [ 2]  387 	jp	00108$
      008A35                        388 00274$:
                                    389 ; skipping generated iCode
                           000102   390 	Sstm8s_gpio$GPIO_Init$62 ==.
                           000102   391 	Sstm8s_gpio$GPIO_Init$63 ==.
                                    392 ;	../SPL/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    393 ; genOr
      008A35 1A 0A            [ 1]  394 	or	a, (0x0a, sp)
                                    395 ; genPointerSet
      008A37 F7               [ 1]  396 	ld	(x), a
                           000105   397 	Sstm8s_gpio$GPIO_Init$64 ==.
                                    398 ; genGoto
      008A38 CC 8A 3E         [ 2]  399 	jp	00109$
                                    400 ; genLabel
      008A3B                        401 00108$:
                           000108   402 	Sstm8s_gpio$GPIO_Init$65 ==.
                           000108   403 	Sstm8s_gpio$GPIO_Init$66 ==.
                                    404 ;	../SPL/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    405 ; genAnd
      008A3B 14 03            [ 1]  406 	and	a, (0x03, sp)
                                    407 ; genPointerSet
      008A3D F7               [ 1]  408 	ld	(x), a
                           00010B   409 	Sstm8s_gpio$GPIO_Init$67 ==.
                                    410 ; genLabel
      008A3E                        411 00109$:
                           00010B   412 	Sstm8s_gpio$GPIO_Init$68 ==.
                                    413 ;	../SPL/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    414 ; genPointerGet
      008A3E 1E 01            [ 2]  415 	ldw	x, (0x01, sp)
      008A40 F6               [ 1]  416 	ld	a, (x)
                           00010E   417 	Sstm8s_gpio$GPIO_Init$69 ==.
                                    418 ;	../SPL/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
                                    419 ; genAnd
      008A41 88               [ 1]  420 	push	a
                           00010F   421 	Sstm8s_gpio$GPIO_Init$70 ==.
      008A42 7B 0C            [ 1]  422 	ld	a, (0x0c, sp)
      008A44 A5 20            [ 1]  423 	bcp	a, #0x20
      008A46 84               [ 1]  424 	pop	a
                           000114   425 	Sstm8s_gpio$GPIO_Init$71 ==.
      008A47 26 03            [ 1]  426 	jrne	00275$
      008A49 CC 8A 54         [ 2]  427 	jp	00111$
      008A4C                        428 00275$:
                                    429 ; skipping generated iCode
                           000119   430 	Sstm8s_gpio$GPIO_Init$72 ==.
                           000119   431 	Sstm8s_gpio$GPIO_Init$73 ==.
                                    432 ;	../SPL/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
                                    433 ; genOr
      008A4C 1A 0A            [ 1]  434 	or	a, (0x0a, sp)
                                    435 ; genPointerSet
      008A4E 1E 01            [ 2]  436 	ldw	x, (0x01, sp)
      008A50 F7               [ 1]  437 	ld	(x), a
                           00011E   438 	Sstm8s_gpio$GPIO_Init$74 ==.
                                    439 ; genGoto
      008A51 CC 8A 59         [ 2]  440 	jp	00113$
                                    441 ; genLabel
      008A54                        442 00111$:
                           000121   443 	Sstm8s_gpio$GPIO_Init$75 ==.
                           000121   444 	Sstm8s_gpio$GPIO_Init$76 ==.
                                    445 ;	../SPL/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    446 ; genAnd
      008A54 14 03            [ 1]  447 	and	a, (0x03, sp)
                                    448 ; genPointerSet
      008A56 1E 01            [ 2]  449 	ldw	x, (0x01, sp)
      008A58 F7               [ 1]  450 	ld	(x), a
                           000126   451 	Sstm8s_gpio$GPIO_Init$77 ==.
                                    452 ; genLabel
      008A59                        453 00113$:
                           000126   454 	Sstm8s_gpio$GPIO_Init$78 ==.
                                    455 ;	../SPL/src/stm8s_gpio.c: 131: }
                                    456 ; genEndFunction
      008A59 5B 05            [ 2]  457 	addw	sp, #5
                           000128   458 	Sstm8s_gpio$GPIO_Init$79 ==.
                           000128   459 	Sstm8s_gpio$GPIO_Init$80 ==.
                           000128   460 	XG$GPIO_Init$0$0 ==.
      008A5B 81               [ 4]  461 	ret
                           000129   462 	Sstm8s_gpio$GPIO_Init$81 ==.
                           000129   463 	Sstm8s_gpio$GPIO_Write$82 ==.
                                    464 ;	../SPL/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    465 ; genLabel
                                    466 ;	-----------------------------------------
                                    467 ;	 function GPIO_Write
                                    468 ;	-----------------------------------------
                                    469 ;	Register assignment is optimal.
                                    470 ;	Stack space usage: 0 bytes.
      008A5C                        471 _GPIO_Write:
                           000129   472 	Sstm8s_gpio$GPIO_Write$83 ==.
                           000129   473 	Sstm8s_gpio$GPIO_Write$84 ==.
                                    474 ;	../SPL/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
                                    475 ; genAssign
      008A5C 1E 03            [ 2]  476 	ldw	x, (0x03, sp)
                                    477 ; genPointerSet
      008A5E 7B 05            [ 1]  478 	ld	a, (0x05, sp)
      008A60 F7               [ 1]  479 	ld	(x), a
                                    480 ; genLabel
      008A61                        481 00101$:
                           00012E   482 	Sstm8s_gpio$GPIO_Write$85 ==.
                                    483 ;	../SPL/src/stm8s_gpio.c: 144: }
                                    484 ; genEndFunction
                           00012E   485 	Sstm8s_gpio$GPIO_Write$86 ==.
                           00012E   486 	XG$GPIO_Write$0$0 ==.
      008A61 81               [ 4]  487 	ret
                           00012F   488 	Sstm8s_gpio$GPIO_Write$87 ==.
                           00012F   489 	Sstm8s_gpio$GPIO_WriteHigh$88 ==.
                                    490 ;	../SPL/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    491 ; genLabel
                                    492 ;	-----------------------------------------
                                    493 ;	 function GPIO_WriteHigh
                                    494 ;	-----------------------------------------
                                    495 ;	Register assignment is optimal.
                                    496 ;	Stack space usage: 0 bytes.
      008A62                        497 _GPIO_WriteHigh:
                           00012F   498 	Sstm8s_gpio$GPIO_WriteHigh$89 ==.
                           00012F   499 	Sstm8s_gpio$GPIO_WriteHigh$90 ==.
                                    500 ;	../SPL/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
                                    501 ; genAssign
      008A62 1E 03            [ 2]  502 	ldw	x, (0x03, sp)
                                    503 ; genPointerGet
      008A64 F6               [ 1]  504 	ld	a, (x)
                                    505 ; genOr
      008A65 1A 05            [ 1]  506 	or	a, (0x05, sp)
                                    507 ; genPointerSet
      008A67 F7               [ 1]  508 	ld	(x), a
                                    509 ; genLabel
      008A68                        510 00101$:
                           000135   511 	Sstm8s_gpio$GPIO_WriteHigh$91 ==.
                                    512 ;	../SPL/src/stm8s_gpio.c: 157: }
                                    513 ; genEndFunction
                           000135   514 	Sstm8s_gpio$GPIO_WriteHigh$92 ==.
                           000135   515 	XG$GPIO_WriteHigh$0$0 ==.
      008A68 81               [ 4]  516 	ret
                           000136   517 	Sstm8s_gpio$GPIO_WriteHigh$93 ==.
                           000136   518 	Sstm8s_gpio$GPIO_WriteLow$94 ==.
                                    519 ;	../SPL/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    520 ; genLabel
                                    521 ;	-----------------------------------------
                                    522 ;	 function GPIO_WriteLow
                                    523 ;	-----------------------------------------
                                    524 ;	Register assignment is optimal.
                                    525 ;	Stack space usage: 1 bytes.
      008A69                        526 _GPIO_WriteLow:
                           000136   527 	Sstm8s_gpio$GPIO_WriteLow$95 ==.
      008A69 88               [ 1]  528 	push	a
                           000137   529 	Sstm8s_gpio$GPIO_WriteLow$96 ==.
                           000137   530 	Sstm8s_gpio$GPIO_WriteLow$97 ==.
                                    531 ;	../SPL/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
                                    532 ; genAssign
      008A6A 1E 04            [ 2]  533 	ldw	x, (0x04, sp)
                                    534 ; genPointerGet
      008A6C F6               [ 1]  535 	ld	a, (x)
      008A6D 6B 01            [ 1]  536 	ld	(0x01, sp), a
                                    537 ; genCpl
      008A6F 7B 06            [ 1]  538 	ld	a, (0x06, sp)
      008A71 43               [ 1]  539 	cpl	a
                                    540 ; genAnd
      008A72 14 01            [ 1]  541 	and	a, (0x01, sp)
                                    542 ; genPointerSet
      008A74 F7               [ 1]  543 	ld	(x), a
                                    544 ; genLabel
      008A75                        545 00101$:
                           000142   546 	Sstm8s_gpio$GPIO_WriteLow$98 ==.
                                    547 ;	../SPL/src/stm8s_gpio.c: 170: }
                                    548 ; genEndFunction
      008A75 84               [ 1]  549 	pop	a
                           000143   550 	Sstm8s_gpio$GPIO_WriteLow$99 ==.
                           000143   551 	Sstm8s_gpio$GPIO_WriteLow$100 ==.
                           000143   552 	XG$GPIO_WriteLow$0$0 ==.
      008A76 81               [ 4]  553 	ret
                           000144   554 	Sstm8s_gpio$GPIO_WriteLow$101 ==.
                           000144   555 	Sstm8s_gpio$GPIO_WriteReverse$102 ==.
                                    556 ;	../SPL/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    557 ; genLabel
                                    558 ;	-----------------------------------------
                                    559 ;	 function GPIO_WriteReverse
                                    560 ;	-----------------------------------------
                                    561 ;	Register assignment is optimal.
                                    562 ;	Stack space usage: 0 bytes.
      008A77                        563 _GPIO_WriteReverse:
                           000144   564 	Sstm8s_gpio$GPIO_WriteReverse$103 ==.
                           000144   565 	Sstm8s_gpio$GPIO_WriteReverse$104 ==.
                                    566 ;	../SPL/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
                                    567 ; genAssign
      008A77 1E 03            [ 2]  568 	ldw	x, (0x03, sp)
                                    569 ; genPointerGet
      008A79 F6               [ 1]  570 	ld	a, (x)
                                    571 ; genXor
      008A7A 18 05            [ 1]  572 	xor	a, (0x05, sp)
                                    573 ; genPointerSet
      008A7C F7               [ 1]  574 	ld	(x), a
                                    575 ; genLabel
      008A7D                        576 00101$:
                           00014A   577 	Sstm8s_gpio$GPIO_WriteReverse$105 ==.
                                    578 ;	../SPL/src/stm8s_gpio.c: 183: }
                                    579 ; genEndFunction
                           00014A   580 	Sstm8s_gpio$GPIO_WriteReverse$106 ==.
                           00014A   581 	XG$GPIO_WriteReverse$0$0 ==.
      008A7D 81               [ 4]  582 	ret
                           00014B   583 	Sstm8s_gpio$GPIO_WriteReverse$107 ==.
                           00014B   584 	Sstm8s_gpio$GPIO_ReadOutputData$108 ==.
                                    585 ;	../SPL/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    586 ; genLabel
                                    587 ;	-----------------------------------------
                                    588 ;	 function GPIO_ReadOutputData
                                    589 ;	-----------------------------------------
                                    590 ;	Register assignment is optimal.
                                    591 ;	Stack space usage: 0 bytes.
      008A7E                        592 _GPIO_ReadOutputData:
                           00014B   593 	Sstm8s_gpio$GPIO_ReadOutputData$109 ==.
                           00014B   594 	Sstm8s_gpio$GPIO_ReadOutputData$110 ==.
                                    595 ;	../SPL/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
                                    596 ; genAssign
      008A7E 1E 03            [ 2]  597 	ldw	x, (0x03, sp)
                                    598 ; genPointerGet
      008A80 F6               [ 1]  599 	ld	a, (x)
                                    600 ; genReturn
                                    601 ; genLabel
      008A81                        602 00101$:
                           00014E   603 	Sstm8s_gpio$GPIO_ReadOutputData$111 ==.
                                    604 ;	../SPL/src/stm8s_gpio.c: 194: }
                                    605 ; genEndFunction
                           00014E   606 	Sstm8s_gpio$GPIO_ReadOutputData$112 ==.
                           00014E   607 	XG$GPIO_ReadOutputData$0$0 ==.
      008A81 81               [ 4]  608 	ret
                           00014F   609 	Sstm8s_gpio$GPIO_ReadOutputData$113 ==.
                           00014F   610 	Sstm8s_gpio$GPIO_ReadInputData$114 ==.
                                    611 ;	../SPL/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    612 ; genLabel
                                    613 ;	-----------------------------------------
                                    614 ;	 function GPIO_ReadInputData
                                    615 ;	-----------------------------------------
                                    616 ;	Register assignment might be sub-optimal.
                                    617 ;	Stack space usage: 0 bytes.
      008A82                        618 _GPIO_ReadInputData:
                           00014F   619 	Sstm8s_gpio$GPIO_ReadInputData$115 ==.
                           00014F   620 	Sstm8s_gpio$GPIO_ReadInputData$116 ==.
                                    621 ;	../SPL/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
                                    622 ; genAssign
      008A82 1E 03            [ 2]  623 	ldw	x, (0x03, sp)
                                    624 ; genAssign
                                    625 ; genPointerGet
      008A84 E6 01            [ 1]  626 	ld	a, (0x1, x)
                                    627 ; genReturn
                                    628 ; genLabel
      008A86                        629 00101$:
                           000153   630 	Sstm8s_gpio$GPIO_ReadInputData$117 ==.
                                    631 ;	../SPL/src/stm8s_gpio.c: 205: }
                                    632 ; genEndFunction
                           000153   633 	Sstm8s_gpio$GPIO_ReadInputData$118 ==.
                           000153   634 	XG$GPIO_ReadInputData$0$0 ==.
      008A86 81               [ 4]  635 	ret
                           000154   636 	Sstm8s_gpio$GPIO_ReadInputData$119 ==.
                           000154   637 	Sstm8s_gpio$GPIO_ReadInputPin$120 ==.
                                    638 ;	../SPL/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    639 ; genLabel
                                    640 ;	-----------------------------------------
                                    641 ;	 function GPIO_ReadInputPin
                                    642 ;	-----------------------------------------
                                    643 ;	Register assignment might be sub-optimal.
                                    644 ;	Stack space usage: 0 bytes.
      008A87                        645 _GPIO_ReadInputPin:
                           000154   646 	Sstm8s_gpio$GPIO_ReadInputPin$121 ==.
                           000154   647 	Sstm8s_gpio$GPIO_ReadInputPin$122 ==.
                                    648 ;	../SPL/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
                                    649 ; genAssign
      008A87 1E 03            [ 2]  650 	ldw	x, (0x03, sp)
                                    651 ; genAssign
                                    652 ; genPointerGet
      008A89 E6 01            [ 1]  653 	ld	a, (0x1, x)
                                    654 ; genAnd
      008A8B 14 05            [ 1]  655 	and	a, (0x05, sp)
                                    656 ; genReturn
                                    657 ; genLabel
      008A8D                        658 00101$:
                           00015A   659 	Sstm8s_gpio$GPIO_ReadInputPin$123 ==.
                                    660 ;	../SPL/src/stm8s_gpio.c: 216: }
                                    661 ; genEndFunction
                           00015A   662 	Sstm8s_gpio$GPIO_ReadInputPin$124 ==.
                           00015A   663 	XG$GPIO_ReadInputPin$0$0 ==.
      008A8D 81               [ 4]  664 	ret
                           00015B   665 	Sstm8s_gpio$GPIO_ReadInputPin$125 ==.
                           00015B   666 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$126 ==.
                                    667 ;	../SPL/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    668 ; genLabel
                                    669 ;	-----------------------------------------
                                    670 ;	 function GPIO_ExternalPullUpConfig
                                    671 ;	-----------------------------------------
                                    672 ;	Register assignment might be sub-optimal.
                                    673 ;	Stack space usage: 1 bytes.
      008A8E                        674 _GPIO_ExternalPullUpConfig:
                           00015B   675 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$127 ==.
      008A8E 88               [ 1]  676 	push	a
                           00015C   677 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$128 ==.
                           00015C   678 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$129 ==.
                                    679 ;	../SPL/src/stm8s_gpio.c: 228: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
                                    680 ; genIfx
      008A8F 0D 06            [ 1]  681 	tnz	(0x06, sp)
      008A91 27 03            [ 1]  682 	jreq	00133$
      008A93 CC 8A A5         [ 2]  683 	jp	00107$
      008A96                        684 00133$:
                                    685 ; skipping iCode since result will be rematerialized
                                    686 ; skipping iCode since result will be rematerialized
                                    687 ; genIPush
      008A96 4B E4            [ 1]  688 	push	#0xe4
                           000165   689 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$130 ==.
      008A98 5F               [ 1]  690 	clrw	x
      008A99 89               [ 2]  691 	pushw	x
                           000167   692 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$131 ==.
      008A9A 4B 00            [ 1]  693 	push	#0x00
                           000169   694 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$132 ==.
                                    695 ; genIPush
      008A9C 4B 99            [ 1]  696 	push	#<(___str_0+0)
                           00016B   697 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$133 ==.
      008A9E 4B 80            [ 1]  698 	push	#((___str_0+0) >> 8)
                           00016D   699 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$134 ==.
                                    700 ; genCall
      008AA0 CD 82 99         [ 4]  701 	call	_assert_failed
      008AA3 5B 06            [ 2]  702 	addw	sp, #6
                           000172   703 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$135 ==.
                                    704 ; genLabel
      008AA5                        705 00107$:
                           000172   706 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$136 ==.
                                    707 ;	../SPL/src/stm8s_gpio.c: 229: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    708 ; genIfx
      008AA5 0D 07            [ 1]  709 	tnz	(0x07, sp)
      008AA7 26 03            [ 1]  710 	jrne	00134$
      008AA9 CC 8A C3         [ 2]  711 	jp	00109$
      008AAC                        712 00134$:
                                    713 ; genCmpEQorNE
      008AAC 7B 07            [ 1]  714 	ld	a, (0x07, sp)
      008AAE 4A               [ 1]  715 	dec	a
      008AAF 26 03            [ 1]  716 	jrne	00136$
      008AB1 CC 8A C3         [ 2]  717 	jp	00109$
      008AB4                        718 00136$:
                           000181   719 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$137 ==.
                                    720 ; skipping generated iCode
                                    721 ; skipping iCode since result will be rematerialized
                                    722 ; skipping iCode since result will be rematerialized
                                    723 ; genIPush
      008AB4 4B E5            [ 1]  724 	push	#0xe5
                           000183   725 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$138 ==.
      008AB6 5F               [ 1]  726 	clrw	x
      008AB7 89               [ 2]  727 	pushw	x
                           000185   728 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$139 ==.
      008AB8 4B 00            [ 1]  729 	push	#0x00
                           000187   730 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$140 ==.
                                    731 ; genIPush
      008ABA 4B 99            [ 1]  732 	push	#<(___str_0+0)
                           000189   733 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$141 ==.
      008ABC 4B 80            [ 1]  734 	push	#((___str_0+0) >> 8)
                           00018B   735 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$142 ==.
                                    736 ; genCall
      008ABE CD 82 99         [ 4]  737 	call	_assert_failed
      008AC1 5B 06            [ 2]  738 	addw	sp, #6
                           000190   739 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$143 ==.
                                    740 ; genLabel
      008AC3                        741 00109$:
                           000190   742 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$144 ==.
                                    743 ;	../SPL/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    744 ; genAssign
      008AC3 1E 04            [ 2]  745 	ldw	x, (0x04, sp)
                                    746 ; genPlus
      008AC5 1C 00 03         [ 2]  747 	addw	x, #0x0003
                                    748 ; genPointerGet
      008AC8 F6               [ 1]  749 	ld	a, (x)
                           000196   750 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$145 ==.
                                    751 ;	../SPL/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
                                    752 ; genIfx
      008AC9 0D 07            [ 1]  753 	tnz	(0x07, sp)
      008ACB 26 03            [ 1]  754 	jrne	00138$
      008ACD CC 8A D6         [ 2]  755 	jp	00102$
      008AD0                        756 00138$:
                           00019D   757 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$146 ==.
                           00019D   758 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$147 ==.
                                    759 ;	../SPL/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    760 ; genOr
      008AD0 1A 06            [ 1]  761 	or	a, (0x06, sp)
                                    762 ; genPointerSet
      008AD2 F7               [ 1]  763 	ld	(x), a
                           0001A0   764 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$148 ==.
                                    765 ; genGoto
      008AD3 CC 8A E0         [ 2]  766 	jp	00104$
                                    767 ; genLabel
      008AD6                        768 00102$:
                           0001A3   769 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$149 ==.
                           0001A3   770 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$150 ==.
                                    771 ;	../SPL/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    772 ; genCpl
      008AD6 88               [ 1]  773 	push	a
                           0001A4   774 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$151 ==.
      008AD7 7B 07            [ 1]  775 	ld	a, (0x07, sp)
      008AD9 43               [ 1]  776 	cpl	a
      008ADA 6B 02            [ 1]  777 	ld	(0x02, sp), a
      008ADC 84               [ 1]  778 	pop	a
                           0001AA   779 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$152 ==.
                                    780 ; genAnd
      008ADD 14 01            [ 1]  781 	and	a, (0x01, sp)
                                    782 ; genPointerSet
      008ADF F7               [ 1]  783 	ld	(x), a
                           0001AD   784 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$153 ==.
                                    785 ; genLabel
      008AE0                        786 00104$:
                           0001AD   787 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$154 ==.
                                    788 ;	../SPL/src/stm8s_gpio.c: 238: }
                                    789 ; genEndFunction
      008AE0 84               [ 1]  790 	pop	a
                           0001AE   791 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$155 ==.
                           0001AE   792 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$156 ==.
                           0001AE   793 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      008AE1 81               [ 4]  794 	ret
                           0001AF   795 	Sstm8s_gpio$GPIO_ExternalPullUpConfig$157 ==.
                                    796 	.area CODE
                                    797 	.area CONST
                           000000   798 Fstm8s_gpio$__str_0$0_0$0 == .
                                    799 	.area CONST
      008099                        800 ___str_0:
      008099 2E 2E 2F 53 50 4C 2F   801 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      0080B0 00                     802 	.db 0x00
                                    803 	.area CODE
                                    804 	.area INITIALIZER
                                    805 	.area CABS (ABS)
                                    806 
                                    807 	.area .debug_line (NOLOAD)
      000DB3 00 00 02 3B            808 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000DB7                        809 Ldebug_line_start:
      000DB7 00 02                  810 	.dw	2
      000DB9 00 00 00 78            811 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000DBD 01                     812 	.db	1
      000DBE 01                     813 	.db	1
      000DBF FB                     814 	.db	-5
      000DC0 0F                     815 	.db	15
      000DC1 0A                     816 	.db	10
      000DC2 00                     817 	.db	0
      000DC3 01                     818 	.db	1
      000DC4 01                     819 	.db	1
      000DC5 01                     820 	.db	1
      000DC6 01                     821 	.db	1
      000DC7 00                     822 	.db	0
      000DC8 00                     823 	.db	0
      000DC9 00                     824 	.db	0
      000DCA 01                     825 	.db	1
      000DCB 43 3A 5C 50 72 6F 67   826 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000DF3 00                     827 	.db	0
      000DF4 43 3A 5C 50 72 6F 67   828 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000E17 00                     829 	.db	0
      000E18 00                     830 	.db	0
      000E19 2E 2E 2F 53 50 4C 2F   831 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      000E30 00                     832 	.db	0
      000E31 00                     833 	.uleb128	0
      000E32 00                     834 	.uleb128	0
      000E33 00                     835 	.uleb128	0
      000E34 00                     836 	.db	0
      000E35                        837 Ldebug_line_stmt:
      000E35 00                     838 	.db	0
      000E36 05                     839 	.uleb128	5
      000E37 02                     840 	.db	2
      000E38 00 00 89 33            841 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$0)
      000E3C 03                     842 	.db	3
      000E3D 34                     843 	.sleb128	52
      000E3E 01                     844 	.db	1
      000E3F 09                     845 	.db	9
      000E40 00 00                  846 	.dw	Sstm8s_gpio$GPIO_DeInit$2-Sstm8s_gpio$GPIO_DeInit$0
      000E42 03                     847 	.db	3
      000E43 02                     848 	.sleb128	2
      000E44 01                     849 	.db	1
      000E45 09                     850 	.db	9
      000E46 00 04                  851 	.dw	Sstm8s_gpio$GPIO_DeInit$3-Sstm8s_gpio$GPIO_DeInit$2
      000E48 03                     852 	.db	3
      000E49 01                     853 	.sleb128	1
      000E4A 01                     854 	.db	1
      000E4B 09                     855 	.db	9
      000E4C 00 04                  856 	.dw	Sstm8s_gpio$GPIO_DeInit$4-Sstm8s_gpio$GPIO_DeInit$3
      000E4E 03                     857 	.db	3
      000E4F 01                     858 	.sleb128	1
      000E50 01                     859 	.db	1
      000E51 09                     860 	.db	9
      000E52 00 05                  861 	.dw	Sstm8s_gpio$GPIO_DeInit$5-Sstm8s_gpio$GPIO_DeInit$4
      000E54 03                     862 	.db	3
      000E55 01                     863 	.sleb128	1
      000E56 01                     864 	.db	1
      000E57 09                     865 	.db	9
      000E58 00 05                  866 	.dw	Sstm8s_gpio$GPIO_DeInit$6-Sstm8s_gpio$GPIO_DeInit$5
      000E5A 03                     867 	.db	3
      000E5B 01                     868 	.sleb128	1
      000E5C 01                     869 	.db	1
      000E5D 09                     870 	.db	9
      000E5E 00 01                  871 	.dw	1+Sstm8s_gpio$GPIO_DeInit$7-Sstm8s_gpio$GPIO_DeInit$6
      000E60 00                     872 	.db	0
      000E61 01                     873 	.uleb128	1
      000E62 01                     874 	.db	1
      000E63 00                     875 	.db	0
      000E64 05                     876 	.uleb128	5
      000E65 02                     877 	.db	2
      000E66 00 00 89 46            878 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      000E6A 03                     879 	.db	3
      000E6B C6 00                  880 	.sleb128	70
      000E6D 01                     881 	.db	1
      000E6E 09                     882 	.db	9
      000E6F 00 02                  883 	.dw	Sstm8s_gpio$GPIO_Init$12-Sstm8s_gpio$GPIO_Init$9
      000E71 03                     884 	.db	3
      000E72 06                     885 	.sleb128	6
      000E73 01                     886 	.db	1
      000E74 09                     887 	.db	9
      000E75 00 79                  888 	.dw	Sstm8s_gpio$GPIO_Init$30-Sstm8s_gpio$GPIO_Init$12
      000E77 03                     889 	.db	3
      000E78 01                     890 	.sleb128	1
      000E79 01                     891 	.db	1
      000E7A 09                     892 	.db	9
      000E7B 00 16                  893 	.dw	Sstm8s_gpio$GPIO_Init$37-Sstm8s_gpio$GPIO_Init$30
      000E7D 03                     894 	.db	3
      000E7E 03                     895 	.sleb128	3
      000E7F 01                     896 	.db	1
      000E80 09                     897 	.db	9
      000E81 00 17                  898 	.dw	Sstm8s_gpio$GPIO_Init$40-Sstm8s_gpio$GPIO_Init$37
      000E83 03                     899 	.db	3
      000E84 11                     900 	.sleb128	17
      000E85 01                     901 	.db	1
      000E86 09                     902 	.db	9
      000E87 00 05                  903 	.dw	Sstm8s_gpio$GPIO_Init$41-Sstm8s_gpio$GPIO_Init$40
      000E89 03                     904 	.db	3
      000E8A 75                     905 	.sleb128	-11
      000E8B 01                     906 	.db	1
      000E8C 09                     907 	.db	9
      000E8D 00 07                  908 	.dw	Sstm8s_gpio$GPIO_Init$42-Sstm8s_gpio$GPIO_Init$41
      000E8F 03                     909 	.db	3
      000E90 04                     910 	.sleb128	4
      000E91 01                     911 	.db	1
      000E92 09                     912 	.db	9
      000E93 00 02                  913 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$42
      000E95 03                     914 	.db	3
      000E96 7E                     915 	.sleb128	-2
      000E97 01                     916 	.db	1
      000E98 09                     917 	.db	9
      000E99 00 0B                  918 	.dw	Sstm8s_gpio$GPIO_Init$48-Sstm8s_gpio$GPIO_Init$44
      000E9B 03                     919 	.db	3
      000E9C 02                     920 	.sleb128	2
      000E9D 01                     921 	.db	1
      000E9E 09                     922 	.db	9
      000E9F 00 07                  923 	.dw	Sstm8s_gpio$GPIO_Init$51-Sstm8s_gpio$GPIO_Init$48
      000EA1 03                     924 	.db	3
      000EA2 04                     925 	.sleb128	4
      000EA3 01                     926 	.db	1
      000EA4 09                     927 	.db	9
      000EA5 00 04                  928 	.dw	Sstm8s_gpio$GPIO_Init$53-Sstm8s_gpio$GPIO_Init$51
      000EA7 03                     929 	.db	3
      000EA8 03                     930 	.sleb128	3
      000EA9 01                     931 	.db	1
      000EAA 09                     932 	.db	9
      000EAB 00 0B                  933 	.dw	Sstm8s_gpio$GPIO_Init$56-Sstm8s_gpio$GPIO_Init$53
      000EAD 03                     934 	.db	3
      000EAE 05                     935 	.sleb128	5
      000EAF 01                     936 	.db	1
      000EB0 09                     937 	.db	9
      000EB1 00 08                  938 	.dw	Sstm8s_gpio$GPIO_Init$58-Sstm8s_gpio$GPIO_Init$56
      000EB3 03                     939 	.db	3
      000EB4 09                     940 	.sleb128	9
      000EB5 01                     941 	.db	1
      000EB6 09                     942 	.db	9
      000EB7 00 05                  943 	.dw	Sstm8s_gpio$GPIO_Init$59-Sstm8s_gpio$GPIO_Init$58
      000EB9 03                     944 	.db	3
      000EBA 7E                     945 	.sleb128	-2
      000EBB 01                     946 	.db	1
      000EBC 09                     947 	.db	9
      000EBD 00 0B                  948 	.dw	Sstm8s_gpio$GPIO_Init$63-Sstm8s_gpio$GPIO_Init$59
      000EBF 03                     949 	.db	3
      000EC0 02                     950 	.sleb128	2
      000EC1 01                     951 	.db	1
      000EC2 09                     952 	.db	9
      000EC3 00 06                  953 	.dw	Sstm8s_gpio$GPIO_Init$66-Sstm8s_gpio$GPIO_Init$63
      000EC5 03                     954 	.db	3
      000EC6 04                     955 	.sleb128	4
      000EC7 01                     956 	.db	1
      000EC8 09                     957 	.db	9
      000EC9 00 03                  958 	.dw	Sstm8s_gpio$GPIO_Init$68-Sstm8s_gpio$GPIO_Init$66
      000ECB 03                     959 	.db	3
      000ECC 5D                     960 	.sleb128	-35
      000ECD 01                     961 	.db	1
      000ECE 09                     962 	.db	9
      000ECF 00 03                  963 	.dw	Sstm8s_gpio$GPIO_Init$69-Sstm8s_gpio$GPIO_Init$68
      000ED1 03                     964 	.db	3
      000ED2 2A                     965 	.sleb128	42
      000ED3 01                     966 	.db	1
      000ED4 09                     967 	.db	9
      000ED5 00 0B                  968 	.dw	Sstm8s_gpio$GPIO_Init$73-Sstm8s_gpio$GPIO_Init$69
      000ED7 03                     969 	.db	3
      000ED8 02                     970 	.sleb128	2
      000ED9 01                     971 	.db	1
      000EDA 09                     972 	.db	9
      000EDB 00 08                  973 	.dw	Sstm8s_gpio$GPIO_Init$76-Sstm8s_gpio$GPIO_Init$73
      000EDD 03                     974 	.db	3
      000EDE 04                     975 	.sleb128	4
      000EDF 01                     976 	.db	1
      000EE0 09                     977 	.db	9
      000EE1 00 05                  978 	.dw	Sstm8s_gpio$GPIO_Init$78-Sstm8s_gpio$GPIO_Init$76
      000EE3 03                     979 	.db	3
      000EE4 02                     980 	.sleb128	2
      000EE5 01                     981 	.db	1
      000EE6 09                     982 	.db	9
      000EE7 00 03                  983 	.dw	1+Sstm8s_gpio$GPIO_Init$80-Sstm8s_gpio$GPIO_Init$78
      000EE9 00                     984 	.db	0
      000EEA 01                     985 	.uleb128	1
      000EEB 01                     986 	.db	1
      000EEC 00                     987 	.db	0
      000EED 05                     988 	.uleb128	5
      000EEE 02                     989 	.db	2
      000EEF 00 00 8A 5C            990 	.dw	0,(Sstm8s_gpio$GPIO_Write$82)
      000EF3 03                     991 	.db	3
      000EF4 8C 01                  992 	.sleb128	140
      000EF6 01                     993 	.db	1
      000EF7 09                     994 	.db	9
      000EF8 00 00                  995 	.dw	Sstm8s_gpio$GPIO_Write$84-Sstm8s_gpio$GPIO_Write$82
      000EFA 03                     996 	.db	3
      000EFB 02                     997 	.sleb128	2
      000EFC 01                     998 	.db	1
      000EFD 09                     999 	.db	9
      000EFE 00 05                 1000 	.dw	Sstm8s_gpio$GPIO_Write$85-Sstm8s_gpio$GPIO_Write$84
      000F00 03                    1001 	.db	3
      000F01 01                    1002 	.sleb128	1
      000F02 01                    1003 	.db	1
      000F03 09                    1004 	.db	9
      000F04 00 01                 1005 	.dw	1+Sstm8s_gpio$GPIO_Write$86-Sstm8s_gpio$GPIO_Write$85
      000F06 00                    1006 	.db	0
      000F07 01                    1007 	.uleb128	1
      000F08 01                    1008 	.db	1
      000F09 00                    1009 	.db	0
      000F0A 05                    1010 	.uleb128	5
      000F0B 02                    1011 	.db	2
      000F0C 00 00 8A 62           1012 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$88)
      000F10 03                    1013 	.db	3
      000F11 99 01                 1014 	.sleb128	153
      000F13 01                    1015 	.db	1
      000F14 09                    1016 	.db	9
      000F15 00 00                 1017 	.dw	Sstm8s_gpio$GPIO_WriteHigh$90-Sstm8s_gpio$GPIO_WriteHigh$88
      000F17 03                    1018 	.db	3
      000F18 02                    1019 	.sleb128	2
      000F19 01                    1020 	.db	1
      000F1A 09                    1021 	.db	9
      000F1B 00 06                 1022 	.dw	Sstm8s_gpio$GPIO_WriteHigh$91-Sstm8s_gpio$GPIO_WriteHigh$90
      000F1D 03                    1023 	.db	3
      000F1E 01                    1024 	.sleb128	1
      000F1F 01                    1025 	.db	1
      000F20 09                    1026 	.db	9
      000F21 00 01                 1027 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$92-Sstm8s_gpio$GPIO_WriteHigh$91
      000F23 00                    1028 	.db	0
      000F24 01                    1029 	.uleb128	1
      000F25 01                    1030 	.db	1
      000F26 00                    1031 	.db	0
      000F27 05                    1032 	.uleb128	5
      000F28 02                    1033 	.db	2
      000F29 00 00 8A 69           1034 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$94)
      000F2D 03                    1035 	.db	3
      000F2E A6 01                 1036 	.sleb128	166
      000F30 01                    1037 	.db	1
      000F31 09                    1038 	.db	9
      000F32 00 01                 1039 	.dw	Sstm8s_gpio$GPIO_WriteLow$97-Sstm8s_gpio$GPIO_WriteLow$94
      000F34 03                    1040 	.db	3
      000F35 02                    1041 	.sleb128	2
      000F36 01                    1042 	.db	1
      000F37 09                    1043 	.db	9
      000F38 00 0B                 1044 	.dw	Sstm8s_gpio$GPIO_WriteLow$98-Sstm8s_gpio$GPIO_WriteLow$97
      000F3A 03                    1045 	.db	3
      000F3B 01                    1046 	.sleb128	1
      000F3C 01                    1047 	.db	1
      000F3D 09                    1048 	.db	9
      000F3E 00 02                 1049 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$100-Sstm8s_gpio$GPIO_WriteLow$98
      000F40 00                    1050 	.db	0
      000F41 01                    1051 	.uleb128	1
      000F42 01                    1052 	.db	1
      000F43 00                    1053 	.db	0
      000F44 05                    1054 	.uleb128	5
      000F45 02                    1055 	.db	2
      000F46 00 00 8A 77           1056 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$102)
      000F4A 03                    1057 	.db	3
      000F4B B3 01                 1058 	.sleb128	179
      000F4D 01                    1059 	.db	1
      000F4E 09                    1060 	.db	9
      000F4F 00 00                 1061 	.dw	Sstm8s_gpio$GPIO_WriteReverse$104-Sstm8s_gpio$GPIO_WriteReverse$102
      000F51 03                    1062 	.db	3
      000F52 02                    1063 	.sleb128	2
      000F53 01                    1064 	.db	1
      000F54 09                    1065 	.db	9
      000F55 00 06                 1066 	.dw	Sstm8s_gpio$GPIO_WriteReverse$105-Sstm8s_gpio$GPIO_WriteReverse$104
      000F57 03                    1067 	.db	3
      000F58 01                    1068 	.sleb128	1
      000F59 01                    1069 	.db	1
      000F5A 09                    1070 	.db	9
      000F5B 00 01                 1071 	.dw	1+Sstm8s_gpio$GPIO_WriteReverse$106-Sstm8s_gpio$GPIO_WriteReverse$105
      000F5D 00                    1072 	.db	0
      000F5E 01                    1073 	.uleb128	1
      000F5F 01                    1074 	.db	1
      000F60 00                    1075 	.db	0
      000F61 05                    1076 	.uleb128	5
      000F62 02                    1077 	.db	2
      000F63 00 00 8A 7E           1078 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$108)
      000F67 03                    1079 	.db	3
      000F68 BE 01                 1080 	.sleb128	190
      000F6A 01                    1081 	.db	1
      000F6B 09                    1082 	.db	9
      000F6C 00 00                 1083 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$110-Sstm8s_gpio$GPIO_ReadOutputData$108
      000F6E 03                    1084 	.db	3
      000F6F 02                    1085 	.sleb128	2
      000F70 01                    1086 	.db	1
      000F71 09                    1087 	.db	9
      000F72 00 03                 1088 	.dw	Sstm8s_gpio$GPIO_ReadOutputData$111-Sstm8s_gpio$GPIO_ReadOutputData$110
      000F74 03                    1089 	.db	3
      000F75 01                    1090 	.sleb128	1
      000F76 01                    1091 	.db	1
      000F77 09                    1092 	.db	9
      000F78 00 01                 1093 	.dw	1+Sstm8s_gpio$GPIO_ReadOutputData$112-Sstm8s_gpio$GPIO_ReadOutputData$111
      000F7A 00                    1094 	.db	0
      000F7B 01                    1095 	.uleb128	1
      000F7C 01                    1096 	.db	1
      000F7D 00                    1097 	.db	0
      000F7E 05                    1098 	.uleb128	5
      000F7F 02                    1099 	.db	2
      000F80 00 00 8A 82           1100 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$114)
      000F84 03                    1101 	.db	3
      000F85 C9 01                 1102 	.sleb128	201
      000F87 01                    1103 	.db	1
      000F88 09                    1104 	.db	9
      000F89 00 00                 1105 	.dw	Sstm8s_gpio$GPIO_ReadInputData$116-Sstm8s_gpio$GPIO_ReadInputData$114
      000F8B 03                    1106 	.db	3
      000F8C 02                    1107 	.sleb128	2
      000F8D 01                    1108 	.db	1
      000F8E 09                    1109 	.db	9
      000F8F 00 04                 1110 	.dw	Sstm8s_gpio$GPIO_ReadInputData$117-Sstm8s_gpio$GPIO_ReadInputData$116
      000F91 03                    1111 	.db	3
      000F92 01                    1112 	.sleb128	1
      000F93 01                    1113 	.db	1
      000F94 09                    1114 	.db	9
      000F95 00 01                 1115 	.dw	1+Sstm8s_gpio$GPIO_ReadInputData$118-Sstm8s_gpio$GPIO_ReadInputData$117
      000F97 00                    1116 	.db	0
      000F98 01                    1117 	.uleb128	1
      000F99 01                    1118 	.db	1
      000F9A 00                    1119 	.db	0
      000F9B 05                    1120 	.uleb128	5
      000F9C 02                    1121 	.db	2
      000F9D 00 00 8A 87           1122 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$120)
      000FA1 03                    1123 	.db	3
      000FA2 D4 01                 1124 	.sleb128	212
      000FA4 01                    1125 	.db	1
      000FA5 09                    1126 	.db	9
      000FA6 00 00                 1127 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$122-Sstm8s_gpio$GPIO_ReadInputPin$120
      000FA8 03                    1128 	.db	3
      000FA9 02                    1129 	.sleb128	2
      000FAA 01                    1130 	.db	1
      000FAB 09                    1131 	.db	9
      000FAC 00 06                 1132 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$123-Sstm8s_gpio$GPIO_ReadInputPin$122
      000FAE 03                    1133 	.db	3
      000FAF 01                    1134 	.sleb128	1
      000FB0 01                    1135 	.db	1
      000FB1 09                    1136 	.db	9
      000FB2 00 01                 1137 	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$124-Sstm8s_gpio$GPIO_ReadInputPin$123
      000FB4 00                    1138 	.db	0
      000FB5 01                    1139 	.uleb128	1
      000FB6 01                    1140 	.db	1
      000FB7 00                    1141 	.db	0
      000FB8 05                    1142 	.uleb128	5
      000FB9 02                    1143 	.db	2
      000FBA 00 00 8A 8E           1144 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$126)
      000FBE 03                    1145 	.db	3
      000FBF E0 01                 1146 	.sleb128	224
      000FC1 01                    1147 	.db	1
      000FC2 09                    1148 	.db	9
      000FC3 00 01                 1149 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$129-Sstm8s_gpio$GPIO_ExternalPullUpConfig$126
      000FC5 03                    1150 	.db	3
      000FC6 03                    1151 	.sleb128	3
      000FC7 01                    1152 	.db	1
      000FC8 09                    1153 	.db	9
      000FC9 00 16                 1154 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$136-Sstm8s_gpio$GPIO_ExternalPullUpConfig$129
      000FCB 03                    1155 	.db	3
      000FCC 01                    1156 	.sleb128	1
      000FCD 01                    1157 	.db	1
      000FCE 09                    1158 	.db	9
      000FCF 00 1E                 1159 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$144-Sstm8s_gpio$GPIO_ExternalPullUpConfig$136
      000FD1 03                    1160 	.db	3
      000FD2 04                    1161 	.sleb128	4
      000FD3 01                    1162 	.db	1
      000FD4 09                    1163 	.db	9
      000FD5 00 06                 1164 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$145-Sstm8s_gpio$GPIO_ExternalPullUpConfig$144
      000FD7 03                    1165 	.db	3
      000FD8 7E                    1166 	.sleb128	-2
      000FD9 01                    1167 	.db	1
      000FDA 09                    1168 	.db	9
      000FDB 00 07                 1169 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$147-Sstm8s_gpio$GPIO_ExternalPullUpConfig$145
      000FDD 03                    1170 	.db	3
      000FDE 02                    1171 	.sleb128	2
      000FDF 01                    1172 	.db	1
      000FE0 09                    1173 	.db	9
      000FE1 00 06                 1174 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$150-Sstm8s_gpio$GPIO_ExternalPullUpConfig$147
      000FE3 03                    1175 	.db	3
      000FE4 03                    1176 	.sleb128	3
      000FE5 01                    1177 	.db	1
      000FE6 09                    1178 	.db	9
      000FE7 00 0A                 1179 	.dw	Sstm8s_gpio$GPIO_ExternalPullUpConfig$154-Sstm8s_gpio$GPIO_ExternalPullUpConfig$150
      000FE9 03                    1180 	.db	3
      000FEA 02                    1181 	.sleb128	2
      000FEB 01                    1182 	.db	1
      000FEC 09                    1183 	.db	9
      000FED 00 02                 1184 	.dw	1+Sstm8s_gpio$GPIO_ExternalPullUpConfig$156-Sstm8s_gpio$GPIO_ExternalPullUpConfig$154
      000FEF 00                    1185 	.db	0
      000FF0 01                    1186 	.uleb128	1
      000FF1 01                    1187 	.db	1
      000FF2                       1188 Ldebug_line_end:
                                   1189 
                                   1190 	.area .debug_loc (NOLOAD)
      0018A4                       1191 Ldebug_loc_start:
      0018A4 00 00 8A E1           1192 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      0018A8 00 00 8A E2           1193 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$157)
      0018AC 00 02                 1194 	.dw	2
      0018AE 78                    1195 	.db	120
      0018AF 01                    1196 	.sleb128	1
      0018B0 00 00 8A DD           1197 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      0018B4 00 00 8A E1           1198 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      0018B8 00 02                 1199 	.dw	2
      0018BA 78                    1200 	.db	120
      0018BB 02                    1201 	.sleb128	2
      0018BC 00 00 8A D7           1202 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      0018C0 00 00 8A DD           1203 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      0018C4 00 02                 1204 	.dw	2
      0018C6 78                    1205 	.db	120
      0018C7 03                    1206 	.sleb128	3
      0018C8 00 00 8A C3           1207 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      0018CC 00 00 8A D7           1208 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      0018D0 00 02                 1209 	.dw	2
      0018D2 78                    1210 	.db	120
      0018D3 02                    1211 	.sleb128	2
      0018D4 00 00 8A BE           1212 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      0018D8 00 00 8A C3           1213 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      0018DC 00 02                 1214 	.dw	2
      0018DE 78                    1215 	.db	120
      0018DF 08                    1216 	.sleb128	8
      0018E0 00 00 8A BC           1217 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      0018E4 00 00 8A BE           1218 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      0018E8 00 02                 1219 	.dw	2
      0018EA 78                    1220 	.db	120
      0018EB 07                    1221 	.sleb128	7
      0018EC 00 00 8A BA           1222 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      0018F0 00 00 8A BC           1223 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      0018F4 00 02                 1224 	.dw	2
      0018F6 78                    1225 	.db	120
      0018F7 06                    1226 	.sleb128	6
      0018F8 00 00 8A B8           1227 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      0018FC 00 00 8A BA           1228 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      001900 00 02                 1229 	.dw	2
      001902 78                    1230 	.db	120
      001903 05                    1231 	.sleb128	5
      001904 00 00 8A B6           1232 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      001908 00 00 8A B8           1233 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      00190C 00 02                 1234 	.dw	2
      00190E 78                    1235 	.db	120
      00190F 03                    1236 	.sleb128	3
      001910 00 00 8A B4           1237 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      001914 00 00 8A B6           1238 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      001918 00 02                 1239 	.dw	2
      00191A 78                    1240 	.db	120
      00191B 02                    1241 	.sleb128	2
      00191C 00 00 8A A5           1242 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      001920 00 00 8A B4           1243 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      001924 00 02                 1244 	.dw	2
      001926 78                    1245 	.db	120
      001927 02                    1246 	.sleb128	2
      001928 00 00 8A A0           1247 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      00192C 00 00 8A A5           1248 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      001930 00 02                 1249 	.dw	2
      001932 78                    1250 	.db	120
      001933 08                    1251 	.sleb128	8
      001934 00 00 8A 9E           1252 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      001938 00 00 8A A0           1253 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      00193C 00 02                 1254 	.dw	2
      00193E 78                    1255 	.db	120
      00193F 07                    1256 	.sleb128	7
      001940 00 00 8A 9C           1257 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      001944 00 00 8A 9E           1258 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      001948 00 02                 1259 	.dw	2
      00194A 78                    1260 	.db	120
      00194B 06                    1261 	.sleb128	6
      00194C 00 00 8A 9A           1262 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      001950 00 00 8A 9C           1263 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      001954 00 02                 1264 	.dw	2
      001956 78                    1265 	.db	120
      001957 05                    1266 	.sleb128	5
      001958 00 00 8A 98           1267 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      00195C 00 00 8A 9A           1268 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      001960 00 02                 1269 	.dw	2
      001962 78                    1270 	.db	120
      001963 03                    1271 	.sleb128	3
      001964 00 00 8A 8F           1272 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      001968 00 00 8A 98           1273 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      00196C 00 02                 1274 	.dw	2
      00196E 78                    1275 	.db	120
      00196F 02                    1276 	.sleb128	2
      001970 00 00 8A 8E           1277 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)
      001974 00 00 8A 8F           1278 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      001978 00 02                 1279 	.dw	2
      00197A 78                    1280 	.db	120
      00197B 01                    1281 	.sleb128	1
      00197C 00 00 00 00           1282 	.dw	0,0
      001980 00 00 00 00           1283 	.dw	0,0
      001984 00 00 8A 87           1284 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)
      001988 00 00 8A 8E           1285 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$125)
      00198C 00 02                 1286 	.dw	2
      00198E 78                    1287 	.db	120
      00198F 01                    1288 	.sleb128	1
      001990 00 00 00 00           1289 	.dw	0,0
      001994 00 00 00 00           1290 	.dw	0,0
      001998 00 00 8A 82           1291 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)
      00199C 00 00 8A 87           1292 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$119)
      0019A0 00 02                 1293 	.dw	2
      0019A2 78                    1294 	.db	120
      0019A3 01                    1295 	.sleb128	1
      0019A4 00 00 00 00           1296 	.dw	0,0
      0019A8 00 00 00 00           1297 	.dw	0,0
      0019AC 00 00 8A 7E           1298 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)
      0019B0 00 00 8A 82           1299 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$113)
      0019B4 00 02                 1300 	.dw	2
      0019B6 78                    1301 	.db	120
      0019B7 01                    1302 	.sleb128	1
      0019B8 00 00 00 00           1303 	.dw	0,0
      0019BC 00 00 00 00           1304 	.dw	0,0
      0019C0 00 00 8A 77           1305 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)
      0019C4 00 00 8A 7E           1306 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$107)
      0019C8 00 02                 1307 	.dw	2
      0019CA 78                    1308 	.db	120
      0019CB 01                    1309 	.sleb128	1
      0019CC 00 00 00 00           1310 	.dw	0,0
      0019D0 00 00 00 00           1311 	.dw	0,0
      0019D4 00 00 8A 76           1312 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      0019D8 00 00 8A 77           1313 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$101)
      0019DC 00 02                 1314 	.dw	2
      0019DE 78                    1315 	.db	120
      0019DF 01                    1316 	.sleb128	1
      0019E0 00 00 8A 6A           1317 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      0019E4 00 00 8A 76           1318 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      0019E8 00 02                 1319 	.dw	2
      0019EA 78                    1320 	.db	120
      0019EB 02                    1321 	.sleb128	2
      0019EC 00 00 8A 69           1322 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)
      0019F0 00 00 8A 6A           1323 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      0019F4 00 02                 1324 	.dw	2
      0019F6 78                    1325 	.db	120
      0019F7 01                    1326 	.sleb128	1
      0019F8 00 00 00 00           1327 	.dw	0,0
      0019FC 00 00 00 00           1328 	.dw	0,0
      001A00 00 00 8A 62           1329 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)
      001A04 00 00 8A 69           1330 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$93)
      001A08 00 02                 1331 	.dw	2
      001A0A 78                    1332 	.db	120
      001A0B 01                    1333 	.sleb128	1
      001A0C 00 00 00 00           1334 	.dw	0,0
      001A10 00 00 00 00           1335 	.dw	0,0
      001A14 00 00 8A 5C           1336 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)
      001A18 00 00 8A 62           1337 	.dw	0,(Sstm8s_gpio$GPIO_Write$87)
      001A1C 00 02                 1338 	.dw	2
      001A1E 78                    1339 	.db	120
      001A1F 01                    1340 	.sleb128	1
      001A20 00 00 00 00           1341 	.dw	0,0
      001A24 00 00 00 00           1342 	.dw	0,0
      001A28 00 00 8A 5B           1343 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      001A2C 00 00 8A 5C           1344 	.dw	0,(Sstm8s_gpio$GPIO_Init$81)
      001A30 00 02                 1345 	.dw	2
      001A32 78                    1346 	.db	120
      001A33 01                    1347 	.sleb128	1
      001A34 00 00 8A 47           1348 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      001A38 00 00 8A 5B           1349 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      001A3C 00 02                 1350 	.dw	2
      001A3E 78                    1351 	.db	120
      001A3F 06                    1352 	.sleb128	6
      001A40 00 00 8A 42           1353 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      001A44 00 00 8A 47           1354 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      001A48 00 02                 1355 	.dw	2
      001A4A 78                    1356 	.db	120
      001A4B 07                    1357 	.sleb128	7
      001A4C 00 00 8A 30           1358 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      001A50 00 00 8A 42           1359 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      001A54 00 02                 1360 	.dw	2
      001A56 78                    1361 	.db	120
      001A57 06                    1362 	.sleb128	6
      001A58 00 00 8A 2B           1363 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      001A5C 00 00 8A 30           1364 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      001A60 00 02                 1365 	.dw	2
      001A62 78                    1366 	.db	120
      001A63 07                    1367 	.sleb128	7
      001A64 00 00 8A 02           1368 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      001A68 00 00 8A 2B           1369 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      001A6C 00 02                 1370 	.dw	2
      001A6E 78                    1371 	.db	120
      001A6F 06                    1372 	.sleb128	6
      001A70 00 00 89 FD           1373 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      001A74 00 00 8A 02           1374 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      001A78 00 02                 1375 	.dw	2
      001A7A 78                    1376 	.db	120
      001A7B 07                    1377 	.sleb128	7
      001A7C 00 00 89 E9           1378 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      001A80 00 00 89 FD           1379 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      001A84 00 02                 1380 	.dw	2
      001A86 78                    1381 	.db	120
      001A87 06                    1382 	.sleb128	6
      001A88 00 00 89 E3           1383 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      001A8C 00 00 89 E9           1384 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      001A90 00 02                 1385 	.dw	2
      001A92 78                    1386 	.db	120
      001A93 07                    1387 	.sleb128	7
      001A94 00 00 89 D7           1388 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      001A98 00 00 89 E3           1389 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      001A9C 00 02                 1390 	.dw	2
      001A9E 78                    1391 	.db	120
      001A9F 06                    1392 	.sleb128	6
      001AA0 00 00 89 D2           1393 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      001AA4 00 00 89 D7           1394 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      001AA8 00 02                 1395 	.dw	2
      001AAA 78                    1396 	.db	120
      001AAB 0C                    1397 	.sleb128	12
      001AAC 00 00 89 D0           1398 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      001AB0 00 00 89 D2           1399 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      001AB4 00 02                 1400 	.dw	2
      001AB6 78                    1401 	.db	120
      001AB7 0B                    1402 	.sleb128	11
      001AB8 00 00 89 CE           1403 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      001ABC 00 00 89 D0           1404 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      001AC0 00 02                 1405 	.dw	2
      001AC2 78                    1406 	.db	120
      001AC3 0A                    1407 	.sleb128	10
      001AC4 00 00 89 CC           1408 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      001AC8 00 00 89 CE           1409 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      001ACC 00 02                 1410 	.dw	2
      001ACE 78                    1411 	.db	120
      001ACF 09                    1412 	.sleb128	9
      001AD0 00 00 89 CA           1413 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      001AD4 00 00 89 CC           1414 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      001AD8 00 02                 1415 	.dw	2
      001ADA 78                    1416 	.db	120
      001ADB 07                    1417 	.sleb128	7
      001ADC 00 00 89 C1           1418 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      001AE0 00 00 89 CA           1419 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      001AE4 00 02                 1420 	.dw	2
      001AE6 78                    1421 	.db	120
      001AE7 06                    1422 	.sleb128	6
      001AE8 00 00 89 BC           1423 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      001AEC 00 00 89 C1           1424 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      001AF0 00 02                 1425 	.dw	2
      001AF2 78                    1426 	.db	120
      001AF3 0C                    1427 	.sleb128	12
      001AF4 00 00 89 BA           1428 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      001AF8 00 00 89 BC           1429 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      001AFC 00 02                 1430 	.dw	2
      001AFE 78                    1431 	.db	120
      001AFF 0B                    1432 	.sleb128	11
      001B00 00 00 89 B8           1433 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      001B04 00 00 89 BA           1434 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      001B08 00 02                 1435 	.dw	2
      001B0A 78                    1436 	.db	120
      001B0B 0A                    1437 	.sleb128	10
      001B0C 00 00 89 B6           1438 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      001B10 00 00 89 B8           1439 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      001B14 00 02                 1440 	.dw	2
      001B16 78                    1441 	.db	120
      001B17 09                    1442 	.sleb128	9
      001B18 00 00 89 B4           1443 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      001B1C 00 00 89 B6           1444 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      001B20 00 02                 1445 	.dw	2
      001B22 78                    1446 	.db	120
      001B23 07                    1447 	.sleb128	7
      001B24 00 00 89 B2           1448 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      001B28 00 00 89 B4           1449 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      001B2C 00 02                 1450 	.dw	2
      001B2E 78                    1451 	.db	120
      001B2F 06                    1452 	.sleb128	6
      001B30 00 00 89 A9           1453 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      001B34 00 00 89 B2           1454 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      001B38 00 02                 1455 	.dw	2
      001B3A 78                    1456 	.db	120
      001B3B 06                    1457 	.sleb128	6
      001B3C 00 00 89 A0           1458 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      001B40 00 00 89 A9           1459 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      001B44 00 02                 1460 	.dw	2
      001B46 78                    1461 	.db	120
      001B47 06                    1462 	.sleb128	6
      001B48 00 00 89 97           1463 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      001B4C 00 00 89 A0           1464 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      001B50 00 02                 1465 	.dw	2
      001B52 78                    1466 	.db	120
      001B53 06                    1467 	.sleb128	6
      001B54 00 00 89 8E           1468 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      001B58 00 00 89 97           1469 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      001B5C 00 02                 1470 	.dw	2
      001B5E 78                    1471 	.db	120
      001B5F 06                    1472 	.sleb128	6
      001B60 00 00 89 85           1473 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      001B64 00 00 89 8E           1474 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      001B68 00 02                 1475 	.dw	2
      001B6A 78                    1476 	.db	120
      001B6B 06                    1477 	.sleb128	6
      001B6C 00 00 89 7C           1478 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      001B70 00 00 89 85           1479 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      001B74 00 02                 1480 	.dw	2
      001B76 78                    1481 	.db	120
      001B77 06                    1482 	.sleb128	6
      001B78 00 00 89 73           1483 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      001B7C 00 00 89 7C           1484 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      001B80 00 02                 1485 	.dw	2
      001B82 78                    1486 	.db	120
      001B83 06                    1487 	.sleb128	6
      001B84 00 00 89 6A           1488 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      001B88 00 00 89 73           1489 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      001B8C 00 02                 1490 	.dw	2
      001B8E 78                    1491 	.db	120
      001B8F 06                    1492 	.sleb128	6
      001B90 00 00 89 61           1493 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      001B94 00 00 89 6A           1494 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      001B98 00 02                 1495 	.dw	2
      001B9A 78                    1496 	.db	120
      001B9B 06                    1497 	.sleb128	6
      001B9C 00 00 89 58           1498 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      001BA0 00 00 89 61           1499 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      001BA4 00 02                 1500 	.dw	2
      001BA6 78                    1501 	.db	120
      001BA7 06                    1502 	.sleb128	6
      001BA8 00 00 89 48           1503 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      001BAC 00 00 89 58           1504 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      001BB0 00 02                 1505 	.dw	2
      001BB2 78                    1506 	.db	120
      001BB3 06                    1507 	.sleb128	6
      001BB4 00 00 89 46           1508 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      001BB8 00 00 89 48           1509 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      001BBC 00 02                 1510 	.dw	2
      001BBE 78                    1511 	.db	120
      001BBF 01                    1512 	.sleb128	1
      001BC0 00 00 00 00           1513 	.dw	0,0
      001BC4 00 00 00 00           1514 	.dw	0,0
      001BC8 00 00 89 33           1515 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      001BCC 00 00 89 46           1516 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$8)
      001BD0 00 02                 1517 	.dw	2
      001BD2 78                    1518 	.db	120
      001BD3 01                    1519 	.sleb128	1
      001BD4 00 00 00 00           1520 	.dw	0,0
      001BD8 00 00 00 00           1521 	.dw	0,0
                                   1522 
                                   1523 	.area .debug_abbrev (NOLOAD)
      0002E7                       1524 Ldebug_abbrev:
      0002E7 06                    1525 	.uleb128	6
      0002E8 0F                    1526 	.uleb128	15
      0002E9 00                    1527 	.db	0
      0002EA 0B                    1528 	.uleb128	11
      0002EB 0B                    1529 	.uleb128	11
      0002EC 49                    1530 	.uleb128	73
      0002ED 13                    1531 	.uleb128	19
      0002EE 00                    1532 	.uleb128	0
      0002EF 00                    1533 	.uleb128	0
      0002F0 04                    1534 	.uleb128	4
      0002F1 35                    1535 	.uleb128	53
      0002F2 00                    1536 	.db	0
      0002F3 49                    1537 	.uleb128	73
      0002F4 13                    1538 	.uleb128	19
      0002F5 00                    1539 	.uleb128	0
      0002F6 00                    1540 	.uleb128	0
      0002F7 07                    1541 	.uleb128	7
      0002F8 05                    1542 	.uleb128	5
      0002F9 00                    1543 	.db	0
      0002FA 02                    1544 	.uleb128	2
      0002FB 0A                    1545 	.uleb128	10
      0002FC 03                    1546 	.uleb128	3
      0002FD 08                    1547 	.uleb128	8
      0002FE 49                    1548 	.uleb128	73
      0002FF 13                    1549 	.uleb128	19
      000300 00                    1550 	.uleb128	0
      000301 00                    1551 	.uleb128	0
      000302 0D                    1552 	.uleb128	13
      000303 01                    1553 	.uleb128	1
      000304 01                    1554 	.db	1
      000305 01                    1555 	.uleb128	1
      000306 13                    1556 	.uleb128	19
      000307 0B                    1557 	.uleb128	11
      000308 0B                    1558 	.uleb128	11
      000309 49                    1559 	.uleb128	73
      00030A 13                    1560 	.uleb128	19
      00030B 00                    1561 	.uleb128	0
      00030C 00                    1562 	.uleb128	0
      00030D 02                    1563 	.uleb128	2
      00030E 2E                    1564 	.uleb128	46
      00030F 01                    1565 	.db	1
      000310 01                    1566 	.uleb128	1
      000311 13                    1567 	.uleb128	19
      000312 03                    1568 	.uleb128	3
      000313 08                    1569 	.uleb128	8
      000314 11                    1570 	.uleb128	17
      000315 01                    1571 	.uleb128	1
      000316 12                    1572 	.uleb128	18
      000317 01                    1573 	.uleb128	1
      000318 3F                    1574 	.uleb128	63
      000319 0C                    1575 	.uleb128	12
      00031A 40                    1576 	.uleb128	64
      00031B 06                    1577 	.uleb128	6
      00031C 00                    1578 	.uleb128	0
      00031D 00                    1579 	.uleb128	0
      00031E 0F                    1580 	.uleb128	15
      00031F 34                    1581 	.uleb128	52
      000320 00                    1582 	.db	0
      000321 02                    1583 	.uleb128	2
      000322 0A                    1584 	.uleb128	10
      000323 03                    1585 	.uleb128	3
      000324 08                    1586 	.uleb128	8
      000325 49                    1587 	.uleb128	73
      000326 13                    1588 	.uleb128	19
      000327 00                    1589 	.uleb128	0
      000328 00                    1590 	.uleb128	0
      000329 0B                    1591 	.uleb128	11
      00032A 2E                    1592 	.uleb128	46
      00032B 01                    1593 	.db	1
      00032C 01                    1594 	.uleb128	1
      00032D 13                    1595 	.uleb128	19
      00032E 03                    1596 	.uleb128	3
      00032F 08                    1597 	.uleb128	8
      000330 11                    1598 	.uleb128	17
      000331 01                    1599 	.uleb128	1
      000332 12                    1600 	.uleb128	18
      000333 01                    1601 	.uleb128	1
      000334 3F                    1602 	.uleb128	63
      000335 0C                    1603 	.uleb128	12
      000336 40                    1604 	.uleb128	64
      000337 06                    1605 	.uleb128	6
      000338 49                    1606 	.uleb128	73
      000339 13                    1607 	.uleb128	19
      00033A 00                    1608 	.uleb128	0
      00033B 00                    1609 	.uleb128	0
      00033C 0C                    1610 	.uleb128	12
      00033D 26                    1611 	.uleb128	38
      00033E 00                    1612 	.db	0
      00033F 49                    1613 	.uleb128	73
      000340 13                    1614 	.uleb128	19
      000341 00                    1615 	.uleb128	0
      000342 00                    1616 	.uleb128	0
      000343 01                    1617 	.uleb128	1
      000344 11                    1618 	.uleb128	17
      000345 01                    1619 	.db	1
      000346 03                    1620 	.uleb128	3
      000347 08                    1621 	.uleb128	8
      000348 10                    1622 	.uleb128	16
      000349 06                    1623 	.uleb128	6
      00034A 13                    1624 	.uleb128	19
      00034B 0B                    1625 	.uleb128	11
      00034C 25                    1626 	.uleb128	37
      00034D 08                    1627 	.uleb128	8
      00034E 00                    1628 	.uleb128	0
      00034F 00                    1629 	.uleb128	0
      000350 05                    1630 	.uleb128	5
      000351 0D                    1631 	.uleb128	13
      000352 00                    1632 	.db	0
      000353 03                    1633 	.uleb128	3
      000354 08                    1634 	.uleb128	8
      000355 38                    1635 	.uleb128	56
      000356 0A                    1636 	.uleb128	10
      000357 49                    1637 	.uleb128	73
      000358 13                    1638 	.uleb128	19
      000359 00                    1639 	.uleb128	0
      00035A 00                    1640 	.uleb128	0
      00035B 0A                    1641 	.uleb128	10
      00035C 0B                    1642 	.uleb128	11
      00035D 00                    1643 	.db	0
      00035E 11                    1644 	.uleb128	17
      00035F 01                    1645 	.uleb128	1
      000360 12                    1646 	.uleb128	18
      000361 01                    1647 	.uleb128	1
      000362 00                    1648 	.uleb128	0
      000363 00                    1649 	.uleb128	0
      000364 09                    1650 	.uleb128	9
      000365 0B                    1651 	.uleb128	11
      000366 01                    1652 	.db	1
      000367 01                    1653 	.uleb128	1
      000368 13                    1654 	.uleb128	19
      000369 11                    1655 	.uleb128	17
      00036A 01                    1656 	.uleb128	1
      00036B 12                    1657 	.uleb128	18
      00036C 01                    1658 	.uleb128	1
      00036D 00                    1659 	.uleb128	0
      00036E 00                    1660 	.uleb128	0
      00036F 0E                    1661 	.uleb128	14
      000370 21                    1662 	.uleb128	33
      000371 00                    1663 	.db	0
      000372 2F                    1664 	.uleb128	47
      000373 0B                    1665 	.uleb128	11
      000374 00                    1666 	.uleb128	0
      000375 00                    1667 	.uleb128	0
      000376 03                    1668 	.uleb128	3
      000377 13                    1669 	.uleb128	19
      000378 01                    1670 	.db	1
      000379 01                    1671 	.uleb128	1
      00037A 13                    1672 	.uleb128	19
      00037B 03                    1673 	.uleb128	3
      00037C 08                    1674 	.uleb128	8
      00037D 0B                    1675 	.uleb128	11
      00037E 0B                    1676 	.uleb128	11
      00037F 00                    1677 	.uleb128	0
      000380 00                    1678 	.uleb128	0
      000381 08                    1679 	.uleb128	8
      000382 24                    1680 	.uleb128	36
      000383 00                    1681 	.db	0
      000384 03                    1682 	.uleb128	3
      000385 08                    1683 	.uleb128	8
      000386 0B                    1684 	.uleb128	11
      000387 0B                    1685 	.uleb128	11
      000388 3E                    1686 	.uleb128	62
      000389 0B                    1687 	.uleb128	11
      00038A 00                    1688 	.uleb128	0
      00038B 00                    1689 	.uleb128	0
      00038C 00                    1690 	.uleb128	0
                                   1691 
                                   1692 	.area .debug_info (NOLOAD)
      00156D 00 00 03 D4           1693 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001571                       1694 Ldebug_info_start:
      001571 00 02                 1695 	.dw	2
      001573 00 00 02 E7           1696 	.dw	0,(Ldebug_abbrev)
      001577 04                    1697 	.db	4
      001578 01                    1698 	.uleb128	1
      001579 2E 2E 2F 53 50 4C 2F  1699 	.ascii "../SPL/src/stm8s_gpio.c"
             73 72 63 2F 73 74 6D
             38 73 5F 67 70 69 6F
             2E 63
      001590 00                    1700 	.db	0
      001591 00 00 0D B3           1701 	.dw	0,(Ldebug_line_start+-4)
      001595 01                    1702 	.db	1
      001596 53 44 43 43 20 76 65  1703 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0015AF 00                    1704 	.db	0
      0015B0 02                    1705 	.uleb128	2
      0015B1 00 00 00 CA           1706 	.dw	0,202
      0015B5 47 50 49 4F 5F 44 65  1707 	.ascii "GPIO_DeInit"
             49 6E 69 74
      0015C0 00                    1708 	.db	0
      0015C1 00 00 89 33           1709 	.dw	0,(_GPIO_DeInit)
      0015C5 00 00 89 46           1710 	.dw	0,(XG$GPIO_DeInit$0$0+1)
      0015C9 01                    1711 	.db	1
      0015CA 00 00 1B C8           1712 	.dw	0,(Ldebug_loc_start+804)
      0015CE 03                    1713 	.uleb128	3
      0015CF 00 00 00 B5           1714 	.dw	0,181
      0015D3 47 50 49 4F 5F 73 74  1715 	.ascii "GPIO_struct"
             72 75 63 74
      0015DE 00                    1716 	.db	0
      0015DF 05                    1717 	.db	5
      0015E0 04                    1718 	.uleb128	4
      0015E1 00 00 00 CA           1719 	.dw	0,202
      0015E5 05                    1720 	.uleb128	5
      0015E6 4F 44 52              1721 	.ascii "ODR"
      0015E9 00                    1722 	.db	0
      0015EA 02                    1723 	.db	2
      0015EB 23                    1724 	.db	35
      0015EC 00                    1725 	.uleb128	0
      0015ED 00 00 00 73           1726 	.dw	0,115
      0015F1 05                    1727 	.uleb128	5
      0015F2 49 44 52              1728 	.ascii "IDR"
      0015F5 00                    1729 	.db	0
      0015F6 02                    1730 	.db	2
      0015F7 23                    1731 	.db	35
      0015F8 01                    1732 	.uleb128	1
      0015F9 00 00 00 73           1733 	.dw	0,115
      0015FD 05                    1734 	.uleb128	5
      0015FE 44 44 52              1735 	.ascii "DDR"
      001601 00                    1736 	.db	0
      001602 02                    1737 	.db	2
      001603 23                    1738 	.db	35
      001604 02                    1739 	.uleb128	2
      001605 00 00 00 73           1740 	.dw	0,115
      001609 05                    1741 	.uleb128	5
      00160A 43 52 31              1742 	.ascii "CR1"
      00160D 00                    1743 	.db	0
      00160E 02                    1744 	.db	2
      00160F 23                    1745 	.db	35
      001610 03                    1746 	.uleb128	3
      001611 00 00 00 73           1747 	.dw	0,115
      001615 05                    1748 	.uleb128	5
      001616 43 52 32              1749 	.ascii "CR2"
      001619 00                    1750 	.db	0
      00161A 02                    1751 	.db	2
      00161B 23                    1752 	.db	35
      00161C 04                    1753 	.uleb128	4
      00161D 00 00 00 73           1754 	.dw	0,115
      001621 00                    1755 	.uleb128	0
      001622 06                    1756 	.uleb128	6
      001623 02                    1757 	.db	2
      001624 00 00 00 61           1758 	.dw	0,97
      001628 07                    1759 	.uleb128	7
      001629 02                    1760 	.db	2
      00162A 91                    1761 	.db	145
      00162B 02                    1762 	.sleb128	2
      00162C 47 50 49 4F 78        1763 	.ascii "GPIOx"
      001631 00                    1764 	.db	0
      001632 00 00 00 B5           1765 	.dw	0,181
      001636 00                    1766 	.uleb128	0
      001637 08                    1767 	.uleb128	8
      001638 75 6E 73 69 67 6E 65  1768 	.ascii "unsigned char"
             64 20 63 68 61 72
      001645 00                    1769 	.db	0
      001646 01                    1770 	.db	1
      001647 08                    1771 	.db	8
      001648 02                    1772 	.uleb128	2
      001649 00 00 01 76           1773 	.dw	0,374
      00164D 47 50 49 4F 5F 49 6E  1774 	.ascii "GPIO_Init"
             69 74
      001656 00                    1775 	.db	0
      001657 00 00 89 46           1776 	.dw	0,(_GPIO_Init)
      00165B 00 00 8A 5C           1777 	.dw	0,(XG$GPIO_Init$0$0+1)
      00165F 01                    1778 	.db	1
      001660 00 00 1A 28           1779 	.dw	0,(Ldebug_loc_start+388)
      001664 07                    1780 	.uleb128	7
      001665 02                    1781 	.db	2
      001666 91                    1782 	.db	145
      001667 02                    1783 	.sleb128	2
      001668 47 50 49 4F 78        1784 	.ascii "GPIOx"
      00166D 00                    1785 	.db	0
      00166E 00 00 00 B5           1786 	.dw	0,181
      001672 07                    1787 	.uleb128	7
      001673 02                    1788 	.db	2
      001674 91                    1789 	.db	145
      001675 04                    1790 	.sleb128	4
      001676 47 50 49 4F 5F 50 69  1791 	.ascii "GPIO_Pin"
             6E
      00167E 00                    1792 	.db	0
      00167F 00 00 01 76           1793 	.dw	0,374
      001683 07                    1794 	.uleb128	7
      001684 02                    1795 	.db	2
      001685 91                    1796 	.db	145
      001686 05                    1797 	.sleb128	5
      001687 47 50 49 4F 5F 4D 6F  1798 	.ascii "GPIO_Mode"
             64 65
      001690 00                    1799 	.db	0
      001691 00 00 01 76           1800 	.dw	0,374
      001695 09                    1801 	.uleb128	9
      001696 00 00 01 48           1802 	.dw	0,328
      00169A 00 00 89 FC           1803 	.dw	0,(Sstm8s_gpio$GPIO_Init$43)
      00169E 00 00 8A 1A           1804 	.dw	0,(Sstm8s_gpio$GPIO_Init$54)
      0016A2 0A                    1805 	.uleb128	10
      0016A3 00 00 8A 07           1806 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      0016A7 00 00 8A 0B           1807 	.dw	0,(Sstm8s_gpio$GPIO_Init$49)
      0016AB 0A                    1808 	.uleb128	10
      0016AC 00 00 8A 0E           1809 	.dw	0,(Sstm8s_gpio$GPIO_Init$50)
      0016B0 00 00 8A 12           1810 	.dw	0,(Sstm8s_gpio$GPIO_Init$52)
      0016B4 00                    1811 	.uleb128	0
      0016B5 0A                    1812 	.uleb128	10
      0016B6 00 00 8A 1D           1813 	.dw	0,(Sstm8s_gpio$GPIO_Init$55)
      0016BA 00 00 8A 25           1814 	.dw	0,(Sstm8s_gpio$GPIO_Init$57)
      0016BE 0A                    1815 	.uleb128	10
      0016BF 00 00 8A 35           1816 	.dw	0,(Sstm8s_gpio$GPIO_Init$62)
      0016C3 00 00 8A 38           1817 	.dw	0,(Sstm8s_gpio$GPIO_Init$64)
      0016C7 0A                    1818 	.uleb128	10
      0016C8 00 00 8A 3B           1819 	.dw	0,(Sstm8s_gpio$GPIO_Init$65)
      0016CC 00 00 8A 3E           1820 	.dw	0,(Sstm8s_gpio$GPIO_Init$67)
      0016D0 0A                    1821 	.uleb128	10
      0016D1 00 00 8A 4C           1822 	.dw	0,(Sstm8s_gpio$GPIO_Init$72)
      0016D5 00 00 8A 51           1823 	.dw	0,(Sstm8s_gpio$GPIO_Init$74)
      0016D9 0A                    1824 	.uleb128	10
      0016DA 00 00 8A 54           1825 	.dw	0,(Sstm8s_gpio$GPIO_Init$75)
      0016DE 00 00 8A 59           1826 	.dw	0,(Sstm8s_gpio$GPIO_Init$77)
      0016E2 00                    1827 	.uleb128	0
      0016E3 08                    1828 	.uleb128	8
      0016E4 75 6E 73 69 67 6E 65  1829 	.ascii "unsigned char"
             64 20 63 68 61 72
      0016F1 00                    1830 	.db	0
      0016F2 01                    1831 	.db	1
      0016F3 08                    1832 	.db	8
      0016F4 02                    1833 	.uleb128	2
      0016F5 00 00 01 C3           1834 	.dw	0,451
      0016F9 47 50 49 4F 5F 57 72  1835 	.ascii "GPIO_Write"
             69 74 65
      001703 00                    1836 	.db	0
      001704 00 00 8A 5C           1837 	.dw	0,(_GPIO_Write)
      001708 00 00 8A 62           1838 	.dw	0,(XG$GPIO_Write$0$0+1)
      00170C 01                    1839 	.db	1
      00170D 00 00 1A 14           1840 	.dw	0,(Ldebug_loc_start+368)
      001711 07                    1841 	.uleb128	7
      001712 02                    1842 	.db	2
      001713 91                    1843 	.db	145
      001714 02                    1844 	.sleb128	2
      001715 47 50 49 4F 78        1845 	.ascii "GPIOx"
      00171A 00                    1846 	.db	0
      00171B 00 00 00 B5           1847 	.dw	0,181
      00171F 07                    1848 	.uleb128	7
      001720 02                    1849 	.db	2
      001721 91                    1850 	.db	145
      001722 04                    1851 	.sleb128	4
      001723 50 6F 72 74 56 61 6C  1852 	.ascii "PortVal"
      00172A 00                    1853 	.db	0
      00172B 00 00 01 76           1854 	.dw	0,374
      00172F 00                    1855 	.uleb128	0
      001730 02                    1856 	.uleb128	2
      001731 00 00 02 04           1857 	.dw	0,516
      001735 47 50 49 4F 5F 57 72  1858 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      001743 00                    1859 	.db	0
      001744 00 00 8A 62           1860 	.dw	0,(_GPIO_WriteHigh)
      001748 00 00 8A 69           1861 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      00174C 01                    1862 	.db	1
      00174D 00 00 1A 00           1863 	.dw	0,(Ldebug_loc_start+348)
      001751 07                    1864 	.uleb128	7
      001752 02                    1865 	.db	2
      001753 91                    1866 	.db	145
      001754 02                    1867 	.sleb128	2
      001755 47 50 49 4F 78        1868 	.ascii "GPIOx"
      00175A 00                    1869 	.db	0
      00175B 00 00 00 B5           1870 	.dw	0,181
      00175F 07                    1871 	.uleb128	7
      001760 02                    1872 	.db	2
      001761 91                    1873 	.db	145
      001762 04                    1874 	.sleb128	4
      001763 50 6F 72 74 50 69 6E  1875 	.ascii "PortPins"
             73
      00176B 00                    1876 	.db	0
      00176C 00 00 01 76           1877 	.dw	0,374
      001770 00                    1878 	.uleb128	0
      001771 02                    1879 	.uleb128	2
      001772 00 00 02 44           1880 	.dw	0,580
      001776 47 50 49 4F 5F 57 72  1881 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      001783 00                    1882 	.db	0
      001784 00 00 8A 69           1883 	.dw	0,(_GPIO_WriteLow)
      001788 00 00 8A 77           1884 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      00178C 01                    1885 	.db	1
      00178D 00 00 19 D4           1886 	.dw	0,(Ldebug_loc_start+304)
      001791 07                    1887 	.uleb128	7
      001792 02                    1888 	.db	2
      001793 91                    1889 	.db	145
      001794 02                    1890 	.sleb128	2
      001795 47 50 49 4F 78        1891 	.ascii "GPIOx"
      00179A 00                    1892 	.db	0
      00179B 00 00 00 B5           1893 	.dw	0,181
      00179F 07                    1894 	.uleb128	7
      0017A0 02                    1895 	.db	2
      0017A1 91                    1896 	.db	145
      0017A2 04                    1897 	.sleb128	4
      0017A3 50 6F 72 74 50 69 6E  1898 	.ascii "PortPins"
             73
      0017AB 00                    1899 	.db	0
      0017AC 00 00 01 76           1900 	.dw	0,374
      0017B0 00                    1901 	.uleb128	0
      0017B1 02                    1902 	.uleb128	2
      0017B2 00 00 02 88           1903 	.dw	0,648
      0017B6 47 50 49 4F 5F 57 72  1904 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      0017C7 00                    1905 	.db	0
      0017C8 00 00 8A 77           1906 	.dw	0,(_GPIO_WriteReverse)
      0017CC 00 00 8A 7E           1907 	.dw	0,(XG$GPIO_WriteReverse$0$0+1)
      0017D0 01                    1908 	.db	1
      0017D1 00 00 19 C0           1909 	.dw	0,(Ldebug_loc_start+284)
      0017D5 07                    1910 	.uleb128	7
      0017D6 02                    1911 	.db	2
      0017D7 91                    1912 	.db	145
      0017D8 02                    1913 	.sleb128	2
      0017D9 47 50 49 4F 78        1914 	.ascii "GPIOx"
      0017DE 00                    1915 	.db	0
      0017DF 00 00 00 B5           1916 	.dw	0,181
      0017E3 07                    1917 	.uleb128	7
      0017E4 02                    1918 	.db	2
      0017E5 91                    1919 	.db	145
      0017E6 04                    1920 	.sleb128	4
      0017E7 50 6F 72 74 50 69 6E  1921 	.ascii "PortPins"
             73
      0017EF 00                    1922 	.db	0
      0017F0 00 00 01 76           1923 	.dw	0,374
      0017F4 00                    1924 	.uleb128	0
      0017F5 0B                    1925 	.uleb128	11
      0017F6 00 00 02 C1           1926 	.dw	0,705
      0017FA 47 50 49 4F 5F 52 65  1927 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      00180D 00                    1928 	.db	0
      00180E 00 00 8A 7E           1929 	.dw	0,(_GPIO_ReadOutputData)
      001812 00 00 8A 82           1930 	.dw	0,(XG$GPIO_ReadOutputData$0$0+1)
      001816 01                    1931 	.db	1
      001817 00 00 19 AC           1932 	.dw	0,(Ldebug_loc_start+264)
      00181B 00 00 01 76           1933 	.dw	0,374
      00181F 07                    1934 	.uleb128	7
      001820 02                    1935 	.db	2
      001821 91                    1936 	.db	145
      001822 02                    1937 	.sleb128	2
      001823 47 50 49 4F 78        1938 	.ascii "GPIOx"
      001828 00                    1939 	.db	0
      001829 00 00 00 B5           1940 	.dw	0,181
      00182D 00                    1941 	.uleb128	0
      00182E 0B                    1942 	.uleb128	11
      00182F 00 00 02 F9           1943 	.dw	0,761
      001833 47 50 49 4F 5F 52 65  1944 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      001845 00                    1945 	.db	0
      001846 00 00 8A 82           1946 	.dw	0,(_GPIO_ReadInputData)
      00184A 00 00 8A 87           1947 	.dw	0,(XG$GPIO_ReadInputData$0$0+1)
      00184E 01                    1948 	.db	1
      00184F 00 00 19 98           1949 	.dw	0,(Ldebug_loc_start+244)
      001853 00 00 01 76           1950 	.dw	0,374
      001857 07                    1951 	.uleb128	7
      001858 02                    1952 	.db	2
      001859 91                    1953 	.db	145
      00185A 02                    1954 	.sleb128	2
      00185B 47 50 49 4F 78        1955 	.ascii "GPIOx"
      001860 00                    1956 	.db	0
      001861 00 00 00 B5           1957 	.dw	0,181
      001865 00                    1958 	.uleb128	0
      001866 0B                    1959 	.uleb128	11
      001867 00 00 03 41           1960 	.dw	0,833
      00186B 47 50 49 4F 5F 52 65  1961 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      00187C 00                    1962 	.db	0
      00187D 00 00 8A 87           1963 	.dw	0,(_GPIO_ReadInputPin)
      001881 00 00 8A 8E           1964 	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
      001885 01                    1965 	.db	1
      001886 00 00 19 84           1966 	.dw	0,(Ldebug_loc_start+224)
      00188A 00 00 01 76           1967 	.dw	0,374
      00188E 07                    1968 	.uleb128	7
      00188F 02                    1969 	.db	2
      001890 91                    1970 	.db	145
      001891 02                    1971 	.sleb128	2
      001892 47 50 49 4F 78        1972 	.ascii "GPIOx"
      001897 00                    1973 	.db	0
      001898 00 00 00 B5           1974 	.dw	0,181
      00189C 07                    1975 	.uleb128	7
      00189D 02                    1976 	.db	2
      00189E 91                    1977 	.db	145
      00189F 04                    1978 	.sleb128	4
      0018A0 47 50 49 4F 5F 50 69  1979 	.ascii "GPIO_Pin"
             6E
      0018A8 00                    1980 	.db	0
      0018A9 00 00 01 76           1981 	.dw	0,374
      0018AD 00                    1982 	.uleb128	0
      0018AE 02                    1983 	.uleb128	2
      0018AF 00 00 03 B0           1984 	.dw	0,944
      0018B3 47 50 49 4F 5F 45 78  1985 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      0018CC 00                    1986 	.db	0
      0018CD 00 00 8A 8E           1987 	.dw	0,(_GPIO_ExternalPullUpConfig)
      0018D1 00 00 8A E2           1988 	.dw	0,(XG$GPIO_ExternalPullUpConfig$0$0+1)
      0018D5 01                    1989 	.db	1
      0018D6 00 00 18 A4           1990 	.dw	0,(Ldebug_loc_start)
      0018DA 07                    1991 	.uleb128	7
      0018DB 02                    1992 	.db	2
      0018DC 91                    1993 	.db	145
      0018DD 02                    1994 	.sleb128	2
      0018DE 47 50 49 4F 78        1995 	.ascii "GPIOx"
      0018E3 00                    1996 	.db	0
      0018E4 00 00 00 B5           1997 	.dw	0,181
      0018E8 07                    1998 	.uleb128	7
      0018E9 02                    1999 	.db	2
      0018EA 91                    2000 	.db	145
      0018EB 04                    2001 	.sleb128	4
      0018EC 47 50 49 4F 5F 50 69  2002 	.ascii "GPIO_Pin"
             6E
      0018F4 00                    2003 	.db	0
      0018F5 00 00 01 76           2004 	.dw	0,374
      0018F9 07                    2005 	.uleb128	7
      0018FA 02                    2006 	.db	2
      0018FB 91                    2007 	.db	145
      0018FC 05                    2008 	.sleb128	5
      0018FD 4E 65 77 53 74 61 74  2009 	.ascii "NewState"
             65
      001905 00                    2010 	.db	0
      001906 00 00 01 76           2011 	.dw	0,374
      00190A 0A                    2012 	.uleb128	10
      00190B 00 00 8A D0           2013 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$146)
      00190F 00 00 8A D3           2014 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$148)
      001913 0A                    2015 	.uleb128	10
      001914 00 00 8A D6           2016 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$149)
      001918 00 00 8A E0           2017 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$153)
      00191C 00                    2018 	.uleb128	0
      00191D 0C                    2019 	.uleb128	12
      00191E 00 00 01 76           2020 	.dw	0,374
      001922 0D                    2021 	.uleb128	13
      001923 00 00 03 C2           2022 	.dw	0,962
      001927 18                    2023 	.db	24
      001928 00 00 03 B0           2024 	.dw	0,944
      00192C 0E                    2025 	.uleb128	14
      00192D 17                    2026 	.db	23
      00192E 00                    2027 	.uleb128	0
      00192F 0F                    2028 	.uleb128	15
      001930 05                    2029 	.db	5
      001931 03                    2030 	.db	3
      001932 00 00 80 99           2031 	.dw	0,(___str_0)
      001936 5F 5F 73 74 72 5F 30  2032 	.ascii "__str_0"
      00193D 00                    2033 	.db	0
      00193E 00 00 03 B5           2034 	.dw	0,949
      001942 00                    2035 	.uleb128	0
      001943 00                    2036 	.uleb128	0
      001944 00                    2037 	.uleb128	0
      001945                       2038 Ldebug_info_end:
                                   2039 
                                   2040 	.area .debug_pubnames (NOLOAD)
      0004D3 00 00 00 D9           2041 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0004D7                       2042 Ldebug_pubnames_start:
      0004D7 00 02                 2043 	.dw	2
      0004D9 00 00 15 6D           2044 	.dw	0,(Ldebug_info_start-4)
      0004DD 00 00 03 D8           2045 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0004E1 00 00 00 43           2046 	.dw	0,67
      0004E5 47 50 49 4F 5F 44 65  2047 	.ascii "GPIO_DeInit"
             49 6E 69 74
      0004F0 00                    2048 	.db	0
      0004F1 00 00 00 DB           2049 	.dw	0,219
      0004F5 47 50 49 4F 5F 49 6E  2050 	.ascii "GPIO_Init"
             69 74
      0004FE 00                    2051 	.db	0
      0004FF 00 00 01 87           2052 	.dw	0,391
      000503 47 50 49 4F 5F 57 72  2053 	.ascii "GPIO_Write"
             69 74 65
      00050D 00                    2054 	.db	0
      00050E 00 00 01 C3           2055 	.dw	0,451
      000512 47 50 49 4F 5F 57 72  2056 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000520 00                    2057 	.db	0
      000521 00 00 02 04           2058 	.dw	0,516
      000525 47 50 49 4F 5F 57 72  2059 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000532 00                    2060 	.db	0
      000533 00 00 02 44           2061 	.dw	0,580
      000537 47 50 49 4F 5F 57 72  2062 	.ascii "GPIO_WriteReverse"
             69 74 65 52 65 76 65
             72 73 65
      000548 00                    2063 	.db	0
      000549 00 00 02 88           2064 	.dw	0,648
      00054D 47 50 49 4F 5F 52 65  2065 	.ascii "GPIO_ReadOutputData"
             61 64 4F 75 74 70 75
             74 44 61 74 61
      000560 00                    2066 	.db	0
      000561 00 00 02 C1           2067 	.dw	0,705
      000565 47 50 49 4F 5F 52 65  2068 	.ascii "GPIO_ReadInputData"
             61 64 49 6E 70 75 74
             44 61 74 61
      000577 00                    2069 	.db	0
      000578 00 00 02 F9           2070 	.dw	0,761
      00057C 47 50 49 4F 5F 52 65  2071 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      00058D 00                    2072 	.db	0
      00058E 00 00 03 41           2073 	.dw	0,833
      000592 47 50 49 4F 5F 45 78  2074 	.ascii "GPIO_ExternalPullUpConfig"
             74 65 72 6E 61 6C 50
             75 6C 6C 55 70 43 6F
             6E 66 69 67
      0005AB 00                    2075 	.db	0
      0005AC 00 00 00 00           2076 	.dw	0,0
      0005B0                       2077 Ldebug_pubnames_end:
                                   2078 
                                   2079 	.area .debug_frame (NOLOAD)
      00155D 00 00                 2080 	.dw	0
      00155F 00 0E                 2081 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      001561                       2082 Ldebug_CIE0_start:
      001561 FF FF                 2083 	.dw	0xffff
      001563 FF FF                 2084 	.dw	0xffff
      001565 01                    2085 	.db	1
      001566 00                    2086 	.db	0
      001567 01                    2087 	.uleb128	1
      001568 7F                    2088 	.sleb128	-1
      001569 09                    2089 	.db	9
      00156A 0C                    2090 	.db	12
      00156B 08                    2091 	.uleb128	8
      00156C 02                    2092 	.uleb128	2
      00156D 89                    2093 	.db	137
      00156E 01                    2094 	.uleb128	1
      00156F                       2095 Ldebug_CIE0_end:
      00156F 00 00 00 8A           2096 	.dw	0,138
      001573 00 00 15 5D           2097 	.dw	0,(Ldebug_CIE0_start-4)
      001577 00 00 8A 8E           2098 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)	;initial loc
      00157B 00 00 00 54           2099 	.dw	0,Sstm8s_gpio$GPIO_ExternalPullUpConfig$157-Sstm8s_gpio$GPIO_ExternalPullUpConfig$127
      00157F 01                    2100 	.db	1
      001580 00 00 8A 8E           2101 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$127)
      001584 0E                    2102 	.db	14
      001585 02                    2103 	.uleb128	2
      001586 01                    2104 	.db	1
      001587 00 00 8A 8F           2105 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$128)
      00158B 0E                    2106 	.db	14
      00158C 03                    2107 	.uleb128	3
      00158D 01                    2108 	.db	1
      00158E 00 00 8A 98           2109 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$130)
      001592 0E                    2110 	.db	14
      001593 04                    2111 	.uleb128	4
      001594 01                    2112 	.db	1
      001595 00 00 8A 9A           2113 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$131)
      001599 0E                    2114 	.db	14
      00159A 06                    2115 	.uleb128	6
      00159B 01                    2116 	.db	1
      00159C 00 00 8A 9C           2117 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$132)
      0015A0 0E                    2118 	.db	14
      0015A1 07                    2119 	.uleb128	7
      0015A2 01                    2120 	.db	1
      0015A3 00 00 8A 9E           2121 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$133)
      0015A7 0E                    2122 	.db	14
      0015A8 08                    2123 	.uleb128	8
      0015A9 01                    2124 	.db	1
      0015AA 00 00 8A A0           2125 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$134)
      0015AE 0E                    2126 	.db	14
      0015AF 09                    2127 	.uleb128	9
      0015B0 01                    2128 	.db	1
      0015B1 00 00 8A A5           2129 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$135)
      0015B5 0E                    2130 	.db	14
      0015B6 03                    2131 	.uleb128	3
      0015B7 01                    2132 	.db	1
      0015B8 00 00 8A B4           2133 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$137)
      0015BC 0E                    2134 	.db	14
      0015BD 03                    2135 	.uleb128	3
      0015BE 01                    2136 	.db	1
      0015BF 00 00 8A B6           2137 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$138)
      0015C3 0E                    2138 	.db	14
      0015C4 04                    2139 	.uleb128	4
      0015C5 01                    2140 	.db	1
      0015C6 00 00 8A B8           2141 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$139)
      0015CA 0E                    2142 	.db	14
      0015CB 06                    2143 	.uleb128	6
      0015CC 01                    2144 	.db	1
      0015CD 00 00 8A BA           2145 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$140)
      0015D1 0E                    2146 	.db	14
      0015D2 07                    2147 	.uleb128	7
      0015D3 01                    2148 	.db	1
      0015D4 00 00 8A BC           2149 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$141)
      0015D8 0E                    2150 	.db	14
      0015D9 08                    2151 	.uleb128	8
      0015DA 01                    2152 	.db	1
      0015DB 00 00 8A BE           2153 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$142)
      0015DF 0E                    2154 	.db	14
      0015E0 09                    2155 	.uleb128	9
      0015E1 01                    2156 	.db	1
      0015E2 00 00 8A C3           2157 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$143)
      0015E6 0E                    2158 	.db	14
      0015E7 03                    2159 	.uleb128	3
      0015E8 01                    2160 	.db	1
      0015E9 00 00 8A D7           2161 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$151)
      0015ED 0E                    2162 	.db	14
      0015EE 04                    2163 	.uleb128	4
      0015EF 01                    2164 	.db	1
      0015F0 00 00 8A DD           2165 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$152)
      0015F4 0E                    2166 	.db	14
      0015F5 03                    2167 	.uleb128	3
      0015F6 01                    2168 	.db	1
      0015F7 00 00 8A E1           2169 	.dw	0,(Sstm8s_gpio$GPIO_ExternalPullUpConfig$155)
      0015FB 0E                    2170 	.db	14
      0015FC 02                    2171 	.uleb128	2
                                   2172 
                                   2173 	.area .debug_frame (NOLOAD)
      0015FD 00 00                 2174 	.dw	0
      0015FF 00 0E                 2175 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001601                       2176 Ldebug_CIE1_start:
      001601 FF FF                 2177 	.dw	0xffff
      001603 FF FF                 2178 	.dw	0xffff
      001605 01                    2179 	.db	1
      001606 00                    2180 	.db	0
      001607 01                    2181 	.uleb128	1
      001608 7F                    2182 	.sleb128	-1
      001609 09                    2183 	.db	9
      00160A 0C                    2184 	.db	12
      00160B 08                    2185 	.uleb128	8
      00160C 02                    2186 	.uleb128	2
      00160D 89                    2187 	.db	137
      00160E 01                    2188 	.uleb128	1
      00160F                       2189 Ldebug_CIE1_end:
      00160F 00 00 00 13           2190 	.dw	0,19
      001613 00 00 15 FD           2191 	.dw	0,(Ldebug_CIE1_start-4)
      001617 00 00 8A 87           2192 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)	;initial loc
      00161B 00 00 00 07           2193 	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$125-Sstm8s_gpio$GPIO_ReadInputPin$121
      00161F 01                    2194 	.db	1
      001620 00 00 8A 87           2195 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$121)
      001624 0E                    2196 	.db	14
      001625 02                    2197 	.uleb128	2
                                   2198 
                                   2199 	.area .debug_frame (NOLOAD)
      001626 00 00                 2200 	.dw	0
      001628 00 0E                 2201 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00162A                       2202 Ldebug_CIE2_start:
      00162A FF FF                 2203 	.dw	0xffff
      00162C FF FF                 2204 	.dw	0xffff
      00162E 01                    2205 	.db	1
      00162F 00                    2206 	.db	0
      001630 01                    2207 	.uleb128	1
      001631 7F                    2208 	.sleb128	-1
      001632 09                    2209 	.db	9
      001633 0C                    2210 	.db	12
      001634 08                    2211 	.uleb128	8
      001635 02                    2212 	.uleb128	2
      001636 89                    2213 	.db	137
      001637 01                    2214 	.uleb128	1
      001638                       2215 Ldebug_CIE2_end:
      001638 00 00 00 13           2216 	.dw	0,19
      00163C 00 00 16 26           2217 	.dw	0,(Ldebug_CIE2_start-4)
      001640 00 00 8A 82           2218 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)	;initial loc
      001644 00 00 00 05           2219 	.dw	0,Sstm8s_gpio$GPIO_ReadInputData$119-Sstm8s_gpio$GPIO_ReadInputData$115
      001648 01                    2220 	.db	1
      001649 00 00 8A 82           2221 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputData$115)
      00164D 0E                    2222 	.db	14
      00164E 02                    2223 	.uleb128	2
                                   2224 
                                   2225 	.area .debug_frame (NOLOAD)
      00164F 00 00                 2226 	.dw	0
      001651 00 0E                 2227 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      001653                       2228 Ldebug_CIE3_start:
      001653 FF FF                 2229 	.dw	0xffff
      001655 FF FF                 2230 	.dw	0xffff
      001657 01                    2231 	.db	1
      001658 00                    2232 	.db	0
      001659 01                    2233 	.uleb128	1
      00165A 7F                    2234 	.sleb128	-1
      00165B 09                    2235 	.db	9
      00165C 0C                    2236 	.db	12
      00165D 08                    2237 	.uleb128	8
      00165E 02                    2238 	.uleb128	2
      00165F 89                    2239 	.db	137
      001660 01                    2240 	.uleb128	1
      001661                       2241 Ldebug_CIE3_end:
      001661 00 00 00 13           2242 	.dw	0,19
      001665 00 00 16 4F           2243 	.dw	0,(Ldebug_CIE3_start-4)
      001669 00 00 8A 7E           2244 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)	;initial loc
      00166D 00 00 00 04           2245 	.dw	0,Sstm8s_gpio$GPIO_ReadOutputData$113-Sstm8s_gpio$GPIO_ReadOutputData$109
      001671 01                    2246 	.db	1
      001672 00 00 8A 7E           2247 	.dw	0,(Sstm8s_gpio$GPIO_ReadOutputData$109)
      001676 0E                    2248 	.db	14
      001677 02                    2249 	.uleb128	2
                                   2250 
                                   2251 	.area .debug_frame (NOLOAD)
      001678 00 00                 2252 	.dw	0
      00167A 00 0E                 2253 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      00167C                       2254 Ldebug_CIE4_start:
      00167C FF FF                 2255 	.dw	0xffff
      00167E FF FF                 2256 	.dw	0xffff
      001680 01                    2257 	.db	1
      001681 00                    2258 	.db	0
      001682 01                    2259 	.uleb128	1
      001683 7F                    2260 	.sleb128	-1
      001684 09                    2261 	.db	9
      001685 0C                    2262 	.db	12
      001686 08                    2263 	.uleb128	8
      001687 02                    2264 	.uleb128	2
      001688 89                    2265 	.db	137
      001689 01                    2266 	.uleb128	1
      00168A                       2267 Ldebug_CIE4_end:
      00168A 00 00 00 13           2268 	.dw	0,19
      00168E 00 00 16 78           2269 	.dw	0,(Ldebug_CIE4_start-4)
      001692 00 00 8A 77           2270 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)	;initial loc
      001696 00 00 00 07           2271 	.dw	0,Sstm8s_gpio$GPIO_WriteReverse$107-Sstm8s_gpio$GPIO_WriteReverse$103
      00169A 01                    2272 	.db	1
      00169B 00 00 8A 77           2273 	.dw	0,(Sstm8s_gpio$GPIO_WriteReverse$103)
      00169F 0E                    2274 	.db	14
      0016A0 02                    2275 	.uleb128	2
                                   2276 
                                   2277 	.area .debug_frame (NOLOAD)
      0016A1 00 00                 2278 	.dw	0
      0016A3 00 0E                 2279 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0016A5                       2280 Ldebug_CIE5_start:
      0016A5 FF FF                 2281 	.dw	0xffff
      0016A7 FF FF                 2282 	.dw	0xffff
      0016A9 01                    2283 	.db	1
      0016AA 00                    2284 	.db	0
      0016AB 01                    2285 	.uleb128	1
      0016AC 7F                    2286 	.sleb128	-1
      0016AD 09                    2287 	.db	9
      0016AE 0C                    2288 	.db	12
      0016AF 08                    2289 	.uleb128	8
      0016B0 02                    2290 	.uleb128	2
      0016B1 89                    2291 	.db	137
      0016B2 01                    2292 	.uleb128	1
      0016B3                       2293 Ldebug_CIE5_end:
      0016B3 00 00 00 21           2294 	.dw	0,33
      0016B7 00 00 16 A1           2295 	.dw	0,(Ldebug_CIE5_start-4)
      0016BB 00 00 8A 69           2296 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)	;initial loc
      0016BF 00 00 00 0E           2297 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$101-Sstm8s_gpio$GPIO_WriteLow$95
      0016C3 01                    2298 	.db	1
      0016C4 00 00 8A 69           2299 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$95)
      0016C8 0E                    2300 	.db	14
      0016C9 02                    2301 	.uleb128	2
      0016CA 01                    2302 	.db	1
      0016CB 00 00 8A 6A           2303 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$96)
      0016CF 0E                    2304 	.db	14
      0016D0 03                    2305 	.uleb128	3
      0016D1 01                    2306 	.db	1
      0016D2 00 00 8A 76           2307 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$99)
      0016D6 0E                    2308 	.db	14
      0016D7 02                    2309 	.uleb128	2
                                   2310 
                                   2311 	.area .debug_frame (NOLOAD)
      0016D8 00 00                 2312 	.dw	0
      0016DA 00 0E                 2313 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      0016DC                       2314 Ldebug_CIE6_start:
      0016DC FF FF                 2315 	.dw	0xffff
      0016DE FF FF                 2316 	.dw	0xffff
      0016E0 01                    2317 	.db	1
      0016E1 00                    2318 	.db	0
      0016E2 01                    2319 	.uleb128	1
      0016E3 7F                    2320 	.sleb128	-1
      0016E4 09                    2321 	.db	9
      0016E5 0C                    2322 	.db	12
      0016E6 08                    2323 	.uleb128	8
      0016E7 02                    2324 	.uleb128	2
      0016E8 89                    2325 	.db	137
      0016E9 01                    2326 	.uleb128	1
      0016EA                       2327 Ldebug_CIE6_end:
      0016EA 00 00 00 13           2328 	.dw	0,19
      0016EE 00 00 16 D8           2329 	.dw	0,(Ldebug_CIE6_start-4)
      0016F2 00 00 8A 62           2330 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)	;initial loc
      0016F6 00 00 00 07           2331 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$93-Sstm8s_gpio$GPIO_WriteHigh$89
      0016FA 01                    2332 	.db	1
      0016FB 00 00 8A 62           2333 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$89)
      0016FF 0E                    2334 	.db	14
      001700 02                    2335 	.uleb128	2
                                   2336 
                                   2337 	.area .debug_frame (NOLOAD)
      001701 00 00                 2338 	.dw	0
      001703 00 0E                 2339 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      001705                       2340 Ldebug_CIE7_start:
      001705 FF FF                 2341 	.dw	0xffff
      001707 FF FF                 2342 	.dw	0xffff
      001709 01                    2343 	.db	1
      00170A 00                    2344 	.db	0
      00170B 01                    2345 	.uleb128	1
      00170C 7F                    2346 	.sleb128	-1
      00170D 09                    2347 	.db	9
      00170E 0C                    2348 	.db	12
      00170F 08                    2349 	.uleb128	8
      001710 02                    2350 	.uleb128	2
      001711 89                    2351 	.db	137
      001712 01                    2352 	.uleb128	1
      001713                       2353 Ldebug_CIE7_end:
      001713 00 00 00 13           2354 	.dw	0,19
      001717 00 00 17 01           2355 	.dw	0,(Ldebug_CIE7_start-4)
      00171B 00 00 8A 5C           2356 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)	;initial loc
      00171F 00 00 00 06           2357 	.dw	0,Sstm8s_gpio$GPIO_Write$87-Sstm8s_gpio$GPIO_Write$83
      001723 01                    2358 	.db	1
      001724 00 00 8A 5C           2359 	.dw	0,(Sstm8s_gpio$GPIO_Write$83)
      001728 0E                    2360 	.db	14
      001729 02                    2361 	.uleb128	2
                                   2362 
                                   2363 	.area .debug_frame (NOLOAD)
      00172A 00 00                 2364 	.dw	0
      00172C 00 0E                 2365 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      00172E                       2366 Ldebug_CIE8_start:
      00172E FF FF                 2367 	.dw	0xffff
      001730 FF FF                 2368 	.dw	0xffff
      001732 01                    2369 	.db	1
      001733 00                    2370 	.db	0
      001734 01                    2371 	.uleb128	1
      001735 7F                    2372 	.sleb128	-1
      001736 09                    2373 	.db	9
      001737 0C                    2374 	.db	12
      001738 08                    2375 	.uleb128	8
      001739 02                    2376 	.uleb128	2
      00173A 89                    2377 	.db	137
      00173B 01                    2378 	.uleb128	1
      00173C                       2379 Ldebug_CIE8_end:
      00173C 00 00 00 FA           2380 	.dw	0,250
      001740 00 00 17 2A           2381 	.dw	0,(Ldebug_CIE8_start-4)
      001744 00 00 89 46           2382 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)	;initial loc
      001748 00 00 01 16           2383 	.dw	0,Sstm8s_gpio$GPIO_Init$81-Sstm8s_gpio$GPIO_Init$10
      00174C 01                    2384 	.db	1
      00174D 00 00 89 46           2385 	.dw	0,(Sstm8s_gpio$GPIO_Init$10)
      001751 0E                    2386 	.db	14
      001752 02                    2387 	.uleb128	2
      001753 01                    2388 	.db	1
      001754 00 00 89 48           2389 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      001758 0E                    2390 	.db	14
      001759 07                    2391 	.uleb128	7
      00175A 01                    2392 	.db	1
      00175B 00 00 89 58           2393 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      00175F 0E                    2394 	.db	14
      001760 07                    2395 	.uleb128	7
      001761 01                    2396 	.db	1
      001762 00 00 89 61           2397 	.dw	0,(Sstm8s_gpio$GPIO_Init$14)
      001766 0E                    2398 	.db	14
      001767 07                    2399 	.uleb128	7
      001768 01                    2400 	.db	1
      001769 00 00 89 6A           2401 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      00176D 0E                    2402 	.db	14
      00176E 07                    2403 	.uleb128	7
      00176F 01                    2404 	.db	1
      001770 00 00 89 73           2405 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      001774 0E                    2406 	.db	14
      001775 07                    2407 	.uleb128	7
      001776 01                    2408 	.db	1
      001777 00 00 89 7C           2409 	.dw	0,(Sstm8s_gpio$GPIO_Init$17)
      00177B 0E                    2410 	.db	14
      00177C 07                    2411 	.uleb128	7
      00177D 01                    2412 	.db	1
      00177E 00 00 89 85           2413 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      001782 0E                    2414 	.db	14
      001783 07                    2415 	.uleb128	7
      001784 01                    2416 	.db	1
      001785 00 00 89 8E           2417 	.dw	0,(Sstm8s_gpio$GPIO_Init$19)
      001789 0E                    2418 	.db	14
      00178A 07                    2419 	.uleb128	7
      00178B 01                    2420 	.db	1
      00178C 00 00 89 97           2421 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      001790 0E                    2422 	.db	14
      001791 07                    2423 	.uleb128	7
      001792 01                    2424 	.db	1
      001793 00 00 89 A0           2425 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      001797 0E                    2426 	.db	14
      001798 07                    2427 	.uleb128	7
      001799 01                    2428 	.db	1
      00179A 00 00 89 A9           2429 	.dw	0,(Sstm8s_gpio$GPIO_Init$22)
      00179E 0E                    2430 	.db	14
      00179F 07                    2431 	.uleb128	7
      0017A0 01                    2432 	.db	1
      0017A1 00 00 89 B2           2433 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      0017A5 0E                    2434 	.db	14
      0017A6 07                    2435 	.uleb128	7
      0017A7 01                    2436 	.db	1
      0017A8 00 00 89 B4           2437 	.dw	0,(Sstm8s_gpio$GPIO_Init$24)
      0017AC 0E                    2438 	.db	14
      0017AD 08                    2439 	.uleb128	8
      0017AE 01                    2440 	.db	1
      0017AF 00 00 89 B6           2441 	.dw	0,(Sstm8s_gpio$GPIO_Init$25)
      0017B3 0E                    2442 	.db	14
      0017B4 0A                    2443 	.uleb128	10
      0017B5 01                    2444 	.db	1
      0017B6 00 00 89 B8           2445 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      0017BA 0E                    2446 	.db	14
      0017BB 0B                    2447 	.uleb128	11
      0017BC 01                    2448 	.db	1
      0017BD 00 00 89 BA           2449 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      0017C1 0E                    2450 	.db	14
      0017C2 0C                    2451 	.uleb128	12
      0017C3 01                    2452 	.db	1
      0017C4 00 00 89 BC           2453 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      0017C8 0E                    2454 	.db	14
      0017C9 0D                    2455 	.uleb128	13
      0017CA 01                    2456 	.db	1
      0017CB 00 00 89 C1           2457 	.dw	0,(Sstm8s_gpio$GPIO_Init$29)
      0017CF 0E                    2458 	.db	14
      0017D0 07                    2459 	.uleb128	7
      0017D1 01                    2460 	.db	1
      0017D2 00 00 89 CA           2461 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      0017D6 0E                    2462 	.db	14
      0017D7 08                    2463 	.uleb128	8
      0017D8 01                    2464 	.db	1
      0017D9 00 00 89 CC           2465 	.dw	0,(Sstm8s_gpio$GPIO_Init$32)
      0017DD 0E                    2466 	.db	14
      0017DE 0A                    2467 	.uleb128	10
      0017DF 01                    2468 	.db	1
      0017E0 00 00 89 CE           2469 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      0017E4 0E                    2470 	.db	14
      0017E5 0B                    2471 	.uleb128	11
      0017E6 01                    2472 	.db	1
      0017E7 00 00 89 D0           2473 	.dw	0,(Sstm8s_gpio$GPIO_Init$34)
      0017EB 0E                    2474 	.db	14
      0017EC 0C                    2475 	.uleb128	12
      0017ED 01                    2476 	.db	1
      0017EE 00 00 89 D2           2477 	.dw	0,(Sstm8s_gpio$GPIO_Init$35)
      0017F2 0E                    2478 	.db	14
      0017F3 0D                    2479 	.uleb128	13
      0017F4 01                    2480 	.db	1
      0017F5 00 00 89 D7           2481 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      0017F9 0E                    2482 	.db	14
      0017FA 07                    2483 	.uleb128	7
      0017FB 01                    2484 	.db	1
      0017FC 00 00 89 E3           2485 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      001800 0E                    2486 	.db	14
      001801 08                    2487 	.uleb128	8
      001802 01                    2488 	.db	1
      001803 00 00 89 E9           2489 	.dw	0,(Sstm8s_gpio$GPIO_Init$39)
      001807 0E                    2490 	.db	14
      001808 07                    2491 	.uleb128	7
      001809 01                    2492 	.db	1
      00180A 00 00 89 FD           2493 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      00180E 0E                    2494 	.db	14
      00180F 08                    2495 	.uleb128	8
      001810 01                    2496 	.db	1
      001811 00 00 8A 02           2497 	.dw	0,(Sstm8s_gpio$GPIO_Init$46)
      001815 0E                    2498 	.db	14
      001816 07                    2499 	.uleb128	7
      001817 01                    2500 	.db	1
      001818 00 00 8A 2B           2501 	.dw	0,(Sstm8s_gpio$GPIO_Init$60)
      00181C 0E                    2502 	.db	14
      00181D 08                    2503 	.uleb128	8
      00181E 01                    2504 	.db	1
      00181F 00 00 8A 30           2505 	.dw	0,(Sstm8s_gpio$GPIO_Init$61)
      001823 0E                    2506 	.db	14
      001824 07                    2507 	.uleb128	7
      001825 01                    2508 	.db	1
      001826 00 00 8A 42           2509 	.dw	0,(Sstm8s_gpio$GPIO_Init$70)
      00182A 0E                    2510 	.db	14
      00182B 08                    2511 	.uleb128	8
      00182C 01                    2512 	.db	1
      00182D 00 00 8A 47           2513 	.dw	0,(Sstm8s_gpio$GPIO_Init$71)
      001831 0E                    2514 	.db	14
      001832 07                    2515 	.uleb128	7
      001833 01                    2516 	.db	1
      001834 00 00 8A 5B           2517 	.dw	0,(Sstm8s_gpio$GPIO_Init$79)
      001838 0E                    2518 	.db	14
      001839 02                    2519 	.uleb128	2
                                   2520 
                                   2521 	.area .debug_frame (NOLOAD)
      00183A 00 00                 2522 	.dw	0
      00183C 00 0E                 2523 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      00183E                       2524 Ldebug_CIE9_start:
      00183E FF FF                 2525 	.dw	0xffff
      001840 FF FF                 2526 	.dw	0xffff
      001842 01                    2527 	.db	1
      001843 00                    2528 	.db	0
      001844 01                    2529 	.uleb128	1
      001845 7F                    2530 	.sleb128	-1
      001846 09                    2531 	.db	9
      001847 0C                    2532 	.db	12
      001848 08                    2533 	.uleb128	8
      001849 02                    2534 	.uleb128	2
      00184A 89                    2535 	.db	137
      00184B 01                    2536 	.uleb128	1
      00184C                       2537 Ldebug_CIE9_end:
      00184C 00 00 00 13           2538 	.dw	0,19
      001850 00 00 18 3A           2539 	.dw	0,(Ldebug_CIE9_start-4)
      001854 00 00 89 33           2540 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)	;initial loc
      001858 00 00 00 13           2541 	.dw	0,Sstm8s_gpio$GPIO_DeInit$8-Sstm8s_gpio$GPIO_DeInit$1
      00185C 01                    2542 	.db	1
      00185D 00 00 89 33           2543 	.dw	0,(Sstm8s_gpio$GPIO_DeInit$1)
      001861 0E                    2544 	.db	14
      001862 02                    2545 	.uleb128	2
