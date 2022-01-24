                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _assert_failed
                                     14 	.globl _CLK_DeInit
                                     15 	.globl _CLK_FastHaltWakeUpCmd
                                     16 	.globl _CLK_HSECmd
                                     17 	.globl _CLK_HSICmd
                                     18 	.globl _CLK_LSICmd
                                     19 	.globl _CLK_CCOCmd
                                     20 	.globl _CLK_ClockSwitchCmd
                                     21 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     22 	.globl _CLK_PeripheralClockConfig
                                     23 	.globl _CLK_ClockSwitchConfig
                                     24 	.globl _CLK_HSIPrescalerConfig
                                     25 	.globl _CLK_CCOConfig
                                     26 	.globl _CLK_ITConfig
                                     27 	.globl _CLK_SYSCLKConfig
                                     28 	.globl _CLK_SWIMConfig
                                     29 	.globl _CLK_ClockSecuritySystemEnable
                                     30 	.globl _CLK_GetSYSCLKSource
                                     31 	.globl _CLK_GetClockFreq
                                     32 	.globl _CLK_AdjustHSICalibrationValue
                                     33 	.globl _CLK_SYSCLKEmergencyClear
                                     34 	.globl _CLK_GetFlagStatus
                                     35 	.globl _CLK_GetITStatus
                                     36 	.globl _CLK_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                           000000    74 	Sstm8s_clk$CLK_DeInit$0 ==.
                                     75 ;	../SPL/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     76 ; genLabel
                                     77 ;	-----------------------------------------
                                     78 ;	 function CLK_DeInit
                                     79 ;	-----------------------------------------
                                     80 ;	Register assignment is optimal.
                                     81 ;	Stack space usage: 0 bytes.
      008AE2                         82 _CLK_DeInit:
                           000000    83 	Sstm8s_clk$CLK_DeInit$1 ==.
                           000000    84 	Sstm8s_clk$CLK_DeInit$2 ==.
                                     85 ;	../SPL/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
                                     86 ; genPointerSet
      008AE2 35 01 50 C0      [ 1]   87 	mov	0x50c0+0, #0x01
                           000004    88 	Sstm8s_clk$CLK_DeInit$3 ==.
                                     89 ;	../SPL/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
                                     90 ; genPointerSet
      008AE6 35 00 50 C1      [ 1]   91 	mov	0x50c1+0, #0x00
                           000008    92 	Sstm8s_clk$CLK_DeInit$4 ==.
                                     93 ;	../SPL/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
                                     94 ; genPointerSet
      008AEA 35 E1 50 C4      [ 1]   95 	mov	0x50c4+0, #0xe1
                           00000C    96 	Sstm8s_clk$CLK_DeInit$5 ==.
                                     97 ;	../SPL/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
                                     98 ; genPointerSet
      008AEE 35 00 50 C5      [ 1]   99 	mov	0x50c5+0, #0x00
                           000010   100 	Sstm8s_clk$CLK_DeInit$6 ==.
                                    101 ;	../SPL/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
                                    102 ; genPointerSet
      008AF2 35 18 50 C6      [ 1]  103 	mov	0x50c6+0, #0x18
                           000014   104 	Sstm8s_clk$CLK_DeInit$7 ==.
                                    105 ;	../SPL/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
                                    106 ; genPointerSet
      008AF6 35 FF 50 C7      [ 1]  107 	mov	0x50c7+0, #0xff
                           000018   108 	Sstm8s_clk$CLK_DeInit$8 ==.
                                    109 ;	../SPL/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
                                    110 ; genPointerSet
      008AFA 35 FF 50 CA      [ 1]  111 	mov	0x50ca+0, #0xff
                           00001C   112 	Sstm8s_clk$CLK_DeInit$9 ==.
                                    113 ;	../SPL/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
                                    114 ; genPointerSet
      008AFE 35 00 50 C8      [ 1]  115 	mov	0x50c8+0, #0x00
                           000020   116 	Sstm8s_clk$CLK_DeInit$10 ==.
                                    117 ;	../SPL/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    118 ; genPointerSet
      008B02 35 00 50 C9      [ 1]  119 	mov	0x50c9+0, #0x00
                           000024   120 	Sstm8s_clk$CLK_DeInit$11 ==.
                                    121 ;	../SPL/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
                                    122 ; genLabel
      008B06                        123 00101$:
                                    124 ; genPointerGet
      008B06 C6 50 C9         [ 1]  125 	ld	a, 0x50c9
                                    126 ; genAnd
      008B09 44               [ 1]  127 	srl	a
      008B0A 24 03            [ 1]  128 	jrnc	00116$
      008B0C CC 8B 06         [ 2]  129 	jp	00101$
      008B0F                        130 00116$:
                                    131 ; skipping generated iCode
                           00002D   132 	Sstm8s_clk$CLK_DeInit$12 ==.
                                    133 ;	../SPL/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    134 ; genPointerSet
      008B0F 35 00 50 C9      [ 1]  135 	mov	0x50c9+0, #0x00
                           000031   136 	Sstm8s_clk$CLK_DeInit$13 ==.
                                    137 ;	../SPL/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
                                    138 ; genPointerSet
      008B13 35 00 50 CC      [ 1]  139 	mov	0x50cc+0, #0x00
                           000035   140 	Sstm8s_clk$CLK_DeInit$14 ==.
                                    141 ;	../SPL/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
                                    142 ; genPointerSet
      008B17 35 00 50 CD      [ 1]  143 	mov	0x50cd+0, #0x00
                                    144 ; genLabel
      008B1B                        145 00104$:
                           000039   146 	Sstm8s_clk$CLK_DeInit$15 ==.
                                    147 ;	../SPL/src/stm8s_clk.c: 88: }
                                    148 ; genEndFunction
                           000039   149 	Sstm8s_clk$CLK_DeInit$16 ==.
                           000039   150 	XG$CLK_DeInit$0$0 ==.
      008B1B 81               [ 4]  151 	ret
                           00003A   152 	Sstm8s_clk$CLK_DeInit$17 ==.
                           00003A   153 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$18 ==.
                                    154 ;	../SPL/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    155 ; genLabel
                                    156 ;	-----------------------------------------
                                    157 ;	 function CLK_FastHaltWakeUpCmd
                                    158 ;	-----------------------------------------
                                    159 ;	Register assignment is optimal.
                                    160 ;	Stack space usage: 0 bytes.
      008B1C                        161 _CLK_FastHaltWakeUpCmd:
                           00003A   162 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$19 ==.
                           00003A   163 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20 ==.
                                    164 ;	../SPL/src/stm8s_clk.c: 102: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    165 ; genIfx
      008B1C 0D 03            [ 1]  166 	tnz	(0x03, sp)
      008B1E 26 03            [ 1]  167 	jrne	00126$
      008B20 CC 8B 3A         [ 2]  168 	jp	00107$
      008B23                        169 00126$:
                                    170 ; genCmpEQorNE
      008B23 7B 03            [ 1]  171 	ld	a, (0x03, sp)
      008B25 4A               [ 1]  172 	dec	a
      008B26 26 03            [ 1]  173 	jrne	00128$
      008B28 CC 8B 3A         [ 2]  174 	jp	00107$
      008B2B                        175 00128$:
                           000049   176 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21 ==.
                                    177 ; skipping generated iCode
                                    178 ; skipping iCode since result will be rematerialized
                                    179 ; skipping iCode since result will be rematerialized
                                    180 ; genIPush
      008B2B 4B 66            [ 1]  181 	push	#0x66
                           00004B   182 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$22 ==.
      008B2D 5F               [ 1]  183 	clrw	x
      008B2E 89               [ 2]  184 	pushw	x
                           00004D   185 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23 ==.
      008B2F 4B 00            [ 1]  186 	push	#0x00
                           00004F   187 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$24 ==.
                                    188 ; genIPush
      008B31 4B BD            [ 1]  189 	push	#<(___str_0+0)
                           000051   190 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$25 ==.
      008B33 4B 80            [ 1]  191 	push	#((___str_0+0) >> 8)
                           000053   192 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$26 ==.
                                    193 ; genCall
      008B35 CD 82 99         [ 4]  194 	call	_assert_failed
      008B38 5B 06            [ 2]  195 	addw	sp, #6
                           000058   196 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$27 ==.
                                    197 ; genLabel
      008B3A                        198 00107$:
                           000058   199 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$28 ==.
                                    200 ;	../SPL/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
                                    201 ; genPointerGet
      008B3A C6 50 C0         [ 1]  202 	ld	a, 0x50c0
                           00005B   203 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$29 ==.
                                    204 ;	../SPL/src/stm8s_clk.c: 104: if (NewState != DISABLE)
                                    205 ; genIfx
      008B3D 0D 03            [ 1]  206 	tnz	(0x03, sp)
      008B3F 26 03            [ 1]  207 	jrne	00130$
      008B41 CC 8B 4C         [ 2]  208 	jp	00102$
      008B44                        209 00130$:
                           000062   210 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$30 ==.
                           000062   211 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$31 ==.
                                    212 ;	../SPL/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
                                    213 ; genOr
      008B44 AA 04            [ 1]  214 	or	a, #0x04
                                    215 ; genPointerSet
      008B46 C7 50 C0         [ 1]  216 	ld	0x50c0, a
                           000067   217 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$32 ==.
                                    218 ; genGoto
      008B49 CC 8B 51         [ 2]  219 	jp	00104$
                                    220 ; genLabel
      008B4C                        221 00102$:
                           00006A   222 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$33 ==.
                           00006A   223 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$34 ==.
                                    224 ;	../SPL/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
                                    225 ; genAnd
      008B4C A4 FB            [ 1]  226 	and	a, #0xfb
                                    227 ; genPointerSet
      008B4E C7 50 C0         [ 1]  228 	ld	0x50c0, a
                           00006F   229 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$35 ==.
                                    230 ; genLabel
      008B51                        231 00104$:
                           00006F   232 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$36 ==.
                                    233 ;	../SPL/src/stm8s_clk.c: 114: }
                                    234 ; genEndFunction
                           00006F   235 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$37 ==.
                           00006F   236 	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
      008B51 81               [ 4]  237 	ret
                           000070   238 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$38 ==.
                           000070   239 	Sstm8s_clk$CLK_HSECmd$39 ==.
                                    240 ;	../SPL/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    241 ; genLabel
                                    242 ;	-----------------------------------------
                                    243 ;	 function CLK_HSECmd
                                    244 ;	-----------------------------------------
                                    245 ;	Register assignment is optimal.
                                    246 ;	Stack space usage: 0 bytes.
      008B52                        247 _CLK_HSECmd:
                           000070   248 	Sstm8s_clk$CLK_HSECmd$40 ==.
                           000070   249 	Sstm8s_clk$CLK_HSECmd$41 ==.
                                    250 ;	../SPL/src/stm8s_clk.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    251 ; genIfx
      008B52 0D 03            [ 1]  252 	tnz	(0x03, sp)
      008B54 26 03            [ 1]  253 	jrne	00126$
      008B56 CC 8B 70         [ 2]  254 	jp	00107$
      008B59                        255 00126$:
                                    256 ; genCmpEQorNE
      008B59 7B 03            [ 1]  257 	ld	a, (0x03, sp)
      008B5B 4A               [ 1]  258 	dec	a
      008B5C 26 03            [ 1]  259 	jrne	00128$
      008B5E CC 8B 70         [ 2]  260 	jp	00107$
      008B61                        261 00128$:
                           00007F   262 	Sstm8s_clk$CLK_HSECmd$42 ==.
                                    263 ; skipping generated iCode
                                    264 ; skipping iCode since result will be rematerialized
                                    265 ; skipping iCode since result will be rematerialized
                                    266 ; genIPush
      008B61 4B 7C            [ 1]  267 	push	#0x7c
                           000081   268 	Sstm8s_clk$CLK_HSECmd$43 ==.
      008B63 5F               [ 1]  269 	clrw	x
      008B64 89               [ 2]  270 	pushw	x
                           000083   271 	Sstm8s_clk$CLK_HSECmd$44 ==.
      008B65 4B 00            [ 1]  272 	push	#0x00
                           000085   273 	Sstm8s_clk$CLK_HSECmd$45 ==.
                                    274 ; genIPush
      008B67 4B BD            [ 1]  275 	push	#<(___str_0+0)
                           000087   276 	Sstm8s_clk$CLK_HSECmd$46 ==.
      008B69 4B 80            [ 1]  277 	push	#((___str_0+0) >> 8)
                           000089   278 	Sstm8s_clk$CLK_HSECmd$47 ==.
                                    279 ; genCall
      008B6B CD 82 99         [ 4]  280 	call	_assert_failed
      008B6E 5B 06            [ 2]  281 	addw	sp, #6
                           00008E   282 	Sstm8s_clk$CLK_HSECmd$48 ==.
                                    283 ; genLabel
      008B70                        284 00107$:
                           00008E   285 	Sstm8s_clk$CLK_HSECmd$49 ==.
                                    286 ;	../SPL/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
                                    287 ; genPointerGet
      008B70 C6 50 C1         [ 1]  288 	ld	a, 0x50c1
                           000091   289 	Sstm8s_clk$CLK_HSECmd$50 ==.
                                    290 ;	../SPL/src/stm8s_clk.c: 126: if (NewState != DISABLE)
                                    291 ; genIfx
      008B73 0D 03            [ 1]  292 	tnz	(0x03, sp)
      008B75 26 03            [ 1]  293 	jrne	00130$
      008B77 CC 8B 82         [ 2]  294 	jp	00102$
      008B7A                        295 00130$:
                           000098   296 	Sstm8s_clk$CLK_HSECmd$51 ==.
                           000098   297 	Sstm8s_clk$CLK_HSECmd$52 ==.
                                    298 ;	../SPL/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
                                    299 ; genOr
      008B7A AA 01            [ 1]  300 	or	a, #0x01
                                    301 ; genPointerSet
      008B7C C7 50 C1         [ 1]  302 	ld	0x50c1, a
                           00009D   303 	Sstm8s_clk$CLK_HSECmd$53 ==.
                                    304 ; genGoto
      008B7F CC 8B 87         [ 2]  305 	jp	00104$
                                    306 ; genLabel
      008B82                        307 00102$:
                           0000A0   308 	Sstm8s_clk$CLK_HSECmd$54 ==.
                           0000A0   309 	Sstm8s_clk$CLK_HSECmd$55 ==.
                                    310 ;	../SPL/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
                                    311 ; genAnd
      008B82 A4 FE            [ 1]  312 	and	a, #0xfe
                                    313 ; genPointerSet
      008B84 C7 50 C1         [ 1]  314 	ld	0x50c1, a
                           0000A5   315 	Sstm8s_clk$CLK_HSECmd$56 ==.
                                    316 ; genLabel
      008B87                        317 00104$:
                           0000A5   318 	Sstm8s_clk$CLK_HSECmd$57 ==.
                                    319 ;	../SPL/src/stm8s_clk.c: 136: }
                                    320 ; genEndFunction
                           0000A5   321 	Sstm8s_clk$CLK_HSECmd$58 ==.
                           0000A5   322 	XG$CLK_HSECmd$0$0 ==.
      008B87 81               [ 4]  323 	ret
                           0000A6   324 	Sstm8s_clk$CLK_HSECmd$59 ==.
                           0000A6   325 	Sstm8s_clk$CLK_HSICmd$60 ==.
                                    326 ;	../SPL/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    327 ; genLabel
                                    328 ;	-----------------------------------------
                                    329 ;	 function CLK_HSICmd
                                    330 ;	-----------------------------------------
                                    331 ;	Register assignment is optimal.
                                    332 ;	Stack space usage: 0 bytes.
      008B88                        333 _CLK_HSICmd:
                           0000A6   334 	Sstm8s_clk$CLK_HSICmd$61 ==.
                           0000A6   335 	Sstm8s_clk$CLK_HSICmd$62 ==.
                                    336 ;	../SPL/src/stm8s_clk.c: 146: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    337 ; genIfx
      008B88 0D 03            [ 1]  338 	tnz	(0x03, sp)
      008B8A 26 03            [ 1]  339 	jrne	00126$
      008B8C CC 8B A6         [ 2]  340 	jp	00107$
      008B8F                        341 00126$:
                                    342 ; genCmpEQorNE
      008B8F 7B 03            [ 1]  343 	ld	a, (0x03, sp)
      008B91 4A               [ 1]  344 	dec	a
      008B92 26 03            [ 1]  345 	jrne	00128$
      008B94 CC 8B A6         [ 2]  346 	jp	00107$
      008B97                        347 00128$:
                           0000B5   348 	Sstm8s_clk$CLK_HSICmd$63 ==.
                                    349 ; skipping generated iCode
                                    350 ; skipping iCode since result will be rematerialized
                                    351 ; skipping iCode since result will be rematerialized
                                    352 ; genIPush
      008B97 4B 92            [ 1]  353 	push	#0x92
                           0000B7   354 	Sstm8s_clk$CLK_HSICmd$64 ==.
      008B99 5F               [ 1]  355 	clrw	x
      008B9A 89               [ 2]  356 	pushw	x
                           0000B9   357 	Sstm8s_clk$CLK_HSICmd$65 ==.
      008B9B 4B 00            [ 1]  358 	push	#0x00
                           0000BB   359 	Sstm8s_clk$CLK_HSICmd$66 ==.
                                    360 ; genIPush
      008B9D 4B BD            [ 1]  361 	push	#<(___str_0+0)
                           0000BD   362 	Sstm8s_clk$CLK_HSICmd$67 ==.
      008B9F 4B 80            [ 1]  363 	push	#((___str_0+0) >> 8)
                           0000BF   364 	Sstm8s_clk$CLK_HSICmd$68 ==.
                                    365 ; genCall
      008BA1 CD 82 99         [ 4]  366 	call	_assert_failed
      008BA4 5B 06            [ 2]  367 	addw	sp, #6
                           0000C4   368 	Sstm8s_clk$CLK_HSICmd$69 ==.
                                    369 ; genLabel
      008BA6                        370 00107$:
                           0000C4   371 	Sstm8s_clk$CLK_HSICmd$70 ==.
                                    372 ;	../SPL/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
                                    373 ; genPointerGet
      008BA6 C6 50 C0         [ 1]  374 	ld	a, 0x50c0
                           0000C7   375 	Sstm8s_clk$CLK_HSICmd$71 ==.
                                    376 ;	../SPL/src/stm8s_clk.c: 148: if (NewState != DISABLE)
                                    377 ; genIfx
      008BA9 0D 03            [ 1]  378 	tnz	(0x03, sp)
      008BAB 26 03            [ 1]  379 	jrne	00130$
      008BAD CC 8B B8         [ 2]  380 	jp	00102$
      008BB0                        381 00130$:
                           0000CE   382 	Sstm8s_clk$CLK_HSICmd$72 ==.
                           0000CE   383 	Sstm8s_clk$CLK_HSICmd$73 ==.
                                    384 ;	../SPL/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
                                    385 ; genOr
      008BB0 AA 01            [ 1]  386 	or	a, #0x01
                                    387 ; genPointerSet
      008BB2 C7 50 C0         [ 1]  388 	ld	0x50c0, a
                           0000D3   389 	Sstm8s_clk$CLK_HSICmd$74 ==.
                                    390 ; genGoto
      008BB5 CC 8B BD         [ 2]  391 	jp	00104$
                                    392 ; genLabel
      008BB8                        393 00102$:
                           0000D6   394 	Sstm8s_clk$CLK_HSICmd$75 ==.
                           0000D6   395 	Sstm8s_clk$CLK_HSICmd$76 ==.
                                    396 ;	../SPL/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
                                    397 ; genAnd
      008BB8 A4 FE            [ 1]  398 	and	a, #0xfe
                                    399 ; genPointerSet
      008BBA C7 50 C0         [ 1]  400 	ld	0x50c0, a
                           0000DB   401 	Sstm8s_clk$CLK_HSICmd$77 ==.
                                    402 ; genLabel
      008BBD                        403 00104$:
                           0000DB   404 	Sstm8s_clk$CLK_HSICmd$78 ==.
                                    405 ;	../SPL/src/stm8s_clk.c: 158: }
                                    406 ; genEndFunction
                           0000DB   407 	Sstm8s_clk$CLK_HSICmd$79 ==.
                           0000DB   408 	XG$CLK_HSICmd$0$0 ==.
      008BBD 81               [ 4]  409 	ret
                           0000DC   410 	Sstm8s_clk$CLK_HSICmd$80 ==.
                           0000DC   411 	Sstm8s_clk$CLK_LSICmd$81 ==.
                                    412 ;	../SPL/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    413 ; genLabel
                                    414 ;	-----------------------------------------
                                    415 ;	 function CLK_LSICmd
                                    416 ;	-----------------------------------------
                                    417 ;	Register assignment is optimal.
                                    418 ;	Stack space usage: 0 bytes.
      008BBE                        419 _CLK_LSICmd:
                           0000DC   420 	Sstm8s_clk$CLK_LSICmd$82 ==.
                           0000DC   421 	Sstm8s_clk$CLK_LSICmd$83 ==.
                                    422 ;	../SPL/src/stm8s_clk.c: 169: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    423 ; genIfx
      008BBE 0D 03            [ 1]  424 	tnz	(0x03, sp)
      008BC0 26 03            [ 1]  425 	jrne	00126$
      008BC2 CC 8B DC         [ 2]  426 	jp	00107$
      008BC5                        427 00126$:
                                    428 ; genCmpEQorNE
      008BC5 7B 03            [ 1]  429 	ld	a, (0x03, sp)
      008BC7 4A               [ 1]  430 	dec	a
      008BC8 26 03            [ 1]  431 	jrne	00128$
      008BCA CC 8B DC         [ 2]  432 	jp	00107$
      008BCD                        433 00128$:
                           0000EB   434 	Sstm8s_clk$CLK_LSICmd$84 ==.
                                    435 ; skipping generated iCode
                                    436 ; skipping iCode since result will be rematerialized
                                    437 ; skipping iCode since result will be rematerialized
                                    438 ; genIPush
      008BCD 4B A9            [ 1]  439 	push	#0xa9
                           0000ED   440 	Sstm8s_clk$CLK_LSICmd$85 ==.
      008BCF 5F               [ 1]  441 	clrw	x
      008BD0 89               [ 2]  442 	pushw	x
                           0000EF   443 	Sstm8s_clk$CLK_LSICmd$86 ==.
      008BD1 4B 00            [ 1]  444 	push	#0x00
                           0000F1   445 	Sstm8s_clk$CLK_LSICmd$87 ==.
                                    446 ; genIPush
      008BD3 4B BD            [ 1]  447 	push	#<(___str_0+0)
                           0000F3   448 	Sstm8s_clk$CLK_LSICmd$88 ==.
      008BD5 4B 80            [ 1]  449 	push	#((___str_0+0) >> 8)
                           0000F5   450 	Sstm8s_clk$CLK_LSICmd$89 ==.
                                    451 ; genCall
      008BD7 CD 82 99         [ 4]  452 	call	_assert_failed
      008BDA 5B 06            [ 2]  453 	addw	sp, #6
                           0000FA   454 	Sstm8s_clk$CLK_LSICmd$90 ==.
                                    455 ; genLabel
      008BDC                        456 00107$:
                           0000FA   457 	Sstm8s_clk$CLK_LSICmd$91 ==.
                                    458 ;	../SPL/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
                                    459 ; genPointerGet
      008BDC C6 50 C0         [ 1]  460 	ld	a, 0x50c0
                           0000FD   461 	Sstm8s_clk$CLK_LSICmd$92 ==.
                                    462 ;	../SPL/src/stm8s_clk.c: 171: if (NewState != DISABLE)
                                    463 ; genIfx
      008BDF 0D 03            [ 1]  464 	tnz	(0x03, sp)
      008BE1 26 03            [ 1]  465 	jrne	00130$
      008BE3 CC 8B EE         [ 2]  466 	jp	00102$
      008BE6                        467 00130$:
                           000104   468 	Sstm8s_clk$CLK_LSICmd$93 ==.
                           000104   469 	Sstm8s_clk$CLK_LSICmd$94 ==.
                                    470 ;	../SPL/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
                                    471 ; genOr
      008BE6 AA 08            [ 1]  472 	or	a, #0x08
                                    473 ; genPointerSet
      008BE8 C7 50 C0         [ 1]  474 	ld	0x50c0, a
                           000109   475 	Sstm8s_clk$CLK_LSICmd$95 ==.
                                    476 ; genGoto
      008BEB CC 8B F3         [ 2]  477 	jp	00104$
                                    478 ; genLabel
      008BEE                        479 00102$:
                           00010C   480 	Sstm8s_clk$CLK_LSICmd$96 ==.
                           00010C   481 	Sstm8s_clk$CLK_LSICmd$97 ==.
                                    482 ;	../SPL/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
                                    483 ; genAnd
      008BEE A4 F7            [ 1]  484 	and	a, #0xf7
                                    485 ; genPointerSet
      008BF0 C7 50 C0         [ 1]  486 	ld	0x50c0, a
                           000111   487 	Sstm8s_clk$CLK_LSICmd$98 ==.
                                    488 ; genLabel
      008BF3                        489 00104$:
                           000111   490 	Sstm8s_clk$CLK_LSICmd$99 ==.
                                    491 ;	../SPL/src/stm8s_clk.c: 181: }
                                    492 ; genEndFunction
                           000111   493 	Sstm8s_clk$CLK_LSICmd$100 ==.
                           000111   494 	XG$CLK_LSICmd$0$0 ==.
      008BF3 81               [ 4]  495 	ret
                           000112   496 	Sstm8s_clk$CLK_LSICmd$101 ==.
                           000112   497 	Sstm8s_clk$CLK_CCOCmd$102 ==.
                                    498 ;	../SPL/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    499 ; genLabel
                                    500 ;	-----------------------------------------
                                    501 ;	 function CLK_CCOCmd
                                    502 ;	-----------------------------------------
                                    503 ;	Register assignment is optimal.
                                    504 ;	Stack space usage: 0 bytes.
      008BF4                        505 _CLK_CCOCmd:
                           000112   506 	Sstm8s_clk$CLK_CCOCmd$103 ==.
                           000112   507 	Sstm8s_clk$CLK_CCOCmd$104 ==.
                                    508 ;	../SPL/src/stm8s_clk.c: 192: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    509 ; genIfx
      008BF4 0D 03            [ 1]  510 	tnz	(0x03, sp)
      008BF6 26 03            [ 1]  511 	jrne	00126$
      008BF8 CC 8C 12         [ 2]  512 	jp	00107$
      008BFB                        513 00126$:
                                    514 ; genCmpEQorNE
      008BFB 7B 03            [ 1]  515 	ld	a, (0x03, sp)
      008BFD 4A               [ 1]  516 	dec	a
      008BFE 26 03            [ 1]  517 	jrne	00128$
      008C00 CC 8C 12         [ 2]  518 	jp	00107$
      008C03                        519 00128$:
                           000121   520 	Sstm8s_clk$CLK_CCOCmd$105 ==.
                                    521 ; skipping generated iCode
                                    522 ; skipping iCode since result will be rematerialized
                                    523 ; skipping iCode since result will be rematerialized
                                    524 ; genIPush
      008C03 4B C0            [ 1]  525 	push	#0xc0
                           000123   526 	Sstm8s_clk$CLK_CCOCmd$106 ==.
      008C05 5F               [ 1]  527 	clrw	x
      008C06 89               [ 2]  528 	pushw	x
                           000125   529 	Sstm8s_clk$CLK_CCOCmd$107 ==.
      008C07 4B 00            [ 1]  530 	push	#0x00
                           000127   531 	Sstm8s_clk$CLK_CCOCmd$108 ==.
                                    532 ; genIPush
      008C09 4B BD            [ 1]  533 	push	#<(___str_0+0)
                           000129   534 	Sstm8s_clk$CLK_CCOCmd$109 ==.
      008C0B 4B 80            [ 1]  535 	push	#((___str_0+0) >> 8)
                           00012B   536 	Sstm8s_clk$CLK_CCOCmd$110 ==.
                                    537 ; genCall
      008C0D CD 82 99         [ 4]  538 	call	_assert_failed
      008C10 5B 06            [ 2]  539 	addw	sp, #6
                           000130   540 	Sstm8s_clk$CLK_CCOCmd$111 ==.
                                    541 ; genLabel
      008C12                        542 00107$:
                           000130   543 	Sstm8s_clk$CLK_CCOCmd$112 ==.
                                    544 ;	../SPL/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    545 ; genPointerGet
      008C12 C6 50 C9         [ 1]  546 	ld	a, 0x50c9
                           000133   547 	Sstm8s_clk$CLK_CCOCmd$113 ==.
                                    548 ;	../SPL/src/stm8s_clk.c: 194: if (NewState != DISABLE)
                                    549 ; genIfx
      008C15 0D 03            [ 1]  550 	tnz	(0x03, sp)
      008C17 26 03            [ 1]  551 	jrne	00130$
      008C19 CC 8C 24         [ 2]  552 	jp	00102$
      008C1C                        553 00130$:
                           00013A   554 	Sstm8s_clk$CLK_CCOCmd$114 ==.
                           00013A   555 	Sstm8s_clk$CLK_CCOCmd$115 ==.
                                    556 ;	../SPL/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    557 ; genOr
      008C1C AA 01            [ 1]  558 	or	a, #0x01
                                    559 ; genPointerSet
      008C1E C7 50 C9         [ 1]  560 	ld	0x50c9, a
                           00013F   561 	Sstm8s_clk$CLK_CCOCmd$116 ==.
                                    562 ; genGoto
      008C21 CC 8C 29         [ 2]  563 	jp	00104$
                                    564 ; genLabel
      008C24                        565 00102$:
                           000142   566 	Sstm8s_clk$CLK_CCOCmd$117 ==.
                           000142   567 	Sstm8s_clk$CLK_CCOCmd$118 ==.
                                    568 ;	../SPL/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
                                    569 ; genAnd
      008C24 A4 FE            [ 1]  570 	and	a, #0xfe
                                    571 ; genPointerSet
      008C26 C7 50 C9         [ 1]  572 	ld	0x50c9, a
                           000147   573 	Sstm8s_clk$CLK_CCOCmd$119 ==.
                                    574 ; genLabel
      008C29                        575 00104$:
                           000147   576 	Sstm8s_clk$CLK_CCOCmd$120 ==.
                                    577 ;	../SPL/src/stm8s_clk.c: 204: }
                                    578 ; genEndFunction
                           000147   579 	Sstm8s_clk$CLK_CCOCmd$121 ==.
                           000147   580 	XG$CLK_CCOCmd$0$0 ==.
      008C29 81               [ 4]  581 	ret
                           000148   582 	Sstm8s_clk$CLK_CCOCmd$122 ==.
                           000148   583 	Sstm8s_clk$CLK_ClockSwitchCmd$123 ==.
                                    584 ;	../SPL/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    585 ; genLabel
                                    586 ;	-----------------------------------------
                                    587 ;	 function CLK_ClockSwitchCmd
                                    588 ;	-----------------------------------------
                                    589 ;	Register assignment is optimal.
                                    590 ;	Stack space usage: 0 bytes.
      008C2A                        591 _CLK_ClockSwitchCmd:
                           000148   592 	Sstm8s_clk$CLK_ClockSwitchCmd$124 ==.
                           000148   593 	Sstm8s_clk$CLK_ClockSwitchCmd$125 ==.
                                    594 ;	../SPL/src/stm8s_clk.c: 216: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    595 ; genIfx
      008C2A 0D 03            [ 1]  596 	tnz	(0x03, sp)
      008C2C 26 03            [ 1]  597 	jrne	00126$
      008C2E CC 8C 48         [ 2]  598 	jp	00107$
      008C31                        599 00126$:
                                    600 ; genCmpEQorNE
      008C31 7B 03            [ 1]  601 	ld	a, (0x03, sp)
      008C33 4A               [ 1]  602 	dec	a
      008C34 26 03            [ 1]  603 	jrne	00128$
      008C36 CC 8C 48         [ 2]  604 	jp	00107$
      008C39                        605 00128$:
                           000157   606 	Sstm8s_clk$CLK_ClockSwitchCmd$126 ==.
                                    607 ; skipping generated iCode
                                    608 ; skipping iCode since result will be rematerialized
                                    609 ; skipping iCode since result will be rematerialized
                                    610 ; genIPush
      008C39 4B D8            [ 1]  611 	push	#0xd8
                           000159   612 	Sstm8s_clk$CLK_ClockSwitchCmd$127 ==.
      008C3B 5F               [ 1]  613 	clrw	x
      008C3C 89               [ 2]  614 	pushw	x
                           00015B   615 	Sstm8s_clk$CLK_ClockSwitchCmd$128 ==.
      008C3D 4B 00            [ 1]  616 	push	#0x00
                           00015D   617 	Sstm8s_clk$CLK_ClockSwitchCmd$129 ==.
                                    618 ; genIPush
      008C3F 4B BD            [ 1]  619 	push	#<(___str_0+0)
                           00015F   620 	Sstm8s_clk$CLK_ClockSwitchCmd$130 ==.
      008C41 4B 80            [ 1]  621 	push	#((___str_0+0) >> 8)
                           000161   622 	Sstm8s_clk$CLK_ClockSwitchCmd$131 ==.
                                    623 ; genCall
      008C43 CD 82 99         [ 4]  624 	call	_assert_failed
      008C46 5B 06            [ 2]  625 	addw	sp, #6
                           000166   626 	Sstm8s_clk$CLK_ClockSwitchCmd$132 ==.
                                    627 ; genLabel
      008C48                        628 00107$:
                           000166   629 	Sstm8s_clk$CLK_ClockSwitchCmd$133 ==.
                                    630 ;	../SPL/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
                                    631 ; genPointerGet
      008C48 C6 50 C5         [ 1]  632 	ld	a, 0x50c5
                           000169   633 	Sstm8s_clk$CLK_ClockSwitchCmd$134 ==.
                                    634 ;	../SPL/src/stm8s_clk.c: 218: if (NewState != DISABLE )
                                    635 ; genIfx
      008C4B 0D 03            [ 1]  636 	tnz	(0x03, sp)
      008C4D 26 03            [ 1]  637 	jrne	00130$
      008C4F CC 8C 5A         [ 2]  638 	jp	00102$
      008C52                        639 00130$:
                           000170   640 	Sstm8s_clk$CLK_ClockSwitchCmd$135 ==.
                           000170   641 	Sstm8s_clk$CLK_ClockSwitchCmd$136 ==.
                                    642 ;	../SPL/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
                                    643 ; genOr
      008C52 AA 02            [ 1]  644 	or	a, #0x02
                                    645 ; genPointerSet
      008C54 C7 50 C5         [ 1]  646 	ld	0x50c5, a
                           000175   647 	Sstm8s_clk$CLK_ClockSwitchCmd$137 ==.
                                    648 ; genGoto
      008C57 CC 8C 5F         [ 2]  649 	jp	00104$
                                    650 ; genLabel
      008C5A                        651 00102$:
                           000178   652 	Sstm8s_clk$CLK_ClockSwitchCmd$138 ==.
                           000178   653 	Sstm8s_clk$CLK_ClockSwitchCmd$139 ==.
                                    654 ;	../SPL/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
                                    655 ; genAnd
      008C5A A4 FD            [ 1]  656 	and	a, #0xfd
                                    657 ; genPointerSet
      008C5C C7 50 C5         [ 1]  658 	ld	0x50c5, a
                           00017D   659 	Sstm8s_clk$CLK_ClockSwitchCmd$140 ==.
                                    660 ; genLabel
      008C5F                        661 00104$:
                           00017D   662 	Sstm8s_clk$CLK_ClockSwitchCmd$141 ==.
                                    663 ;	../SPL/src/stm8s_clk.c: 228: }
                                    664 ; genEndFunction
                           00017D   665 	Sstm8s_clk$CLK_ClockSwitchCmd$142 ==.
                           00017D   666 	XG$CLK_ClockSwitchCmd$0$0 ==.
      008C5F 81               [ 4]  667 	ret
                           00017E   668 	Sstm8s_clk$CLK_ClockSwitchCmd$143 ==.
                           00017E   669 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$144 ==.
                                    670 ;	../SPL/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    671 ; genLabel
                                    672 ;	-----------------------------------------
                                    673 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    674 ;	-----------------------------------------
                                    675 ;	Register assignment is optimal.
                                    676 ;	Stack space usage: 0 bytes.
      008C60                        677 _CLK_SlowActiveHaltWakeUpCmd:
                           00017E   678 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$145 ==.
                           00017E   679 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$146 ==.
                                    680 ;	../SPL/src/stm8s_clk.c: 241: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    681 ; genIfx
      008C60 0D 03            [ 1]  682 	tnz	(0x03, sp)
      008C62 26 03            [ 1]  683 	jrne	00126$
      008C64 CC 8C 7E         [ 2]  684 	jp	00107$
      008C67                        685 00126$:
                                    686 ; genCmpEQorNE
      008C67 7B 03            [ 1]  687 	ld	a, (0x03, sp)
      008C69 4A               [ 1]  688 	dec	a
      008C6A 26 03            [ 1]  689 	jrne	00128$
      008C6C CC 8C 7E         [ 2]  690 	jp	00107$
      008C6F                        691 00128$:
                           00018D   692 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$147 ==.
                                    693 ; skipping generated iCode
                                    694 ; skipping iCode since result will be rematerialized
                                    695 ; skipping iCode since result will be rematerialized
                                    696 ; genIPush
      008C6F 4B F1            [ 1]  697 	push	#0xf1
                           00018F   698 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$148 ==.
      008C71 5F               [ 1]  699 	clrw	x
      008C72 89               [ 2]  700 	pushw	x
                           000191   701 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$149 ==.
      008C73 4B 00            [ 1]  702 	push	#0x00
                           000193   703 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$150 ==.
                                    704 ; genIPush
      008C75 4B BD            [ 1]  705 	push	#<(___str_0+0)
                           000195   706 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$151 ==.
      008C77 4B 80            [ 1]  707 	push	#((___str_0+0) >> 8)
                           000197   708 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$152 ==.
                                    709 ; genCall
      008C79 CD 82 99         [ 4]  710 	call	_assert_failed
      008C7C 5B 06            [ 2]  711 	addw	sp, #6
                           00019C   712 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$153 ==.
                                    713 ; genLabel
      008C7E                        714 00107$:
                           00019C   715 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$154 ==.
                                    716 ;	../SPL/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
                                    717 ; genPointerGet
      008C7E C6 50 C0         [ 1]  718 	ld	a, 0x50c0
                           00019F   719 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$155 ==.
                                    720 ;	../SPL/src/stm8s_clk.c: 243: if (NewState != DISABLE)
                                    721 ; genIfx
      008C81 0D 03            [ 1]  722 	tnz	(0x03, sp)
      008C83 26 03            [ 1]  723 	jrne	00130$
      008C85 CC 8C 90         [ 2]  724 	jp	00102$
      008C88                        725 00130$:
                           0001A6   726 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$156 ==.
                           0001A6   727 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$157 ==.
                                    728 ;	../SPL/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
                                    729 ; genOr
      008C88 AA 20            [ 1]  730 	or	a, #0x20
                                    731 ; genPointerSet
      008C8A C7 50 C0         [ 1]  732 	ld	0x50c0, a
                           0001AB   733 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$158 ==.
                                    734 ; genGoto
      008C8D CC 8C 95         [ 2]  735 	jp	00104$
                                    736 ; genLabel
      008C90                        737 00102$:
                           0001AE   738 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$159 ==.
                           0001AE   739 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$160 ==.
                                    740 ;	../SPL/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
                                    741 ; genAnd
      008C90 A4 DF            [ 1]  742 	and	a, #0xdf
                                    743 ; genPointerSet
      008C92 C7 50 C0         [ 1]  744 	ld	0x50c0, a
                           0001B3   745 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$161 ==.
                                    746 ; genLabel
      008C95                        747 00104$:
                           0001B3   748 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$162 ==.
                                    749 ;	../SPL/src/stm8s_clk.c: 253: }
                                    750 ; genEndFunction
                           0001B3   751 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$163 ==.
                           0001B3   752 	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
      008C95 81               [ 4]  753 	ret
                           0001B4   754 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$164 ==.
                           0001B4   755 	Sstm8s_clk$CLK_PeripheralClockConfig$165 ==.
                                    756 ;	../SPL/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    757 ; genLabel
                                    758 ;	-----------------------------------------
                                    759 ;	 function CLK_PeripheralClockConfig
                                    760 ;	-----------------------------------------
                                    761 ;	Register assignment is optimal.
                                    762 ;	Stack space usage: 2 bytes.
      008C96                        763 _CLK_PeripheralClockConfig:
                           0001B4   764 	Sstm8s_clk$CLK_PeripheralClockConfig$166 ==.
      008C96 89               [ 2]  765 	pushw	x
                           0001B5   766 	Sstm8s_clk$CLK_PeripheralClockConfig$167 ==.
                           0001B5   767 	Sstm8s_clk$CLK_PeripheralClockConfig$168 ==.
                                    768 ;	../SPL/src/stm8s_clk.c: 266: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                    769 ; genIfx
      008C97 0D 06            [ 1]  770 	tnz	(0x06, sp)
      008C99 26 03            [ 1]  771 	jrne	00253$
      008C9B CC 8C B5         [ 2]  772 	jp	00113$
      008C9E                        773 00253$:
                                    774 ; genCmpEQorNE
      008C9E 7B 06            [ 1]  775 	ld	a, (0x06, sp)
      008CA0 4A               [ 1]  776 	dec	a
      008CA1 26 03            [ 1]  777 	jrne	00255$
      008CA3 CC 8C B5         [ 2]  778 	jp	00113$
      008CA6                        779 00255$:
                           0001C4   780 	Sstm8s_clk$CLK_PeripheralClockConfig$169 ==.
                                    781 ; skipping generated iCode
                                    782 ; skipping iCode since result will be rematerialized
                                    783 ; skipping iCode since result will be rematerialized
                                    784 ; genIPush
      008CA6 4B 0A            [ 1]  785 	push	#0x0a
                           0001C6   786 	Sstm8s_clk$CLK_PeripheralClockConfig$170 ==.
      008CA8 4B 01            [ 1]  787 	push	#0x01
                           0001C8   788 	Sstm8s_clk$CLK_PeripheralClockConfig$171 ==.
      008CAA 5F               [ 1]  789 	clrw	x
      008CAB 89               [ 2]  790 	pushw	x
                           0001CA   791 	Sstm8s_clk$CLK_PeripheralClockConfig$172 ==.
                                    792 ; genIPush
      008CAC 4B BD            [ 1]  793 	push	#<(___str_0+0)
                           0001CC   794 	Sstm8s_clk$CLK_PeripheralClockConfig$173 ==.
      008CAE 4B 80            [ 1]  795 	push	#((___str_0+0) >> 8)
                           0001CE   796 	Sstm8s_clk$CLK_PeripheralClockConfig$174 ==.
                                    797 ; genCall
      008CB0 CD 82 99         [ 4]  798 	call	_assert_failed
      008CB3 5B 06            [ 2]  799 	addw	sp, #6
                           0001D3   800 	Sstm8s_clk$CLK_PeripheralClockConfig$175 ==.
                                    801 ; genLabel
      008CB5                        802 00113$:
                           0001D3   803 	Sstm8s_clk$CLK_PeripheralClockConfig$176 ==.
                                    804 ;	../SPL/src/stm8s_clk.c: 267: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
                                    805 ; genIfx
      008CB5 0D 05            [ 1]  806 	tnz	(0x05, sp)
      008CB7 26 03            [ 1]  807 	jrne	00257$
      008CB9 CC 8D 55         [ 2]  808 	jp	00118$
      008CBC                        809 00257$:
                                    810 ; genCmpEQorNE
      008CBC 7B 05            [ 1]  811 	ld	a, (0x05, sp)
      008CBE 4A               [ 1]  812 	dec	a
      008CBF 26 03            [ 1]  813 	jrne	00259$
      008CC1 CC 8D 55         [ 2]  814 	jp	00118$
      008CC4                        815 00259$:
                           0001E2   816 	Sstm8s_clk$CLK_PeripheralClockConfig$177 ==.
                                    817 ; skipping generated iCode
                                    818 ; genCmpEQorNE
      008CC4 7B 05            [ 1]  819 	ld	a, (0x05, sp)
      008CC6 A1 03            [ 1]  820 	cp	a, #0x03
      008CC8 26 05            [ 1]  821 	jrne	00262$
      008CCA A6 01            [ 1]  822 	ld	a, #0x01
      008CCC CC 8C D0         [ 2]  823 	jp	00263$
      008CCF                        824 00262$:
      008CCF 4F               [ 1]  825 	clr	a
      008CD0                        826 00263$:
                           0001EE   827 	Sstm8s_clk$CLK_PeripheralClockConfig$178 ==.
                                    828 ; genIfx
      008CD0 4D               [ 1]  829 	tnz	a
      008CD1 27 03            [ 1]  830 	jreq	00264$
      008CD3 CC 8D 55         [ 2]  831 	jp	00118$
      008CD6                        832 00264$:
                                    833 ; genIfx
      008CD6 4D               [ 1]  834 	tnz	a
      008CD7 27 03            [ 1]  835 	jreq	00265$
      008CD9 CC 8D 55         [ 2]  836 	jp	00118$
      008CDC                        837 00265$:
                                    838 ; genCmpEQorNE
      008CDC 7B 05            [ 1]  839 	ld	a, (0x05, sp)
      008CDE A1 02            [ 1]  840 	cp	a, #0x02
      008CE0 26 03            [ 1]  841 	jrne	00267$
      008CE2 CC 8D 55         [ 2]  842 	jp	00118$
      008CE5                        843 00267$:
                           000203   844 	Sstm8s_clk$CLK_PeripheralClockConfig$179 ==.
                                    845 ; skipping generated iCode
                                    846 ; genCmpEQorNE
      008CE5 7B 05            [ 1]  847 	ld	a, (0x05, sp)
      008CE7 A1 04            [ 1]  848 	cp	a, #0x04
      008CE9 26 06            [ 1]  849 	jrne	00270$
      008CEB A6 01            [ 1]  850 	ld	a, #0x01
      008CED 97               [ 1]  851 	ld	xl, a
      008CEE CC 8C F3         [ 2]  852 	jp	00271$
      008CF1                        853 00270$:
      008CF1 4F               [ 1]  854 	clr	a
      008CF2 97               [ 1]  855 	ld	xl, a
      008CF3                        856 00271$:
                           000211   857 	Sstm8s_clk$CLK_PeripheralClockConfig$180 ==.
                                    858 ; genIfx
      008CF3 9F               [ 1]  859 	ld	a, xl
      008CF4 4D               [ 1]  860 	tnz	a
      008CF5 27 03            [ 1]  861 	jreq	00272$
      008CF7 CC 8D 55         [ 2]  862 	jp	00118$
      008CFA                        863 00272$:
                                    864 ; genCmpEQorNE
      008CFA 7B 05            [ 1]  865 	ld	a, (0x05, sp)
      008CFC A1 05            [ 1]  866 	cp	a, #0x05
      008CFE 26 05            [ 1]  867 	jrne	00274$
      008D00 A6 01            [ 1]  868 	ld	a, #0x01
      008D02 CC 8D 06         [ 2]  869 	jp	00275$
      008D05                        870 00274$:
      008D05 4F               [ 1]  871 	clr	a
      008D06                        872 00275$:
                           000224   873 	Sstm8s_clk$CLK_PeripheralClockConfig$181 ==.
                                    874 ; genIfx
      008D06 4D               [ 1]  875 	tnz	a
      008D07 27 03            [ 1]  876 	jreq	00276$
      008D09 CC 8D 55         [ 2]  877 	jp	00118$
      008D0C                        878 00276$:
                                    879 ; genIfx
      008D0C 4D               [ 1]  880 	tnz	a
      008D0D 27 03            [ 1]  881 	jreq	00277$
      008D0F CC 8D 55         [ 2]  882 	jp	00118$
      008D12                        883 00277$:
                                    884 ; genIfx
      008D12 9F               [ 1]  885 	ld	a, xl
      008D13 4D               [ 1]  886 	tnz	a
      008D14 27 03            [ 1]  887 	jreq	00278$
      008D16 CC 8D 55         [ 2]  888 	jp	00118$
      008D19                        889 00278$:
                                    890 ; genCmpEQorNE
      008D19 7B 05            [ 1]  891 	ld	a, (0x05, sp)
      008D1B A1 06            [ 1]  892 	cp	a, #0x06
      008D1D 26 03            [ 1]  893 	jrne	00280$
      008D1F CC 8D 55         [ 2]  894 	jp	00118$
      008D22                        895 00280$:
                           000240   896 	Sstm8s_clk$CLK_PeripheralClockConfig$182 ==.
                                    897 ; skipping generated iCode
                                    898 ; genCmpEQorNE
      008D22 7B 05            [ 1]  899 	ld	a, (0x05, sp)
      008D24 A1 07            [ 1]  900 	cp	a, #0x07
      008D26 26 03            [ 1]  901 	jrne	00283$
      008D28 CC 8D 55         [ 2]  902 	jp	00118$
      008D2B                        903 00283$:
                           000249   904 	Sstm8s_clk$CLK_PeripheralClockConfig$183 ==.
                                    905 ; skipping generated iCode
                                    906 ; genCmpEQorNE
      008D2B 7B 05            [ 1]  907 	ld	a, (0x05, sp)
      008D2D A1 17            [ 1]  908 	cp	a, #0x17
      008D2F 26 03            [ 1]  909 	jrne	00286$
      008D31 CC 8D 55         [ 2]  910 	jp	00118$
      008D34                        911 00286$:
                           000252   912 	Sstm8s_clk$CLK_PeripheralClockConfig$184 ==.
                                    913 ; skipping generated iCode
                                    914 ; genCmpEQorNE
      008D34 7B 05            [ 1]  915 	ld	a, (0x05, sp)
      008D36 A1 13            [ 1]  916 	cp	a, #0x13
      008D38 26 03            [ 1]  917 	jrne	00289$
      008D3A CC 8D 55         [ 2]  918 	jp	00118$
      008D3D                        919 00289$:
                           00025B   920 	Sstm8s_clk$CLK_PeripheralClockConfig$185 ==.
                                    921 ; skipping generated iCode
                                    922 ; genCmpEQorNE
      008D3D 7B 05            [ 1]  923 	ld	a, (0x05, sp)
      008D3F A1 12            [ 1]  924 	cp	a, #0x12
      008D41 26 03            [ 1]  925 	jrne	00292$
      008D43 CC 8D 55         [ 2]  926 	jp	00118$
      008D46                        927 00292$:
                           000264   928 	Sstm8s_clk$CLK_PeripheralClockConfig$186 ==.
                                    929 ; skipping generated iCode
                                    930 ; skipping iCode since result will be rematerialized
                                    931 ; skipping iCode since result will be rematerialized
                                    932 ; genIPush
      008D46 4B 0B            [ 1]  933 	push	#0x0b
                           000266   934 	Sstm8s_clk$CLK_PeripheralClockConfig$187 ==.
      008D48 4B 01            [ 1]  935 	push	#0x01
                           000268   936 	Sstm8s_clk$CLK_PeripheralClockConfig$188 ==.
      008D4A 5F               [ 1]  937 	clrw	x
      008D4B 89               [ 2]  938 	pushw	x
                           00026A   939 	Sstm8s_clk$CLK_PeripheralClockConfig$189 ==.
                                    940 ; genIPush
      008D4C 4B BD            [ 1]  941 	push	#<(___str_0+0)
                           00026C   942 	Sstm8s_clk$CLK_PeripheralClockConfig$190 ==.
      008D4E 4B 80            [ 1]  943 	push	#((___str_0+0) >> 8)
                           00026E   944 	Sstm8s_clk$CLK_PeripheralClockConfig$191 ==.
                                    945 ; genCall
      008D50 CD 82 99         [ 4]  946 	call	_assert_failed
      008D53 5B 06            [ 2]  947 	addw	sp, #6
                           000273   948 	Sstm8s_clk$CLK_PeripheralClockConfig$192 ==.
                                    949 ; genLabel
      008D55                        950 00118$:
                           000273   951 	Sstm8s_clk$CLK_PeripheralClockConfig$193 ==.
                                    952 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    953 ; genAnd
      008D55 7B 05            [ 1]  954 	ld	a, (0x05, sp)
      008D57 A4 0F            [ 1]  955 	and	a, #0x0f
                                    956 ; genLeftShift
      008D59 88               [ 1]  957 	push	a
                           000278   958 	Sstm8s_clk$CLK_PeripheralClockConfig$194 ==.
      008D5A A6 01            [ 1]  959 	ld	a, #0x01
      008D5C 6B 02            [ 1]  960 	ld	(0x02, sp), a
      008D5E 84               [ 1]  961 	pop	a
                           00027D   962 	Sstm8s_clk$CLK_PeripheralClockConfig$195 ==.
      008D5F 4D               [ 1]  963 	tnz	a
      008D60 27 05            [ 1]  964 	jreq	00295$
      008D62                        965 00294$:
      008D62 08 01            [ 1]  966 	sll	(0x01, sp)
      008D64 4A               [ 1]  967 	dec	a
      008D65 26 FB            [ 1]  968 	jrne	00294$
      008D67                        969 00295$:
                           000285   970 	Sstm8s_clk$CLK_PeripheralClockConfig$196 ==.
                                    971 ;	../SPL/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    972 ; genCpl
      008D67 7B 01            [ 1]  973 	ld	a, (0x01, sp)
      008D69 43               [ 1]  974 	cpl	a
      008D6A 6B 02            [ 1]  975 	ld	(0x02, sp), a
                           00028A   976 	Sstm8s_clk$CLK_PeripheralClockConfig$197 ==.
                                    977 ;	../SPL/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
                                    978 ; genAnd
      008D6C 7B 05            [ 1]  979 	ld	a, (0x05, sp)
      008D6E A5 10            [ 1]  980 	bcp	a, #0x10
      008D70 27 03            [ 1]  981 	jreq	00296$
      008D72 CC 8D 8F         [ 2]  982 	jp	00108$
      008D75                        983 00296$:
                                    984 ; skipping generated iCode
                           000293   985 	Sstm8s_clk$CLK_PeripheralClockConfig$198 ==.
                                    986 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    987 ; genPointerGet
      008D75 C6 50 C7         [ 1]  988 	ld	a, 0x50c7
                           000296   989 	Sstm8s_clk$CLK_PeripheralClockConfig$199 ==.
                           000296   990 	Sstm8s_clk$CLK_PeripheralClockConfig$200 ==.
                                    991 ;	../SPL/src/stm8s_clk.c: 271: if (NewState != DISABLE)
                                    992 ; genIfx
      008D78 0D 06            [ 1]  993 	tnz	(0x06, sp)
      008D7A 26 03            [ 1]  994 	jrne	00297$
      008D7C CC 8D 87         [ 2]  995 	jp	00102$
      008D7F                        996 00297$:
                           00029D   997 	Sstm8s_clk$CLK_PeripheralClockConfig$201 ==.
                           00029D   998 	Sstm8s_clk$CLK_PeripheralClockConfig$202 ==.
                                    999 ;	../SPL/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                   1000 ; genOr
      008D7F 1A 01            [ 1] 1001 	or	a, (0x01, sp)
                                   1002 ; genPointerSet
      008D81 C7 50 C7         [ 1] 1003 	ld	0x50c7, a
                           0002A2  1004 	Sstm8s_clk$CLK_PeripheralClockConfig$203 ==.
                                   1005 ; genGoto
      008D84 CC 8D A6         [ 2] 1006 	jp	00110$
                                   1007 ; genLabel
      008D87                       1008 00102$:
                           0002A5  1009 	Sstm8s_clk$CLK_PeripheralClockConfig$204 ==.
                           0002A5  1010 	Sstm8s_clk$CLK_PeripheralClockConfig$205 ==.
                                   1011 ;	../SPL/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                   1012 ; genAnd
      008D87 14 02            [ 1] 1013 	and	a, (0x02, sp)
                                   1014 ; genPointerSet
      008D89 C7 50 C7         [ 1] 1015 	ld	0x50c7, a
                           0002AA  1016 	Sstm8s_clk$CLK_PeripheralClockConfig$206 ==.
                                   1017 ; genGoto
      008D8C CC 8D A6         [ 2] 1018 	jp	00110$
                                   1019 ; genLabel
      008D8F                       1020 00108$:
                           0002AD  1021 	Sstm8s_clk$CLK_PeripheralClockConfig$207 ==.
                                   1022 ;	../SPL/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                   1023 ; genPointerGet
      008D8F C6 50 CA         [ 1] 1024 	ld	a, 0x50ca
                           0002B0  1025 	Sstm8s_clk$CLK_PeripheralClockConfig$208 ==.
                           0002B0  1026 	Sstm8s_clk$CLK_PeripheralClockConfig$209 ==.
                                   1027 ;	../SPL/src/stm8s_clk.c: 284: if (NewState != DISABLE)
                                   1028 ; genIfx
      008D92 0D 06            [ 1] 1029 	tnz	(0x06, sp)
      008D94 26 03            [ 1] 1030 	jrne	00298$
      008D96 CC 8D A1         [ 2] 1031 	jp	00105$
      008D99                       1032 00298$:
                           0002B7  1033 	Sstm8s_clk$CLK_PeripheralClockConfig$210 ==.
                           0002B7  1034 	Sstm8s_clk$CLK_PeripheralClockConfig$211 ==.
                                   1035 ;	../SPL/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                   1036 ; genOr
      008D99 1A 01            [ 1] 1037 	or	a, (0x01, sp)
                                   1038 ; genPointerSet
      008D9B C7 50 CA         [ 1] 1039 	ld	0x50ca, a
                           0002BC  1040 	Sstm8s_clk$CLK_PeripheralClockConfig$212 ==.
                                   1041 ; genGoto
      008D9E CC 8D A6         [ 2] 1042 	jp	00110$
                                   1043 ; genLabel
      008DA1                       1044 00105$:
                           0002BF  1045 	Sstm8s_clk$CLK_PeripheralClockConfig$213 ==.
                           0002BF  1046 	Sstm8s_clk$CLK_PeripheralClockConfig$214 ==.
                                   1047 ;	../SPL/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                   1048 ; genAnd
      008DA1 14 02            [ 1] 1049 	and	a, (0x02, sp)
                                   1050 ; genPointerSet
      008DA3 C7 50 CA         [ 1] 1051 	ld	0x50ca, a
                           0002C4  1052 	Sstm8s_clk$CLK_PeripheralClockConfig$215 ==.
                                   1053 ; genLabel
      008DA6                       1054 00110$:
                           0002C4  1055 	Sstm8s_clk$CLK_PeripheralClockConfig$216 ==.
                                   1056 ;	../SPL/src/stm8s_clk.c: 295: }
                                   1057 ; genEndFunction
      008DA6 85               [ 2] 1058 	popw	x
                           0002C5  1059 	Sstm8s_clk$CLK_PeripheralClockConfig$217 ==.
                           0002C5  1060 	Sstm8s_clk$CLK_PeripheralClockConfig$218 ==.
                           0002C5  1061 	XG$CLK_PeripheralClockConfig$0$0 ==.
      008DA7 81               [ 4] 1062 	ret
                           0002C6  1063 	Sstm8s_clk$CLK_PeripheralClockConfig$219 ==.
                           0002C6  1064 	Sstm8s_clk$CLK_ClockSwitchConfig$220 ==.
                                   1065 ;	../SPL/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                   1066 ; genLabel
                                   1067 ;	-----------------------------------------
                                   1068 ;	 function CLK_ClockSwitchConfig
                                   1069 ;	-----------------------------------------
                                   1070 ;	Register assignment might be sub-optimal.
                                   1071 ;	Stack space usage: 3 bytes.
      008DA8                       1072 _CLK_ClockSwitchConfig:
                           0002C6  1073 	Sstm8s_clk$CLK_ClockSwitchConfig$221 ==.
      008DA8 52 03            [ 2] 1074 	sub	sp, #3
                           0002C8  1075 	Sstm8s_clk$CLK_ClockSwitchConfig$222 ==.
                           0002C8  1076 	Sstm8s_clk$CLK_ClockSwitchConfig$223 ==.
                                   1077 ;	../SPL/src/stm8s_clk.c: 312: uint16_t DownCounter = CLK_TIMEOUT;
                                   1078 ; genAssign
      008DAA AE FF FF         [ 2] 1079 	ldw	x, #0xffff
      008DAD 1F 01            [ 2] 1080 	ldw	(0x01, sp), x
                           0002CD  1081 	Sstm8s_clk$CLK_ClockSwitchConfig$224 ==.
                                   1082 ;	../SPL/src/stm8s_clk.c: 316: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
                                   1083 ; genCmpEQorNE
      008DAF 7B 07            [ 1] 1084 	ld	a, (0x07, sp)
      008DB1 A1 E1            [ 1] 1085 	cp	a, #0xe1
      008DB3 26 03            [ 1] 1086 	jrne	00300$
      008DB5 CC 8D D9         [ 2] 1087 	jp	00140$
      008DB8                       1088 00300$:
                           0002D6  1089 	Sstm8s_clk$CLK_ClockSwitchConfig$225 ==.
                                   1090 ; skipping generated iCode
                                   1091 ; genCmpEQorNE
      008DB8 7B 07            [ 1] 1092 	ld	a, (0x07, sp)
      008DBA A1 D2            [ 1] 1093 	cp	a, #0xd2
      008DBC 26 03            [ 1] 1094 	jrne	00303$
      008DBE CC 8D D9         [ 2] 1095 	jp	00140$
      008DC1                       1096 00303$:
                           0002DF  1097 	Sstm8s_clk$CLK_ClockSwitchConfig$226 ==.
                                   1098 ; skipping generated iCode
                                   1099 ; genCmpEQorNE
      008DC1 7B 07            [ 1] 1100 	ld	a, (0x07, sp)
      008DC3 A1 B4            [ 1] 1101 	cp	a, #0xb4
      008DC5 26 03            [ 1] 1102 	jrne	00306$
      008DC7 CC 8D D9         [ 2] 1103 	jp	00140$
      008DCA                       1104 00306$:
                           0002E8  1105 	Sstm8s_clk$CLK_ClockSwitchConfig$227 ==.
                                   1106 ; skipping generated iCode
                                   1107 ; skipping iCode since result will be rematerialized
                                   1108 ; skipping iCode since result will be rematerialized
                                   1109 ; genIPush
      008DCA 4B 3C            [ 1] 1110 	push	#0x3c
                           0002EA  1111 	Sstm8s_clk$CLK_ClockSwitchConfig$228 ==.
      008DCC 4B 01            [ 1] 1112 	push	#0x01
                           0002EC  1113 	Sstm8s_clk$CLK_ClockSwitchConfig$229 ==.
      008DCE 5F               [ 1] 1114 	clrw	x
      008DCF 89               [ 2] 1115 	pushw	x
                           0002EE  1116 	Sstm8s_clk$CLK_ClockSwitchConfig$230 ==.
                                   1117 ; genIPush
      008DD0 4B BD            [ 1] 1118 	push	#<(___str_0+0)
                           0002F0  1119 	Sstm8s_clk$CLK_ClockSwitchConfig$231 ==.
      008DD2 4B 80            [ 1] 1120 	push	#((___str_0+0) >> 8)
                           0002F2  1121 	Sstm8s_clk$CLK_ClockSwitchConfig$232 ==.
                                   1122 ; genCall
      008DD4 CD 82 99         [ 4] 1123 	call	_assert_failed
      008DD7 5B 06            [ 2] 1124 	addw	sp, #6
                           0002F7  1125 	Sstm8s_clk$CLK_ClockSwitchConfig$233 ==.
                                   1126 ; genLabel
      008DD9                       1127 00140$:
                           0002F7  1128 	Sstm8s_clk$CLK_ClockSwitchConfig$234 ==.
                                   1129 ;	../SPL/src/stm8s_clk.c: 317: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
                                   1130 ; genCmpEQorNE
      008DD9 7B 06            [ 1] 1131 	ld	a, (0x06, sp)
      008DDB 4A               [ 1] 1132 	dec	a
      008DDC 26 07            [ 1] 1133 	jrne	00309$
      008DDE A6 01            [ 1] 1134 	ld	a, #0x01
      008DE0 6B 03            [ 1] 1135 	ld	(0x03, sp), a
      008DE2 CC 8D E7         [ 2] 1136 	jp	00310$
      008DE5                       1137 00309$:
      008DE5 0F 03            [ 1] 1138 	clr	(0x03, sp)
      008DE7                       1139 00310$:
                           000305  1140 	Sstm8s_clk$CLK_ClockSwitchConfig$235 ==.
                                   1141 ; genIfx
      008DE7 0D 06            [ 1] 1142 	tnz	(0x06, sp)
      008DE9 26 03            [ 1] 1143 	jrne	00311$
      008DEB CC 8E 04         [ 2] 1144 	jp	00148$
      008DEE                       1145 00311$:
                                   1146 ; genIfx
      008DEE 0D 03            [ 1] 1147 	tnz	(0x03, sp)
      008DF0 27 03            [ 1] 1148 	jreq	00312$
      008DF2 CC 8E 04         [ 2] 1149 	jp	00148$
      008DF5                       1150 00312$:
                                   1151 ; skipping iCode since result will be rematerialized
                                   1152 ; skipping iCode since result will be rematerialized
                                   1153 ; genIPush
      008DF5 4B 3D            [ 1] 1154 	push	#0x3d
                           000315  1155 	Sstm8s_clk$CLK_ClockSwitchConfig$236 ==.
      008DF7 4B 01            [ 1] 1156 	push	#0x01
                           000317  1157 	Sstm8s_clk$CLK_ClockSwitchConfig$237 ==.
      008DF9 5F               [ 1] 1158 	clrw	x
      008DFA 89               [ 2] 1159 	pushw	x
                           000319  1160 	Sstm8s_clk$CLK_ClockSwitchConfig$238 ==.
                                   1161 ; genIPush
      008DFB 4B BD            [ 1] 1162 	push	#<(___str_0+0)
                           00031B  1163 	Sstm8s_clk$CLK_ClockSwitchConfig$239 ==.
      008DFD 4B 80            [ 1] 1164 	push	#((___str_0+0) >> 8)
                           00031D  1165 	Sstm8s_clk$CLK_ClockSwitchConfig$240 ==.
                                   1166 ; genCall
      008DFF CD 82 99         [ 4] 1167 	call	_assert_failed
      008E02 5B 06            [ 2] 1168 	addw	sp, #6
                           000322  1169 	Sstm8s_clk$CLK_ClockSwitchConfig$241 ==.
                                   1170 ; genLabel
      008E04                       1171 00148$:
                           000322  1172 	Sstm8s_clk$CLK_ClockSwitchConfig$242 ==.
                                   1173 ;	../SPL/src/stm8s_clk.c: 318: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
                                   1174 ; genIfx
      008E04 0D 08            [ 1] 1175 	tnz	(0x08, sp)
      008E06 26 03            [ 1] 1176 	jrne	00313$
      008E08 CC 8E 22         [ 2] 1177 	jp	00153$
      008E0B                       1178 00313$:
                                   1179 ; genCmpEQorNE
      008E0B 7B 08            [ 1] 1180 	ld	a, (0x08, sp)
      008E0D 4A               [ 1] 1181 	dec	a
      008E0E 26 03            [ 1] 1182 	jrne	00315$
      008E10 CC 8E 22         [ 2] 1183 	jp	00153$
      008E13                       1184 00315$:
                           000331  1185 	Sstm8s_clk$CLK_ClockSwitchConfig$243 ==.
                                   1186 ; skipping generated iCode
                                   1187 ; skipping iCode since result will be rematerialized
                                   1188 ; skipping iCode since result will be rematerialized
                                   1189 ; genIPush
      008E13 4B 3E            [ 1] 1190 	push	#0x3e
                           000333  1191 	Sstm8s_clk$CLK_ClockSwitchConfig$244 ==.
      008E15 4B 01            [ 1] 1192 	push	#0x01
                           000335  1193 	Sstm8s_clk$CLK_ClockSwitchConfig$245 ==.
      008E17 5F               [ 1] 1194 	clrw	x
      008E18 89               [ 2] 1195 	pushw	x
                           000337  1196 	Sstm8s_clk$CLK_ClockSwitchConfig$246 ==.
                                   1197 ; genIPush
      008E19 4B BD            [ 1] 1198 	push	#<(___str_0+0)
                           000339  1199 	Sstm8s_clk$CLK_ClockSwitchConfig$247 ==.
      008E1B 4B 80            [ 1] 1200 	push	#((___str_0+0) >> 8)
                           00033B  1201 	Sstm8s_clk$CLK_ClockSwitchConfig$248 ==.
                                   1202 ; genCall
      008E1D CD 82 99         [ 4] 1203 	call	_assert_failed
      008E20 5B 06            [ 2] 1204 	addw	sp, #6
                           000340  1205 	Sstm8s_clk$CLK_ClockSwitchConfig$249 ==.
                                   1206 ; genLabel
      008E22                       1207 00153$:
                           000340  1208 	Sstm8s_clk$CLK_ClockSwitchConfig$250 ==.
                                   1209 ;	../SPL/src/stm8s_clk.c: 319: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
                                   1210 ; genIfx
      008E22 0D 09            [ 1] 1211 	tnz	(0x09, sp)
      008E24 26 03            [ 1] 1212 	jrne	00317$
      008E26 CC 8E 40         [ 2] 1213 	jp	00158$
      008E29                       1214 00317$:
                                   1215 ; genCmpEQorNE
      008E29 7B 09            [ 1] 1216 	ld	a, (0x09, sp)
      008E2B 4A               [ 1] 1217 	dec	a
      008E2C 26 03            [ 1] 1218 	jrne	00319$
      008E2E CC 8E 40         [ 2] 1219 	jp	00158$
      008E31                       1220 00319$:
                           00034F  1221 	Sstm8s_clk$CLK_ClockSwitchConfig$251 ==.
                                   1222 ; skipping generated iCode
                                   1223 ; skipping iCode since result will be rematerialized
                                   1224 ; skipping iCode since result will be rematerialized
                                   1225 ; genIPush
      008E31 4B 3F            [ 1] 1226 	push	#0x3f
                           000351  1227 	Sstm8s_clk$CLK_ClockSwitchConfig$252 ==.
      008E33 4B 01            [ 1] 1228 	push	#0x01
                           000353  1229 	Sstm8s_clk$CLK_ClockSwitchConfig$253 ==.
      008E35 5F               [ 1] 1230 	clrw	x
      008E36 89               [ 2] 1231 	pushw	x
                           000355  1232 	Sstm8s_clk$CLK_ClockSwitchConfig$254 ==.
                                   1233 ; genIPush
      008E37 4B BD            [ 1] 1234 	push	#<(___str_0+0)
                           000357  1235 	Sstm8s_clk$CLK_ClockSwitchConfig$255 ==.
      008E39 4B 80            [ 1] 1236 	push	#((___str_0+0) >> 8)
                           000359  1237 	Sstm8s_clk$CLK_ClockSwitchConfig$256 ==.
                                   1238 ; genCall
      008E3B CD 82 99         [ 4] 1239 	call	_assert_failed
      008E3E 5B 06            [ 2] 1240 	addw	sp, #6
                           00035E  1241 	Sstm8s_clk$CLK_ClockSwitchConfig$257 ==.
                                   1242 ; genLabel
      008E40                       1243 00158$:
                           00035E  1244 	Sstm8s_clk$CLK_ClockSwitchConfig$258 ==.
                                   1245 ;	../SPL/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
                                   1246 ; genPointerGet
      008E40 C6 50 C3         [ 1] 1247 	ld	a, 0x50c3
      008E43 90 97            [ 1] 1248 	ld	yl, a
                           000363  1249 	Sstm8s_clk$CLK_ClockSwitchConfig$259 ==.
                                   1250 ;	../SPL/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
                                   1251 ; genPointerGet
      008E45 C6 50 C5         [ 1] 1252 	ld	a, 0x50c5
      008E48 97               [ 1] 1253 	ld	xl, a
                           000367  1254 	Sstm8s_clk$CLK_ClockSwitchConfig$260 ==.
                                   1255 ;	../SPL/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
                                   1256 ; genAssign
      008E49 7B 03            [ 1] 1257 	ld	a, (0x03, sp)
                                   1258 ; genIfx
      008E4B 4D               [ 1] 1259 	tnz	a
      008E4C 26 03            [ 1] 1260 	jrne	00321$
      008E4E CC 8E 99         [ 2] 1261 	jp	00122$
      008E51                       1262 00321$:
                           00036F  1263 	Sstm8s_clk$CLK_ClockSwitchConfig$261 ==.
                           00036F  1264 	Sstm8s_clk$CLK_ClockSwitchConfig$262 ==.
                                   1265 ;	../SPL/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
                                   1266 ; genOr
      008E51 9F               [ 1] 1267 	ld	a, xl
      008E52 AA 02            [ 1] 1268 	or	a, #0x02
                                   1269 ; genPointerSet
      008E54 C7 50 C5         [ 1] 1270 	ld	0x50c5, a
                           000375  1271 	Sstm8s_clk$CLK_ClockSwitchConfig$263 ==.
                                   1272 ; genPointerGet
      008E57 C6 50 C5         [ 1] 1273 	ld	a, 0x50c5
                           000378  1274 	Sstm8s_clk$CLK_ClockSwitchConfig$264 ==.
                                   1275 ;	../SPL/src/stm8s_clk.c: 331: if (ITState != DISABLE)
                                   1276 ; genIfx
      008E5A 0D 08            [ 1] 1277 	tnz	(0x08, sp)
      008E5C 26 03            [ 1] 1278 	jrne	00322$
      008E5E CC 8E 69         [ 2] 1279 	jp	00102$
      008E61                       1280 00322$:
                           00037F  1281 	Sstm8s_clk$CLK_ClockSwitchConfig$265 ==.
                           00037F  1282 	Sstm8s_clk$CLK_ClockSwitchConfig$266 ==.
                                   1283 ;	../SPL/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
                                   1284 ; genOr
      008E61 AA 04            [ 1] 1285 	or	a, #0x04
                                   1286 ; genPointerSet
      008E63 C7 50 C5         [ 1] 1287 	ld	0x50c5, a
                           000384  1288 	Sstm8s_clk$CLK_ClockSwitchConfig$267 ==.
                                   1289 ; genGoto
      008E66 CC 8E 6E         [ 2] 1290 	jp	00103$
                                   1291 ; genLabel
      008E69                       1292 00102$:
                           000387  1293 	Sstm8s_clk$CLK_ClockSwitchConfig$268 ==.
                           000387  1294 	Sstm8s_clk$CLK_ClockSwitchConfig$269 ==.
                                   1295 ;	../SPL/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
                                   1296 ; genAnd
      008E69 A4 FB            [ 1] 1297 	and	a, #0xfb
                                   1298 ; genPointerSet
      008E6B C7 50 C5         [ 1] 1299 	ld	0x50c5, a
                           00038C  1300 	Sstm8s_clk$CLK_ClockSwitchConfig$270 ==.
                                   1301 ; genLabel
      008E6E                       1302 00103$:
                           00038C  1303 	Sstm8s_clk$CLK_ClockSwitchConfig$271 ==.
                                   1304 ;	../SPL/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
                                   1305 ; genPointerSet
      008E6E AE 50 C4         [ 2] 1306 	ldw	x, #0x50c4
      008E71 7B 07            [ 1] 1307 	ld	a, (0x07, sp)
      008E73 F7               [ 1] 1308 	ld	(x), a
                           000392  1309 	Sstm8s_clk$CLK_ClockSwitchConfig$272 ==.
                           000392  1310 	Sstm8s_clk$CLK_ClockSwitchConfig$273 ==.
                                   1311 ;	../SPL/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
                                   1312 ; genAssign
      008E74 1E 01            [ 2] 1313 	ldw	x, (0x01, sp)
                                   1314 ; genLabel
      008E76                       1315 00105$:
                                   1316 ; genPointerGet
      008E76 C6 50 C5         [ 1] 1317 	ld	a, 0x50c5
                                   1318 ; genAnd
      008E79 44               [ 1] 1319 	srl	a
      008E7A 25 03            [ 1] 1320 	jrc	00323$
      008E7C CC 8E 89         [ 2] 1321 	jp	00189$
      008E7F                       1322 00323$:
                                   1323 ; skipping generated iCode
                                   1324 ; genIfx
      008E7F 5D               [ 2] 1325 	tnzw	x
      008E80 26 03            [ 1] 1326 	jrne	00324$
      008E82 CC 8E 89         [ 2] 1327 	jp	00189$
      008E85                       1328 00324$:
                           0003A3  1329 	Sstm8s_clk$CLK_ClockSwitchConfig$274 ==.
                           0003A3  1330 	Sstm8s_clk$CLK_ClockSwitchConfig$275 ==.
                                   1331 ;	../SPL/src/stm8s_clk.c: 346: DownCounter--;
                                   1332 ; genMinus
      008E85 5A               [ 2] 1333 	decw	x
                           0003A4  1334 	Sstm8s_clk$CLK_ClockSwitchConfig$276 ==.
                                   1335 ; genGoto
      008E86 CC 8E 76         [ 2] 1336 	jp	00105$
                           0003A7  1337 	Sstm8s_clk$CLK_ClockSwitchConfig$277 ==.
                                   1338 ; genLabel
      008E89                       1339 00189$:
                                   1340 ; genAssign
                           0003A7  1341 	Sstm8s_clk$CLK_ClockSwitchConfig$278 ==.
                                   1342 ;	../SPL/src/stm8s_clk.c: 349: if(DownCounter != 0)
                                   1343 ; genIfx
      008E89 5D               [ 2] 1344 	tnzw	x
      008E8A 26 03            [ 1] 1345 	jrne	00325$
      008E8C CC 8E 95         [ 2] 1346 	jp	00109$
      008E8F                       1347 00325$:
                           0003AD  1348 	Sstm8s_clk$CLK_ClockSwitchConfig$279 ==.
                           0003AD  1349 	Sstm8s_clk$CLK_ClockSwitchConfig$280 ==.
                                   1350 ;	../SPL/src/stm8s_clk.c: 351: Swif = SUCCESS;
                                   1351 ; genAssign
      008E8F A6 01            [ 1] 1352 	ld	a, #0x01
      008E91 97               [ 1] 1353 	ld	xl, a
                           0003B0  1354 	Sstm8s_clk$CLK_ClockSwitchConfig$281 ==.
                                   1355 ; genGoto
      008E92 CC 8E E0         [ 2] 1356 	jp	00123$
                                   1357 ; genLabel
      008E95                       1358 00109$:
                           0003B3  1359 	Sstm8s_clk$CLK_ClockSwitchConfig$282 ==.
                           0003B3  1360 	Sstm8s_clk$CLK_ClockSwitchConfig$283 ==.
                                   1361 ;	../SPL/src/stm8s_clk.c: 355: Swif = ERROR;
                                   1362 ; genAssign
      008E95 5F               [ 1] 1363 	clrw	x
                           0003B4  1364 	Sstm8s_clk$CLK_ClockSwitchConfig$284 ==.
                                   1365 ; genGoto
      008E96 CC 8E E0         [ 2] 1366 	jp	00123$
                                   1367 ; genLabel
      008E99                       1368 00122$:
                           0003B7  1369 	Sstm8s_clk$CLK_ClockSwitchConfig$285 ==.
                           0003B7  1370 	Sstm8s_clk$CLK_ClockSwitchConfig$286 ==.
                                   1371 ;	../SPL/src/stm8s_clk.c: 361: if (ITState != DISABLE)
                                   1372 ; genIfx
      008E99 0D 08            [ 1] 1373 	tnz	(0x08, sp)
      008E9B 26 03            [ 1] 1374 	jrne	00326$
      008E9D CC 8E A9         [ 2] 1375 	jp	00112$
      008EA0                       1376 00326$:
                           0003BE  1377 	Sstm8s_clk$CLK_ClockSwitchConfig$287 ==.
                           0003BE  1378 	Sstm8s_clk$CLK_ClockSwitchConfig$288 ==.
                                   1379 ;	../SPL/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
                                   1380 ; genOr
      008EA0 9F               [ 1] 1381 	ld	a, xl
      008EA1 AA 04            [ 1] 1382 	or	a, #0x04
                                   1383 ; genPointerSet
      008EA3 C7 50 C5         [ 1] 1384 	ld	0x50c5, a
                           0003C4  1385 	Sstm8s_clk$CLK_ClockSwitchConfig$289 ==.
                                   1386 ; genGoto
      008EA6 CC 8E AF         [ 2] 1387 	jp	00113$
                                   1388 ; genLabel
      008EA9                       1389 00112$:
                           0003C7  1390 	Sstm8s_clk$CLK_ClockSwitchConfig$290 ==.
                           0003C7  1391 	Sstm8s_clk$CLK_ClockSwitchConfig$291 ==.
                                   1392 ;	../SPL/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
                                   1393 ; genAnd
      008EA9 9F               [ 1] 1394 	ld	a, xl
      008EAA A4 FB            [ 1] 1395 	and	a, #0xfb
                                   1396 ; genPointerSet
      008EAC C7 50 C5         [ 1] 1397 	ld	0x50c5, a
                           0003CD  1398 	Sstm8s_clk$CLK_ClockSwitchConfig$292 ==.
                                   1399 ; genLabel
      008EAF                       1400 00113$:
                           0003CD  1401 	Sstm8s_clk$CLK_ClockSwitchConfig$293 ==.
                                   1402 ;	../SPL/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
                                   1403 ; genPointerSet
      008EAF AE 50 C4         [ 2] 1404 	ldw	x, #0x50c4
      008EB2 7B 07            [ 1] 1405 	ld	a, (0x07, sp)
      008EB4 F7               [ 1] 1406 	ld	(x), a
                           0003D3  1407 	Sstm8s_clk$CLK_ClockSwitchConfig$294 ==.
                           0003D3  1408 	Sstm8s_clk$CLK_ClockSwitchConfig$295 ==.
                                   1409 ;	../SPL/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
                                   1410 ; genAssign
      008EB5 1E 01            [ 2] 1411 	ldw	x, (0x01, sp)
                                   1412 ; genLabel
      008EB7                       1413 00115$:
                                   1414 ; genPointerGet
      008EB7 C6 50 C5         [ 1] 1415 	ld	a, 0x50c5
                                   1416 ; genAnd
      008EBA A5 08            [ 1] 1417 	bcp	a, #0x08
      008EBC 26 03            [ 1] 1418 	jrne	00327$
      008EBE CC 8E CB         [ 2] 1419 	jp	00190$
      008EC1                       1420 00327$:
                                   1421 ; skipping generated iCode
                                   1422 ; genIfx
      008EC1 5D               [ 2] 1423 	tnzw	x
      008EC2 26 03            [ 1] 1424 	jrne	00328$
      008EC4 CC 8E CB         [ 2] 1425 	jp	00190$
      008EC7                       1426 00328$:
                           0003E5  1427 	Sstm8s_clk$CLK_ClockSwitchConfig$296 ==.
                           0003E5  1428 	Sstm8s_clk$CLK_ClockSwitchConfig$297 ==.
                                   1429 ;	../SPL/src/stm8s_clk.c: 376: DownCounter--;
                                   1430 ; genMinus
      008EC7 5A               [ 2] 1431 	decw	x
                           0003E6  1432 	Sstm8s_clk$CLK_ClockSwitchConfig$298 ==.
                                   1433 ; genGoto
      008EC8 CC 8E B7         [ 2] 1434 	jp	00115$
                           0003E9  1435 	Sstm8s_clk$CLK_ClockSwitchConfig$299 ==.
                                   1436 ; genLabel
      008ECB                       1437 00190$:
                                   1438 ; genAssign
                           0003E9  1439 	Sstm8s_clk$CLK_ClockSwitchConfig$300 ==.
                                   1440 ;	../SPL/src/stm8s_clk.c: 379: if(DownCounter != 0)
                                   1441 ; genIfx
      008ECB 5D               [ 2] 1442 	tnzw	x
      008ECC 26 03            [ 1] 1443 	jrne	00329$
      008ECE CC 8E DF         [ 2] 1444 	jp	00119$
      008ED1                       1445 00329$:
                           0003EF  1446 	Sstm8s_clk$CLK_ClockSwitchConfig$301 ==.
                           0003EF  1447 	Sstm8s_clk$CLK_ClockSwitchConfig$302 ==.
                                   1448 ;	../SPL/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
                                   1449 ; genPointerGet
      008ED1 C6 50 C5         [ 1] 1450 	ld	a, 0x50c5
                                   1451 ; genOr
      008ED4 AA 02            [ 1] 1452 	or	a, #0x02
                                   1453 ; genPointerSet
      008ED6 C7 50 C5         [ 1] 1454 	ld	0x50c5, a
                           0003F7  1455 	Sstm8s_clk$CLK_ClockSwitchConfig$303 ==.
                                   1456 ;	../SPL/src/stm8s_clk.c: 383: Swif = SUCCESS;
                                   1457 ; genAssign
      008ED9 A6 01            [ 1] 1458 	ld	a, #0x01
      008EDB 97               [ 1] 1459 	ld	xl, a
                           0003FA  1460 	Sstm8s_clk$CLK_ClockSwitchConfig$304 ==.
                                   1461 ; genGoto
      008EDC CC 8E E0         [ 2] 1462 	jp	00123$
                                   1463 ; genLabel
      008EDF                       1464 00119$:
                           0003FD  1465 	Sstm8s_clk$CLK_ClockSwitchConfig$305 ==.
                           0003FD  1466 	Sstm8s_clk$CLK_ClockSwitchConfig$306 ==.
                                   1467 ;	../SPL/src/stm8s_clk.c: 387: Swif = ERROR;
                                   1468 ; genAssign
      008EDF 5F               [ 1] 1469 	clrw	x
                           0003FE  1470 	Sstm8s_clk$CLK_ClockSwitchConfig$307 ==.
                                   1471 ; genLabel
      008EE0                       1472 00123$:
                           0003FE  1473 	Sstm8s_clk$CLK_ClockSwitchConfig$308 ==.
                                   1474 ;	../SPL/src/stm8s_clk.c: 390: if(Swif != ERROR)
                                   1475 ; genIfx
      008EE0 9F               [ 1] 1476 	ld	a, xl
      008EE1 4D               [ 1] 1477 	tnz	a
      008EE2 26 03            [ 1] 1478 	jrne	00330$
      008EE4 CC 8F 3E         [ 2] 1479 	jp	00136$
      008EE7                       1480 00330$:
                           000405  1481 	Sstm8s_clk$CLK_ClockSwitchConfig$309 ==.
                           000405  1482 	Sstm8s_clk$CLK_ClockSwitchConfig$310 ==.
                                   1483 ;	../SPL/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
                                   1484 ; genIfx
      008EE7 0D 09            [ 1] 1485 	tnz	(0x09, sp)
      008EE9 27 03            [ 1] 1486 	jreq	00331$
      008EEB CC 8F 05         [ 2] 1487 	jp	00132$
      008EEE                       1488 00331$:
                                   1489 ; genCmpEQorNE
      008EEE 90 9F            [ 1] 1490 	ld	a, yl
      008EF0 A1 E1            [ 1] 1491 	cp	a, #0xe1
      008EF2 26 03            [ 1] 1492 	jrne	00333$
      008EF4 CC 8E FA         [ 2] 1493 	jp	00334$
      008EF7                       1494 00333$:
      008EF7 CC 8F 05         [ 2] 1495 	jp	00132$
      008EFA                       1496 00334$:
                           000418  1497 	Sstm8s_clk$CLK_ClockSwitchConfig$311 ==.
                                   1498 ; skipping generated iCode
                           000418  1499 	Sstm8s_clk$CLK_ClockSwitchConfig$312 ==.
                           000418  1500 	Sstm8s_clk$CLK_ClockSwitchConfig$313 ==.
                                   1501 ;	../SPL/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
                                   1502 ; genPointerGet
      008EFA C6 50 C0         [ 1] 1503 	ld	a, 0x50c0
                                   1504 ; genAnd
      008EFD A4 FE            [ 1] 1505 	and	a, #0xfe
                                   1506 ; genPointerSet
      008EFF C7 50 C0         [ 1] 1507 	ld	0x50c0, a
                           000420  1508 	Sstm8s_clk$CLK_ClockSwitchConfig$314 ==.
                                   1509 ; genGoto
      008F02 CC 8F 3E         [ 2] 1510 	jp	00136$
                                   1511 ; genLabel
      008F05                       1512 00132$:
                           000423  1513 	Sstm8s_clk$CLK_ClockSwitchConfig$315 ==.
                                   1514 ;	../SPL/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
                                   1515 ; genIfx
      008F05 0D 09            [ 1] 1516 	tnz	(0x09, sp)
      008F07 27 03            [ 1] 1517 	jreq	00335$
      008F09 CC 8F 23         [ 2] 1518 	jp	00128$
      008F0C                       1519 00335$:
                                   1520 ; genCmpEQorNE
      008F0C 90 9F            [ 1] 1521 	ld	a, yl
      008F0E A1 D2            [ 1] 1522 	cp	a, #0xd2
      008F10 26 03            [ 1] 1523 	jrne	00337$
      008F12 CC 8F 18         [ 2] 1524 	jp	00338$
      008F15                       1525 00337$:
      008F15 CC 8F 23         [ 2] 1526 	jp	00128$
      008F18                       1527 00338$:
                           000436  1528 	Sstm8s_clk$CLK_ClockSwitchConfig$316 ==.
                                   1529 ; skipping generated iCode
                           000436  1530 	Sstm8s_clk$CLK_ClockSwitchConfig$317 ==.
                           000436  1531 	Sstm8s_clk$CLK_ClockSwitchConfig$318 ==.
                                   1532 ;	../SPL/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
                                   1533 ; genPointerGet
      008F18 C6 50 C0         [ 1] 1534 	ld	a, 0x50c0
                                   1535 ; genAnd
      008F1B A4 F7            [ 1] 1536 	and	a, #0xf7
                                   1537 ; genPointerSet
      008F1D C7 50 C0         [ 1] 1538 	ld	0x50c0, a
                           00043E  1539 	Sstm8s_clk$CLK_ClockSwitchConfig$319 ==.
                                   1540 ; genGoto
      008F20 CC 8F 3E         [ 2] 1541 	jp	00136$
                                   1542 ; genLabel
      008F23                       1543 00128$:
                           000441  1544 	Sstm8s_clk$CLK_ClockSwitchConfig$320 ==.
                                   1545 ;	../SPL/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
                                   1546 ; genIfx
      008F23 0D 09            [ 1] 1547 	tnz	(0x09, sp)
      008F25 27 03            [ 1] 1548 	jreq	00339$
      008F27 CC 8F 3E         [ 2] 1549 	jp	00136$
      008F2A                       1550 00339$:
                                   1551 ; genCmpEQorNE
      008F2A 90 9F            [ 1] 1552 	ld	a, yl
      008F2C A1 B4            [ 1] 1553 	cp	a, #0xb4
      008F2E 26 03            [ 1] 1554 	jrne	00341$
      008F30 CC 8F 36         [ 2] 1555 	jp	00342$
      008F33                       1556 00341$:
      008F33 CC 8F 3E         [ 2] 1557 	jp	00136$
      008F36                       1558 00342$:
                           000454  1559 	Sstm8s_clk$CLK_ClockSwitchConfig$321 ==.
                                   1560 ; skipping generated iCode
                           000454  1561 	Sstm8s_clk$CLK_ClockSwitchConfig$322 ==.
                           000454  1562 	Sstm8s_clk$CLK_ClockSwitchConfig$323 ==.
                                   1563 ;	../SPL/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
                                   1564 ; genPointerGet
      008F36 C6 50 C1         [ 1] 1565 	ld	a, 0x50c1
                                   1566 ; genAnd
      008F39 A4 FE            [ 1] 1567 	and	a, #0xfe
                                   1568 ; genPointerSet
      008F3B C7 50 C1         [ 1] 1569 	ld	0x50c1, a
                           00045C  1570 	Sstm8s_clk$CLK_ClockSwitchConfig$324 ==.
                                   1571 ; genLabel
      008F3E                       1572 00136$:
                           00045C  1573 	Sstm8s_clk$CLK_ClockSwitchConfig$325 ==.
                                   1574 ;	../SPL/src/stm8s_clk.c: 406: return(Swif);
                                   1575 ; genReturn
      008F3E 9F               [ 1] 1576 	ld	a, xl
                                   1577 ; genLabel
      008F3F                       1578 00137$:
                           00045D  1579 	Sstm8s_clk$CLK_ClockSwitchConfig$326 ==.
                                   1580 ;	../SPL/src/stm8s_clk.c: 407: }
                                   1581 ; genEndFunction
      008F3F 5B 03            [ 2] 1582 	addw	sp, #3
                           00045F  1583 	Sstm8s_clk$CLK_ClockSwitchConfig$327 ==.
                           00045F  1584 	Sstm8s_clk$CLK_ClockSwitchConfig$328 ==.
                           00045F  1585 	XG$CLK_ClockSwitchConfig$0$0 ==.
      008F41 81               [ 4] 1586 	ret
                           000460  1587 	Sstm8s_clk$CLK_ClockSwitchConfig$329 ==.
                           000460  1588 	Sstm8s_clk$CLK_HSIPrescalerConfig$330 ==.
                                   1589 ;	../SPL/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                   1590 ; genLabel
                                   1591 ;	-----------------------------------------
                                   1592 ;	 function CLK_HSIPrescalerConfig
                                   1593 ;	-----------------------------------------
                                   1594 ;	Register assignment is optimal.
                                   1595 ;	Stack space usage: 0 bytes.
      008F42                       1596 _CLK_HSIPrescalerConfig:
                           000460  1597 	Sstm8s_clk$CLK_HSIPrescalerConfig$331 ==.
                           000460  1598 	Sstm8s_clk$CLK_HSIPrescalerConfig$332 ==.
                                   1599 ;	../SPL/src/stm8s_clk.c: 418: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
                                   1600 ; genIfx
      008F42 0D 03            [ 1] 1601 	tnz	(0x03, sp)
      008F44 26 03            [ 1] 1602 	jrne	00134$
      008F46 CC 8F 73         [ 2] 1603 	jp	00104$
      008F49                       1604 00134$:
                                   1605 ; genCmpEQorNE
      008F49 7B 03            [ 1] 1606 	ld	a, (0x03, sp)
      008F4B A1 08            [ 1] 1607 	cp	a, #0x08
      008F4D 26 03            [ 1] 1608 	jrne	00136$
      008F4F CC 8F 73         [ 2] 1609 	jp	00104$
      008F52                       1610 00136$:
                           000470  1611 	Sstm8s_clk$CLK_HSIPrescalerConfig$333 ==.
                                   1612 ; skipping generated iCode
                                   1613 ; genCmpEQorNE
      008F52 7B 03            [ 1] 1614 	ld	a, (0x03, sp)
      008F54 A1 10            [ 1] 1615 	cp	a, #0x10
      008F56 26 03            [ 1] 1616 	jrne	00139$
      008F58 CC 8F 73         [ 2] 1617 	jp	00104$
      008F5B                       1618 00139$:
                           000479  1619 	Sstm8s_clk$CLK_HSIPrescalerConfig$334 ==.
                                   1620 ; skipping generated iCode
                                   1621 ; genCmpEQorNE
      008F5B 7B 03            [ 1] 1622 	ld	a, (0x03, sp)
      008F5D A1 18            [ 1] 1623 	cp	a, #0x18
      008F5F 26 03            [ 1] 1624 	jrne	00142$
      008F61 CC 8F 73         [ 2] 1625 	jp	00104$
      008F64                       1626 00142$:
                           000482  1627 	Sstm8s_clk$CLK_HSIPrescalerConfig$335 ==.
                                   1628 ; skipping generated iCode
                                   1629 ; skipping iCode since result will be rematerialized
                                   1630 ; skipping iCode since result will be rematerialized
                                   1631 ; genIPush
      008F64 4B A2            [ 1] 1632 	push	#0xa2
                           000484  1633 	Sstm8s_clk$CLK_HSIPrescalerConfig$336 ==.
      008F66 4B 01            [ 1] 1634 	push	#0x01
                           000486  1635 	Sstm8s_clk$CLK_HSIPrescalerConfig$337 ==.
      008F68 5F               [ 1] 1636 	clrw	x
      008F69 89               [ 2] 1637 	pushw	x
                           000488  1638 	Sstm8s_clk$CLK_HSIPrescalerConfig$338 ==.
                                   1639 ; genIPush
      008F6A 4B BD            [ 1] 1640 	push	#<(___str_0+0)
                           00048A  1641 	Sstm8s_clk$CLK_HSIPrescalerConfig$339 ==.
      008F6C 4B 80            [ 1] 1642 	push	#((___str_0+0) >> 8)
                           00048C  1643 	Sstm8s_clk$CLK_HSIPrescalerConfig$340 ==.
                                   1644 ; genCall
      008F6E CD 82 99         [ 4] 1645 	call	_assert_failed
      008F71 5B 06            [ 2] 1646 	addw	sp, #6
                           000491  1647 	Sstm8s_clk$CLK_HSIPrescalerConfig$341 ==.
                                   1648 ; genLabel
      008F73                       1649 00104$:
                           000491  1650 	Sstm8s_clk$CLK_HSIPrescalerConfig$342 ==.
                                   1651 ;	../SPL/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   1652 ; genPointerGet
      008F73 C6 50 C6         [ 1] 1653 	ld	a, 0x50c6
                                   1654 ; genAnd
      008F76 A4 E7            [ 1] 1655 	and	a, #0xe7
                                   1656 ; genPointerSet
      008F78 C7 50 C6         [ 1] 1657 	ld	0x50c6, a
                           000499  1658 	Sstm8s_clk$CLK_HSIPrescalerConfig$343 ==.
                                   1659 ;	../SPL/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
                                   1660 ; genPointerGet
      008F7B C6 50 C6         [ 1] 1661 	ld	a, 0x50c6
                                   1662 ; genOr
      008F7E 1A 03            [ 1] 1663 	or	a, (0x03, sp)
                                   1664 ; genPointerSet
      008F80 C7 50 C6         [ 1] 1665 	ld	0x50c6, a
                                   1666 ; genLabel
      008F83                       1667 00101$:
                           0004A1  1668 	Sstm8s_clk$CLK_HSIPrescalerConfig$344 ==.
                                   1669 ;	../SPL/src/stm8s_clk.c: 425: }
                                   1670 ; genEndFunction
                           0004A1  1671 	Sstm8s_clk$CLK_HSIPrescalerConfig$345 ==.
                           0004A1  1672 	XG$CLK_HSIPrescalerConfig$0$0 ==.
      008F83 81               [ 4] 1673 	ret
                           0004A2  1674 	Sstm8s_clk$CLK_HSIPrescalerConfig$346 ==.
                           0004A2  1675 	Sstm8s_clk$CLK_CCOConfig$347 ==.
                                   1676 ;	../SPL/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                   1677 ; genLabel
                                   1678 ;	-----------------------------------------
                                   1679 ;	 function CLK_CCOConfig
                                   1680 ;	-----------------------------------------
                                   1681 ;	Register assignment is optimal.
                                   1682 ;	Stack space usage: 0 bytes.
      008F84                       1683 _CLK_CCOConfig:
                           0004A2  1684 	Sstm8s_clk$CLK_CCOConfig$348 ==.
                           0004A2  1685 	Sstm8s_clk$CLK_CCOConfig$349 ==.
                                   1686 ;	../SPL/src/stm8s_clk.c: 439: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
                                   1687 ; genIfx
      008F84 0D 03            [ 1] 1688 	tnz	(0x03, sp)
      008F86 26 03            [ 1] 1689 	jrne	00206$
      008F88 CC 90 06         [ 2] 1690 	jp	00104$
      008F8B                       1691 00206$:
                                   1692 ; genCmpEQorNE
      008F8B 7B 03            [ 1] 1693 	ld	a, (0x03, sp)
      008F8D A1 04            [ 1] 1694 	cp	a, #0x04
      008F8F 26 03            [ 1] 1695 	jrne	00208$
      008F91 CC 90 06         [ 2] 1696 	jp	00104$
      008F94                       1697 00208$:
                           0004B2  1698 	Sstm8s_clk$CLK_CCOConfig$350 ==.
                                   1699 ; skipping generated iCode
                                   1700 ; genCmpEQorNE
      008F94 7B 03            [ 1] 1701 	ld	a, (0x03, sp)
      008F96 A1 02            [ 1] 1702 	cp	a, #0x02
      008F98 26 03            [ 1] 1703 	jrne	00211$
      008F9A CC 90 06         [ 2] 1704 	jp	00104$
      008F9D                       1705 00211$:
                           0004BB  1706 	Sstm8s_clk$CLK_CCOConfig$351 ==.
                                   1707 ; skipping generated iCode
                                   1708 ; genCmpEQorNE
      008F9D 7B 03            [ 1] 1709 	ld	a, (0x03, sp)
      008F9F A1 08            [ 1] 1710 	cp	a, #0x08
      008FA1 26 03            [ 1] 1711 	jrne	00214$
      008FA3 CC 90 06         [ 2] 1712 	jp	00104$
      008FA6                       1713 00214$:
                           0004C4  1714 	Sstm8s_clk$CLK_CCOConfig$352 ==.
                                   1715 ; skipping generated iCode
                                   1716 ; genCmpEQorNE
      008FA6 7B 03            [ 1] 1717 	ld	a, (0x03, sp)
      008FA8 A1 0A            [ 1] 1718 	cp	a, #0x0a
      008FAA 26 03            [ 1] 1719 	jrne	00217$
      008FAC CC 90 06         [ 2] 1720 	jp	00104$
      008FAF                       1721 00217$:
                           0004CD  1722 	Sstm8s_clk$CLK_CCOConfig$353 ==.
                                   1723 ; skipping generated iCode
                                   1724 ; genCmpEQorNE
      008FAF 7B 03            [ 1] 1725 	ld	a, (0x03, sp)
      008FB1 A1 0C            [ 1] 1726 	cp	a, #0x0c
      008FB3 26 03            [ 1] 1727 	jrne	00220$
      008FB5 CC 90 06         [ 2] 1728 	jp	00104$
      008FB8                       1729 00220$:
                           0004D6  1730 	Sstm8s_clk$CLK_CCOConfig$354 ==.
                                   1731 ; skipping generated iCode
                                   1732 ; genCmpEQorNE
      008FB8 7B 03            [ 1] 1733 	ld	a, (0x03, sp)
      008FBA A1 0E            [ 1] 1734 	cp	a, #0x0e
      008FBC 26 03            [ 1] 1735 	jrne	00223$
      008FBE CC 90 06         [ 2] 1736 	jp	00104$
      008FC1                       1737 00223$:
                           0004DF  1738 	Sstm8s_clk$CLK_CCOConfig$355 ==.
                                   1739 ; skipping generated iCode
                                   1740 ; genCmpEQorNE
      008FC1 7B 03            [ 1] 1741 	ld	a, (0x03, sp)
      008FC3 A1 10            [ 1] 1742 	cp	a, #0x10
      008FC5 26 03            [ 1] 1743 	jrne	00226$
      008FC7 CC 90 06         [ 2] 1744 	jp	00104$
      008FCA                       1745 00226$:
                           0004E8  1746 	Sstm8s_clk$CLK_CCOConfig$356 ==.
                                   1747 ; skipping generated iCode
                                   1748 ; genCmpEQorNE
      008FCA 7B 03            [ 1] 1749 	ld	a, (0x03, sp)
      008FCC A1 12            [ 1] 1750 	cp	a, #0x12
      008FCE 26 03            [ 1] 1751 	jrne	00229$
      008FD0 CC 90 06         [ 2] 1752 	jp	00104$
      008FD3                       1753 00229$:
                           0004F1  1754 	Sstm8s_clk$CLK_CCOConfig$357 ==.
                                   1755 ; skipping generated iCode
                                   1756 ; genCmpEQorNE
      008FD3 7B 03            [ 1] 1757 	ld	a, (0x03, sp)
      008FD5 A1 14            [ 1] 1758 	cp	a, #0x14
      008FD7 26 03            [ 1] 1759 	jrne	00232$
      008FD9 CC 90 06         [ 2] 1760 	jp	00104$
      008FDC                       1761 00232$:
                           0004FA  1762 	Sstm8s_clk$CLK_CCOConfig$358 ==.
                                   1763 ; skipping generated iCode
                                   1764 ; genCmpEQorNE
      008FDC 7B 03            [ 1] 1765 	ld	a, (0x03, sp)
      008FDE A1 16            [ 1] 1766 	cp	a, #0x16
      008FE0 26 03            [ 1] 1767 	jrne	00235$
      008FE2 CC 90 06         [ 2] 1768 	jp	00104$
      008FE5                       1769 00235$:
                           000503  1770 	Sstm8s_clk$CLK_CCOConfig$359 ==.
                                   1771 ; skipping generated iCode
                                   1772 ; genCmpEQorNE
      008FE5 7B 03            [ 1] 1773 	ld	a, (0x03, sp)
      008FE7 A1 18            [ 1] 1774 	cp	a, #0x18
      008FE9 26 03            [ 1] 1775 	jrne	00238$
      008FEB CC 90 06         [ 2] 1776 	jp	00104$
      008FEE                       1777 00238$:
                           00050C  1778 	Sstm8s_clk$CLK_CCOConfig$360 ==.
                                   1779 ; skipping generated iCode
                                   1780 ; genCmpEQorNE
      008FEE 7B 03            [ 1] 1781 	ld	a, (0x03, sp)
      008FF0 A1 1A            [ 1] 1782 	cp	a, #0x1a
      008FF2 26 03            [ 1] 1783 	jrne	00241$
      008FF4 CC 90 06         [ 2] 1784 	jp	00104$
      008FF7                       1785 00241$:
                           000515  1786 	Sstm8s_clk$CLK_CCOConfig$361 ==.
                                   1787 ; skipping generated iCode
                                   1788 ; skipping iCode since result will be rematerialized
                                   1789 ; skipping iCode since result will be rematerialized
                                   1790 ; genIPush
      008FF7 4B B7            [ 1] 1791 	push	#0xb7
                           000517  1792 	Sstm8s_clk$CLK_CCOConfig$362 ==.
      008FF9 4B 01            [ 1] 1793 	push	#0x01
                           000519  1794 	Sstm8s_clk$CLK_CCOConfig$363 ==.
      008FFB 5F               [ 1] 1795 	clrw	x
      008FFC 89               [ 2] 1796 	pushw	x
                           00051B  1797 	Sstm8s_clk$CLK_CCOConfig$364 ==.
                                   1798 ; genIPush
      008FFD 4B BD            [ 1] 1799 	push	#<(___str_0+0)
                           00051D  1800 	Sstm8s_clk$CLK_CCOConfig$365 ==.
      008FFF 4B 80            [ 1] 1801 	push	#((___str_0+0) >> 8)
                           00051F  1802 	Sstm8s_clk$CLK_CCOConfig$366 ==.
                                   1803 ; genCall
      009001 CD 82 99         [ 4] 1804 	call	_assert_failed
      009004 5B 06            [ 2] 1805 	addw	sp, #6
                           000524  1806 	Sstm8s_clk$CLK_CCOConfig$367 ==.
                                   1807 ; genLabel
      009006                       1808 00104$:
                           000524  1809 	Sstm8s_clk$CLK_CCOConfig$368 ==.
                                   1810 ;	../SPL/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
                                   1811 ; genPointerGet
      009006 C6 50 C9         [ 1] 1812 	ld	a, 0x50c9
                                   1813 ; genAnd
      009009 A4 E1            [ 1] 1814 	and	a, #0xe1
                                   1815 ; genPointerSet
      00900B C7 50 C9         [ 1] 1816 	ld	0x50c9, a
                           00052C  1817 	Sstm8s_clk$CLK_CCOConfig$369 ==.
                                   1818 ;	../SPL/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
                                   1819 ; genPointerGet
      00900E C6 50 C9         [ 1] 1820 	ld	a, 0x50c9
                                   1821 ; genOr
      009011 1A 03            [ 1] 1822 	or	a, (0x03, sp)
                                   1823 ; genPointerSet
      009013 C7 50 C9         [ 1] 1824 	ld	0x50c9, a
                           000534  1825 	Sstm8s_clk$CLK_CCOConfig$370 ==.
                                   1826 ;	../SPL/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
                                   1827 ; genPointerGet
      009016 C6 50 C9         [ 1] 1828 	ld	a, 0x50c9
                                   1829 ; genOr
      009019 AA 01            [ 1] 1830 	or	a, #0x01
                                   1831 ; genPointerSet
      00901B C7 50 C9         [ 1] 1832 	ld	0x50c9, a
                                   1833 ; genLabel
      00901E                       1834 00101$:
                           00053C  1835 	Sstm8s_clk$CLK_CCOConfig$371 ==.
                                   1836 ;	../SPL/src/stm8s_clk.c: 449: }
                                   1837 ; genEndFunction
                           00053C  1838 	Sstm8s_clk$CLK_CCOConfig$372 ==.
                           00053C  1839 	XG$CLK_CCOConfig$0$0 ==.
      00901E 81               [ 4] 1840 	ret
                           00053D  1841 	Sstm8s_clk$CLK_CCOConfig$373 ==.
                           00053D  1842 	Sstm8s_clk$CLK_ITConfig$374 ==.
                                   1843 ;	../SPL/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                   1844 ; genLabel
                                   1845 ;	-----------------------------------------
                                   1846 ;	 function CLK_ITConfig
                                   1847 ;	-----------------------------------------
                                   1848 ;	Register assignment might be sub-optimal.
                                   1849 ;	Stack space usage: 1 bytes.
      00901F                       1850 _CLK_ITConfig:
                           00053D  1851 	Sstm8s_clk$CLK_ITConfig$375 ==.
      00901F 88               [ 1] 1852 	push	a
                           00053E  1853 	Sstm8s_clk$CLK_ITConfig$376 ==.
                           00053E  1854 	Sstm8s_clk$CLK_ITConfig$377 ==.
                                   1855 ;	../SPL/src/stm8s_clk.c: 462: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
                                   1856 ; genIfx
      009020 0D 05            [ 1] 1857 	tnz	(0x05, sp)
      009022 26 03            [ 1] 1858 	jrne	00169$
      009024 CC 90 3E         [ 2] 1859 	jp	00115$
      009027                       1860 00169$:
                                   1861 ; genCmpEQorNE
      009027 7B 05            [ 1] 1862 	ld	a, (0x05, sp)
      009029 4A               [ 1] 1863 	dec	a
      00902A 26 03            [ 1] 1864 	jrne	00171$
      00902C CC 90 3E         [ 2] 1865 	jp	00115$
      00902F                       1866 00171$:
                           00054D  1867 	Sstm8s_clk$CLK_ITConfig$378 ==.
                                   1868 ; skipping generated iCode
                                   1869 ; skipping iCode since result will be rematerialized
                                   1870 ; skipping iCode since result will be rematerialized
                                   1871 ; genIPush
      00902F 4B CE            [ 1] 1872 	push	#0xce
                           00054F  1873 	Sstm8s_clk$CLK_ITConfig$379 ==.
      009031 4B 01            [ 1] 1874 	push	#0x01
                           000551  1875 	Sstm8s_clk$CLK_ITConfig$380 ==.
      009033 5F               [ 1] 1876 	clrw	x
      009034 89               [ 2] 1877 	pushw	x
                           000553  1878 	Sstm8s_clk$CLK_ITConfig$381 ==.
                                   1879 ; genIPush
      009035 4B BD            [ 1] 1880 	push	#<(___str_0+0)
                           000555  1881 	Sstm8s_clk$CLK_ITConfig$382 ==.
      009037 4B 80            [ 1] 1882 	push	#((___str_0+0) >> 8)
                           000557  1883 	Sstm8s_clk$CLK_ITConfig$383 ==.
                                   1884 ; genCall
      009039 CD 82 99         [ 4] 1885 	call	_assert_failed
      00903C 5B 06            [ 2] 1886 	addw	sp, #6
                           00055C  1887 	Sstm8s_clk$CLK_ITConfig$384 ==.
                                   1888 ; genLabel
      00903E                       1889 00115$:
                           00055C  1890 	Sstm8s_clk$CLK_ITConfig$385 ==.
                                   1891 ;	../SPL/src/stm8s_clk.c: 463: assert_param(IS_CLK_IT_OK(CLK_IT));
                                   1892 ; genCmpEQorNE
      00903E 7B 04            [ 1] 1893 	ld	a, (0x04, sp)
      009040 A1 0C            [ 1] 1894 	cp	a, #0x0c
      009042 26 05            [ 1] 1895 	jrne	00174$
      009044 A6 01            [ 1] 1896 	ld	a, #0x01
      009046 CC 90 4A         [ 2] 1897 	jp	00175$
      009049                       1898 00174$:
      009049 4F               [ 1] 1899 	clr	a
      00904A                       1900 00175$:
                           000568  1901 	Sstm8s_clk$CLK_ITConfig$386 ==.
                                   1902 ; genCmpEQorNE
      00904A 88               [ 1] 1903 	push	a
                           000569  1904 	Sstm8s_clk$CLK_ITConfig$387 ==.
      00904B 7B 05            [ 1] 1905 	ld	a, (0x05, sp)
      00904D A1 1C            [ 1] 1906 	cp	a, #0x1c
      00904F 84               [ 1] 1907 	pop	a
                           00056E  1908 	Sstm8s_clk$CLK_ITConfig$388 ==.
      009050 26 09            [ 1] 1909 	jrne	00177$
      009052 88               [ 1] 1910 	push	a
                           000571  1911 	Sstm8s_clk$CLK_ITConfig$389 ==.
      009053 A6 01            [ 1] 1912 	ld	a, #0x01
      009055 6B 02            [ 1] 1913 	ld	(0x02, sp), a
      009057 84               [ 1] 1914 	pop	a
                           000576  1915 	Sstm8s_clk$CLK_ITConfig$390 ==.
      009058 CC 90 5D         [ 2] 1916 	jp	00178$
      00905B                       1917 00177$:
      00905B 0F 01            [ 1] 1918 	clr	(0x01, sp)
      00905D                       1919 00178$:
                           00057B  1920 	Sstm8s_clk$CLK_ITConfig$391 ==.
                                   1921 ; genIfx
      00905D 4D               [ 1] 1922 	tnz	a
      00905E 27 03            [ 1] 1923 	jreq	00179$
      009060 CC 90 7B         [ 2] 1924 	jp	00120$
      009063                       1925 00179$:
                                   1926 ; genIfx
      009063 0D 01            [ 1] 1927 	tnz	(0x01, sp)
      009065 27 03            [ 1] 1928 	jreq	00180$
      009067 CC 90 7B         [ 2] 1929 	jp	00120$
      00906A                       1930 00180$:
                                   1931 ; skipping iCode since result will be rematerialized
                                   1932 ; skipping iCode since result will be rematerialized
                                   1933 ; genIPush
      00906A 88               [ 1] 1934 	push	a
                           000589  1935 	Sstm8s_clk$CLK_ITConfig$392 ==.
      00906B 4B CF            [ 1] 1936 	push	#0xcf
                           00058B  1937 	Sstm8s_clk$CLK_ITConfig$393 ==.
      00906D 4B 01            [ 1] 1938 	push	#0x01
                           00058D  1939 	Sstm8s_clk$CLK_ITConfig$394 ==.
      00906F 5F               [ 1] 1940 	clrw	x
      009070 89               [ 2] 1941 	pushw	x
                           00058F  1942 	Sstm8s_clk$CLK_ITConfig$395 ==.
                                   1943 ; genIPush
      009071 4B BD            [ 1] 1944 	push	#<(___str_0+0)
                           000591  1945 	Sstm8s_clk$CLK_ITConfig$396 ==.
      009073 4B 80            [ 1] 1946 	push	#((___str_0+0) >> 8)
                           000593  1947 	Sstm8s_clk$CLK_ITConfig$397 ==.
                                   1948 ; genCall
      009075 CD 82 99         [ 4] 1949 	call	_assert_failed
      009078 5B 06            [ 2] 1950 	addw	sp, #6
                           000598  1951 	Sstm8s_clk$CLK_ITConfig$398 ==.
      00907A 84               [ 1] 1952 	pop	a
                           000599  1953 	Sstm8s_clk$CLK_ITConfig$399 ==.
                                   1954 ; genLabel
      00907B                       1955 00120$:
                           000599  1956 	Sstm8s_clk$CLK_ITConfig$400 ==.
                                   1957 ;	../SPL/src/stm8s_clk.c: 465: if (NewState != DISABLE)
                                   1958 ; genIfx
      00907B 0D 05            [ 1] 1959 	tnz	(0x05, sp)
      00907D 26 03            [ 1] 1960 	jrne	00181$
      00907F CC 90 A6         [ 2] 1961 	jp	00110$
      009082                       1962 00181$:
                           0005A0  1963 	Sstm8s_clk$CLK_ITConfig$401 ==.
                           0005A0  1964 	Sstm8s_clk$CLK_ITConfig$402 ==.
                                   1965 ;	../SPL/src/stm8s_clk.c: 467: switch (CLK_IT)
                                   1966 ; genAssign
                                   1967 ; genIfx
      009082 4D               [ 1] 1968 	tnz	a
      009083 27 03            [ 1] 1969 	jreq	00182$
      009085 CC 90 9B         [ 2] 1970 	jp	00102$
      009088                       1971 00182$:
                                   1972 ; genAssign
      009088 7B 01            [ 1] 1973 	ld	a, (0x01, sp)
                                   1974 ; genIfx
      00908A 4D               [ 1] 1975 	tnz	a
      00908B 26 03            [ 1] 1976 	jrne	00183$
      00908D CC 90 C7         [ 2] 1977 	jp	00112$
      009090                       1978 00183$:
                           0005AE  1979 	Sstm8s_clk$CLK_ITConfig$403 ==.
                           0005AE  1980 	Sstm8s_clk$CLK_ITConfig$404 ==.
                                   1981 ;	../SPL/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
                                   1982 ; genPointerGet
      009090 C6 50 C5         [ 1] 1983 	ld	a, 0x50c5
                                   1984 ; genOr
      009093 AA 04            [ 1] 1985 	or	a, #0x04
                                   1986 ; genPointerSet
      009095 C7 50 C5         [ 1] 1987 	ld	0x50c5, a
                           0005B6  1988 	Sstm8s_clk$CLK_ITConfig$405 ==.
                                   1989 ;	../SPL/src/stm8s_clk.c: 471: break;
                                   1990 ; genGoto
      009098 CC 90 C7         [ 2] 1991 	jp	00112$
                           0005B9  1992 	Sstm8s_clk$CLK_ITConfig$406 ==.
                                   1993 ;	../SPL/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
                                   1994 ; genLabel
      00909B                       1995 00102$:
                           0005B9  1996 	Sstm8s_clk$CLK_ITConfig$407 ==.
                                   1997 ;	../SPL/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
                                   1998 ; genPointerGet
      00909B C6 50 C8         [ 1] 1999 	ld	a, 0x50c8
                                   2000 ; genOr
      00909E AA 04            [ 1] 2001 	or	a, #0x04
                                   2002 ; genPointerSet
      0090A0 C7 50 C8         [ 1] 2003 	ld	0x50c8, a
                           0005C1  2004 	Sstm8s_clk$CLK_ITConfig$408 ==.
                                   2005 ;	../SPL/src/stm8s_clk.c: 474: break;
                                   2006 ; genGoto
      0090A3 CC 90 C7         [ 2] 2007 	jp	00112$
                           0005C4  2008 	Sstm8s_clk$CLK_ITConfig$409 ==.
                           0005C4  2009 	Sstm8s_clk$CLK_ITConfig$410 ==.
                                   2010 ;	../SPL/src/stm8s_clk.c: 477: }
                                   2011 ; genLabel
      0090A6                       2012 00110$:
                           0005C4  2013 	Sstm8s_clk$CLK_ITConfig$411 ==.
                           0005C4  2014 	Sstm8s_clk$CLK_ITConfig$412 ==.
                                   2015 ;	../SPL/src/stm8s_clk.c: 481: switch (CLK_IT)
                                   2016 ; genAssign
                                   2017 ; genIfx
      0090A6 4D               [ 1] 2018 	tnz	a
      0090A7 27 03            [ 1] 2019 	jreq	00184$
      0090A9 CC 90 BF         [ 2] 2020 	jp	00106$
      0090AC                       2021 00184$:
                                   2022 ; genAssign
      0090AC 7B 01            [ 1] 2023 	ld	a, (0x01, sp)
                                   2024 ; genIfx
      0090AE 4D               [ 1] 2025 	tnz	a
      0090AF 26 03            [ 1] 2026 	jrne	00185$
      0090B1 CC 90 C7         [ 2] 2027 	jp	00112$
      0090B4                       2028 00185$:
                           0005D2  2029 	Sstm8s_clk$CLK_ITConfig$413 ==.
                           0005D2  2030 	Sstm8s_clk$CLK_ITConfig$414 ==.
                                   2031 ;	../SPL/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
                                   2032 ; genPointerGet
      0090B4 C6 50 C5         [ 1] 2033 	ld	a, 0x50c5
                                   2034 ; genAnd
      0090B7 A4 FB            [ 1] 2035 	and	a, #0xfb
                                   2036 ; genPointerSet
      0090B9 C7 50 C5         [ 1] 2037 	ld	0x50c5, a
                           0005DA  2038 	Sstm8s_clk$CLK_ITConfig$415 ==.
                                   2039 ;	../SPL/src/stm8s_clk.c: 485: break;
                                   2040 ; genGoto
      0090BC CC 90 C7         [ 2] 2041 	jp	00112$
                           0005DD  2042 	Sstm8s_clk$CLK_ITConfig$416 ==.
                                   2043 ;	../SPL/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
                                   2044 ; genLabel
      0090BF                       2045 00106$:
                           0005DD  2046 	Sstm8s_clk$CLK_ITConfig$417 ==.
                                   2047 ;	../SPL/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
                                   2048 ; genPointerGet
      0090BF C6 50 C8         [ 1] 2049 	ld	a, 0x50c8
                                   2050 ; genAnd
      0090C2 A4 FB            [ 1] 2051 	and	a, #0xfb
                                   2052 ; genPointerSet
      0090C4 C7 50 C8         [ 1] 2053 	ld	0x50c8, a
                           0005E5  2054 	Sstm8s_clk$CLK_ITConfig$418 ==.
                           0005E5  2055 	Sstm8s_clk$CLK_ITConfig$419 ==.
                                   2056 ;	../SPL/src/stm8s_clk.c: 491: }
                                   2057 ; genLabel
      0090C7                       2058 00112$:
                           0005E5  2059 	Sstm8s_clk$CLK_ITConfig$420 ==.
                                   2060 ;	../SPL/src/stm8s_clk.c: 493: }
                                   2061 ; genEndFunction
      0090C7 84               [ 1] 2062 	pop	a
                           0005E6  2063 	Sstm8s_clk$CLK_ITConfig$421 ==.
                           0005E6  2064 	Sstm8s_clk$CLK_ITConfig$422 ==.
                           0005E6  2065 	XG$CLK_ITConfig$0$0 ==.
      0090C8 81               [ 4] 2066 	ret
                           0005E7  2067 	Sstm8s_clk$CLK_ITConfig$423 ==.
                           0005E7  2068 	Sstm8s_clk$CLK_SYSCLKConfig$424 ==.
                                   2069 ;	../SPL/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                   2070 ; genLabel
                                   2071 ;	-----------------------------------------
                                   2072 ;	 function CLK_SYSCLKConfig
                                   2073 ;	-----------------------------------------
                                   2074 ;	Register assignment is optimal.
                                   2075 ;	Stack space usage: 1 bytes.
      0090C9                       2076 _CLK_SYSCLKConfig:
                           0005E7  2077 	Sstm8s_clk$CLK_SYSCLKConfig$425 ==.
      0090C9 88               [ 1] 2078 	push	a
                           0005E8  2079 	Sstm8s_clk$CLK_SYSCLKConfig$426 ==.
                           0005E8  2080 	Sstm8s_clk$CLK_SYSCLKConfig$427 ==.
                                   2081 ;	../SPL/src/stm8s_clk.c: 503: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
                                   2082 ; genIfx
      0090CA 0D 04            [ 1] 2083 	tnz	(0x04, sp)
      0090CC 26 03            [ 1] 2084 	jrne	00206$
      0090CE CC 91 43         [ 2] 2085 	jp	00107$
      0090D1                       2086 00206$:
                                   2087 ; genCmpEQorNE
      0090D1 7B 04            [ 1] 2088 	ld	a, (0x04, sp)
      0090D3 A1 08            [ 1] 2089 	cp	a, #0x08
      0090D5 26 03            [ 1] 2090 	jrne	00208$
      0090D7 CC 91 43         [ 2] 2091 	jp	00107$
      0090DA                       2092 00208$:
                           0005F8  2093 	Sstm8s_clk$CLK_SYSCLKConfig$428 ==.
                                   2094 ; skipping generated iCode
                                   2095 ; genCmpEQorNE
      0090DA 7B 04            [ 1] 2096 	ld	a, (0x04, sp)
      0090DC A1 10            [ 1] 2097 	cp	a, #0x10
      0090DE 26 03            [ 1] 2098 	jrne	00211$
      0090E0 CC 91 43         [ 2] 2099 	jp	00107$
      0090E3                       2100 00211$:
                           000601  2101 	Sstm8s_clk$CLK_SYSCLKConfig$429 ==.
                                   2102 ; skipping generated iCode
                                   2103 ; genCmpEQorNE
      0090E3 7B 04            [ 1] 2104 	ld	a, (0x04, sp)
      0090E5 A1 18            [ 1] 2105 	cp	a, #0x18
      0090E7 26 03            [ 1] 2106 	jrne	00214$
      0090E9 CC 91 43         [ 2] 2107 	jp	00107$
      0090EC                       2108 00214$:
                           00060A  2109 	Sstm8s_clk$CLK_SYSCLKConfig$430 ==.
                                   2110 ; skipping generated iCode
                                   2111 ; genCmpEQorNE
      0090EC 7B 04            [ 1] 2112 	ld	a, (0x04, sp)
      0090EE A1 80            [ 1] 2113 	cp	a, #0x80
      0090F0 26 03            [ 1] 2114 	jrne	00217$
      0090F2 CC 91 43         [ 2] 2115 	jp	00107$
      0090F5                       2116 00217$:
                           000613  2117 	Sstm8s_clk$CLK_SYSCLKConfig$431 ==.
                                   2118 ; skipping generated iCode
                                   2119 ; genCmpEQorNE
      0090F5 7B 04            [ 1] 2120 	ld	a, (0x04, sp)
      0090F7 A1 81            [ 1] 2121 	cp	a, #0x81
      0090F9 26 03            [ 1] 2122 	jrne	00220$
      0090FB CC 91 43         [ 2] 2123 	jp	00107$
      0090FE                       2124 00220$:
                           00061C  2125 	Sstm8s_clk$CLK_SYSCLKConfig$432 ==.
                                   2126 ; skipping generated iCode
                                   2127 ; genCmpEQorNE
      0090FE 7B 04            [ 1] 2128 	ld	a, (0x04, sp)
      009100 A1 82            [ 1] 2129 	cp	a, #0x82
      009102 26 03            [ 1] 2130 	jrne	00223$
      009104 CC 91 43         [ 2] 2131 	jp	00107$
      009107                       2132 00223$:
                           000625  2133 	Sstm8s_clk$CLK_SYSCLKConfig$433 ==.
                                   2134 ; skipping generated iCode
                                   2135 ; genCmpEQorNE
      009107 7B 04            [ 1] 2136 	ld	a, (0x04, sp)
      009109 A1 83            [ 1] 2137 	cp	a, #0x83
      00910B 26 03            [ 1] 2138 	jrne	00226$
      00910D CC 91 43         [ 2] 2139 	jp	00107$
      009110                       2140 00226$:
                           00062E  2141 	Sstm8s_clk$CLK_SYSCLKConfig$434 ==.
                                   2142 ; skipping generated iCode
                                   2143 ; genCmpEQorNE
      009110 7B 04            [ 1] 2144 	ld	a, (0x04, sp)
      009112 A1 84            [ 1] 2145 	cp	a, #0x84
      009114 26 03            [ 1] 2146 	jrne	00229$
      009116 CC 91 43         [ 2] 2147 	jp	00107$
      009119                       2148 00229$:
                           000637  2149 	Sstm8s_clk$CLK_SYSCLKConfig$435 ==.
                                   2150 ; skipping generated iCode
                                   2151 ; genCmpEQorNE
      009119 7B 04            [ 1] 2152 	ld	a, (0x04, sp)
      00911B A1 85            [ 1] 2153 	cp	a, #0x85
      00911D 26 03            [ 1] 2154 	jrne	00232$
      00911F CC 91 43         [ 2] 2155 	jp	00107$
      009122                       2156 00232$:
                           000640  2157 	Sstm8s_clk$CLK_SYSCLKConfig$436 ==.
                                   2158 ; skipping generated iCode
                                   2159 ; genCmpEQorNE
      009122 7B 04            [ 1] 2160 	ld	a, (0x04, sp)
      009124 A1 86            [ 1] 2161 	cp	a, #0x86
      009126 26 03            [ 1] 2162 	jrne	00235$
      009128 CC 91 43         [ 2] 2163 	jp	00107$
      00912B                       2164 00235$:
                           000649  2165 	Sstm8s_clk$CLK_SYSCLKConfig$437 ==.
                                   2166 ; skipping generated iCode
                                   2167 ; genCmpEQorNE
      00912B 7B 04            [ 1] 2168 	ld	a, (0x04, sp)
      00912D A1 87            [ 1] 2169 	cp	a, #0x87
      00912F 26 03            [ 1] 2170 	jrne	00238$
      009131 CC 91 43         [ 2] 2171 	jp	00107$
      009134                       2172 00238$:
                           000652  2173 	Sstm8s_clk$CLK_SYSCLKConfig$438 ==.
                                   2174 ; skipping generated iCode
                                   2175 ; skipping iCode since result will be rematerialized
                                   2176 ; skipping iCode since result will be rematerialized
                                   2177 ; genIPush
      009134 4B F7            [ 1] 2178 	push	#0xf7
                           000654  2179 	Sstm8s_clk$CLK_SYSCLKConfig$439 ==.
      009136 4B 01            [ 1] 2180 	push	#0x01
                           000656  2181 	Sstm8s_clk$CLK_SYSCLKConfig$440 ==.
      009138 5F               [ 1] 2182 	clrw	x
      009139 89               [ 2] 2183 	pushw	x
                           000658  2184 	Sstm8s_clk$CLK_SYSCLKConfig$441 ==.
                                   2185 ; genIPush
      00913A 4B BD            [ 1] 2186 	push	#<(___str_0+0)
                           00065A  2187 	Sstm8s_clk$CLK_SYSCLKConfig$442 ==.
      00913C 4B 80            [ 1] 2188 	push	#((___str_0+0) >> 8)
                           00065C  2189 	Sstm8s_clk$CLK_SYSCLKConfig$443 ==.
                                   2190 ; genCall
      00913E CD 82 99         [ 4] 2191 	call	_assert_failed
      009141 5B 06            [ 2] 2192 	addw	sp, #6
                           000661  2193 	Sstm8s_clk$CLK_SYSCLKConfig$444 ==.
                                   2194 ; genLabel
      009143                       2195 00107$:
                           000661  2196 	Sstm8s_clk$CLK_SYSCLKConfig$445 ==.
                                   2197 ;	../SPL/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   2198 ; genPointerGet
      009143 C6 50 C6         [ 1] 2199 	ld	a, 0x50c6
                           000664  2200 	Sstm8s_clk$CLK_SYSCLKConfig$446 ==.
                                   2201 ;	../SPL/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
                                   2202 ; genAnd
      009146 0D 04            [ 1] 2203 	tnz	(0x04, sp)
      009148 2A 03            [ 1] 2204 	jrpl	00240$
      00914A CC 91 63         [ 2] 2205 	jp	00102$
      00914D                       2206 00240$:
                                   2207 ; skipping generated iCode
                           00066B  2208 	Sstm8s_clk$CLK_SYSCLKConfig$447 ==.
                           00066B  2209 	Sstm8s_clk$CLK_SYSCLKConfig$448 ==.
                                   2210 ;	../SPL/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                   2211 ; genAnd
      00914D A4 E7            [ 1] 2212 	and	a, #0xe7
                                   2213 ; genPointerSet
      00914F C7 50 C6         [ 1] 2214 	ld	0x50c6, a
                           000670  2215 	Sstm8s_clk$CLK_SYSCLKConfig$449 ==.
                                   2216 ;	../SPL/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
                                   2217 ; genPointerGet
      009152 C6 50 C6         [ 1] 2218 	ld	a, 0x50c6
      009155 6B 01            [ 1] 2219 	ld	(0x01, sp), a
                                   2220 ; genAnd
      009157 7B 04            [ 1] 2221 	ld	a, (0x04, sp)
      009159 A4 18            [ 1] 2222 	and	a, #0x18
                                   2223 ; genOr
      00915B 1A 01            [ 1] 2224 	or	a, (0x01, sp)
                                   2225 ; genPointerSet
      00915D C7 50 C6         [ 1] 2226 	ld	0x50c6, a
                           00067E  2227 	Sstm8s_clk$CLK_SYSCLKConfig$450 ==.
                                   2228 ; genGoto
      009160 CC 91 76         [ 2] 2229 	jp	00104$
                                   2230 ; genLabel
      009163                       2231 00102$:
                           000681  2232 	Sstm8s_clk$CLK_SYSCLKConfig$451 ==.
                           000681  2233 	Sstm8s_clk$CLK_SYSCLKConfig$452 ==.
                                   2234 ;	../SPL/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
                                   2235 ; genAnd
      009163 A4 F8            [ 1] 2236 	and	a, #0xf8
                                   2237 ; genPointerSet
      009165 C7 50 C6         [ 1] 2238 	ld	0x50c6, a
                           000686  2239 	Sstm8s_clk$CLK_SYSCLKConfig$453 ==.
                                   2240 ;	../SPL/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
                                   2241 ; genPointerGet
      009168 C6 50 C6         [ 1] 2242 	ld	a, 0x50c6
      00916B 6B 01            [ 1] 2243 	ld	(0x01, sp), a
                                   2244 ; genAnd
      00916D 7B 04            [ 1] 2245 	ld	a, (0x04, sp)
      00916F A4 07            [ 1] 2246 	and	a, #0x07
                                   2247 ; genOr
      009171 1A 01            [ 1] 2248 	or	a, (0x01, sp)
                                   2249 ; genPointerSet
      009173 C7 50 C6         [ 1] 2250 	ld	0x50c6, a
                           000694  2251 	Sstm8s_clk$CLK_SYSCLKConfig$454 ==.
                                   2252 ; genLabel
      009176                       2253 00104$:
                           000694  2254 	Sstm8s_clk$CLK_SYSCLKConfig$455 ==.
                                   2255 ;	../SPL/src/stm8s_clk.c: 515: }
                                   2256 ; genEndFunction
      009176 84               [ 1] 2257 	pop	a
                           000695  2258 	Sstm8s_clk$CLK_SYSCLKConfig$456 ==.
                           000695  2259 	Sstm8s_clk$CLK_SYSCLKConfig$457 ==.
                           000695  2260 	XG$CLK_SYSCLKConfig$0$0 ==.
      009177 81               [ 4] 2261 	ret
                           000696  2262 	Sstm8s_clk$CLK_SYSCLKConfig$458 ==.
                           000696  2263 	Sstm8s_clk$CLK_SWIMConfig$459 ==.
                                   2264 ;	../SPL/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                   2265 ; genLabel
                                   2266 ;	-----------------------------------------
                                   2267 ;	 function CLK_SWIMConfig
                                   2268 ;	-----------------------------------------
                                   2269 ;	Register assignment is optimal.
                                   2270 ;	Stack space usage: 0 bytes.
      009178                       2271 _CLK_SWIMConfig:
                           000696  2272 	Sstm8s_clk$CLK_SWIMConfig$460 ==.
                           000696  2273 	Sstm8s_clk$CLK_SWIMConfig$461 ==.
                                   2274 ;	../SPL/src/stm8s_clk.c: 526: assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
                                   2275 ; genIfx
      009178 0D 03            [ 1] 2276 	tnz	(0x03, sp)
      00917A 26 03            [ 1] 2277 	jrne	00126$
      00917C CC 91 96         [ 2] 2278 	jp	00107$
      00917F                       2279 00126$:
                                   2280 ; genCmpEQorNE
      00917F 7B 03            [ 1] 2281 	ld	a, (0x03, sp)
      009181 4A               [ 1] 2282 	dec	a
      009182 26 03            [ 1] 2283 	jrne	00128$
      009184 CC 91 96         [ 2] 2284 	jp	00107$
      009187                       2285 00128$:
                           0006A5  2286 	Sstm8s_clk$CLK_SWIMConfig$462 ==.
                                   2287 ; skipping generated iCode
                                   2288 ; skipping iCode since result will be rematerialized
                                   2289 ; skipping iCode since result will be rematerialized
                                   2290 ; genIPush
      009187 4B 0E            [ 1] 2291 	push	#0x0e
                           0006A7  2292 	Sstm8s_clk$CLK_SWIMConfig$463 ==.
      009189 4B 02            [ 1] 2293 	push	#0x02
                           0006A9  2294 	Sstm8s_clk$CLK_SWIMConfig$464 ==.
      00918B 5F               [ 1] 2295 	clrw	x
      00918C 89               [ 2] 2296 	pushw	x
                           0006AB  2297 	Sstm8s_clk$CLK_SWIMConfig$465 ==.
                                   2298 ; genIPush
      00918D 4B BD            [ 1] 2299 	push	#<(___str_0+0)
                           0006AD  2300 	Sstm8s_clk$CLK_SWIMConfig$466 ==.
      00918F 4B 80            [ 1] 2301 	push	#((___str_0+0) >> 8)
                           0006AF  2302 	Sstm8s_clk$CLK_SWIMConfig$467 ==.
                                   2303 ; genCall
      009191 CD 82 99         [ 4] 2304 	call	_assert_failed
      009194 5B 06            [ 2] 2305 	addw	sp, #6
                           0006B4  2306 	Sstm8s_clk$CLK_SWIMConfig$468 ==.
                                   2307 ; genLabel
      009196                       2308 00107$:
                           0006B4  2309 	Sstm8s_clk$CLK_SWIMConfig$469 ==.
                                   2310 ;	../SPL/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
                                   2311 ; genPointerGet
      009196 C6 50 CD         [ 1] 2312 	ld	a, 0x50cd
                           0006B7  2313 	Sstm8s_clk$CLK_SWIMConfig$470 ==.
                                   2314 ;	../SPL/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
                                   2315 ; genIfx
      009199 0D 03            [ 1] 2316 	tnz	(0x03, sp)
      00919B 26 03            [ 1] 2317 	jrne	00130$
      00919D CC 91 A8         [ 2] 2318 	jp	00102$
      0091A0                       2319 00130$:
                           0006BE  2320 	Sstm8s_clk$CLK_SWIMConfig$471 ==.
                           0006BE  2321 	Sstm8s_clk$CLK_SWIMConfig$472 ==.
                                   2322 ;	../SPL/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
                                   2323 ; genOr
      0091A0 AA 01            [ 1] 2324 	or	a, #0x01
                                   2325 ; genPointerSet
      0091A2 C7 50 CD         [ 1] 2326 	ld	0x50cd, a
                           0006C3  2327 	Sstm8s_clk$CLK_SWIMConfig$473 ==.
                                   2328 ; genGoto
      0091A5 CC 91 AD         [ 2] 2329 	jp	00104$
                                   2330 ; genLabel
      0091A8                       2331 00102$:
                           0006C6  2332 	Sstm8s_clk$CLK_SWIMConfig$474 ==.
                           0006C6  2333 	Sstm8s_clk$CLK_SWIMConfig$475 ==.
                                   2334 ;	../SPL/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
                                   2335 ; genAnd
      0091A8 A4 FE            [ 1] 2336 	and	a, #0xfe
                                   2337 ; genPointerSet
      0091AA C7 50 CD         [ 1] 2338 	ld	0x50cd, a
                           0006CB  2339 	Sstm8s_clk$CLK_SWIMConfig$476 ==.
                                   2340 ; genLabel
      0091AD                       2341 00104$:
                           0006CB  2342 	Sstm8s_clk$CLK_SWIMConfig$477 ==.
                                   2343 ;	../SPL/src/stm8s_clk.c: 538: }
                                   2344 ; genEndFunction
                           0006CB  2345 	Sstm8s_clk$CLK_SWIMConfig$478 ==.
                           0006CB  2346 	XG$CLK_SWIMConfig$0$0 ==.
      0091AD 81               [ 4] 2347 	ret
                           0006CC  2348 	Sstm8s_clk$CLK_SWIMConfig$479 ==.
                           0006CC  2349 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$480 ==.
                                   2350 ;	../SPL/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   2351 ; genLabel
                                   2352 ;	-----------------------------------------
                                   2353 ;	 function CLK_ClockSecuritySystemEnable
                                   2354 ;	-----------------------------------------
                                   2355 ;	Register assignment is optimal.
                                   2356 ;	Stack space usage: 0 bytes.
      0091AE                       2357 _CLK_ClockSecuritySystemEnable:
                           0006CC  2358 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$481 ==.
                           0006CC  2359 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$482 ==.
                                   2360 ;	../SPL/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
                                   2361 ; genPointerGet
      0091AE C6 50 C8         [ 1] 2362 	ld	a, 0x50c8
                                   2363 ; genOr
      0091B1 AA 01            [ 1] 2364 	or	a, #0x01
                                   2365 ; genPointerSet
      0091B3 C7 50 C8         [ 1] 2366 	ld	0x50c8, a
                                   2367 ; genLabel
      0091B6                       2368 00101$:
                           0006D4  2369 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$483 ==.
                                   2370 ;	../SPL/src/stm8s_clk.c: 551: }
                                   2371 ; genEndFunction
                           0006D4  2372 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$484 ==.
                           0006D4  2373 	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
      0091B6 81               [ 4] 2374 	ret
                           0006D5  2375 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$485 ==.
                           0006D5  2376 	Sstm8s_clk$CLK_GetSYSCLKSource$486 ==.
                                   2377 ;	../SPL/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   2378 ; genLabel
                                   2379 ;	-----------------------------------------
                                   2380 ;	 function CLK_GetSYSCLKSource
                                   2381 ;	-----------------------------------------
                                   2382 ;	Register assignment is optimal.
                                   2383 ;	Stack space usage: 0 bytes.
      0091B7                       2384 _CLK_GetSYSCLKSource:
                           0006D5  2385 	Sstm8s_clk$CLK_GetSYSCLKSource$487 ==.
                           0006D5  2386 	Sstm8s_clk$CLK_GetSYSCLKSource$488 ==.
                                   2387 ;	../SPL/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
                                   2388 ; genPointerGet
      0091B7 C6 50 C3         [ 1] 2389 	ld	a, 0x50c3
                                   2390 ; genReturn
                                   2391 ; genLabel
      0091BA                       2392 00101$:
                           0006D8  2393 	Sstm8s_clk$CLK_GetSYSCLKSource$489 ==.
                                   2394 ;	../SPL/src/stm8s_clk.c: 562: }
                                   2395 ; genEndFunction
                           0006D8  2396 	Sstm8s_clk$CLK_GetSYSCLKSource$490 ==.
                           0006D8  2397 	XG$CLK_GetSYSCLKSource$0$0 ==.
      0091BA 81               [ 4] 2398 	ret
                           0006D9  2399 	Sstm8s_clk$CLK_GetSYSCLKSource$491 ==.
                           0006D9  2400 	Sstm8s_clk$CLK_GetClockFreq$492 ==.
                                   2401 ;	../SPL/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                   2402 ; genLabel
                                   2403 ;	-----------------------------------------
                                   2404 ;	 function CLK_GetClockFreq
                                   2405 ;	-----------------------------------------
                                   2406 ;	Register assignment might be sub-optimal.
                                   2407 ;	Stack space usage: 4 bytes.
      0091BB                       2408 _CLK_GetClockFreq:
                           0006D9  2409 	Sstm8s_clk$CLK_GetClockFreq$493 ==.
      0091BB 52 04            [ 2] 2410 	sub	sp, #4
                           0006DB  2411 	Sstm8s_clk$CLK_GetClockFreq$494 ==.
                           0006DB  2412 	Sstm8s_clk$CLK_GetClockFreq$495 ==.
                                   2413 ;	../SPL/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
                                   2414 ; genPointerGet
      0091BD C6 50 C3         [ 1] 2415 	ld	a, 0x50c3
      0091C0 6B 04            [ 1] 2416 	ld	(0x04, sp), a
                           0006E0  2417 	Sstm8s_clk$CLK_GetClockFreq$496 ==.
                                   2418 ;	../SPL/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
                                   2419 ; genCmpEQorNE
      0091C2 7B 04            [ 1] 2420 	ld	a, (0x04, sp)
      0091C4 A1 E1            [ 1] 2421 	cp	a, #0xe1
      0091C6 26 03            [ 1] 2422 	jrne	00120$
      0091C8 CC 91 CE         [ 2] 2423 	jp	00121$
      0091CB                       2424 00120$:
      0091CB CC 91 F6         [ 2] 2425 	jp	00105$
      0091CE                       2426 00121$:
                           0006EC  2427 	Sstm8s_clk$CLK_GetClockFreq$497 ==.
                                   2428 ; skipping generated iCode
                           0006EC  2429 	Sstm8s_clk$CLK_GetClockFreq$498 ==.
                           0006EC  2430 	Sstm8s_clk$CLK_GetClockFreq$499 ==.
                                   2431 ;	../SPL/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
                                   2432 ; genPointerGet
      0091CE C6 50 C6         [ 1] 2433 	ld	a, 0x50c6
                                   2434 ; genAnd
      0091D1 A4 18            [ 1] 2435 	and	a, #0x18
                           0006F1  2436 	Sstm8s_clk$CLK_GetClockFreq$500 ==.
                                   2437 ;	../SPL/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
                                   2438 ; genRightShiftLiteral
      0091D3 44               [ 1] 2439 	srl	a
      0091D4 44               [ 1] 2440 	srl	a
      0091D5 44               [ 1] 2441 	srl	a
                           0006F4  2442 	Sstm8s_clk$CLK_GetClockFreq$501 ==.
                                   2443 ;	../SPL/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
                                   2444 ; skipping iCode since result will be rematerialized
                                   2445 ; genPlus
      0091D6 5F               [ 1] 2446 	clrw	x
      0091D7 97               [ 1] 2447 	ld	xl, a
      0091D8 1C 80 B1         [ 2] 2448 	addw	x, #(_HSIDivFactor+0)
                                   2449 ; genPointerGet
      0091DB F6               [ 1] 2450 	ld	a, (x)
                           0006FA  2451 	Sstm8s_clk$CLK_GetClockFreq$502 ==.
                                   2452 ;	../SPL/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
                                   2453 ; genCast
                                   2454 ; genAssign
      0091DC 5F               [ 1] 2455 	clrw	x
      0091DD 97               [ 1] 2456 	ld	xl, a
      0091DE 90 5F            [ 1] 2457 	clrw	y
                           0006FE  2458 	Sstm8s_clk$CLK_GetClockFreq$503 ==.
                                   2459 ; genIPush
      0091E0 89               [ 2] 2460 	pushw	x
                           0006FF  2461 	Sstm8s_clk$CLK_GetClockFreq$504 ==.
      0091E1 90 89            [ 2] 2462 	pushw	y
                           000701  2463 	Sstm8s_clk$CLK_GetClockFreq$505 ==.
                                   2464 ; genIPush
      0091E3 4B 00            [ 1] 2465 	push	#0x00
                           000703  2466 	Sstm8s_clk$CLK_GetClockFreq$506 ==.
      0091E5 4B 24            [ 1] 2467 	push	#0x24
                           000705  2468 	Sstm8s_clk$CLK_GetClockFreq$507 ==.
      0091E7 4B F4            [ 1] 2469 	push	#0xf4
                           000707  2470 	Sstm8s_clk$CLK_GetClockFreq$508 ==.
      0091E9 4B 00            [ 1] 2471 	push	#0x00
                           000709  2472 	Sstm8s_clk$CLK_GetClockFreq$509 ==.
                                   2473 ; genCall
      0091EB CD BA 9E         [ 4] 2474 	call	__divulong
      0091EE 5B 08            [ 2] 2475 	addw	sp, #8
                           00070E  2476 	Sstm8s_clk$CLK_GetClockFreq$510 ==.
      0091F0 51               [ 1] 2477 	exgw	x, y
                                   2478 ; genAssign
      0091F1 17 03            [ 2] 2479 	ldw	(0x03, sp), y
                                   2480 ; genGoto
      0091F3 CC 92 14         [ 2] 2481 	jp	00106$
                                   2482 ; genLabel
      0091F6                       2483 00105$:
                           000714  2484 	Sstm8s_clk$CLK_GetClockFreq$511 ==.
                                   2485 ;	../SPL/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
                                   2486 ; genCmpEQorNE
      0091F6 7B 04            [ 1] 2487 	ld	a, (0x04, sp)
      0091F8 A1 D2            [ 1] 2488 	cp	a, #0xd2
      0091FA 26 03            [ 1] 2489 	jrne	00123$
      0091FC CC 92 02         [ 2] 2490 	jp	00124$
      0091FF                       2491 00123$:
      0091FF CC 92 0C         [ 2] 2492 	jp	00102$
      009202                       2493 00124$:
                           000720  2494 	Sstm8s_clk$CLK_GetClockFreq$512 ==.
                                   2495 ; skipping generated iCode
                           000720  2496 	Sstm8s_clk$CLK_GetClockFreq$513 ==.
                           000720  2497 	Sstm8s_clk$CLK_GetClockFreq$514 ==.
                                   2498 ;	../SPL/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
                                   2499 ; genAssign
      009202 AE F4 00         [ 2] 2500 	ldw	x, #0xf400
      009205 1F 03            [ 2] 2501 	ldw	(0x03, sp), x
      009207 5F               [ 1] 2502 	clrw	x
      009208 5C               [ 1] 2503 	incw	x
                           000727  2504 	Sstm8s_clk$CLK_GetClockFreq$515 ==.
                                   2505 ; genGoto
      009209 CC 92 14         [ 2] 2506 	jp	00106$
                                   2507 ; genLabel
      00920C                       2508 00102$:
                           00072A  2509 	Sstm8s_clk$CLK_GetClockFreq$516 ==.
                           00072A  2510 	Sstm8s_clk$CLK_GetClockFreq$517 ==.
                                   2511 ;	../SPL/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
                                   2512 ; genAssign
      00920C AE 36 00         [ 2] 2513 	ldw	x, #0x3600
      00920F 1F 03            [ 2] 2514 	ldw	(0x03, sp), x
      009211 AE 01 6E         [ 2] 2515 	ldw	x, #0x016e
                           000732  2516 	Sstm8s_clk$CLK_GetClockFreq$518 ==.
                                   2517 ; genLabel
      009214                       2518 00106$:
                           000732  2519 	Sstm8s_clk$CLK_GetClockFreq$519 ==.
                                   2520 ;	../SPL/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
                                   2521 ; genReturn
      009214 51               [ 1] 2522 	exgw	x, y
      009215 1E 03            [ 2] 2523 	ldw	x, (0x03, sp)
                                   2524 ; genLabel
      009217                       2525 00107$:
                           000735  2526 	Sstm8s_clk$CLK_GetClockFreq$520 ==.
                                   2527 ;	../SPL/src/stm8s_clk.c: 595: }
                                   2528 ; genEndFunction
      009217 5B 04            [ 2] 2529 	addw	sp, #4
                           000737  2530 	Sstm8s_clk$CLK_GetClockFreq$521 ==.
                           000737  2531 	Sstm8s_clk$CLK_GetClockFreq$522 ==.
                           000737  2532 	XG$CLK_GetClockFreq$0$0 ==.
      009219 81               [ 4] 2533 	ret
                           000738  2534 	Sstm8s_clk$CLK_GetClockFreq$523 ==.
                           000738  2535 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$524 ==.
                                   2536 ;	../SPL/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   2537 ; genLabel
                                   2538 ;	-----------------------------------------
                                   2539 ;	 function CLK_AdjustHSICalibrationValue
                                   2540 ;	-----------------------------------------
                                   2541 ;	Register assignment is optimal.
                                   2542 ;	Stack space usage: 0 bytes.
      00921A                       2543 _CLK_AdjustHSICalibrationValue:
                           000738  2544 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$525 ==.
                           000738  2545 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$526 ==.
                                   2546 ;	../SPL/src/stm8s_clk.c: 607: assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
                                   2547 ; genIfx
      00921A 0D 03            [ 1] 2548 	tnz	(0x03, sp)
      00921C 26 03            [ 1] 2549 	jrne	00166$
      00921E CC 92 6E         [ 2] 2550 	jp	00104$
      009221                       2551 00166$:
                                   2552 ; genCmpEQorNE
      009221 7B 03            [ 1] 2553 	ld	a, (0x03, sp)
      009223 4A               [ 1] 2554 	dec	a
      009224 26 03            [ 1] 2555 	jrne	00168$
      009226 CC 92 6E         [ 2] 2556 	jp	00104$
      009229                       2557 00168$:
                           000747  2558 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$527 ==.
                                   2559 ; skipping generated iCode
                                   2560 ; genCmpEQorNE
      009229 7B 03            [ 1] 2561 	ld	a, (0x03, sp)
      00922B A1 02            [ 1] 2562 	cp	a, #0x02
      00922D 26 03            [ 1] 2563 	jrne	00171$
      00922F CC 92 6E         [ 2] 2564 	jp	00104$
      009232                       2565 00171$:
                           000750  2566 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$528 ==.
                                   2567 ; skipping generated iCode
                                   2568 ; genCmpEQorNE
      009232 7B 03            [ 1] 2569 	ld	a, (0x03, sp)
      009234 A1 03            [ 1] 2570 	cp	a, #0x03
      009236 26 03            [ 1] 2571 	jrne	00174$
      009238 CC 92 6E         [ 2] 2572 	jp	00104$
      00923B                       2573 00174$:
                           000759  2574 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$529 ==.
                                   2575 ; skipping generated iCode
                                   2576 ; genCmpEQorNE
      00923B 7B 03            [ 1] 2577 	ld	a, (0x03, sp)
      00923D A1 04            [ 1] 2578 	cp	a, #0x04
      00923F 26 03            [ 1] 2579 	jrne	00177$
      009241 CC 92 6E         [ 2] 2580 	jp	00104$
      009244                       2581 00177$:
                           000762  2582 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$530 ==.
                                   2583 ; skipping generated iCode
                                   2584 ; genCmpEQorNE
      009244 7B 03            [ 1] 2585 	ld	a, (0x03, sp)
      009246 A1 05            [ 1] 2586 	cp	a, #0x05
      009248 26 03            [ 1] 2587 	jrne	00180$
      00924A CC 92 6E         [ 2] 2588 	jp	00104$
      00924D                       2589 00180$:
                           00076B  2590 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$531 ==.
                                   2591 ; skipping generated iCode
                                   2592 ; genCmpEQorNE
      00924D 7B 03            [ 1] 2593 	ld	a, (0x03, sp)
      00924F A1 06            [ 1] 2594 	cp	a, #0x06
      009251 26 03            [ 1] 2595 	jrne	00183$
      009253 CC 92 6E         [ 2] 2596 	jp	00104$
      009256                       2597 00183$:
                           000774  2598 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$532 ==.
                                   2599 ; skipping generated iCode
                                   2600 ; genCmpEQorNE
      009256 7B 03            [ 1] 2601 	ld	a, (0x03, sp)
      009258 A1 07            [ 1] 2602 	cp	a, #0x07
      00925A 26 03            [ 1] 2603 	jrne	00186$
      00925C CC 92 6E         [ 2] 2604 	jp	00104$
      00925F                       2605 00186$:
                           00077D  2606 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$533 ==.
                                   2607 ; skipping generated iCode
                                   2608 ; skipping iCode since result will be rematerialized
                                   2609 ; skipping iCode since result will be rematerialized
                                   2610 ; genIPush
      00925F 4B 5F            [ 1] 2611 	push	#0x5f
                           00077F  2612 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$534 ==.
      009261 4B 02            [ 1] 2613 	push	#0x02
                           000781  2614 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$535 ==.
      009263 5F               [ 1] 2615 	clrw	x
      009264 89               [ 2] 2616 	pushw	x
                           000783  2617 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$536 ==.
                                   2618 ; genIPush
      009265 4B BD            [ 1] 2619 	push	#<(___str_0+0)
                           000785  2620 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$537 ==.
      009267 4B 80            [ 1] 2621 	push	#((___str_0+0) >> 8)
                           000787  2622 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$538 ==.
                                   2623 ; genCall
      009269 CD 82 99         [ 4] 2624 	call	_assert_failed
      00926C 5B 06            [ 2] 2625 	addw	sp, #6
                           00078C  2626 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$539 ==.
                                   2627 ; genLabel
      00926E                       2628 00104$:
                           00078C  2629 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$540 ==.
                                   2630 ;	../SPL/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
                                   2631 ; genPointerGet
      00926E C6 50 CC         [ 1] 2632 	ld	a, 0x50cc
                                   2633 ; genAnd
      009271 A4 F8            [ 1] 2634 	and	a, #0xf8
                                   2635 ; genOr
      009273 1A 03            [ 1] 2636 	or	a, (0x03, sp)
                                   2637 ; genPointerSet
      009275 C7 50 CC         [ 1] 2638 	ld	0x50cc, a
                                   2639 ; genLabel
      009278                       2640 00101$:
                           000796  2641 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$541 ==.
                                   2642 ;	../SPL/src/stm8s_clk.c: 611: }
                                   2643 ; genEndFunction
                           000796  2644 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$542 ==.
                           000796  2645 	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
      009278 81               [ 4] 2646 	ret
                           000797  2647 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$543 ==.
                           000797  2648 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$544 ==.
                                   2649 ;	../SPL/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   2650 ; genLabel
                                   2651 ;	-----------------------------------------
                                   2652 ;	 function CLK_SYSCLKEmergencyClear
                                   2653 ;	-----------------------------------------
                                   2654 ;	Register assignment is optimal.
                                   2655 ;	Stack space usage: 0 bytes.
      009279                       2656 _CLK_SYSCLKEmergencyClear:
                           000797  2657 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$545 ==.
                           000797  2658 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$546 ==.
                                   2659 ;	../SPL/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
                                   2660 ; genPointerGet
      009279 C6 50 C5         [ 1] 2661 	ld	a, 0x50c5
                                   2662 ; genAnd
      00927C A4 FE            [ 1] 2663 	and	a, #0xfe
                                   2664 ; genPointerSet
      00927E C7 50 C5         [ 1] 2665 	ld	0x50c5, a
                                   2666 ; genLabel
      009281                       2667 00101$:
                           00079F  2668 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$547 ==.
                                   2669 ;	../SPL/src/stm8s_clk.c: 625: }
                                   2670 ; genEndFunction
                           00079F  2671 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$548 ==.
                           00079F  2672 	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
      009281 81               [ 4] 2673 	ret
                           0007A0  2674 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$549 ==.
                           0007A0  2675 	Sstm8s_clk$CLK_GetFlagStatus$550 ==.
                                   2676 ;	../SPL/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   2677 ; genLabel
                                   2678 ;	-----------------------------------------
                                   2679 ;	 function CLK_GetFlagStatus
                                   2680 ;	-----------------------------------------
                                   2681 ;	Register assignment might be sub-optimal.
                                   2682 ;	Stack space usage: 1 bytes.
      009282                       2683 _CLK_GetFlagStatus:
                           0007A0  2684 	Sstm8s_clk$CLK_GetFlagStatus$551 ==.
      009282 88               [ 1] 2685 	push	a
                           0007A1  2686 	Sstm8s_clk$CLK_GetFlagStatus$552 ==.
                           0007A1  2687 	Sstm8s_clk$CLK_GetFlagStatus$553 ==.
                                   2688 ;	../SPL/src/stm8s_clk.c: 641: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
                                   2689 ; genCast
                                   2690 ; genAssign
      009283 1E 04            [ 2] 2691 	ldw	x, (0x04, sp)
                                   2692 ; genCmpEQorNE
      009285 A3 01 10         [ 2] 2693 	cpw	x, #0x0110
      009288 26 03            [ 1] 2694 	jrne	00215$
      00928A CC 92 E0         [ 2] 2695 	jp	00119$
      00928D                       2696 00215$:
                           0007AB  2697 	Sstm8s_clk$CLK_GetFlagStatus$554 ==.
                                   2698 ; skipping generated iCode
                                   2699 ; genCmpEQorNE
      00928D A3 01 02         [ 2] 2700 	cpw	x, #0x0102
      009290 26 03            [ 1] 2701 	jrne	00218$
      009292 CC 92 E0         [ 2] 2702 	jp	00119$
      009295                       2703 00218$:
                           0007B3  2704 	Sstm8s_clk$CLK_GetFlagStatus$555 ==.
                                   2705 ; skipping generated iCode
                                   2706 ; genCmpEQorNE
      009295 A3 02 02         [ 2] 2707 	cpw	x, #0x0202
      009298 26 03            [ 1] 2708 	jrne	00221$
      00929A CC 92 E0         [ 2] 2709 	jp	00119$
      00929D                       2710 00221$:
                           0007BB  2711 	Sstm8s_clk$CLK_GetFlagStatus$556 ==.
                                   2712 ; skipping generated iCode
                                   2713 ; genCmpEQorNE
      00929D A3 03 08         [ 2] 2714 	cpw	x, #0x0308
      0092A0 26 03            [ 1] 2715 	jrne	00224$
      0092A2 CC 92 E0         [ 2] 2716 	jp	00119$
      0092A5                       2717 00224$:
                           0007C3  2718 	Sstm8s_clk$CLK_GetFlagStatus$557 ==.
                                   2719 ; skipping generated iCode
                                   2720 ; genCmpEQorNE
      0092A5 A3 03 01         [ 2] 2721 	cpw	x, #0x0301
      0092A8 26 03            [ 1] 2722 	jrne	00227$
      0092AA CC 92 E0         [ 2] 2723 	jp	00119$
      0092AD                       2724 00227$:
                           0007CB  2725 	Sstm8s_clk$CLK_GetFlagStatus$558 ==.
                                   2726 ; skipping generated iCode
                                   2727 ; genCmpEQorNE
      0092AD A3 04 08         [ 2] 2728 	cpw	x, #0x0408
      0092B0 26 03            [ 1] 2729 	jrne	00230$
      0092B2 CC 92 E0         [ 2] 2730 	jp	00119$
      0092B5                       2731 00230$:
                           0007D3  2732 	Sstm8s_clk$CLK_GetFlagStatus$559 ==.
                                   2733 ; skipping generated iCode
                                   2734 ; genCmpEQorNE
      0092B5 A3 04 02         [ 2] 2735 	cpw	x, #0x0402
      0092B8 26 03            [ 1] 2736 	jrne	00233$
      0092BA CC 92 E0         [ 2] 2737 	jp	00119$
      0092BD                       2738 00233$:
                           0007DB  2739 	Sstm8s_clk$CLK_GetFlagStatus$560 ==.
                                   2740 ; skipping generated iCode
                                   2741 ; genCmpEQorNE
      0092BD A3 05 04         [ 2] 2742 	cpw	x, #0x0504
      0092C0 26 03            [ 1] 2743 	jrne	00236$
      0092C2 CC 92 E0         [ 2] 2744 	jp	00119$
      0092C5                       2745 00236$:
                           0007E3  2746 	Sstm8s_clk$CLK_GetFlagStatus$561 ==.
                                   2747 ; skipping generated iCode
                                   2748 ; genCmpEQorNE
      0092C5 A3 05 02         [ 2] 2749 	cpw	x, #0x0502
      0092C8 26 03            [ 1] 2750 	jrne	00239$
      0092CA CC 92 E0         [ 2] 2751 	jp	00119$
      0092CD                       2752 00239$:
                           0007EB  2753 	Sstm8s_clk$CLK_GetFlagStatus$562 ==.
                                   2754 ; skipping generated iCode
                                   2755 ; skipping iCode since result will be rematerialized
                                   2756 ; skipping iCode since result will be rematerialized
                                   2757 ; genIPush
      0092CD 89               [ 2] 2758 	pushw	x
                           0007EC  2759 	Sstm8s_clk$CLK_GetFlagStatus$563 ==.
      0092CE 4B 81            [ 1] 2760 	push	#0x81
                           0007EE  2761 	Sstm8s_clk$CLK_GetFlagStatus$564 ==.
      0092D0 4B 02            [ 1] 2762 	push	#0x02
                           0007F0  2763 	Sstm8s_clk$CLK_GetFlagStatus$565 ==.
      0092D2 4B 00            [ 1] 2764 	push	#0x00
                           0007F2  2765 	Sstm8s_clk$CLK_GetFlagStatus$566 ==.
      0092D4 4B 00            [ 1] 2766 	push	#0x00
                           0007F4  2767 	Sstm8s_clk$CLK_GetFlagStatus$567 ==.
                                   2768 ; genIPush
      0092D6 4B BD            [ 1] 2769 	push	#<(___str_0+0)
                           0007F6  2770 	Sstm8s_clk$CLK_GetFlagStatus$568 ==.
      0092D8 4B 80            [ 1] 2771 	push	#((___str_0+0) >> 8)
                           0007F8  2772 	Sstm8s_clk$CLK_GetFlagStatus$569 ==.
                                   2773 ; genCall
      0092DA CD 82 99         [ 4] 2774 	call	_assert_failed
      0092DD 5B 06            [ 2] 2775 	addw	sp, #6
                           0007FD  2776 	Sstm8s_clk$CLK_GetFlagStatus$570 ==.
      0092DF 85               [ 2] 2777 	popw	x
                           0007FE  2778 	Sstm8s_clk$CLK_GetFlagStatus$571 ==.
                                   2779 ; genLabel
      0092E0                       2780 00119$:
                           0007FE  2781 	Sstm8s_clk$CLK_GetFlagStatus$572 ==.
                                   2782 ;	../SPL/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
                                   2783 ; genAnd
      0092E0 4F               [ 1] 2784 	clr	a
                                   2785 ; genAssign
                           0007FF  2786 	Sstm8s_clk$CLK_GetFlagStatus$573 ==.
                                   2787 ;	../SPL/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
                                   2788 ; genCast
                                   2789 ; genAssign
      0092E1 97               [ 1] 2790 	ld	xl, a
                                   2791 ; genCmpEQorNE
      0092E2 A3 01 00         [ 2] 2792 	cpw	x, #0x0100
      0092E5 26 03            [ 1] 2793 	jrne	00242$
      0092E7 CC 92 ED         [ 2] 2794 	jp	00243$
      0092EA                       2795 00242$:
      0092EA CC 92 F3         [ 2] 2796 	jp	00111$
      0092ED                       2797 00243$:
                           00080B  2798 	Sstm8s_clk$CLK_GetFlagStatus$574 ==.
                                   2799 ; skipping generated iCode
                           00080B  2800 	Sstm8s_clk$CLK_GetFlagStatus$575 ==.
                           00080B  2801 	Sstm8s_clk$CLK_GetFlagStatus$576 ==.
                                   2802 ;	../SPL/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
                                   2803 ; genPointerGet
      0092ED C6 50 C0         [ 1] 2804 	ld	a, 0x50c0
                           00080E  2805 	Sstm8s_clk$CLK_GetFlagStatus$577 ==.
                                   2806 ; genGoto
      0092F0 CC 93 29         [ 2] 2807 	jp	00112$
                                   2808 ; genLabel
      0092F3                       2809 00111$:
                           000811  2810 	Sstm8s_clk$CLK_GetFlagStatus$578 ==.
                                   2811 ;	../SPL/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
                                   2812 ; genCmpEQorNE
      0092F3 A3 02 00         [ 2] 2813 	cpw	x, #0x0200
      0092F6 26 03            [ 1] 2814 	jrne	00245$
      0092F8 CC 92 FE         [ 2] 2815 	jp	00246$
      0092FB                       2816 00245$:
      0092FB CC 93 04         [ 2] 2817 	jp	00108$
      0092FE                       2818 00246$:
                           00081C  2819 	Sstm8s_clk$CLK_GetFlagStatus$579 ==.
                                   2820 ; skipping generated iCode
                           00081C  2821 	Sstm8s_clk$CLK_GetFlagStatus$580 ==.
                           00081C  2822 	Sstm8s_clk$CLK_GetFlagStatus$581 ==.
                                   2823 ;	../SPL/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
                                   2824 ; genPointerGet
      0092FE C6 50 C1         [ 1] 2825 	ld	a, 0x50c1
                           00081F  2826 	Sstm8s_clk$CLK_GetFlagStatus$582 ==.
                                   2827 ; genGoto
      009301 CC 93 29         [ 2] 2828 	jp	00112$
                                   2829 ; genLabel
      009304                       2830 00108$:
                           000822  2831 	Sstm8s_clk$CLK_GetFlagStatus$583 ==.
                                   2832 ;	../SPL/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
                                   2833 ; genCmpEQorNE
      009304 A3 03 00         [ 2] 2834 	cpw	x, #0x0300
      009307 26 03            [ 1] 2835 	jrne	00248$
      009309 CC 93 0F         [ 2] 2836 	jp	00249$
      00930C                       2837 00248$:
      00930C CC 93 15         [ 2] 2838 	jp	00105$
      00930F                       2839 00249$:
                           00082D  2840 	Sstm8s_clk$CLK_GetFlagStatus$584 ==.
                                   2841 ; skipping generated iCode
                           00082D  2842 	Sstm8s_clk$CLK_GetFlagStatus$585 ==.
                           00082D  2843 	Sstm8s_clk$CLK_GetFlagStatus$586 ==.
                                   2844 ;	../SPL/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
                                   2845 ; genPointerGet
      00930F C6 50 C5         [ 1] 2846 	ld	a, 0x50c5
                           000830  2847 	Sstm8s_clk$CLK_GetFlagStatus$587 ==.
                                   2848 ; genGoto
      009312 CC 93 29         [ 2] 2849 	jp	00112$
                                   2850 ; genLabel
      009315                       2851 00105$:
                           000833  2852 	Sstm8s_clk$CLK_GetFlagStatus$588 ==.
                                   2853 ;	../SPL/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
                                   2854 ; genCmpEQorNE
      009315 A3 04 00         [ 2] 2855 	cpw	x, #0x0400
      009318 26 03            [ 1] 2856 	jrne	00251$
      00931A CC 93 20         [ 2] 2857 	jp	00252$
      00931D                       2858 00251$:
      00931D CC 93 26         [ 2] 2859 	jp	00102$
      009320                       2860 00252$:
                           00083E  2861 	Sstm8s_clk$CLK_GetFlagStatus$589 ==.
                                   2862 ; skipping generated iCode
                           00083E  2863 	Sstm8s_clk$CLK_GetFlagStatus$590 ==.
                           00083E  2864 	Sstm8s_clk$CLK_GetFlagStatus$591 ==.
                                   2865 ;	../SPL/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
                                   2866 ; genPointerGet
      009320 C6 50 C8         [ 1] 2867 	ld	a, 0x50c8
                           000841  2868 	Sstm8s_clk$CLK_GetFlagStatus$592 ==.
                                   2869 ; genGoto
      009323 CC 93 29         [ 2] 2870 	jp	00112$
                                   2871 ; genLabel
      009326                       2872 00102$:
                           000844  2873 	Sstm8s_clk$CLK_GetFlagStatus$593 ==.
                           000844  2874 	Sstm8s_clk$CLK_GetFlagStatus$594 ==.
                                   2875 ;	../SPL/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
                                   2876 ; genPointerGet
      009326 C6 50 C9         [ 1] 2877 	ld	a, 0x50c9
                           000847  2878 	Sstm8s_clk$CLK_GetFlagStatus$595 ==.
                                   2879 ; genLabel
      009329                       2880 00112$:
                           000847  2881 	Sstm8s_clk$CLK_GetFlagStatus$596 ==.
                                   2882 ;	../SPL/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
                                   2883 ; genCast
                                   2884 ; genAssign
      009329 88               [ 1] 2885 	push	a
                           000848  2886 	Sstm8s_clk$CLK_GetFlagStatus$597 ==.
      00932A 7B 06            [ 1] 2887 	ld	a, (0x06, sp)
      00932C 6B 02            [ 1] 2888 	ld	(0x02, sp), a
      00932E 84               [ 1] 2889 	pop	a
                           00084D  2890 	Sstm8s_clk$CLK_GetFlagStatus$598 ==.
                                   2891 ; genAnd
      00932F 14 01            [ 1] 2892 	and	a, (0x01, sp)
                                   2893 ; genIfx
      009331 4D               [ 1] 2894 	tnz	a
      009332 26 03            [ 1] 2895 	jrne	00253$
      009334 CC 93 3C         [ 2] 2896 	jp	00114$
      009337                       2897 00253$:
                           000855  2898 	Sstm8s_clk$CLK_GetFlagStatus$599 ==.
                           000855  2899 	Sstm8s_clk$CLK_GetFlagStatus$600 ==.
                                   2900 ;	../SPL/src/stm8s_clk.c: 670: bitstatus = SET;
                                   2901 ; genAssign
      009337 A6 01            [ 1] 2902 	ld	a, #0x01
                           000857  2903 	Sstm8s_clk$CLK_GetFlagStatus$601 ==.
                                   2904 ; genGoto
      009339 CC 93 3D         [ 2] 2905 	jp	00115$
                                   2906 ; genLabel
      00933C                       2907 00114$:
                           00085A  2908 	Sstm8s_clk$CLK_GetFlagStatus$602 ==.
                           00085A  2909 	Sstm8s_clk$CLK_GetFlagStatus$603 ==.
                                   2910 ;	../SPL/src/stm8s_clk.c: 674: bitstatus = RESET;
                                   2911 ; genAssign
      00933C 4F               [ 1] 2912 	clr	a
                           00085B  2913 	Sstm8s_clk$CLK_GetFlagStatus$604 ==.
                                   2914 ; genLabel
      00933D                       2915 00115$:
                           00085B  2916 	Sstm8s_clk$CLK_GetFlagStatus$605 ==.
                                   2917 ;	../SPL/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                   2918 ; genReturn
                                   2919 ; genLabel
      00933D                       2920 00116$:
                           00085B  2921 	Sstm8s_clk$CLK_GetFlagStatus$606 ==.
                                   2922 ;	../SPL/src/stm8s_clk.c: 679: }
                                   2923 ; genEndFunction
      00933D 5B 01            [ 2] 2924 	addw	sp, #1
                           00085D  2925 	Sstm8s_clk$CLK_GetFlagStatus$607 ==.
                           00085D  2926 	Sstm8s_clk$CLK_GetFlagStatus$608 ==.
                           00085D  2927 	XG$CLK_GetFlagStatus$0$0 ==.
      00933F 81               [ 4] 2928 	ret
                           00085E  2929 	Sstm8s_clk$CLK_GetFlagStatus$609 ==.
                           00085E  2930 	Sstm8s_clk$CLK_GetITStatus$610 ==.
                                   2931 ;	../SPL/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   2932 ; genLabel
                                   2933 ;	-----------------------------------------
                                   2934 ;	 function CLK_GetITStatus
                                   2935 ;	-----------------------------------------
                                   2936 ;	Register assignment might be sub-optimal.
                                   2937 ;	Stack space usage: 0 bytes.
      009340                       2938 _CLK_GetITStatus:
                           00085E  2939 	Sstm8s_clk$CLK_GetITStatus$611 ==.
                           00085E  2940 	Sstm8s_clk$CLK_GetITStatus$612 ==.
                                   2941 ;	../SPL/src/stm8s_clk.c: 692: assert_param(IS_CLK_IT_OK(CLK_IT));
                                   2942 ; genCmpEQorNE
      009340 7B 03            [ 1] 2943 	ld	a, (0x03, sp)
      009342 A1 1C            [ 1] 2944 	cp	a, #0x1c
      009344 26 05            [ 1] 2945 	jrne	00143$
      009346 A6 01            [ 1] 2946 	ld	a, #0x01
      009348 CC 93 4C         [ 2] 2947 	jp	00144$
      00934B                       2948 00143$:
      00934B 4F               [ 1] 2949 	clr	a
      00934C                       2950 00144$:
                           00086A  2951 	Sstm8s_clk$CLK_GetITStatus$613 ==.
                                   2952 ; genCmpEQorNE
      00934C 88               [ 1] 2953 	push	a
                           00086B  2954 	Sstm8s_clk$CLK_GetITStatus$614 ==.
      00934D 7B 04            [ 1] 2955 	ld	a, (0x04, sp)
      00934F A1 0C            [ 1] 2956 	cp	a, #0x0c
      009351 84               [ 1] 2957 	pop	a
                           000870  2958 	Sstm8s_clk$CLK_GetITStatus$615 ==.
      009352 26 03            [ 1] 2959 	jrne	00146$
      009354 CC 93 6E         [ 2] 2960 	jp	00113$
      009357                       2961 00146$:
                           000875  2962 	Sstm8s_clk$CLK_GetITStatus$616 ==.
                                   2963 ; skipping generated iCode
                                   2964 ; genIfx
      009357 4D               [ 1] 2965 	tnz	a
      009358 27 03            [ 1] 2966 	jreq	00148$
      00935A CC 93 6E         [ 2] 2967 	jp	00113$
      00935D                       2968 00148$:
                                   2969 ; skipping iCode since result will be rematerialized
                                   2970 ; skipping iCode since result will be rematerialized
                                   2971 ; genIPush
      00935D 88               [ 1] 2972 	push	a
                           00087C  2973 	Sstm8s_clk$CLK_GetITStatus$617 ==.
      00935E 4B B4            [ 1] 2974 	push	#0xb4
                           00087E  2975 	Sstm8s_clk$CLK_GetITStatus$618 ==.
      009360 4B 02            [ 1] 2976 	push	#0x02
                           000880  2977 	Sstm8s_clk$CLK_GetITStatus$619 ==.
      009362 5F               [ 1] 2978 	clrw	x
      009363 89               [ 2] 2979 	pushw	x
                           000882  2980 	Sstm8s_clk$CLK_GetITStatus$620 ==.
                                   2981 ; genIPush
      009364 4B BD            [ 1] 2982 	push	#<(___str_0+0)
                           000884  2983 	Sstm8s_clk$CLK_GetITStatus$621 ==.
      009366 4B 80            [ 1] 2984 	push	#((___str_0+0) >> 8)
                           000886  2985 	Sstm8s_clk$CLK_GetITStatus$622 ==.
                                   2986 ; genCall
      009368 CD 82 99         [ 4] 2987 	call	_assert_failed
      00936B 5B 06            [ 2] 2988 	addw	sp, #6
                           00088B  2989 	Sstm8s_clk$CLK_GetITStatus$623 ==.
      00936D 84               [ 1] 2990 	pop	a
                           00088C  2991 	Sstm8s_clk$CLK_GetITStatus$624 ==.
                                   2992 ; genLabel
      00936E                       2993 00113$:
                           00088C  2994 	Sstm8s_clk$CLK_GetITStatus$625 ==.
                                   2995 ;	../SPL/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
                                   2996 ; genAssign
                                   2997 ; genIfx
      00936E 4D               [ 1] 2998 	tnz	a
      00936F 26 03            [ 1] 2999 	jrne	00149$
      009371 CC 93 8C         [ 2] 3000 	jp	00108$
      009374                       3001 00149$:
                           000892  3002 	Sstm8s_clk$CLK_GetITStatus$626 ==.
                           000892  3003 	Sstm8s_clk$CLK_GetITStatus$627 ==.
                                   3004 ;	../SPL/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   3005 ; genPointerGet
      009374 C6 50 C5         [ 1] 3006 	ld	a, 0x50c5
                                   3007 ; genAnd
      009377 14 03            [ 1] 3008 	and	a, (0x03, sp)
                                   3009 ; genCmpEQorNE
      009379 A1 0C            [ 1] 3010 	cp	a, #0x0c
      00937B 26 03            [ 1] 3011 	jrne	00151$
      00937D CC 93 83         [ 2] 3012 	jp	00152$
      009380                       3013 00151$:
      009380 CC 93 88         [ 2] 3014 	jp	00102$
      009383                       3015 00152$:
                           0008A1  3016 	Sstm8s_clk$CLK_GetITStatus$628 ==.
                                   3017 ; skipping generated iCode
                           0008A1  3018 	Sstm8s_clk$CLK_GetITStatus$629 ==.
                           0008A1  3019 	Sstm8s_clk$CLK_GetITStatus$630 ==.
                                   3020 ;	../SPL/src/stm8s_clk.c: 699: bitstatus = SET;
                                   3021 ; genAssign
      009383 A6 01            [ 1] 3022 	ld	a, #0x01
                           0008A3  3023 	Sstm8s_clk$CLK_GetITStatus$631 ==.
                                   3024 ; genGoto
      009385 CC 93 A1         [ 2] 3025 	jp	00109$
                                   3026 ; genLabel
      009388                       3027 00102$:
                           0008A6  3028 	Sstm8s_clk$CLK_GetITStatus$632 ==.
                           0008A6  3029 	Sstm8s_clk$CLK_GetITStatus$633 ==.
                                   3030 ;	../SPL/src/stm8s_clk.c: 703: bitstatus = RESET;
                                   3031 ; genAssign
      009388 4F               [ 1] 3032 	clr	a
                           0008A7  3033 	Sstm8s_clk$CLK_GetITStatus$634 ==.
                                   3034 ; genGoto
      009389 CC 93 A1         [ 2] 3035 	jp	00109$
                                   3036 ; genLabel
      00938C                       3037 00108$:
                           0008AA  3038 	Sstm8s_clk$CLK_GetITStatus$635 ==.
                           0008AA  3039 	Sstm8s_clk$CLK_GetITStatus$636 ==.
                                   3040 ;	../SPL/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   3041 ; genPointerGet
      00938C C6 50 C8         [ 1] 3042 	ld	a, 0x50c8
                                   3043 ; genAnd
      00938F 14 03            [ 1] 3044 	and	a, (0x03, sp)
                                   3045 ; genCmpEQorNE
      009391 A1 0C            [ 1] 3046 	cp	a, #0x0c
      009393 26 03            [ 1] 3047 	jrne	00154$
      009395 CC 93 9B         [ 2] 3048 	jp	00155$
      009398                       3049 00154$:
      009398 CC 93 A0         [ 2] 3050 	jp	00105$
      00939B                       3051 00155$:
                           0008B9  3052 	Sstm8s_clk$CLK_GetITStatus$637 ==.
                                   3053 ; skipping generated iCode
                           0008B9  3054 	Sstm8s_clk$CLK_GetITStatus$638 ==.
                           0008B9  3055 	Sstm8s_clk$CLK_GetITStatus$639 ==.
                                   3056 ;	../SPL/src/stm8s_clk.c: 711: bitstatus = SET;
                                   3057 ; genAssign
      00939B A6 01            [ 1] 3058 	ld	a, #0x01
                           0008BB  3059 	Sstm8s_clk$CLK_GetITStatus$640 ==.
                                   3060 ; genGoto
      00939D CC 93 A1         [ 2] 3061 	jp	00109$
                                   3062 ; genLabel
      0093A0                       3063 00105$:
                           0008BE  3064 	Sstm8s_clk$CLK_GetITStatus$641 ==.
                           0008BE  3065 	Sstm8s_clk$CLK_GetITStatus$642 ==.
                                   3066 ;	../SPL/src/stm8s_clk.c: 715: bitstatus = RESET;
                                   3067 ; genAssign
      0093A0 4F               [ 1] 3068 	clr	a
                           0008BF  3069 	Sstm8s_clk$CLK_GetITStatus$643 ==.
                                   3070 ; genLabel
      0093A1                       3071 00109$:
                           0008BF  3072 	Sstm8s_clk$CLK_GetITStatus$644 ==.
                                   3073 ;	../SPL/src/stm8s_clk.c: 720: return bitstatus;
                                   3074 ; genReturn
                                   3075 ; genLabel
      0093A1                       3076 00110$:
                           0008BF  3077 	Sstm8s_clk$CLK_GetITStatus$645 ==.
                                   3078 ;	../SPL/src/stm8s_clk.c: 721: }
                                   3079 ; genEndFunction
                           0008BF  3080 	Sstm8s_clk$CLK_GetITStatus$646 ==.
                           0008BF  3081 	XG$CLK_GetITStatus$0$0 ==.
      0093A1 81               [ 4] 3082 	ret
                           0008C0  3083 	Sstm8s_clk$CLK_GetITStatus$647 ==.
                           0008C0  3084 	Sstm8s_clk$CLK_ClearITPendingBit$648 ==.
                                   3085 ;	../SPL/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   3086 ; genLabel
                                   3087 ;	-----------------------------------------
                                   3088 ;	 function CLK_ClearITPendingBit
                                   3089 ;	-----------------------------------------
                                   3090 ;	Register assignment might be sub-optimal.
                                   3091 ;	Stack space usage: 0 bytes.
      0093A2                       3092 _CLK_ClearITPendingBit:
                           0008C0  3093 	Sstm8s_clk$CLK_ClearITPendingBit$649 ==.
                           0008C0  3094 	Sstm8s_clk$CLK_ClearITPendingBit$650 ==.
                                   3095 ;	../SPL/src/stm8s_clk.c: 732: assert_param(IS_CLK_IT_OK(CLK_IT));
                                   3096 ; genCmpEQorNE
      0093A2 7B 03            [ 1] 3097 	ld	a, (0x03, sp)
      0093A4 A1 0C            [ 1] 3098 	cp	a, #0x0c
      0093A6 26 05            [ 1] 3099 	jrne	00127$
      0093A8 A6 01            [ 1] 3100 	ld	a, #0x01
      0093AA CC 93 AE         [ 2] 3101 	jp	00128$
      0093AD                       3102 00127$:
      0093AD 4F               [ 1] 3103 	clr	a
      0093AE                       3104 00128$:
                           0008CC  3105 	Sstm8s_clk$CLK_ClearITPendingBit$651 ==.
                                   3106 ; genIfx
      0093AE 4D               [ 1] 3107 	tnz	a
      0093AF 27 03            [ 1] 3108 	jreq	00129$
      0093B1 CC 93 D0         [ 2] 3109 	jp	00107$
      0093B4                       3110 00129$:
                                   3111 ; genCmpEQorNE
      0093B4 88               [ 1] 3112 	push	a
                           0008D3  3113 	Sstm8s_clk$CLK_ClearITPendingBit$652 ==.
      0093B5 7B 04            [ 1] 3114 	ld	a, (0x04, sp)
      0093B7 A1 1C            [ 1] 3115 	cp	a, #0x1c
      0093B9 84               [ 1] 3116 	pop	a
                           0008D8  3117 	Sstm8s_clk$CLK_ClearITPendingBit$653 ==.
      0093BA 26 03            [ 1] 3118 	jrne	00131$
      0093BC CC 93 D0         [ 2] 3119 	jp	00107$
      0093BF                       3120 00131$:
                           0008DD  3121 	Sstm8s_clk$CLK_ClearITPendingBit$654 ==.
                                   3122 ; skipping generated iCode
                                   3123 ; skipping iCode since result will be rematerialized
                                   3124 ; skipping iCode since result will be rematerialized
                                   3125 ; genIPush
      0093BF 88               [ 1] 3126 	push	a
                           0008DE  3127 	Sstm8s_clk$CLK_ClearITPendingBit$655 ==.
      0093C0 4B DC            [ 1] 3128 	push	#0xdc
                           0008E0  3129 	Sstm8s_clk$CLK_ClearITPendingBit$656 ==.
      0093C2 4B 02            [ 1] 3130 	push	#0x02
                           0008E2  3131 	Sstm8s_clk$CLK_ClearITPendingBit$657 ==.
      0093C4 5F               [ 1] 3132 	clrw	x
      0093C5 89               [ 2] 3133 	pushw	x
                           0008E4  3134 	Sstm8s_clk$CLK_ClearITPendingBit$658 ==.
                                   3135 ; genIPush
      0093C6 4B BD            [ 1] 3136 	push	#<(___str_0+0)
                           0008E6  3137 	Sstm8s_clk$CLK_ClearITPendingBit$659 ==.
      0093C8 4B 80            [ 1] 3138 	push	#((___str_0+0) >> 8)
                           0008E8  3139 	Sstm8s_clk$CLK_ClearITPendingBit$660 ==.
                                   3140 ; genCall
      0093CA CD 82 99         [ 4] 3141 	call	_assert_failed
      0093CD 5B 06            [ 2] 3142 	addw	sp, #6
                           0008ED  3143 	Sstm8s_clk$CLK_ClearITPendingBit$661 ==.
      0093CF 84               [ 1] 3144 	pop	a
                           0008EE  3145 	Sstm8s_clk$CLK_ClearITPendingBit$662 ==.
                                   3146 ; genLabel
      0093D0                       3147 00107$:
                           0008EE  3148 	Sstm8s_clk$CLK_ClearITPendingBit$663 ==.
                                   3149 ;	../SPL/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
                                   3150 ; genAssign
                                   3151 ; genIfx
      0093D0 4D               [ 1] 3152 	tnz	a
      0093D1 26 03            [ 1] 3153 	jrne	00133$
      0093D3 CC 93 E1         [ 2] 3154 	jp	00102$
      0093D6                       3155 00133$:
                           0008F4  3156 	Sstm8s_clk$CLK_ClearITPendingBit$664 ==.
                           0008F4  3157 	Sstm8s_clk$CLK_ClearITPendingBit$665 ==.
                                   3158 ;	../SPL/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
                                   3159 ; genPointerGet
      0093D6 C6 50 C8         [ 1] 3160 	ld	a, 0x50c8
                                   3161 ; genAnd
      0093D9 A4 F7            [ 1] 3162 	and	a, #0xf7
                                   3163 ; genPointerSet
      0093DB C7 50 C8         [ 1] 3164 	ld	0x50c8, a
                           0008FC  3165 	Sstm8s_clk$CLK_ClearITPendingBit$666 ==.
                                   3166 ; genGoto
      0093DE CC 93 E9         [ 2] 3167 	jp	00104$
                                   3168 ; genLabel
      0093E1                       3169 00102$:
                           0008FF  3170 	Sstm8s_clk$CLK_ClearITPendingBit$667 ==.
                           0008FF  3171 	Sstm8s_clk$CLK_ClearITPendingBit$668 ==.
                                   3172 ;	../SPL/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
                                   3173 ; genPointerGet
      0093E1 C6 50 C5         [ 1] 3174 	ld	a, 0x50c5
                                   3175 ; genAnd
      0093E4 A4 F7            [ 1] 3176 	and	a, #0xf7
                                   3177 ; genPointerSet
      0093E6 C7 50 C5         [ 1] 3178 	ld	0x50c5, a
                           000907  3179 	Sstm8s_clk$CLK_ClearITPendingBit$669 ==.
                                   3180 ; genLabel
      0093E9                       3181 00104$:
                           000907  3182 	Sstm8s_clk$CLK_ClearITPendingBit$670 ==.
                                   3183 ;	../SPL/src/stm8s_clk.c: 745: }
                                   3184 ; genEndFunction
                           000907  3185 	Sstm8s_clk$CLK_ClearITPendingBit$671 ==.
                           000907  3186 	XG$CLK_ClearITPendingBit$0$0 ==.
      0093E9 81               [ 4] 3187 	ret
                           000908  3188 	Sstm8s_clk$CLK_ClearITPendingBit$672 ==.
                                   3189 	.area CODE
                                   3190 	.area CONST
                           000000  3191 G$HSIDivFactor$0_0$0 == .
      0080B1                       3192 _HSIDivFactor:
      0080B1 01                    3193 	.db #0x01	; 1
      0080B2 02                    3194 	.db #0x02	; 2
      0080B3 04                    3195 	.db #0x04	; 4
      0080B4 08                    3196 	.db #0x08	; 8
                           000004  3197 G$CLKPrescTable$0_0$0 == .
      0080B5                       3198 _CLKPrescTable:
      0080B5 01                    3199 	.db #0x01	; 1
      0080B6 02                    3200 	.db #0x02	; 2
      0080B7 04                    3201 	.db #0x04	; 4
      0080B8 08                    3202 	.db #0x08	; 8
      0080B9 0A                    3203 	.db #0x0a	; 10
      0080BA 10                    3204 	.db #0x10	; 16
      0080BB 14                    3205 	.db #0x14	; 20
      0080BC 28                    3206 	.db #0x28	; 40
                           00000C  3207 Fstm8s_clk$__str_0$0_0$0 == .
                                   3208 	.area CONST
      0080BD                       3209 ___str_0:
      0080BD 2E 2E 2F 53 50 4C 2F  3210 	.ascii "../SPL/src/stm8s_clk.c"
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      0080D3 00                    3211 	.db 0x00
                                   3212 	.area CODE
                                   3213 	.area INITIALIZER
                                   3214 	.area CABS (ABS)
                                   3215 
                                   3216 	.area .debug_line (NOLOAD)
      000FF2 00 00 06 A8           3217 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000FF6                       3218 Ldebug_line_start:
      000FF6 00 02                 3219 	.dw	2
      000FF8 00 00 00 77           3220 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000FFC 01                    3221 	.db	1
      000FFD 01                    3222 	.db	1
      000FFE FB                    3223 	.db	-5
      000FFF 0F                    3224 	.db	15
      001000 0A                    3225 	.db	10
      001001 00                    3226 	.db	0
      001002 01                    3227 	.db	1
      001003 01                    3228 	.db	1
      001004 01                    3229 	.db	1
      001005 01                    3230 	.db	1
      001006 00                    3231 	.db	0
      001007 00                    3232 	.db	0
      001008 00                    3233 	.db	0
      001009 01                    3234 	.db	1
      00100A 43 3A 5C 50 72 6F 67  3235 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001032 00                    3236 	.db	0
      001033 43 3A 5C 50 72 6F 67  3237 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001056 00                    3238 	.db	0
      001057 00                    3239 	.db	0
      001058 2E 2E 2F 53 50 4C 2F  3240 	.ascii "../SPL/src/stm8s_clk.c"
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      00106E 00                    3241 	.db	0
      00106F 00                    3242 	.uleb128	0
      001070 00                    3243 	.uleb128	0
      001071 00                    3244 	.uleb128	0
      001072 00                    3245 	.db	0
      001073                       3246 Ldebug_line_stmt:
      001073 00                    3247 	.db	0
      001074 05                    3248 	.uleb128	5
      001075 02                    3249 	.db	2
      001076 00 00 8A E2           3250 	.dw	0,(Sstm8s_clk$CLK_DeInit$0)
      00107A 03                    3251 	.db	3
      00107B C7 00                 3252 	.sleb128	71
      00107D 01                    3253 	.db	1
      00107E 09                    3254 	.db	9
      00107F 00 00                 3255 	.dw	Sstm8s_clk$CLK_DeInit$2-Sstm8s_clk$CLK_DeInit$0
      001081 03                    3256 	.db	3
      001082 02                    3257 	.sleb128	2
      001083 01                    3258 	.db	1
      001084 09                    3259 	.db	9
      001085 00 04                 3260 	.dw	Sstm8s_clk$CLK_DeInit$3-Sstm8s_clk$CLK_DeInit$2
      001087 03                    3261 	.db	3
      001088 01                    3262 	.sleb128	1
      001089 01                    3263 	.db	1
      00108A 09                    3264 	.db	9
      00108B 00 04                 3265 	.dw	Sstm8s_clk$CLK_DeInit$4-Sstm8s_clk$CLK_DeInit$3
      00108D 03                    3266 	.db	3
      00108E 01                    3267 	.sleb128	1
      00108F 01                    3268 	.db	1
      001090 09                    3269 	.db	9
      001091 00 04                 3270 	.dw	Sstm8s_clk$CLK_DeInit$5-Sstm8s_clk$CLK_DeInit$4
      001093 03                    3271 	.db	3
      001094 01                    3272 	.sleb128	1
      001095 01                    3273 	.db	1
      001096 09                    3274 	.db	9
      001097 00 04                 3275 	.dw	Sstm8s_clk$CLK_DeInit$6-Sstm8s_clk$CLK_DeInit$5
      001099 03                    3276 	.db	3
      00109A 01                    3277 	.sleb128	1
      00109B 01                    3278 	.db	1
      00109C 09                    3279 	.db	9
      00109D 00 04                 3280 	.dw	Sstm8s_clk$CLK_DeInit$7-Sstm8s_clk$CLK_DeInit$6
      00109F 03                    3281 	.db	3
      0010A0 01                    3282 	.sleb128	1
      0010A1 01                    3283 	.db	1
      0010A2 09                    3284 	.db	9
      0010A3 00 04                 3285 	.dw	Sstm8s_clk$CLK_DeInit$8-Sstm8s_clk$CLK_DeInit$7
      0010A5 03                    3286 	.db	3
      0010A6 01                    3287 	.sleb128	1
      0010A7 01                    3288 	.db	1
      0010A8 09                    3289 	.db	9
      0010A9 00 04                 3290 	.dw	Sstm8s_clk$CLK_DeInit$9-Sstm8s_clk$CLK_DeInit$8
      0010AB 03                    3291 	.db	3
      0010AC 01                    3292 	.sleb128	1
      0010AD 01                    3293 	.db	1
      0010AE 09                    3294 	.db	9
      0010AF 00 04                 3295 	.dw	Sstm8s_clk$CLK_DeInit$10-Sstm8s_clk$CLK_DeInit$9
      0010B1 03                    3296 	.db	3
      0010B2 01                    3297 	.sleb128	1
      0010B3 01                    3298 	.db	1
      0010B4 09                    3299 	.db	9
      0010B5 00 04                 3300 	.dw	Sstm8s_clk$CLK_DeInit$11-Sstm8s_clk$CLK_DeInit$10
      0010B7 03                    3301 	.db	3
      0010B8 01                    3302 	.sleb128	1
      0010B9 01                    3303 	.db	1
      0010BA 09                    3304 	.db	9
      0010BB 00 09                 3305 	.dw	Sstm8s_clk$CLK_DeInit$12-Sstm8s_clk$CLK_DeInit$11
      0010BD 03                    3306 	.db	3
      0010BE 02                    3307 	.sleb128	2
      0010BF 01                    3308 	.db	1
      0010C0 09                    3309 	.db	9
      0010C1 00 04                 3310 	.dw	Sstm8s_clk$CLK_DeInit$13-Sstm8s_clk$CLK_DeInit$12
      0010C3 03                    3311 	.db	3
      0010C4 01                    3312 	.sleb128	1
      0010C5 01                    3313 	.db	1
      0010C6 09                    3314 	.db	9
      0010C7 00 04                 3315 	.dw	Sstm8s_clk$CLK_DeInit$14-Sstm8s_clk$CLK_DeInit$13
      0010C9 03                    3316 	.db	3
      0010CA 01                    3317 	.sleb128	1
      0010CB 01                    3318 	.db	1
      0010CC 09                    3319 	.db	9
      0010CD 00 04                 3320 	.dw	Sstm8s_clk$CLK_DeInit$15-Sstm8s_clk$CLK_DeInit$14
      0010CF 03                    3321 	.db	3
      0010D0 01                    3322 	.sleb128	1
      0010D1 01                    3323 	.db	1
      0010D2 09                    3324 	.db	9
      0010D3 00 01                 3325 	.dw	1+Sstm8s_clk$CLK_DeInit$16-Sstm8s_clk$CLK_DeInit$15
      0010D5 00                    3326 	.db	0
      0010D6 01                    3327 	.uleb128	1
      0010D7 01                    3328 	.db	1
      0010D8 00                    3329 	.db	0
      0010D9 05                    3330 	.uleb128	5
      0010DA 02                    3331 	.db	2
      0010DB 00 00 8B 1C           3332 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$18)
      0010DF 03                    3333 	.db	3
      0010E0 E2 00                 3334 	.sleb128	98
      0010E2 01                    3335 	.db	1
      0010E3 09                    3336 	.db	9
      0010E4 00 00                 3337 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20-Sstm8s_clk$CLK_FastHaltWakeUpCmd$18
      0010E6 03                    3338 	.db	3
      0010E7 03                    3339 	.sleb128	3
      0010E8 01                    3340 	.db	1
      0010E9 09                    3341 	.db	9
      0010EA 00 1E                 3342 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$28-Sstm8s_clk$CLK_FastHaltWakeUpCmd$20
      0010EC 03                    3343 	.db	3
      0010ED 05                    3344 	.sleb128	5
      0010EE 01                    3345 	.db	1
      0010EF 09                    3346 	.db	9
      0010F0 00 03                 3347 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$29-Sstm8s_clk$CLK_FastHaltWakeUpCmd$28
      0010F2 03                    3348 	.db	3
      0010F3 7D                    3349 	.sleb128	-3
      0010F4 01                    3350 	.db	1
      0010F5 09                    3351 	.db	9
      0010F6 00 07                 3352 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$31-Sstm8s_clk$CLK_FastHaltWakeUpCmd$29
      0010F8 03                    3353 	.db	3
      0010F9 03                    3354 	.sleb128	3
      0010FA 01                    3355 	.db	1
      0010FB 09                    3356 	.db	9
      0010FC 00 08                 3357 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$34-Sstm8s_clk$CLK_FastHaltWakeUpCmd$31
      0010FE 03                    3358 	.db	3
      0010FF 05                    3359 	.sleb128	5
      001100 01                    3360 	.db	1
      001101 09                    3361 	.db	9
      001102 00 05                 3362 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$36-Sstm8s_clk$CLK_FastHaltWakeUpCmd$34
      001104 03                    3363 	.db	3
      001105 02                    3364 	.sleb128	2
      001106 01                    3365 	.db	1
      001107 09                    3366 	.db	9
      001108 00 01                 3367 	.dw	1+Sstm8s_clk$CLK_FastHaltWakeUpCmd$37-Sstm8s_clk$CLK_FastHaltWakeUpCmd$36
      00110A 00                    3368 	.db	0
      00110B 01                    3369 	.uleb128	1
      00110C 01                    3370 	.db	1
      00110D 00                    3371 	.db	0
      00110E 05                    3372 	.uleb128	5
      00110F 02                    3373 	.db	2
      001110 00 00 8B 52           3374 	.dw	0,(Sstm8s_clk$CLK_HSECmd$39)
      001114 03                    3375 	.db	3
      001115 F8 00                 3376 	.sleb128	120
      001117 01                    3377 	.db	1
      001118 09                    3378 	.db	9
      001119 00 00                 3379 	.dw	Sstm8s_clk$CLK_HSECmd$41-Sstm8s_clk$CLK_HSECmd$39
      00111B 03                    3380 	.db	3
      00111C 03                    3381 	.sleb128	3
      00111D 01                    3382 	.db	1
      00111E 09                    3383 	.db	9
      00111F 00 1E                 3384 	.dw	Sstm8s_clk$CLK_HSECmd$49-Sstm8s_clk$CLK_HSECmd$41
      001121 03                    3385 	.db	3
      001122 05                    3386 	.sleb128	5
      001123 01                    3387 	.db	1
      001124 09                    3388 	.db	9
      001125 00 03                 3389 	.dw	Sstm8s_clk$CLK_HSECmd$50-Sstm8s_clk$CLK_HSECmd$49
      001127 03                    3390 	.db	3
      001128 7D                    3391 	.sleb128	-3
      001129 01                    3392 	.db	1
      00112A 09                    3393 	.db	9
      00112B 00 07                 3394 	.dw	Sstm8s_clk$CLK_HSECmd$52-Sstm8s_clk$CLK_HSECmd$50
      00112D 03                    3395 	.db	3
      00112E 03                    3396 	.sleb128	3
      00112F 01                    3397 	.db	1
      001130 09                    3398 	.db	9
      001131 00 08                 3399 	.dw	Sstm8s_clk$CLK_HSECmd$55-Sstm8s_clk$CLK_HSECmd$52
      001133 03                    3400 	.db	3
      001134 05                    3401 	.sleb128	5
      001135 01                    3402 	.db	1
      001136 09                    3403 	.db	9
      001137 00 05                 3404 	.dw	Sstm8s_clk$CLK_HSECmd$57-Sstm8s_clk$CLK_HSECmd$55
      001139 03                    3405 	.db	3
      00113A 02                    3406 	.sleb128	2
      00113B 01                    3407 	.db	1
      00113C 09                    3408 	.db	9
      00113D 00 01                 3409 	.dw	1+Sstm8s_clk$CLK_HSECmd$58-Sstm8s_clk$CLK_HSECmd$57
      00113F 00                    3410 	.db	0
      001140 01                    3411 	.uleb128	1
      001141 01                    3412 	.db	1
      001142 00                    3413 	.db	0
      001143 05                    3414 	.uleb128	5
      001144 02                    3415 	.db	2
      001145 00 00 8B 88           3416 	.dw	0,(Sstm8s_clk$CLK_HSICmd$60)
      001149 03                    3417 	.db	3
      00114A 8E 01                 3418 	.sleb128	142
      00114C 01                    3419 	.db	1
      00114D 09                    3420 	.db	9
      00114E 00 00                 3421 	.dw	Sstm8s_clk$CLK_HSICmd$62-Sstm8s_clk$CLK_HSICmd$60
      001150 03                    3422 	.db	3
      001151 03                    3423 	.sleb128	3
      001152 01                    3424 	.db	1
      001153 09                    3425 	.db	9
      001154 00 1E                 3426 	.dw	Sstm8s_clk$CLK_HSICmd$70-Sstm8s_clk$CLK_HSICmd$62
      001156 03                    3427 	.db	3
      001157 05                    3428 	.sleb128	5
      001158 01                    3429 	.db	1
      001159 09                    3430 	.db	9
      00115A 00 03                 3431 	.dw	Sstm8s_clk$CLK_HSICmd$71-Sstm8s_clk$CLK_HSICmd$70
      00115C 03                    3432 	.db	3
      00115D 7D                    3433 	.sleb128	-3
      00115E 01                    3434 	.db	1
      00115F 09                    3435 	.db	9
      001160 00 07                 3436 	.dw	Sstm8s_clk$CLK_HSICmd$73-Sstm8s_clk$CLK_HSICmd$71
      001162 03                    3437 	.db	3
      001163 03                    3438 	.sleb128	3
      001164 01                    3439 	.db	1
      001165 09                    3440 	.db	9
      001166 00 08                 3441 	.dw	Sstm8s_clk$CLK_HSICmd$76-Sstm8s_clk$CLK_HSICmd$73
      001168 03                    3442 	.db	3
      001169 05                    3443 	.sleb128	5
      00116A 01                    3444 	.db	1
      00116B 09                    3445 	.db	9
      00116C 00 05                 3446 	.dw	Sstm8s_clk$CLK_HSICmd$78-Sstm8s_clk$CLK_HSICmd$76
      00116E 03                    3447 	.db	3
      00116F 02                    3448 	.sleb128	2
      001170 01                    3449 	.db	1
      001171 09                    3450 	.db	9
      001172 00 01                 3451 	.dw	1+Sstm8s_clk$CLK_HSICmd$79-Sstm8s_clk$CLK_HSICmd$78
      001174 00                    3452 	.db	0
      001175 01                    3453 	.uleb128	1
      001176 01                    3454 	.db	1
      001177 00                    3455 	.db	0
      001178 05                    3456 	.uleb128	5
      001179 02                    3457 	.db	2
      00117A 00 00 8B BE           3458 	.dw	0,(Sstm8s_clk$CLK_LSICmd$81)
      00117E 03                    3459 	.db	3
      00117F A5 01                 3460 	.sleb128	165
      001181 01                    3461 	.db	1
      001182 09                    3462 	.db	9
      001183 00 00                 3463 	.dw	Sstm8s_clk$CLK_LSICmd$83-Sstm8s_clk$CLK_LSICmd$81
      001185 03                    3464 	.db	3
      001186 03                    3465 	.sleb128	3
      001187 01                    3466 	.db	1
      001188 09                    3467 	.db	9
      001189 00 1E                 3468 	.dw	Sstm8s_clk$CLK_LSICmd$91-Sstm8s_clk$CLK_LSICmd$83
      00118B 03                    3469 	.db	3
      00118C 05                    3470 	.sleb128	5
      00118D 01                    3471 	.db	1
      00118E 09                    3472 	.db	9
      00118F 00 03                 3473 	.dw	Sstm8s_clk$CLK_LSICmd$92-Sstm8s_clk$CLK_LSICmd$91
      001191 03                    3474 	.db	3
      001192 7D                    3475 	.sleb128	-3
      001193 01                    3476 	.db	1
      001194 09                    3477 	.db	9
      001195 00 07                 3478 	.dw	Sstm8s_clk$CLK_LSICmd$94-Sstm8s_clk$CLK_LSICmd$92
      001197 03                    3479 	.db	3
      001198 03                    3480 	.sleb128	3
      001199 01                    3481 	.db	1
      00119A 09                    3482 	.db	9
      00119B 00 08                 3483 	.dw	Sstm8s_clk$CLK_LSICmd$97-Sstm8s_clk$CLK_LSICmd$94
      00119D 03                    3484 	.db	3
      00119E 05                    3485 	.sleb128	5
      00119F 01                    3486 	.db	1
      0011A0 09                    3487 	.db	9
      0011A1 00 05                 3488 	.dw	Sstm8s_clk$CLK_LSICmd$99-Sstm8s_clk$CLK_LSICmd$97
      0011A3 03                    3489 	.db	3
      0011A4 02                    3490 	.sleb128	2
      0011A5 01                    3491 	.db	1
      0011A6 09                    3492 	.db	9
      0011A7 00 01                 3493 	.dw	1+Sstm8s_clk$CLK_LSICmd$100-Sstm8s_clk$CLK_LSICmd$99
      0011A9 00                    3494 	.db	0
      0011AA 01                    3495 	.uleb128	1
      0011AB 01                    3496 	.db	1
      0011AC 00                    3497 	.db	0
      0011AD 05                    3498 	.uleb128	5
      0011AE 02                    3499 	.db	2
      0011AF 00 00 8B F4           3500 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$102)
      0011B3 03                    3501 	.db	3
      0011B4 BC 01                 3502 	.sleb128	188
      0011B6 01                    3503 	.db	1
      0011B7 09                    3504 	.db	9
      0011B8 00 00                 3505 	.dw	Sstm8s_clk$CLK_CCOCmd$104-Sstm8s_clk$CLK_CCOCmd$102
      0011BA 03                    3506 	.db	3
      0011BB 03                    3507 	.sleb128	3
      0011BC 01                    3508 	.db	1
      0011BD 09                    3509 	.db	9
      0011BE 00 1E                 3510 	.dw	Sstm8s_clk$CLK_CCOCmd$112-Sstm8s_clk$CLK_CCOCmd$104
      0011C0 03                    3511 	.db	3
      0011C1 05                    3512 	.sleb128	5
      0011C2 01                    3513 	.db	1
      0011C3 09                    3514 	.db	9
      0011C4 00 03                 3515 	.dw	Sstm8s_clk$CLK_CCOCmd$113-Sstm8s_clk$CLK_CCOCmd$112
      0011C6 03                    3516 	.db	3
      0011C7 7D                    3517 	.sleb128	-3
      0011C8 01                    3518 	.db	1
      0011C9 09                    3519 	.db	9
      0011CA 00 07                 3520 	.dw	Sstm8s_clk$CLK_CCOCmd$115-Sstm8s_clk$CLK_CCOCmd$113
      0011CC 03                    3521 	.db	3
      0011CD 03                    3522 	.sleb128	3
      0011CE 01                    3523 	.db	1
      0011CF 09                    3524 	.db	9
      0011D0 00 08                 3525 	.dw	Sstm8s_clk$CLK_CCOCmd$118-Sstm8s_clk$CLK_CCOCmd$115
      0011D2 03                    3526 	.db	3
      0011D3 05                    3527 	.sleb128	5
      0011D4 01                    3528 	.db	1
      0011D5 09                    3529 	.db	9
      0011D6 00 05                 3530 	.dw	Sstm8s_clk$CLK_CCOCmd$120-Sstm8s_clk$CLK_CCOCmd$118
      0011D8 03                    3531 	.db	3
      0011D9 02                    3532 	.sleb128	2
      0011DA 01                    3533 	.db	1
      0011DB 09                    3534 	.db	9
      0011DC 00 01                 3535 	.dw	1+Sstm8s_clk$CLK_CCOCmd$121-Sstm8s_clk$CLK_CCOCmd$120
      0011DE 00                    3536 	.db	0
      0011DF 01                    3537 	.uleb128	1
      0011E0 01                    3538 	.db	1
      0011E1 00                    3539 	.db	0
      0011E2 05                    3540 	.uleb128	5
      0011E3 02                    3541 	.db	2
      0011E4 00 00 8C 2A           3542 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$123)
      0011E8 03                    3543 	.db	3
      0011E9 D4 01                 3544 	.sleb128	212
      0011EB 01                    3545 	.db	1
      0011EC 09                    3546 	.db	9
      0011ED 00 00                 3547 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$125-Sstm8s_clk$CLK_ClockSwitchCmd$123
      0011EF 03                    3548 	.db	3
      0011F0 03                    3549 	.sleb128	3
      0011F1 01                    3550 	.db	1
      0011F2 09                    3551 	.db	9
      0011F3 00 1E                 3552 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$133-Sstm8s_clk$CLK_ClockSwitchCmd$125
      0011F5 03                    3553 	.db	3
      0011F6 05                    3554 	.sleb128	5
      0011F7 01                    3555 	.db	1
      0011F8 09                    3556 	.db	9
      0011F9 00 03                 3557 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$134-Sstm8s_clk$CLK_ClockSwitchCmd$133
      0011FB 03                    3558 	.db	3
      0011FC 7D                    3559 	.sleb128	-3
      0011FD 01                    3560 	.db	1
      0011FE 09                    3561 	.db	9
      0011FF 00 07                 3562 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$136-Sstm8s_clk$CLK_ClockSwitchCmd$134
      001201 03                    3563 	.db	3
      001202 03                    3564 	.sleb128	3
      001203 01                    3565 	.db	1
      001204 09                    3566 	.db	9
      001205 00 08                 3567 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$139-Sstm8s_clk$CLK_ClockSwitchCmd$136
      001207 03                    3568 	.db	3
      001208 05                    3569 	.sleb128	5
      001209 01                    3570 	.db	1
      00120A 09                    3571 	.db	9
      00120B 00 05                 3572 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$141-Sstm8s_clk$CLK_ClockSwitchCmd$139
      00120D 03                    3573 	.db	3
      00120E 02                    3574 	.sleb128	2
      00120F 01                    3575 	.db	1
      001210 09                    3576 	.db	9
      001211 00 01                 3577 	.dw	1+Sstm8s_clk$CLK_ClockSwitchCmd$142-Sstm8s_clk$CLK_ClockSwitchCmd$141
      001213 00                    3578 	.db	0
      001214 01                    3579 	.uleb128	1
      001215 01                    3580 	.db	1
      001216 00                    3581 	.db	0
      001217 05                    3582 	.uleb128	5
      001218 02                    3583 	.db	2
      001219 00 00 8C 60           3584 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$144)
      00121D 03                    3585 	.db	3
      00121E ED 01                 3586 	.sleb128	237
      001220 01                    3587 	.db	1
      001221 09                    3588 	.db	9
      001222 00 00                 3589 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$146-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$144
      001224 03                    3590 	.db	3
      001225 03                    3591 	.sleb128	3
      001226 01                    3592 	.db	1
      001227 09                    3593 	.db	9
      001228 00 1E                 3594 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$154-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$146
      00122A 03                    3595 	.db	3
      00122B 05                    3596 	.sleb128	5
      00122C 01                    3597 	.db	1
      00122D 09                    3598 	.db	9
      00122E 00 03                 3599 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$155-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$154
      001230 03                    3600 	.db	3
      001231 7D                    3601 	.sleb128	-3
      001232 01                    3602 	.db	1
      001233 09                    3603 	.db	9
      001234 00 07                 3604 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$157-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$155
      001236 03                    3605 	.db	3
      001237 03                    3606 	.sleb128	3
      001238 01                    3607 	.db	1
      001239 09                    3608 	.db	9
      00123A 00 08                 3609 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$160-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$157
      00123C 03                    3610 	.db	3
      00123D 05                    3611 	.sleb128	5
      00123E 01                    3612 	.db	1
      00123F 09                    3613 	.db	9
      001240 00 05                 3614 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$162-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$160
      001242 03                    3615 	.db	3
      001243 02                    3616 	.sleb128	2
      001244 01                    3617 	.db	1
      001245 09                    3618 	.db	9
      001246 00 01                 3619 	.dw	1+Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$163-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$162
      001248 00                    3620 	.db	0
      001249 01                    3621 	.uleb128	1
      00124A 01                    3622 	.db	1
      00124B 00                    3623 	.db	0
      00124C 05                    3624 	.uleb128	5
      00124D 02                    3625 	.db	2
      00124E 00 00 8C 96           3626 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$165)
      001252 03                    3627 	.db	3
      001253 86 02                 3628 	.sleb128	262
      001255 01                    3629 	.db	1
      001256 09                    3630 	.db	9
      001257 00 01                 3631 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$168-Sstm8s_clk$CLK_PeripheralClockConfig$165
      001259 03                    3632 	.db	3
      00125A 03                    3633 	.sleb128	3
      00125B 01                    3634 	.db	1
      00125C 09                    3635 	.db	9
      00125D 00 1E                 3636 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$176-Sstm8s_clk$CLK_PeripheralClockConfig$168
      00125F 03                    3637 	.db	3
      001260 01                    3638 	.sleb128	1
      001261 01                    3639 	.db	1
      001262 09                    3640 	.db	9
      001263 00 A0                 3641 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$193-Sstm8s_clk$CLK_PeripheralClockConfig$176
      001265 03                    3642 	.db	3
      001266 07                    3643 	.sleb128	7
      001267 01                    3644 	.db	1
      001268 09                    3645 	.db	9
      001269 00 12                 3646 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$196-Sstm8s_clk$CLK_PeripheralClockConfig$193
      00126B 03                    3647 	.db	3
      00126C 05                    3648 	.sleb128	5
      00126D 01                    3649 	.db	1
      00126E 09                    3650 	.db	9
      00126F 00 05                 3651 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$197-Sstm8s_clk$CLK_PeripheralClockConfig$196
      001271 03                    3652 	.db	3
      001272 76                    3653 	.sleb128	-10
      001273 01                    3654 	.db	1
      001274 09                    3655 	.db	9
      001275 00 09                 3656 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$198-Sstm8s_clk$CLK_PeripheralClockConfig$197
      001277 03                    3657 	.db	3
      001278 05                    3658 	.sleb128	5
      001279 01                    3659 	.db	1
      00127A 09                    3660 	.db	9
      00127B 00 03                 3661 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$200-Sstm8s_clk$CLK_PeripheralClockConfig$198
      00127D 03                    3662 	.db	3
      00127E 7D                    3663 	.sleb128	-3
      00127F 01                    3664 	.db	1
      001280 09                    3665 	.db	9
      001281 00 07                 3666 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$202-Sstm8s_clk$CLK_PeripheralClockConfig$200
      001283 03                    3667 	.db	3
      001284 03                    3668 	.sleb128	3
      001285 01                    3669 	.db	1
      001286 09                    3670 	.db	9
      001287 00 08                 3671 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$205-Sstm8s_clk$CLK_PeripheralClockConfig$202
      001289 03                    3672 	.db	3
      00128A 05                    3673 	.sleb128	5
      00128B 01                    3674 	.db	1
      00128C 09                    3675 	.db	9
      00128D 00 08                 3676 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$207-Sstm8s_clk$CLK_PeripheralClockConfig$205
      00128F 03                    3677 	.db	3
      001290 08                    3678 	.sleb128	8
      001291 01                    3679 	.db	1
      001292 09                    3680 	.db	9
      001293 00 03                 3681 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$209-Sstm8s_clk$CLK_PeripheralClockConfig$207
      001295 03                    3682 	.db	3
      001296 7D                    3683 	.sleb128	-3
      001297 01                    3684 	.db	1
      001298 09                    3685 	.db	9
      001299 00 07                 3686 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$211-Sstm8s_clk$CLK_PeripheralClockConfig$209
      00129B 03                    3687 	.db	3
      00129C 03                    3688 	.sleb128	3
      00129D 01                    3689 	.db	1
      00129E 09                    3690 	.db	9
      00129F 00 08                 3691 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$214-Sstm8s_clk$CLK_PeripheralClockConfig$211
      0012A1 03                    3692 	.db	3
      0012A2 05                    3693 	.sleb128	5
      0012A3 01                    3694 	.db	1
      0012A4 09                    3695 	.db	9
      0012A5 00 05                 3696 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$216-Sstm8s_clk$CLK_PeripheralClockConfig$214
      0012A7 03                    3697 	.db	3
      0012A8 03                    3698 	.sleb128	3
      0012A9 01                    3699 	.db	1
      0012AA 09                    3700 	.db	9
      0012AB 00 02                 3701 	.dw	1+Sstm8s_clk$CLK_PeripheralClockConfig$218-Sstm8s_clk$CLK_PeripheralClockConfig$216
      0012AD 00                    3702 	.db	0
      0012AE 01                    3703 	.uleb128	1
      0012AF 01                    3704 	.db	1
      0012B0 00                    3705 	.db	0
      0012B1 05                    3706 	.uleb128	5
      0012B2 02                    3707 	.db	2
      0012B3 00 00 8D A8           3708 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$220)
      0012B7 03                    3709 	.db	3
      0012B8 B4 02                 3710 	.sleb128	308
      0012BA 01                    3711 	.db	1
      0012BB 09                    3712 	.db	9
      0012BC 00 02                 3713 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$223-Sstm8s_clk$CLK_ClockSwitchConfig$220
      0012BE 03                    3714 	.db	3
      0012BF 03                    3715 	.sleb128	3
      0012C0 01                    3716 	.db	1
      0012C1 09                    3717 	.db	9
      0012C2 00 05                 3718 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$224-Sstm8s_clk$CLK_ClockSwitchConfig$223
      0012C4 03                    3719 	.db	3
      0012C5 04                    3720 	.sleb128	4
      0012C6 01                    3721 	.db	1
      0012C7 09                    3722 	.db	9
      0012C8 00 2A                 3723 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$234-Sstm8s_clk$CLK_ClockSwitchConfig$224
      0012CA 03                    3724 	.db	3
      0012CB 01                    3725 	.sleb128	1
      0012CC 01                    3726 	.db	1
      0012CD 09                    3727 	.db	9
      0012CE 00 2B                 3728 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$242-Sstm8s_clk$CLK_ClockSwitchConfig$234
      0012D0 03                    3729 	.db	3
      0012D1 01                    3730 	.sleb128	1
      0012D2 01                    3731 	.db	1
      0012D3 09                    3732 	.db	9
      0012D4 00 1E                 3733 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$250-Sstm8s_clk$CLK_ClockSwitchConfig$242
      0012D6 03                    3734 	.db	3
      0012D7 01                    3735 	.sleb128	1
      0012D8 01                    3736 	.db	1
      0012D9 09                    3737 	.db	9
      0012DA 00 1E                 3738 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$258-Sstm8s_clk$CLK_ClockSwitchConfig$250
      0012DC 03                    3739 	.db	3
      0012DD 03                    3740 	.sleb128	3
      0012DE 01                    3741 	.db	1
      0012DF 09                    3742 	.db	9
      0012E0 00 05                 3743 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$259-Sstm8s_clk$CLK_ClockSwitchConfig$258
      0012E2 03                    3744 	.db	3
      0012E3 06                    3745 	.sleb128	6
      0012E4 01                    3746 	.db	1
      0012E5 09                    3747 	.db	9
      0012E6 00 04                 3748 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$260-Sstm8s_clk$CLK_ClockSwitchConfig$259
      0012E8 03                    3749 	.db	3
      0012E9 7D                    3750 	.sleb128	-3
      0012EA 01                    3751 	.db	1
      0012EB 09                    3752 	.db	9
      0012EC 00 08                 3753 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$262-Sstm8s_clk$CLK_ClockSwitchConfig$260
      0012EE 03                    3754 	.db	3
      0012EF 03                    3755 	.sleb128	3
      0012F0 01                    3756 	.db	1
      0012F1 09                    3757 	.db	9
      0012F2 00 09                 3758 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$264-Sstm8s_clk$CLK_ClockSwitchConfig$262
      0012F4 03                    3759 	.db	3
      0012F5 03                    3760 	.sleb128	3
      0012F6 01                    3761 	.db	1
      0012F7 09                    3762 	.db	9
      0012F8 00 07                 3763 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$266-Sstm8s_clk$CLK_ClockSwitchConfig$264
      0012FA 03                    3764 	.db	3
      0012FB 02                    3765 	.sleb128	2
      0012FC 01                    3766 	.db	1
      0012FD 09                    3767 	.db	9
      0012FE 00 08                 3768 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$269-Sstm8s_clk$CLK_ClockSwitchConfig$266
      001300 03                    3769 	.db	3
      001301 04                    3770 	.sleb128	4
      001302 01                    3771 	.db	1
      001303 09                    3772 	.db	9
      001304 00 05                 3773 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$271-Sstm8s_clk$CLK_ClockSwitchConfig$269
      001306 03                    3774 	.db	3
      001307 04                    3775 	.sleb128	4
      001308 01                    3776 	.db	1
      001309 09                    3777 	.db	9
      00130A 00 06                 3778 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$273-Sstm8s_clk$CLK_ClockSwitchConfig$271
      00130C 03                    3779 	.db	3
      00130D 03                    3780 	.sleb128	3
      00130E 01                    3781 	.db	1
      00130F 09                    3782 	.db	9
      001310 00 11                 3783 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$275-Sstm8s_clk$CLK_ClockSwitchConfig$273
      001312 03                    3784 	.db	3
      001313 02                    3785 	.sleb128	2
      001314 01                    3786 	.db	1
      001315 09                    3787 	.db	9
      001316 00 04                 3788 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$278-Sstm8s_clk$CLK_ClockSwitchConfig$275
      001318 03                    3789 	.db	3
      001319 03                    3790 	.sleb128	3
      00131A 01                    3791 	.db	1
      00131B 09                    3792 	.db	9
      00131C 00 06                 3793 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$280-Sstm8s_clk$CLK_ClockSwitchConfig$278
      00131E 03                    3794 	.db	3
      00131F 02                    3795 	.sleb128	2
      001320 01                    3796 	.db	1
      001321 09                    3797 	.db	9
      001322 00 06                 3798 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$283-Sstm8s_clk$CLK_ClockSwitchConfig$280
      001324 03                    3799 	.db	3
      001325 04                    3800 	.sleb128	4
      001326 01                    3801 	.db	1
      001327 09                    3802 	.db	9
      001328 00 04                 3803 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$286-Sstm8s_clk$CLK_ClockSwitchConfig$283
      00132A 03                    3804 	.db	3
      00132B 06                    3805 	.sleb128	6
      00132C 01                    3806 	.db	1
      00132D 09                    3807 	.db	9
      00132E 00 07                 3808 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$288-Sstm8s_clk$CLK_ClockSwitchConfig$286
      001330 03                    3809 	.db	3
      001331 02                    3810 	.sleb128	2
      001332 01                    3811 	.db	1
      001333 09                    3812 	.db	9
      001334 00 09                 3813 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$291-Sstm8s_clk$CLK_ClockSwitchConfig$288
      001336 03                    3814 	.db	3
      001337 04                    3815 	.sleb128	4
      001338 01                    3816 	.db	1
      001339 09                    3817 	.db	9
      00133A 00 06                 3818 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$293-Sstm8s_clk$CLK_ClockSwitchConfig$291
      00133C 03                    3819 	.db	3
      00133D 04                    3820 	.sleb128	4
      00133E 01                    3821 	.db	1
      00133F 09                    3822 	.db	9
      001340 00 06                 3823 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$295-Sstm8s_clk$CLK_ClockSwitchConfig$293
      001342 03                    3824 	.db	3
      001343 03                    3825 	.sleb128	3
      001344 01                    3826 	.db	1
      001345 09                    3827 	.db	9
      001346 00 12                 3828 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$297-Sstm8s_clk$CLK_ClockSwitchConfig$295
      001348 03                    3829 	.db	3
      001349 02                    3830 	.sleb128	2
      00134A 01                    3831 	.db	1
      00134B 09                    3832 	.db	9
      00134C 00 04                 3833 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$300-Sstm8s_clk$CLK_ClockSwitchConfig$297
      00134E 03                    3834 	.db	3
      00134F 03                    3835 	.sleb128	3
      001350 01                    3836 	.db	1
      001351 09                    3837 	.db	9
      001352 00 06                 3838 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$302-Sstm8s_clk$CLK_ClockSwitchConfig$300
      001354 03                    3839 	.db	3
      001355 03                    3840 	.sleb128	3
      001356 01                    3841 	.db	1
      001357 09                    3842 	.db	9
      001358 00 08                 3843 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$303-Sstm8s_clk$CLK_ClockSwitchConfig$302
      00135A 03                    3844 	.db	3
      00135B 01                    3845 	.sleb128	1
      00135C 01                    3846 	.db	1
      00135D 09                    3847 	.db	9
      00135E 00 06                 3848 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$306-Sstm8s_clk$CLK_ClockSwitchConfig$303
      001360 03                    3849 	.db	3
      001361 04                    3850 	.sleb128	4
      001362 01                    3851 	.db	1
      001363 09                    3852 	.db	9
      001364 00 01                 3853 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$308-Sstm8s_clk$CLK_ClockSwitchConfig$306
      001366 03                    3854 	.db	3
      001367 03                    3855 	.sleb128	3
      001368 01                    3856 	.db	1
      001369 09                    3857 	.db	9
      00136A 00 07                 3858 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$310-Sstm8s_clk$CLK_ClockSwitchConfig$308
      00136C 03                    3859 	.db	3
      00136D 03                    3860 	.sleb128	3
      00136E 01                    3861 	.db	1
      00136F 09                    3862 	.db	9
      001370 00 13                 3863 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$313-Sstm8s_clk$CLK_ClockSwitchConfig$310
      001372 03                    3864 	.db	3
      001373 02                    3865 	.sleb128	2
      001374 01                    3866 	.db	1
      001375 09                    3867 	.db	9
      001376 00 0B                 3868 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$315-Sstm8s_clk$CLK_ClockSwitchConfig$313
      001378 03                    3869 	.db	3
      001379 02                    3870 	.sleb128	2
      00137A 01                    3871 	.db	1
      00137B 09                    3872 	.db	9
      00137C 00 13                 3873 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$318-Sstm8s_clk$CLK_ClockSwitchConfig$315
      00137E 03                    3874 	.db	3
      00137F 02                    3875 	.sleb128	2
      001380 01                    3876 	.db	1
      001381 09                    3877 	.db	9
      001382 00 0B                 3878 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$320-Sstm8s_clk$CLK_ClockSwitchConfig$318
      001384 03                    3879 	.db	3
      001385 02                    3880 	.sleb128	2
      001386 01                    3881 	.db	1
      001387 09                    3882 	.db	9
      001388 00 13                 3883 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$323-Sstm8s_clk$CLK_ClockSwitchConfig$320
      00138A 03                    3884 	.db	3
      00138B 02                    3885 	.sleb128	2
      00138C 01                    3886 	.db	1
      00138D 09                    3887 	.db	9
      00138E 00 08                 3888 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$325-Sstm8s_clk$CLK_ClockSwitchConfig$323
      001390 03                    3889 	.db	3
      001391 03                    3890 	.sleb128	3
      001392 01                    3891 	.db	1
      001393 09                    3892 	.db	9
      001394 00 01                 3893 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$326-Sstm8s_clk$CLK_ClockSwitchConfig$325
      001396 03                    3894 	.db	3
      001397 01                    3895 	.sleb128	1
      001398 01                    3896 	.db	1
      001399 09                    3897 	.db	9
      00139A 00 03                 3898 	.dw	1+Sstm8s_clk$CLK_ClockSwitchConfig$328-Sstm8s_clk$CLK_ClockSwitchConfig$326
      00139C 00                    3899 	.db	0
      00139D 01                    3900 	.uleb128	1
      00139E 01                    3901 	.db	1
      00139F 00                    3902 	.db	0
      0013A0 05                    3903 	.uleb128	5
      0013A1 02                    3904 	.db	2
      0013A2 00 00 8F 42           3905 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$330)
      0013A6 03                    3906 	.db	3
      0013A7 9E 03                 3907 	.sleb128	414
      0013A9 01                    3908 	.db	1
      0013AA 09                    3909 	.db	9
      0013AB 00 00                 3910 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$332-Sstm8s_clk$CLK_HSIPrescalerConfig$330
      0013AD 03                    3911 	.db	3
      0013AE 03                    3912 	.sleb128	3
      0013AF 01                    3913 	.db	1
      0013B0 09                    3914 	.db	9
      0013B1 00 31                 3915 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$342-Sstm8s_clk$CLK_HSIPrescalerConfig$332
      0013B3 03                    3916 	.db	3
      0013B4 03                    3917 	.sleb128	3
      0013B5 01                    3918 	.db	1
      0013B6 09                    3919 	.db	9
      0013B7 00 08                 3920 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$343-Sstm8s_clk$CLK_HSIPrescalerConfig$342
      0013B9 03                    3921 	.db	3
      0013BA 03                    3922 	.sleb128	3
      0013BB 01                    3923 	.db	1
      0013BC 09                    3924 	.db	9
      0013BD 00 08                 3925 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$344-Sstm8s_clk$CLK_HSIPrescalerConfig$343
      0013BF 03                    3926 	.db	3
      0013C0 01                    3927 	.sleb128	1
      0013C1 01                    3928 	.db	1
      0013C2 09                    3929 	.db	9
      0013C3 00 01                 3930 	.dw	1+Sstm8s_clk$CLK_HSIPrescalerConfig$345-Sstm8s_clk$CLK_HSIPrescalerConfig$344
      0013C5 00                    3931 	.db	0
      0013C6 01                    3932 	.uleb128	1
      0013C7 01                    3933 	.db	1
      0013C8 00                    3934 	.db	0
      0013C9 05                    3935 	.uleb128	5
      0013CA 02                    3936 	.db	2
      0013CB 00 00 8F 84           3937 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$347)
      0013CF 03                    3938 	.db	3
      0013D0 B3 03                 3939 	.sleb128	435
      0013D2 01                    3940 	.db	1
      0013D3 09                    3941 	.db	9
      0013D4 00 00                 3942 	.dw	Sstm8s_clk$CLK_CCOConfig$349-Sstm8s_clk$CLK_CCOConfig$347
      0013D6 03                    3943 	.db	3
      0013D7 03                    3944 	.sleb128	3
      0013D8 01                    3945 	.db	1
      0013D9 09                    3946 	.db	9
      0013DA 00 82                 3947 	.dw	Sstm8s_clk$CLK_CCOConfig$368-Sstm8s_clk$CLK_CCOConfig$349
      0013DC 03                    3948 	.db	3
      0013DD 03                    3949 	.sleb128	3
      0013DE 01                    3950 	.db	1
      0013DF 09                    3951 	.db	9
      0013E0 00 08                 3952 	.dw	Sstm8s_clk$CLK_CCOConfig$369-Sstm8s_clk$CLK_CCOConfig$368
      0013E2 03                    3953 	.db	3
      0013E3 03                    3954 	.sleb128	3
      0013E4 01                    3955 	.db	1
      0013E5 09                    3956 	.db	9
      0013E6 00 08                 3957 	.dw	Sstm8s_clk$CLK_CCOConfig$370-Sstm8s_clk$CLK_CCOConfig$369
      0013E8 03                    3958 	.db	3
      0013E9 03                    3959 	.sleb128	3
      0013EA 01                    3960 	.db	1
      0013EB 09                    3961 	.db	9
      0013EC 00 08                 3962 	.dw	Sstm8s_clk$CLK_CCOConfig$371-Sstm8s_clk$CLK_CCOConfig$370
      0013EE 03                    3963 	.db	3
      0013EF 01                    3964 	.sleb128	1
      0013F0 01                    3965 	.db	1
      0013F1 09                    3966 	.db	9
      0013F2 00 01                 3967 	.dw	1+Sstm8s_clk$CLK_CCOConfig$372-Sstm8s_clk$CLK_CCOConfig$371
      0013F4 00                    3968 	.db	0
      0013F5 01                    3969 	.uleb128	1
      0013F6 01                    3970 	.db	1
      0013F7 00                    3971 	.db	0
      0013F8 05                    3972 	.uleb128	5
      0013F9 02                    3973 	.db	2
      0013FA 00 00 90 1F           3974 	.dw	0,(Sstm8s_clk$CLK_ITConfig$374)
      0013FE 03                    3975 	.db	3
      0013FF CA 03                 3976 	.sleb128	458
      001401 01                    3977 	.db	1
      001402 09                    3978 	.db	9
      001403 00 01                 3979 	.dw	Sstm8s_clk$CLK_ITConfig$377-Sstm8s_clk$CLK_ITConfig$374
      001405 03                    3980 	.db	3
      001406 03                    3981 	.sleb128	3
      001407 01                    3982 	.db	1
      001408 09                    3983 	.db	9
      001409 00 1E                 3984 	.dw	Sstm8s_clk$CLK_ITConfig$385-Sstm8s_clk$CLK_ITConfig$377
      00140B 03                    3985 	.db	3
      00140C 01                    3986 	.sleb128	1
      00140D 01                    3987 	.db	1
      00140E 09                    3988 	.db	9
      00140F 00 3D                 3989 	.dw	Sstm8s_clk$CLK_ITConfig$400-Sstm8s_clk$CLK_ITConfig$385
      001411 03                    3990 	.db	3
      001412 02                    3991 	.sleb128	2
      001413 01                    3992 	.db	1
      001414 09                    3993 	.db	9
      001415 00 07                 3994 	.dw	Sstm8s_clk$CLK_ITConfig$402-Sstm8s_clk$CLK_ITConfig$400
      001417 03                    3995 	.db	3
      001418 02                    3996 	.sleb128	2
      001419 01                    3997 	.db	1
      00141A 09                    3998 	.db	9
      00141B 00 0E                 3999 	.dw	Sstm8s_clk$CLK_ITConfig$404-Sstm8s_clk$CLK_ITConfig$402
      00141D 03                    4000 	.db	3
      00141E 03                    4001 	.sleb128	3
      00141F 01                    4002 	.db	1
      001420 09                    4003 	.db	9
      001421 00 08                 4004 	.dw	Sstm8s_clk$CLK_ITConfig$405-Sstm8s_clk$CLK_ITConfig$404
      001423 03                    4005 	.db	3
      001424 01                    4006 	.sleb128	1
      001425 01                    4007 	.db	1
      001426 09                    4008 	.db	9
      001427 00 03                 4009 	.dw	Sstm8s_clk$CLK_ITConfig$406-Sstm8s_clk$CLK_ITConfig$405
      001429 03                    4010 	.db	3
      00142A 01                    4011 	.sleb128	1
      00142B 01                    4012 	.db	1
      00142C 09                    4013 	.db	9
      00142D 00 00                 4014 	.dw	Sstm8s_clk$CLK_ITConfig$407-Sstm8s_clk$CLK_ITConfig$406
      00142F 03                    4015 	.db	3
      001430 01                    4016 	.sleb128	1
      001431 01                    4017 	.db	1
      001432 09                    4018 	.db	9
      001433 00 08                 4019 	.dw	Sstm8s_clk$CLK_ITConfig$408-Sstm8s_clk$CLK_ITConfig$407
      001435 03                    4020 	.db	3
      001436 01                    4021 	.sleb128	1
      001437 01                    4022 	.db	1
      001438 09                    4023 	.db	9
      001439 00 03                 4024 	.dw	Sstm8s_clk$CLK_ITConfig$410-Sstm8s_clk$CLK_ITConfig$408
      00143B 03                    4025 	.db	3
      00143C 03                    4026 	.sleb128	3
      00143D 01                    4027 	.db	1
      00143E 09                    4028 	.db	9
      00143F 00 00                 4029 	.dw	Sstm8s_clk$CLK_ITConfig$412-Sstm8s_clk$CLK_ITConfig$410
      001441 03                    4030 	.db	3
      001442 04                    4031 	.sleb128	4
      001443 01                    4032 	.db	1
      001444 09                    4033 	.db	9
      001445 00 0E                 4034 	.dw	Sstm8s_clk$CLK_ITConfig$414-Sstm8s_clk$CLK_ITConfig$412
      001447 03                    4035 	.db	3
      001448 03                    4036 	.sleb128	3
      001449 01                    4037 	.db	1
      00144A 09                    4038 	.db	9
      00144B 00 08                 4039 	.dw	Sstm8s_clk$CLK_ITConfig$415-Sstm8s_clk$CLK_ITConfig$414
      00144D 03                    4040 	.db	3
      00144E 01                    4041 	.sleb128	1
      00144F 01                    4042 	.db	1
      001450 09                    4043 	.db	9
      001451 00 03                 4044 	.dw	Sstm8s_clk$CLK_ITConfig$416-Sstm8s_clk$CLK_ITConfig$415
      001453 03                    4045 	.db	3
      001454 01                    4046 	.sleb128	1
      001455 01                    4047 	.db	1
      001456 09                    4048 	.db	9
      001457 00 00                 4049 	.dw	Sstm8s_clk$CLK_ITConfig$417-Sstm8s_clk$CLK_ITConfig$416
      001459 03                    4050 	.db	3
      00145A 01                    4051 	.sleb128	1
      00145B 01                    4052 	.db	1
      00145C 09                    4053 	.db	9
      00145D 00 08                 4054 	.dw	Sstm8s_clk$CLK_ITConfig$419-Sstm8s_clk$CLK_ITConfig$417
      00145F 03                    4055 	.db	3
      001460 04                    4056 	.sleb128	4
      001461 01                    4057 	.db	1
      001462 09                    4058 	.db	9
      001463 00 00                 4059 	.dw	Sstm8s_clk$CLK_ITConfig$420-Sstm8s_clk$CLK_ITConfig$419
      001465 03                    4060 	.db	3
      001466 02                    4061 	.sleb128	2
      001467 01                    4062 	.db	1
      001468 09                    4063 	.db	9
      001469 00 02                 4064 	.dw	1+Sstm8s_clk$CLK_ITConfig$422-Sstm8s_clk$CLK_ITConfig$420
      00146B 00                    4065 	.db	0
      00146C 01                    4066 	.uleb128	1
      00146D 01                    4067 	.db	1
      00146E 00                    4068 	.db	0
      00146F 05                    4069 	.uleb128	5
      001470 02                    4070 	.db	2
      001471 00 00 90 C9           4071 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$424)
      001475 03                    4072 	.db	3
      001476 F3 03                 4073 	.sleb128	499
      001478 01                    4074 	.db	1
      001479 09                    4075 	.db	9
      00147A 00 01                 4076 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$427-Sstm8s_clk$CLK_SYSCLKConfig$424
      00147C 03                    4077 	.db	3
      00147D 03                    4078 	.sleb128	3
      00147E 01                    4079 	.db	1
      00147F 09                    4080 	.db	9
      001480 00 79                 4081 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$445-Sstm8s_clk$CLK_SYSCLKConfig$427
      001482 03                    4082 	.db	3
      001483 04                    4083 	.sleb128	4
      001484 01                    4084 	.db	1
      001485 09                    4085 	.db	9
      001486 00 03                 4086 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$446-Sstm8s_clk$CLK_SYSCLKConfig$445
      001488 03                    4087 	.db	3
      001489 7E                    4088 	.sleb128	-2
      00148A 01                    4089 	.db	1
      00148B 09                    4090 	.db	9
      00148C 00 07                 4091 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$448-Sstm8s_clk$CLK_SYSCLKConfig$446
      00148E 03                    4092 	.db	3
      00148F 02                    4093 	.sleb128	2
      001490 01                    4094 	.db	1
      001491 09                    4095 	.db	9
      001492 00 05                 4096 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$449-Sstm8s_clk$CLK_SYSCLKConfig$448
      001494 03                    4097 	.db	3
      001495 01                    4098 	.sleb128	1
      001496 01                    4099 	.db	1
      001497 09                    4100 	.db	9
      001498 00 11                 4101 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$452-Sstm8s_clk$CLK_SYSCLKConfig$449
      00149A 03                    4102 	.db	3
      00149B 04                    4103 	.sleb128	4
      00149C 01                    4104 	.db	1
      00149D 09                    4105 	.db	9
      00149E 00 05                 4106 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$453-Sstm8s_clk$CLK_SYSCLKConfig$452
      0014A0 03                    4107 	.db	3
      0014A1 01                    4108 	.sleb128	1
      0014A2 01                    4109 	.db	1
      0014A3 09                    4110 	.db	9
      0014A4 00 0E                 4111 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$455-Sstm8s_clk$CLK_SYSCLKConfig$453
      0014A6 03                    4112 	.db	3
      0014A7 02                    4113 	.sleb128	2
      0014A8 01                    4114 	.db	1
      0014A9 09                    4115 	.db	9
      0014AA 00 02                 4116 	.dw	1+Sstm8s_clk$CLK_SYSCLKConfig$457-Sstm8s_clk$CLK_SYSCLKConfig$455
      0014AC 00                    4117 	.db	0
      0014AD 01                    4118 	.uleb128	1
      0014AE 01                    4119 	.db	1
      0014AF 00                    4120 	.db	0
      0014B0 05                    4121 	.uleb128	5
      0014B1 02                    4122 	.db	2
      0014B2 00 00 91 78           4123 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$459)
      0014B6 03                    4124 	.db	3
      0014B7 8A 04                 4125 	.sleb128	522
      0014B9 01                    4126 	.db	1
      0014BA 09                    4127 	.db	9
      0014BB 00 00                 4128 	.dw	Sstm8s_clk$CLK_SWIMConfig$461-Sstm8s_clk$CLK_SWIMConfig$459
      0014BD 03                    4129 	.db	3
      0014BE 03                    4130 	.sleb128	3
      0014BF 01                    4131 	.db	1
      0014C0 09                    4132 	.db	9
      0014C1 00 1E                 4133 	.dw	Sstm8s_clk$CLK_SWIMConfig$469-Sstm8s_clk$CLK_SWIMConfig$461
      0014C3 03                    4134 	.db	3
      0014C4 05                    4135 	.sleb128	5
      0014C5 01                    4136 	.db	1
      0014C6 09                    4137 	.db	9
      0014C7 00 03                 4138 	.dw	Sstm8s_clk$CLK_SWIMConfig$470-Sstm8s_clk$CLK_SWIMConfig$469
      0014C9 03                    4139 	.db	3
      0014CA 7D                    4140 	.sleb128	-3
      0014CB 01                    4141 	.db	1
      0014CC 09                    4142 	.db	9
      0014CD 00 07                 4143 	.dw	Sstm8s_clk$CLK_SWIMConfig$472-Sstm8s_clk$CLK_SWIMConfig$470
      0014CF 03                    4144 	.db	3
      0014D0 03                    4145 	.sleb128	3
      0014D1 01                    4146 	.db	1
      0014D2 09                    4147 	.db	9
      0014D3 00 08                 4148 	.dw	Sstm8s_clk$CLK_SWIMConfig$475-Sstm8s_clk$CLK_SWIMConfig$472
      0014D5 03                    4149 	.db	3
      0014D6 05                    4150 	.sleb128	5
      0014D7 01                    4151 	.db	1
      0014D8 09                    4152 	.db	9
      0014D9 00 05                 4153 	.dw	Sstm8s_clk$CLK_SWIMConfig$477-Sstm8s_clk$CLK_SWIMConfig$475
      0014DB 03                    4154 	.db	3
      0014DC 02                    4155 	.sleb128	2
      0014DD 01                    4156 	.db	1
      0014DE 09                    4157 	.db	9
      0014DF 00 01                 4158 	.dw	1+Sstm8s_clk$CLK_SWIMConfig$478-Sstm8s_clk$CLK_SWIMConfig$477
      0014E1 00                    4159 	.db	0
      0014E2 01                    4160 	.uleb128	1
      0014E3 01                    4161 	.db	1
      0014E4 00                    4162 	.db	0
      0014E5 05                    4163 	.uleb128	5
      0014E6 02                    4164 	.db	2
      0014E7 00 00 91 AE           4165 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$480)
      0014EB 03                    4166 	.db	3
      0014EC A2 04                 4167 	.sleb128	546
      0014EE 01                    4168 	.db	1
      0014EF 09                    4169 	.db	9
      0014F0 00 00                 4170 	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$482-Sstm8s_clk$CLK_ClockSecuritySystemEnable$480
      0014F2 03                    4171 	.db	3
      0014F3 03                    4172 	.sleb128	3
      0014F4 01                    4173 	.db	1
      0014F5 09                    4174 	.db	9
      0014F6 00 08                 4175 	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$483-Sstm8s_clk$CLK_ClockSecuritySystemEnable$482
      0014F8 03                    4176 	.db	3
      0014F9 01                    4177 	.sleb128	1
      0014FA 01                    4178 	.db	1
      0014FB 09                    4179 	.db	9
      0014FC 00 01                 4180 	.dw	1+Sstm8s_clk$CLK_ClockSecuritySystemEnable$484-Sstm8s_clk$CLK_ClockSecuritySystemEnable$483
      0014FE 00                    4181 	.db	0
      0014FF 01                    4182 	.uleb128	1
      001500 01                    4183 	.db	1
      001501 00                    4184 	.db	0
      001502 05                    4185 	.uleb128	5
      001503 02                    4186 	.db	2
      001504 00 00 91 B7           4187 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$486)
      001508 03                    4188 	.db	3
      001509 AE 04                 4189 	.sleb128	558
      00150B 01                    4190 	.db	1
      00150C 09                    4191 	.db	9
      00150D 00 00                 4192 	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$488-Sstm8s_clk$CLK_GetSYSCLKSource$486
      00150F 03                    4193 	.db	3
      001510 02                    4194 	.sleb128	2
      001511 01                    4195 	.db	1
      001512 09                    4196 	.db	9
      001513 00 03                 4197 	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$489-Sstm8s_clk$CLK_GetSYSCLKSource$488
      001515 03                    4198 	.db	3
      001516 01                    4199 	.sleb128	1
      001517 01                    4200 	.db	1
      001518 09                    4201 	.db	9
      001519 00 01                 4202 	.dw	1+Sstm8s_clk$CLK_GetSYSCLKSource$490-Sstm8s_clk$CLK_GetSYSCLKSource$489
      00151B 00                    4203 	.db	0
      00151C 01                    4204 	.uleb128	1
      00151D 01                    4205 	.db	1
      00151E 00                    4206 	.db	0
      00151F 05                    4207 	.uleb128	5
      001520 02                    4208 	.db	2
      001521 00 00 91 BB           4209 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$492)
      001525 03                    4210 	.db	3
      001526 B8 04                 4211 	.sleb128	568
      001528 01                    4212 	.db	1
      001529 09                    4213 	.db	9
      00152A 00 02                 4214 	.dw	Sstm8s_clk$CLK_GetClockFreq$495-Sstm8s_clk$CLK_GetClockFreq$492
      00152C 03                    4215 	.db	3
      00152D 07                    4216 	.sleb128	7
      00152E 01                    4217 	.db	1
      00152F 09                    4218 	.db	9
      001530 00 05                 4219 	.dw	Sstm8s_clk$CLK_GetClockFreq$496-Sstm8s_clk$CLK_GetClockFreq$495
      001532 03                    4220 	.db	3
      001533 02                    4221 	.sleb128	2
      001534 01                    4222 	.db	1
      001535 09                    4223 	.db	9
      001536 00 0C                 4224 	.dw	Sstm8s_clk$CLK_GetClockFreq$499-Sstm8s_clk$CLK_GetClockFreq$496
      001538 03                    4225 	.db	3
      001539 02                    4226 	.sleb128	2
      00153A 01                    4227 	.db	1
      00153B 09                    4228 	.db	9
      00153C 00 05                 4229 	.dw	Sstm8s_clk$CLK_GetClockFreq$500-Sstm8s_clk$CLK_GetClockFreq$499
      00153E 03                    4230 	.db	3
      00153F 01                    4231 	.sleb128	1
      001540 01                    4232 	.db	1
      001541 09                    4233 	.db	9
      001542 00 03                 4234 	.dw	Sstm8s_clk$CLK_GetClockFreq$501-Sstm8s_clk$CLK_GetClockFreq$500
      001544 03                    4235 	.db	3
      001545 01                    4236 	.sleb128	1
      001546 01                    4237 	.db	1
      001547 09                    4238 	.db	9
      001548 00 06                 4239 	.dw	Sstm8s_clk$CLK_GetClockFreq$502-Sstm8s_clk$CLK_GetClockFreq$501
      00154A 03                    4240 	.db	3
      00154B 01                    4241 	.sleb128	1
      00154C 01                    4242 	.db	1
      00154D 09                    4243 	.db	9
      00154E 00 1A                 4244 	.dw	Sstm8s_clk$CLK_GetClockFreq$511-Sstm8s_clk$CLK_GetClockFreq$502
      001550 03                    4245 	.db	3
      001551 02                    4246 	.sleb128	2
      001552 01                    4247 	.db	1
      001553 09                    4248 	.db	9
      001554 00 0C                 4249 	.dw	Sstm8s_clk$CLK_GetClockFreq$514-Sstm8s_clk$CLK_GetClockFreq$511
      001556 03                    4250 	.db	3
      001557 02                    4251 	.sleb128	2
      001558 01                    4252 	.db	1
      001559 09                    4253 	.db	9
      00155A 00 0A                 4254 	.dw	Sstm8s_clk$CLK_GetClockFreq$517-Sstm8s_clk$CLK_GetClockFreq$514
      00155C 03                    4255 	.db	3
      00155D 04                    4256 	.sleb128	4
      00155E 01                    4257 	.db	1
      00155F 09                    4258 	.db	9
      001560 00 08                 4259 	.dw	Sstm8s_clk$CLK_GetClockFreq$519-Sstm8s_clk$CLK_GetClockFreq$517
      001562 03                    4260 	.db	3
      001563 03                    4261 	.sleb128	3
      001564 01                    4262 	.db	1
      001565 09                    4263 	.db	9
      001566 00 03                 4264 	.dw	Sstm8s_clk$CLK_GetClockFreq$520-Sstm8s_clk$CLK_GetClockFreq$519
      001568 03                    4265 	.db	3
      001569 01                    4266 	.sleb128	1
      00156A 01                    4267 	.db	1
      00156B 09                    4268 	.db	9
      00156C 00 03                 4269 	.dw	1+Sstm8s_clk$CLK_GetClockFreq$522-Sstm8s_clk$CLK_GetClockFreq$520
      00156E 00                    4270 	.db	0
      00156F 01                    4271 	.uleb128	1
      001570 01                    4272 	.db	1
      001571 00                    4273 	.db	0
      001572 05                    4274 	.uleb128	5
      001573 02                    4275 	.db	2
      001574 00 00 92 1A           4276 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$524)
      001578 03                    4277 	.db	3
      001579 DB 04                 4278 	.sleb128	603
      00157B 01                    4279 	.db	1
      00157C 09                    4280 	.db	9
      00157D 00 00                 4281 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$526-Sstm8s_clk$CLK_AdjustHSICalibrationValue$524
      00157F 03                    4282 	.db	3
      001580 03                    4283 	.sleb128	3
      001581 01                    4284 	.db	1
      001582 09                    4285 	.db	9
      001583 00 54                 4286 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$540-Sstm8s_clk$CLK_AdjustHSICalibrationValue$526
      001585 03                    4287 	.db	3
      001586 03                    4288 	.sleb128	3
      001587 01                    4289 	.db	1
      001588 09                    4290 	.db	9
      001589 00 0A                 4291 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$541-Sstm8s_clk$CLK_AdjustHSICalibrationValue$540
      00158B 03                    4292 	.db	3
      00158C 01                    4293 	.sleb128	1
      00158D 01                    4294 	.db	1
      00158E 09                    4295 	.db	9
      00158F 00 01                 4296 	.dw	1+Sstm8s_clk$CLK_AdjustHSICalibrationValue$542-Sstm8s_clk$CLK_AdjustHSICalibrationValue$541
      001591 00                    4297 	.db	0
      001592 01                    4298 	.uleb128	1
      001593 01                    4299 	.db	1
      001594 00                    4300 	.db	0
      001595 05                    4301 	.uleb128	5
      001596 02                    4302 	.db	2
      001597 00 00 92 79           4303 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$544)
      00159B 03                    4304 	.db	3
      00159C ED 04                 4305 	.sleb128	621
      00159E 01                    4306 	.db	1
      00159F 09                    4307 	.db	9
      0015A0 00 00                 4308 	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$546-Sstm8s_clk$CLK_SYSCLKEmergencyClear$544
      0015A2 03                    4309 	.db	3
      0015A3 02                    4310 	.sleb128	2
      0015A4 01                    4311 	.db	1
      0015A5 09                    4312 	.db	9
      0015A6 00 08                 4313 	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$547-Sstm8s_clk$CLK_SYSCLKEmergencyClear$546
      0015A8 03                    4314 	.db	3
      0015A9 01                    4315 	.sleb128	1
      0015AA 01                    4316 	.db	1
      0015AB 09                    4317 	.db	9
      0015AC 00 01                 4318 	.dw	1+Sstm8s_clk$CLK_SYSCLKEmergencyClear$548-Sstm8s_clk$CLK_SYSCLKEmergencyClear$547
      0015AE 00                    4319 	.db	0
      0015AF 01                    4320 	.uleb128	1
      0015B0 01                    4321 	.db	1
      0015B1 00                    4322 	.db	0
      0015B2 05                    4323 	.uleb128	5
      0015B3 02                    4324 	.db	2
      0015B4 00 00 92 82           4325 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$550)
      0015B8 03                    4326 	.db	3
      0015B9 F9 04                 4327 	.sleb128	633
      0015BB 01                    4328 	.db	1
      0015BC 09                    4329 	.db	9
      0015BD 00 01                 4330 	.dw	Sstm8s_clk$CLK_GetFlagStatus$553-Sstm8s_clk$CLK_GetFlagStatus$550
      0015BF 03                    4331 	.db	3
      0015C0 07                    4332 	.sleb128	7
      0015C1 01                    4333 	.db	1
      0015C2 09                    4334 	.db	9
      0015C3 00 5D                 4335 	.dw	Sstm8s_clk$CLK_GetFlagStatus$572-Sstm8s_clk$CLK_GetFlagStatus$553
      0015C5 03                    4336 	.db	3
      0015C6 03                    4337 	.sleb128	3
      0015C7 01                    4338 	.db	1
      0015C8 09                    4339 	.db	9
      0015C9 00 01                 4340 	.dw	Sstm8s_clk$CLK_GetFlagStatus$573-Sstm8s_clk$CLK_GetFlagStatus$572
      0015CB 03                    4341 	.db	3
      0015CC 03                    4342 	.sleb128	3
      0015CD 01                    4343 	.db	1
      0015CE 09                    4344 	.db	9
      0015CF 00 0C                 4345 	.dw	Sstm8s_clk$CLK_GetFlagStatus$576-Sstm8s_clk$CLK_GetFlagStatus$573
      0015D1 03                    4346 	.db	3
      0015D2 02                    4347 	.sleb128	2
      0015D3 01                    4348 	.db	1
      0015D4 09                    4349 	.db	9
      0015D5 00 06                 4350 	.dw	Sstm8s_clk$CLK_GetFlagStatus$578-Sstm8s_clk$CLK_GetFlagStatus$576
      0015D7 03                    4351 	.db	3
      0015D8 02                    4352 	.sleb128	2
      0015D9 01                    4353 	.db	1
      0015DA 09                    4354 	.db	9
      0015DB 00 0B                 4355 	.dw	Sstm8s_clk$CLK_GetFlagStatus$581-Sstm8s_clk$CLK_GetFlagStatus$578
      0015DD 03                    4356 	.db	3
      0015DE 02                    4357 	.sleb128	2
      0015DF 01                    4358 	.db	1
      0015E0 09                    4359 	.db	9
      0015E1 00 06                 4360 	.dw	Sstm8s_clk$CLK_GetFlagStatus$583-Sstm8s_clk$CLK_GetFlagStatus$581
      0015E3 03                    4361 	.db	3
      0015E4 02                    4362 	.sleb128	2
      0015E5 01                    4363 	.db	1
      0015E6 09                    4364 	.db	9
      0015E7 00 0B                 4365 	.dw	Sstm8s_clk$CLK_GetFlagStatus$586-Sstm8s_clk$CLK_GetFlagStatus$583
      0015E9 03                    4366 	.db	3
      0015EA 02                    4367 	.sleb128	2
      0015EB 01                    4368 	.db	1
      0015EC 09                    4369 	.db	9
      0015ED 00 06                 4370 	.dw	Sstm8s_clk$CLK_GetFlagStatus$588-Sstm8s_clk$CLK_GetFlagStatus$586
      0015EF 03                    4371 	.db	3
      0015F0 02                    4372 	.sleb128	2
      0015F1 01                    4373 	.db	1
      0015F2 09                    4374 	.db	9
      0015F3 00 0B                 4375 	.dw	Sstm8s_clk$CLK_GetFlagStatus$591-Sstm8s_clk$CLK_GetFlagStatus$588
      0015F5 03                    4376 	.db	3
      0015F6 02                    4377 	.sleb128	2
      0015F7 01                    4378 	.db	1
      0015F8 09                    4379 	.db	9
      0015F9 00 06                 4380 	.dw	Sstm8s_clk$CLK_GetFlagStatus$594-Sstm8s_clk$CLK_GetFlagStatus$591
      0015FB 03                    4381 	.db	3
      0015FC 04                    4382 	.sleb128	4
      0015FD 01                    4383 	.db	1
      0015FE 09                    4384 	.db	9
      0015FF 00 03                 4385 	.dw	Sstm8s_clk$CLK_GetFlagStatus$596-Sstm8s_clk$CLK_GetFlagStatus$594
      001601 03                    4386 	.db	3
      001602 03                    4387 	.sleb128	3
      001603 01                    4388 	.db	1
      001604 09                    4389 	.db	9
      001605 00 0E                 4390 	.dw	Sstm8s_clk$CLK_GetFlagStatus$600-Sstm8s_clk$CLK_GetFlagStatus$596
      001607 03                    4391 	.db	3
      001608 02                    4392 	.sleb128	2
      001609 01                    4393 	.db	1
      00160A 09                    4394 	.db	9
      00160B 00 05                 4395 	.dw	Sstm8s_clk$CLK_GetFlagStatus$603-Sstm8s_clk$CLK_GetFlagStatus$600
      00160D 03                    4396 	.db	3
      00160E 04                    4397 	.sleb128	4
      00160F 01                    4398 	.db	1
      001610 09                    4399 	.db	9
      001611 00 01                 4400 	.dw	Sstm8s_clk$CLK_GetFlagStatus$605-Sstm8s_clk$CLK_GetFlagStatus$603
      001613 03                    4401 	.db	3
      001614 04                    4402 	.sleb128	4
      001615 01                    4403 	.db	1
      001616 09                    4404 	.db	9
      001617 00 00                 4405 	.dw	Sstm8s_clk$CLK_GetFlagStatus$606-Sstm8s_clk$CLK_GetFlagStatus$605
      001619 03                    4406 	.db	3
      00161A 01                    4407 	.sleb128	1
      00161B 01                    4408 	.db	1
      00161C 09                    4409 	.db	9
      00161D 00 03                 4410 	.dw	1+Sstm8s_clk$CLK_GetFlagStatus$608-Sstm8s_clk$CLK_GetFlagStatus$606
      00161F 00                    4411 	.db	0
      001620 01                    4412 	.uleb128	1
      001621 01                    4413 	.db	1
      001622 00                    4414 	.db	0
      001623 05                    4415 	.uleb128	5
      001624 02                    4416 	.db	2
      001625 00 00 93 40           4417 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$610)
      001629 03                    4418 	.db	3
      00162A AE 05                 4419 	.sleb128	686
      00162C 01                    4420 	.db	1
      00162D 09                    4421 	.db	9
      00162E 00 00                 4422 	.dw	Sstm8s_clk$CLK_GetITStatus$612-Sstm8s_clk$CLK_GetITStatus$610
      001630 03                    4423 	.db	3
      001631 05                    4424 	.sleb128	5
      001632 01                    4425 	.db	1
      001633 09                    4426 	.db	9
      001634 00 2E                 4427 	.dw	Sstm8s_clk$CLK_GetITStatus$625-Sstm8s_clk$CLK_GetITStatus$612
      001636 03                    4428 	.db	3
      001637 02                    4429 	.sleb128	2
      001638 01                    4430 	.db	1
      001639 09                    4431 	.db	9
      00163A 00 06                 4432 	.dw	Sstm8s_clk$CLK_GetITStatus$627-Sstm8s_clk$CLK_GetITStatus$625
      00163C 03                    4433 	.db	3
      00163D 03                    4434 	.sleb128	3
      00163E 01                    4435 	.db	1
      00163F 09                    4436 	.db	9
      001640 00 0F                 4437 	.dw	Sstm8s_clk$CLK_GetITStatus$630-Sstm8s_clk$CLK_GetITStatus$627
      001642 03                    4438 	.db	3
      001643 02                    4439 	.sleb128	2
      001644 01                    4440 	.db	1
      001645 09                    4441 	.db	9
      001646 00 05                 4442 	.dw	Sstm8s_clk$CLK_GetITStatus$633-Sstm8s_clk$CLK_GetITStatus$630
      001648 03                    4443 	.db	3
      001649 04                    4444 	.sleb128	4
      00164A 01                    4445 	.db	1
      00164B 09                    4446 	.db	9
      00164C 00 04                 4447 	.dw	Sstm8s_clk$CLK_GetITStatus$636-Sstm8s_clk$CLK_GetITStatus$633
      00164E 03                    4448 	.db	3
      00164F 06                    4449 	.sleb128	6
      001650 01                    4450 	.db	1
      001651 09                    4451 	.db	9
      001652 00 0F                 4452 	.dw	Sstm8s_clk$CLK_GetITStatus$639-Sstm8s_clk$CLK_GetITStatus$636
      001654 03                    4453 	.db	3
      001655 02                    4454 	.sleb128	2
      001656 01                    4455 	.db	1
      001657 09                    4456 	.db	9
      001658 00 05                 4457 	.dw	Sstm8s_clk$CLK_GetITStatus$642-Sstm8s_clk$CLK_GetITStatus$639
      00165A 03                    4458 	.db	3
      00165B 04                    4459 	.sleb128	4
      00165C 01                    4460 	.db	1
      00165D 09                    4461 	.db	9
      00165E 00 01                 4462 	.dw	Sstm8s_clk$CLK_GetITStatus$644-Sstm8s_clk$CLK_GetITStatus$642
      001660 03                    4463 	.db	3
      001661 05                    4464 	.sleb128	5
      001662 01                    4465 	.db	1
      001663 09                    4466 	.db	9
      001664 00 00                 4467 	.dw	Sstm8s_clk$CLK_GetITStatus$645-Sstm8s_clk$CLK_GetITStatus$644
      001666 03                    4468 	.db	3
      001667 01                    4469 	.sleb128	1
      001668 01                    4470 	.db	1
      001669 09                    4471 	.db	9
      00166A 00 01                 4472 	.dw	1+Sstm8s_clk$CLK_GetITStatus$646-Sstm8s_clk$CLK_GetITStatus$645
      00166C 00                    4473 	.db	0
      00166D 01                    4474 	.uleb128	1
      00166E 01                    4475 	.db	1
      00166F 00                    4476 	.db	0
      001670 05                    4477 	.uleb128	5
      001671 02                    4478 	.db	2
      001672 00 00 93 A2           4479 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$648)
      001676 03                    4480 	.db	3
      001677 D8 05                 4481 	.sleb128	728
      001679 01                    4482 	.db	1
      00167A 09                    4483 	.db	9
      00167B 00 00                 4484 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$650-Sstm8s_clk$CLK_ClearITPendingBit$648
      00167D 03                    4485 	.db	3
      00167E 03                    4486 	.sleb128	3
      00167F 01                    4487 	.db	1
      001680 09                    4488 	.db	9
      001681 00 2E                 4489 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$663-Sstm8s_clk$CLK_ClearITPendingBit$650
      001683 03                    4490 	.db	3
      001684 02                    4491 	.sleb128	2
      001685 01                    4492 	.db	1
      001686 09                    4493 	.db	9
      001687 00 06                 4494 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$665-Sstm8s_clk$CLK_ClearITPendingBit$663
      001689 03                    4495 	.db	3
      00168A 03                    4496 	.sleb128	3
      00168B 01                    4497 	.db	1
      00168C 09                    4498 	.db	9
      00168D 00 0B                 4499 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$668-Sstm8s_clk$CLK_ClearITPendingBit$665
      00168F 03                    4500 	.db	3
      001690 05                    4501 	.sleb128	5
      001691 01                    4502 	.db	1
      001692 09                    4503 	.db	9
      001693 00 08                 4504 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$670-Sstm8s_clk$CLK_ClearITPendingBit$668
      001695 03                    4505 	.db	3
      001696 03                    4506 	.sleb128	3
      001697 01                    4507 	.db	1
      001698 09                    4508 	.db	9
      001699 00 01                 4509 	.dw	1+Sstm8s_clk$CLK_ClearITPendingBit$671-Sstm8s_clk$CLK_ClearITPendingBit$670
      00169B 00                    4510 	.db	0
      00169C 01                    4511 	.uleb128	1
      00169D 01                    4512 	.db	1
      00169E                       4513 Ldebug_line_end:
                                   4514 
                                   4515 	.area .debug_loc (NOLOAD)
      001BDC                       4516 Ldebug_loc_start:
      001BDC 00 00 93 D0           4517 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$662)
      001BE0 00 00 93 EA           4518 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$672)
      001BE4 00 02                 4519 	.dw	2
      001BE6 78                    4520 	.db	120
      001BE7 01                    4521 	.sleb128	1
      001BE8 00 00 93 CF           4522 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$661)
      001BEC 00 00 93 D0           4523 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$662)
      001BF0 00 02                 4524 	.dw	2
      001BF2 78                    4525 	.db	120
      001BF3 02                    4526 	.sleb128	2
      001BF4 00 00 93 CA           4527 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$660)
      001BF8 00 00 93 CF           4528 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$661)
      001BFC 00 02                 4529 	.dw	2
      001BFE 78                    4530 	.db	120
      001BFF 08                    4531 	.sleb128	8
      001C00 00 00 93 C8           4532 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$659)
      001C04 00 00 93 CA           4533 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$660)
      001C08 00 02                 4534 	.dw	2
      001C0A 78                    4535 	.db	120
      001C0B 07                    4536 	.sleb128	7
      001C0C 00 00 93 C6           4537 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$658)
      001C10 00 00 93 C8           4538 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$659)
      001C14 00 02                 4539 	.dw	2
      001C16 78                    4540 	.db	120
      001C17 06                    4541 	.sleb128	6
      001C18 00 00 93 C4           4542 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$657)
      001C1C 00 00 93 C6           4543 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$658)
      001C20 00 02                 4544 	.dw	2
      001C22 78                    4545 	.db	120
      001C23 04                    4546 	.sleb128	4
      001C24 00 00 93 C2           4547 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$656)
      001C28 00 00 93 C4           4548 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$657)
      001C2C 00 02                 4549 	.dw	2
      001C2E 78                    4550 	.db	120
      001C2F 03                    4551 	.sleb128	3
      001C30 00 00 93 C0           4552 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$655)
      001C34 00 00 93 C2           4553 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$656)
      001C38 00 02                 4554 	.dw	2
      001C3A 78                    4555 	.db	120
      001C3B 02                    4556 	.sleb128	2
      001C3C 00 00 93 BF           4557 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$654)
      001C40 00 00 93 C0           4558 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$655)
      001C44 00 02                 4559 	.dw	2
      001C46 78                    4560 	.db	120
      001C47 01                    4561 	.sleb128	1
      001C48 00 00 93 BA           4562 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$653)
      001C4C 00 00 93 BF           4563 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$654)
      001C50 00 02                 4564 	.dw	2
      001C52 78                    4565 	.db	120
      001C53 01                    4566 	.sleb128	1
      001C54 00 00 93 B5           4567 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$652)
      001C58 00 00 93 BA           4568 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$653)
      001C5C 00 02                 4569 	.dw	2
      001C5E 78                    4570 	.db	120
      001C5F 02                    4571 	.sleb128	2
      001C60 00 00 93 AE           4572 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$651)
      001C64 00 00 93 B5           4573 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$652)
      001C68 00 02                 4574 	.dw	2
      001C6A 78                    4575 	.db	120
      001C6B 01                    4576 	.sleb128	1
      001C6C 00 00 93 A2           4577 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$649)
      001C70 00 00 93 AE           4578 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$651)
      001C74 00 02                 4579 	.dw	2
      001C76 78                    4580 	.db	120
      001C77 01                    4581 	.sleb128	1
      001C78 00 00 00 00           4582 	.dw	0,0
      001C7C 00 00 00 00           4583 	.dw	0,0
      001C80 00 00 93 9B           4584 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$637)
      001C84 00 00 93 A2           4585 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$647)
      001C88 00 02                 4586 	.dw	2
      001C8A 78                    4587 	.db	120
      001C8B 01                    4588 	.sleb128	1
      001C8C 00 00 93 83           4589 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$628)
      001C90 00 00 93 9B           4590 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$637)
      001C94 00 02                 4591 	.dw	2
      001C96 78                    4592 	.db	120
      001C97 01                    4593 	.sleb128	1
      001C98 00 00 93 6E           4594 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$624)
      001C9C 00 00 93 83           4595 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$628)
      001CA0 00 02                 4596 	.dw	2
      001CA2 78                    4597 	.db	120
      001CA3 01                    4598 	.sleb128	1
      001CA4 00 00 93 6D           4599 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$623)
      001CA8 00 00 93 6E           4600 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$624)
      001CAC 00 02                 4601 	.dw	2
      001CAE 78                    4602 	.db	120
      001CAF 02                    4603 	.sleb128	2
      001CB0 00 00 93 68           4604 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$622)
      001CB4 00 00 93 6D           4605 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$623)
      001CB8 00 02                 4606 	.dw	2
      001CBA 78                    4607 	.db	120
      001CBB 08                    4608 	.sleb128	8
      001CBC 00 00 93 66           4609 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$621)
      001CC0 00 00 93 68           4610 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$622)
      001CC4 00 02                 4611 	.dw	2
      001CC6 78                    4612 	.db	120
      001CC7 07                    4613 	.sleb128	7
      001CC8 00 00 93 64           4614 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$620)
      001CCC 00 00 93 66           4615 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$621)
      001CD0 00 02                 4616 	.dw	2
      001CD2 78                    4617 	.db	120
      001CD3 06                    4618 	.sleb128	6
      001CD4 00 00 93 62           4619 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$619)
      001CD8 00 00 93 64           4620 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$620)
      001CDC 00 02                 4621 	.dw	2
      001CDE 78                    4622 	.db	120
      001CDF 04                    4623 	.sleb128	4
      001CE0 00 00 93 60           4624 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$618)
      001CE4 00 00 93 62           4625 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$619)
      001CE8 00 02                 4626 	.dw	2
      001CEA 78                    4627 	.db	120
      001CEB 03                    4628 	.sleb128	3
      001CEC 00 00 93 5E           4629 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$617)
      001CF0 00 00 93 60           4630 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$618)
      001CF4 00 02                 4631 	.dw	2
      001CF6 78                    4632 	.db	120
      001CF7 02                    4633 	.sleb128	2
      001CF8 00 00 93 57           4634 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$616)
      001CFC 00 00 93 5E           4635 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$617)
      001D00 00 02                 4636 	.dw	2
      001D02 78                    4637 	.db	120
      001D03 01                    4638 	.sleb128	1
      001D04 00 00 93 52           4639 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$615)
      001D08 00 00 93 57           4640 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$616)
      001D0C 00 02                 4641 	.dw	2
      001D0E 78                    4642 	.db	120
      001D0F 01                    4643 	.sleb128	1
      001D10 00 00 93 4D           4644 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$614)
      001D14 00 00 93 52           4645 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$615)
      001D18 00 02                 4646 	.dw	2
      001D1A 78                    4647 	.db	120
      001D1B 02                    4648 	.sleb128	2
      001D1C 00 00 93 4C           4649 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$613)
      001D20 00 00 93 4D           4650 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$614)
      001D24 00 02                 4651 	.dw	2
      001D26 78                    4652 	.db	120
      001D27 01                    4653 	.sleb128	1
      001D28 00 00 93 40           4654 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$611)
      001D2C 00 00 93 4C           4655 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$613)
      001D30 00 02                 4656 	.dw	2
      001D32 78                    4657 	.db	120
      001D33 01                    4658 	.sleb128	1
      001D34 00 00 00 00           4659 	.dw	0,0
      001D38 00 00 00 00           4660 	.dw	0,0
      001D3C 00 00 93 3F           4661 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$607)
      001D40 00 00 93 40           4662 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$609)
      001D44 00 02                 4663 	.dw	2
      001D46 78                    4664 	.db	120
      001D47 01                    4665 	.sleb128	1
      001D48 00 00 93 2F           4666 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$598)
      001D4C 00 00 93 3F           4667 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$607)
      001D50 00 02                 4668 	.dw	2
      001D52 78                    4669 	.db	120
      001D53 02                    4670 	.sleb128	2
      001D54 00 00 93 2A           4671 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$597)
      001D58 00 00 93 2F           4672 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$598)
      001D5C 00 02                 4673 	.dw	2
      001D5E 78                    4674 	.db	120
      001D5F 03                    4675 	.sleb128	3
      001D60 00 00 93 20           4676 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$589)
      001D64 00 00 93 2A           4677 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$597)
      001D68 00 02                 4678 	.dw	2
      001D6A 78                    4679 	.db	120
      001D6B 02                    4680 	.sleb128	2
      001D6C 00 00 93 0F           4681 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$584)
      001D70 00 00 93 20           4682 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$589)
      001D74 00 02                 4683 	.dw	2
      001D76 78                    4684 	.db	120
      001D77 02                    4685 	.sleb128	2
      001D78 00 00 92 FE           4686 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$579)
      001D7C 00 00 93 0F           4687 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$584)
      001D80 00 02                 4688 	.dw	2
      001D82 78                    4689 	.db	120
      001D83 02                    4690 	.sleb128	2
      001D84 00 00 92 ED           4691 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$574)
      001D88 00 00 92 FE           4692 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$579)
      001D8C 00 02                 4693 	.dw	2
      001D8E 78                    4694 	.db	120
      001D8F 02                    4695 	.sleb128	2
      001D90 00 00 92 E0           4696 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$571)
      001D94 00 00 92 ED           4697 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$574)
      001D98 00 02                 4698 	.dw	2
      001D9A 78                    4699 	.db	120
      001D9B 02                    4700 	.sleb128	2
      001D9C 00 00 92 DF           4701 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$570)
      001DA0 00 00 92 E0           4702 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$571)
      001DA4 00 02                 4703 	.dw	2
      001DA6 78                    4704 	.db	120
      001DA7 04                    4705 	.sleb128	4
      001DA8 00 00 92 DA           4706 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$569)
      001DAC 00 00 92 DF           4707 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$570)
      001DB0 00 02                 4708 	.dw	2
      001DB2 78                    4709 	.db	120
      001DB3 0A                    4710 	.sleb128	10
      001DB4 00 00 92 D8           4711 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$568)
      001DB8 00 00 92 DA           4712 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$569)
      001DBC 00 02                 4713 	.dw	2
      001DBE 78                    4714 	.db	120
      001DBF 09                    4715 	.sleb128	9
      001DC0 00 00 92 D6           4716 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$567)
      001DC4 00 00 92 D8           4717 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$568)
      001DC8 00 02                 4718 	.dw	2
      001DCA 78                    4719 	.db	120
      001DCB 08                    4720 	.sleb128	8
      001DCC 00 00 92 D4           4721 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$566)
      001DD0 00 00 92 D6           4722 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$567)
      001DD4 00 02                 4723 	.dw	2
      001DD6 78                    4724 	.db	120
      001DD7 07                    4725 	.sleb128	7
      001DD8 00 00 92 D2           4726 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$565)
      001DDC 00 00 92 D4           4727 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$566)
      001DE0 00 02                 4728 	.dw	2
      001DE2 78                    4729 	.db	120
      001DE3 06                    4730 	.sleb128	6
      001DE4 00 00 92 D0           4731 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$564)
      001DE8 00 00 92 D2           4732 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$565)
      001DEC 00 02                 4733 	.dw	2
      001DEE 78                    4734 	.db	120
      001DEF 05                    4735 	.sleb128	5
      001DF0 00 00 92 CE           4736 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$563)
      001DF4 00 00 92 D0           4737 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$564)
      001DF8 00 02                 4738 	.dw	2
      001DFA 78                    4739 	.db	120
      001DFB 04                    4740 	.sleb128	4
      001DFC 00 00 92 CD           4741 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$562)
      001E00 00 00 92 CE           4742 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$563)
      001E04 00 02                 4743 	.dw	2
      001E06 78                    4744 	.db	120
      001E07 02                    4745 	.sleb128	2
      001E08 00 00 92 C5           4746 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$561)
      001E0C 00 00 92 CD           4747 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$562)
      001E10 00 02                 4748 	.dw	2
      001E12 78                    4749 	.db	120
      001E13 02                    4750 	.sleb128	2
      001E14 00 00 92 BD           4751 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$560)
      001E18 00 00 92 C5           4752 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$561)
      001E1C 00 02                 4753 	.dw	2
      001E1E 78                    4754 	.db	120
      001E1F 02                    4755 	.sleb128	2
      001E20 00 00 92 B5           4756 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$559)
      001E24 00 00 92 BD           4757 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$560)
      001E28 00 02                 4758 	.dw	2
      001E2A 78                    4759 	.db	120
      001E2B 02                    4760 	.sleb128	2
      001E2C 00 00 92 AD           4761 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$558)
      001E30 00 00 92 B5           4762 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$559)
      001E34 00 02                 4763 	.dw	2
      001E36 78                    4764 	.db	120
      001E37 02                    4765 	.sleb128	2
      001E38 00 00 92 A5           4766 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$557)
      001E3C 00 00 92 AD           4767 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$558)
      001E40 00 02                 4768 	.dw	2
      001E42 78                    4769 	.db	120
      001E43 02                    4770 	.sleb128	2
      001E44 00 00 92 9D           4771 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$556)
      001E48 00 00 92 A5           4772 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$557)
      001E4C 00 02                 4773 	.dw	2
      001E4E 78                    4774 	.db	120
      001E4F 02                    4775 	.sleb128	2
      001E50 00 00 92 95           4776 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$555)
      001E54 00 00 92 9D           4777 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$556)
      001E58 00 02                 4778 	.dw	2
      001E5A 78                    4779 	.db	120
      001E5B 02                    4780 	.sleb128	2
      001E5C 00 00 92 8D           4781 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$554)
      001E60 00 00 92 95           4782 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$555)
      001E64 00 02                 4783 	.dw	2
      001E66 78                    4784 	.db	120
      001E67 02                    4785 	.sleb128	2
      001E68 00 00 92 83           4786 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$552)
      001E6C 00 00 92 8D           4787 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$554)
      001E70 00 02                 4788 	.dw	2
      001E72 78                    4789 	.db	120
      001E73 02                    4790 	.sleb128	2
      001E74 00 00 92 82           4791 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$551)
      001E78 00 00 92 83           4792 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$552)
      001E7C 00 02                 4793 	.dw	2
      001E7E 78                    4794 	.db	120
      001E7F 01                    4795 	.sleb128	1
      001E80 00 00 00 00           4796 	.dw	0,0
      001E84 00 00 00 00           4797 	.dw	0,0
      001E88 00 00 92 79           4798 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$545)
      001E8C 00 00 92 82           4799 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$549)
      001E90 00 02                 4800 	.dw	2
      001E92 78                    4801 	.db	120
      001E93 01                    4802 	.sleb128	1
      001E94 00 00 00 00           4803 	.dw	0,0
      001E98 00 00 00 00           4804 	.dw	0,0
      001E9C 00 00 92 6E           4805 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$539)
      001EA0 00 00 92 79           4806 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$543)
      001EA4 00 02                 4807 	.dw	2
      001EA6 78                    4808 	.db	120
      001EA7 01                    4809 	.sleb128	1
      001EA8 00 00 92 69           4810 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$538)
      001EAC 00 00 92 6E           4811 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$539)
      001EB0 00 02                 4812 	.dw	2
      001EB2 78                    4813 	.db	120
      001EB3 07                    4814 	.sleb128	7
      001EB4 00 00 92 67           4815 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$537)
      001EB8 00 00 92 69           4816 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$538)
      001EBC 00 02                 4817 	.dw	2
      001EBE 78                    4818 	.db	120
      001EBF 06                    4819 	.sleb128	6
      001EC0 00 00 92 65           4820 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$536)
      001EC4 00 00 92 67           4821 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$537)
      001EC8 00 02                 4822 	.dw	2
      001ECA 78                    4823 	.db	120
      001ECB 05                    4824 	.sleb128	5
      001ECC 00 00 92 63           4825 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$535)
      001ED0 00 00 92 65           4826 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$536)
      001ED4 00 02                 4827 	.dw	2
      001ED6 78                    4828 	.db	120
      001ED7 03                    4829 	.sleb128	3
      001ED8 00 00 92 61           4830 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$534)
      001EDC 00 00 92 63           4831 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$535)
      001EE0 00 02                 4832 	.dw	2
      001EE2 78                    4833 	.db	120
      001EE3 02                    4834 	.sleb128	2
      001EE4 00 00 92 5F           4835 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$533)
      001EE8 00 00 92 61           4836 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$534)
      001EEC 00 02                 4837 	.dw	2
      001EEE 78                    4838 	.db	120
      001EEF 01                    4839 	.sleb128	1
      001EF0 00 00 92 56           4840 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$532)
      001EF4 00 00 92 5F           4841 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$533)
      001EF8 00 02                 4842 	.dw	2
      001EFA 78                    4843 	.db	120
      001EFB 01                    4844 	.sleb128	1
      001EFC 00 00 92 4D           4845 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$531)
      001F00 00 00 92 56           4846 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$532)
      001F04 00 02                 4847 	.dw	2
      001F06 78                    4848 	.db	120
      001F07 01                    4849 	.sleb128	1
      001F08 00 00 92 44           4850 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$530)
      001F0C 00 00 92 4D           4851 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$531)
      001F10 00 02                 4852 	.dw	2
      001F12 78                    4853 	.db	120
      001F13 01                    4854 	.sleb128	1
      001F14 00 00 92 3B           4855 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$529)
      001F18 00 00 92 44           4856 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$530)
      001F1C 00 02                 4857 	.dw	2
      001F1E 78                    4858 	.db	120
      001F1F 01                    4859 	.sleb128	1
      001F20 00 00 92 32           4860 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$528)
      001F24 00 00 92 3B           4861 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$529)
      001F28 00 02                 4862 	.dw	2
      001F2A 78                    4863 	.db	120
      001F2B 01                    4864 	.sleb128	1
      001F2C 00 00 92 29           4865 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$527)
      001F30 00 00 92 32           4866 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$528)
      001F34 00 02                 4867 	.dw	2
      001F36 78                    4868 	.db	120
      001F37 01                    4869 	.sleb128	1
      001F38 00 00 92 1A           4870 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$525)
      001F3C 00 00 92 29           4871 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$527)
      001F40 00 02                 4872 	.dw	2
      001F42 78                    4873 	.db	120
      001F43 01                    4874 	.sleb128	1
      001F44 00 00 00 00           4875 	.dw	0,0
      001F48 00 00 00 00           4876 	.dw	0,0
      001F4C 00 00 92 19           4877 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$521)
      001F50 00 00 92 1A           4878 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$523)
      001F54 00 02                 4879 	.dw	2
      001F56 78                    4880 	.db	120
      001F57 01                    4881 	.sleb128	1
      001F58 00 00 92 02           4882 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$512)
      001F5C 00 00 92 19           4883 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$521)
      001F60 00 02                 4884 	.dw	2
      001F62 78                    4885 	.db	120
      001F63 05                    4886 	.sleb128	5
      001F64 00 00 91 F0           4887 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$510)
      001F68 00 00 92 02           4888 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$512)
      001F6C 00 02                 4889 	.dw	2
      001F6E 78                    4890 	.db	120
      001F6F 05                    4891 	.sleb128	5
      001F70 00 00 91 EB           4892 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$509)
      001F74 00 00 91 F0           4893 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$510)
      001F78 00 02                 4894 	.dw	2
      001F7A 78                    4895 	.db	120
      001F7B 0D                    4896 	.sleb128	13
      001F7C 00 00 91 E9           4897 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$508)
      001F80 00 00 91 EB           4898 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$509)
      001F84 00 02                 4899 	.dw	2
      001F86 78                    4900 	.db	120
      001F87 0C                    4901 	.sleb128	12
      001F88 00 00 91 E7           4902 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$507)
      001F8C 00 00 91 E9           4903 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$508)
      001F90 00 02                 4904 	.dw	2
      001F92 78                    4905 	.db	120
      001F93 0B                    4906 	.sleb128	11
      001F94 00 00 91 E5           4907 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$506)
      001F98 00 00 91 E7           4908 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$507)
      001F9C 00 02                 4909 	.dw	2
      001F9E 78                    4910 	.db	120
      001F9F 0A                    4911 	.sleb128	10
      001FA0 00 00 91 E3           4912 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$505)
      001FA4 00 00 91 E5           4913 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$506)
      001FA8 00 02                 4914 	.dw	2
      001FAA 78                    4915 	.db	120
      001FAB 09                    4916 	.sleb128	9
      001FAC 00 00 91 E1           4917 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$504)
      001FB0 00 00 91 E3           4918 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$505)
      001FB4 00 02                 4919 	.dw	2
      001FB6 78                    4920 	.db	120
      001FB7 07                    4921 	.sleb128	7
      001FB8 00 00 91 CE           4922 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$497)
      001FBC 00 00 91 E1           4923 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$504)
      001FC0 00 02                 4924 	.dw	2
      001FC2 78                    4925 	.db	120
      001FC3 05                    4926 	.sleb128	5
      001FC4 00 00 91 BD           4927 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$494)
      001FC8 00 00 91 CE           4928 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$497)
      001FCC 00 02                 4929 	.dw	2
      001FCE 78                    4930 	.db	120
      001FCF 05                    4931 	.sleb128	5
      001FD0 00 00 91 BB           4932 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$493)
      001FD4 00 00 91 BD           4933 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$494)
      001FD8 00 02                 4934 	.dw	2
      001FDA 78                    4935 	.db	120
      001FDB 01                    4936 	.sleb128	1
      001FDC 00 00 00 00           4937 	.dw	0,0
      001FE0 00 00 00 00           4938 	.dw	0,0
      001FE4 00 00 91 B7           4939 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$487)
      001FE8 00 00 91 BB           4940 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$491)
      001FEC 00 02                 4941 	.dw	2
      001FEE 78                    4942 	.db	120
      001FEF 01                    4943 	.sleb128	1
      001FF0 00 00 00 00           4944 	.dw	0,0
      001FF4 00 00 00 00           4945 	.dw	0,0
      001FF8 00 00 91 AE           4946 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$481)
      001FFC 00 00 91 B7           4947 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$485)
      002000 00 02                 4948 	.dw	2
      002002 78                    4949 	.db	120
      002003 01                    4950 	.sleb128	1
      002004 00 00 00 00           4951 	.dw	0,0
      002008 00 00 00 00           4952 	.dw	0,0
      00200C 00 00 91 96           4953 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$468)
      002010 00 00 91 AE           4954 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$479)
      002014 00 02                 4955 	.dw	2
      002016 78                    4956 	.db	120
      002017 01                    4957 	.sleb128	1
      002018 00 00 91 91           4958 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$467)
      00201C 00 00 91 96           4959 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$468)
      002020 00 02                 4960 	.dw	2
      002022 78                    4961 	.db	120
      002023 07                    4962 	.sleb128	7
      002024 00 00 91 8F           4963 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$466)
      002028 00 00 91 91           4964 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$467)
      00202C 00 02                 4965 	.dw	2
      00202E 78                    4966 	.db	120
      00202F 06                    4967 	.sleb128	6
      002030 00 00 91 8D           4968 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$465)
      002034 00 00 91 8F           4969 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$466)
      002038 00 02                 4970 	.dw	2
      00203A 78                    4971 	.db	120
      00203B 05                    4972 	.sleb128	5
      00203C 00 00 91 8B           4973 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$464)
      002040 00 00 91 8D           4974 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$465)
      002044 00 02                 4975 	.dw	2
      002046 78                    4976 	.db	120
      002047 03                    4977 	.sleb128	3
      002048 00 00 91 89           4978 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$463)
      00204C 00 00 91 8B           4979 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$464)
      002050 00 02                 4980 	.dw	2
      002052 78                    4981 	.db	120
      002053 02                    4982 	.sleb128	2
      002054 00 00 91 87           4983 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$462)
      002058 00 00 91 89           4984 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$463)
      00205C 00 02                 4985 	.dw	2
      00205E 78                    4986 	.db	120
      00205F 01                    4987 	.sleb128	1
      002060 00 00 91 78           4988 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$460)
      002064 00 00 91 87           4989 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$462)
      002068 00 02                 4990 	.dw	2
      00206A 78                    4991 	.db	120
      00206B 01                    4992 	.sleb128	1
      00206C 00 00 00 00           4993 	.dw	0,0
      002070 00 00 00 00           4994 	.dw	0,0
      002074 00 00 91 77           4995 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$456)
      002078 00 00 91 78           4996 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$458)
      00207C 00 02                 4997 	.dw	2
      00207E 78                    4998 	.db	120
      00207F 01                    4999 	.sleb128	1
      002080 00 00 91 43           5000 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$444)
      002084 00 00 91 77           5001 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$456)
      002088 00 02                 5002 	.dw	2
      00208A 78                    5003 	.db	120
      00208B 02                    5004 	.sleb128	2
      00208C 00 00 91 3E           5005 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$443)
      002090 00 00 91 43           5006 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$444)
      002094 00 02                 5007 	.dw	2
      002096 78                    5008 	.db	120
      002097 08                    5009 	.sleb128	8
      002098 00 00 91 3C           5010 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$442)
      00209C 00 00 91 3E           5011 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$443)
      0020A0 00 02                 5012 	.dw	2
      0020A2 78                    5013 	.db	120
      0020A3 07                    5014 	.sleb128	7
      0020A4 00 00 91 3A           5015 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$441)
      0020A8 00 00 91 3C           5016 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$442)
      0020AC 00 02                 5017 	.dw	2
      0020AE 78                    5018 	.db	120
      0020AF 06                    5019 	.sleb128	6
      0020B0 00 00 91 38           5020 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$440)
      0020B4 00 00 91 3A           5021 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$441)
      0020B8 00 02                 5022 	.dw	2
      0020BA 78                    5023 	.db	120
      0020BB 04                    5024 	.sleb128	4
      0020BC 00 00 91 36           5025 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$439)
      0020C0 00 00 91 38           5026 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$440)
      0020C4 00 02                 5027 	.dw	2
      0020C6 78                    5028 	.db	120
      0020C7 03                    5029 	.sleb128	3
      0020C8 00 00 91 34           5030 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$438)
      0020CC 00 00 91 36           5031 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$439)
      0020D0 00 02                 5032 	.dw	2
      0020D2 78                    5033 	.db	120
      0020D3 02                    5034 	.sleb128	2
      0020D4 00 00 91 2B           5035 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$437)
      0020D8 00 00 91 34           5036 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$438)
      0020DC 00 02                 5037 	.dw	2
      0020DE 78                    5038 	.db	120
      0020DF 02                    5039 	.sleb128	2
      0020E0 00 00 91 22           5040 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$436)
      0020E4 00 00 91 2B           5041 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$437)
      0020E8 00 02                 5042 	.dw	2
      0020EA 78                    5043 	.db	120
      0020EB 02                    5044 	.sleb128	2
      0020EC 00 00 91 19           5045 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$435)
      0020F0 00 00 91 22           5046 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$436)
      0020F4 00 02                 5047 	.dw	2
      0020F6 78                    5048 	.db	120
      0020F7 02                    5049 	.sleb128	2
      0020F8 00 00 91 10           5050 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$434)
      0020FC 00 00 91 19           5051 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$435)
      002100 00 02                 5052 	.dw	2
      002102 78                    5053 	.db	120
      002103 02                    5054 	.sleb128	2
      002104 00 00 91 07           5055 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$433)
      002108 00 00 91 10           5056 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$434)
      00210C 00 02                 5057 	.dw	2
      00210E 78                    5058 	.db	120
      00210F 02                    5059 	.sleb128	2
      002110 00 00 90 FE           5060 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$432)
      002114 00 00 91 07           5061 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$433)
      002118 00 02                 5062 	.dw	2
      00211A 78                    5063 	.db	120
      00211B 02                    5064 	.sleb128	2
      00211C 00 00 90 F5           5065 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$431)
      002120 00 00 90 FE           5066 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$432)
      002124 00 02                 5067 	.dw	2
      002126 78                    5068 	.db	120
      002127 02                    5069 	.sleb128	2
      002128 00 00 90 EC           5070 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$430)
      00212C 00 00 90 F5           5071 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$431)
      002130 00 02                 5072 	.dw	2
      002132 78                    5073 	.db	120
      002133 02                    5074 	.sleb128	2
      002134 00 00 90 E3           5075 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$429)
      002138 00 00 90 EC           5076 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$430)
      00213C 00 02                 5077 	.dw	2
      00213E 78                    5078 	.db	120
      00213F 02                    5079 	.sleb128	2
      002140 00 00 90 DA           5080 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$428)
      002144 00 00 90 E3           5081 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$429)
      002148 00 02                 5082 	.dw	2
      00214A 78                    5083 	.db	120
      00214B 02                    5084 	.sleb128	2
      00214C 00 00 90 CA           5085 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$426)
      002150 00 00 90 DA           5086 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$428)
      002154 00 02                 5087 	.dw	2
      002156 78                    5088 	.db	120
      002157 02                    5089 	.sleb128	2
      002158 00 00 90 C9           5090 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$425)
      00215C 00 00 90 CA           5091 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$426)
      002160 00 02                 5092 	.dw	2
      002162 78                    5093 	.db	120
      002163 01                    5094 	.sleb128	1
      002164 00 00 00 00           5095 	.dw	0,0
      002168 00 00 00 00           5096 	.dw	0,0
      00216C 00 00 90 C8           5097 	.dw	0,(Sstm8s_clk$CLK_ITConfig$421)
      002170 00 00 90 C9           5098 	.dw	0,(Sstm8s_clk$CLK_ITConfig$423)
      002174 00 02                 5099 	.dw	2
      002176 78                    5100 	.db	120
      002177 01                    5101 	.sleb128	1
      002178 00 00 90 7B           5102 	.dw	0,(Sstm8s_clk$CLK_ITConfig$399)
      00217C 00 00 90 C8           5103 	.dw	0,(Sstm8s_clk$CLK_ITConfig$421)
      002180 00 02                 5104 	.dw	2
      002182 78                    5105 	.db	120
      002183 02                    5106 	.sleb128	2
      002184 00 00 90 7A           5107 	.dw	0,(Sstm8s_clk$CLK_ITConfig$398)
      002188 00 00 90 7B           5108 	.dw	0,(Sstm8s_clk$CLK_ITConfig$399)
      00218C 00 02                 5109 	.dw	2
      00218E 78                    5110 	.db	120
      00218F 03                    5111 	.sleb128	3
      002190 00 00 90 75           5112 	.dw	0,(Sstm8s_clk$CLK_ITConfig$397)
      002194 00 00 90 7A           5113 	.dw	0,(Sstm8s_clk$CLK_ITConfig$398)
      002198 00 02                 5114 	.dw	2
      00219A 78                    5115 	.db	120
      00219B 09                    5116 	.sleb128	9
      00219C 00 00 90 73           5117 	.dw	0,(Sstm8s_clk$CLK_ITConfig$396)
      0021A0 00 00 90 75           5118 	.dw	0,(Sstm8s_clk$CLK_ITConfig$397)
      0021A4 00 02                 5119 	.dw	2
      0021A6 78                    5120 	.db	120
      0021A7 08                    5121 	.sleb128	8
      0021A8 00 00 90 71           5122 	.dw	0,(Sstm8s_clk$CLK_ITConfig$395)
      0021AC 00 00 90 73           5123 	.dw	0,(Sstm8s_clk$CLK_ITConfig$396)
      0021B0 00 02                 5124 	.dw	2
      0021B2 78                    5125 	.db	120
      0021B3 07                    5126 	.sleb128	7
      0021B4 00 00 90 6F           5127 	.dw	0,(Sstm8s_clk$CLK_ITConfig$394)
      0021B8 00 00 90 71           5128 	.dw	0,(Sstm8s_clk$CLK_ITConfig$395)
      0021BC 00 02                 5129 	.dw	2
      0021BE 78                    5130 	.db	120
      0021BF 05                    5131 	.sleb128	5
      0021C0 00 00 90 6D           5132 	.dw	0,(Sstm8s_clk$CLK_ITConfig$393)
      0021C4 00 00 90 6F           5133 	.dw	0,(Sstm8s_clk$CLK_ITConfig$394)
      0021C8 00 02                 5134 	.dw	2
      0021CA 78                    5135 	.db	120
      0021CB 04                    5136 	.sleb128	4
      0021CC 00 00 90 6B           5137 	.dw	0,(Sstm8s_clk$CLK_ITConfig$392)
      0021D0 00 00 90 6D           5138 	.dw	0,(Sstm8s_clk$CLK_ITConfig$393)
      0021D4 00 02                 5139 	.dw	2
      0021D6 78                    5140 	.db	120
      0021D7 03                    5141 	.sleb128	3
      0021D8 00 00 90 5D           5142 	.dw	0,(Sstm8s_clk$CLK_ITConfig$391)
      0021DC 00 00 90 6B           5143 	.dw	0,(Sstm8s_clk$CLK_ITConfig$392)
      0021E0 00 02                 5144 	.dw	2
      0021E2 78                    5145 	.db	120
      0021E3 02                    5146 	.sleb128	2
      0021E4 00 00 90 58           5147 	.dw	0,(Sstm8s_clk$CLK_ITConfig$390)
      0021E8 00 00 90 5D           5148 	.dw	0,(Sstm8s_clk$CLK_ITConfig$391)
      0021EC 00 02                 5149 	.dw	2
      0021EE 78                    5150 	.db	120
      0021EF 02                    5151 	.sleb128	2
      0021F0 00 00 90 53           5152 	.dw	0,(Sstm8s_clk$CLK_ITConfig$389)
      0021F4 00 00 90 58           5153 	.dw	0,(Sstm8s_clk$CLK_ITConfig$390)
      0021F8 00 02                 5154 	.dw	2
      0021FA 78                    5155 	.db	120
      0021FB 03                    5156 	.sleb128	3
      0021FC 00 00 90 50           5157 	.dw	0,(Sstm8s_clk$CLK_ITConfig$388)
      002200 00 00 90 53           5158 	.dw	0,(Sstm8s_clk$CLK_ITConfig$389)
      002204 00 02                 5159 	.dw	2
      002206 78                    5160 	.db	120
      002207 02                    5161 	.sleb128	2
      002208 00 00 90 4B           5162 	.dw	0,(Sstm8s_clk$CLK_ITConfig$387)
      00220C 00 00 90 50           5163 	.dw	0,(Sstm8s_clk$CLK_ITConfig$388)
      002210 00 02                 5164 	.dw	2
      002212 78                    5165 	.db	120
      002213 03                    5166 	.sleb128	3
      002214 00 00 90 4A           5167 	.dw	0,(Sstm8s_clk$CLK_ITConfig$386)
      002218 00 00 90 4B           5168 	.dw	0,(Sstm8s_clk$CLK_ITConfig$387)
      00221C 00 02                 5169 	.dw	2
      00221E 78                    5170 	.db	120
      00221F 02                    5171 	.sleb128	2
      002220 00 00 90 3E           5172 	.dw	0,(Sstm8s_clk$CLK_ITConfig$384)
      002224 00 00 90 4A           5173 	.dw	0,(Sstm8s_clk$CLK_ITConfig$386)
      002228 00 02                 5174 	.dw	2
      00222A 78                    5175 	.db	120
      00222B 02                    5176 	.sleb128	2
      00222C 00 00 90 39           5177 	.dw	0,(Sstm8s_clk$CLK_ITConfig$383)
      002230 00 00 90 3E           5178 	.dw	0,(Sstm8s_clk$CLK_ITConfig$384)
      002234 00 02                 5179 	.dw	2
      002236 78                    5180 	.db	120
      002237 08                    5181 	.sleb128	8
      002238 00 00 90 37           5182 	.dw	0,(Sstm8s_clk$CLK_ITConfig$382)
      00223C 00 00 90 39           5183 	.dw	0,(Sstm8s_clk$CLK_ITConfig$383)
      002240 00 02                 5184 	.dw	2
      002242 78                    5185 	.db	120
      002243 07                    5186 	.sleb128	7
      002244 00 00 90 35           5187 	.dw	0,(Sstm8s_clk$CLK_ITConfig$381)
      002248 00 00 90 37           5188 	.dw	0,(Sstm8s_clk$CLK_ITConfig$382)
      00224C 00 02                 5189 	.dw	2
      00224E 78                    5190 	.db	120
      00224F 06                    5191 	.sleb128	6
      002250 00 00 90 33           5192 	.dw	0,(Sstm8s_clk$CLK_ITConfig$380)
      002254 00 00 90 35           5193 	.dw	0,(Sstm8s_clk$CLK_ITConfig$381)
      002258 00 02                 5194 	.dw	2
      00225A 78                    5195 	.db	120
      00225B 04                    5196 	.sleb128	4
      00225C 00 00 90 31           5197 	.dw	0,(Sstm8s_clk$CLK_ITConfig$379)
      002260 00 00 90 33           5198 	.dw	0,(Sstm8s_clk$CLK_ITConfig$380)
      002264 00 02                 5199 	.dw	2
      002266 78                    5200 	.db	120
      002267 03                    5201 	.sleb128	3
      002268 00 00 90 2F           5202 	.dw	0,(Sstm8s_clk$CLK_ITConfig$378)
      00226C 00 00 90 31           5203 	.dw	0,(Sstm8s_clk$CLK_ITConfig$379)
      002270 00 02                 5204 	.dw	2
      002272 78                    5205 	.db	120
      002273 02                    5206 	.sleb128	2
      002274 00 00 90 20           5207 	.dw	0,(Sstm8s_clk$CLK_ITConfig$376)
      002278 00 00 90 2F           5208 	.dw	0,(Sstm8s_clk$CLK_ITConfig$378)
      00227C 00 02                 5209 	.dw	2
      00227E 78                    5210 	.db	120
      00227F 02                    5211 	.sleb128	2
      002280 00 00 90 1F           5212 	.dw	0,(Sstm8s_clk$CLK_ITConfig$375)
      002284 00 00 90 20           5213 	.dw	0,(Sstm8s_clk$CLK_ITConfig$376)
      002288 00 02                 5214 	.dw	2
      00228A 78                    5215 	.db	120
      00228B 01                    5216 	.sleb128	1
      00228C 00 00 00 00           5217 	.dw	0,0
      002290 00 00 00 00           5218 	.dw	0,0
      002294 00 00 90 06           5219 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$367)
      002298 00 00 90 1F           5220 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$373)
      00229C 00 02                 5221 	.dw	2
      00229E 78                    5222 	.db	120
      00229F 01                    5223 	.sleb128	1
      0022A0 00 00 90 01           5224 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$366)
      0022A4 00 00 90 06           5225 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$367)
      0022A8 00 02                 5226 	.dw	2
      0022AA 78                    5227 	.db	120
      0022AB 07                    5228 	.sleb128	7
      0022AC 00 00 8F FF           5229 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$365)
      0022B0 00 00 90 01           5230 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$366)
      0022B4 00 02                 5231 	.dw	2
      0022B6 78                    5232 	.db	120
      0022B7 06                    5233 	.sleb128	6
      0022B8 00 00 8F FD           5234 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$364)
      0022BC 00 00 8F FF           5235 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$365)
      0022C0 00 02                 5236 	.dw	2
      0022C2 78                    5237 	.db	120
      0022C3 05                    5238 	.sleb128	5
      0022C4 00 00 8F FB           5239 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$363)
      0022C8 00 00 8F FD           5240 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$364)
      0022CC 00 02                 5241 	.dw	2
      0022CE 78                    5242 	.db	120
      0022CF 03                    5243 	.sleb128	3
      0022D0 00 00 8F F9           5244 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$362)
      0022D4 00 00 8F FB           5245 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$363)
      0022D8 00 02                 5246 	.dw	2
      0022DA 78                    5247 	.db	120
      0022DB 02                    5248 	.sleb128	2
      0022DC 00 00 8F F7           5249 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$361)
      0022E0 00 00 8F F9           5250 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$362)
      0022E4 00 02                 5251 	.dw	2
      0022E6 78                    5252 	.db	120
      0022E7 01                    5253 	.sleb128	1
      0022E8 00 00 8F EE           5254 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$360)
      0022EC 00 00 8F F7           5255 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$361)
      0022F0 00 02                 5256 	.dw	2
      0022F2 78                    5257 	.db	120
      0022F3 01                    5258 	.sleb128	1
      0022F4 00 00 8F E5           5259 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$359)
      0022F8 00 00 8F EE           5260 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$360)
      0022FC 00 02                 5261 	.dw	2
      0022FE 78                    5262 	.db	120
      0022FF 01                    5263 	.sleb128	1
      002300 00 00 8F DC           5264 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$358)
      002304 00 00 8F E5           5265 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$359)
      002308 00 02                 5266 	.dw	2
      00230A 78                    5267 	.db	120
      00230B 01                    5268 	.sleb128	1
      00230C 00 00 8F D3           5269 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$357)
      002310 00 00 8F DC           5270 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$358)
      002314 00 02                 5271 	.dw	2
      002316 78                    5272 	.db	120
      002317 01                    5273 	.sleb128	1
      002318 00 00 8F CA           5274 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$356)
      00231C 00 00 8F D3           5275 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$357)
      002320 00 02                 5276 	.dw	2
      002322 78                    5277 	.db	120
      002323 01                    5278 	.sleb128	1
      002324 00 00 8F C1           5279 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$355)
      002328 00 00 8F CA           5280 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$356)
      00232C 00 02                 5281 	.dw	2
      00232E 78                    5282 	.db	120
      00232F 01                    5283 	.sleb128	1
      002330 00 00 8F B8           5284 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$354)
      002334 00 00 8F C1           5285 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$355)
      002338 00 02                 5286 	.dw	2
      00233A 78                    5287 	.db	120
      00233B 01                    5288 	.sleb128	1
      00233C 00 00 8F AF           5289 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$353)
      002340 00 00 8F B8           5290 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$354)
      002344 00 02                 5291 	.dw	2
      002346 78                    5292 	.db	120
      002347 01                    5293 	.sleb128	1
      002348 00 00 8F A6           5294 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$352)
      00234C 00 00 8F AF           5295 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$353)
      002350 00 02                 5296 	.dw	2
      002352 78                    5297 	.db	120
      002353 01                    5298 	.sleb128	1
      002354 00 00 8F 9D           5299 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$351)
      002358 00 00 8F A6           5300 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$352)
      00235C 00 02                 5301 	.dw	2
      00235E 78                    5302 	.db	120
      00235F 01                    5303 	.sleb128	1
      002360 00 00 8F 94           5304 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$350)
      002364 00 00 8F 9D           5305 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$351)
      002368 00 02                 5306 	.dw	2
      00236A 78                    5307 	.db	120
      00236B 01                    5308 	.sleb128	1
      00236C 00 00 8F 84           5309 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$348)
      002370 00 00 8F 94           5310 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$350)
      002374 00 02                 5311 	.dw	2
      002376 78                    5312 	.db	120
      002377 01                    5313 	.sleb128	1
      002378 00 00 00 00           5314 	.dw	0,0
      00237C 00 00 00 00           5315 	.dw	0,0
      002380 00 00 8F 73           5316 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$341)
      002384 00 00 8F 84           5317 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$346)
      002388 00 02                 5318 	.dw	2
      00238A 78                    5319 	.db	120
      00238B 01                    5320 	.sleb128	1
      00238C 00 00 8F 6E           5321 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$340)
      002390 00 00 8F 73           5322 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$341)
      002394 00 02                 5323 	.dw	2
      002396 78                    5324 	.db	120
      002397 07                    5325 	.sleb128	7
      002398 00 00 8F 6C           5326 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$339)
      00239C 00 00 8F 6E           5327 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$340)
      0023A0 00 02                 5328 	.dw	2
      0023A2 78                    5329 	.db	120
      0023A3 06                    5330 	.sleb128	6
      0023A4 00 00 8F 6A           5331 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$338)
      0023A8 00 00 8F 6C           5332 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$339)
      0023AC 00 02                 5333 	.dw	2
      0023AE 78                    5334 	.db	120
      0023AF 05                    5335 	.sleb128	5
      0023B0 00 00 8F 68           5336 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$337)
      0023B4 00 00 8F 6A           5337 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$338)
      0023B8 00 02                 5338 	.dw	2
      0023BA 78                    5339 	.db	120
      0023BB 03                    5340 	.sleb128	3
      0023BC 00 00 8F 66           5341 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$336)
      0023C0 00 00 8F 68           5342 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$337)
      0023C4 00 02                 5343 	.dw	2
      0023C6 78                    5344 	.db	120
      0023C7 02                    5345 	.sleb128	2
      0023C8 00 00 8F 64           5346 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$335)
      0023CC 00 00 8F 66           5347 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$336)
      0023D0 00 02                 5348 	.dw	2
      0023D2 78                    5349 	.db	120
      0023D3 01                    5350 	.sleb128	1
      0023D4 00 00 8F 5B           5351 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$334)
      0023D8 00 00 8F 64           5352 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$335)
      0023DC 00 02                 5353 	.dw	2
      0023DE 78                    5354 	.db	120
      0023DF 01                    5355 	.sleb128	1
      0023E0 00 00 8F 52           5356 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$333)
      0023E4 00 00 8F 5B           5357 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$334)
      0023E8 00 02                 5358 	.dw	2
      0023EA 78                    5359 	.db	120
      0023EB 01                    5360 	.sleb128	1
      0023EC 00 00 8F 42           5361 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$331)
      0023F0 00 00 8F 52           5362 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$333)
      0023F4 00 02                 5363 	.dw	2
      0023F6 78                    5364 	.db	120
      0023F7 01                    5365 	.sleb128	1
      0023F8 00 00 00 00           5366 	.dw	0,0
      0023FC 00 00 00 00           5367 	.dw	0,0
      002400 00 00 8F 41           5368 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$327)
      002404 00 00 8F 42           5369 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$329)
      002408 00 02                 5370 	.dw	2
      00240A 78                    5371 	.db	120
      00240B 01                    5372 	.sleb128	1
      00240C 00 00 8F 36           5373 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$321)
      002410 00 00 8F 41           5374 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$327)
      002414 00 02                 5375 	.dw	2
      002416 78                    5376 	.db	120
      002417 04                    5377 	.sleb128	4
      002418 00 00 8F 18           5378 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$316)
      00241C 00 00 8F 36           5379 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$321)
      002420 00 02                 5380 	.dw	2
      002422 78                    5381 	.db	120
      002423 04                    5382 	.sleb128	4
      002424 00 00 8E FA           5383 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$311)
      002428 00 00 8F 18           5384 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$316)
      00242C 00 02                 5385 	.dw	2
      00242E 78                    5386 	.db	120
      00242F 04                    5387 	.sleb128	4
      002430 00 00 8E 40           5388 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$257)
      002434 00 00 8E FA           5389 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$311)
      002438 00 02                 5390 	.dw	2
      00243A 78                    5391 	.db	120
      00243B 04                    5392 	.sleb128	4
      00243C 00 00 8E 3B           5393 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$256)
      002440 00 00 8E 40           5394 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$257)
      002444 00 02                 5395 	.dw	2
      002446 78                    5396 	.db	120
      002447 0A                    5397 	.sleb128	10
      002448 00 00 8E 39           5398 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$255)
      00244C 00 00 8E 3B           5399 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$256)
      002450 00 02                 5400 	.dw	2
      002452 78                    5401 	.db	120
      002453 09                    5402 	.sleb128	9
      002454 00 00 8E 37           5403 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$254)
      002458 00 00 8E 39           5404 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$255)
      00245C 00 02                 5405 	.dw	2
      00245E 78                    5406 	.db	120
      00245F 08                    5407 	.sleb128	8
      002460 00 00 8E 35           5408 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$253)
      002464 00 00 8E 37           5409 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$254)
      002468 00 02                 5410 	.dw	2
      00246A 78                    5411 	.db	120
      00246B 06                    5412 	.sleb128	6
      00246C 00 00 8E 33           5413 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$252)
      002470 00 00 8E 35           5414 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$253)
      002474 00 02                 5415 	.dw	2
      002476 78                    5416 	.db	120
      002477 05                    5417 	.sleb128	5
      002478 00 00 8E 31           5418 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$251)
      00247C 00 00 8E 33           5419 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$252)
      002480 00 02                 5420 	.dw	2
      002482 78                    5421 	.db	120
      002483 04                    5422 	.sleb128	4
      002484 00 00 8E 22           5423 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$249)
      002488 00 00 8E 31           5424 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$251)
      00248C 00 02                 5425 	.dw	2
      00248E 78                    5426 	.db	120
      00248F 04                    5427 	.sleb128	4
      002490 00 00 8E 1D           5428 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$248)
      002494 00 00 8E 22           5429 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$249)
      002498 00 02                 5430 	.dw	2
      00249A 78                    5431 	.db	120
      00249B 0A                    5432 	.sleb128	10
      00249C 00 00 8E 1B           5433 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$247)
      0024A0 00 00 8E 1D           5434 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$248)
      0024A4 00 02                 5435 	.dw	2
      0024A6 78                    5436 	.db	120
      0024A7 09                    5437 	.sleb128	9
      0024A8 00 00 8E 19           5438 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$246)
      0024AC 00 00 8E 1B           5439 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$247)
      0024B0 00 02                 5440 	.dw	2
      0024B2 78                    5441 	.db	120
      0024B3 08                    5442 	.sleb128	8
      0024B4 00 00 8E 17           5443 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$245)
      0024B8 00 00 8E 19           5444 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$246)
      0024BC 00 02                 5445 	.dw	2
      0024BE 78                    5446 	.db	120
      0024BF 06                    5447 	.sleb128	6
      0024C0 00 00 8E 15           5448 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$244)
      0024C4 00 00 8E 17           5449 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$245)
      0024C8 00 02                 5450 	.dw	2
      0024CA 78                    5451 	.db	120
      0024CB 05                    5452 	.sleb128	5
      0024CC 00 00 8E 13           5453 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$243)
      0024D0 00 00 8E 15           5454 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$244)
      0024D4 00 02                 5455 	.dw	2
      0024D6 78                    5456 	.db	120
      0024D7 04                    5457 	.sleb128	4
      0024D8 00 00 8E 04           5458 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$241)
      0024DC 00 00 8E 13           5459 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$243)
      0024E0 00 02                 5460 	.dw	2
      0024E2 78                    5461 	.db	120
      0024E3 04                    5462 	.sleb128	4
      0024E4 00 00 8D FF           5463 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$240)
      0024E8 00 00 8E 04           5464 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$241)
      0024EC 00 02                 5465 	.dw	2
      0024EE 78                    5466 	.db	120
      0024EF 0A                    5467 	.sleb128	10
      0024F0 00 00 8D FD           5468 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$239)
      0024F4 00 00 8D FF           5469 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$240)
      0024F8 00 02                 5470 	.dw	2
      0024FA 78                    5471 	.db	120
      0024FB 09                    5472 	.sleb128	9
      0024FC 00 00 8D FB           5473 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$238)
      002500 00 00 8D FD           5474 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$239)
      002504 00 02                 5475 	.dw	2
      002506 78                    5476 	.db	120
      002507 08                    5477 	.sleb128	8
      002508 00 00 8D F9           5478 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$237)
      00250C 00 00 8D FB           5479 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$238)
      002510 00 02                 5480 	.dw	2
      002512 78                    5481 	.db	120
      002513 06                    5482 	.sleb128	6
      002514 00 00 8D F7           5483 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$236)
      002518 00 00 8D F9           5484 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$237)
      00251C 00 02                 5485 	.dw	2
      00251E 78                    5486 	.db	120
      00251F 05                    5487 	.sleb128	5
      002520 00 00 8D E7           5488 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$235)
      002524 00 00 8D F7           5489 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$236)
      002528 00 02                 5490 	.dw	2
      00252A 78                    5491 	.db	120
      00252B 04                    5492 	.sleb128	4
      00252C 00 00 8D D9           5493 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$233)
      002530 00 00 8D E7           5494 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$235)
      002534 00 02                 5495 	.dw	2
      002536 78                    5496 	.db	120
      002537 04                    5497 	.sleb128	4
      002538 00 00 8D D4           5498 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$232)
      00253C 00 00 8D D9           5499 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$233)
      002540 00 02                 5500 	.dw	2
      002542 78                    5501 	.db	120
      002543 0A                    5502 	.sleb128	10
      002544 00 00 8D D2           5503 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$231)
      002548 00 00 8D D4           5504 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$232)
      00254C 00 02                 5505 	.dw	2
      00254E 78                    5506 	.db	120
      00254F 09                    5507 	.sleb128	9
      002550 00 00 8D D0           5508 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$230)
      002554 00 00 8D D2           5509 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$231)
      002558 00 02                 5510 	.dw	2
      00255A 78                    5511 	.db	120
      00255B 08                    5512 	.sleb128	8
      00255C 00 00 8D CE           5513 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$229)
      002560 00 00 8D D0           5514 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$230)
      002564 00 02                 5515 	.dw	2
      002566 78                    5516 	.db	120
      002567 06                    5517 	.sleb128	6
      002568 00 00 8D CC           5518 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$228)
      00256C 00 00 8D CE           5519 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$229)
      002570 00 02                 5520 	.dw	2
      002572 78                    5521 	.db	120
      002573 05                    5522 	.sleb128	5
      002574 00 00 8D CA           5523 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$227)
      002578 00 00 8D CC           5524 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$228)
      00257C 00 02                 5525 	.dw	2
      00257E 78                    5526 	.db	120
      00257F 04                    5527 	.sleb128	4
      002580 00 00 8D C1           5528 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$226)
      002584 00 00 8D CA           5529 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$227)
      002588 00 02                 5530 	.dw	2
      00258A 78                    5531 	.db	120
      00258B 04                    5532 	.sleb128	4
      00258C 00 00 8D B8           5533 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$225)
      002590 00 00 8D C1           5534 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$226)
      002594 00 02                 5535 	.dw	2
      002596 78                    5536 	.db	120
      002597 04                    5537 	.sleb128	4
      002598 00 00 8D AA           5538 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$222)
      00259C 00 00 8D B8           5539 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$225)
      0025A0 00 02                 5540 	.dw	2
      0025A2 78                    5541 	.db	120
      0025A3 04                    5542 	.sleb128	4
      0025A4 00 00 8D A8           5543 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$221)
      0025A8 00 00 8D AA           5544 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$222)
      0025AC 00 02                 5545 	.dw	2
      0025AE 78                    5546 	.db	120
      0025AF 01                    5547 	.sleb128	1
      0025B0 00 00 00 00           5548 	.dw	0,0
      0025B4 00 00 00 00           5549 	.dw	0,0
      0025B8 00 00 8D A7           5550 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$217)
      0025BC 00 00 8D A8           5551 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$219)
      0025C0 00 02                 5552 	.dw	2
      0025C2 78                    5553 	.db	120
      0025C3 01                    5554 	.sleb128	1
      0025C4 00 00 8D 5F           5555 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$195)
      0025C8 00 00 8D A7           5556 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$217)
      0025CC 00 02                 5557 	.dw	2
      0025CE 78                    5558 	.db	120
      0025CF 03                    5559 	.sleb128	3
      0025D0 00 00 8D 5A           5560 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$194)
      0025D4 00 00 8D 5F           5561 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$195)
      0025D8 00 02                 5562 	.dw	2
      0025DA 78                    5563 	.db	120
      0025DB 04                    5564 	.sleb128	4
      0025DC 00 00 8D 55           5565 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$192)
      0025E0 00 00 8D 5A           5566 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$194)
      0025E4 00 02                 5567 	.dw	2
      0025E6 78                    5568 	.db	120
      0025E7 03                    5569 	.sleb128	3
      0025E8 00 00 8D 50           5570 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$191)
      0025EC 00 00 8D 55           5571 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$192)
      0025F0 00 02                 5572 	.dw	2
      0025F2 78                    5573 	.db	120
      0025F3 09                    5574 	.sleb128	9
      0025F4 00 00 8D 4E           5575 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$190)
      0025F8 00 00 8D 50           5576 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$191)
      0025FC 00 02                 5577 	.dw	2
      0025FE 78                    5578 	.db	120
      0025FF 08                    5579 	.sleb128	8
      002600 00 00 8D 4C           5580 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$189)
      002604 00 00 8D 4E           5581 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$190)
      002608 00 02                 5582 	.dw	2
      00260A 78                    5583 	.db	120
      00260B 07                    5584 	.sleb128	7
      00260C 00 00 8D 4A           5585 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$188)
      002610 00 00 8D 4C           5586 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$189)
      002614 00 02                 5587 	.dw	2
      002616 78                    5588 	.db	120
      002617 05                    5589 	.sleb128	5
      002618 00 00 8D 48           5590 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$187)
      00261C 00 00 8D 4A           5591 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$188)
      002620 00 02                 5592 	.dw	2
      002622 78                    5593 	.db	120
      002623 04                    5594 	.sleb128	4
      002624 00 00 8D 46           5595 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$186)
      002628 00 00 8D 48           5596 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$187)
      00262C 00 02                 5597 	.dw	2
      00262E 78                    5598 	.db	120
      00262F 03                    5599 	.sleb128	3
      002630 00 00 8D 3D           5600 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$185)
      002634 00 00 8D 46           5601 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$186)
      002638 00 02                 5602 	.dw	2
      00263A 78                    5603 	.db	120
      00263B 03                    5604 	.sleb128	3
      00263C 00 00 8D 34           5605 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$184)
      002640 00 00 8D 3D           5606 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$185)
      002644 00 02                 5607 	.dw	2
      002646 78                    5608 	.db	120
      002647 03                    5609 	.sleb128	3
      002648 00 00 8D 2B           5610 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$183)
      00264C 00 00 8D 34           5611 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$184)
      002650 00 02                 5612 	.dw	2
      002652 78                    5613 	.db	120
      002653 03                    5614 	.sleb128	3
      002654 00 00 8D 22           5615 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$182)
      002658 00 00 8D 2B           5616 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$183)
      00265C 00 02                 5617 	.dw	2
      00265E 78                    5618 	.db	120
      00265F 03                    5619 	.sleb128	3
      002660 00 00 8D 06           5620 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$181)
      002664 00 00 8D 22           5621 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$182)
      002668 00 02                 5622 	.dw	2
      00266A 78                    5623 	.db	120
      00266B 03                    5624 	.sleb128	3
      00266C 00 00 8C F3           5625 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$180)
      002670 00 00 8D 06           5626 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$181)
      002674 00 02                 5627 	.dw	2
      002676 78                    5628 	.db	120
      002677 03                    5629 	.sleb128	3
      002678 00 00 8C E5           5630 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$179)
      00267C 00 00 8C F3           5631 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$180)
      002680 00 02                 5632 	.dw	2
      002682 78                    5633 	.db	120
      002683 03                    5634 	.sleb128	3
      002684 00 00 8C D0           5635 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$178)
      002688 00 00 8C E5           5636 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$179)
      00268C 00 02                 5637 	.dw	2
      00268E 78                    5638 	.db	120
      00268F 03                    5639 	.sleb128	3
      002690 00 00 8C C4           5640 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$177)
      002694 00 00 8C D0           5641 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$178)
      002698 00 02                 5642 	.dw	2
      00269A 78                    5643 	.db	120
      00269B 03                    5644 	.sleb128	3
      00269C 00 00 8C B5           5645 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$175)
      0026A0 00 00 8C C4           5646 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$177)
      0026A4 00 02                 5647 	.dw	2
      0026A6 78                    5648 	.db	120
      0026A7 03                    5649 	.sleb128	3
      0026A8 00 00 8C B0           5650 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$174)
      0026AC 00 00 8C B5           5651 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$175)
      0026B0 00 02                 5652 	.dw	2
      0026B2 78                    5653 	.db	120
      0026B3 09                    5654 	.sleb128	9
      0026B4 00 00 8C AE           5655 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$173)
      0026B8 00 00 8C B0           5656 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$174)
      0026BC 00 02                 5657 	.dw	2
      0026BE 78                    5658 	.db	120
      0026BF 08                    5659 	.sleb128	8
      0026C0 00 00 8C AC           5660 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$172)
      0026C4 00 00 8C AE           5661 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$173)
      0026C8 00 02                 5662 	.dw	2
      0026CA 78                    5663 	.db	120
      0026CB 07                    5664 	.sleb128	7
      0026CC 00 00 8C AA           5665 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$171)
      0026D0 00 00 8C AC           5666 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$172)
      0026D4 00 02                 5667 	.dw	2
      0026D6 78                    5668 	.db	120
      0026D7 05                    5669 	.sleb128	5
      0026D8 00 00 8C A8           5670 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$170)
      0026DC 00 00 8C AA           5671 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$171)
      0026E0 00 02                 5672 	.dw	2
      0026E2 78                    5673 	.db	120
      0026E3 04                    5674 	.sleb128	4
      0026E4 00 00 8C A6           5675 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$169)
      0026E8 00 00 8C A8           5676 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$170)
      0026EC 00 02                 5677 	.dw	2
      0026EE 78                    5678 	.db	120
      0026EF 03                    5679 	.sleb128	3
      0026F0 00 00 8C 97           5680 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$167)
      0026F4 00 00 8C A6           5681 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$169)
      0026F8 00 02                 5682 	.dw	2
      0026FA 78                    5683 	.db	120
      0026FB 03                    5684 	.sleb128	3
      0026FC 00 00 8C 96           5685 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$166)
      002700 00 00 8C 97           5686 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$167)
      002704 00 02                 5687 	.dw	2
      002706 78                    5688 	.db	120
      002707 01                    5689 	.sleb128	1
      002708 00 00 00 00           5690 	.dw	0,0
      00270C 00 00 00 00           5691 	.dw	0,0
      002710 00 00 8C 7E           5692 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$153)
      002714 00 00 8C 96           5693 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$164)
      002718 00 02                 5694 	.dw	2
      00271A 78                    5695 	.db	120
      00271B 01                    5696 	.sleb128	1
      00271C 00 00 8C 79           5697 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$152)
      002720 00 00 8C 7E           5698 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$153)
      002724 00 02                 5699 	.dw	2
      002726 78                    5700 	.db	120
      002727 07                    5701 	.sleb128	7
      002728 00 00 8C 77           5702 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$151)
      00272C 00 00 8C 79           5703 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$152)
      002730 00 02                 5704 	.dw	2
      002732 78                    5705 	.db	120
      002733 06                    5706 	.sleb128	6
      002734 00 00 8C 75           5707 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$150)
      002738 00 00 8C 77           5708 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$151)
      00273C 00 02                 5709 	.dw	2
      00273E 78                    5710 	.db	120
      00273F 05                    5711 	.sleb128	5
      002740 00 00 8C 73           5712 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$149)
      002744 00 00 8C 75           5713 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$150)
      002748 00 02                 5714 	.dw	2
      00274A 78                    5715 	.db	120
      00274B 04                    5716 	.sleb128	4
      00274C 00 00 8C 71           5717 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$148)
      002750 00 00 8C 73           5718 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$149)
      002754 00 02                 5719 	.dw	2
      002756 78                    5720 	.db	120
      002757 02                    5721 	.sleb128	2
      002758 00 00 8C 6F           5722 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$147)
      00275C 00 00 8C 71           5723 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$148)
      002760 00 02                 5724 	.dw	2
      002762 78                    5725 	.db	120
      002763 01                    5726 	.sleb128	1
      002764 00 00 8C 60           5727 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$145)
      002768 00 00 8C 6F           5728 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$147)
      00276C 00 02                 5729 	.dw	2
      00276E 78                    5730 	.db	120
      00276F 01                    5731 	.sleb128	1
      002770 00 00 00 00           5732 	.dw	0,0
      002774 00 00 00 00           5733 	.dw	0,0
      002778 00 00 8C 48           5734 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$132)
      00277C 00 00 8C 60           5735 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$143)
      002780 00 02                 5736 	.dw	2
      002782 78                    5737 	.db	120
      002783 01                    5738 	.sleb128	1
      002784 00 00 8C 43           5739 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$131)
      002788 00 00 8C 48           5740 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$132)
      00278C 00 02                 5741 	.dw	2
      00278E 78                    5742 	.db	120
      00278F 07                    5743 	.sleb128	7
      002790 00 00 8C 41           5744 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$130)
      002794 00 00 8C 43           5745 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$131)
      002798 00 02                 5746 	.dw	2
      00279A 78                    5747 	.db	120
      00279B 06                    5748 	.sleb128	6
      00279C 00 00 8C 3F           5749 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$129)
      0027A0 00 00 8C 41           5750 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$130)
      0027A4 00 02                 5751 	.dw	2
      0027A6 78                    5752 	.db	120
      0027A7 05                    5753 	.sleb128	5
      0027A8 00 00 8C 3D           5754 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$128)
      0027AC 00 00 8C 3F           5755 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$129)
      0027B0 00 02                 5756 	.dw	2
      0027B2 78                    5757 	.db	120
      0027B3 04                    5758 	.sleb128	4
      0027B4 00 00 8C 3B           5759 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$127)
      0027B8 00 00 8C 3D           5760 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$128)
      0027BC 00 02                 5761 	.dw	2
      0027BE 78                    5762 	.db	120
      0027BF 02                    5763 	.sleb128	2
      0027C0 00 00 8C 39           5764 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$126)
      0027C4 00 00 8C 3B           5765 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$127)
      0027C8 00 02                 5766 	.dw	2
      0027CA 78                    5767 	.db	120
      0027CB 01                    5768 	.sleb128	1
      0027CC 00 00 8C 2A           5769 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$124)
      0027D0 00 00 8C 39           5770 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$126)
      0027D4 00 02                 5771 	.dw	2
      0027D6 78                    5772 	.db	120
      0027D7 01                    5773 	.sleb128	1
      0027D8 00 00 00 00           5774 	.dw	0,0
      0027DC 00 00 00 00           5775 	.dw	0,0
      0027E0 00 00 8C 12           5776 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$111)
      0027E4 00 00 8C 2A           5777 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$122)
      0027E8 00 02                 5778 	.dw	2
      0027EA 78                    5779 	.db	120
      0027EB 01                    5780 	.sleb128	1
      0027EC 00 00 8C 0D           5781 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$110)
      0027F0 00 00 8C 12           5782 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$111)
      0027F4 00 02                 5783 	.dw	2
      0027F6 78                    5784 	.db	120
      0027F7 07                    5785 	.sleb128	7
      0027F8 00 00 8C 0B           5786 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$109)
      0027FC 00 00 8C 0D           5787 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$110)
      002800 00 02                 5788 	.dw	2
      002802 78                    5789 	.db	120
      002803 06                    5790 	.sleb128	6
      002804 00 00 8C 09           5791 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$108)
      002808 00 00 8C 0B           5792 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$109)
      00280C 00 02                 5793 	.dw	2
      00280E 78                    5794 	.db	120
      00280F 05                    5795 	.sleb128	5
      002810 00 00 8C 07           5796 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$107)
      002814 00 00 8C 09           5797 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$108)
      002818 00 02                 5798 	.dw	2
      00281A 78                    5799 	.db	120
      00281B 04                    5800 	.sleb128	4
      00281C 00 00 8C 05           5801 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$106)
      002820 00 00 8C 07           5802 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$107)
      002824 00 02                 5803 	.dw	2
      002826 78                    5804 	.db	120
      002827 02                    5805 	.sleb128	2
      002828 00 00 8C 03           5806 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$105)
      00282C 00 00 8C 05           5807 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$106)
      002830 00 02                 5808 	.dw	2
      002832 78                    5809 	.db	120
      002833 01                    5810 	.sleb128	1
      002834 00 00 8B F4           5811 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$103)
      002838 00 00 8C 03           5812 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$105)
      00283C 00 02                 5813 	.dw	2
      00283E 78                    5814 	.db	120
      00283F 01                    5815 	.sleb128	1
      002840 00 00 00 00           5816 	.dw	0,0
      002844 00 00 00 00           5817 	.dw	0,0
      002848 00 00 8B DC           5818 	.dw	0,(Sstm8s_clk$CLK_LSICmd$90)
      00284C 00 00 8B F4           5819 	.dw	0,(Sstm8s_clk$CLK_LSICmd$101)
      002850 00 02                 5820 	.dw	2
      002852 78                    5821 	.db	120
      002853 01                    5822 	.sleb128	1
      002854 00 00 8B D7           5823 	.dw	0,(Sstm8s_clk$CLK_LSICmd$89)
      002858 00 00 8B DC           5824 	.dw	0,(Sstm8s_clk$CLK_LSICmd$90)
      00285C 00 02                 5825 	.dw	2
      00285E 78                    5826 	.db	120
      00285F 07                    5827 	.sleb128	7
      002860 00 00 8B D5           5828 	.dw	0,(Sstm8s_clk$CLK_LSICmd$88)
      002864 00 00 8B D7           5829 	.dw	0,(Sstm8s_clk$CLK_LSICmd$89)
      002868 00 02                 5830 	.dw	2
      00286A 78                    5831 	.db	120
      00286B 06                    5832 	.sleb128	6
      00286C 00 00 8B D3           5833 	.dw	0,(Sstm8s_clk$CLK_LSICmd$87)
      002870 00 00 8B D5           5834 	.dw	0,(Sstm8s_clk$CLK_LSICmd$88)
      002874 00 02                 5835 	.dw	2
      002876 78                    5836 	.db	120
      002877 05                    5837 	.sleb128	5
      002878 00 00 8B D1           5838 	.dw	0,(Sstm8s_clk$CLK_LSICmd$86)
      00287C 00 00 8B D3           5839 	.dw	0,(Sstm8s_clk$CLK_LSICmd$87)
      002880 00 02                 5840 	.dw	2
      002882 78                    5841 	.db	120
      002883 04                    5842 	.sleb128	4
      002884 00 00 8B CF           5843 	.dw	0,(Sstm8s_clk$CLK_LSICmd$85)
      002888 00 00 8B D1           5844 	.dw	0,(Sstm8s_clk$CLK_LSICmd$86)
      00288C 00 02                 5845 	.dw	2
      00288E 78                    5846 	.db	120
      00288F 02                    5847 	.sleb128	2
      002890 00 00 8B CD           5848 	.dw	0,(Sstm8s_clk$CLK_LSICmd$84)
      002894 00 00 8B CF           5849 	.dw	0,(Sstm8s_clk$CLK_LSICmd$85)
      002898 00 02                 5850 	.dw	2
      00289A 78                    5851 	.db	120
      00289B 01                    5852 	.sleb128	1
      00289C 00 00 8B BE           5853 	.dw	0,(Sstm8s_clk$CLK_LSICmd$82)
      0028A0 00 00 8B CD           5854 	.dw	0,(Sstm8s_clk$CLK_LSICmd$84)
      0028A4 00 02                 5855 	.dw	2
      0028A6 78                    5856 	.db	120
      0028A7 01                    5857 	.sleb128	1
      0028A8 00 00 00 00           5858 	.dw	0,0
      0028AC 00 00 00 00           5859 	.dw	0,0
      0028B0 00 00 8B A6           5860 	.dw	0,(Sstm8s_clk$CLK_HSICmd$69)
      0028B4 00 00 8B BE           5861 	.dw	0,(Sstm8s_clk$CLK_HSICmd$80)
      0028B8 00 02                 5862 	.dw	2
      0028BA 78                    5863 	.db	120
      0028BB 01                    5864 	.sleb128	1
      0028BC 00 00 8B A1           5865 	.dw	0,(Sstm8s_clk$CLK_HSICmd$68)
      0028C0 00 00 8B A6           5866 	.dw	0,(Sstm8s_clk$CLK_HSICmd$69)
      0028C4 00 02                 5867 	.dw	2
      0028C6 78                    5868 	.db	120
      0028C7 07                    5869 	.sleb128	7
      0028C8 00 00 8B 9F           5870 	.dw	0,(Sstm8s_clk$CLK_HSICmd$67)
      0028CC 00 00 8B A1           5871 	.dw	0,(Sstm8s_clk$CLK_HSICmd$68)
      0028D0 00 02                 5872 	.dw	2
      0028D2 78                    5873 	.db	120
      0028D3 06                    5874 	.sleb128	6
      0028D4 00 00 8B 9D           5875 	.dw	0,(Sstm8s_clk$CLK_HSICmd$66)
      0028D8 00 00 8B 9F           5876 	.dw	0,(Sstm8s_clk$CLK_HSICmd$67)
      0028DC 00 02                 5877 	.dw	2
      0028DE 78                    5878 	.db	120
      0028DF 05                    5879 	.sleb128	5
      0028E0 00 00 8B 9B           5880 	.dw	0,(Sstm8s_clk$CLK_HSICmd$65)
      0028E4 00 00 8B 9D           5881 	.dw	0,(Sstm8s_clk$CLK_HSICmd$66)
      0028E8 00 02                 5882 	.dw	2
      0028EA 78                    5883 	.db	120
      0028EB 04                    5884 	.sleb128	4
      0028EC 00 00 8B 99           5885 	.dw	0,(Sstm8s_clk$CLK_HSICmd$64)
      0028F0 00 00 8B 9B           5886 	.dw	0,(Sstm8s_clk$CLK_HSICmd$65)
      0028F4 00 02                 5887 	.dw	2
      0028F6 78                    5888 	.db	120
      0028F7 02                    5889 	.sleb128	2
      0028F8 00 00 8B 97           5890 	.dw	0,(Sstm8s_clk$CLK_HSICmd$63)
      0028FC 00 00 8B 99           5891 	.dw	0,(Sstm8s_clk$CLK_HSICmd$64)
      002900 00 02                 5892 	.dw	2
      002902 78                    5893 	.db	120
      002903 01                    5894 	.sleb128	1
      002904 00 00 8B 88           5895 	.dw	0,(Sstm8s_clk$CLK_HSICmd$61)
      002908 00 00 8B 97           5896 	.dw	0,(Sstm8s_clk$CLK_HSICmd$63)
      00290C 00 02                 5897 	.dw	2
      00290E 78                    5898 	.db	120
      00290F 01                    5899 	.sleb128	1
      002910 00 00 00 00           5900 	.dw	0,0
      002914 00 00 00 00           5901 	.dw	0,0
      002918 00 00 8B 70           5902 	.dw	0,(Sstm8s_clk$CLK_HSECmd$48)
      00291C 00 00 8B 88           5903 	.dw	0,(Sstm8s_clk$CLK_HSECmd$59)
      002920 00 02                 5904 	.dw	2
      002922 78                    5905 	.db	120
      002923 01                    5906 	.sleb128	1
      002924 00 00 8B 6B           5907 	.dw	0,(Sstm8s_clk$CLK_HSECmd$47)
      002928 00 00 8B 70           5908 	.dw	0,(Sstm8s_clk$CLK_HSECmd$48)
      00292C 00 02                 5909 	.dw	2
      00292E 78                    5910 	.db	120
      00292F 07                    5911 	.sleb128	7
      002930 00 00 8B 69           5912 	.dw	0,(Sstm8s_clk$CLK_HSECmd$46)
      002934 00 00 8B 6B           5913 	.dw	0,(Sstm8s_clk$CLK_HSECmd$47)
      002938 00 02                 5914 	.dw	2
      00293A 78                    5915 	.db	120
      00293B 06                    5916 	.sleb128	6
      00293C 00 00 8B 67           5917 	.dw	0,(Sstm8s_clk$CLK_HSECmd$45)
      002940 00 00 8B 69           5918 	.dw	0,(Sstm8s_clk$CLK_HSECmd$46)
      002944 00 02                 5919 	.dw	2
      002946 78                    5920 	.db	120
      002947 05                    5921 	.sleb128	5
      002948 00 00 8B 65           5922 	.dw	0,(Sstm8s_clk$CLK_HSECmd$44)
      00294C 00 00 8B 67           5923 	.dw	0,(Sstm8s_clk$CLK_HSECmd$45)
      002950 00 02                 5924 	.dw	2
      002952 78                    5925 	.db	120
      002953 04                    5926 	.sleb128	4
      002954 00 00 8B 63           5927 	.dw	0,(Sstm8s_clk$CLK_HSECmd$43)
      002958 00 00 8B 65           5928 	.dw	0,(Sstm8s_clk$CLK_HSECmd$44)
      00295C 00 02                 5929 	.dw	2
      00295E 78                    5930 	.db	120
      00295F 02                    5931 	.sleb128	2
      002960 00 00 8B 61           5932 	.dw	0,(Sstm8s_clk$CLK_HSECmd$42)
      002964 00 00 8B 63           5933 	.dw	0,(Sstm8s_clk$CLK_HSECmd$43)
      002968 00 02                 5934 	.dw	2
      00296A 78                    5935 	.db	120
      00296B 01                    5936 	.sleb128	1
      00296C 00 00 8B 52           5937 	.dw	0,(Sstm8s_clk$CLK_HSECmd$40)
      002970 00 00 8B 61           5938 	.dw	0,(Sstm8s_clk$CLK_HSECmd$42)
      002974 00 02                 5939 	.dw	2
      002976 78                    5940 	.db	120
      002977 01                    5941 	.sleb128	1
      002978 00 00 00 00           5942 	.dw	0,0
      00297C 00 00 00 00           5943 	.dw	0,0
      002980 00 00 8B 3A           5944 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$27)
      002984 00 00 8B 52           5945 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$38)
      002988 00 02                 5946 	.dw	2
      00298A 78                    5947 	.db	120
      00298B 01                    5948 	.sleb128	1
      00298C 00 00 8B 35           5949 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$26)
      002990 00 00 8B 3A           5950 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$27)
      002994 00 02                 5951 	.dw	2
      002996 78                    5952 	.db	120
      002997 07                    5953 	.sleb128	7
      002998 00 00 8B 33           5954 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$25)
      00299C 00 00 8B 35           5955 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$26)
      0029A0 00 02                 5956 	.dw	2
      0029A2 78                    5957 	.db	120
      0029A3 06                    5958 	.sleb128	6
      0029A4 00 00 8B 31           5959 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$24)
      0029A8 00 00 8B 33           5960 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$25)
      0029AC 00 02                 5961 	.dw	2
      0029AE 78                    5962 	.db	120
      0029AF 05                    5963 	.sleb128	5
      0029B0 00 00 8B 2F           5964 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$23)
      0029B4 00 00 8B 31           5965 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$24)
      0029B8 00 02                 5966 	.dw	2
      0029BA 78                    5967 	.db	120
      0029BB 04                    5968 	.sleb128	4
      0029BC 00 00 8B 2D           5969 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$22)
      0029C0 00 00 8B 2F           5970 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$23)
      0029C4 00 02                 5971 	.dw	2
      0029C6 78                    5972 	.db	120
      0029C7 02                    5973 	.sleb128	2
      0029C8 00 00 8B 2B           5974 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$21)
      0029CC 00 00 8B 2D           5975 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$22)
      0029D0 00 02                 5976 	.dw	2
      0029D2 78                    5977 	.db	120
      0029D3 01                    5978 	.sleb128	1
      0029D4 00 00 8B 1C           5979 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)
      0029D8 00 00 8B 2B           5980 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$21)
      0029DC 00 02                 5981 	.dw	2
      0029DE 78                    5982 	.db	120
      0029DF 01                    5983 	.sleb128	1
      0029E0 00 00 00 00           5984 	.dw	0,0
      0029E4 00 00 00 00           5985 	.dw	0,0
      0029E8 00 00 8A E2           5986 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      0029EC 00 00 8B 1C           5987 	.dw	0,(Sstm8s_clk$CLK_DeInit$17)
      0029F0 00 02                 5988 	.dw	2
      0029F2 78                    5989 	.db	120
      0029F3 01                    5990 	.sleb128	1
      0029F4 00 00 00 00           5991 	.dw	0,0
      0029F8 00 00 00 00           5992 	.dw	0,0
                                   5993 
                                   5994 	.area .debug_abbrev (NOLOAD)
      00038D                       5995 Ldebug_abbrev:
      00038D 0C                    5996 	.uleb128	12
      00038E 2E                    5997 	.uleb128	46
      00038F 00                    5998 	.db	0
      000390 03                    5999 	.uleb128	3
      000391 08                    6000 	.uleb128	8
      000392 11                    6001 	.uleb128	17
      000393 01                    6002 	.uleb128	1
      000394 12                    6003 	.uleb128	18
      000395 01                    6004 	.uleb128	1
      000396 3F                    6005 	.uleb128	63
      000397 0C                    6006 	.uleb128	12
      000398 40                    6007 	.uleb128	64
      000399 06                    6008 	.uleb128	6
      00039A 49                    6009 	.uleb128	73
      00039B 13                    6010 	.uleb128	19
      00039C 00                    6011 	.uleb128	0
      00039D 00                    6012 	.uleb128	0
      00039E 10                    6013 	.uleb128	16
      00039F 34                    6014 	.uleb128	52
      0003A0 00                    6015 	.db	0
      0003A1 02                    6016 	.uleb128	2
      0003A2 0A                    6017 	.uleb128	10
      0003A3 03                    6018 	.uleb128	3
      0003A4 08                    6019 	.uleb128	8
      0003A5 3F                    6020 	.uleb128	63
      0003A6 0C                    6021 	.uleb128	12
      0003A7 49                    6022 	.uleb128	73
      0003A8 13                    6023 	.uleb128	19
      0003A9 00                    6024 	.uleb128	0
      0003AA 00                    6025 	.uleb128	0
      0003AB 04                    6026 	.uleb128	4
      0003AC 05                    6027 	.uleb128	5
      0003AD 00                    6028 	.db	0
      0003AE 02                    6029 	.uleb128	2
      0003AF 0A                    6030 	.uleb128	10
      0003B0 03                    6031 	.uleb128	3
      0003B1 08                    6032 	.uleb128	8
      0003B2 49                    6033 	.uleb128	73
      0003B3 13                    6034 	.uleb128	19
      0003B4 00                    6035 	.uleb128	0
      0003B5 00                    6036 	.uleb128	0
      0003B6 0E                    6037 	.uleb128	14
      0003B7 01                    6038 	.uleb128	1
      0003B8 01                    6039 	.db	1
      0003B9 01                    6040 	.uleb128	1
      0003BA 13                    6041 	.uleb128	19
      0003BB 0B                    6042 	.uleb128	11
      0003BC 0B                    6043 	.uleb128	11
      0003BD 49                    6044 	.uleb128	73
      0003BE 13                    6045 	.uleb128	19
      0003BF 00                    6046 	.uleb128	0
      0003C0 00                    6047 	.uleb128	0
      0003C1 03                    6048 	.uleb128	3
      0003C2 2E                    6049 	.uleb128	46
      0003C3 01                    6050 	.db	1
      0003C4 01                    6051 	.uleb128	1
      0003C5 13                    6052 	.uleb128	19
      0003C6 03                    6053 	.uleb128	3
      0003C7 08                    6054 	.uleb128	8
      0003C8 11                    6055 	.uleb128	17
      0003C9 01                    6056 	.uleb128	1
      0003CA 12                    6057 	.uleb128	18
      0003CB 01                    6058 	.uleb128	1
      0003CC 3F                    6059 	.uleb128	63
      0003CD 0C                    6060 	.uleb128	12
      0003CE 40                    6061 	.uleb128	64
      0003CF 06                    6062 	.uleb128	6
      0003D0 00                    6063 	.uleb128	0
      0003D1 00                    6064 	.uleb128	0
      0003D2 0B                    6065 	.uleb128	11
      0003D3 34                    6066 	.uleb128	52
      0003D4 00                    6067 	.db	0
      0003D5 02                    6068 	.uleb128	2
      0003D6 0A                    6069 	.uleb128	10
      0003D7 03                    6070 	.uleb128	3
      0003D8 08                    6071 	.uleb128	8
      0003D9 49                    6072 	.uleb128	73
      0003DA 13                    6073 	.uleb128	19
      0003DB 00                    6074 	.uleb128	0
      0003DC 00                    6075 	.uleb128	0
      0003DD 09                    6076 	.uleb128	9
      0003DE 2E                    6077 	.uleb128	46
      0003DF 01                    6078 	.db	1
      0003E0 01                    6079 	.uleb128	1
      0003E1 13                    6080 	.uleb128	19
      0003E2 03                    6081 	.uleb128	3
      0003E3 08                    6082 	.uleb128	8
      0003E4 11                    6083 	.uleb128	17
      0003E5 01                    6084 	.uleb128	1
      0003E6 12                    6085 	.uleb128	18
      0003E7 01                    6086 	.uleb128	1
      0003E8 3F                    6087 	.uleb128	63
      0003E9 0C                    6088 	.uleb128	12
      0003EA 40                    6089 	.uleb128	64
      0003EB 06                    6090 	.uleb128	6
      0003EC 49                    6091 	.uleb128	73
      0003ED 13                    6092 	.uleb128	19
      0003EE 00                    6093 	.uleb128	0
      0003EF 00                    6094 	.uleb128	0
      0003F0 0D                    6095 	.uleb128	13
      0003F1 26                    6096 	.uleb128	38
      0003F2 00                    6097 	.db	0
      0003F3 49                    6098 	.uleb128	73
      0003F4 13                    6099 	.uleb128	19
      0003F5 00                    6100 	.uleb128	0
      0003F6 00                    6101 	.uleb128	0
      0003F7 08                    6102 	.uleb128	8
      0003F8 0B                    6103 	.uleb128	11
      0003F9 01                    6104 	.db	1
      0003FA 11                    6105 	.uleb128	17
      0003FB 01                    6106 	.uleb128	1
      0003FC 00                    6107 	.uleb128	0
      0003FD 00                    6108 	.uleb128	0
      0003FE 01                    6109 	.uleb128	1
      0003FF 11                    6110 	.uleb128	17
      000400 01                    6111 	.db	1
      000401 03                    6112 	.uleb128	3
      000402 08                    6113 	.uleb128	8
      000403 10                    6114 	.uleb128	16
      000404 06                    6115 	.uleb128	6
      000405 13                    6116 	.uleb128	19
      000406 0B                    6117 	.uleb128	11
      000407 25                    6118 	.uleb128	37
      000408 08                    6119 	.uleb128	8
      000409 00                    6120 	.uleb128	0
      00040A 00                    6121 	.uleb128	0
      00040B 05                    6122 	.uleb128	5
      00040C 0B                    6123 	.uleb128	11
      00040D 00                    6124 	.db	0
      00040E 11                    6125 	.uleb128	17
      00040F 01                    6126 	.uleb128	1
      000410 12                    6127 	.uleb128	18
      000411 01                    6128 	.uleb128	1
      000412 00                    6129 	.uleb128	0
      000413 00                    6130 	.uleb128	0
      000414 07                    6131 	.uleb128	7
      000415 0B                    6132 	.uleb128	11
      000416 01                    6133 	.db	1
      000417 01                    6134 	.uleb128	1
      000418 13                    6135 	.uleb128	19
      000419 11                    6136 	.uleb128	17
      00041A 01                    6137 	.uleb128	1
      00041B 00                    6138 	.uleb128	0
      00041C 00                    6139 	.uleb128	0
      00041D 02                    6140 	.uleb128	2
      00041E 2E                    6141 	.uleb128	46
      00041F 00                    6142 	.db	0
      000420 03                    6143 	.uleb128	3
      000421 08                    6144 	.uleb128	8
      000422 11                    6145 	.uleb128	17
      000423 01                    6146 	.uleb128	1
      000424 12                    6147 	.uleb128	18
      000425 01                    6148 	.uleb128	1
      000426 3F                    6149 	.uleb128	63
      000427 0C                    6150 	.uleb128	12
      000428 40                    6151 	.uleb128	64
      000429 06                    6152 	.uleb128	6
      00042A 00                    6153 	.uleb128	0
      00042B 00                    6154 	.uleb128	0
      00042C 0A                    6155 	.uleb128	10
      00042D 0B                    6156 	.uleb128	11
      00042E 01                    6157 	.db	1
      00042F 01                    6158 	.uleb128	1
      000430 13                    6159 	.uleb128	19
      000431 11                    6160 	.uleb128	17
      000432 01                    6161 	.uleb128	1
      000433 12                    6162 	.uleb128	18
      000434 01                    6163 	.uleb128	1
      000435 00                    6164 	.uleb128	0
      000436 00                    6165 	.uleb128	0
      000437 0F                    6166 	.uleb128	15
      000438 21                    6167 	.uleb128	33
      000439 00                    6168 	.db	0
      00043A 2F                    6169 	.uleb128	47
      00043B 0B                    6170 	.uleb128	11
      00043C 00                    6171 	.uleb128	0
      00043D 00                    6172 	.uleb128	0
      00043E 06                    6173 	.uleb128	6
      00043F 24                    6174 	.uleb128	36
      000440 00                    6175 	.db	0
      000441 03                    6176 	.uleb128	3
      000442 08                    6177 	.uleb128	8
      000443 0B                    6178 	.uleb128	11
      000444 0B                    6179 	.uleb128	11
      000445 3E                    6180 	.uleb128	62
      000446 0B                    6181 	.uleb128	11
      000447 00                    6182 	.uleb128	0
      000448 00                    6183 	.uleb128	0
      000449 00                    6184 	.uleb128	0
                                   6185 
                                   6186 	.area .debug_info (NOLOAD)
      001945 00 00 09 19           6187 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001949                       6188 Ldebug_info_start:
      001949 00 02                 6189 	.dw	2
      00194B 00 00 03 8D           6190 	.dw	0,(Ldebug_abbrev)
      00194F 04                    6191 	.db	4
      001950 01                    6192 	.uleb128	1
      001951 2E 2E 2F 53 50 4C 2F  6193 	.ascii "../SPL/src/stm8s_clk.c"
             73 72 63 2F 73 74 6D
             38 73 5F 63 6C 6B 2E
             63
      001967 00                    6194 	.db	0
      001968 00 00 0F F2           6195 	.dw	0,(Ldebug_line_start+-4)
      00196C 01                    6196 	.db	1
      00196D 53 44 43 43 20 76 65  6197 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      001986 00                    6198 	.db	0
      001987 02                    6199 	.uleb128	2
      001988 43 4C 4B 5F 44 65 49  6200 	.ascii "CLK_DeInit"
             6E 69 74
      001992 00                    6201 	.db	0
      001993 00 00 8A E2           6202 	.dw	0,(_CLK_DeInit)
      001997 00 00 8B 1C           6203 	.dw	0,(XG$CLK_DeInit$0$0+1)
      00199B 01                    6204 	.db	1
      00199C 00 00 29 E8           6205 	.dw	0,(Ldebug_loc_start+3596)
      0019A0 03                    6206 	.uleb128	3
      0019A1 00 00 00 A7           6207 	.dw	0,167
      0019A5 43 4C 4B 5F 46 61 73  6208 	.ascii "CLK_FastHaltWakeUpCmd"
             74 48 61 6C 74 57 61
             6B 65 55 70 43 6D 64
      0019BA 00                    6209 	.db	0
      0019BB 00 00 8B 1C           6210 	.dw	0,(_CLK_FastHaltWakeUpCmd)
      0019BF 00 00 8B 52           6211 	.dw	0,(XG$CLK_FastHaltWakeUpCmd$0$0+1)
      0019C3 01                    6212 	.db	1
      0019C4 00 00 29 80           6213 	.dw	0,(Ldebug_loc_start+3492)
      0019C8 04                    6214 	.uleb128	4
      0019C9 02                    6215 	.db	2
      0019CA 91                    6216 	.db	145
      0019CB 02                    6217 	.sleb128	2
      0019CC 4E 65 77 53 74 61 74  6218 	.ascii "NewState"
             65
      0019D4 00                    6219 	.db	0
      0019D5 00 00 00 A7           6220 	.dw	0,167
      0019D9 05                    6221 	.uleb128	5
      0019DA 00 00 8B 44           6222 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$30)
      0019DE 00 00 8B 49           6223 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$32)
      0019E2 05                    6224 	.uleb128	5
      0019E3 00 00 8B 4C           6225 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$33)
      0019E7 00 00 8B 51           6226 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$35)
      0019EB 00                    6227 	.uleb128	0
      0019EC 06                    6228 	.uleb128	6
      0019ED 75 6E 73 69 67 6E 65  6229 	.ascii "unsigned char"
             64 20 63 68 61 72
      0019FA 00                    6230 	.db	0
      0019FB 01                    6231 	.db	1
      0019FC 08                    6232 	.db	8
      0019FD 03                    6233 	.uleb128	3
      0019FE 00 00 00 F9           6234 	.dw	0,249
      001A02 43 4C 4B 5F 48 53 45  6235 	.ascii "CLK_HSECmd"
             43 6D 64
      001A0C 00                    6236 	.db	0
      001A0D 00 00 8B 52           6237 	.dw	0,(_CLK_HSECmd)
      001A11 00 00 8B 88           6238 	.dw	0,(XG$CLK_HSECmd$0$0+1)
      001A15 01                    6239 	.db	1
      001A16 00 00 29 18           6240 	.dw	0,(Ldebug_loc_start+3388)
      001A1A 04                    6241 	.uleb128	4
      001A1B 02                    6242 	.db	2
      001A1C 91                    6243 	.db	145
      001A1D 02                    6244 	.sleb128	2
      001A1E 4E 65 77 53 74 61 74  6245 	.ascii "NewState"
             65
      001A26 00                    6246 	.db	0
      001A27 00 00 00 A7           6247 	.dw	0,167
      001A2B 05                    6248 	.uleb128	5
      001A2C 00 00 8B 7A           6249 	.dw	0,(Sstm8s_clk$CLK_HSECmd$51)
      001A30 00 00 8B 7F           6250 	.dw	0,(Sstm8s_clk$CLK_HSECmd$53)
      001A34 05                    6251 	.uleb128	5
      001A35 00 00 8B 82           6252 	.dw	0,(Sstm8s_clk$CLK_HSECmd$54)
      001A39 00 00 8B 87           6253 	.dw	0,(Sstm8s_clk$CLK_HSECmd$56)
      001A3D 00                    6254 	.uleb128	0
      001A3E 03                    6255 	.uleb128	3
      001A3F 00 00 01 3A           6256 	.dw	0,314
      001A43 43 4C 4B 5F 48 53 49  6257 	.ascii "CLK_HSICmd"
             43 6D 64
      001A4D 00                    6258 	.db	0
      001A4E 00 00 8B 88           6259 	.dw	0,(_CLK_HSICmd)
      001A52 00 00 8B BE           6260 	.dw	0,(XG$CLK_HSICmd$0$0+1)
      001A56 01                    6261 	.db	1
      001A57 00 00 28 B0           6262 	.dw	0,(Ldebug_loc_start+3284)
      001A5B 04                    6263 	.uleb128	4
      001A5C 02                    6264 	.db	2
      001A5D 91                    6265 	.db	145
      001A5E 02                    6266 	.sleb128	2
      001A5F 4E 65 77 53 74 61 74  6267 	.ascii "NewState"
             65
      001A67 00                    6268 	.db	0
      001A68 00 00 00 A7           6269 	.dw	0,167
      001A6C 05                    6270 	.uleb128	5
      001A6D 00 00 8B B0           6271 	.dw	0,(Sstm8s_clk$CLK_HSICmd$72)
      001A71 00 00 8B B5           6272 	.dw	0,(Sstm8s_clk$CLK_HSICmd$74)
      001A75 05                    6273 	.uleb128	5
      001A76 00 00 8B B8           6274 	.dw	0,(Sstm8s_clk$CLK_HSICmd$75)
      001A7A 00 00 8B BD           6275 	.dw	0,(Sstm8s_clk$CLK_HSICmd$77)
      001A7E 00                    6276 	.uleb128	0
      001A7F 03                    6277 	.uleb128	3
      001A80 00 00 01 7B           6278 	.dw	0,379
      001A84 43 4C 4B 5F 4C 53 49  6279 	.ascii "CLK_LSICmd"
             43 6D 64
      001A8E 00                    6280 	.db	0
      001A8F 00 00 8B BE           6281 	.dw	0,(_CLK_LSICmd)
      001A93 00 00 8B F4           6282 	.dw	0,(XG$CLK_LSICmd$0$0+1)
      001A97 01                    6283 	.db	1
      001A98 00 00 28 48           6284 	.dw	0,(Ldebug_loc_start+3180)
      001A9C 04                    6285 	.uleb128	4
      001A9D 02                    6286 	.db	2
      001A9E 91                    6287 	.db	145
      001A9F 02                    6288 	.sleb128	2
      001AA0 4E 65 77 53 74 61 74  6289 	.ascii "NewState"
             65
      001AA8 00                    6290 	.db	0
      001AA9 00 00 00 A7           6291 	.dw	0,167
      001AAD 05                    6292 	.uleb128	5
      001AAE 00 00 8B E6           6293 	.dw	0,(Sstm8s_clk$CLK_LSICmd$93)
      001AB2 00 00 8B EB           6294 	.dw	0,(Sstm8s_clk$CLK_LSICmd$95)
      001AB6 05                    6295 	.uleb128	5
      001AB7 00 00 8B EE           6296 	.dw	0,(Sstm8s_clk$CLK_LSICmd$96)
      001ABB 00 00 8B F3           6297 	.dw	0,(Sstm8s_clk$CLK_LSICmd$98)
      001ABF 00                    6298 	.uleb128	0
      001AC0 03                    6299 	.uleb128	3
      001AC1 00 00 01 BC           6300 	.dw	0,444
      001AC5 43 4C 4B 5F 43 43 4F  6301 	.ascii "CLK_CCOCmd"
             43 6D 64
      001ACF 00                    6302 	.db	0
      001AD0 00 00 8B F4           6303 	.dw	0,(_CLK_CCOCmd)
      001AD4 00 00 8C 2A           6304 	.dw	0,(XG$CLK_CCOCmd$0$0+1)
      001AD8 01                    6305 	.db	1
      001AD9 00 00 27 E0           6306 	.dw	0,(Ldebug_loc_start+3076)
      001ADD 04                    6307 	.uleb128	4
      001ADE 02                    6308 	.db	2
      001ADF 91                    6309 	.db	145
      001AE0 02                    6310 	.sleb128	2
      001AE1 4E 65 77 53 74 61 74  6311 	.ascii "NewState"
             65
      001AE9 00                    6312 	.db	0
      001AEA 00 00 00 A7           6313 	.dw	0,167
      001AEE 05                    6314 	.uleb128	5
      001AEF 00 00 8C 1C           6315 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$114)
      001AF3 00 00 8C 21           6316 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$116)
      001AF7 05                    6317 	.uleb128	5
      001AF8 00 00 8C 24           6318 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$117)
      001AFC 00 00 8C 29           6319 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$119)
      001B00 00                    6320 	.uleb128	0
      001B01 03                    6321 	.uleb128	3
      001B02 00 00 02 05           6322 	.dw	0,517
      001B06 43 4C 4B 5F 43 6C 6F  6323 	.ascii "CLK_ClockSwitchCmd"
             63 6B 53 77 69 74 63
             68 43 6D 64
      001B18 00                    6324 	.db	0
      001B19 00 00 8C 2A           6325 	.dw	0,(_CLK_ClockSwitchCmd)
      001B1D 00 00 8C 60           6326 	.dw	0,(XG$CLK_ClockSwitchCmd$0$0+1)
      001B21 01                    6327 	.db	1
      001B22 00 00 27 78           6328 	.dw	0,(Ldebug_loc_start+2972)
      001B26 04                    6329 	.uleb128	4
      001B27 02                    6330 	.db	2
      001B28 91                    6331 	.db	145
      001B29 02                    6332 	.sleb128	2
      001B2A 4E 65 77 53 74 61 74  6333 	.ascii "NewState"
             65
      001B32 00                    6334 	.db	0
      001B33 00 00 00 A7           6335 	.dw	0,167
      001B37 05                    6336 	.uleb128	5
      001B38 00 00 8C 52           6337 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$135)
      001B3C 00 00 8C 57           6338 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$137)
      001B40 05                    6339 	.uleb128	5
      001B41 00 00 8C 5A           6340 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$138)
      001B45 00 00 8C 5F           6341 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$140)
      001B49 00                    6342 	.uleb128	0
      001B4A 03                    6343 	.uleb128	3
      001B4B 00 00 02 57           6344 	.dw	0,599
      001B4F 43 4C 4B 5F 53 6C 6F  6345 	.ascii "CLK_SlowActiveHaltWakeUpCmd"
             77 41 63 74 69 76 65
             48 61 6C 74 57 61 6B
             65 55 70 43 6D 64
      001B6A 00                    6346 	.db	0
      001B6B 00 00 8C 60           6347 	.dw	0,(_CLK_SlowActiveHaltWakeUpCmd)
      001B6F 00 00 8C 96           6348 	.dw	0,(XG$CLK_SlowActiveHaltWakeUpCmd$0$0+1)
      001B73 01                    6349 	.db	1
      001B74 00 00 27 10           6350 	.dw	0,(Ldebug_loc_start+2868)
      001B78 04                    6351 	.uleb128	4
      001B79 02                    6352 	.db	2
      001B7A 91                    6353 	.db	145
      001B7B 02                    6354 	.sleb128	2
      001B7C 4E 65 77 53 74 61 74  6355 	.ascii "NewState"
             65
      001B84 00                    6356 	.db	0
      001B85 00 00 00 A7           6357 	.dw	0,167
      001B89 05                    6358 	.uleb128	5
      001B8A 00 00 8C 88           6359 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$156)
      001B8E 00 00 8C 8D           6360 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$158)
      001B92 05                    6361 	.uleb128	5
      001B93 00 00 8C 90           6362 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$159)
      001B97 00 00 8C 95           6363 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$161)
      001B9B 00                    6364 	.uleb128	0
      001B9C 03                    6365 	.uleb128	3
      001B9D 00 00 02 E0           6366 	.dw	0,736
      001BA1 43 4C 4B 5F 50 65 72  6367 	.ascii "CLK_PeripheralClockConfig"
             69 70 68 65 72 61 6C
             43 6C 6F 63 6B 43 6F
             6E 66 69 67
      001BBA 00                    6368 	.db	0
      001BBB 00 00 8C 96           6369 	.dw	0,(_CLK_PeripheralClockConfig)
      001BBF 00 00 8D A8           6370 	.dw	0,(XG$CLK_PeripheralClockConfig$0$0+1)
      001BC3 01                    6371 	.db	1
      001BC4 00 00 25 B8           6372 	.dw	0,(Ldebug_loc_start+2524)
      001BC8 04                    6373 	.uleb128	4
      001BC9 02                    6374 	.db	2
      001BCA 91                    6375 	.db	145
      001BCB 02                    6376 	.sleb128	2
      001BCC 43 4C 4B 5F 50 65 72  6377 	.ascii "CLK_Peripheral"
             69 70 68 65 72 61 6C
      001BDA 00                    6378 	.db	0
      001BDB 00 00 00 A7           6379 	.dw	0,167
      001BDF 04                    6380 	.uleb128	4
      001BE0 02                    6381 	.db	2
      001BE1 91                    6382 	.db	145
      001BE2 03                    6383 	.sleb128	3
      001BE3 4E 65 77 53 74 61 74  6384 	.ascii "NewState"
             65
      001BEB 00                    6385 	.db	0
      001BEC 00 00 00 A7           6386 	.dw	0,167
      001BF0 07                    6387 	.uleb128	7
      001BF1 00 00 02 C7           6388 	.dw	0,711
      001BF5 00 00 8D 78           6389 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$199)
      001BF9 05                    6390 	.uleb128	5
      001BFA 00 00 8D 7F           6391 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$201)
      001BFE 00 00 8D 84           6392 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$203)
      001C02 05                    6393 	.uleb128	5
      001C03 00 00 8D 87           6394 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$204)
      001C07 00 00 8D 8C           6395 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$206)
      001C0B 00                    6396 	.uleb128	0
      001C0C 08                    6397 	.uleb128	8
      001C0D 00 00 8D 92           6398 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$208)
      001C11 05                    6399 	.uleb128	5
      001C12 00 00 8D 99           6400 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$210)
      001C16 00 00 8D 9E           6401 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$212)
      001C1A 05                    6402 	.uleb128	5
      001C1B 00 00 8D A1           6403 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$213)
      001C1F 00 00 8D A6           6404 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$215)
      001C23 00                    6405 	.uleb128	0
      001C24 00                    6406 	.uleb128	0
      001C25 09                    6407 	.uleb128	9
      001C26 00 00 04 3A           6408 	.dw	0,1082
      001C2A 43 4C 4B 5F 43 6C 6F  6409 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      001C3F 00                    6410 	.db	0
      001C40 00 00 8D A8           6411 	.dw	0,(_CLK_ClockSwitchConfig)
      001C44 00 00 8F 42           6412 	.dw	0,(XG$CLK_ClockSwitchConfig$0$0+1)
      001C48 01                    6413 	.db	1
      001C49 00 00 24 00           6414 	.dw	0,(Ldebug_loc_start+2084)
      001C4D 00 00 00 A7           6415 	.dw	0,167
      001C51 04                    6416 	.uleb128	4
      001C52 02                    6417 	.db	2
      001C53 91                    6418 	.db	145
      001C54 02                    6419 	.sleb128	2
      001C55 43 4C 4B 5F 53 77 69  6420 	.ascii "CLK_SwitchMode"
             74 63 68 4D 6F 64 65
      001C63 00                    6421 	.db	0
      001C64 00 00 00 A7           6422 	.dw	0,167
      001C68 04                    6423 	.uleb128	4
      001C69 02                    6424 	.db	2
      001C6A 91                    6425 	.db	145
      001C6B 03                    6426 	.sleb128	3
      001C6C 43 4C 4B 5F 4E 65 77  6427 	.ascii "CLK_NewClock"
             43 6C 6F 63 6B
      001C78 00                    6428 	.db	0
      001C79 00 00 00 A7           6429 	.dw	0,167
      001C7D 04                    6430 	.uleb128	4
      001C7E 02                    6431 	.db	2
      001C7F 91                    6432 	.db	145
      001C80 04                    6433 	.sleb128	4
      001C81 49 54 53 74 61 74 65  6434 	.ascii "ITState"
      001C88 00                    6435 	.db	0
      001C89 00 00 00 A7           6436 	.dw	0,167
      001C8D 04                    6437 	.uleb128	4
      001C8E 02                    6438 	.db	2
      001C8F 91                    6439 	.db	145
      001C90 05                    6440 	.sleb128	5
      001C91 43 4C 4B 5F 43 75 72  6441 	.ascii "CLK_CurrentClockState"
             72 65 6E 74 43 6C 6F
             63 6B 53 74 61 74 65
      001CA6 00                    6442 	.db	0
      001CA7 00 00 00 A7           6443 	.dw	0,167
      001CAB 0A                    6444 	.uleb128	10
      001CAC 00 00 03 A1           6445 	.dw	0,929
      001CB0 00 00 8E 51           6446 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$261)
      001CB4 00 00 8E 89           6447 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$277)
      001CB8 05                    6448 	.uleb128	5
      001CB9 00 00 8E 61           6449 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$265)
      001CBD 00 00 8E 66           6450 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$267)
      001CC1 05                    6451 	.uleb128	5
      001CC2 00 00 8E 69           6452 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$268)
      001CC6 00 00 8E 6E           6453 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$270)
      001CCA 05                    6454 	.uleb128	5
      001CCB 00 00 8E 85           6455 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$274)
      001CCF 00 00 8E 86           6456 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$276)
      001CD3 05                    6457 	.uleb128	5
      001CD4 00 00 8E 8F           6458 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$279)
      001CD8 00 00 8E 92           6459 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$281)
      001CDC 05                    6460 	.uleb128	5
      001CDD 00 00 8E 95           6461 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$282)
      001CE1 00 00 8E 96           6462 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$284)
      001CE5 00                    6463 	.uleb128	0
      001CE6 0A                    6464 	.uleb128	10
      001CE7 00 00 03 DC           6465 	.dw	0,988
      001CEB 00 00 8E 99           6466 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$285)
      001CEF 00 00 8E CB           6467 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$299)
      001CF3 05                    6468 	.uleb128	5
      001CF4 00 00 8E A0           6469 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$287)
      001CF8 00 00 8E A6           6470 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$289)
      001CFC 05                    6471 	.uleb128	5
      001CFD 00 00 8E A9           6472 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$290)
      001D01 00 00 8E AF           6473 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$292)
      001D05 05                    6474 	.uleb128	5
      001D06 00 00 8E C7           6475 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$296)
      001D0A 00 00 8E C8           6476 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$298)
      001D0E 05                    6477 	.uleb128	5
      001D0F 00 00 8E D1           6478 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$301)
      001D13 00 00 8E DC           6479 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$304)
      001D17 05                    6480 	.uleb128	5
      001D18 00 00 8E DF           6481 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$305)
      001D1C 00 00 8E E0           6482 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$307)
      001D20 00                    6483 	.uleb128	0
      001D21 07                    6484 	.uleb128	7
      001D22 00 00 04 01           6485 	.dw	0,1025
      001D26 00 00 8E E7           6486 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$309)
      001D2A 05                    6487 	.uleb128	5
      001D2B 00 00 8E FA           6488 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$312)
      001D2F 00 00 8F 02           6489 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$314)
      001D33 05                    6490 	.uleb128	5
      001D34 00 00 8F 18           6491 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$317)
      001D38 00 00 8F 20           6492 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$319)
      001D3C 05                    6493 	.uleb128	5
      001D3D 00 00 8F 36           6494 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$322)
      001D41 00 00 8F 3E           6495 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$324)
      001D45 00                    6496 	.uleb128	0
      001D46 0B                    6497 	.uleb128	11
      001D47 01                    6498 	.db	1
      001D48 53                    6499 	.db	83
      001D49 63 6C 6F 63 6B 5F 6D  6500 	.ascii "clock_master"
             61 73 74 65 72
      001D55 00                    6501 	.db	0
      001D56 00 00 00 A7           6502 	.dw	0,167
      001D5A 0B                    6503 	.uleb128	11
      001D5B 06                    6504 	.db	6
      001D5C 52                    6505 	.db	82
      001D5D 93                    6506 	.db	147
      001D5E 01                    6507 	.uleb128	1
      001D5F 51                    6508 	.db	81
      001D60 93                    6509 	.db	147
      001D61 01                    6510 	.uleb128	1
      001D62 44 6F 77 6E 43 6F 75  6511 	.ascii "DownCounter"
             6E 74 65 72
      001D6D 00                    6512 	.db	0
      001D6E 00 00 04 3A           6513 	.dw	0,1082
      001D72 0B                    6514 	.uleb128	11
      001D73 01                    6515 	.db	1
      001D74 51                    6516 	.db	81
      001D75 53 77 69 66           6517 	.ascii "Swif"
      001D79 00                    6518 	.db	0
      001D7A 00 00 00 A7           6519 	.dw	0,167
      001D7E 00                    6520 	.uleb128	0
      001D7F 06                    6521 	.uleb128	6
      001D80 75 6E 73 69 67 6E 65  6522 	.ascii "unsigned int"
             64 20 69 6E 74
      001D8C 00                    6523 	.db	0
      001D8D 02                    6524 	.db	2
      001D8E 07                    6525 	.db	7
      001D8F 03                    6526 	.uleb128	3
      001D90 00 00 04 89           6527 	.dw	0,1161
      001D94 43 4C 4B 5F 48 53 49  6528 	.ascii "CLK_HSIPrescalerConfig"
             50 72 65 73 63 61 6C
             65 72 43 6F 6E 66 69
             67
      001DAA 00                    6529 	.db	0
      001DAB 00 00 8F 42           6530 	.dw	0,(_CLK_HSIPrescalerConfig)
      001DAF 00 00 8F 84           6531 	.dw	0,(XG$CLK_HSIPrescalerConfig$0$0+1)
      001DB3 01                    6532 	.db	1
      001DB4 00 00 23 80           6533 	.dw	0,(Ldebug_loc_start+1956)
      001DB8 04                    6534 	.uleb128	4
      001DB9 02                    6535 	.db	2
      001DBA 91                    6536 	.db	145
      001DBB 02                    6537 	.sleb128	2
      001DBC 48 53 49 50 72 65 73  6538 	.ascii "HSIPrescaler"
             63 61 6C 65 72
      001DC8 00                    6539 	.db	0
      001DC9 00 00 00 A7           6540 	.dw	0,167
      001DCD 00                    6541 	.uleb128	0
      001DCE 03                    6542 	.uleb128	3
      001DCF 00 00 04 BA           6543 	.dw	0,1210
      001DD3 43 4C 4B 5F 43 43 4F  6544 	.ascii "CLK_CCOConfig"
             43 6F 6E 66 69 67
      001DE0 00                    6545 	.db	0
      001DE1 00 00 8F 84           6546 	.dw	0,(_CLK_CCOConfig)
      001DE5 00 00 90 1F           6547 	.dw	0,(XG$CLK_CCOConfig$0$0+1)
      001DE9 01                    6548 	.db	1
      001DEA 00 00 22 94           6549 	.dw	0,(Ldebug_loc_start+1720)
      001DEE 04                    6550 	.uleb128	4
      001DEF 02                    6551 	.db	2
      001DF0 91                    6552 	.db	145
      001DF1 02                    6553 	.sleb128	2
      001DF2 43 4C 4B 5F 43 43 4F  6554 	.ascii "CLK_CCO"
      001DF9 00                    6555 	.db	0
      001DFA 00 00 00 A7           6556 	.dw	0,167
      001DFE 00                    6557 	.uleb128	0
      001DFF 03                    6558 	.uleb128	3
      001E00 00 00 05 1C           6559 	.dw	0,1308
      001E04 43 4C 4B 5F 49 54 43  6560 	.ascii "CLK_ITConfig"
             6F 6E 66 69 67
      001E10 00                    6561 	.db	0
      001E11 00 00 90 1F           6562 	.dw	0,(_CLK_ITConfig)
      001E15 00 00 90 C9           6563 	.dw	0,(XG$CLK_ITConfig$0$0+1)
      001E19 01                    6564 	.db	1
      001E1A 00 00 21 6C           6565 	.dw	0,(Ldebug_loc_start+1424)
      001E1E 04                    6566 	.uleb128	4
      001E1F 02                    6567 	.db	2
      001E20 91                    6568 	.db	145
      001E21 02                    6569 	.sleb128	2
      001E22 43 4C 4B 5F 49 54     6570 	.ascii "CLK_IT"
      001E28 00                    6571 	.db	0
      001E29 00 00 00 A7           6572 	.dw	0,167
      001E2D 04                    6573 	.uleb128	4
      001E2E 02                    6574 	.db	2
      001E2F 91                    6575 	.db	145
      001E30 03                    6576 	.sleb128	3
      001E31 4E 65 77 53 74 61 74  6577 	.ascii "NewState"
             65
      001E39 00                    6578 	.db	0
      001E3A 00 00 00 A7           6579 	.dw	0,167
      001E3E 07                    6580 	.uleb128	7
      001E3F 00 00 05 0C           6581 	.dw	0,1292
      001E43 00 00 90 82           6582 	.dw	0,(Sstm8s_clk$CLK_ITConfig$401)
      001E47 05                    6583 	.uleb128	5
      001E48 00 00 90 90           6584 	.dw	0,(Sstm8s_clk$CLK_ITConfig$403)
      001E4C 00 00 90 A6           6585 	.dw	0,(Sstm8s_clk$CLK_ITConfig$409)
      001E50 00                    6586 	.uleb128	0
      001E51 08                    6587 	.uleb128	8
      001E52 00 00 90 A6           6588 	.dw	0,(Sstm8s_clk$CLK_ITConfig$411)
      001E56 05                    6589 	.uleb128	5
      001E57 00 00 90 B4           6590 	.dw	0,(Sstm8s_clk$CLK_ITConfig$413)
      001E5B 00 00 90 C7           6591 	.dw	0,(Sstm8s_clk$CLK_ITConfig$418)
      001E5F 00                    6592 	.uleb128	0
      001E60 00                    6593 	.uleb128	0
      001E61 03                    6594 	.uleb128	3
      001E62 00 00 05 68           6595 	.dw	0,1384
      001E66 43 4C 4B 5F 53 59 53  6596 	.ascii "CLK_SYSCLKConfig"
             43 4C 4B 43 6F 6E 66
             69 67
      001E76 00                    6597 	.db	0
      001E77 00 00 90 C9           6598 	.dw	0,(_CLK_SYSCLKConfig)
      001E7B 00 00 91 78           6599 	.dw	0,(XG$CLK_SYSCLKConfig$0$0+1)
      001E7F 01                    6600 	.db	1
      001E80 00 00 20 74           6601 	.dw	0,(Ldebug_loc_start+1176)
      001E84 04                    6602 	.uleb128	4
      001E85 02                    6603 	.db	2
      001E86 91                    6604 	.db	145
      001E87 02                    6605 	.sleb128	2
      001E88 43 4C 4B 5F 50 72 65  6606 	.ascii "CLK_Prescaler"
             73 63 61 6C 65 72
      001E95 00                    6607 	.db	0
      001E96 00 00 00 A7           6608 	.dw	0,167
      001E9A 05                    6609 	.uleb128	5
      001E9B 00 00 91 4D           6610 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$447)
      001E9F 00 00 91 60           6611 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$450)
      001EA3 05                    6612 	.uleb128	5
      001EA4 00 00 91 63           6613 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$451)
      001EA8 00 00 91 76           6614 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$454)
      001EAC 00                    6615 	.uleb128	0
      001EAD 03                    6616 	.uleb128	3
      001EAE 00 00 05 B4           6617 	.dw	0,1460
      001EB2 43 4C 4B 5F 53 57 49  6618 	.ascii "CLK_SWIMConfig"
             4D 43 6F 6E 66 69 67
      001EC0 00                    6619 	.db	0
      001EC1 00 00 91 78           6620 	.dw	0,(_CLK_SWIMConfig)
      001EC5 00 00 91 AE           6621 	.dw	0,(XG$CLK_SWIMConfig$0$0+1)
      001EC9 01                    6622 	.db	1
      001ECA 00 00 20 0C           6623 	.dw	0,(Ldebug_loc_start+1072)
      001ECE 04                    6624 	.uleb128	4
      001ECF 02                    6625 	.db	2
      001ED0 91                    6626 	.db	145
      001ED1 02                    6627 	.sleb128	2
      001ED2 43 4C 4B 5F 53 57 49  6628 	.ascii "CLK_SWIMDivider"
             4D 44 69 76 69 64 65
             72
      001EE1 00                    6629 	.db	0
      001EE2 00 00 00 A7           6630 	.dw	0,167
      001EE6 05                    6631 	.uleb128	5
      001EE7 00 00 91 A0           6632 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$471)
      001EEB 00 00 91 A5           6633 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$473)
      001EEF 05                    6634 	.uleb128	5
      001EF0 00 00 91 A8           6635 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$474)
      001EF4 00 00 91 AD           6636 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$476)
      001EF8 00                    6637 	.uleb128	0
      001EF9 02                    6638 	.uleb128	2
      001EFA 43 4C 4B 5F 43 6C 6F  6639 	.ascii "CLK_ClockSecuritySystemEnable"
             63 6B 53 65 63 75 72
             69 74 79 53 79 73 74
             65 6D 45 6E 61 62 6C
             65
      001F17 00                    6640 	.db	0
      001F18 00 00 91 AE           6641 	.dw	0,(_CLK_ClockSecuritySystemEnable)
      001F1C 00 00 91 B7           6642 	.dw	0,(XG$CLK_ClockSecuritySystemEnable$0$0+1)
      001F20 01                    6643 	.db	1
      001F21 00 00 1F F8           6644 	.dw	0,(Ldebug_loc_start+1052)
      001F25 0C                    6645 	.uleb128	12
      001F26 43 4C 4B 5F 47 65 74  6646 	.ascii "CLK_GetSYSCLKSource"
             53 59 53 43 4C 4B 53
             6F 75 72 63 65
      001F39 00                    6647 	.db	0
      001F3A 00 00 91 B7           6648 	.dw	0,(_CLK_GetSYSCLKSource)
      001F3E 00 00 91 BB           6649 	.dw	0,(XG$CLK_GetSYSCLKSource$0$0+1)
      001F42 01                    6650 	.db	1
      001F43 00 00 1F E4           6651 	.dw	0,(Ldebug_loc_start+1032)
      001F47 00 00 00 A7           6652 	.dw	0,167
      001F4B 06                    6653 	.uleb128	6
      001F4C 75 6E 73 69 67 6E 65  6654 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      001F59 00                    6655 	.db	0
      001F5A 04                    6656 	.db	4
      001F5B 07                    6657 	.db	7
      001F5C 09                    6658 	.uleb128	9
      001F5D 00 00 06 A9           6659 	.dw	0,1705
      001F61 43 4C 4B 5F 47 65 74  6660 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      001F71 00                    6661 	.db	0
      001F72 00 00 91 BB           6662 	.dw	0,(_CLK_GetClockFreq)
      001F76 00 00 92 1A           6663 	.dw	0,(XG$CLK_GetClockFreq$0$0+1)
      001F7A 01                    6664 	.db	1
      001F7B 00 00 1F 4C           6665 	.dw	0,(Ldebug_loc_start+880)
      001F7F 00 00 06 06           6666 	.dw	0,1542
      001F83 05                    6667 	.uleb128	5
      001F84 00 00 91 CE           6668 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$498)
      001F88 00 00 91 E0           6669 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$503)
      001F8C 05                    6670 	.uleb128	5
      001F8D 00 00 92 02           6671 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$513)
      001F91 00 00 92 09           6672 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$515)
      001F95 05                    6673 	.uleb128	5
      001F96 00 00 92 0C           6674 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$516)
      001F9A 00 00 92 14           6675 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$518)
      001F9E 0B                    6676 	.uleb128	11
      001F9F 0E                    6677 	.db	14
      001FA0 52                    6678 	.db	82
      001FA1 93                    6679 	.db	147
      001FA2 01                    6680 	.uleb128	1
      001FA3 51                    6681 	.db	81
      001FA4 93                    6682 	.db	147
      001FA5 01                    6683 	.uleb128	1
      001FA6 91                    6684 	.db	145
      001FA7 7E                    6685 	.sleb128	-2
      001FA8 93                    6686 	.db	147
      001FA9 01                    6687 	.uleb128	1
      001FAA 91                    6688 	.db	145
      001FAB 7F                    6689 	.sleb128	-1
      001FAC 93                    6690 	.db	147
      001FAD 01                    6691 	.uleb128	1
      001FAE 63 6C 6F 63 6B 66 72  6692 	.ascii "clockfrequency"
             65 71 75 65 6E 63 79
      001FBC 00                    6693 	.db	0
      001FBD 00 00 06 06           6694 	.dw	0,1542
      001FC1 0B                    6695 	.uleb128	11
      001FC2 02                    6696 	.db	2
      001FC3 91                    6697 	.db	145
      001FC4 7F                    6698 	.sleb128	-1
      001FC5 63 6C 6F 63 6B 73 6F  6699 	.ascii "clocksource"
             75 72 63 65
      001FD0 00                    6700 	.db	0
      001FD1 00 00 00 A7           6701 	.dw	0,167
      001FD5 0B                    6702 	.uleb128	11
      001FD6 01                    6703 	.db	1
      001FD7 50                    6704 	.db	80
      001FD8 74 6D 70              6705 	.ascii "tmp"
      001FDB 00                    6706 	.db	0
      001FDC 00 00 00 A7           6707 	.dw	0,167
      001FE0 0B                    6708 	.uleb128	11
      001FE1 01                    6709 	.db	1
      001FE2 50                    6710 	.db	80
      001FE3 70 72 65 73 63        6711 	.ascii "presc"
      001FE8 00                    6712 	.db	0
      001FE9 00 00 00 A7           6713 	.dw	0,167
      001FED 00                    6714 	.uleb128	0
      001FEE 03                    6715 	.uleb128	3
      001FEF 00 00 06 FA           6716 	.dw	0,1786
      001FF3 43 4C 4B 5F 41 64 6A  6717 	.ascii "CLK_AdjustHSICalibrationValue"
             75 73 74 48 53 49 43
             61 6C 69 62 72 61 74
             69 6F 6E 56 61 6C 75
             65
      002010 00                    6718 	.db	0
      002011 00 00 92 1A           6719 	.dw	0,(_CLK_AdjustHSICalibrationValue)
      002015 00 00 92 79           6720 	.dw	0,(XG$CLK_AdjustHSICalibrationValue$0$0+1)
      002019 01                    6721 	.db	1
      00201A 00 00 1E 9C           6722 	.dw	0,(Ldebug_loc_start+704)
      00201E 04                    6723 	.uleb128	4
      00201F 02                    6724 	.db	2
      002020 91                    6725 	.db	145
      002021 02                    6726 	.sleb128	2
      002022 43 4C 4B 5F 48 53 49  6727 	.ascii "CLK_HSICalibrationValue"
             43 61 6C 69 62 72 61
             74 69 6F 6E 56 61 6C
             75 65
      002039 00                    6728 	.db	0
      00203A 00 00 00 A7           6729 	.dw	0,167
      00203E 00                    6730 	.uleb128	0
      00203F 02                    6731 	.uleb128	2
      002040 43 4C 4B 5F 53 59 53  6732 	.ascii "CLK_SYSCLKEmergencyClear"
             43 4C 4B 45 6D 65 72
             67 65 6E 63 79 43 6C
             65 61 72
      002058 00                    6733 	.db	0
      002059 00 00 92 79           6734 	.dw	0,(_CLK_SYSCLKEmergencyClear)
      00205D 00 00 92 82           6735 	.dw	0,(XG$CLK_SYSCLKEmergencyClear$0$0+1)
      002061 01                    6736 	.db	1
      002062 00 00 1E 88           6737 	.dw	0,(Ldebug_loc_start+684)
      002066 09                    6738 	.uleb128	9
      002067 00 00 07 CF           6739 	.dw	0,1999
      00206B 43 4C 4B 5F 47 65 74  6740 	.ascii "CLK_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      00207C 00                    6741 	.db	0
      00207D 00 00 92 82           6742 	.dw	0,(_CLK_GetFlagStatus)
      002081 00 00 93 40           6743 	.dw	0,(XG$CLK_GetFlagStatus$0$0+1)
      002085 01                    6744 	.db	1
      002086 00 00 1D 3C           6745 	.dw	0,(Ldebug_loc_start+352)
      00208A 00 00 00 A7           6746 	.dw	0,167
      00208E 04                    6747 	.uleb128	4
      00208F 02                    6748 	.db	2
      002090 91                    6749 	.db	145
      002091 02                    6750 	.sleb128	2
      002092 43 4C 4B 5F 46 4C 41  6751 	.ascii "CLK_FLAG"
             47
      00209A 00                    6752 	.db	0
      00209B 00 00 07 CF           6753 	.dw	0,1999
      00209F 05                    6754 	.uleb128	5
      0020A0 00 00 92 ED           6755 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$575)
      0020A4 00 00 92 F0           6756 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$577)
      0020A8 05                    6757 	.uleb128	5
      0020A9 00 00 92 FE           6758 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$580)
      0020AD 00 00 93 01           6759 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$582)
      0020B1 05                    6760 	.uleb128	5
      0020B2 00 00 93 0F           6761 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$585)
      0020B6 00 00 93 12           6762 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$587)
      0020BA 05                    6763 	.uleb128	5
      0020BB 00 00 93 20           6764 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$590)
      0020BF 00 00 93 23           6765 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$592)
      0020C3 05                    6766 	.uleb128	5
      0020C4 00 00 93 26           6767 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$593)
      0020C8 00 00 93 29           6768 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$595)
      0020CC 05                    6769 	.uleb128	5
      0020CD 00 00 93 37           6770 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$599)
      0020D1 00 00 93 39           6771 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$601)
      0020D5 05                    6772 	.uleb128	5
      0020D6 00 00 93 3C           6773 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$602)
      0020DA 00 00 93 3D           6774 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$604)
      0020DE 0B                    6775 	.uleb128	11
      0020DF 06                    6776 	.db	6
      0020E0 52                    6777 	.db	82
      0020E1 93                    6778 	.db	147
      0020E2 01                    6779 	.uleb128	1
      0020E3 50                    6780 	.db	80
      0020E4 93                    6781 	.db	147
      0020E5 01                    6782 	.uleb128	1
      0020E6 73 74 61 74 75 73 72  6783 	.ascii "statusreg"
             65 67
      0020EF 00                    6784 	.db	0
      0020F0 00 00 04 3A           6785 	.dw	0,1082
      0020F4 0B                    6786 	.uleb128	11
      0020F5 01                    6787 	.db	1
      0020F6 50                    6788 	.db	80
      0020F7 74 6D 70 72 65 67     6789 	.ascii "tmpreg"
      0020FD 00                    6790 	.db	0
      0020FE 00 00 00 A7           6791 	.dw	0,167
      002102 0B                    6792 	.uleb128	11
      002103 01                    6793 	.db	1
      002104 50                    6794 	.db	80
      002105 62 69 74 73 74 61 74  6795 	.ascii "bitstatus"
             75 73
      00210E 00                    6796 	.db	0
      00210F 00 00 00 A7           6797 	.dw	0,167
      002113 00                    6798 	.uleb128	0
      002114 06                    6799 	.uleb128	6
      002115 75 6E 73 69 67 6E 65  6800 	.ascii "unsigned int"
             64 20 69 6E 74
      002121 00                    6801 	.db	0
      002122 02                    6802 	.db	2
      002123 07                    6803 	.db	7
      002124 09                    6804 	.uleb128	9
      002125 00 00 08 5E           6805 	.dw	0,2142
      002129 43 4C 4B 5F 47 65 74  6806 	.ascii "CLK_GetITStatus"
             49 54 53 74 61 74 75
             73
      002138 00                    6807 	.db	0
      002139 00 00 93 40           6808 	.dw	0,(_CLK_GetITStatus)
      00213D 00 00 93 A2           6809 	.dw	0,(XG$CLK_GetITStatus$0$0+1)
      002141 01                    6810 	.db	1
      002142 00 00 1C 80           6811 	.dw	0,(Ldebug_loc_start+164)
      002146 00 00 00 A7           6812 	.dw	0,167
      00214A 04                    6813 	.uleb128	4
      00214B 02                    6814 	.db	2
      00214C 91                    6815 	.db	145
      00214D 02                    6816 	.sleb128	2
      00214E 43 4C 4B 5F 49 54     6817 	.ascii "CLK_IT"
      002154 00                    6818 	.db	0
      002155 00 00 00 A7           6819 	.dw	0,167
      002159 07                    6820 	.uleb128	7
      00215A 00 00 08 30           6821 	.dw	0,2096
      00215E 00 00 93 74           6822 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$626)
      002162 05                    6823 	.uleb128	5
      002163 00 00 93 83           6824 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$629)
      002167 00 00 93 85           6825 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$631)
      00216B 05                    6826 	.uleb128	5
      00216C 00 00 93 88           6827 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$632)
      002170 00 00 93 89           6828 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$634)
      002174 00                    6829 	.uleb128	0
      002175 07                    6830 	.uleb128	7
      002176 00 00 08 4C           6831 	.dw	0,2124
      00217A 00 00 93 8C           6832 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$635)
      00217E 05                    6833 	.uleb128	5
      00217F 00 00 93 9B           6834 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$638)
      002183 00 00 93 9D           6835 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$640)
      002187 05                    6836 	.uleb128	5
      002188 00 00 93 A0           6837 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$641)
      00218C 00 00 93 A1           6838 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$643)
      002190 00                    6839 	.uleb128	0
      002191 0B                    6840 	.uleb128	11
      002192 01                    6841 	.db	1
      002193 50                    6842 	.db	80
      002194 62 69 74 73 74 61 74  6843 	.ascii "bitstatus"
             75 73
      00219D 00                    6844 	.db	0
      00219E 00 00 00 A7           6845 	.dw	0,167
      0021A2 00                    6846 	.uleb128	0
      0021A3 03                    6847 	.uleb128	3
      0021A4 00 00 08 A8           6848 	.dw	0,2216
      0021A8 43 4C 4B 5F 43 6C 65  6849 	.ascii "CLK_ClearITPendingBit"
             61 72 49 54 50 65 6E
             64 69 6E 67 42 69 74
      0021BD 00                    6850 	.db	0
      0021BE 00 00 93 A2           6851 	.dw	0,(_CLK_ClearITPendingBit)
      0021C2 00 00 93 EA           6852 	.dw	0,(XG$CLK_ClearITPendingBit$0$0+1)
      0021C6 01                    6853 	.db	1
      0021C7 00 00 1B DC           6854 	.dw	0,(Ldebug_loc_start)
      0021CB 04                    6855 	.uleb128	4
      0021CC 02                    6856 	.db	2
      0021CD 91                    6857 	.db	145
      0021CE 02                    6858 	.sleb128	2
      0021CF 43 4C 4B 5F 49 54     6859 	.ascii "CLK_IT"
      0021D5 00                    6860 	.db	0
      0021D6 00 00 00 A7           6861 	.dw	0,167
      0021DA 05                    6862 	.uleb128	5
      0021DB 00 00 93 D6           6863 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$664)
      0021DF 00 00 93 DE           6864 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$666)
      0021E3 05                    6865 	.uleb128	5
      0021E4 00 00 93 E1           6866 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$667)
      0021E8 00 00 93 E9           6867 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$669)
      0021EC 00                    6868 	.uleb128	0
      0021ED 0D                    6869 	.uleb128	13
      0021EE 00 00 00 A7           6870 	.dw	0,167
      0021F2 0E                    6871 	.uleb128	14
      0021F3 00 00 08 BA           6872 	.dw	0,2234
      0021F7 04                    6873 	.db	4
      0021F8 00 00 08 A8           6874 	.dw	0,2216
      0021FC 0F                    6875 	.uleb128	15
      0021FD 03                    6876 	.db	3
      0021FE 00                    6877 	.uleb128	0
      0021FF 10                    6878 	.uleb128	16
      002200 05                    6879 	.db	5
      002201 03                    6880 	.db	3
      002202 00 00 80 B1           6881 	.dw	0,(_HSIDivFactor)
      002206 48 53 49 44 69 76 46  6882 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      002212 00                    6883 	.db	0
      002213 01                    6884 	.db	1
      002214 00 00 08 AD           6885 	.dw	0,2221
      002218 0E                    6886 	.uleb128	14
      002219 00 00 08 E0           6887 	.dw	0,2272
      00221D 08                    6888 	.db	8
      00221E 00 00 08 A8           6889 	.dw	0,2216
      002222 0F                    6890 	.uleb128	15
      002223 07                    6891 	.db	7
      002224 00                    6892 	.uleb128	0
      002225 10                    6893 	.uleb128	16
      002226 05                    6894 	.db	5
      002227 03                    6895 	.db	3
      002228 00 00 80 B5           6896 	.dw	0,(_CLKPrescTable)
      00222C 43 4C 4B 50 72 65 73  6897 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      002239 00                    6898 	.db	0
      00223A 01                    6899 	.db	1
      00223B 00 00 08 D3           6900 	.dw	0,2259
      00223F 0E                    6901 	.uleb128	14
      002240 00 00 09 07           6902 	.dw	0,2311
      002244 17                    6903 	.db	23
      002245 00 00 08 A8           6904 	.dw	0,2216
      002249 0F                    6905 	.uleb128	15
      00224A 16                    6906 	.db	22
      00224B 00                    6907 	.uleb128	0
      00224C 0B                    6908 	.uleb128	11
      00224D 05                    6909 	.db	5
      00224E 03                    6910 	.db	3
      00224F 00 00 80 BD           6911 	.dw	0,(___str_0)
      002253 5F 5F 73 74 72 5F 30  6912 	.ascii "__str_0"
      00225A 00                    6913 	.db	0
      00225B 00 00 08 FA           6914 	.dw	0,2298
      00225F 00                    6915 	.uleb128	0
      002260 00                    6916 	.uleb128	0
      002261 00                    6917 	.uleb128	0
      002262                       6918 Ldebug_info_end:
                                   6919 
                                   6920 	.area .debug_pubnames (NOLOAD)
      0005B0 00 00 02 3D           6921 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0005B4                       6922 Ldebug_pubnames_start:
      0005B4 00 02                 6923 	.dw	2
      0005B6 00 00 19 45           6924 	.dw	0,(Ldebug_info_start-4)
      0005BA 00 00 09 1D           6925 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0005BE 00 00 00 42           6926 	.dw	0,66
      0005C2 43 4C 4B 5F 44 65 49  6927 	.ascii "CLK_DeInit"
             6E 69 74
      0005CC 00                    6928 	.db	0
      0005CD 00 00 00 5B           6929 	.dw	0,91
      0005D1 43 4C 4B 5F 46 61 73  6930 	.ascii "CLK_FastHaltWakeUpCmd"
             74 48 61 6C 74 57 61
             6B 65 55 70 43 6D 64
      0005E6 00                    6931 	.db	0
      0005E7 00 00 00 B8           6932 	.dw	0,184
      0005EB 43 4C 4B 5F 48 53 45  6933 	.ascii "CLK_HSECmd"
             43 6D 64
      0005F5 00                    6934 	.db	0
      0005F6 00 00 00 F9           6935 	.dw	0,249
      0005FA 43 4C 4B 5F 48 53 49  6936 	.ascii "CLK_HSICmd"
             43 6D 64
      000604 00                    6937 	.db	0
      000605 00 00 01 3A           6938 	.dw	0,314
      000609 43 4C 4B 5F 4C 53 49  6939 	.ascii "CLK_LSICmd"
             43 6D 64
      000613 00                    6940 	.db	0
      000614 00 00 01 7B           6941 	.dw	0,379
      000618 43 4C 4B 5F 43 43 4F  6942 	.ascii "CLK_CCOCmd"
             43 6D 64
      000622 00                    6943 	.db	0
      000623 00 00 01 BC           6944 	.dw	0,444
      000627 43 4C 4B 5F 43 6C 6F  6945 	.ascii "CLK_ClockSwitchCmd"
             63 6B 53 77 69 74 63
             68 43 6D 64
      000639 00                    6946 	.db	0
      00063A 00 00 02 05           6947 	.dw	0,517
      00063E 43 4C 4B 5F 53 6C 6F  6948 	.ascii "CLK_SlowActiveHaltWakeUpCmd"
             77 41 63 74 69 76 65
             48 61 6C 74 57 61 6B
             65 55 70 43 6D 64
      000659 00                    6949 	.db	0
      00065A 00 00 02 57           6950 	.dw	0,599
      00065E 43 4C 4B 5F 50 65 72  6951 	.ascii "CLK_PeripheralClockConfig"
             69 70 68 65 72 61 6C
             43 6C 6F 63 6B 43 6F
             6E 66 69 67
      000677 00                    6952 	.db	0
      000678 00 00 02 E0           6953 	.dw	0,736
      00067C 43 4C 4B 5F 43 6C 6F  6954 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      000691 00                    6955 	.db	0
      000692 00 00 04 4A           6956 	.dw	0,1098
      000696 43 4C 4B 5F 48 53 49  6957 	.ascii "CLK_HSIPrescalerConfig"
             50 72 65 73 63 61 6C
             65 72 43 6F 6E 66 69
             67
      0006AC 00                    6958 	.db	0
      0006AD 00 00 04 89           6959 	.dw	0,1161
      0006B1 43 4C 4B 5F 43 43 4F  6960 	.ascii "CLK_CCOConfig"
             43 6F 6E 66 69 67
      0006BE 00                    6961 	.db	0
      0006BF 00 00 04 BA           6962 	.dw	0,1210
      0006C3 43 4C 4B 5F 49 54 43  6963 	.ascii "CLK_ITConfig"
             6F 6E 66 69 67
      0006CF 00                    6964 	.db	0
      0006D0 00 00 05 1C           6965 	.dw	0,1308
      0006D4 43 4C 4B 5F 53 59 53  6966 	.ascii "CLK_SYSCLKConfig"
             43 4C 4B 43 6F 6E 66
             69 67
      0006E4 00                    6967 	.db	0
      0006E5 00 00 05 68           6968 	.dw	0,1384
      0006E9 43 4C 4B 5F 53 57 49  6969 	.ascii "CLK_SWIMConfig"
             4D 43 6F 6E 66 69 67
      0006F7 00                    6970 	.db	0
      0006F8 00 00 05 B4           6971 	.dw	0,1460
      0006FC 43 4C 4B 5F 43 6C 6F  6972 	.ascii "CLK_ClockSecuritySystemEnable"
             63 6B 53 65 63 75 72
             69 74 79 53 79 73 74
             65 6D 45 6E 61 62 6C
             65
      000719 00                    6973 	.db	0
      00071A 00 00 05 E0           6974 	.dw	0,1504
      00071E 43 4C 4B 5F 47 65 74  6975 	.ascii "CLK_GetSYSCLKSource"
             53 59 53 43 4C 4B 53
             6F 75 72 63 65
      000731 00                    6976 	.db	0
      000732 00 00 06 17           6977 	.dw	0,1559
      000736 43 4C 4B 5F 47 65 74  6978 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      000746 00                    6979 	.db	0
      000747 00 00 06 A9           6980 	.dw	0,1705
      00074B 43 4C 4B 5F 41 64 6A  6981 	.ascii "CLK_AdjustHSICalibrationValue"
             75 73 74 48 53 49 43
             61 6C 69 62 72 61 74
             69 6F 6E 56 61 6C 75
             65
      000768 00                    6982 	.db	0
      000769 00 00 06 FA           6983 	.dw	0,1786
      00076D 43 4C 4B 5F 53 59 53  6984 	.ascii "CLK_SYSCLKEmergencyClear"
             43 4C 4B 45 6D 65 72
             67 65 6E 63 79 43 6C
             65 61 72
      000785 00                    6985 	.db	0
      000786 00 00 07 21           6986 	.dw	0,1825
      00078A 43 4C 4B 5F 47 65 74  6987 	.ascii "CLK_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      00079B 00                    6988 	.db	0
      00079C 00 00 07 DF           6989 	.dw	0,2015
      0007A0 43 4C 4B 5F 47 65 74  6990 	.ascii "CLK_GetITStatus"
             49 54 53 74 61 74 75
             73
      0007AF 00                    6991 	.db	0
      0007B0 00 00 08 5E           6992 	.dw	0,2142
      0007B4 43 4C 4B 5F 43 6C 65  6993 	.ascii "CLK_ClearITPendingBit"
             61 72 49 54 50 65 6E
             64 69 6E 67 42 69 74
      0007C9 00                    6994 	.db	0
      0007CA 00 00 08 BA           6995 	.dw	0,2234
      0007CE 48 53 49 44 69 76 46  6996 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      0007DA 00                    6997 	.db	0
      0007DB 00 00 08 E0           6998 	.dw	0,2272
      0007DF 43 4C 4B 50 72 65 73  6999 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      0007EC 00                    7000 	.db	0
      0007ED 00 00 00 00           7001 	.dw	0,0
      0007F1                       7002 Ldebug_pubnames_end:
                                   7003 
                                   7004 	.area .debug_frame (NOLOAD)
      001863 00 00                 7005 	.dw	0
      001865 00 0E                 7006 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      001867                       7007 Ldebug_CIE0_start:
      001867 FF FF                 7008 	.dw	0xffff
      001869 FF FF                 7009 	.dw	0xffff
      00186B 01                    7010 	.db	1
      00186C 00                    7011 	.db	0
      00186D 01                    7012 	.uleb128	1
      00186E 7F                    7013 	.sleb128	-1
      00186F 09                    7014 	.db	9
      001870 0C                    7015 	.db	12
      001871 08                    7016 	.uleb128	8
      001872 02                    7017 	.uleb128	2
      001873 89                    7018 	.db	137
      001874 01                    7019 	.uleb128	1
      001875                       7020 Ldebug_CIE0_end:
      001875 00 00 00 67           7021 	.dw	0,103
      001879 00 00 18 63           7022 	.dw	0,(Ldebug_CIE0_start-4)
      00187D 00 00 93 A2           7023 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$649)	;initial loc
      001881 00 00 00 48           7024 	.dw	0,Sstm8s_clk$CLK_ClearITPendingBit$672-Sstm8s_clk$CLK_ClearITPendingBit$649
      001885 01                    7025 	.db	1
      001886 00 00 93 A2           7026 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$649)
      00188A 0E                    7027 	.db	14
      00188B 02                    7028 	.uleb128	2
      00188C 01                    7029 	.db	1
      00188D 00 00 93 AE           7030 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$651)
      001891 0E                    7031 	.db	14
      001892 02                    7032 	.uleb128	2
      001893 01                    7033 	.db	1
      001894 00 00 93 B5           7034 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$652)
      001898 0E                    7035 	.db	14
      001899 03                    7036 	.uleb128	3
      00189A 01                    7037 	.db	1
      00189B 00 00 93 BA           7038 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$653)
      00189F 0E                    7039 	.db	14
      0018A0 02                    7040 	.uleb128	2
      0018A1 01                    7041 	.db	1
      0018A2 00 00 93 BF           7042 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$654)
      0018A6 0E                    7043 	.db	14
      0018A7 02                    7044 	.uleb128	2
      0018A8 01                    7045 	.db	1
      0018A9 00 00 93 C0           7046 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$655)
      0018AD 0E                    7047 	.db	14
      0018AE 03                    7048 	.uleb128	3
      0018AF 01                    7049 	.db	1
      0018B0 00 00 93 C2           7050 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$656)
      0018B4 0E                    7051 	.db	14
      0018B5 04                    7052 	.uleb128	4
      0018B6 01                    7053 	.db	1
      0018B7 00 00 93 C4           7054 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$657)
      0018BB 0E                    7055 	.db	14
      0018BC 05                    7056 	.uleb128	5
      0018BD 01                    7057 	.db	1
      0018BE 00 00 93 C6           7058 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$658)
      0018C2 0E                    7059 	.db	14
      0018C3 07                    7060 	.uleb128	7
      0018C4 01                    7061 	.db	1
      0018C5 00 00 93 C8           7062 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$659)
      0018C9 0E                    7063 	.db	14
      0018CA 08                    7064 	.uleb128	8
      0018CB 01                    7065 	.db	1
      0018CC 00 00 93 CA           7066 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$660)
      0018D0 0E                    7067 	.db	14
      0018D1 09                    7068 	.uleb128	9
      0018D2 01                    7069 	.db	1
      0018D3 00 00 93 CF           7070 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$661)
      0018D7 0E                    7071 	.db	14
      0018D8 03                    7072 	.uleb128	3
      0018D9 01                    7073 	.db	1
      0018DA 00 00 93 D0           7074 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$662)
      0018DE 0E                    7075 	.db	14
      0018DF 02                    7076 	.uleb128	2
                                   7077 
                                   7078 	.area .debug_frame (NOLOAD)
      0018E0 00 00                 7079 	.dw	0
      0018E2 00 0E                 7080 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0018E4                       7081 Ldebug_CIE1_start:
      0018E4 FF FF                 7082 	.dw	0xffff
      0018E6 FF FF                 7083 	.dw	0xffff
      0018E8 01                    7084 	.db	1
      0018E9 00                    7085 	.db	0
      0018EA 01                    7086 	.uleb128	1
      0018EB 7F                    7087 	.sleb128	-1
      0018EC 09                    7088 	.db	9
      0018ED 0C                    7089 	.db	12
      0018EE 08                    7090 	.uleb128	8
      0018EF 02                    7091 	.uleb128	2
      0018F0 89                    7092 	.db	137
      0018F1 01                    7093 	.uleb128	1
      0018F2                       7094 Ldebug_CIE1_end:
      0018F2 00 00 00 75           7095 	.dw	0,117
      0018F6 00 00 18 E0           7096 	.dw	0,(Ldebug_CIE1_start-4)
      0018FA 00 00 93 40           7097 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$611)	;initial loc
      0018FE 00 00 00 62           7098 	.dw	0,Sstm8s_clk$CLK_GetITStatus$647-Sstm8s_clk$CLK_GetITStatus$611
      001902 01                    7099 	.db	1
      001903 00 00 93 40           7100 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$611)
      001907 0E                    7101 	.db	14
      001908 02                    7102 	.uleb128	2
      001909 01                    7103 	.db	1
      00190A 00 00 93 4C           7104 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$613)
      00190E 0E                    7105 	.db	14
      00190F 02                    7106 	.uleb128	2
      001910 01                    7107 	.db	1
      001911 00 00 93 4D           7108 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$614)
      001915 0E                    7109 	.db	14
      001916 03                    7110 	.uleb128	3
      001917 01                    7111 	.db	1
      001918 00 00 93 52           7112 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$615)
      00191C 0E                    7113 	.db	14
      00191D 02                    7114 	.uleb128	2
      00191E 01                    7115 	.db	1
      00191F 00 00 93 57           7116 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$616)
      001923 0E                    7117 	.db	14
      001924 02                    7118 	.uleb128	2
      001925 01                    7119 	.db	1
      001926 00 00 93 5E           7120 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$617)
      00192A 0E                    7121 	.db	14
      00192B 03                    7122 	.uleb128	3
      00192C 01                    7123 	.db	1
      00192D 00 00 93 60           7124 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$618)
      001931 0E                    7125 	.db	14
      001932 04                    7126 	.uleb128	4
      001933 01                    7127 	.db	1
      001934 00 00 93 62           7128 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$619)
      001938 0E                    7129 	.db	14
      001939 05                    7130 	.uleb128	5
      00193A 01                    7131 	.db	1
      00193B 00 00 93 64           7132 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$620)
      00193F 0E                    7133 	.db	14
      001940 07                    7134 	.uleb128	7
      001941 01                    7135 	.db	1
      001942 00 00 93 66           7136 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$621)
      001946 0E                    7137 	.db	14
      001947 08                    7138 	.uleb128	8
      001948 01                    7139 	.db	1
      001949 00 00 93 68           7140 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$622)
      00194D 0E                    7141 	.db	14
      00194E 09                    7142 	.uleb128	9
      00194F 01                    7143 	.db	1
      001950 00 00 93 6D           7144 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$623)
      001954 0E                    7145 	.db	14
      001955 03                    7146 	.uleb128	3
      001956 01                    7147 	.db	1
      001957 00 00 93 6E           7148 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$624)
      00195B 0E                    7149 	.db	14
      00195C 02                    7150 	.uleb128	2
      00195D 01                    7151 	.db	1
      00195E 00 00 93 83           7152 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$628)
      001962 0E                    7153 	.db	14
      001963 02                    7154 	.uleb128	2
      001964 01                    7155 	.db	1
      001965 00 00 93 9B           7156 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$637)
      001969 0E                    7157 	.db	14
      00196A 02                    7158 	.uleb128	2
                                   7159 
                                   7160 	.area .debug_frame (NOLOAD)
      00196B 00 00                 7161 	.dw	0
      00196D 00 0E                 7162 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00196F                       7163 Ldebug_CIE2_start:
      00196F FF FF                 7164 	.dw	0xffff
      001971 FF FF                 7165 	.dw	0xffff
      001973 01                    7166 	.db	1
      001974 00                    7167 	.db	0
      001975 01                    7168 	.uleb128	1
      001976 7F                    7169 	.sleb128	-1
      001977 09                    7170 	.db	9
      001978 0C                    7171 	.db	12
      001979 08                    7172 	.uleb128	8
      00197A 02                    7173 	.uleb128	2
      00197B 89                    7174 	.db	137
      00197C 01                    7175 	.uleb128	1
      00197D                       7176 Ldebug_CIE2_end:
      00197D 00 00 00 C9           7177 	.dw	0,201
      001981 00 00 19 6B           7178 	.dw	0,(Ldebug_CIE2_start-4)
      001985 00 00 92 82           7179 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$551)	;initial loc
      001989 00 00 00 BE           7180 	.dw	0,Sstm8s_clk$CLK_GetFlagStatus$609-Sstm8s_clk$CLK_GetFlagStatus$551
      00198D 01                    7181 	.db	1
      00198E 00 00 92 82           7182 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$551)
      001992 0E                    7183 	.db	14
      001993 02                    7184 	.uleb128	2
      001994 01                    7185 	.db	1
      001995 00 00 92 83           7186 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$552)
      001999 0E                    7187 	.db	14
      00199A 03                    7188 	.uleb128	3
      00199B 01                    7189 	.db	1
      00199C 00 00 92 8D           7190 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$554)
      0019A0 0E                    7191 	.db	14
      0019A1 03                    7192 	.uleb128	3
      0019A2 01                    7193 	.db	1
      0019A3 00 00 92 95           7194 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$555)
      0019A7 0E                    7195 	.db	14
      0019A8 03                    7196 	.uleb128	3
      0019A9 01                    7197 	.db	1
      0019AA 00 00 92 9D           7198 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$556)
      0019AE 0E                    7199 	.db	14
      0019AF 03                    7200 	.uleb128	3
      0019B0 01                    7201 	.db	1
      0019B1 00 00 92 A5           7202 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$557)
      0019B5 0E                    7203 	.db	14
      0019B6 03                    7204 	.uleb128	3
      0019B7 01                    7205 	.db	1
      0019B8 00 00 92 AD           7206 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$558)
      0019BC 0E                    7207 	.db	14
      0019BD 03                    7208 	.uleb128	3
      0019BE 01                    7209 	.db	1
      0019BF 00 00 92 B5           7210 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$559)
      0019C3 0E                    7211 	.db	14
      0019C4 03                    7212 	.uleb128	3
      0019C5 01                    7213 	.db	1
      0019C6 00 00 92 BD           7214 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$560)
      0019CA 0E                    7215 	.db	14
      0019CB 03                    7216 	.uleb128	3
      0019CC 01                    7217 	.db	1
      0019CD 00 00 92 C5           7218 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$561)
      0019D1 0E                    7219 	.db	14
      0019D2 03                    7220 	.uleb128	3
      0019D3 01                    7221 	.db	1
      0019D4 00 00 92 CD           7222 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$562)
      0019D8 0E                    7223 	.db	14
      0019D9 03                    7224 	.uleb128	3
      0019DA 01                    7225 	.db	1
      0019DB 00 00 92 CE           7226 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$563)
      0019DF 0E                    7227 	.db	14
      0019E0 05                    7228 	.uleb128	5
      0019E1 01                    7229 	.db	1
      0019E2 00 00 92 D0           7230 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$564)
      0019E6 0E                    7231 	.db	14
      0019E7 06                    7232 	.uleb128	6
      0019E8 01                    7233 	.db	1
      0019E9 00 00 92 D2           7234 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$565)
      0019ED 0E                    7235 	.db	14
      0019EE 07                    7236 	.uleb128	7
      0019EF 01                    7237 	.db	1
      0019F0 00 00 92 D4           7238 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$566)
      0019F4 0E                    7239 	.db	14
      0019F5 08                    7240 	.uleb128	8
      0019F6 01                    7241 	.db	1
      0019F7 00 00 92 D6           7242 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$567)
      0019FB 0E                    7243 	.db	14
      0019FC 09                    7244 	.uleb128	9
      0019FD 01                    7245 	.db	1
      0019FE 00 00 92 D8           7246 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$568)
      001A02 0E                    7247 	.db	14
      001A03 0A                    7248 	.uleb128	10
      001A04 01                    7249 	.db	1
      001A05 00 00 92 DA           7250 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$569)
      001A09 0E                    7251 	.db	14
      001A0A 0B                    7252 	.uleb128	11
      001A0B 01                    7253 	.db	1
      001A0C 00 00 92 DF           7254 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$570)
      001A10 0E                    7255 	.db	14
      001A11 05                    7256 	.uleb128	5
      001A12 01                    7257 	.db	1
      001A13 00 00 92 E0           7258 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$571)
      001A17 0E                    7259 	.db	14
      001A18 03                    7260 	.uleb128	3
      001A19 01                    7261 	.db	1
      001A1A 00 00 92 ED           7262 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$574)
      001A1E 0E                    7263 	.db	14
      001A1F 03                    7264 	.uleb128	3
      001A20 01                    7265 	.db	1
      001A21 00 00 92 FE           7266 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$579)
      001A25 0E                    7267 	.db	14
      001A26 03                    7268 	.uleb128	3
      001A27 01                    7269 	.db	1
      001A28 00 00 93 0F           7270 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$584)
      001A2C 0E                    7271 	.db	14
      001A2D 03                    7272 	.uleb128	3
      001A2E 01                    7273 	.db	1
      001A2F 00 00 93 20           7274 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$589)
      001A33 0E                    7275 	.db	14
      001A34 03                    7276 	.uleb128	3
      001A35 01                    7277 	.db	1
      001A36 00 00 93 2A           7278 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$597)
      001A3A 0E                    7279 	.db	14
      001A3B 04                    7280 	.uleb128	4
      001A3C 01                    7281 	.db	1
      001A3D 00 00 93 2F           7282 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$598)
      001A41 0E                    7283 	.db	14
      001A42 03                    7284 	.uleb128	3
      001A43 01                    7285 	.db	1
      001A44 00 00 93 3F           7286 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$607)
      001A48 0E                    7287 	.db	14
      001A49 02                    7288 	.uleb128	2
                                   7289 
                                   7290 	.area .debug_frame (NOLOAD)
      001A4A 00 00                 7291 	.dw	0
      001A4C 00 0E                 7292 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      001A4E                       7293 Ldebug_CIE3_start:
      001A4E FF FF                 7294 	.dw	0xffff
      001A50 FF FF                 7295 	.dw	0xffff
      001A52 01                    7296 	.db	1
      001A53 00                    7297 	.db	0
      001A54 01                    7298 	.uleb128	1
      001A55 7F                    7299 	.sleb128	-1
      001A56 09                    7300 	.db	9
      001A57 0C                    7301 	.db	12
      001A58 08                    7302 	.uleb128	8
      001A59 02                    7303 	.uleb128	2
      001A5A 89                    7304 	.db	137
      001A5B 01                    7305 	.uleb128	1
      001A5C                       7306 Ldebug_CIE3_end:
      001A5C 00 00 00 13           7307 	.dw	0,19
      001A60 00 00 1A 4A           7308 	.dw	0,(Ldebug_CIE3_start-4)
      001A64 00 00 92 79           7309 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$545)	;initial loc
      001A68 00 00 00 09           7310 	.dw	0,Sstm8s_clk$CLK_SYSCLKEmergencyClear$549-Sstm8s_clk$CLK_SYSCLKEmergencyClear$545
      001A6C 01                    7311 	.db	1
      001A6D 00 00 92 79           7312 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$545)
      001A71 0E                    7313 	.db	14
      001A72 02                    7314 	.uleb128	2
                                   7315 
                                   7316 	.area .debug_frame (NOLOAD)
      001A73 00 00                 7317 	.dw	0
      001A75 00 0E                 7318 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      001A77                       7319 Ldebug_CIE4_start:
      001A77 FF FF                 7320 	.dw	0xffff
      001A79 FF FF                 7321 	.dw	0xffff
      001A7B 01                    7322 	.db	1
      001A7C 00                    7323 	.db	0
      001A7D 01                    7324 	.uleb128	1
      001A7E 7F                    7325 	.sleb128	-1
      001A7F 09                    7326 	.db	9
      001A80 0C                    7327 	.db	12
      001A81 08                    7328 	.uleb128	8
      001A82 02                    7329 	.uleb128	2
      001A83 89                    7330 	.db	137
      001A84 01                    7331 	.uleb128	1
      001A85                       7332 Ldebug_CIE4_end:
      001A85 00 00 00 6E           7333 	.dw	0,110
      001A89 00 00 1A 73           7334 	.dw	0,(Ldebug_CIE4_start-4)
      001A8D 00 00 92 1A           7335 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$525)	;initial loc
      001A91 00 00 00 5F           7336 	.dw	0,Sstm8s_clk$CLK_AdjustHSICalibrationValue$543-Sstm8s_clk$CLK_AdjustHSICalibrationValue$525
      001A95 01                    7337 	.db	1
      001A96 00 00 92 1A           7338 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$525)
      001A9A 0E                    7339 	.db	14
      001A9B 02                    7340 	.uleb128	2
      001A9C 01                    7341 	.db	1
      001A9D 00 00 92 29           7342 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$527)
      001AA1 0E                    7343 	.db	14
      001AA2 02                    7344 	.uleb128	2
      001AA3 01                    7345 	.db	1
      001AA4 00 00 92 32           7346 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$528)
      001AA8 0E                    7347 	.db	14
      001AA9 02                    7348 	.uleb128	2
      001AAA 01                    7349 	.db	1
      001AAB 00 00 92 3B           7350 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$529)
      001AAF 0E                    7351 	.db	14
      001AB0 02                    7352 	.uleb128	2
      001AB1 01                    7353 	.db	1
      001AB2 00 00 92 44           7354 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$530)
      001AB6 0E                    7355 	.db	14
      001AB7 02                    7356 	.uleb128	2
      001AB8 01                    7357 	.db	1
      001AB9 00 00 92 4D           7358 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$531)
      001ABD 0E                    7359 	.db	14
      001ABE 02                    7360 	.uleb128	2
      001ABF 01                    7361 	.db	1
      001AC0 00 00 92 56           7362 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$532)
      001AC4 0E                    7363 	.db	14
      001AC5 02                    7364 	.uleb128	2
      001AC6 01                    7365 	.db	1
      001AC7 00 00 92 5F           7366 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$533)
      001ACB 0E                    7367 	.db	14
      001ACC 02                    7368 	.uleb128	2
      001ACD 01                    7369 	.db	1
      001ACE 00 00 92 61           7370 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$534)
      001AD2 0E                    7371 	.db	14
      001AD3 03                    7372 	.uleb128	3
      001AD4 01                    7373 	.db	1
      001AD5 00 00 92 63           7374 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$535)
      001AD9 0E                    7375 	.db	14
      001ADA 04                    7376 	.uleb128	4
      001ADB 01                    7377 	.db	1
      001ADC 00 00 92 65           7378 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$536)
      001AE0 0E                    7379 	.db	14
      001AE1 06                    7380 	.uleb128	6
      001AE2 01                    7381 	.db	1
      001AE3 00 00 92 67           7382 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$537)
      001AE7 0E                    7383 	.db	14
      001AE8 07                    7384 	.uleb128	7
      001AE9 01                    7385 	.db	1
      001AEA 00 00 92 69           7386 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$538)
      001AEE 0E                    7387 	.db	14
      001AEF 08                    7388 	.uleb128	8
      001AF0 01                    7389 	.db	1
      001AF1 00 00 92 6E           7390 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$539)
      001AF5 0E                    7391 	.db	14
      001AF6 02                    7392 	.uleb128	2
                                   7393 
                                   7394 	.area .debug_frame (NOLOAD)
      001AF7 00 00                 7395 	.dw	0
      001AF9 00 0E                 7396 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      001AFB                       7397 Ldebug_CIE5_start:
      001AFB FF FF                 7398 	.dw	0xffff
      001AFD FF FF                 7399 	.dw	0xffff
      001AFF 01                    7400 	.db	1
      001B00 00                    7401 	.db	0
      001B01 01                    7402 	.uleb128	1
      001B02 7F                    7403 	.sleb128	-1
      001B03 09                    7404 	.db	9
      001B04 0C                    7405 	.db	12
      001B05 08                    7406 	.uleb128	8
      001B06 02                    7407 	.uleb128	2
      001B07 89                    7408 	.db	137
      001B08 01                    7409 	.uleb128	1
      001B09                       7410 Ldebug_CIE5_end:
      001B09 00 00 00 60           7411 	.dw	0,96
      001B0D 00 00 1A F7           7412 	.dw	0,(Ldebug_CIE5_start-4)
      001B11 00 00 91 BB           7413 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$493)	;initial loc
      001B15 00 00 00 5F           7414 	.dw	0,Sstm8s_clk$CLK_GetClockFreq$523-Sstm8s_clk$CLK_GetClockFreq$493
      001B19 01                    7415 	.db	1
      001B1A 00 00 91 BB           7416 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$493)
      001B1E 0E                    7417 	.db	14
      001B1F 02                    7418 	.uleb128	2
      001B20 01                    7419 	.db	1
      001B21 00 00 91 BD           7420 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$494)
      001B25 0E                    7421 	.db	14
      001B26 06                    7422 	.uleb128	6
      001B27 01                    7423 	.db	1
      001B28 00 00 91 CE           7424 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$497)
      001B2C 0E                    7425 	.db	14
      001B2D 06                    7426 	.uleb128	6
      001B2E 01                    7427 	.db	1
      001B2F 00 00 91 E1           7428 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$504)
      001B33 0E                    7429 	.db	14
      001B34 08                    7430 	.uleb128	8
      001B35 01                    7431 	.db	1
      001B36 00 00 91 E3           7432 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$505)
      001B3A 0E                    7433 	.db	14
      001B3B 0A                    7434 	.uleb128	10
      001B3C 01                    7435 	.db	1
      001B3D 00 00 91 E5           7436 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$506)
      001B41 0E                    7437 	.db	14
      001B42 0B                    7438 	.uleb128	11
      001B43 01                    7439 	.db	1
      001B44 00 00 91 E7           7440 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$507)
      001B48 0E                    7441 	.db	14
      001B49 0C                    7442 	.uleb128	12
      001B4A 01                    7443 	.db	1
      001B4B 00 00 91 E9           7444 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$508)
      001B4F 0E                    7445 	.db	14
      001B50 0D                    7446 	.uleb128	13
      001B51 01                    7447 	.db	1
      001B52 00 00 91 EB           7448 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$509)
      001B56 0E                    7449 	.db	14
      001B57 0E                    7450 	.uleb128	14
      001B58 01                    7451 	.db	1
      001B59 00 00 91 F0           7452 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$510)
      001B5D 0E                    7453 	.db	14
      001B5E 06                    7454 	.uleb128	6
      001B5F 01                    7455 	.db	1
      001B60 00 00 92 02           7456 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$512)
      001B64 0E                    7457 	.db	14
      001B65 06                    7458 	.uleb128	6
      001B66 01                    7459 	.db	1
      001B67 00 00 92 19           7460 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$521)
      001B6B 0E                    7461 	.db	14
      001B6C 02                    7462 	.uleb128	2
                                   7463 
                                   7464 	.area .debug_frame (NOLOAD)
      001B6D 00 00                 7465 	.dw	0
      001B6F 00 0E                 7466 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      001B71                       7467 Ldebug_CIE6_start:
      001B71 FF FF                 7468 	.dw	0xffff
      001B73 FF FF                 7469 	.dw	0xffff
      001B75 01                    7470 	.db	1
      001B76 00                    7471 	.db	0
      001B77 01                    7472 	.uleb128	1
      001B78 7F                    7473 	.sleb128	-1
      001B79 09                    7474 	.db	9
      001B7A 0C                    7475 	.db	12
      001B7B 08                    7476 	.uleb128	8
      001B7C 02                    7477 	.uleb128	2
      001B7D 89                    7478 	.db	137
      001B7E 01                    7479 	.uleb128	1
      001B7F                       7480 Ldebug_CIE6_end:
      001B7F 00 00 00 13           7481 	.dw	0,19
      001B83 00 00 1B 6D           7482 	.dw	0,(Ldebug_CIE6_start-4)
      001B87 00 00 91 B7           7483 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$487)	;initial loc
      001B8B 00 00 00 04           7484 	.dw	0,Sstm8s_clk$CLK_GetSYSCLKSource$491-Sstm8s_clk$CLK_GetSYSCLKSource$487
      001B8F 01                    7485 	.db	1
      001B90 00 00 91 B7           7486 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$487)
      001B94 0E                    7487 	.db	14
      001B95 02                    7488 	.uleb128	2
                                   7489 
                                   7490 	.area .debug_frame (NOLOAD)
      001B96 00 00                 7491 	.dw	0
      001B98 00 0E                 7492 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      001B9A                       7493 Ldebug_CIE7_start:
      001B9A FF FF                 7494 	.dw	0xffff
      001B9C FF FF                 7495 	.dw	0xffff
      001B9E 01                    7496 	.db	1
      001B9F 00                    7497 	.db	0
      001BA0 01                    7498 	.uleb128	1
      001BA1 7F                    7499 	.sleb128	-1
      001BA2 09                    7500 	.db	9
      001BA3 0C                    7501 	.db	12
      001BA4 08                    7502 	.uleb128	8
      001BA5 02                    7503 	.uleb128	2
      001BA6 89                    7504 	.db	137
      001BA7 01                    7505 	.uleb128	1
      001BA8                       7506 Ldebug_CIE7_end:
      001BA8 00 00 00 13           7507 	.dw	0,19
      001BAC 00 00 1B 96           7508 	.dw	0,(Ldebug_CIE7_start-4)
      001BB0 00 00 91 AE           7509 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$481)	;initial loc
      001BB4 00 00 00 09           7510 	.dw	0,Sstm8s_clk$CLK_ClockSecuritySystemEnable$485-Sstm8s_clk$CLK_ClockSecuritySystemEnable$481
      001BB8 01                    7511 	.db	1
      001BB9 00 00 91 AE           7512 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$481)
      001BBD 0E                    7513 	.db	14
      001BBE 02                    7514 	.uleb128	2
                                   7515 
                                   7516 	.area .debug_frame (NOLOAD)
      001BBF 00 00                 7517 	.dw	0
      001BC1 00 0E                 7518 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      001BC3                       7519 Ldebug_CIE8_start:
      001BC3 FF FF                 7520 	.dw	0xffff
      001BC5 FF FF                 7521 	.dw	0xffff
      001BC7 01                    7522 	.db	1
      001BC8 00                    7523 	.db	0
      001BC9 01                    7524 	.uleb128	1
      001BCA 7F                    7525 	.sleb128	-1
      001BCB 09                    7526 	.db	9
      001BCC 0C                    7527 	.db	12
      001BCD 08                    7528 	.uleb128	8
      001BCE 02                    7529 	.uleb128	2
      001BCF 89                    7530 	.db	137
      001BD0 01                    7531 	.uleb128	1
      001BD1                       7532 Ldebug_CIE8_end:
      001BD1 00 00 00 44           7533 	.dw	0,68
      001BD5 00 00 1B BF           7534 	.dw	0,(Ldebug_CIE8_start-4)
      001BD9 00 00 91 78           7535 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$460)	;initial loc
      001BDD 00 00 00 36           7536 	.dw	0,Sstm8s_clk$CLK_SWIMConfig$479-Sstm8s_clk$CLK_SWIMConfig$460
      001BE1 01                    7537 	.db	1
      001BE2 00 00 91 78           7538 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$460)
      001BE6 0E                    7539 	.db	14
      001BE7 02                    7540 	.uleb128	2
      001BE8 01                    7541 	.db	1
      001BE9 00 00 91 87           7542 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$462)
      001BED 0E                    7543 	.db	14
      001BEE 02                    7544 	.uleb128	2
      001BEF 01                    7545 	.db	1
      001BF0 00 00 91 89           7546 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$463)
      001BF4 0E                    7547 	.db	14
      001BF5 03                    7548 	.uleb128	3
      001BF6 01                    7549 	.db	1
      001BF7 00 00 91 8B           7550 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$464)
      001BFB 0E                    7551 	.db	14
      001BFC 04                    7552 	.uleb128	4
      001BFD 01                    7553 	.db	1
      001BFE 00 00 91 8D           7554 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$465)
      001C02 0E                    7555 	.db	14
      001C03 06                    7556 	.uleb128	6
      001C04 01                    7557 	.db	1
      001C05 00 00 91 8F           7558 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$466)
      001C09 0E                    7559 	.db	14
      001C0A 07                    7560 	.uleb128	7
      001C0B 01                    7561 	.db	1
      001C0C 00 00 91 91           7562 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$467)
      001C10 0E                    7563 	.db	14
      001C11 08                    7564 	.uleb128	8
      001C12 01                    7565 	.db	1
      001C13 00 00 91 96           7566 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$468)
      001C17 0E                    7567 	.db	14
      001C18 02                    7568 	.uleb128	2
                                   7569 
                                   7570 	.area .debug_frame (NOLOAD)
      001C19 00 00                 7571 	.dw	0
      001C1B 00 0E                 7572 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      001C1D                       7573 Ldebug_CIE9_start:
      001C1D FF FF                 7574 	.dw	0xffff
      001C1F FF FF                 7575 	.dw	0xffff
      001C21 01                    7576 	.db	1
      001C22 00                    7577 	.db	0
      001C23 01                    7578 	.uleb128	1
      001C24 7F                    7579 	.sleb128	-1
      001C25 09                    7580 	.db	9
      001C26 0C                    7581 	.db	12
      001C27 08                    7582 	.uleb128	8
      001C28 02                    7583 	.uleb128	2
      001C29 89                    7584 	.db	137
      001C2A 01                    7585 	.uleb128	1
      001C2B                       7586 Ldebug_CIE9_end:
      001C2B 00 00 00 98           7587 	.dw	0,152
      001C2F 00 00 1C 19           7588 	.dw	0,(Ldebug_CIE9_start-4)
      001C33 00 00 90 C9           7589 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$425)	;initial loc
      001C37 00 00 00 AF           7590 	.dw	0,Sstm8s_clk$CLK_SYSCLKConfig$458-Sstm8s_clk$CLK_SYSCLKConfig$425
      001C3B 01                    7591 	.db	1
      001C3C 00 00 90 C9           7592 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$425)
      001C40 0E                    7593 	.db	14
      001C41 02                    7594 	.uleb128	2
      001C42 01                    7595 	.db	1
      001C43 00 00 90 CA           7596 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$426)
      001C47 0E                    7597 	.db	14
      001C48 03                    7598 	.uleb128	3
      001C49 01                    7599 	.db	1
      001C4A 00 00 90 DA           7600 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$428)
      001C4E 0E                    7601 	.db	14
      001C4F 03                    7602 	.uleb128	3
      001C50 01                    7603 	.db	1
      001C51 00 00 90 E3           7604 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$429)
      001C55 0E                    7605 	.db	14
      001C56 03                    7606 	.uleb128	3
      001C57 01                    7607 	.db	1
      001C58 00 00 90 EC           7608 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$430)
      001C5C 0E                    7609 	.db	14
      001C5D 03                    7610 	.uleb128	3
      001C5E 01                    7611 	.db	1
      001C5F 00 00 90 F5           7612 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$431)
      001C63 0E                    7613 	.db	14
      001C64 03                    7614 	.uleb128	3
      001C65 01                    7615 	.db	1
      001C66 00 00 90 FE           7616 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$432)
      001C6A 0E                    7617 	.db	14
      001C6B 03                    7618 	.uleb128	3
      001C6C 01                    7619 	.db	1
      001C6D 00 00 91 07           7620 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$433)
      001C71 0E                    7621 	.db	14
      001C72 03                    7622 	.uleb128	3
      001C73 01                    7623 	.db	1
      001C74 00 00 91 10           7624 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$434)
      001C78 0E                    7625 	.db	14
      001C79 03                    7626 	.uleb128	3
      001C7A 01                    7627 	.db	1
      001C7B 00 00 91 19           7628 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$435)
      001C7F 0E                    7629 	.db	14
      001C80 03                    7630 	.uleb128	3
      001C81 01                    7631 	.db	1
      001C82 00 00 91 22           7632 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$436)
      001C86 0E                    7633 	.db	14
      001C87 03                    7634 	.uleb128	3
      001C88 01                    7635 	.db	1
      001C89 00 00 91 2B           7636 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$437)
      001C8D 0E                    7637 	.db	14
      001C8E 03                    7638 	.uleb128	3
      001C8F 01                    7639 	.db	1
      001C90 00 00 91 34           7640 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$438)
      001C94 0E                    7641 	.db	14
      001C95 03                    7642 	.uleb128	3
      001C96 01                    7643 	.db	1
      001C97 00 00 91 36           7644 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$439)
      001C9B 0E                    7645 	.db	14
      001C9C 04                    7646 	.uleb128	4
      001C9D 01                    7647 	.db	1
      001C9E 00 00 91 38           7648 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$440)
      001CA2 0E                    7649 	.db	14
      001CA3 05                    7650 	.uleb128	5
      001CA4 01                    7651 	.db	1
      001CA5 00 00 91 3A           7652 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$441)
      001CA9 0E                    7653 	.db	14
      001CAA 07                    7654 	.uleb128	7
      001CAB 01                    7655 	.db	1
      001CAC 00 00 91 3C           7656 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$442)
      001CB0 0E                    7657 	.db	14
      001CB1 08                    7658 	.uleb128	8
      001CB2 01                    7659 	.db	1
      001CB3 00 00 91 3E           7660 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$443)
      001CB7 0E                    7661 	.db	14
      001CB8 09                    7662 	.uleb128	9
      001CB9 01                    7663 	.db	1
      001CBA 00 00 91 43           7664 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$444)
      001CBE 0E                    7665 	.db	14
      001CBF 03                    7666 	.uleb128	3
      001CC0 01                    7667 	.db	1
      001CC1 00 00 91 77           7668 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$456)
      001CC5 0E                    7669 	.db	14
      001CC6 02                    7670 	.uleb128	2
                                   7671 
                                   7672 	.area .debug_frame (NOLOAD)
      001CC7 00 00                 7673 	.dw	0
      001CC9 00 0E                 7674 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      001CCB                       7675 Ldebug_CIE10_start:
      001CCB FF FF                 7676 	.dw	0xffff
      001CCD FF FF                 7677 	.dw	0xffff
      001CCF 01                    7678 	.db	1
      001CD0 00                    7679 	.db	0
      001CD1 01                    7680 	.uleb128	1
      001CD2 7F                    7681 	.sleb128	-1
      001CD3 09                    7682 	.db	9
      001CD4 0C                    7683 	.db	12
      001CD5 08                    7684 	.uleb128	8
      001CD6 02                    7685 	.uleb128	2
      001CD7 89                    7686 	.db	137
      001CD8 01                    7687 	.uleb128	1
      001CD9                       7688 Ldebug_CIE10_end:
      001CD9 00 00 00 B4           7689 	.dw	0,180
      001CDD 00 00 1C C7           7690 	.dw	0,(Ldebug_CIE10_start-4)
      001CE1 00 00 90 1F           7691 	.dw	0,(Sstm8s_clk$CLK_ITConfig$375)	;initial loc
      001CE5 00 00 00 AA           7692 	.dw	0,Sstm8s_clk$CLK_ITConfig$423-Sstm8s_clk$CLK_ITConfig$375
      001CE9 01                    7693 	.db	1
      001CEA 00 00 90 1F           7694 	.dw	0,(Sstm8s_clk$CLK_ITConfig$375)
      001CEE 0E                    7695 	.db	14
      001CEF 02                    7696 	.uleb128	2
      001CF0 01                    7697 	.db	1
      001CF1 00 00 90 20           7698 	.dw	0,(Sstm8s_clk$CLK_ITConfig$376)
      001CF5 0E                    7699 	.db	14
      001CF6 03                    7700 	.uleb128	3
      001CF7 01                    7701 	.db	1
      001CF8 00 00 90 2F           7702 	.dw	0,(Sstm8s_clk$CLK_ITConfig$378)
      001CFC 0E                    7703 	.db	14
      001CFD 03                    7704 	.uleb128	3
      001CFE 01                    7705 	.db	1
      001CFF 00 00 90 31           7706 	.dw	0,(Sstm8s_clk$CLK_ITConfig$379)
      001D03 0E                    7707 	.db	14
      001D04 04                    7708 	.uleb128	4
      001D05 01                    7709 	.db	1
      001D06 00 00 90 33           7710 	.dw	0,(Sstm8s_clk$CLK_ITConfig$380)
      001D0A 0E                    7711 	.db	14
      001D0B 05                    7712 	.uleb128	5
      001D0C 01                    7713 	.db	1
      001D0D 00 00 90 35           7714 	.dw	0,(Sstm8s_clk$CLK_ITConfig$381)
      001D11 0E                    7715 	.db	14
      001D12 07                    7716 	.uleb128	7
      001D13 01                    7717 	.db	1
      001D14 00 00 90 37           7718 	.dw	0,(Sstm8s_clk$CLK_ITConfig$382)
      001D18 0E                    7719 	.db	14
      001D19 08                    7720 	.uleb128	8
      001D1A 01                    7721 	.db	1
      001D1B 00 00 90 39           7722 	.dw	0,(Sstm8s_clk$CLK_ITConfig$383)
      001D1F 0E                    7723 	.db	14
      001D20 09                    7724 	.uleb128	9
      001D21 01                    7725 	.db	1
      001D22 00 00 90 3E           7726 	.dw	0,(Sstm8s_clk$CLK_ITConfig$384)
      001D26 0E                    7727 	.db	14
      001D27 03                    7728 	.uleb128	3
      001D28 01                    7729 	.db	1
      001D29 00 00 90 4A           7730 	.dw	0,(Sstm8s_clk$CLK_ITConfig$386)
      001D2D 0E                    7731 	.db	14
      001D2E 03                    7732 	.uleb128	3
      001D2F 01                    7733 	.db	1
      001D30 00 00 90 4B           7734 	.dw	0,(Sstm8s_clk$CLK_ITConfig$387)
      001D34 0E                    7735 	.db	14
      001D35 04                    7736 	.uleb128	4
      001D36 01                    7737 	.db	1
      001D37 00 00 90 50           7738 	.dw	0,(Sstm8s_clk$CLK_ITConfig$388)
      001D3B 0E                    7739 	.db	14
      001D3C 03                    7740 	.uleb128	3
      001D3D 01                    7741 	.db	1
      001D3E 00 00 90 53           7742 	.dw	0,(Sstm8s_clk$CLK_ITConfig$389)
      001D42 0E                    7743 	.db	14
      001D43 04                    7744 	.uleb128	4
      001D44 01                    7745 	.db	1
      001D45 00 00 90 58           7746 	.dw	0,(Sstm8s_clk$CLK_ITConfig$390)
      001D49 0E                    7747 	.db	14
      001D4A 03                    7748 	.uleb128	3
      001D4B 01                    7749 	.db	1
      001D4C 00 00 90 5D           7750 	.dw	0,(Sstm8s_clk$CLK_ITConfig$391)
      001D50 0E                    7751 	.db	14
      001D51 03                    7752 	.uleb128	3
      001D52 01                    7753 	.db	1
      001D53 00 00 90 6B           7754 	.dw	0,(Sstm8s_clk$CLK_ITConfig$392)
      001D57 0E                    7755 	.db	14
      001D58 04                    7756 	.uleb128	4
      001D59 01                    7757 	.db	1
      001D5A 00 00 90 6D           7758 	.dw	0,(Sstm8s_clk$CLK_ITConfig$393)
      001D5E 0E                    7759 	.db	14
      001D5F 05                    7760 	.uleb128	5
      001D60 01                    7761 	.db	1
      001D61 00 00 90 6F           7762 	.dw	0,(Sstm8s_clk$CLK_ITConfig$394)
      001D65 0E                    7763 	.db	14
      001D66 06                    7764 	.uleb128	6
      001D67 01                    7765 	.db	1
      001D68 00 00 90 71           7766 	.dw	0,(Sstm8s_clk$CLK_ITConfig$395)
      001D6C 0E                    7767 	.db	14
      001D6D 08                    7768 	.uleb128	8
      001D6E 01                    7769 	.db	1
      001D6F 00 00 90 73           7770 	.dw	0,(Sstm8s_clk$CLK_ITConfig$396)
      001D73 0E                    7771 	.db	14
      001D74 09                    7772 	.uleb128	9
      001D75 01                    7773 	.db	1
      001D76 00 00 90 75           7774 	.dw	0,(Sstm8s_clk$CLK_ITConfig$397)
      001D7A 0E                    7775 	.db	14
      001D7B 0A                    7776 	.uleb128	10
      001D7C 01                    7777 	.db	1
      001D7D 00 00 90 7A           7778 	.dw	0,(Sstm8s_clk$CLK_ITConfig$398)
      001D81 0E                    7779 	.db	14
      001D82 04                    7780 	.uleb128	4
      001D83 01                    7781 	.db	1
      001D84 00 00 90 7B           7782 	.dw	0,(Sstm8s_clk$CLK_ITConfig$399)
      001D88 0E                    7783 	.db	14
      001D89 03                    7784 	.uleb128	3
      001D8A 01                    7785 	.db	1
      001D8B 00 00 90 C8           7786 	.dw	0,(Sstm8s_clk$CLK_ITConfig$421)
      001D8F 0E                    7787 	.db	14
      001D90 02                    7788 	.uleb128	2
                                   7789 
                                   7790 	.area .debug_frame (NOLOAD)
      001D91 00 00                 7791 	.dw	0
      001D93 00 0E                 7792 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      001D95                       7793 Ldebug_CIE11_start:
      001D95 FF FF                 7794 	.dw	0xffff
      001D97 FF FF                 7795 	.dw	0xffff
      001D99 01                    7796 	.db	1
      001D9A 00                    7797 	.db	0
      001D9B 01                    7798 	.uleb128	1
      001D9C 7F                    7799 	.sleb128	-1
      001D9D 09                    7800 	.db	9
      001D9E 0C                    7801 	.db	12
      001D9F 08                    7802 	.uleb128	8
      001DA0 02                    7803 	.uleb128	2
      001DA1 89                    7804 	.db	137
      001DA2 01                    7805 	.uleb128	1
      001DA3                       7806 Ldebug_CIE11_end:
      001DA3 00 00 00 91           7807 	.dw	0,145
      001DA7 00 00 1D 91           7808 	.dw	0,(Ldebug_CIE11_start-4)
      001DAB 00 00 8F 84           7809 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$348)	;initial loc
      001DAF 00 00 00 9B           7810 	.dw	0,Sstm8s_clk$CLK_CCOConfig$373-Sstm8s_clk$CLK_CCOConfig$348
      001DB3 01                    7811 	.db	1
      001DB4 00 00 8F 84           7812 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$348)
      001DB8 0E                    7813 	.db	14
      001DB9 02                    7814 	.uleb128	2
      001DBA 01                    7815 	.db	1
      001DBB 00 00 8F 94           7816 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$350)
      001DBF 0E                    7817 	.db	14
      001DC0 02                    7818 	.uleb128	2
      001DC1 01                    7819 	.db	1
      001DC2 00 00 8F 9D           7820 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$351)
      001DC6 0E                    7821 	.db	14
      001DC7 02                    7822 	.uleb128	2
      001DC8 01                    7823 	.db	1
      001DC9 00 00 8F A6           7824 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$352)
      001DCD 0E                    7825 	.db	14
      001DCE 02                    7826 	.uleb128	2
      001DCF 01                    7827 	.db	1
      001DD0 00 00 8F AF           7828 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$353)
      001DD4 0E                    7829 	.db	14
      001DD5 02                    7830 	.uleb128	2
      001DD6 01                    7831 	.db	1
      001DD7 00 00 8F B8           7832 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$354)
      001DDB 0E                    7833 	.db	14
      001DDC 02                    7834 	.uleb128	2
      001DDD 01                    7835 	.db	1
      001DDE 00 00 8F C1           7836 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$355)
      001DE2 0E                    7837 	.db	14
      001DE3 02                    7838 	.uleb128	2
      001DE4 01                    7839 	.db	1
      001DE5 00 00 8F CA           7840 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$356)
      001DE9 0E                    7841 	.db	14
      001DEA 02                    7842 	.uleb128	2
      001DEB 01                    7843 	.db	1
      001DEC 00 00 8F D3           7844 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$357)
      001DF0 0E                    7845 	.db	14
      001DF1 02                    7846 	.uleb128	2
      001DF2 01                    7847 	.db	1
      001DF3 00 00 8F DC           7848 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$358)
      001DF7 0E                    7849 	.db	14
      001DF8 02                    7850 	.uleb128	2
      001DF9 01                    7851 	.db	1
      001DFA 00 00 8F E5           7852 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$359)
      001DFE 0E                    7853 	.db	14
      001DFF 02                    7854 	.uleb128	2
      001E00 01                    7855 	.db	1
      001E01 00 00 8F EE           7856 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$360)
      001E05 0E                    7857 	.db	14
      001E06 02                    7858 	.uleb128	2
      001E07 01                    7859 	.db	1
      001E08 00 00 8F F7           7860 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$361)
      001E0C 0E                    7861 	.db	14
      001E0D 02                    7862 	.uleb128	2
      001E0E 01                    7863 	.db	1
      001E0F 00 00 8F F9           7864 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$362)
      001E13 0E                    7865 	.db	14
      001E14 03                    7866 	.uleb128	3
      001E15 01                    7867 	.db	1
      001E16 00 00 8F FB           7868 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$363)
      001E1A 0E                    7869 	.db	14
      001E1B 04                    7870 	.uleb128	4
      001E1C 01                    7871 	.db	1
      001E1D 00 00 8F FD           7872 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$364)
      001E21 0E                    7873 	.db	14
      001E22 06                    7874 	.uleb128	6
      001E23 01                    7875 	.db	1
      001E24 00 00 8F FF           7876 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$365)
      001E28 0E                    7877 	.db	14
      001E29 07                    7878 	.uleb128	7
      001E2A 01                    7879 	.db	1
      001E2B 00 00 90 01           7880 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$366)
      001E2F 0E                    7881 	.db	14
      001E30 08                    7882 	.uleb128	8
      001E31 01                    7883 	.db	1
      001E32 00 00 90 06           7884 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$367)
      001E36 0E                    7885 	.db	14
      001E37 02                    7886 	.uleb128	2
                                   7887 
                                   7888 	.area .debug_frame (NOLOAD)
      001E38 00 00                 7889 	.dw	0
      001E3A 00 0E                 7890 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      001E3C                       7891 Ldebug_CIE12_start:
      001E3C FF FF                 7892 	.dw	0xffff
      001E3E FF FF                 7893 	.dw	0xffff
      001E40 01                    7894 	.db	1
      001E41 00                    7895 	.db	0
      001E42 01                    7896 	.uleb128	1
      001E43 7F                    7897 	.sleb128	-1
      001E44 09                    7898 	.db	9
      001E45 0C                    7899 	.db	12
      001E46 08                    7900 	.uleb128	8
      001E47 02                    7901 	.uleb128	2
      001E48 89                    7902 	.db	137
      001E49 01                    7903 	.uleb128	1
      001E4A                       7904 Ldebug_CIE12_end:
      001E4A 00 00 00 52           7905 	.dw	0,82
      001E4E 00 00 1E 38           7906 	.dw	0,(Ldebug_CIE12_start-4)
      001E52 00 00 8F 42           7907 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$331)	;initial loc
      001E56 00 00 00 42           7908 	.dw	0,Sstm8s_clk$CLK_HSIPrescalerConfig$346-Sstm8s_clk$CLK_HSIPrescalerConfig$331
      001E5A 01                    7909 	.db	1
      001E5B 00 00 8F 42           7910 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$331)
      001E5F 0E                    7911 	.db	14
      001E60 02                    7912 	.uleb128	2
      001E61 01                    7913 	.db	1
      001E62 00 00 8F 52           7914 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$333)
      001E66 0E                    7915 	.db	14
      001E67 02                    7916 	.uleb128	2
      001E68 01                    7917 	.db	1
      001E69 00 00 8F 5B           7918 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$334)
      001E6D 0E                    7919 	.db	14
      001E6E 02                    7920 	.uleb128	2
      001E6F 01                    7921 	.db	1
      001E70 00 00 8F 64           7922 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$335)
      001E74 0E                    7923 	.db	14
      001E75 02                    7924 	.uleb128	2
      001E76 01                    7925 	.db	1
      001E77 00 00 8F 66           7926 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$336)
      001E7B 0E                    7927 	.db	14
      001E7C 03                    7928 	.uleb128	3
      001E7D 01                    7929 	.db	1
      001E7E 00 00 8F 68           7930 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$337)
      001E82 0E                    7931 	.db	14
      001E83 04                    7932 	.uleb128	4
      001E84 01                    7933 	.db	1
      001E85 00 00 8F 6A           7934 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$338)
      001E89 0E                    7935 	.db	14
      001E8A 06                    7936 	.uleb128	6
      001E8B 01                    7937 	.db	1
      001E8C 00 00 8F 6C           7938 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$339)
      001E90 0E                    7939 	.db	14
      001E91 07                    7940 	.uleb128	7
      001E92 01                    7941 	.db	1
      001E93 00 00 8F 6E           7942 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$340)
      001E97 0E                    7943 	.db	14
      001E98 08                    7944 	.uleb128	8
      001E99 01                    7945 	.db	1
      001E9A 00 00 8F 73           7946 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$341)
      001E9E 0E                    7947 	.db	14
      001E9F 02                    7948 	.uleb128	2
                                   7949 
                                   7950 	.area .debug_frame (NOLOAD)
      001EA0 00 00                 7951 	.dw	0
      001EA2 00 0E                 7952 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      001EA4                       7953 Ldebug_CIE13_start:
      001EA4 FF FF                 7954 	.dw	0xffff
      001EA6 FF FF                 7955 	.dw	0xffff
      001EA8 01                    7956 	.db	1
      001EA9 00                    7957 	.db	0
      001EAA 01                    7958 	.uleb128	1
      001EAB 7F                    7959 	.sleb128	-1
      001EAC 09                    7960 	.db	9
      001EAD 0C                    7961 	.db	12
      001EAE 08                    7962 	.uleb128	8
      001EAF 02                    7963 	.uleb128	2
      001EB0 89                    7964 	.db	137
      001EB1 01                    7965 	.uleb128	1
      001EB2                       7966 Ldebug_CIE13_end:
      001EB2 00 00 01 08           7967 	.dw	0,264
      001EB6 00 00 1E A0           7968 	.dw	0,(Ldebug_CIE13_start-4)
      001EBA 00 00 8D A8           7969 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$221)	;initial loc
      001EBE 00 00 01 9A           7970 	.dw	0,Sstm8s_clk$CLK_ClockSwitchConfig$329-Sstm8s_clk$CLK_ClockSwitchConfig$221
      001EC2 01                    7971 	.db	1
      001EC3 00 00 8D A8           7972 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$221)
      001EC7 0E                    7973 	.db	14
      001EC8 02                    7974 	.uleb128	2
      001EC9 01                    7975 	.db	1
      001ECA 00 00 8D AA           7976 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$222)
      001ECE 0E                    7977 	.db	14
      001ECF 05                    7978 	.uleb128	5
      001ED0 01                    7979 	.db	1
      001ED1 00 00 8D B8           7980 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$225)
      001ED5 0E                    7981 	.db	14
      001ED6 05                    7982 	.uleb128	5
      001ED7 01                    7983 	.db	1
      001ED8 00 00 8D C1           7984 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$226)
      001EDC 0E                    7985 	.db	14
      001EDD 05                    7986 	.uleb128	5
      001EDE 01                    7987 	.db	1
      001EDF 00 00 8D CA           7988 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$227)
      001EE3 0E                    7989 	.db	14
      001EE4 05                    7990 	.uleb128	5
      001EE5 01                    7991 	.db	1
      001EE6 00 00 8D CC           7992 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$228)
      001EEA 0E                    7993 	.db	14
      001EEB 06                    7994 	.uleb128	6
      001EEC 01                    7995 	.db	1
      001EED 00 00 8D CE           7996 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$229)
      001EF1 0E                    7997 	.db	14
      001EF2 07                    7998 	.uleb128	7
      001EF3 01                    7999 	.db	1
      001EF4 00 00 8D D0           8000 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$230)
      001EF8 0E                    8001 	.db	14
      001EF9 09                    8002 	.uleb128	9
      001EFA 01                    8003 	.db	1
      001EFB 00 00 8D D2           8004 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$231)
      001EFF 0E                    8005 	.db	14
      001F00 0A                    8006 	.uleb128	10
      001F01 01                    8007 	.db	1
      001F02 00 00 8D D4           8008 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$232)
      001F06 0E                    8009 	.db	14
      001F07 0B                    8010 	.uleb128	11
      001F08 01                    8011 	.db	1
      001F09 00 00 8D D9           8012 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$233)
      001F0D 0E                    8013 	.db	14
      001F0E 05                    8014 	.uleb128	5
      001F0F 01                    8015 	.db	1
      001F10 00 00 8D E7           8016 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$235)
      001F14 0E                    8017 	.db	14
      001F15 05                    8018 	.uleb128	5
      001F16 01                    8019 	.db	1
      001F17 00 00 8D F7           8020 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$236)
      001F1B 0E                    8021 	.db	14
      001F1C 06                    8022 	.uleb128	6
      001F1D 01                    8023 	.db	1
      001F1E 00 00 8D F9           8024 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$237)
      001F22 0E                    8025 	.db	14
      001F23 07                    8026 	.uleb128	7
      001F24 01                    8027 	.db	1
      001F25 00 00 8D FB           8028 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$238)
      001F29 0E                    8029 	.db	14
      001F2A 09                    8030 	.uleb128	9
      001F2B 01                    8031 	.db	1
      001F2C 00 00 8D FD           8032 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$239)
      001F30 0E                    8033 	.db	14
      001F31 0A                    8034 	.uleb128	10
      001F32 01                    8035 	.db	1
      001F33 00 00 8D FF           8036 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$240)
      001F37 0E                    8037 	.db	14
      001F38 0B                    8038 	.uleb128	11
      001F39 01                    8039 	.db	1
      001F3A 00 00 8E 04           8040 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$241)
      001F3E 0E                    8041 	.db	14
      001F3F 05                    8042 	.uleb128	5
      001F40 01                    8043 	.db	1
      001F41 00 00 8E 13           8044 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$243)
      001F45 0E                    8045 	.db	14
      001F46 05                    8046 	.uleb128	5
      001F47 01                    8047 	.db	1
      001F48 00 00 8E 15           8048 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$244)
      001F4C 0E                    8049 	.db	14
      001F4D 06                    8050 	.uleb128	6
      001F4E 01                    8051 	.db	1
      001F4F 00 00 8E 17           8052 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$245)
      001F53 0E                    8053 	.db	14
      001F54 07                    8054 	.uleb128	7
      001F55 01                    8055 	.db	1
      001F56 00 00 8E 19           8056 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$246)
      001F5A 0E                    8057 	.db	14
      001F5B 09                    8058 	.uleb128	9
      001F5C 01                    8059 	.db	1
      001F5D 00 00 8E 1B           8060 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$247)
      001F61 0E                    8061 	.db	14
      001F62 0A                    8062 	.uleb128	10
      001F63 01                    8063 	.db	1
      001F64 00 00 8E 1D           8064 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$248)
      001F68 0E                    8065 	.db	14
      001F69 0B                    8066 	.uleb128	11
      001F6A 01                    8067 	.db	1
      001F6B 00 00 8E 22           8068 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$249)
      001F6F 0E                    8069 	.db	14
      001F70 05                    8070 	.uleb128	5
      001F71 01                    8071 	.db	1
      001F72 00 00 8E 31           8072 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$251)
      001F76 0E                    8073 	.db	14
      001F77 05                    8074 	.uleb128	5
      001F78 01                    8075 	.db	1
      001F79 00 00 8E 33           8076 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$252)
      001F7D 0E                    8077 	.db	14
      001F7E 06                    8078 	.uleb128	6
      001F7F 01                    8079 	.db	1
      001F80 00 00 8E 35           8080 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$253)
      001F84 0E                    8081 	.db	14
      001F85 07                    8082 	.uleb128	7
      001F86 01                    8083 	.db	1
      001F87 00 00 8E 37           8084 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$254)
      001F8B 0E                    8085 	.db	14
      001F8C 09                    8086 	.uleb128	9
      001F8D 01                    8087 	.db	1
      001F8E 00 00 8E 39           8088 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$255)
      001F92 0E                    8089 	.db	14
      001F93 0A                    8090 	.uleb128	10
      001F94 01                    8091 	.db	1
      001F95 00 00 8E 3B           8092 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$256)
      001F99 0E                    8093 	.db	14
      001F9A 0B                    8094 	.uleb128	11
      001F9B 01                    8095 	.db	1
      001F9C 00 00 8E 40           8096 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$257)
      001FA0 0E                    8097 	.db	14
      001FA1 05                    8098 	.uleb128	5
      001FA2 01                    8099 	.db	1
      001FA3 00 00 8E FA           8100 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$311)
      001FA7 0E                    8101 	.db	14
      001FA8 05                    8102 	.uleb128	5
      001FA9 01                    8103 	.db	1
      001FAA 00 00 8F 18           8104 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$316)
      001FAE 0E                    8105 	.db	14
      001FAF 05                    8106 	.uleb128	5
      001FB0 01                    8107 	.db	1
      001FB1 00 00 8F 36           8108 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$321)
      001FB5 0E                    8109 	.db	14
      001FB6 05                    8110 	.uleb128	5
      001FB7 01                    8111 	.db	1
      001FB8 00 00 8F 41           8112 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$327)
      001FBC 0E                    8113 	.db	14
      001FBD 02                    8114 	.uleb128	2
                                   8115 
                                   8116 	.area .debug_frame (NOLOAD)
      001FBE 00 00                 8117 	.dw	0
      001FC0 00 0E                 8118 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      001FC2                       8119 Ldebug_CIE14_start:
      001FC2 FF FF                 8120 	.dw	0xffff
      001FC4 FF FF                 8121 	.dw	0xffff
      001FC6 01                    8122 	.db	1
      001FC7 00                    8123 	.db	0
      001FC8 01                    8124 	.uleb128	1
      001FC9 7F                    8125 	.sleb128	-1
      001FCA 09                    8126 	.db	9
      001FCB 0C                    8127 	.db	12
      001FCC 08                    8128 	.uleb128	8
      001FCD 02                    8129 	.uleb128	2
      001FCE 89                    8130 	.db	137
      001FCF 01                    8131 	.uleb128	1
      001FD0                       8132 Ldebug_CIE14_end:
      001FD0 00 00 00 D0           8133 	.dw	0,208
      001FD4 00 00 1F BE           8134 	.dw	0,(Ldebug_CIE14_start-4)
      001FD8 00 00 8C 96           8135 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$166)	;initial loc
      001FDC 00 00 01 12           8136 	.dw	0,Sstm8s_clk$CLK_PeripheralClockConfig$219-Sstm8s_clk$CLK_PeripheralClockConfig$166
      001FE0 01                    8137 	.db	1
      001FE1 00 00 8C 96           8138 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$166)
      001FE5 0E                    8139 	.db	14
      001FE6 02                    8140 	.uleb128	2
      001FE7 01                    8141 	.db	1
      001FE8 00 00 8C 97           8142 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$167)
      001FEC 0E                    8143 	.db	14
      001FED 04                    8144 	.uleb128	4
      001FEE 01                    8145 	.db	1
      001FEF 00 00 8C A6           8146 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$169)
      001FF3 0E                    8147 	.db	14
      001FF4 04                    8148 	.uleb128	4
      001FF5 01                    8149 	.db	1
      001FF6 00 00 8C A8           8150 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$170)
      001FFA 0E                    8151 	.db	14
      001FFB 05                    8152 	.uleb128	5
      001FFC 01                    8153 	.db	1
      001FFD 00 00 8C AA           8154 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$171)
      002001 0E                    8155 	.db	14
      002002 06                    8156 	.uleb128	6
      002003 01                    8157 	.db	1
      002004 00 00 8C AC           8158 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$172)
      002008 0E                    8159 	.db	14
      002009 08                    8160 	.uleb128	8
      00200A 01                    8161 	.db	1
      00200B 00 00 8C AE           8162 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$173)
      00200F 0E                    8163 	.db	14
      002010 09                    8164 	.uleb128	9
      002011 01                    8165 	.db	1
      002012 00 00 8C B0           8166 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$174)
      002016 0E                    8167 	.db	14
      002017 0A                    8168 	.uleb128	10
      002018 01                    8169 	.db	1
      002019 00 00 8C B5           8170 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$175)
      00201D 0E                    8171 	.db	14
      00201E 04                    8172 	.uleb128	4
      00201F 01                    8173 	.db	1
      002020 00 00 8C C4           8174 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$177)
      002024 0E                    8175 	.db	14
      002025 04                    8176 	.uleb128	4
      002026 01                    8177 	.db	1
      002027 00 00 8C D0           8178 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$178)
      00202B 0E                    8179 	.db	14
      00202C 04                    8180 	.uleb128	4
      00202D 01                    8181 	.db	1
      00202E 00 00 8C E5           8182 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$179)
      002032 0E                    8183 	.db	14
      002033 04                    8184 	.uleb128	4
      002034 01                    8185 	.db	1
      002035 00 00 8C F3           8186 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$180)
      002039 0E                    8187 	.db	14
      00203A 04                    8188 	.uleb128	4
      00203B 01                    8189 	.db	1
      00203C 00 00 8D 06           8190 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$181)
      002040 0E                    8191 	.db	14
      002041 04                    8192 	.uleb128	4
      002042 01                    8193 	.db	1
      002043 00 00 8D 22           8194 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$182)
      002047 0E                    8195 	.db	14
      002048 04                    8196 	.uleb128	4
      002049 01                    8197 	.db	1
      00204A 00 00 8D 2B           8198 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$183)
      00204E 0E                    8199 	.db	14
      00204F 04                    8200 	.uleb128	4
      002050 01                    8201 	.db	1
      002051 00 00 8D 34           8202 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$184)
      002055 0E                    8203 	.db	14
      002056 04                    8204 	.uleb128	4
      002057 01                    8205 	.db	1
      002058 00 00 8D 3D           8206 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$185)
      00205C 0E                    8207 	.db	14
      00205D 04                    8208 	.uleb128	4
      00205E 01                    8209 	.db	1
      00205F 00 00 8D 46           8210 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$186)
      002063 0E                    8211 	.db	14
      002064 04                    8212 	.uleb128	4
      002065 01                    8213 	.db	1
      002066 00 00 8D 48           8214 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$187)
      00206A 0E                    8215 	.db	14
      00206B 05                    8216 	.uleb128	5
      00206C 01                    8217 	.db	1
      00206D 00 00 8D 4A           8218 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$188)
      002071 0E                    8219 	.db	14
      002072 06                    8220 	.uleb128	6
      002073 01                    8221 	.db	1
      002074 00 00 8D 4C           8222 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$189)
      002078 0E                    8223 	.db	14
      002079 08                    8224 	.uleb128	8
      00207A 01                    8225 	.db	1
      00207B 00 00 8D 4E           8226 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$190)
      00207F 0E                    8227 	.db	14
      002080 09                    8228 	.uleb128	9
      002081 01                    8229 	.db	1
      002082 00 00 8D 50           8230 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$191)
      002086 0E                    8231 	.db	14
      002087 0A                    8232 	.uleb128	10
      002088 01                    8233 	.db	1
      002089 00 00 8D 55           8234 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$192)
      00208D 0E                    8235 	.db	14
      00208E 04                    8236 	.uleb128	4
      00208F 01                    8237 	.db	1
      002090 00 00 8D 5A           8238 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$194)
      002094 0E                    8239 	.db	14
      002095 05                    8240 	.uleb128	5
      002096 01                    8241 	.db	1
      002097 00 00 8D 5F           8242 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$195)
      00209B 0E                    8243 	.db	14
      00209C 04                    8244 	.uleb128	4
      00209D 01                    8245 	.db	1
      00209E 00 00 8D A7           8246 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$217)
      0020A2 0E                    8247 	.db	14
      0020A3 02                    8248 	.uleb128	2
                                   8249 
                                   8250 	.area .debug_frame (NOLOAD)
      0020A4 00 00                 8251 	.dw	0
      0020A6 00 0E                 8252 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      0020A8                       8253 Ldebug_CIE15_start:
      0020A8 FF FF                 8254 	.dw	0xffff
      0020AA FF FF                 8255 	.dw	0xffff
      0020AC 01                    8256 	.db	1
      0020AD 00                    8257 	.db	0
      0020AE 01                    8258 	.uleb128	1
      0020AF 7F                    8259 	.sleb128	-1
      0020B0 09                    8260 	.db	9
      0020B1 0C                    8261 	.db	12
      0020B2 08                    8262 	.uleb128	8
      0020B3 02                    8263 	.uleb128	2
      0020B4 89                    8264 	.db	137
      0020B5 01                    8265 	.uleb128	1
      0020B6                       8266 Ldebug_CIE15_end:
      0020B6 00 00 00 44           8267 	.dw	0,68
      0020BA 00 00 20 A4           8268 	.dw	0,(Ldebug_CIE15_start-4)
      0020BE 00 00 8C 60           8269 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$145)	;initial loc
      0020C2 00 00 00 36           8270 	.dw	0,Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$164-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$145
      0020C6 01                    8271 	.db	1
      0020C7 00 00 8C 60           8272 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$145)
      0020CB 0E                    8273 	.db	14
      0020CC 02                    8274 	.uleb128	2
      0020CD 01                    8275 	.db	1
      0020CE 00 00 8C 6F           8276 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$147)
      0020D2 0E                    8277 	.db	14
      0020D3 02                    8278 	.uleb128	2
      0020D4 01                    8279 	.db	1
      0020D5 00 00 8C 71           8280 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$148)
      0020D9 0E                    8281 	.db	14
      0020DA 03                    8282 	.uleb128	3
      0020DB 01                    8283 	.db	1
      0020DC 00 00 8C 73           8284 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$149)
      0020E0 0E                    8285 	.db	14
      0020E1 05                    8286 	.uleb128	5
      0020E2 01                    8287 	.db	1
      0020E3 00 00 8C 75           8288 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$150)
      0020E7 0E                    8289 	.db	14
      0020E8 06                    8290 	.uleb128	6
      0020E9 01                    8291 	.db	1
      0020EA 00 00 8C 77           8292 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$151)
      0020EE 0E                    8293 	.db	14
      0020EF 07                    8294 	.uleb128	7
      0020F0 01                    8295 	.db	1
      0020F1 00 00 8C 79           8296 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$152)
      0020F5 0E                    8297 	.db	14
      0020F6 08                    8298 	.uleb128	8
      0020F7 01                    8299 	.db	1
      0020F8 00 00 8C 7E           8300 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$153)
      0020FC 0E                    8301 	.db	14
      0020FD 02                    8302 	.uleb128	2
                                   8303 
                                   8304 	.area .debug_frame (NOLOAD)
      0020FE 00 00                 8305 	.dw	0
      002100 00 0E                 8306 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      002102                       8307 Ldebug_CIE16_start:
      002102 FF FF                 8308 	.dw	0xffff
      002104 FF FF                 8309 	.dw	0xffff
      002106 01                    8310 	.db	1
      002107 00                    8311 	.db	0
      002108 01                    8312 	.uleb128	1
      002109 7F                    8313 	.sleb128	-1
      00210A 09                    8314 	.db	9
      00210B 0C                    8315 	.db	12
      00210C 08                    8316 	.uleb128	8
      00210D 02                    8317 	.uleb128	2
      00210E 89                    8318 	.db	137
      00210F 01                    8319 	.uleb128	1
      002110                       8320 Ldebug_CIE16_end:
      002110 00 00 00 44           8321 	.dw	0,68
      002114 00 00 20 FE           8322 	.dw	0,(Ldebug_CIE16_start-4)
      002118 00 00 8C 2A           8323 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$124)	;initial loc
      00211C 00 00 00 36           8324 	.dw	0,Sstm8s_clk$CLK_ClockSwitchCmd$143-Sstm8s_clk$CLK_ClockSwitchCmd$124
      002120 01                    8325 	.db	1
      002121 00 00 8C 2A           8326 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$124)
      002125 0E                    8327 	.db	14
      002126 02                    8328 	.uleb128	2
      002127 01                    8329 	.db	1
      002128 00 00 8C 39           8330 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$126)
      00212C 0E                    8331 	.db	14
      00212D 02                    8332 	.uleb128	2
      00212E 01                    8333 	.db	1
      00212F 00 00 8C 3B           8334 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$127)
      002133 0E                    8335 	.db	14
      002134 03                    8336 	.uleb128	3
      002135 01                    8337 	.db	1
      002136 00 00 8C 3D           8338 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$128)
      00213A 0E                    8339 	.db	14
      00213B 05                    8340 	.uleb128	5
      00213C 01                    8341 	.db	1
      00213D 00 00 8C 3F           8342 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$129)
      002141 0E                    8343 	.db	14
      002142 06                    8344 	.uleb128	6
      002143 01                    8345 	.db	1
      002144 00 00 8C 41           8346 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$130)
      002148 0E                    8347 	.db	14
      002149 07                    8348 	.uleb128	7
      00214A 01                    8349 	.db	1
      00214B 00 00 8C 43           8350 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$131)
      00214F 0E                    8351 	.db	14
      002150 08                    8352 	.uleb128	8
      002151 01                    8353 	.db	1
      002152 00 00 8C 48           8354 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$132)
      002156 0E                    8355 	.db	14
      002157 02                    8356 	.uleb128	2
                                   8357 
                                   8358 	.area .debug_frame (NOLOAD)
      002158 00 00                 8359 	.dw	0
      00215A 00 0E                 8360 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      00215C                       8361 Ldebug_CIE17_start:
      00215C FF FF                 8362 	.dw	0xffff
      00215E FF FF                 8363 	.dw	0xffff
      002160 01                    8364 	.db	1
      002161 00                    8365 	.db	0
      002162 01                    8366 	.uleb128	1
      002163 7F                    8367 	.sleb128	-1
      002164 09                    8368 	.db	9
      002165 0C                    8369 	.db	12
      002166 08                    8370 	.uleb128	8
      002167 02                    8371 	.uleb128	2
      002168 89                    8372 	.db	137
      002169 01                    8373 	.uleb128	1
      00216A                       8374 Ldebug_CIE17_end:
      00216A 00 00 00 44           8375 	.dw	0,68
      00216E 00 00 21 58           8376 	.dw	0,(Ldebug_CIE17_start-4)
      002172 00 00 8B F4           8377 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$103)	;initial loc
      002176 00 00 00 36           8378 	.dw	0,Sstm8s_clk$CLK_CCOCmd$122-Sstm8s_clk$CLK_CCOCmd$103
      00217A 01                    8379 	.db	1
      00217B 00 00 8B F4           8380 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$103)
      00217F 0E                    8381 	.db	14
      002180 02                    8382 	.uleb128	2
      002181 01                    8383 	.db	1
      002182 00 00 8C 03           8384 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$105)
      002186 0E                    8385 	.db	14
      002187 02                    8386 	.uleb128	2
      002188 01                    8387 	.db	1
      002189 00 00 8C 05           8388 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$106)
      00218D 0E                    8389 	.db	14
      00218E 03                    8390 	.uleb128	3
      00218F 01                    8391 	.db	1
      002190 00 00 8C 07           8392 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$107)
      002194 0E                    8393 	.db	14
      002195 05                    8394 	.uleb128	5
      002196 01                    8395 	.db	1
      002197 00 00 8C 09           8396 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$108)
      00219B 0E                    8397 	.db	14
      00219C 06                    8398 	.uleb128	6
      00219D 01                    8399 	.db	1
      00219E 00 00 8C 0B           8400 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$109)
      0021A2 0E                    8401 	.db	14
      0021A3 07                    8402 	.uleb128	7
      0021A4 01                    8403 	.db	1
      0021A5 00 00 8C 0D           8404 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$110)
      0021A9 0E                    8405 	.db	14
      0021AA 08                    8406 	.uleb128	8
      0021AB 01                    8407 	.db	1
      0021AC 00 00 8C 12           8408 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$111)
      0021B0 0E                    8409 	.db	14
      0021B1 02                    8410 	.uleb128	2
                                   8411 
                                   8412 	.area .debug_frame (NOLOAD)
      0021B2 00 00                 8413 	.dw	0
      0021B4 00 0E                 8414 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      0021B6                       8415 Ldebug_CIE18_start:
      0021B6 FF FF                 8416 	.dw	0xffff
      0021B8 FF FF                 8417 	.dw	0xffff
      0021BA 01                    8418 	.db	1
      0021BB 00                    8419 	.db	0
      0021BC 01                    8420 	.uleb128	1
      0021BD 7F                    8421 	.sleb128	-1
      0021BE 09                    8422 	.db	9
      0021BF 0C                    8423 	.db	12
      0021C0 08                    8424 	.uleb128	8
      0021C1 02                    8425 	.uleb128	2
      0021C2 89                    8426 	.db	137
      0021C3 01                    8427 	.uleb128	1
      0021C4                       8428 Ldebug_CIE18_end:
      0021C4 00 00 00 44           8429 	.dw	0,68
      0021C8 00 00 21 B2           8430 	.dw	0,(Ldebug_CIE18_start-4)
      0021CC 00 00 8B BE           8431 	.dw	0,(Sstm8s_clk$CLK_LSICmd$82)	;initial loc
      0021D0 00 00 00 36           8432 	.dw	0,Sstm8s_clk$CLK_LSICmd$101-Sstm8s_clk$CLK_LSICmd$82
      0021D4 01                    8433 	.db	1
      0021D5 00 00 8B BE           8434 	.dw	0,(Sstm8s_clk$CLK_LSICmd$82)
      0021D9 0E                    8435 	.db	14
      0021DA 02                    8436 	.uleb128	2
      0021DB 01                    8437 	.db	1
      0021DC 00 00 8B CD           8438 	.dw	0,(Sstm8s_clk$CLK_LSICmd$84)
      0021E0 0E                    8439 	.db	14
      0021E1 02                    8440 	.uleb128	2
      0021E2 01                    8441 	.db	1
      0021E3 00 00 8B CF           8442 	.dw	0,(Sstm8s_clk$CLK_LSICmd$85)
      0021E7 0E                    8443 	.db	14
      0021E8 03                    8444 	.uleb128	3
      0021E9 01                    8445 	.db	1
      0021EA 00 00 8B D1           8446 	.dw	0,(Sstm8s_clk$CLK_LSICmd$86)
      0021EE 0E                    8447 	.db	14
      0021EF 05                    8448 	.uleb128	5
      0021F0 01                    8449 	.db	1
      0021F1 00 00 8B D3           8450 	.dw	0,(Sstm8s_clk$CLK_LSICmd$87)
      0021F5 0E                    8451 	.db	14
      0021F6 06                    8452 	.uleb128	6
      0021F7 01                    8453 	.db	1
      0021F8 00 00 8B D5           8454 	.dw	0,(Sstm8s_clk$CLK_LSICmd$88)
      0021FC 0E                    8455 	.db	14
      0021FD 07                    8456 	.uleb128	7
      0021FE 01                    8457 	.db	1
      0021FF 00 00 8B D7           8458 	.dw	0,(Sstm8s_clk$CLK_LSICmd$89)
      002203 0E                    8459 	.db	14
      002204 08                    8460 	.uleb128	8
      002205 01                    8461 	.db	1
      002206 00 00 8B DC           8462 	.dw	0,(Sstm8s_clk$CLK_LSICmd$90)
      00220A 0E                    8463 	.db	14
      00220B 02                    8464 	.uleb128	2
                                   8465 
                                   8466 	.area .debug_frame (NOLOAD)
      00220C 00 00                 8467 	.dw	0
      00220E 00 0E                 8468 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      002210                       8469 Ldebug_CIE19_start:
      002210 FF FF                 8470 	.dw	0xffff
      002212 FF FF                 8471 	.dw	0xffff
      002214 01                    8472 	.db	1
      002215 00                    8473 	.db	0
      002216 01                    8474 	.uleb128	1
      002217 7F                    8475 	.sleb128	-1
      002218 09                    8476 	.db	9
      002219 0C                    8477 	.db	12
      00221A 08                    8478 	.uleb128	8
      00221B 02                    8479 	.uleb128	2
      00221C 89                    8480 	.db	137
      00221D 01                    8481 	.uleb128	1
      00221E                       8482 Ldebug_CIE19_end:
      00221E 00 00 00 44           8483 	.dw	0,68
      002222 00 00 22 0C           8484 	.dw	0,(Ldebug_CIE19_start-4)
      002226 00 00 8B 88           8485 	.dw	0,(Sstm8s_clk$CLK_HSICmd$61)	;initial loc
      00222A 00 00 00 36           8486 	.dw	0,Sstm8s_clk$CLK_HSICmd$80-Sstm8s_clk$CLK_HSICmd$61
      00222E 01                    8487 	.db	1
      00222F 00 00 8B 88           8488 	.dw	0,(Sstm8s_clk$CLK_HSICmd$61)
      002233 0E                    8489 	.db	14
      002234 02                    8490 	.uleb128	2
      002235 01                    8491 	.db	1
      002236 00 00 8B 97           8492 	.dw	0,(Sstm8s_clk$CLK_HSICmd$63)
      00223A 0E                    8493 	.db	14
      00223B 02                    8494 	.uleb128	2
      00223C 01                    8495 	.db	1
      00223D 00 00 8B 99           8496 	.dw	0,(Sstm8s_clk$CLK_HSICmd$64)
      002241 0E                    8497 	.db	14
      002242 03                    8498 	.uleb128	3
      002243 01                    8499 	.db	1
      002244 00 00 8B 9B           8500 	.dw	0,(Sstm8s_clk$CLK_HSICmd$65)
      002248 0E                    8501 	.db	14
      002249 05                    8502 	.uleb128	5
      00224A 01                    8503 	.db	1
      00224B 00 00 8B 9D           8504 	.dw	0,(Sstm8s_clk$CLK_HSICmd$66)
      00224F 0E                    8505 	.db	14
      002250 06                    8506 	.uleb128	6
      002251 01                    8507 	.db	1
      002252 00 00 8B 9F           8508 	.dw	0,(Sstm8s_clk$CLK_HSICmd$67)
      002256 0E                    8509 	.db	14
      002257 07                    8510 	.uleb128	7
      002258 01                    8511 	.db	1
      002259 00 00 8B A1           8512 	.dw	0,(Sstm8s_clk$CLK_HSICmd$68)
      00225D 0E                    8513 	.db	14
      00225E 08                    8514 	.uleb128	8
      00225F 01                    8515 	.db	1
      002260 00 00 8B A6           8516 	.dw	0,(Sstm8s_clk$CLK_HSICmd$69)
      002264 0E                    8517 	.db	14
      002265 02                    8518 	.uleb128	2
                                   8519 
                                   8520 	.area .debug_frame (NOLOAD)
      002266 00 00                 8521 	.dw	0
      002268 00 0E                 8522 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      00226A                       8523 Ldebug_CIE20_start:
      00226A FF FF                 8524 	.dw	0xffff
      00226C FF FF                 8525 	.dw	0xffff
      00226E 01                    8526 	.db	1
      00226F 00                    8527 	.db	0
      002270 01                    8528 	.uleb128	1
      002271 7F                    8529 	.sleb128	-1
      002272 09                    8530 	.db	9
      002273 0C                    8531 	.db	12
      002274 08                    8532 	.uleb128	8
      002275 02                    8533 	.uleb128	2
      002276 89                    8534 	.db	137
      002277 01                    8535 	.uleb128	1
      002278                       8536 Ldebug_CIE20_end:
      002278 00 00 00 44           8537 	.dw	0,68
      00227C 00 00 22 66           8538 	.dw	0,(Ldebug_CIE20_start-4)
      002280 00 00 8B 52           8539 	.dw	0,(Sstm8s_clk$CLK_HSECmd$40)	;initial loc
      002284 00 00 00 36           8540 	.dw	0,Sstm8s_clk$CLK_HSECmd$59-Sstm8s_clk$CLK_HSECmd$40
      002288 01                    8541 	.db	1
      002289 00 00 8B 52           8542 	.dw	0,(Sstm8s_clk$CLK_HSECmd$40)
      00228D 0E                    8543 	.db	14
      00228E 02                    8544 	.uleb128	2
      00228F 01                    8545 	.db	1
      002290 00 00 8B 61           8546 	.dw	0,(Sstm8s_clk$CLK_HSECmd$42)
      002294 0E                    8547 	.db	14
      002295 02                    8548 	.uleb128	2
      002296 01                    8549 	.db	1
      002297 00 00 8B 63           8550 	.dw	0,(Sstm8s_clk$CLK_HSECmd$43)
      00229B 0E                    8551 	.db	14
      00229C 03                    8552 	.uleb128	3
      00229D 01                    8553 	.db	1
      00229E 00 00 8B 65           8554 	.dw	0,(Sstm8s_clk$CLK_HSECmd$44)
      0022A2 0E                    8555 	.db	14
      0022A3 05                    8556 	.uleb128	5
      0022A4 01                    8557 	.db	1
      0022A5 00 00 8B 67           8558 	.dw	0,(Sstm8s_clk$CLK_HSECmd$45)
      0022A9 0E                    8559 	.db	14
      0022AA 06                    8560 	.uleb128	6
      0022AB 01                    8561 	.db	1
      0022AC 00 00 8B 69           8562 	.dw	0,(Sstm8s_clk$CLK_HSECmd$46)
      0022B0 0E                    8563 	.db	14
      0022B1 07                    8564 	.uleb128	7
      0022B2 01                    8565 	.db	1
      0022B3 00 00 8B 6B           8566 	.dw	0,(Sstm8s_clk$CLK_HSECmd$47)
      0022B7 0E                    8567 	.db	14
      0022B8 08                    8568 	.uleb128	8
      0022B9 01                    8569 	.db	1
      0022BA 00 00 8B 70           8570 	.dw	0,(Sstm8s_clk$CLK_HSECmd$48)
      0022BE 0E                    8571 	.db	14
      0022BF 02                    8572 	.uleb128	2
                                   8573 
                                   8574 	.area .debug_frame (NOLOAD)
      0022C0 00 00                 8575 	.dw	0
      0022C2 00 0E                 8576 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      0022C4                       8577 Ldebug_CIE21_start:
      0022C4 FF FF                 8578 	.dw	0xffff
      0022C6 FF FF                 8579 	.dw	0xffff
      0022C8 01                    8580 	.db	1
      0022C9 00                    8581 	.db	0
      0022CA 01                    8582 	.uleb128	1
      0022CB 7F                    8583 	.sleb128	-1
      0022CC 09                    8584 	.db	9
      0022CD 0C                    8585 	.db	12
      0022CE 08                    8586 	.uleb128	8
      0022CF 02                    8587 	.uleb128	2
      0022D0 89                    8588 	.db	137
      0022D1 01                    8589 	.uleb128	1
      0022D2                       8590 Ldebug_CIE21_end:
      0022D2 00 00 00 44           8591 	.dw	0,68
      0022D6 00 00 22 C0           8592 	.dw	0,(Ldebug_CIE21_start-4)
      0022DA 00 00 8B 1C           8593 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)	;initial loc
      0022DE 00 00 00 36           8594 	.dw	0,Sstm8s_clk$CLK_FastHaltWakeUpCmd$38-Sstm8s_clk$CLK_FastHaltWakeUpCmd$19
      0022E2 01                    8595 	.db	1
      0022E3 00 00 8B 1C           8596 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)
      0022E7 0E                    8597 	.db	14
      0022E8 02                    8598 	.uleb128	2
      0022E9 01                    8599 	.db	1
      0022EA 00 00 8B 2B           8600 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$21)
      0022EE 0E                    8601 	.db	14
      0022EF 02                    8602 	.uleb128	2
      0022F0 01                    8603 	.db	1
      0022F1 00 00 8B 2D           8604 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$22)
      0022F5 0E                    8605 	.db	14
      0022F6 03                    8606 	.uleb128	3
      0022F7 01                    8607 	.db	1
      0022F8 00 00 8B 2F           8608 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$23)
      0022FC 0E                    8609 	.db	14
      0022FD 05                    8610 	.uleb128	5
      0022FE 01                    8611 	.db	1
      0022FF 00 00 8B 31           8612 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$24)
      002303 0E                    8613 	.db	14
      002304 06                    8614 	.uleb128	6
      002305 01                    8615 	.db	1
      002306 00 00 8B 33           8616 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$25)
      00230A 0E                    8617 	.db	14
      00230B 07                    8618 	.uleb128	7
      00230C 01                    8619 	.db	1
      00230D 00 00 8B 35           8620 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$26)
      002311 0E                    8621 	.db	14
      002312 08                    8622 	.uleb128	8
      002313 01                    8623 	.db	1
      002314 00 00 8B 3A           8624 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$27)
      002318 0E                    8625 	.db	14
      002319 02                    8626 	.uleb128	2
                                   8627 
                                   8628 	.area .debug_frame (NOLOAD)
      00231A 00 00                 8629 	.dw	0
      00231C 00 0E                 8630 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      00231E                       8631 Ldebug_CIE22_start:
      00231E FF FF                 8632 	.dw	0xffff
      002320 FF FF                 8633 	.dw	0xffff
      002322 01                    8634 	.db	1
      002323 00                    8635 	.db	0
      002324 01                    8636 	.uleb128	1
      002325 7F                    8637 	.sleb128	-1
      002326 09                    8638 	.db	9
      002327 0C                    8639 	.db	12
      002328 08                    8640 	.uleb128	8
      002329 02                    8641 	.uleb128	2
      00232A 89                    8642 	.db	137
      00232B 01                    8643 	.uleb128	1
      00232C                       8644 Ldebug_CIE22_end:
      00232C 00 00 00 13           8645 	.dw	0,19
      002330 00 00 23 1A           8646 	.dw	0,(Ldebug_CIE22_start-4)
      002334 00 00 8A E2           8647 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)	;initial loc
      002338 00 00 00 3A           8648 	.dw	0,Sstm8s_clk$CLK_DeInit$17-Sstm8s_clk$CLK_DeInit$1
      00233C 01                    8649 	.db	1
      00233D 00 00 8A E2           8650 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      002341 0E                    8651 	.db	14
      002342 02                    8652 	.uleb128	2
