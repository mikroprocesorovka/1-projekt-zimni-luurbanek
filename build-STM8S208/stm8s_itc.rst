                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_itc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _assert_failed
                                     12 	.globl _ITC_GetCPUCC
                                     13 	.globl _ITC_DeInit
                                     14 	.globl _ITC_GetSoftIntStatus
                                     15 	.globl _ITC_GetSoftwarePriority
                                     16 	.globl _ITC_SetSoftwarePriority
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; absolute external ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DABS (ABS)
                                     29 
                                     30 ; default segment ordering for linker
                                     31 	.area HOME
                                     32 	.area GSINIT
                                     33 	.area GSFINAL
                                     34 	.area CONST
                                     35 	.area INITIALIZER
                                     36 	.area CODE
                                     37 
                                     38 ;--------------------------------------------------------
                                     39 ; global & static initialisations
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area GSINIT
                                     45 ;--------------------------------------------------------
                                     46 ; Home
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
                                     49 	.area HOME
                                     50 ;--------------------------------------------------------
                                     51 ; code
                                     52 ;--------------------------------------------------------
                                     53 	.area CODE
                           000000    54 	Sstm8s_itc$ITC_GetCPUCC$0 ==.
                                     55 ;	../SPL/src/stm8s_itc.c: 50: uint8_t ITC_GetCPUCC(void)
                                     56 ; genLabel
                                     57 ;	-----------------------------------------
                                     58 ;	 function ITC_GetCPUCC
                                     59 ;	-----------------------------------------
                                     60 ;	Register assignment is optimal.
                                     61 ;	Stack space usage: 0 bytes.
      00971A                         62 _ITC_GetCPUCC:
                           000000    63 	Sstm8s_itc$ITC_GetCPUCC$1 ==.
                           000000    64 	Sstm8s_itc$ITC_GetCPUCC$2 ==.
                                     65 ;	../SPL/src/stm8s_itc.c: 59: __asm__("push cc");
                                     66 ;	genInline
      00971A 8A               [ 1]   67 	push	cc
                           000001    68 	Sstm8s_itc$ITC_GetCPUCC$3 ==.
                                     69 ;	../SPL/src/stm8s_itc.c: 60: __asm__("pop a");
                                     70 ;	genInline
      00971B 84               [ 1]   71 	pop	a
                                     72 ; genLabel
      00971C                         73 00101$:
                           000002    74 	Sstm8s_itc$ITC_GetCPUCC$4 ==.
                                     75 ;	../SPL/src/stm8s_itc.c: 65: }
                                     76 ; genEndFunction
                           000002    77 	Sstm8s_itc$ITC_GetCPUCC$5 ==.
                           000002    78 	XG$ITC_GetCPUCC$0$0 ==.
      00971C 81               [ 4]   79 	ret
                           000003    80 	Sstm8s_itc$ITC_GetCPUCC$6 ==.
                           000003    81 	Sstm8s_itc$ITC_DeInit$7 ==.
                                     82 ;	../SPL/src/stm8s_itc.c: 83: void ITC_DeInit(void)
                                     83 ; genLabel
                                     84 ;	-----------------------------------------
                                     85 ;	 function ITC_DeInit
                                     86 ;	-----------------------------------------
                                     87 ;	Register assignment is optimal.
                                     88 ;	Stack space usage: 0 bytes.
      00971D                         89 _ITC_DeInit:
                           000003    90 	Sstm8s_itc$ITC_DeInit$8 ==.
                           000003    91 	Sstm8s_itc$ITC_DeInit$9 ==.
                                     92 ;	../SPL/src/stm8s_itc.c: 85: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
                                     93 ; genPointerSet
      00971D 35 FF 7F 70      [ 1]   94 	mov	0x7f70+0, #0xff
                           000007    95 	Sstm8s_itc$ITC_DeInit$10 ==.
                                     96 ;	../SPL/src/stm8s_itc.c: 86: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
                                     97 ; genPointerSet
      009721 35 FF 7F 71      [ 1]   98 	mov	0x7f71+0, #0xff
                           00000B    99 	Sstm8s_itc$ITC_DeInit$11 ==.
                                    100 ;	../SPL/src/stm8s_itc.c: 87: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
                                    101 ; genPointerSet
      009725 35 FF 7F 72      [ 1]  102 	mov	0x7f72+0, #0xff
                           00000F   103 	Sstm8s_itc$ITC_DeInit$12 ==.
                                    104 ;	../SPL/src/stm8s_itc.c: 88: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
                                    105 ; genPointerSet
      009729 35 FF 7F 73      [ 1]  106 	mov	0x7f73+0, #0xff
                           000013   107 	Sstm8s_itc$ITC_DeInit$13 ==.
                                    108 ;	../SPL/src/stm8s_itc.c: 89: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
                                    109 ; genPointerSet
      00972D 35 FF 7F 74      [ 1]  110 	mov	0x7f74+0, #0xff
                           000017   111 	Sstm8s_itc$ITC_DeInit$14 ==.
                                    112 ;	../SPL/src/stm8s_itc.c: 90: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
                                    113 ; genPointerSet
      009731 35 FF 7F 75      [ 1]  114 	mov	0x7f75+0, #0xff
                           00001B   115 	Sstm8s_itc$ITC_DeInit$15 ==.
                                    116 ;	../SPL/src/stm8s_itc.c: 91: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
                                    117 ; genPointerSet
      009735 35 FF 7F 76      [ 1]  118 	mov	0x7f76+0, #0xff
                           00001F   119 	Sstm8s_itc$ITC_DeInit$16 ==.
                                    120 ;	../SPL/src/stm8s_itc.c: 92: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
                                    121 ; genPointerSet
      009739 35 FF 7F 77      [ 1]  122 	mov	0x7f77+0, #0xff
                                    123 ; genLabel
      00973D                        124 00101$:
                           000023   125 	Sstm8s_itc$ITC_DeInit$17 ==.
                                    126 ;	../SPL/src/stm8s_itc.c: 93: }
                                    127 ; genEndFunction
                           000023   128 	Sstm8s_itc$ITC_DeInit$18 ==.
                           000023   129 	XG$ITC_DeInit$0$0 ==.
      00973D 81               [ 4]  130 	ret
                           000024   131 	Sstm8s_itc$ITC_DeInit$19 ==.
                           000024   132 	Sstm8s_itc$ITC_GetSoftIntStatus$20 ==.
                                    133 ;	../SPL/src/stm8s_itc.c: 100: uint8_t ITC_GetSoftIntStatus(void)
                                    134 ; genLabel
                                    135 ;	-----------------------------------------
                                    136 ;	 function ITC_GetSoftIntStatus
                                    137 ;	-----------------------------------------
                                    138 ;	Register assignment is optimal.
                                    139 ;	Stack space usage: 0 bytes.
      00973E                        140 _ITC_GetSoftIntStatus:
                           000024   141 	Sstm8s_itc$ITC_GetSoftIntStatus$21 ==.
                           000024   142 	Sstm8s_itc$ITC_GetSoftIntStatus$22 ==.
                                    143 ;	../SPL/src/stm8s_itc.c: 102: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
                                    144 ; genCall
      00973E CD 97 1A         [ 4]  145 	call	_ITC_GetCPUCC
                                    146 ; genAnd
      009741 A4 28            [ 1]  147 	and	a, #0x28
                                    148 ; genReturn
                                    149 ; genLabel
      009743                        150 00101$:
                           000029   151 	Sstm8s_itc$ITC_GetSoftIntStatus$23 ==.
                                    152 ;	../SPL/src/stm8s_itc.c: 103: }
                                    153 ; genEndFunction
                           000029   154 	Sstm8s_itc$ITC_GetSoftIntStatus$24 ==.
                           000029   155 	XG$ITC_GetSoftIntStatus$0$0 ==.
      009743 81               [ 4]  156 	ret
                           00002A   157 	Sstm8s_itc$ITC_GetSoftIntStatus$25 ==.
                           00002A   158 	Sstm8s_itc$ITC_GetSoftwarePriority$26 ==.
                                    159 ;	../SPL/src/stm8s_itc.c: 110: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
                                    160 ; genLabel
                                    161 ;	-----------------------------------------
                                    162 ;	 function ITC_GetSoftwarePriority
                                    163 ;	-----------------------------------------
                                    164 ;	Register assignment might be sub-optimal.
                                    165 ;	Stack space usage: 2 bytes.
      009744                        166 _ITC_GetSoftwarePriority:
                           00002A   167 	Sstm8s_itc$ITC_GetSoftwarePriority$27 ==.
      009744 89               [ 2]  168 	pushw	x
                           00002B   169 	Sstm8s_itc$ITC_GetSoftwarePriority$28 ==.
                           00002B   170 	Sstm8s_itc$ITC_GetSoftwarePriority$29 ==.
                                    171 ;	../SPL/src/stm8s_itc.c: 112: uint8_t Value = 0;
                                    172 ; genAssign
      009745 5F               [ 1]  173 	clrw	x
                           00002C   174 	Sstm8s_itc$ITC_GetSoftwarePriority$30 ==.
                                    175 ;	../SPL/src/stm8s_itc.c: 116: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
                                    176 ; genCmp
                                    177 ; genCmpTop
      009746 7B 05            [ 1]  178 	ld	a, (0x05, sp)
      009748 A1 18            [ 1]  179 	cp	a, #0x18
      00974A 22 05            [ 1]  180 	jrugt	00142$
      00974C 4F               [ 1]  181 	clr	a
      00974D 95               [ 1]  182 	ld	xh, a
      00974E CC 97 54         [ 2]  183 	jp	00143$
      009751                        184 00142$:
      009751 A6 01            [ 1]  185 	ld	a, #0x01
      009753 95               [ 1]  186 	ld	xh, a
      009754                        187 00143$:
                                    188 ; genIfx
      009754 9E               [ 1]  189 	ld	a, xh
      009755 4D               [ 1]  190 	tnz	a
      009756 26 03            [ 1]  191 	jrne	00144$
      009758 CC 97 6E         [ 2]  192 	jp	00131$
      00975B                        193 00144$:
                                    194 ; skipping iCode since result will be rematerialized
                                    195 ; skipping iCode since result will be rematerialized
                                    196 ; genIPush
      00975B 89               [ 2]  197 	pushw	x
                           000042   198 	Sstm8s_itc$ITC_GetSoftwarePriority$31 ==.
      00975C 4B 74            [ 1]  199 	push	#0x74
                           000044   200 	Sstm8s_itc$ITC_GetSoftwarePriority$32 ==.
      00975E 4B 00            [ 1]  201 	push	#0x00
                           000046   202 	Sstm8s_itc$ITC_GetSoftwarePriority$33 ==.
      009760 4B 00            [ 1]  203 	push	#0x00
                           000048   204 	Sstm8s_itc$ITC_GetSoftwarePriority$34 ==.
      009762 4B 00            [ 1]  205 	push	#0x00
                           00004A   206 	Sstm8s_itc$ITC_GetSoftwarePriority$35 ==.
                                    207 ; genIPush
      009764 4B EC            [ 1]  208 	push	#<(___str_0+0)
                           00004C   209 	Sstm8s_itc$ITC_GetSoftwarePriority$36 ==.
      009766 4B 80            [ 1]  210 	push	#((___str_0+0) >> 8)
                           00004E   211 	Sstm8s_itc$ITC_GetSoftwarePriority$37 ==.
                                    212 ; genCall
      009768 CD 82 99         [ 4]  213 	call	_assert_failed
      00976B 5B 06            [ 2]  214 	addw	sp, #6
                           000053   215 	Sstm8s_itc$ITC_GetSoftwarePriority$38 ==.
      00976D 85               [ 2]  216 	popw	x
                           000054   217 	Sstm8s_itc$ITC_GetSoftwarePriority$39 ==.
                                    218 ; genLabel
      00976E                        219 00131$:
                           000054   220 	Sstm8s_itc$ITC_GetSoftwarePriority$40 ==.
                                    221 ;	../SPL/src/stm8s_itc.c: 119: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
                                    222 ; genCast
                                    223 ; genAssign
      00976E 7B 05            [ 1]  224 	ld	a, (0x05, sp)
      009770 90 5F            [ 1]  225 	clrw	y
                                    226 ; genAnd
      009772 A4 03            [ 1]  227 	and	a, #0x03
      009774 88               [ 1]  228 	push	a
                           00005B   229 	Sstm8s_itc$ITC_GetSoftwarePriority$41 ==.
      009775 0F 02            [ 1]  230 	clr	(0x02, sp)
      009777 84               [ 1]  231 	pop	a
                           00005E   232 	Sstm8s_itc$ITC_GetSoftwarePriority$42 ==.
                                    233 ; genCast
                                    234 ; genAssign
                                    235 ; genLeftShiftLiteral
      009778 48               [ 1]  236 	sll	a
      009779 6B 01            [ 1]  237 	ld	(0x01, sp), a
                                    238 ; genLeftShift
      00977B A6 03            [ 1]  239 	ld	a, #0x03
      00977D 6B 02            [ 1]  240 	ld	(0x02, sp), a
      00977F 7B 01            [ 1]  241 	ld	a, (0x01, sp)
      009781 27 05            [ 1]  242 	jreq	00146$
      009783                        243 00145$:
      009783 08 02            [ 1]  244 	sll	(0x02, sp)
      009785 4A               [ 1]  245 	dec	a
      009786 26 FB            [ 1]  246 	jrne	00145$
      009788                        247 00146$:
                           00006E   248 	Sstm8s_itc$ITC_GetSoftwarePriority$43 ==.
                                    249 ;	../SPL/src/stm8s_itc.c: 121: switch (IrqNum)
                                    250 ; genAssign
      009788 9E               [ 1]  251 	ld	a, xh
                                    252 ; genIfx
      009789 4D               [ 1]  253 	tnz	a
      00978A 27 03            [ 1]  254 	jreq	00147$
      00978C CC 98 06         [ 2]  255 	jp	00127$
      00978F                        256 00147$:
                                    257 ; genJumpTab
      00978F 5F               [ 1]  258 	clrw	x
      009790 7B 05            [ 1]  259 	ld	a, (0x05, sp)
      009792 97               [ 1]  260 	ld	xl, a
      009793 58               [ 2]  261 	sllw	x
      009794 DE 97 98         [ 2]  262 	ldw	x, (#00148$, x)
      009797 FC               [ 2]  263 	jp	(x)
      009798                        264 00148$:
      009798 97 CA                  265 	.dw	#00104$
      00979A 97 CA                  266 	.dw	#00104$
      00979C 97 CA                  267 	.dw	#00104$
      00979E 97 CA                  268 	.dw	#00104$
      0097A0 97 D3                  269 	.dw	#00108$
      0097A2 97 D3                  270 	.dw	#00108$
      0097A4 97 D3                  271 	.dw	#00108$
      0097A6 97 D3                  272 	.dw	#00108$
      0097A8 97 DC                  273 	.dw	#00112$
      0097AA 97 DC                  274 	.dw	#00112$
      0097AC 97 DC                  275 	.dw	#00112$
      0097AE 97 DC                  276 	.dw	#00112$
      0097B0 97 E5                  277 	.dw	#00116$
      0097B2 97 E5                  278 	.dw	#00116$
      0097B4 97 E5                  279 	.dw	#00116$
      0097B6 97 E5                  280 	.dw	#00116$
      0097B8 97 EE                  281 	.dw	#00120$
      0097BA 97 EE                  282 	.dw	#00120$
      0097BC 97 EE                  283 	.dw	#00120$
      0097BE 97 EE                  284 	.dw	#00120$
      0097C0 97 F7                  285 	.dw	#00124$
      0097C2 97 F7                  286 	.dw	#00124$
      0097C4 97 F7                  287 	.dw	#00124$
      0097C6 97 F7                  288 	.dw	#00124$
      0097C8 98 00                  289 	.dw	#00125$
                           0000B0   290 	Sstm8s_itc$ITC_GetSoftwarePriority$44 ==.
                           0000B0   291 	Sstm8s_itc$ITC_GetSoftwarePriority$45 ==.
                                    292 ;	../SPL/src/stm8s_itc.c: 126: case ITC_IRQ_PORTA:
                                    293 ; genLabel
      0097CA                        294 00104$:
                           0000B0   295 	Sstm8s_itc$ITC_GetSoftwarePriority$46 ==.
                                    296 ;	../SPL/src/stm8s_itc.c: 127: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
                                    297 ; genPointerGet
      0097CA C6 7F 70         [ 1]  298 	ld	a, 0x7f70
                                    299 ; genAnd
      0097CD 14 02            [ 1]  300 	and	a, (0x02, sp)
      0097CF 97               [ 1]  301 	ld	xl, a
                           0000B6   302 	Sstm8s_itc$ITC_GetSoftwarePriority$47 ==.
                                    303 ;	../SPL/src/stm8s_itc.c: 128: break;
                                    304 ; genGoto
      0097D0 CC 98 06         [ 2]  305 	jp	00127$
                           0000B9   306 	Sstm8s_itc$ITC_GetSoftwarePriority$48 ==.
                                    307 ;	../SPL/src/stm8s_itc.c: 133: case ITC_IRQ_PORTE:
                                    308 ; genLabel
      0097D3                        309 00108$:
                           0000B9   310 	Sstm8s_itc$ITC_GetSoftwarePriority$49 ==.
                                    311 ;	../SPL/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
                                    312 ; genPointerGet
      0097D3 C6 7F 71         [ 1]  313 	ld	a, 0x7f71
                                    314 ; genAnd
      0097D6 14 02            [ 1]  315 	and	a, (0x02, sp)
      0097D8 97               [ 1]  316 	ld	xl, a
                           0000BF   317 	Sstm8s_itc$ITC_GetSoftwarePriority$50 ==.
                                    318 ;	../SPL/src/stm8s_itc.c: 135: break;
                                    319 ; genGoto
      0097D9 CC 98 06         [ 2]  320 	jp	00127$
                           0000C2   321 	Sstm8s_itc$ITC_GetSoftwarePriority$51 ==.
                                    322 ;	../SPL/src/stm8s_itc.c: 145: case ITC_IRQ_TIM1_OVF:
                                    323 ; genLabel
      0097DC                        324 00112$:
                           0000C2   325 	Sstm8s_itc$ITC_GetSoftwarePriority$52 ==.
                                    326 ;	../SPL/src/stm8s_itc.c: 146: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
                                    327 ; genPointerGet
      0097DC C6 7F 72         [ 1]  328 	ld	a, 0x7f72
                                    329 ; genAnd
      0097DF 14 02            [ 1]  330 	and	a, (0x02, sp)
      0097E1 97               [ 1]  331 	ld	xl, a
                           0000C8   332 	Sstm8s_itc$ITC_GetSoftwarePriority$53 ==.
                                    333 ;	../SPL/src/stm8s_itc.c: 147: break;
                                    334 ; genGoto
      0097E2 CC 98 06         [ 2]  335 	jp	00127$
                           0000CB   336 	Sstm8s_itc$ITC_GetSoftwarePriority$54 ==.
                                    337 ;	../SPL/src/stm8s_itc.c: 157: case ITC_IRQ_TIM3_OVF:
                                    338 ; genLabel
      0097E5                        339 00116$:
                           0000CB   340 	Sstm8s_itc$ITC_GetSoftwarePriority$55 ==.
                                    341 ;	../SPL/src/stm8s_itc.c: 158: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
                                    342 ; genPointerGet
      0097E5 C6 7F 73         [ 1]  343 	ld	a, 0x7f73
                                    344 ; genAnd
      0097E8 14 02            [ 1]  345 	and	a, (0x02, sp)
      0097EA 97               [ 1]  346 	ld	xl, a
                           0000D1   347 	Sstm8s_itc$ITC_GetSoftwarePriority$56 ==.
                                    348 ;	../SPL/src/stm8s_itc.c: 159: break;
                                    349 ; genGoto
      0097EB CC 98 06         [ 2]  350 	jp	00127$
                           0000D4   351 	Sstm8s_itc$ITC_GetSoftwarePriority$57 ==.
                                    352 ;	../SPL/src/stm8s_itc.c: 171: case ITC_IRQ_I2C:
                                    353 ; genLabel
      0097EE                        354 00120$:
                           0000D4   355 	Sstm8s_itc$ITC_GetSoftwarePriority$58 ==.
                                    356 ;	../SPL/src/stm8s_itc.c: 172: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
                                    357 ; genPointerGet
      0097EE C6 7F 74         [ 1]  358 	ld	a, 0x7f74
                                    359 ; genAnd
      0097F1 14 02            [ 1]  360 	and	a, (0x02, sp)
      0097F3 97               [ 1]  361 	ld	xl, a
                           0000DA   362 	Sstm8s_itc$ITC_GetSoftwarePriority$59 ==.
                                    363 ;	../SPL/src/stm8s_itc.c: 173: break;
                                    364 ; genGoto
      0097F4 CC 98 06         [ 2]  365 	jp	00127$
                           0000DD   366 	Sstm8s_itc$ITC_GetSoftwarePriority$60 ==.
                                    367 ;	../SPL/src/stm8s_itc.c: 192: case ITC_IRQ_TIM4_OVF:
                                    368 ; genLabel
      0097F7                        369 00124$:
                           0000DD   370 	Sstm8s_itc$ITC_GetSoftwarePriority$61 ==.
                                    371 ;	../SPL/src/stm8s_itc.c: 194: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
                                    372 ; genPointerGet
      0097F7 C6 7F 75         [ 1]  373 	ld	a, 0x7f75
                                    374 ; genAnd
      0097FA 14 02            [ 1]  375 	and	a, (0x02, sp)
      0097FC 97               [ 1]  376 	ld	xl, a
                           0000E3   377 	Sstm8s_itc$ITC_GetSoftwarePriority$62 ==.
                                    378 ;	../SPL/src/stm8s_itc.c: 195: break;
                                    379 ; genGoto
      0097FD CC 98 06         [ 2]  380 	jp	00127$
                           0000E6   381 	Sstm8s_itc$ITC_GetSoftwarePriority$63 ==.
                                    382 ;	../SPL/src/stm8s_itc.c: 197: case ITC_IRQ_EEPROM_EEC:
                                    383 ; genLabel
      009800                        384 00125$:
                           0000E6   385 	Sstm8s_itc$ITC_GetSoftwarePriority$64 ==.
                                    386 ;	../SPL/src/stm8s_itc.c: 198: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
                                    387 ; genPointerGet
      009800 C6 7F 76         [ 1]  388 	ld	a, 0x7f76
                                    389 ; genAnd
      009803 14 02            [ 1]  390 	and	a, (0x02, sp)
      009805 97               [ 1]  391 	ld	xl, a
                           0000EC   392 	Sstm8s_itc$ITC_GetSoftwarePriority$65 ==.
                           0000EC   393 	Sstm8s_itc$ITC_GetSoftwarePriority$66 ==.
                                    394 ;	../SPL/src/stm8s_itc.c: 203: }
                                    395 ; genLabel
      009806                        396 00127$:
                           0000EC   397 	Sstm8s_itc$ITC_GetSoftwarePriority$67 ==.
                                    398 ;	../SPL/src/stm8s_itc.c: 205: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
                                    399 ; genRightShift
      009806 7B 01            [ 1]  400 	ld	a, (0x01, sp)
      009808 27 06            [ 1]  401 	jreq	00150$
      00980A                        402 00149$:
      00980A 41               [ 1]  403 	exg	a, xl
      00980B 44               [ 1]  404 	srl	a
      00980C 41               [ 1]  405 	exg	a, xl
      00980D 4A               [ 1]  406 	dec	a
      00980E 26 FA            [ 1]  407 	jrne	00149$
      009810                        408 00150$:
                                    409 ; genAssign
      009810 9F               [ 1]  410 	ld	a, xl
                           0000F7   411 	Sstm8s_itc$ITC_GetSoftwarePriority$68 ==.
                                    412 ;	../SPL/src/stm8s_itc.c: 207: return((ITC_PriorityLevel_TypeDef)Value);
                                    413 ; genReturn
                                    414 ; genLabel
      009811                        415 00128$:
                           0000F7   416 	Sstm8s_itc$ITC_GetSoftwarePriority$69 ==.
                                    417 ;	../SPL/src/stm8s_itc.c: 208: }
                                    418 ; genEndFunction
      009811 85               [ 2]  419 	popw	x
                           0000F8   420 	Sstm8s_itc$ITC_GetSoftwarePriority$70 ==.
                           0000F8   421 	Sstm8s_itc$ITC_GetSoftwarePriority$71 ==.
                           0000F8   422 	XG$ITC_GetSoftwarePriority$0$0 ==.
      009812 81               [ 4]  423 	ret
                           0000F9   424 	Sstm8s_itc$ITC_GetSoftwarePriority$72 ==.
                           0000F9   425 	Sstm8s_itc$ITC_SetSoftwarePriority$73 ==.
                                    426 ;	../SPL/src/stm8s_itc.c: 223: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
                                    427 ; genLabel
                                    428 ;	-----------------------------------------
                                    429 ;	 function ITC_SetSoftwarePriority
                                    430 ;	-----------------------------------------
                                    431 ;	Register assignment might be sub-optimal.
                                    432 ;	Stack space usage: 3 bytes.
      009813                        433 _ITC_SetSoftwarePriority:
                           0000F9   434 	Sstm8s_itc$ITC_SetSoftwarePriority$74 ==.
      009813 52 03            [ 2]  435 	sub	sp, #3
                           0000FB   436 	Sstm8s_itc$ITC_SetSoftwarePriority$75 ==.
                           0000FB   437 	Sstm8s_itc$ITC_SetSoftwarePriority$76 ==.
                                    438 ;	../SPL/src/stm8s_itc.c: 229: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
                                    439 ; genCmp
                                    440 ; genCmpTop
      009815 7B 06            [ 1]  441 	ld	a, (0x06, sp)
      009817 A1 18            [ 1]  442 	cp	a, #0x18
      009819 22 05            [ 1]  443 	jrugt	00180$
      00981B 0F 01            [ 1]  444 	clr	(0x01, sp)
      00981D CC 98 24         [ 2]  445 	jp	00181$
      009820                        446 00180$:
      009820 A6 01            [ 1]  447 	ld	a, #0x01
      009822 6B 01            [ 1]  448 	ld	(0x01, sp), a
      009824                        449 00181$:
                                    450 ; genIfx
      009824 0D 01            [ 1]  451 	tnz	(0x01, sp)
      009826 26 03            [ 1]  452 	jrne	00182$
      009828 CC 98 3A         [ 2]  453 	jp	00131$
      00982B                        454 00182$:
                                    455 ; skipping iCode since result will be rematerialized
                                    456 ; skipping iCode since result will be rematerialized
                                    457 ; genIPush
      00982B 4B E5            [ 1]  458 	push	#0xe5
                           000113   459 	Sstm8s_itc$ITC_SetSoftwarePriority$77 ==.
      00982D 5F               [ 1]  460 	clrw	x
      00982E 89               [ 2]  461 	pushw	x
                           000115   462 	Sstm8s_itc$ITC_SetSoftwarePriority$78 ==.
      00982F 4B 00            [ 1]  463 	push	#0x00
                           000117   464 	Sstm8s_itc$ITC_SetSoftwarePriority$79 ==.
                                    465 ; genIPush
      009831 4B EC            [ 1]  466 	push	#<(___str_0+0)
                           000119   467 	Sstm8s_itc$ITC_SetSoftwarePriority$80 ==.
      009833 4B 80            [ 1]  468 	push	#((___str_0+0) >> 8)
                           00011B   469 	Sstm8s_itc$ITC_SetSoftwarePriority$81 ==.
                                    470 ; genCall
      009835 CD 82 99         [ 4]  471 	call	_assert_failed
      009838 5B 06            [ 2]  472 	addw	sp, #6
                           000120   473 	Sstm8s_itc$ITC_SetSoftwarePriority$82 ==.
                                    474 ; genLabel
      00983A                        475 00131$:
                           000120   476 	Sstm8s_itc$ITC_SetSoftwarePriority$83 ==.
                                    477 ;	../SPL/src/stm8s_itc.c: 230: assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
                                    478 ; genCmpEQorNE
      00983A 7B 07            [ 1]  479 	ld	a, (0x07, sp)
      00983C A1 02            [ 1]  480 	cp	a, #0x02
      00983E 26 03            [ 1]  481 	jrne	00184$
      009840 CC 98 6A         [ 2]  482 	jp	00133$
      009843                        483 00184$:
                           000129   484 	Sstm8s_itc$ITC_SetSoftwarePriority$84 ==.
                                    485 ; skipping generated iCode
                                    486 ; genCmpEQorNE
      009843 7B 07            [ 1]  487 	ld	a, (0x07, sp)
      009845 4A               [ 1]  488 	dec	a
      009846 26 03            [ 1]  489 	jrne	00187$
      009848 CC 98 6A         [ 2]  490 	jp	00133$
      00984B                        491 00187$:
                           000131   492 	Sstm8s_itc$ITC_SetSoftwarePriority$85 ==.
                                    493 ; skipping generated iCode
                                    494 ; genIfx
      00984B 0D 07            [ 1]  495 	tnz	(0x07, sp)
      00984D 26 03            [ 1]  496 	jrne	00189$
      00984F CC 98 6A         [ 2]  497 	jp	00133$
      009852                        498 00189$:
                                    499 ; genCmpEQorNE
      009852 7B 07            [ 1]  500 	ld	a, (0x07, sp)
      009854 A1 03            [ 1]  501 	cp	a, #0x03
      009856 26 03            [ 1]  502 	jrne	00191$
      009858 CC 98 6A         [ 2]  503 	jp	00133$
      00985B                        504 00191$:
                           000141   505 	Sstm8s_itc$ITC_SetSoftwarePriority$86 ==.
                                    506 ; skipping generated iCode
                                    507 ; skipping iCode since result will be rematerialized
                                    508 ; skipping iCode since result will be rematerialized
                                    509 ; genIPush
      00985B 4B E6            [ 1]  510 	push	#0xe6
                           000143   511 	Sstm8s_itc$ITC_SetSoftwarePriority$87 ==.
      00985D 5F               [ 1]  512 	clrw	x
      00985E 89               [ 2]  513 	pushw	x
                           000145   514 	Sstm8s_itc$ITC_SetSoftwarePriority$88 ==.
      00985F 4B 00            [ 1]  515 	push	#0x00
                           000147   516 	Sstm8s_itc$ITC_SetSoftwarePriority$89 ==.
                                    517 ; genIPush
      009861 4B EC            [ 1]  518 	push	#<(___str_0+0)
                           000149   519 	Sstm8s_itc$ITC_SetSoftwarePriority$90 ==.
      009863 4B 80            [ 1]  520 	push	#((___str_0+0) >> 8)
                           00014B   521 	Sstm8s_itc$ITC_SetSoftwarePriority$91 ==.
                                    522 ; genCall
      009865 CD 82 99         [ 4]  523 	call	_assert_failed
      009868 5B 06            [ 2]  524 	addw	sp, #6
                           000150   525 	Sstm8s_itc$ITC_SetSoftwarePriority$92 ==.
                                    526 ; genLabel
      00986A                        527 00133$:
                           000150   528 	Sstm8s_itc$ITC_SetSoftwarePriority$93 ==.
                                    529 ;	../SPL/src/stm8s_itc.c: 233: assert_param(IS_ITC_INTERRUPTS_DISABLED);
                                    530 ; genCall
      00986A CD 97 3E         [ 4]  531 	call	_ITC_GetSoftIntStatus
                                    532 ; genCmpEQorNE
      00986D A1 28            [ 1]  533 	cp	a, #0x28
      00986F 26 03            [ 1]  534 	jrne	00194$
      009871 CC 98 83         [ 2]  535 	jp	00144$
      009874                        536 00194$:
                           00015A   537 	Sstm8s_itc$ITC_SetSoftwarePriority$94 ==.
                                    538 ; skipping generated iCode
                                    539 ; skipping iCode since result will be rematerialized
                                    540 ; skipping iCode since result will be rematerialized
                                    541 ; genIPush
      009874 4B E9            [ 1]  542 	push	#0xe9
                           00015C   543 	Sstm8s_itc$ITC_SetSoftwarePriority$95 ==.
      009876 5F               [ 1]  544 	clrw	x
      009877 89               [ 2]  545 	pushw	x
                           00015E   546 	Sstm8s_itc$ITC_SetSoftwarePriority$96 ==.
      009878 4B 00            [ 1]  547 	push	#0x00
                           000160   548 	Sstm8s_itc$ITC_SetSoftwarePriority$97 ==.
                                    549 ; genIPush
      00987A 4B EC            [ 1]  550 	push	#<(___str_0+0)
                           000162   551 	Sstm8s_itc$ITC_SetSoftwarePriority$98 ==.
      00987C 4B 80            [ 1]  552 	push	#((___str_0+0) >> 8)
                           000164   553 	Sstm8s_itc$ITC_SetSoftwarePriority$99 ==.
                                    554 ; genCall
      00987E CD 82 99         [ 4]  555 	call	_assert_failed
      009881 5B 06            [ 2]  556 	addw	sp, #6
                           000169   557 	Sstm8s_itc$ITC_SetSoftwarePriority$100 ==.
                                    558 ; genLabel
      009883                        559 00144$:
                           000169   560 	Sstm8s_itc$ITC_SetSoftwarePriority$101 ==.
                                    561 ;	../SPL/src/stm8s_itc.c: 237: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
                                    562 ; genCast
                                    563 ; genAssign
      009883 7B 06            [ 1]  564 	ld	a, (0x06, sp)
      009885 5F               [ 1]  565 	clrw	x
                                    566 ; genAnd
      009886 A4 03            [ 1]  567 	and	a, #0x03
      009888 97               [ 1]  568 	ld	xl, a
      009889 4F               [ 1]  569 	clr	a
                                    570 ; genCast
                                    571 ; genAssign
                                    572 ; genLeftShiftLiteral
      00988A 58               [ 2]  573 	sllw	x
                                    574 ; genLeftShift
      00988B A6 03            [ 1]  575 	ld	a, #0x03
      00988D 88               [ 1]  576 	push	a
                           000174   577 	Sstm8s_itc$ITC_SetSoftwarePriority$102 ==.
      00988E 9F               [ 1]  578 	ld	a, xl
      00988F 4D               [ 1]  579 	tnz	a
      009890 27 05            [ 1]  580 	jreq	00197$
      009892                        581 00196$:
      009892 08 01            [ 1]  582 	sll	(1, sp)
      009894 4A               [ 1]  583 	dec	a
      009895 26 FB            [ 1]  584 	jrne	00196$
      009897                        585 00197$:
      009897 84               [ 1]  586 	pop	a
                           00017E   587 	Sstm8s_itc$ITC_SetSoftwarePriority$103 ==.
                                    588 ; genCpl
      009898 43               [ 1]  589 	cpl	a
                                    590 ; genAssign
      009899 6B 02            [ 1]  591 	ld	(0x02, sp), a
                           000181   592 	Sstm8s_itc$ITC_SetSoftwarePriority$104 ==.
                                    593 ;	../SPL/src/stm8s_itc.c: 240: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
                                    594 ; genLeftShift
      00989B 7B 07            [ 1]  595 	ld	a, (0x07, sp)
      00989D 88               [ 1]  596 	push	a
                           000184   597 	Sstm8s_itc$ITC_SetSoftwarePriority$105 ==.
      00989E 9F               [ 1]  598 	ld	a, xl
      00989F 4D               [ 1]  599 	tnz	a
      0098A0 27 05            [ 1]  600 	jreq	00199$
      0098A2                        601 00198$:
      0098A2 08 01            [ 1]  602 	sll	(1, sp)
      0098A4 4A               [ 1]  603 	dec	a
      0098A5 26 FB            [ 1]  604 	jrne	00198$
      0098A7                        605 00199$:
      0098A7 84               [ 1]  606 	pop	a
                           00018E   607 	Sstm8s_itc$ITC_SetSoftwarePriority$106 ==.
                                    608 ; genAssign
      0098A8 6B 03            [ 1]  609 	ld	(0x03, sp), a
                           000190   610 	Sstm8s_itc$ITC_SetSoftwarePriority$107 ==.
                                    611 ;	../SPL/src/stm8s_itc.c: 242: switch (IrqNum)
                                    612 ; genAssign
      0098AA 7B 01            [ 1]  613 	ld	a, (0x01, sp)
                                    614 ; genIfx
      0098AC 4D               [ 1]  615 	tnz	a
      0098AD 27 03            [ 1]  616 	jreq	00200$
      0098AF CC 99 6F         [ 2]  617 	jp	00128$
      0098B2                        618 00200$:
                                    619 ; genJumpTab
      0098B2 5F               [ 1]  620 	clrw	x
      0098B3 7B 06            [ 1]  621 	ld	a, (0x06, sp)
      0098B5 97               [ 1]  622 	ld	xl, a
      0098B6 58               [ 2]  623 	sllw	x
      0098B7 DE 98 BB         [ 2]  624 	ldw	x, (#00201$, x)
      0098BA FC               [ 2]  625 	jp	(x)
      0098BB                        626 00201$:
      0098BB 98 ED                  627 	.dw	#00104$
      0098BD 98 ED                  628 	.dw	#00104$
      0098BF 98 ED                  629 	.dw	#00104$
      0098C1 98 ED                  630 	.dw	#00104$
      0098C3 99 00                  631 	.dw	#00108$
      0098C5 99 00                  632 	.dw	#00108$
      0098C7 99 00                  633 	.dw	#00108$
      0098C9 99 00                  634 	.dw	#00108$
      0098CB 99 13                  635 	.dw	#00112$
      0098CD 99 13                  636 	.dw	#00112$
      0098CF 99 13                  637 	.dw	#00112$
      0098D1 99 13                  638 	.dw	#00112$
      0098D3 99 26                  639 	.dw	#00116$
      0098D5 99 26                  640 	.dw	#00116$
      0098D7 99 26                  641 	.dw	#00116$
      0098D9 99 26                  642 	.dw	#00116$
      0098DB 99 39                  643 	.dw	#00120$
      0098DD 99 39                  644 	.dw	#00120$
      0098DF 99 39                  645 	.dw	#00120$
      0098E1 99 39                  646 	.dw	#00120$
      0098E3 99 4C                  647 	.dw	#00124$
      0098E5 99 4C                  648 	.dw	#00124$
      0098E7 99 4C                  649 	.dw	#00124$
      0098E9 99 4C                  650 	.dw	#00124$
      0098EB 99 5F                  651 	.dw	#00125$
                           0001D3   652 	Sstm8s_itc$ITC_SetSoftwarePriority$108 ==.
                           0001D3   653 	Sstm8s_itc$ITC_SetSoftwarePriority$109 ==.
                                    654 ;	../SPL/src/stm8s_itc.c: 247: case ITC_IRQ_PORTA:
                                    655 ; genLabel
      0098ED                        656 00104$:
                           0001D3   657 	Sstm8s_itc$ITC_SetSoftwarePriority$110 ==.
                                    658 ;	../SPL/src/stm8s_itc.c: 248: ITC->ISPR1 &= Mask;
                                    659 ; genPointerGet
      0098ED C6 7F 70         [ 1]  660 	ld	a, 0x7f70
                                    661 ; genAnd
      0098F0 14 02            [ 1]  662 	and	a, (0x02, sp)
                                    663 ; genPointerSet
      0098F2 C7 7F 70         [ 1]  664 	ld	0x7f70, a
                           0001DB   665 	Sstm8s_itc$ITC_SetSoftwarePriority$111 ==.
                                    666 ;	../SPL/src/stm8s_itc.c: 249: ITC->ISPR1 |= NewPriority;
                                    667 ; genPointerGet
      0098F5 C6 7F 70         [ 1]  668 	ld	a, 0x7f70
                                    669 ; genOr
      0098F8 1A 03            [ 1]  670 	or	a, (0x03, sp)
                                    671 ; genPointerSet
      0098FA C7 7F 70         [ 1]  672 	ld	0x7f70, a
                           0001E3   673 	Sstm8s_itc$ITC_SetSoftwarePriority$112 ==.
                                    674 ;	../SPL/src/stm8s_itc.c: 250: break;
                                    675 ; genGoto
      0098FD CC 99 6F         [ 2]  676 	jp	00128$
                           0001E6   677 	Sstm8s_itc$ITC_SetSoftwarePriority$113 ==.
                                    678 ;	../SPL/src/stm8s_itc.c: 255: case ITC_IRQ_PORTE:
                                    679 ; genLabel
      009900                        680 00108$:
                           0001E6   681 	Sstm8s_itc$ITC_SetSoftwarePriority$114 ==.
                                    682 ;	../SPL/src/stm8s_itc.c: 256: ITC->ISPR2 &= Mask;
                                    683 ; genPointerGet
      009900 C6 7F 71         [ 1]  684 	ld	a, 0x7f71
                                    685 ; genAnd
      009903 14 02            [ 1]  686 	and	a, (0x02, sp)
                                    687 ; genPointerSet
      009905 C7 7F 71         [ 1]  688 	ld	0x7f71, a
                           0001EE   689 	Sstm8s_itc$ITC_SetSoftwarePriority$115 ==.
                                    690 ;	../SPL/src/stm8s_itc.c: 257: ITC->ISPR2 |= NewPriority;
                                    691 ; genPointerGet
      009908 C6 7F 71         [ 1]  692 	ld	a, 0x7f71
                                    693 ; genOr
      00990B 1A 03            [ 1]  694 	or	a, (0x03, sp)
                                    695 ; genPointerSet
      00990D C7 7F 71         [ 1]  696 	ld	0x7f71, a
                           0001F6   697 	Sstm8s_itc$ITC_SetSoftwarePriority$116 ==.
                                    698 ;	../SPL/src/stm8s_itc.c: 258: break;
                                    699 ; genGoto
      009910 CC 99 6F         [ 2]  700 	jp	00128$
                           0001F9   701 	Sstm8s_itc$ITC_SetSoftwarePriority$117 ==.
                                    702 ;	../SPL/src/stm8s_itc.c: 268: case ITC_IRQ_TIM1_OVF:
                                    703 ; genLabel
      009913                        704 00112$:
                           0001F9   705 	Sstm8s_itc$ITC_SetSoftwarePriority$118 ==.
                                    706 ;	../SPL/src/stm8s_itc.c: 269: ITC->ISPR3 &= Mask;
                                    707 ; genPointerGet
      009913 C6 7F 72         [ 1]  708 	ld	a, 0x7f72
                                    709 ; genAnd
      009916 14 02            [ 1]  710 	and	a, (0x02, sp)
                                    711 ; genPointerSet
      009918 C7 7F 72         [ 1]  712 	ld	0x7f72, a
                           000201   713 	Sstm8s_itc$ITC_SetSoftwarePriority$119 ==.
                                    714 ;	../SPL/src/stm8s_itc.c: 270: ITC->ISPR3 |= NewPriority;
                                    715 ; genPointerGet
      00991B C6 7F 72         [ 1]  716 	ld	a, 0x7f72
                                    717 ; genOr
      00991E 1A 03            [ 1]  718 	or	a, (0x03, sp)
                                    719 ; genPointerSet
      009920 C7 7F 72         [ 1]  720 	ld	0x7f72, a
                           000209   721 	Sstm8s_itc$ITC_SetSoftwarePriority$120 ==.
                                    722 ;	../SPL/src/stm8s_itc.c: 271: break;
                                    723 ; genGoto
      009923 CC 99 6F         [ 2]  724 	jp	00128$
                           00020C   725 	Sstm8s_itc$ITC_SetSoftwarePriority$121 ==.
                                    726 ;	../SPL/src/stm8s_itc.c: 281: case ITC_IRQ_TIM3_OVF:
                                    727 ; genLabel
      009926                        728 00116$:
                           00020C   729 	Sstm8s_itc$ITC_SetSoftwarePriority$122 ==.
                                    730 ;	../SPL/src/stm8s_itc.c: 282: ITC->ISPR4 &= Mask;
                                    731 ; genPointerGet
      009926 C6 7F 73         [ 1]  732 	ld	a, 0x7f73
                                    733 ; genAnd
      009929 14 02            [ 1]  734 	and	a, (0x02, sp)
                                    735 ; genPointerSet
      00992B C7 7F 73         [ 1]  736 	ld	0x7f73, a
                           000214   737 	Sstm8s_itc$ITC_SetSoftwarePriority$123 ==.
                                    738 ;	../SPL/src/stm8s_itc.c: 283: ITC->ISPR4 |= NewPriority;
                                    739 ; genPointerGet
      00992E C6 7F 73         [ 1]  740 	ld	a, 0x7f73
                                    741 ; genOr
      009931 1A 03            [ 1]  742 	or	a, (0x03, sp)
                                    743 ; genPointerSet
      009933 C7 7F 73         [ 1]  744 	ld	0x7f73, a
                           00021C   745 	Sstm8s_itc$ITC_SetSoftwarePriority$124 ==.
                                    746 ;	../SPL/src/stm8s_itc.c: 284: break;
                                    747 ; genGoto
      009936 CC 99 6F         [ 2]  748 	jp	00128$
                           00021F   749 	Sstm8s_itc$ITC_SetSoftwarePriority$125 ==.
                                    750 ;	../SPL/src/stm8s_itc.c: 296: case ITC_IRQ_I2C:
                                    751 ; genLabel
      009939                        752 00120$:
                           00021F   753 	Sstm8s_itc$ITC_SetSoftwarePriority$126 ==.
                                    754 ;	../SPL/src/stm8s_itc.c: 297: ITC->ISPR5 &= Mask;
                                    755 ; genPointerGet
      009939 C6 7F 74         [ 1]  756 	ld	a, 0x7f74
                                    757 ; genAnd
      00993C 14 02            [ 1]  758 	and	a, (0x02, sp)
                                    759 ; genPointerSet
      00993E C7 7F 74         [ 1]  760 	ld	0x7f74, a
                           000227   761 	Sstm8s_itc$ITC_SetSoftwarePriority$127 ==.
                                    762 ;	../SPL/src/stm8s_itc.c: 298: ITC->ISPR5 |= NewPriority;
                                    763 ; genPointerGet
      009941 C6 7F 74         [ 1]  764 	ld	a, 0x7f74
                                    765 ; genOr
      009944 1A 03            [ 1]  766 	or	a, (0x03, sp)
                                    767 ; genPointerSet
      009946 C7 7F 74         [ 1]  768 	ld	0x7f74, a
                           00022F   769 	Sstm8s_itc$ITC_SetSoftwarePriority$128 ==.
                                    770 ;	../SPL/src/stm8s_itc.c: 299: break;
                                    771 ; genGoto
      009949 CC 99 6F         [ 2]  772 	jp	00128$
                           000232   773 	Sstm8s_itc$ITC_SetSoftwarePriority$129 ==.
                                    774 ;	../SPL/src/stm8s_itc.c: 321: case ITC_IRQ_TIM4_OVF:
                                    775 ; genLabel
      00994C                        776 00124$:
                           000232   777 	Sstm8s_itc$ITC_SetSoftwarePriority$130 ==.
                                    778 ;	../SPL/src/stm8s_itc.c: 323: ITC->ISPR6 &= Mask;
                                    779 ; genPointerGet
      00994C C6 7F 75         [ 1]  780 	ld	a, 0x7f75
                                    781 ; genAnd
      00994F 14 02            [ 1]  782 	and	a, (0x02, sp)
                                    783 ; genPointerSet
      009951 C7 7F 75         [ 1]  784 	ld	0x7f75, a
                           00023A   785 	Sstm8s_itc$ITC_SetSoftwarePriority$131 ==.
                                    786 ;	../SPL/src/stm8s_itc.c: 324: ITC->ISPR6 |= NewPriority;
                                    787 ; genPointerGet
      009954 C6 7F 75         [ 1]  788 	ld	a, 0x7f75
                                    789 ; genOr
      009957 1A 03            [ 1]  790 	or	a, (0x03, sp)
                                    791 ; genPointerSet
      009959 C7 7F 75         [ 1]  792 	ld	0x7f75, a
                           000242   793 	Sstm8s_itc$ITC_SetSoftwarePriority$132 ==.
                                    794 ;	../SPL/src/stm8s_itc.c: 325: break;
                                    795 ; genGoto
      00995C CC 99 6F         [ 2]  796 	jp	00128$
                           000245   797 	Sstm8s_itc$ITC_SetSoftwarePriority$133 ==.
                                    798 ;	../SPL/src/stm8s_itc.c: 327: case ITC_IRQ_EEPROM_EEC:
                                    799 ; genLabel
      00995F                        800 00125$:
                           000245   801 	Sstm8s_itc$ITC_SetSoftwarePriority$134 ==.
                                    802 ;	../SPL/src/stm8s_itc.c: 328: ITC->ISPR7 &= Mask;
                                    803 ; genPointerGet
      00995F C6 7F 76         [ 1]  804 	ld	a, 0x7f76
                                    805 ; genAnd
      009962 14 02            [ 1]  806 	and	a, (0x02, sp)
                                    807 ; genPointerSet
      009964 C7 7F 76         [ 1]  808 	ld	0x7f76, a
                           00024D   809 	Sstm8s_itc$ITC_SetSoftwarePriority$135 ==.
                                    810 ;	../SPL/src/stm8s_itc.c: 329: ITC->ISPR7 |= NewPriority;
                                    811 ; genPointerGet
      009967 C6 7F 76         [ 1]  812 	ld	a, 0x7f76
                                    813 ; genOr
      00996A 1A 03            [ 1]  814 	or	a, (0x03, sp)
                                    815 ; genPointerSet
      00996C C7 7F 76         [ 1]  816 	ld	0x7f76, a
                           000255   817 	Sstm8s_itc$ITC_SetSoftwarePriority$136 ==.
                           000255   818 	Sstm8s_itc$ITC_SetSoftwarePriority$137 ==.
                                    819 ;	../SPL/src/stm8s_itc.c: 334: }
                                    820 ; genLabel
      00996F                        821 00128$:
                           000255   822 	Sstm8s_itc$ITC_SetSoftwarePriority$138 ==.
                                    823 ;	../SPL/src/stm8s_itc.c: 335: }
                                    824 ; genEndFunction
      00996F 5B 03            [ 2]  825 	addw	sp, #3
                           000257   826 	Sstm8s_itc$ITC_SetSoftwarePriority$139 ==.
                           000257   827 	Sstm8s_itc$ITC_SetSoftwarePriority$140 ==.
                           000257   828 	XG$ITC_SetSoftwarePriority$0$0 ==.
      009971 81               [ 4]  829 	ret
                           000258   830 	Sstm8s_itc$ITC_SetSoftwarePriority$141 ==.
                                    831 	.area CODE
                                    832 	.area CONST
                           000000   833 Fstm8s_itc$__str_0$0_0$0 == .
                                    834 	.area CONST
      0080EC                        835 ___str_0:
      0080EC 2E 2E 2F 53 50 4C 2F   836 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      008102 00                     837 	.db 0x00
                                    838 	.area CODE
                                    839 	.area INITIALIZER
                                    840 	.area CABS (ABS)
                                    841 
                                    842 	.area .debug_line (NOLOAD)
      001A49 00 00 02 9F            843 	.dw	0,Ldebug_line_end-Ldebug_line_start
      001A4D                        844 Ldebug_line_start:
      001A4D 00 02                  845 	.dw	2
      001A4F 00 00 00 77            846 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001A53 01                     847 	.db	1
      001A54 01                     848 	.db	1
      001A55 FB                     849 	.db	-5
      001A56 0F                     850 	.db	15
      001A57 0A                     851 	.db	10
      001A58 00                     852 	.db	0
      001A59 01                     853 	.db	1
      001A5A 01                     854 	.db	1
      001A5B 01                     855 	.db	1
      001A5C 01                     856 	.db	1
      001A5D 00                     857 	.db	0
      001A5E 00                     858 	.db	0
      001A5F 00                     859 	.db	0
      001A60 01                     860 	.db	1
      001A61 43 3A 5C 50 72 6F 67   861 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001A89 00                     862 	.db	0
      001A8A 43 3A 5C 50 72 6F 67   863 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001AAD 00                     864 	.db	0
      001AAE 00                     865 	.db	0
      001AAF 2E 2E 2F 53 50 4C 2F   866 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      001AC5 00                     867 	.db	0
      001AC6 00                     868 	.uleb128	0
      001AC7 00                     869 	.uleb128	0
      001AC8 00                     870 	.uleb128	0
      001AC9 00                     871 	.db	0
      001ACA                        872 Ldebug_line_stmt:
      001ACA 00                     873 	.db	0
      001ACB 05                     874 	.uleb128	5
      001ACC 02                     875 	.db	2
      001ACD 00 00 97 1A            876 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$0)
      001AD1 03                     877 	.db	3
      001AD2 31                     878 	.sleb128	49
      001AD3 01                     879 	.db	1
      001AD4 09                     880 	.db	9
      001AD5 00 00                  881 	.dw	Sstm8s_itc$ITC_GetCPUCC$2-Sstm8s_itc$ITC_GetCPUCC$0
      001AD7 03                     882 	.db	3
      001AD8 09                     883 	.sleb128	9
      001AD9 01                     884 	.db	1
      001ADA 09                     885 	.db	9
      001ADB 00 01                  886 	.dw	Sstm8s_itc$ITC_GetCPUCC$3-Sstm8s_itc$ITC_GetCPUCC$2
      001ADD 03                     887 	.db	3
      001ADE 01                     888 	.sleb128	1
      001ADF 01                     889 	.db	1
      001AE0 09                     890 	.db	9
      001AE1 00 01                  891 	.dw	Sstm8s_itc$ITC_GetCPUCC$4-Sstm8s_itc$ITC_GetCPUCC$3
      001AE3 03                     892 	.db	3
      001AE4 05                     893 	.sleb128	5
      001AE5 01                     894 	.db	1
      001AE6 09                     895 	.db	9
      001AE7 00 01                  896 	.dw	1+Sstm8s_itc$ITC_GetCPUCC$5-Sstm8s_itc$ITC_GetCPUCC$4
      001AE9 00                     897 	.db	0
      001AEA 01                     898 	.uleb128	1
      001AEB 01                     899 	.db	1
      001AEC 00                     900 	.db	0
      001AED 05                     901 	.uleb128	5
      001AEE 02                     902 	.db	2
      001AEF 00 00 97 1D            903 	.dw	0,(Sstm8s_itc$ITC_DeInit$7)
      001AF3 03                     904 	.db	3
      001AF4 D2 00                  905 	.sleb128	82
      001AF6 01                     906 	.db	1
      001AF7 09                     907 	.db	9
      001AF8 00 00                  908 	.dw	Sstm8s_itc$ITC_DeInit$9-Sstm8s_itc$ITC_DeInit$7
      001AFA 03                     909 	.db	3
      001AFB 02                     910 	.sleb128	2
      001AFC 01                     911 	.db	1
      001AFD 09                     912 	.db	9
      001AFE 00 04                  913 	.dw	Sstm8s_itc$ITC_DeInit$10-Sstm8s_itc$ITC_DeInit$9
      001B00 03                     914 	.db	3
      001B01 01                     915 	.sleb128	1
      001B02 01                     916 	.db	1
      001B03 09                     917 	.db	9
      001B04 00 04                  918 	.dw	Sstm8s_itc$ITC_DeInit$11-Sstm8s_itc$ITC_DeInit$10
      001B06 03                     919 	.db	3
      001B07 01                     920 	.sleb128	1
      001B08 01                     921 	.db	1
      001B09 09                     922 	.db	9
      001B0A 00 04                  923 	.dw	Sstm8s_itc$ITC_DeInit$12-Sstm8s_itc$ITC_DeInit$11
      001B0C 03                     924 	.db	3
      001B0D 01                     925 	.sleb128	1
      001B0E 01                     926 	.db	1
      001B0F 09                     927 	.db	9
      001B10 00 04                  928 	.dw	Sstm8s_itc$ITC_DeInit$13-Sstm8s_itc$ITC_DeInit$12
      001B12 03                     929 	.db	3
      001B13 01                     930 	.sleb128	1
      001B14 01                     931 	.db	1
      001B15 09                     932 	.db	9
      001B16 00 04                  933 	.dw	Sstm8s_itc$ITC_DeInit$14-Sstm8s_itc$ITC_DeInit$13
      001B18 03                     934 	.db	3
      001B19 01                     935 	.sleb128	1
      001B1A 01                     936 	.db	1
      001B1B 09                     937 	.db	9
      001B1C 00 04                  938 	.dw	Sstm8s_itc$ITC_DeInit$15-Sstm8s_itc$ITC_DeInit$14
      001B1E 03                     939 	.db	3
      001B1F 01                     940 	.sleb128	1
      001B20 01                     941 	.db	1
      001B21 09                     942 	.db	9
      001B22 00 04                  943 	.dw	Sstm8s_itc$ITC_DeInit$16-Sstm8s_itc$ITC_DeInit$15
      001B24 03                     944 	.db	3
      001B25 01                     945 	.sleb128	1
      001B26 01                     946 	.db	1
      001B27 09                     947 	.db	9
      001B28 00 04                  948 	.dw	Sstm8s_itc$ITC_DeInit$17-Sstm8s_itc$ITC_DeInit$16
      001B2A 03                     949 	.db	3
      001B2B 01                     950 	.sleb128	1
      001B2C 01                     951 	.db	1
      001B2D 09                     952 	.db	9
      001B2E 00 01                  953 	.dw	1+Sstm8s_itc$ITC_DeInit$18-Sstm8s_itc$ITC_DeInit$17
      001B30 00                     954 	.db	0
      001B31 01                     955 	.uleb128	1
      001B32 01                     956 	.db	1
      001B33 00                     957 	.db	0
      001B34 05                     958 	.uleb128	5
      001B35 02                     959 	.db	2
      001B36 00 00 97 3E            960 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$20)
      001B3A 03                     961 	.db	3
      001B3B E3 00                  962 	.sleb128	99
      001B3D 01                     963 	.db	1
      001B3E 09                     964 	.db	9
      001B3F 00 00                  965 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$22-Sstm8s_itc$ITC_GetSoftIntStatus$20
      001B41 03                     966 	.db	3
      001B42 02                     967 	.sleb128	2
      001B43 01                     968 	.db	1
      001B44 09                     969 	.db	9
      001B45 00 05                  970 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$23-Sstm8s_itc$ITC_GetSoftIntStatus$22
      001B47 03                     971 	.db	3
      001B48 01                     972 	.sleb128	1
      001B49 01                     973 	.db	1
      001B4A 09                     974 	.db	9
      001B4B 00 01                  975 	.dw	1+Sstm8s_itc$ITC_GetSoftIntStatus$24-Sstm8s_itc$ITC_GetSoftIntStatus$23
      001B4D 00                     976 	.db	0
      001B4E 01                     977 	.uleb128	1
      001B4F 01                     978 	.db	1
      001B50 00                     979 	.db	0
      001B51 05                     980 	.uleb128	5
      001B52 02                     981 	.db	2
      001B53 00 00 97 44            982 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$26)
      001B57 03                     983 	.db	3
      001B58 ED 00                  984 	.sleb128	109
      001B5A 01                     985 	.db	1
      001B5B 09                     986 	.db	9
      001B5C 00 01                  987 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$29-Sstm8s_itc$ITC_GetSoftwarePriority$26
      001B5E 03                     988 	.db	3
      001B5F 02                     989 	.sleb128	2
      001B60 01                     990 	.db	1
      001B61 09                     991 	.db	9
      001B62 00 01                  992 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$30-Sstm8s_itc$ITC_GetSoftwarePriority$29
      001B64 03                     993 	.db	3
      001B65 04                     994 	.sleb128	4
      001B66 01                     995 	.db	1
      001B67 09                     996 	.db	9
      001B68 00 28                  997 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$40-Sstm8s_itc$ITC_GetSoftwarePriority$30
      001B6A 03                     998 	.db	3
      001B6B 03                     999 	.sleb128	3
      001B6C 01                    1000 	.db	1
      001B6D 09                    1001 	.db	9
      001B6E 00 1A                 1002 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$43-Sstm8s_itc$ITC_GetSoftwarePriority$40
      001B70 03                    1003 	.db	3
      001B71 02                    1004 	.sleb128	2
      001B72 01                    1005 	.db	1
      001B73 09                    1006 	.db	9
      001B74 00 42                 1007 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$45-Sstm8s_itc$ITC_GetSoftwarePriority$43
      001B76 03                    1008 	.db	3
      001B77 05                    1009 	.sleb128	5
      001B78 01                    1010 	.db	1
      001B79 09                    1011 	.db	9
      001B7A 00 00                 1012 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$46-Sstm8s_itc$ITC_GetSoftwarePriority$45
      001B7C 03                    1013 	.db	3
      001B7D 01                    1014 	.sleb128	1
      001B7E 01                    1015 	.db	1
      001B7F 09                    1016 	.db	9
      001B80 00 06                 1017 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$47-Sstm8s_itc$ITC_GetSoftwarePriority$46
      001B82 03                    1018 	.db	3
      001B83 01                    1019 	.sleb128	1
      001B84 01                    1020 	.db	1
      001B85 09                    1021 	.db	9
      001B86 00 03                 1022 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$48-Sstm8s_itc$ITC_GetSoftwarePriority$47
      001B88 03                    1023 	.db	3
      001B89 05                    1024 	.sleb128	5
      001B8A 01                    1025 	.db	1
      001B8B 09                    1026 	.db	9
      001B8C 00 00                 1027 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$49-Sstm8s_itc$ITC_GetSoftwarePriority$48
      001B8E 03                    1028 	.db	3
      001B8F 01                    1029 	.sleb128	1
      001B90 01                    1030 	.db	1
      001B91 09                    1031 	.db	9
      001B92 00 06                 1032 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$50-Sstm8s_itc$ITC_GetSoftwarePriority$49
      001B94 03                    1033 	.db	3
      001B95 01                    1034 	.sleb128	1
      001B96 01                    1035 	.db	1
      001B97 09                    1036 	.db	9
      001B98 00 03                 1037 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$51-Sstm8s_itc$ITC_GetSoftwarePriority$50
      001B9A 03                    1038 	.db	3
      001B9B 0A                    1039 	.sleb128	10
      001B9C 01                    1040 	.db	1
      001B9D 09                    1041 	.db	9
      001B9E 00 00                 1042 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$52-Sstm8s_itc$ITC_GetSoftwarePriority$51
      001BA0 03                    1043 	.db	3
      001BA1 01                    1044 	.sleb128	1
      001BA2 01                    1045 	.db	1
      001BA3 09                    1046 	.db	9
      001BA4 00 06                 1047 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$53-Sstm8s_itc$ITC_GetSoftwarePriority$52
      001BA6 03                    1048 	.db	3
      001BA7 01                    1049 	.sleb128	1
      001BA8 01                    1050 	.db	1
      001BA9 09                    1051 	.db	9
      001BAA 00 03                 1052 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$54-Sstm8s_itc$ITC_GetSoftwarePriority$53
      001BAC 03                    1053 	.db	3
      001BAD 0A                    1054 	.sleb128	10
      001BAE 01                    1055 	.db	1
      001BAF 09                    1056 	.db	9
      001BB0 00 00                 1057 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$55-Sstm8s_itc$ITC_GetSoftwarePriority$54
      001BB2 03                    1058 	.db	3
      001BB3 01                    1059 	.sleb128	1
      001BB4 01                    1060 	.db	1
      001BB5 09                    1061 	.db	9
      001BB6 00 06                 1062 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$56-Sstm8s_itc$ITC_GetSoftwarePriority$55
      001BB8 03                    1063 	.db	3
      001BB9 01                    1064 	.sleb128	1
      001BBA 01                    1065 	.db	1
      001BBB 09                    1066 	.db	9
      001BBC 00 03                 1067 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$57-Sstm8s_itc$ITC_GetSoftwarePriority$56
      001BBE 03                    1068 	.db	3
      001BBF 0C                    1069 	.sleb128	12
      001BC0 01                    1070 	.db	1
      001BC1 09                    1071 	.db	9
      001BC2 00 00                 1072 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$58-Sstm8s_itc$ITC_GetSoftwarePriority$57
      001BC4 03                    1073 	.db	3
      001BC5 01                    1074 	.sleb128	1
      001BC6 01                    1075 	.db	1
      001BC7 09                    1076 	.db	9
      001BC8 00 06                 1077 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$59-Sstm8s_itc$ITC_GetSoftwarePriority$58
      001BCA 03                    1078 	.db	3
      001BCB 01                    1079 	.sleb128	1
      001BCC 01                    1080 	.db	1
      001BCD 09                    1081 	.db	9
      001BCE 00 03                 1082 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$60-Sstm8s_itc$ITC_GetSoftwarePriority$59
      001BD0 03                    1083 	.db	3
      001BD1 13                    1084 	.sleb128	19
      001BD2 01                    1085 	.db	1
      001BD3 09                    1086 	.db	9
      001BD4 00 00                 1087 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$61-Sstm8s_itc$ITC_GetSoftwarePriority$60
      001BD6 03                    1088 	.db	3
      001BD7 02                    1089 	.sleb128	2
      001BD8 01                    1090 	.db	1
      001BD9 09                    1091 	.db	9
      001BDA 00 06                 1092 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$62-Sstm8s_itc$ITC_GetSoftwarePriority$61
      001BDC 03                    1093 	.db	3
      001BDD 01                    1094 	.sleb128	1
      001BDE 01                    1095 	.db	1
      001BDF 09                    1096 	.db	9
      001BE0 00 03                 1097 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$63-Sstm8s_itc$ITC_GetSoftwarePriority$62
      001BE2 03                    1098 	.db	3
      001BE3 02                    1099 	.sleb128	2
      001BE4 01                    1100 	.db	1
      001BE5 09                    1101 	.db	9
      001BE6 00 00                 1102 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$64-Sstm8s_itc$ITC_GetSoftwarePriority$63
      001BE8 03                    1103 	.db	3
      001BE9 01                    1104 	.sleb128	1
      001BEA 01                    1105 	.db	1
      001BEB 09                    1106 	.db	9
      001BEC 00 06                 1107 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$66-Sstm8s_itc$ITC_GetSoftwarePriority$64
      001BEE 03                    1108 	.db	3
      001BEF 05                    1109 	.sleb128	5
      001BF0 01                    1110 	.db	1
      001BF1 09                    1111 	.db	9
      001BF2 00 00                 1112 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$67-Sstm8s_itc$ITC_GetSoftwarePriority$66
      001BF4 03                    1113 	.db	3
      001BF5 02                    1114 	.sleb128	2
      001BF6 01                    1115 	.db	1
      001BF7 09                    1116 	.db	9
      001BF8 00 0B                 1117 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$68-Sstm8s_itc$ITC_GetSoftwarePriority$67
      001BFA 03                    1118 	.db	3
      001BFB 02                    1119 	.sleb128	2
      001BFC 01                    1120 	.db	1
      001BFD 09                    1121 	.db	9
      001BFE 00 00                 1122 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$69-Sstm8s_itc$ITC_GetSoftwarePriority$68
      001C00 03                    1123 	.db	3
      001C01 01                    1124 	.sleb128	1
      001C02 01                    1125 	.db	1
      001C03 09                    1126 	.db	9
      001C04 00 02                 1127 	.dw	1+Sstm8s_itc$ITC_GetSoftwarePriority$71-Sstm8s_itc$ITC_GetSoftwarePriority$69
      001C06 00                    1128 	.db	0
      001C07 01                    1129 	.uleb128	1
      001C08 01                    1130 	.db	1
      001C09 00                    1131 	.db	0
      001C0A 05                    1132 	.uleb128	5
      001C0B 02                    1133 	.db	2
      001C0C 00 00 98 13           1134 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$73)
      001C10 03                    1135 	.db	3
      001C11 DE 01                 1136 	.sleb128	222
      001C13 01                    1137 	.db	1
      001C14 09                    1138 	.db	9
      001C15 00 02                 1139 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$76-Sstm8s_itc$ITC_SetSoftwarePriority$73
      001C17 03                    1140 	.db	3
      001C18 06                    1141 	.sleb128	6
      001C19 01                    1142 	.db	1
      001C1A 09                    1143 	.db	9
      001C1B 00 25                 1144 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$83-Sstm8s_itc$ITC_SetSoftwarePriority$76
      001C1D 03                    1145 	.db	3
      001C1E 01                    1146 	.sleb128	1
      001C1F 01                    1147 	.db	1
      001C20 09                    1148 	.db	9
      001C21 00 30                 1149 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$93-Sstm8s_itc$ITC_SetSoftwarePriority$83
      001C23 03                    1150 	.db	3
      001C24 03                    1151 	.sleb128	3
      001C25 01                    1152 	.db	1
      001C26 09                    1153 	.db	9
      001C27 00 19                 1154 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$101-Sstm8s_itc$ITC_SetSoftwarePriority$93
      001C29 03                    1155 	.db	3
      001C2A 04                    1156 	.sleb128	4
      001C2B 01                    1157 	.db	1
      001C2C 09                    1158 	.db	9
      001C2D 00 18                 1159 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$104-Sstm8s_itc$ITC_SetSoftwarePriority$101
      001C2F 03                    1160 	.db	3
      001C30 03                    1161 	.sleb128	3
      001C31 01                    1162 	.db	1
      001C32 09                    1163 	.db	9
      001C33 00 0F                 1164 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$107-Sstm8s_itc$ITC_SetSoftwarePriority$104
      001C35 03                    1165 	.db	3
      001C36 02                    1166 	.sleb128	2
      001C37 01                    1167 	.db	1
      001C38 09                    1168 	.db	9
      001C39 00 43                 1169 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$109-Sstm8s_itc$ITC_SetSoftwarePriority$107
      001C3B 03                    1170 	.db	3
      001C3C 05                    1171 	.sleb128	5
      001C3D 01                    1172 	.db	1
      001C3E 09                    1173 	.db	9
      001C3F 00 00                 1174 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$110-Sstm8s_itc$ITC_SetSoftwarePriority$109
      001C41 03                    1175 	.db	3
      001C42 01                    1176 	.sleb128	1
      001C43 01                    1177 	.db	1
      001C44 09                    1178 	.db	9
      001C45 00 08                 1179 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$111-Sstm8s_itc$ITC_SetSoftwarePriority$110
      001C47 03                    1180 	.db	3
      001C48 01                    1181 	.sleb128	1
      001C49 01                    1182 	.db	1
      001C4A 09                    1183 	.db	9
      001C4B 00 08                 1184 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$112-Sstm8s_itc$ITC_SetSoftwarePriority$111
      001C4D 03                    1185 	.db	3
      001C4E 01                    1186 	.sleb128	1
      001C4F 01                    1187 	.db	1
      001C50 09                    1188 	.db	9
      001C51 00 03                 1189 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$113-Sstm8s_itc$ITC_SetSoftwarePriority$112
      001C53 03                    1190 	.db	3
      001C54 05                    1191 	.sleb128	5
      001C55 01                    1192 	.db	1
      001C56 09                    1193 	.db	9
      001C57 00 00                 1194 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$114-Sstm8s_itc$ITC_SetSoftwarePriority$113
      001C59 03                    1195 	.db	3
      001C5A 01                    1196 	.sleb128	1
      001C5B 01                    1197 	.db	1
      001C5C 09                    1198 	.db	9
      001C5D 00 08                 1199 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$115-Sstm8s_itc$ITC_SetSoftwarePriority$114
      001C5F 03                    1200 	.db	3
      001C60 01                    1201 	.sleb128	1
      001C61 01                    1202 	.db	1
      001C62 09                    1203 	.db	9
      001C63 00 08                 1204 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$116-Sstm8s_itc$ITC_SetSoftwarePriority$115
      001C65 03                    1205 	.db	3
      001C66 01                    1206 	.sleb128	1
      001C67 01                    1207 	.db	1
      001C68 09                    1208 	.db	9
      001C69 00 03                 1209 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$117-Sstm8s_itc$ITC_SetSoftwarePriority$116
      001C6B 03                    1210 	.db	3
      001C6C 0A                    1211 	.sleb128	10
      001C6D 01                    1212 	.db	1
      001C6E 09                    1213 	.db	9
      001C6F 00 00                 1214 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$118-Sstm8s_itc$ITC_SetSoftwarePriority$117
      001C71 03                    1215 	.db	3
      001C72 01                    1216 	.sleb128	1
      001C73 01                    1217 	.db	1
      001C74 09                    1218 	.db	9
      001C75 00 08                 1219 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$119-Sstm8s_itc$ITC_SetSoftwarePriority$118
      001C77 03                    1220 	.db	3
      001C78 01                    1221 	.sleb128	1
      001C79 01                    1222 	.db	1
      001C7A 09                    1223 	.db	9
      001C7B 00 08                 1224 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$120-Sstm8s_itc$ITC_SetSoftwarePriority$119
      001C7D 03                    1225 	.db	3
      001C7E 01                    1226 	.sleb128	1
      001C7F 01                    1227 	.db	1
      001C80 09                    1228 	.db	9
      001C81 00 03                 1229 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$121-Sstm8s_itc$ITC_SetSoftwarePriority$120
      001C83 03                    1230 	.db	3
      001C84 0A                    1231 	.sleb128	10
      001C85 01                    1232 	.db	1
      001C86 09                    1233 	.db	9
      001C87 00 00                 1234 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$122-Sstm8s_itc$ITC_SetSoftwarePriority$121
      001C89 03                    1235 	.db	3
      001C8A 01                    1236 	.sleb128	1
      001C8B 01                    1237 	.db	1
      001C8C 09                    1238 	.db	9
      001C8D 00 08                 1239 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$123-Sstm8s_itc$ITC_SetSoftwarePriority$122
      001C8F 03                    1240 	.db	3
      001C90 01                    1241 	.sleb128	1
      001C91 01                    1242 	.db	1
      001C92 09                    1243 	.db	9
      001C93 00 08                 1244 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$124-Sstm8s_itc$ITC_SetSoftwarePriority$123
      001C95 03                    1245 	.db	3
      001C96 01                    1246 	.sleb128	1
      001C97 01                    1247 	.db	1
      001C98 09                    1248 	.db	9
      001C99 00 03                 1249 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$125-Sstm8s_itc$ITC_SetSoftwarePriority$124
      001C9B 03                    1250 	.db	3
      001C9C 0C                    1251 	.sleb128	12
      001C9D 01                    1252 	.db	1
      001C9E 09                    1253 	.db	9
      001C9F 00 00                 1254 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$126-Sstm8s_itc$ITC_SetSoftwarePriority$125
      001CA1 03                    1255 	.db	3
      001CA2 01                    1256 	.sleb128	1
      001CA3 01                    1257 	.db	1
      001CA4 09                    1258 	.db	9
      001CA5 00 08                 1259 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$127-Sstm8s_itc$ITC_SetSoftwarePriority$126
      001CA7 03                    1260 	.db	3
      001CA8 01                    1261 	.sleb128	1
      001CA9 01                    1262 	.db	1
      001CAA 09                    1263 	.db	9
      001CAB 00 08                 1264 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$128-Sstm8s_itc$ITC_SetSoftwarePriority$127
      001CAD 03                    1265 	.db	3
      001CAE 01                    1266 	.sleb128	1
      001CAF 01                    1267 	.db	1
      001CB0 09                    1268 	.db	9
      001CB1 00 03                 1269 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$129-Sstm8s_itc$ITC_SetSoftwarePriority$128
      001CB3 03                    1270 	.db	3
      001CB4 16                    1271 	.sleb128	22
      001CB5 01                    1272 	.db	1
      001CB6 09                    1273 	.db	9
      001CB7 00 00                 1274 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$130-Sstm8s_itc$ITC_SetSoftwarePriority$129
      001CB9 03                    1275 	.db	3
      001CBA 02                    1276 	.sleb128	2
      001CBB 01                    1277 	.db	1
      001CBC 09                    1278 	.db	9
      001CBD 00 08                 1279 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$131-Sstm8s_itc$ITC_SetSoftwarePriority$130
      001CBF 03                    1280 	.db	3
      001CC0 01                    1281 	.sleb128	1
      001CC1 01                    1282 	.db	1
      001CC2 09                    1283 	.db	9
      001CC3 00 08                 1284 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$132-Sstm8s_itc$ITC_SetSoftwarePriority$131
      001CC5 03                    1285 	.db	3
      001CC6 01                    1286 	.sleb128	1
      001CC7 01                    1287 	.db	1
      001CC8 09                    1288 	.db	9
      001CC9 00 03                 1289 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$133-Sstm8s_itc$ITC_SetSoftwarePriority$132
      001CCB 03                    1290 	.db	3
      001CCC 02                    1291 	.sleb128	2
      001CCD 01                    1292 	.db	1
      001CCE 09                    1293 	.db	9
      001CCF 00 00                 1294 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$134-Sstm8s_itc$ITC_SetSoftwarePriority$133
      001CD1 03                    1295 	.db	3
      001CD2 01                    1296 	.sleb128	1
      001CD3 01                    1297 	.db	1
      001CD4 09                    1298 	.db	9
      001CD5 00 08                 1299 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$135-Sstm8s_itc$ITC_SetSoftwarePriority$134
      001CD7 03                    1300 	.db	3
      001CD8 01                    1301 	.sleb128	1
      001CD9 01                    1302 	.db	1
      001CDA 09                    1303 	.db	9
      001CDB 00 08                 1304 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$137-Sstm8s_itc$ITC_SetSoftwarePriority$135
      001CDD 03                    1305 	.db	3
      001CDE 05                    1306 	.sleb128	5
      001CDF 01                    1307 	.db	1
      001CE0 09                    1308 	.db	9
      001CE1 00 00                 1309 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$138-Sstm8s_itc$ITC_SetSoftwarePriority$137
      001CE3 03                    1310 	.db	3
      001CE4 01                    1311 	.sleb128	1
      001CE5 01                    1312 	.db	1
      001CE6 09                    1313 	.db	9
      001CE7 00 03                 1314 	.dw	1+Sstm8s_itc$ITC_SetSoftwarePriority$140-Sstm8s_itc$ITC_SetSoftwarePriority$138
      001CE9 00                    1315 	.db	0
      001CEA 01                    1316 	.uleb128	1
      001CEB 01                    1317 	.db	1
      001CEC                       1318 Ldebug_line_end:
                                   1319 
                                   1320 	.area .debug_loc (NOLOAD)
      003128                       1321 Ldebug_loc_start:
      003128 00 00 99 71           1322 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$139)
      00312C 00 00 99 72           1323 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$141)
      003130 00 02                 1324 	.dw	2
      003132 78                    1325 	.db	120
      003133 01                    1326 	.sleb128	1
      003134 00 00 98 A8           1327 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$106)
      003138 00 00 99 71           1328 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$139)
      00313C 00 02                 1329 	.dw	2
      00313E 78                    1330 	.db	120
      00313F 04                    1331 	.sleb128	4
      003140 00 00 98 9E           1332 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$105)
      003144 00 00 98 A8           1333 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$106)
      003148 00 02                 1334 	.dw	2
      00314A 78                    1335 	.db	120
      00314B 05                    1336 	.sleb128	5
      00314C 00 00 98 98           1337 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$103)
      003150 00 00 98 9E           1338 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$105)
      003154 00 02                 1339 	.dw	2
      003156 78                    1340 	.db	120
      003157 04                    1341 	.sleb128	4
      003158 00 00 98 8E           1342 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      00315C 00 00 98 98           1343 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$103)
      003160 00 02                 1344 	.dw	2
      003162 78                    1345 	.db	120
      003163 05                    1346 	.sleb128	5
      003164 00 00 98 83           1347 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$100)
      003168 00 00 98 8E           1348 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      00316C 00 02                 1349 	.dw	2
      00316E 78                    1350 	.db	120
      00316F 04                    1351 	.sleb128	4
      003170 00 00 98 7E           1352 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
      003174 00 00 98 83           1353 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$100)
      003178 00 02                 1354 	.dw	2
      00317A 78                    1355 	.db	120
      00317B 0A                    1356 	.sleb128	10
      00317C 00 00 98 7C           1357 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$98)
      003180 00 00 98 7E           1358 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
      003184 00 02                 1359 	.dw	2
      003186 78                    1360 	.db	120
      003187 09                    1361 	.sleb128	9
      003188 00 00 98 7A           1362 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$97)
      00318C 00 00 98 7C           1363 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$98)
      003190 00 02                 1364 	.dw	2
      003192 78                    1365 	.db	120
      003193 08                    1366 	.sleb128	8
      003194 00 00 98 78           1367 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$96)
      003198 00 00 98 7A           1368 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$97)
      00319C 00 02                 1369 	.dw	2
      00319E 78                    1370 	.db	120
      00319F 07                    1371 	.sleb128	7
      0031A0 00 00 98 76           1372 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$95)
      0031A4 00 00 98 78           1373 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$96)
      0031A8 00 02                 1374 	.dw	2
      0031AA 78                    1375 	.db	120
      0031AB 05                    1376 	.sleb128	5
      0031AC 00 00 98 74           1377 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$94)
      0031B0 00 00 98 76           1378 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$95)
      0031B4 00 02                 1379 	.dw	2
      0031B6 78                    1380 	.db	120
      0031B7 04                    1381 	.sleb128	4
      0031B8 00 00 98 6A           1382 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$92)
      0031BC 00 00 98 74           1383 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$94)
      0031C0 00 02                 1384 	.dw	2
      0031C2 78                    1385 	.db	120
      0031C3 04                    1386 	.sleb128	4
      0031C4 00 00 98 65           1387 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$91)
      0031C8 00 00 98 6A           1388 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$92)
      0031CC 00 02                 1389 	.dw	2
      0031CE 78                    1390 	.db	120
      0031CF 0A                    1391 	.sleb128	10
      0031D0 00 00 98 63           1392 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$90)
      0031D4 00 00 98 65           1393 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$91)
      0031D8 00 02                 1394 	.dw	2
      0031DA 78                    1395 	.db	120
      0031DB 09                    1396 	.sleb128	9
      0031DC 00 00 98 61           1397 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$89)
      0031E0 00 00 98 63           1398 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$90)
      0031E4 00 02                 1399 	.dw	2
      0031E6 78                    1400 	.db	120
      0031E7 08                    1401 	.sleb128	8
      0031E8 00 00 98 5F           1402 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$88)
      0031EC 00 00 98 61           1403 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$89)
      0031F0 00 02                 1404 	.dw	2
      0031F2 78                    1405 	.db	120
      0031F3 07                    1406 	.sleb128	7
      0031F4 00 00 98 5D           1407 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$87)
      0031F8 00 00 98 5F           1408 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$88)
      0031FC 00 02                 1409 	.dw	2
      0031FE 78                    1410 	.db	120
      0031FF 05                    1411 	.sleb128	5
      003200 00 00 98 5B           1412 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$86)
      003204 00 00 98 5D           1413 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$87)
      003208 00 02                 1414 	.dw	2
      00320A 78                    1415 	.db	120
      00320B 04                    1416 	.sleb128	4
      00320C 00 00 98 4B           1417 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$85)
      003210 00 00 98 5B           1418 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$86)
      003214 00 02                 1419 	.dw	2
      003216 78                    1420 	.db	120
      003217 04                    1421 	.sleb128	4
      003218 00 00 98 43           1422 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$84)
      00321C 00 00 98 4B           1423 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$85)
      003220 00 02                 1424 	.dw	2
      003222 78                    1425 	.db	120
      003223 04                    1426 	.sleb128	4
      003224 00 00 98 3A           1427 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$82)
      003228 00 00 98 43           1428 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$84)
      00322C 00 02                 1429 	.dw	2
      00322E 78                    1430 	.db	120
      00322F 04                    1431 	.sleb128	4
      003230 00 00 98 35           1432 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$81)
      003234 00 00 98 3A           1433 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$82)
      003238 00 02                 1434 	.dw	2
      00323A 78                    1435 	.db	120
      00323B 0A                    1436 	.sleb128	10
      00323C 00 00 98 33           1437 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$80)
      003240 00 00 98 35           1438 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$81)
      003244 00 02                 1439 	.dw	2
      003246 78                    1440 	.db	120
      003247 09                    1441 	.sleb128	9
      003248 00 00 98 31           1442 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$79)
      00324C 00 00 98 33           1443 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$80)
      003250 00 02                 1444 	.dw	2
      003252 78                    1445 	.db	120
      003253 08                    1446 	.sleb128	8
      003254 00 00 98 2F           1447 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$78)
      003258 00 00 98 31           1448 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$79)
      00325C 00 02                 1449 	.dw	2
      00325E 78                    1450 	.db	120
      00325F 07                    1451 	.sleb128	7
      003260 00 00 98 2D           1452 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$77)
      003264 00 00 98 2F           1453 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$78)
      003268 00 02                 1454 	.dw	2
      00326A 78                    1455 	.db	120
      00326B 05                    1456 	.sleb128	5
      00326C 00 00 98 15           1457 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$75)
      003270 00 00 98 2D           1458 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$77)
      003274 00 02                 1459 	.dw	2
      003276 78                    1460 	.db	120
      003277 04                    1461 	.sleb128	4
      003278 00 00 98 13           1462 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$74)
      00327C 00 00 98 15           1463 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$75)
      003280 00 02                 1464 	.dw	2
      003282 78                    1465 	.db	120
      003283 01                    1466 	.sleb128	1
      003284 00 00 00 00           1467 	.dw	0,0
      003288 00 00 00 00           1468 	.dw	0,0
      00328C 00 00 98 12           1469 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$70)
      003290 00 00 98 13           1470 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$72)
      003294 00 02                 1471 	.dw	2
      003296 78                    1472 	.db	120
      003297 01                    1473 	.sleb128	1
      003298 00 00 97 78           1474 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$42)
      00329C 00 00 98 12           1475 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$70)
      0032A0 00 02                 1476 	.dw	2
      0032A2 78                    1477 	.db	120
      0032A3 03                    1478 	.sleb128	3
      0032A4 00 00 97 75           1479 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$41)
      0032A8 00 00 97 78           1480 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$42)
      0032AC 00 02                 1481 	.dw	2
      0032AE 78                    1482 	.db	120
      0032AF 04                    1483 	.sleb128	4
      0032B0 00 00 97 6E           1484 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$39)
      0032B4 00 00 97 75           1485 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$41)
      0032B8 00 02                 1486 	.dw	2
      0032BA 78                    1487 	.db	120
      0032BB 03                    1488 	.sleb128	3
      0032BC 00 00 97 6D           1489 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$38)
      0032C0 00 00 97 6E           1490 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$39)
      0032C4 00 02                 1491 	.dw	2
      0032C6 78                    1492 	.db	120
      0032C7 05                    1493 	.sleb128	5
      0032C8 00 00 97 68           1494 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$37)
      0032CC 00 00 97 6D           1495 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$38)
      0032D0 00 02                 1496 	.dw	2
      0032D2 78                    1497 	.db	120
      0032D3 0B                    1498 	.sleb128	11
      0032D4 00 00 97 66           1499 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$36)
      0032D8 00 00 97 68           1500 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$37)
      0032DC 00 02                 1501 	.dw	2
      0032DE 78                    1502 	.db	120
      0032DF 0A                    1503 	.sleb128	10
      0032E0 00 00 97 64           1504 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$35)
      0032E4 00 00 97 66           1505 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$36)
      0032E8 00 02                 1506 	.dw	2
      0032EA 78                    1507 	.db	120
      0032EB 09                    1508 	.sleb128	9
      0032EC 00 00 97 62           1509 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$34)
      0032F0 00 00 97 64           1510 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$35)
      0032F4 00 02                 1511 	.dw	2
      0032F6 78                    1512 	.db	120
      0032F7 08                    1513 	.sleb128	8
      0032F8 00 00 97 60           1514 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$33)
      0032FC 00 00 97 62           1515 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$34)
      003300 00 02                 1516 	.dw	2
      003302 78                    1517 	.db	120
      003303 07                    1518 	.sleb128	7
      003304 00 00 97 5E           1519 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
      003308 00 00 97 60           1520 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$33)
      00330C 00 02                 1521 	.dw	2
      00330E 78                    1522 	.db	120
      00330F 06                    1523 	.sleb128	6
      003310 00 00 97 5C           1524 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$31)
      003314 00 00 97 5E           1525 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
      003318 00 02                 1526 	.dw	2
      00331A 78                    1527 	.db	120
      00331B 05                    1528 	.sleb128	5
      00331C 00 00 97 45           1529 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      003320 00 00 97 5C           1530 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$31)
      003324 00 02                 1531 	.dw	2
      003326 78                    1532 	.db	120
      003327 03                    1533 	.sleb128	3
      003328 00 00 97 44           1534 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      00332C 00 00 97 45           1535 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      003330 00 02                 1536 	.dw	2
      003332 78                    1537 	.db	120
      003333 01                    1538 	.sleb128	1
      003334 00 00 00 00           1539 	.dw	0,0
      003338 00 00 00 00           1540 	.dw	0,0
      00333C 00 00 97 3E           1541 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      003340 00 00 97 44           1542 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$25)
      003344 00 02                 1543 	.dw	2
      003346 78                    1544 	.db	120
      003347 01                    1545 	.sleb128	1
      003348 00 00 00 00           1546 	.dw	0,0
      00334C 00 00 00 00           1547 	.dw	0,0
      003350 00 00 97 1D           1548 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      003354 00 00 97 3E           1549 	.dw	0,(Sstm8s_itc$ITC_DeInit$19)
      003358 00 02                 1550 	.dw	2
      00335A 78                    1551 	.db	120
      00335B 01                    1552 	.sleb128	1
      00335C 00 00 00 00           1553 	.dw	0,0
      003360 00 00 00 00           1554 	.dw	0,0
      003364 00 00 97 1A           1555 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      003368 00 00 97 1D           1556 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$6)
      00336C 00 02                 1557 	.dw	2
      00336E 78                    1558 	.db	120
      00336F 01                    1559 	.sleb128	1
      003370 00 00 00 00           1560 	.dw	0,0
      003374 00 00 00 00           1561 	.dw	0,0
                                   1562 
                                   1563 	.area .debug_abbrev (NOLOAD)
      0004DF                       1564 Ldebug_abbrev:
      0004DF 03                    1565 	.uleb128	3
      0004E0 2E                    1566 	.uleb128	46
      0004E1 00                    1567 	.db	0
      0004E2 03                    1568 	.uleb128	3
      0004E3 08                    1569 	.uleb128	8
      0004E4 11                    1570 	.uleb128	17
      0004E5 01                    1571 	.uleb128	1
      0004E6 12                    1572 	.uleb128	18
      0004E7 01                    1573 	.uleb128	1
      0004E8 3F                    1574 	.uleb128	63
      0004E9 0C                    1575 	.uleb128	12
      0004EA 40                    1576 	.uleb128	64
      0004EB 06                    1577 	.uleb128	6
      0004EC 49                    1578 	.uleb128	73
      0004ED 13                    1579 	.uleb128	19
      0004EE 00                    1580 	.uleb128	0
      0004EF 00                    1581 	.uleb128	0
      0004F0 06                    1582 	.uleb128	6
      0004F1 05                    1583 	.uleb128	5
      0004F2 00                    1584 	.db	0
      0004F3 02                    1585 	.uleb128	2
      0004F4 0A                    1586 	.uleb128	10
      0004F5 03                    1587 	.uleb128	3
      0004F6 08                    1588 	.uleb128	8
      0004F7 49                    1589 	.uleb128	73
      0004F8 13                    1590 	.uleb128	19
      0004F9 00                    1591 	.uleb128	0
      0004FA 00                    1592 	.uleb128	0
      0004FB 0B                    1593 	.uleb128	11
      0004FC 01                    1594 	.uleb128	1
      0004FD 01                    1595 	.db	1
      0004FE 01                    1596 	.uleb128	1
      0004FF 13                    1597 	.uleb128	19
      000500 0B                    1598 	.uleb128	11
      000501 0B                    1599 	.uleb128	11
      000502 49                    1600 	.uleb128	73
      000503 13                    1601 	.uleb128	19
      000504 00                    1602 	.uleb128	0
      000505 00                    1603 	.uleb128	0
      000506 09                    1604 	.uleb128	9
      000507 2E                    1605 	.uleb128	46
      000508 01                    1606 	.db	1
      000509 01                    1607 	.uleb128	1
      00050A 13                    1608 	.uleb128	19
      00050B 03                    1609 	.uleb128	3
      00050C 08                    1610 	.uleb128	8
      00050D 11                    1611 	.uleb128	17
      00050E 01                    1612 	.uleb128	1
      00050F 12                    1613 	.uleb128	18
      000510 01                    1614 	.uleb128	1
      000511 3F                    1615 	.uleb128	63
      000512 0C                    1616 	.uleb128	12
      000513 40                    1617 	.uleb128	64
      000514 06                    1618 	.uleb128	6
      000515 00                    1619 	.uleb128	0
      000516 00                    1620 	.uleb128	0
      000517 08                    1621 	.uleb128	8
      000518 34                    1622 	.uleb128	52
      000519 00                    1623 	.db	0
      00051A 02                    1624 	.uleb128	2
      00051B 0A                    1625 	.uleb128	10
      00051C 03                    1626 	.uleb128	3
      00051D 08                    1627 	.uleb128	8
      00051E 49                    1628 	.uleb128	73
      00051F 13                    1629 	.uleb128	19
      000520 00                    1630 	.uleb128	0
      000521 00                    1631 	.uleb128	0
      000522 05                    1632 	.uleb128	5
      000523 2E                    1633 	.uleb128	46
      000524 01                    1634 	.db	1
      000525 01                    1635 	.uleb128	1
      000526 13                    1636 	.uleb128	19
      000527 03                    1637 	.uleb128	3
      000528 08                    1638 	.uleb128	8
      000529 11                    1639 	.uleb128	17
      00052A 01                    1640 	.uleb128	1
      00052B 12                    1641 	.uleb128	18
      00052C 01                    1642 	.uleb128	1
      00052D 3F                    1643 	.uleb128	63
      00052E 0C                    1644 	.uleb128	12
      00052F 40                    1645 	.uleb128	64
      000530 06                    1646 	.uleb128	6
      000531 49                    1647 	.uleb128	73
      000532 13                    1648 	.uleb128	19
      000533 00                    1649 	.uleb128	0
      000534 00                    1650 	.uleb128	0
      000535 0A                    1651 	.uleb128	10
      000536 26                    1652 	.uleb128	38
      000537 00                    1653 	.db	0
      000538 49                    1654 	.uleb128	73
      000539 13                    1655 	.uleb128	19
      00053A 00                    1656 	.uleb128	0
      00053B 00                    1657 	.uleb128	0
      00053C 01                    1658 	.uleb128	1
      00053D 11                    1659 	.uleb128	17
      00053E 01                    1660 	.db	1
      00053F 03                    1661 	.uleb128	3
      000540 08                    1662 	.uleb128	8
      000541 10                    1663 	.uleb128	16
      000542 06                    1664 	.uleb128	6
      000543 13                    1665 	.uleb128	19
      000544 0B                    1666 	.uleb128	11
      000545 25                    1667 	.uleb128	37
      000546 08                    1668 	.uleb128	8
      000547 00                    1669 	.uleb128	0
      000548 00                    1670 	.uleb128	0
      000549 07                    1671 	.uleb128	7
      00054A 0B                    1672 	.uleb128	11
      00054B 00                    1673 	.db	0
      00054C 11                    1674 	.uleb128	17
      00054D 01                    1675 	.uleb128	1
      00054E 12                    1676 	.uleb128	18
      00054F 01                    1677 	.uleb128	1
      000550 00                    1678 	.uleb128	0
      000551 00                    1679 	.uleb128	0
      000552 04                    1680 	.uleb128	4
      000553 2E                    1681 	.uleb128	46
      000554 00                    1682 	.db	0
      000555 03                    1683 	.uleb128	3
      000556 08                    1684 	.uleb128	8
      000557 11                    1685 	.uleb128	17
      000558 01                    1686 	.uleb128	1
      000559 12                    1687 	.uleb128	18
      00055A 01                    1688 	.uleb128	1
      00055B 3F                    1689 	.uleb128	63
      00055C 0C                    1690 	.uleb128	12
      00055D 40                    1691 	.uleb128	64
      00055E 06                    1692 	.uleb128	6
      00055F 00                    1693 	.uleb128	0
      000560 00                    1694 	.uleb128	0
      000561 0C                    1695 	.uleb128	12
      000562 21                    1696 	.uleb128	33
      000563 00                    1697 	.db	0
      000564 2F                    1698 	.uleb128	47
      000565 0B                    1699 	.uleb128	11
      000566 00                    1700 	.uleb128	0
      000567 00                    1701 	.uleb128	0
      000568 02                    1702 	.uleb128	2
      000569 24                    1703 	.uleb128	36
      00056A 00                    1704 	.db	0
      00056B 03                    1705 	.uleb128	3
      00056C 08                    1706 	.uleb128	8
      00056D 0B                    1707 	.uleb128	11
      00056E 0B                    1708 	.uleb128	11
      00056F 3E                    1709 	.uleb128	62
      000570 0B                    1710 	.uleb128	11
      000571 00                    1711 	.uleb128	0
      000572 00                    1712 	.uleb128	0
      000573 00                    1713 	.uleb128	0
                                   1714 
                                   1715 	.area .debug_info (NOLOAD)
      0027AE 00 00 01 B1           1716 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0027B2                       1717 Ldebug_info_start:
      0027B2 00 02                 1718 	.dw	2
      0027B4 00 00 04 DF           1719 	.dw	0,(Ldebug_abbrev)
      0027B8 04                    1720 	.db	4
      0027B9 01                    1721 	.uleb128	1
      0027BA 2E 2E 2F 53 50 4C 2F  1722 	.ascii "../SPL/src/stm8s_itc.c"
             73 72 63 2F 73 74 6D
             38 73 5F 69 74 63 2E
             63
      0027D0 00                    1723 	.db	0
      0027D1 00 00 1A 49           1724 	.dw	0,(Ldebug_line_start+-4)
      0027D5 01                    1725 	.db	1
      0027D6 53 44 43 43 20 76 65  1726 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0027EF 00                    1727 	.db	0
      0027F0 02                    1728 	.uleb128	2
      0027F1 75 6E 73 69 67 6E 65  1729 	.ascii "unsigned char"
             64 20 63 68 61 72
      0027FE 00                    1730 	.db	0
      0027FF 01                    1731 	.db	1
      002800 08                    1732 	.db	8
      002801 03                    1733 	.uleb128	3
      002802 49 54 43 5F 47 65 74  1734 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      00280E 00                    1735 	.db	0
      00280F 00 00 97 1A           1736 	.dw	0,(_ITC_GetCPUCC)
      002813 00 00 97 1D           1737 	.dw	0,(XG$ITC_GetCPUCC$0$0+1)
      002817 01                    1738 	.db	1
      002818 00 00 33 64           1739 	.dw	0,(Ldebug_loc_start+572)
      00281C 00 00 00 42           1740 	.dw	0,66
      002820 04                    1741 	.uleb128	4
      002821 49 54 43 5F 44 65 49  1742 	.ascii "ITC_DeInit"
             6E 69 74
      00282B 00                    1743 	.db	0
      00282C 00 00 97 1D           1744 	.dw	0,(_ITC_DeInit)
      002830 00 00 97 3E           1745 	.dw	0,(XG$ITC_DeInit$0$0+1)
      002834 01                    1746 	.db	1
      002835 00 00 33 50           1747 	.dw	0,(Ldebug_loc_start+552)
      002839 03                    1748 	.uleb128	3
      00283A 49 54 43 5F 47 65 74  1749 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      00284E 00                    1750 	.db	0
      00284F 00 00 97 3E           1751 	.dw	0,(_ITC_GetSoftIntStatus)
      002853 00 00 97 44           1752 	.dw	0,(XG$ITC_GetSoftIntStatus$0$0+1)
      002857 01                    1753 	.db	1
      002858 00 00 33 3C           1754 	.dw	0,(Ldebug_loc_start+532)
      00285C 00 00 00 42           1755 	.dw	0,66
      002860 05                    1756 	.uleb128	5
      002861 00 00 01 13           1757 	.dw	0,275
      002865 49 54 43 5F 47 65 74  1758 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      00287C 00                    1759 	.db	0
      00287D 00 00 97 44           1760 	.dw	0,(_ITC_GetSoftwarePriority)
      002881 00 00 98 13           1761 	.dw	0,(XG$ITC_GetSoftwarePriority$0$0+1)
      002885 01                    1762 	.db	1
      002886 00 00 32 8C           1763 	.dw	0,(Ldebug_loc_start+356)
      00288A 00 00 00 42           1764 	.dw	0,66
      00288E 06                    1765 	.uleb128	6
      00288F 02                    1766 	.db	2
      002890 91                    1767 	.db	145
      002891 02                    1768 	.sleb128	2
      002892 49 72 71 4E 75 6D     1769 	.ascii "IrqNum"
      002898 00                    1770 	.db	0
      002899 00 00 00 42           1771 	.dw	0,66
      00289D 07                    1772 	.uleb128	7
      00289E 00 00 97 CA           1773 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$44)
      0028A2 00 00 98 06           1774 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$65)
      0028A6 08                    1775 	.uleb128	8
      0028A7 01                    1776 	.db	1
      0028A8 50                    1777 	.db	80
      0028A9 56 61 6C 75 65        1778 	.ascii "Value"
      0028AE 00                    1779 	.db	0
      0028AF 00 00 00 42           1780 	.dw	0,66
      0028B3 08                    1781 	.uleb128	8
      0028B4 02                    1782 	.db	2
      0028B5 91                    1783 	.db	145
      0028B6 7F                    1784 	.sleb128	-1
      0028B7 4D 61 73 6B           1785 	.ascii "Mask"
      0028BB 00                    1786 	.db	0
      0028BC 00 00 00 42           1787 	.dw	0,66
      0028C0 00                    1788 	.uleb128	0
      0028C1 09                    1789 	.uleb128	9
      0028C2 00 00 01 8D           1790 	.dw	0,397
      0028C6 49 54 43 5F 53 65 74  1791 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      0028DD 00                    1792 	.db	0
      0028DE 00 00 98 13           1793 	.dw	0,(_ITC_SetSoftwarePriority)
      0028E2 00 00 99 72           1794 	.dw	0,(XG$ITC_SetSoftwarePriority$0$0+1)
      0028E6 01                    1795 	.db	1
      0028E7 00 00 31 28           1796 	.dw	0,(Ldebug_loc_start)
      0028EB 06                    1797 	.uleb128	6
      0028EC 02                    1798 	.db	2
      0028ED 91                    1799 	.db	145
      0028EE 02                    1800 	.sleb128	2
      0028EF 49 72 71 4E 75 6D     1801 	.ascii "IrqNum"
      0028F5 00                    1802 	.db	0
      0028F6 00 00 00 42           1803 	.dw	0,66
      0028FA 06                    1804 	.uleb128	6
      0028FB 02                    1805 	.db	2
      0028FC 91                    1806 	.db	145
      0028FD 03                    1807 	.sleb128	3
      0028FE 50 72 69 6F 72 69 74  1808 	.ascii "PriorityValue"
             79 56 61 6C 75 65
      00290B 00                    1809 	.db	0
      00290C 00 00 00 42           1810 	.dw	0,66
      002910 07                    1811 	.uleb128	7
      002911 00 00 98 ED           1812 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$108)
      002915 00 00 99 6F           1813 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$136)
      002919 08                    1814 	.uleb128	8
      00291A 02                    1815 	.db	2
      00291B 91                    1816 	.db	145
      00291C 7E                    1817 	.sleb128	-2
      00291D 4D 61 73 6B           1818 	.ascii "Mask"
      002921 00                    1819 	.db	0
      002922 00 00 00 42           1820 	.dw	0,66
      002926 08                    1821 	.uleb128	8
      002927 02                    1822 	.db	2
      002928 91                    1823 	.db	145
      002929 7F                    1824 	.sleb128	-1
      00292A 4E 65 77 50 72 69 6F  1825 	.ascii "NewPriority"
             72 69 74 79
      002935 00                    1826 	.db	0
      002936 00 00 00 42           1827 	.dw	0,66
      00293A 00                    1828 	.uleb128	0
      00293B 0A                    1829 	.uleb128	10
      00293C 00 00 00 42           1830 	.dw	0,66
      002940 0B                    1831 	.uleb128	11
      002941 00 00 01 9F           1832 	.dw	0,415
      002945 17                    1833 	.db	23
      002946 00 00 01 8D           1834 	.dw	0,397
      00294A 0C                    1835 	.uleb128	12
      00294B 16                    1836 	.db	22
      00294C 00                    1837 	.uleb128	0
      00294D 08                    1838 	.uleb128	8
      00294E 05                    1839 	.db	5
      00294F 03                    1840 	.db	3
      002950 00 00 80 EC           1841 	.dw	0,(___str_0)
      002954 5F 5F 73 74 72 5F 30  1842 	.ascii "__str_0"
      00295B 00                    1843 	.db	0
      00295C 00 00 01 92           1844 	.dw	0,402
      002960 00                    1845 	.uleb128	0
      002961 00                    1846 	.uleb128	0
      002962 00                    1847 	.uleb128	0
      002963                       1848 Ldebug_info_end:
                                   1849 
                                   1850 	.area .debug_pubnames (NOLOAD)
      000997 00 00 00 7F           1851 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00099B                       1852 Ldebug_pubnames_start:
      00099B 00 02                 1853 	.dw	2
      00099D 00 00 27 AE           1854 	.dw	0,(Ldebug_info_start-4)
      0009A1 00 00 01 B5           1855 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0009A5 00 00 00 53           1856 	.dw	0,83
      0009A9 49 54 43 5F 47 65 74  1857 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      0009B5 00                    1858 	.db	0
      0009B6 00 00 00 72           1859 	.dw	0,114
      0009BA 49 54 43 5F 44 65 49  1860 	.ascii "ITC_DeInit"
             6E 69 74
      0009C4 00                    1861 	.db	0
      0009C5 00 00 00 8B           1862 	.dw	0,139
      0009C9 49 54 43 5F 47 65 74  1863 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      0009DD 00                    1864 	.db	0
      0009DE 00 00 00 B2           1865 	.dw	0,178
      0009E2 49 54 43 5F 47 65 74  1866 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      0009F9 00                    1867 	.db	0
      0009FA 00 00 01 13           1868 	.dw	0,275
      0009FE 49 54 43 5F 53 65 74  1869 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      000A15 00                    1870 	.db	0
      000A16 00 00 00 00           1871 	.dw	0,0
      000A1A                       1872 Ldebug_pubnames_end:
                                   1873 
                                   1874 	.area .debug_frame (NOLOAD)
      002982 00 00                 1875 	.dw	0
      002984 00 0E                 1876 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      002986                       1877 Ldebug_CIE0_start:
      002986 FF FF                 1878 	.dw	0xffff
      002988 FF FF                 1879 	.dw	0xffff
      00298A 01                    1880 	.db	1
      00298B 00                    1881 	.db	0
      00298C 01                    1882 	.uleb128	1
      00298D 7F                    1883 	.sleb128	-1
      00298E 09                    1884 	.db	9
      00298F 0C                    1885 	.db	12
      002990 08                    1886 	.uleb128	8
      002991 02                    1887 	.uleb128	2
      002992 89                    1888 	.db	137
      002993 01                    1889 	.uleb128	1
      002994                       1890 Ldebug_CIE0_end:
      002994 00 00 00 D7           1891 	.dw	0,215
      002998 00 00 29 82           1892 	.dw	0,(Ldebug_CIE0_start-4)
      00299C 00 00 98 13           1893 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$74)	;initial loc
      0029A0 00 00 01 5F           1894 	.dw	0,Sstm8s_itc$ITC_SetSoftwarePriority$141-Sstm8s_itc$ITC_SetSoftwarePriority$74
      0029A4 01                    1895 	.db	1
      0029A5 00 00 98 13           1896 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$74)
      0029A9 0E                    1897 	.db	14
      0029AA 02                    1898 	.uleb128	2
      0029AB 01                    1899 	.db	1
      0029AC 00 00 98 15           1900 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$75)
      0029B0 0E                    1901 	.db	14
      0029B1 05                    1902 	.uleb128	5
      0029B2 01                    1903 	.db	1
      0029B3 00 00 98 2D           1904 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$77)
      0029B7 0E                    1905 	.db	14
      0029B8 06                    1906 	.uleb128	6
      0029B9 01                    1907 	.db	1
      0029BA 00 00 98 2F           1908 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$78)
      0029BE 0E                    1909 	.db	14
      0029BF 08                    1910 	.uleb128	8
      0029C0 01                    1911 	.db	1
      0029C1 00 00 98 31           1912 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$79)
      0029C5 0E                    1913 	.db	14
      0029C6 09                    1914 	.uleb128	9
      0029C7 01                    1915 	.db	1
      0029C8 00 00 98 33           1916 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$80)
      0029CC 0E                    1917 	.db	14
      0029CD 0A                    1918 	.uleb128	10
      0029CE 01                    1919 	.db	1
      0029CF 00 00 98 35           1920 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$81)
      0029D3 0E                    1921 	.db	14
      0029D4 0B                    1922 	.uleb128	11
      0029D5 01                    1923 	.db	1
      0029D6 00 00 98 3A           1924 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$82)
      0029DA 0E                    1925 	.db	14
      0029DB 05                    1926 	.uleb128	5
      0029DC 01                    1927 	.db	1
      0029DD 00 00 98 43           1928 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$84)
      0029E1 0E                    1929 	.db	14
      0029E2 05                    1930 	.uleb128	5
      0029E3 01                    1931 	.db	1
      0029E4 00 00 98 4B           1932 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$85)
      0029E8 0E                    1933 	.db	14
      0029E9 05                    1934 	.uleb128	5
      0029EA 01                    1935 	.db	1
      0029EB 00 00 98 5B           1936 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$86)
      0029EF 0E                    1937 	.db	14
      0029F0 05                    1938 	.uleb128	5
      0029F1 01                    1939 	.db	1
      0029F2 00 00 98 5D           1940 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$87)
      0029F6 0E                    1941 	.db	14
      0029F7 06                    1942 	.uleb128	6
      0029F8 01                    1943 	.db	1
      0029F9 00 00 98 5F           1944 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$88)
      0029FD 0E                    1945 	.db	14
      0029FE 08                    1946 	.uleb128	8
      0029FF 01                    1947 	.db	1
      002A00 00 00 98 61           1948 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$89)
      002A04 0E                    1949 	.db	14
      002A05 09                    1950 	.uleb128	9
      002A06 01                    1951 	.db	1
      002A07 00 00 98 63           1952 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$90)
      002A0B 0E                    1953 	.db	14
      002A0C 0A                    1954 	.uleb128	10
      002A0D 01                    1955 	.db	1
      002A0E 00 00 98 65           1956 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$91)
      002A12 0E                    1957 	.db	14
      002A13 0B                    1958 	.uleb128	11
      002A14 01                    1959 	.db	1
      002A15 00 00 98 6A           1960 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$92)
      002A19 0E                    1961 	.db	14
      002A1A 05                    1962 	.uleb128	5
      002A1B 01                    1963 	.db	1
      002A1C 00 00 98 74           1964 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$94)
      002A20 0E                    1965 	.db	14
      002A21 05                    1966 	.uleb128	5
      002A22 01                    1967 	.db	1
      002A23 00 00 98 76           1968 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$95)
      002A27 0E                    1969 	.db	14
      002A28 06                    1970 	.uleb128	6
      002A29 01                    1971 	.db	1
      002A2A 00 00 98 78           1972 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$96)
      002A2E 0E                    1973 	.db	14
      002A2F 08                    1974 	.uleb128	8
      002A30 01                    1975 	.db	1
      002A31 00 00 98 7A           1976 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$97)
      002A35 0E                    1977 	.db	14
      002A36 09                    1978 	.uleb128	9
      002A37 01                    1979 	.db	1
      002A38 00 00 98 7C           1980 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$98)
      002A3C 0E                    1981 	.db	14
      002A3D 0A                    1982 	.uleb128	10
      002A3E 01                    1983 	.db	1
      002A3F 00 00 98 7E           1984 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$99)
      002A43 0E                    1985 	.db	14
      002A44 0B                    1986 	.uleb128	11
      002A45 01                    1987 	.db	1
      002A46 00 00 98 83           1988 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$100)
      002A4A 0E                    1989 	.db	14
      002A4B 05                    1990 	.uleb128	5
      002A4C 01                    1991 	.db	1
      002A4D 00 00 98 8E           1992 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$102)
      002A51 0E                    1993 	.db	14
      002A52 06                    1994 	.uleb128	6
      002A53 01                    1995 	.db	1
      002A54 00 00 98 98           1996 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$103)
      002A58 0E                    1997 	.db	14
      002A59 05                    1998 	.uleb128	5
      002A5A 01                    1999 	.db	1
      002A5B 00 00 98 9E           2000 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$105)
      002A5F 0E                    2001 	.db	14
      002A60 06                    2002 	.uleb128	6
      002A61 01                    2003 	.db	1
      002A62 00 00 98 A8           2004 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$106)
      002A66 0E                    2005 	.db	14
      002A67 05                    2006 	.uleb128	5
      002A68 01                    2007 	.db	1
      002A69 00 00 99 71           2008 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$139)
      002A6D 0E                    2009 	.db	14
      002A6E 02                    2010 	.uleb128	2
                                   2011 
                                   2012 	.area .debug_frame (NOLOAD)
      002A6F 00 00                 2013 	.dw	0
      002A71 00 0E                 2014 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      002A73                       2015 Ldebug_CIE1_start:
      002A73 FF FF                 2016 	.dw	0xffff
      002A75 FF FF                 2017 	.dw	0xffff
      002A77 01                    2018 	.db	1
      002A78 00                    2019 	.db	0
      002A79 01                    2020 	.uleb128	1
      002A7A 7F                    2021 	.sleb128	-1
      002A7B 09                    2022 	.db	9
      002A7C 0C                    2023 	.db	12
      002A7D 08                    2024 	.uleb128	8
      002A7E 02                    2025 	.uleb128	2
      002A7F 89                    2026 	.db	137
      002A80 01                    2027 	.uleb128	1
      002A81                       2028 Ldebug_CIE1_end:
      002A81 00 00 00 6E           2029 	.dw	0,110
      002A85 00 00 2A 6F           2030 	.dw	0,(Ldebug_CIE1_start-4)
      002A89 00 00 97 44           2031 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)	;initial loc
      002A8D 00 00 00 CF           2032 	.dw	0,Sstm8s_itc$ITC_GetSoftwarePriority$72-Sstm8s_itc$ITC_GetSoftwarePriority$27
      002A91 01                    2033 	.db	1
      002A92 00 00 97 44           2034 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      002A96 0E                    2035 	.db	14
      002A97 02                    2036 	.uleb128	2
      002A98 01                    2037 	.db	1
      002A99 00 00 97 45           2038 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$28)
      002A9D 0E                    2039 	.db	14
      002A9E 04                    2040 	.uleb128	4
      002A9F 01                    2041 	.db	1
      002AA0 00 00 97 5C           2042 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$31)
      002AA4 0E                    2043 	.db	14
      002AA5 06                    2044 	.uleb128	6
      002AA6 01                    2045 	.db	1
      002AA7 00 00 97 5E           2046 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$32)
      002AAB 0E                    2047 	.db	14
      002AAC 07                    2048 	.uleb128	7
      002AAD 01                    2049 	.db	1
      002AAE 00 00 97 60           2050 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$33)
      002AB2 0E                    2051 	.db	14
      002AB3 08                    2052 	.uleb128	8
      002AB4 01                    2053 	.db	1
      002AB5 00 00 97 62           2054 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$34)
      002AB9 0E                    2055 	.db	14
      002ABA 09                    2056 	.uleb128	9
      002ABB 01                    2057 	.db	1
      002ABC 00 00 97 64           2058 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$35)
      002AC0 0E                    2059 	.db	14
      002AC1 0A                    2060 	.uleb128	10
      002AC2 01                    2061 	.db	1
      002AC3 00 00 97 66           2062 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$36)
      002AC7 0E                    2063 	.db	14
      002AC8 0B                    2064 	.uleb128	11
      002AC9 01                    2065 	.db	1
      002ACA 00 00 97 68           2066 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$37)
      002ACE 0E                    2067 	.db	14
      002ACF 0C                    2068 	.uleb128	12
      002AD0 01                    2069 	.db	1
      002AD1 00 00 97 6D           2070 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$38)
      002AD5 0E                    2071 	.db	14
      002AD6 06                    2072 	.uleb128	6
      002AD7 01                    2073 	.db	1
      002AD8 00 00 97 6E           2074 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$39)
      002ADC 0E                    2075 	.db	14
      002ADD 04                    2076 	.uleb128	4
      002ADE 01                    2077 	.db	1
      002ADF 00 00 97 75           2078 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$41)
      002AE3 0E                    2079 	.db	14
      002AE4 05                    2080 	.uleb128	5
      002AE5 01                    2081 	.db	1
      002AE6 00 00 97 78           2082 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$42)
      002AEA 0E                    2083 	.db	14
      002AEB 04                    2084 	.uleb128	4
      002AEC 01                    2085 	.db	1
      002AED 00 00 98 12           2086 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$70)
      002AF1 0E                    2087 	.db	14
      002AF2 02                    2088 	.uleb128	2
                                   2089 
                                   2090 	.area .debug_frame (NOLOAD)
      002AF3 00 00                 2091 	.dw	0
      002AF5 00 0E                 2092 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      002AF7                       2093 Ldebug_CIE2_start:
      002AF7 FF FF                 2094 	.dw	0xffff
      002AF9 FF FF                 2095 	.dw	0xffff
      002AFB 01                    2096 	.db	1
      002AFC 00                    2097 	.db	0
      002AFD 01                    2098 	.uleb128	1
      002AFE 7F                    2099 	.sleb128	-1
      002AFF 09                    2100 	.db	9
      002B00 0C                    2101 	.db	12
      002B01 08                    2102 	.uleb128	8
      002B02 02                    2103 	.uleb128	2
      002B03 89                    2104 	.db	137
      002B04 01                    2105 	.uleb128	1
      002B05                       2106 Ldebug_CIE2_end:
      002B05 00 00 00 13           2107 	.dw	0,19
      002B09 00 00 2A F3           2108 	.dw	0,(Ldebug_CIE2_start-4)
      002B0D 00 00 97 3E           2109 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)	;initial loc
      002B11 00 00 00 06           2110 	.dw	0,Sstm8s_itc$ITC_GetSoftIntStatus$25-Sstm8s_itc$ITC_GetSoftIntStatus$21
      002B15 01                    2111 	.db	1
      002B16 00 00 97 3E           2112 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      002B1A 0E                    2113 	.db	14
      002B1B 02                    2114 	.uleb128	2
                                   2115 
                                   2116 	.area .debug_frame (NOLOAD)
      002B1C 00 00                 2117 	.dw	0
      002B1E 00 0E                 2118 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      002B20                       2119 Ldebug_CIE3_start:
      002B20 FF FF                 2120 	.dw	0xffff
      002B22 FF FF                 2121 	.dw	0xffff
      002B24 01                    2122 	.db	1
      002B25 00                    2123 	.db	0
      002B26 01                    2124 	.uleb128	1
      002B27 7F                    2125 	.sleb128	-1
      002B28 09                    2126 	.db	9
      002B29 0C                    2127 	.db	12
      002B2A 08                    2128 	.uleb128	8
      002B2B 02                    2129 	.uleb128	2
      002B2C 89                    2130 	.db	137
      002B2D 01                    2131 	.uleb128	1
      002B2E                       2132 Ldebug_CIE3_end:
      002B2E 00 00 00 13           2133 	.dw	0,19
      002B32 00 00 2B 1C           2134 	.dw	0,(Ldebug_CIE3_start-4)
      002B36 00 00 97 1D           2135 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)	;initial loc
      002B3A 00 00 00 21           2136 	.dw	0,Sstm8s_itc$ITC_DeInit$19-Sstm8s_itc$ITC_DeInit$8
      002B3E 01                    2137 	.db	1
      002B3F 00 00 97 1D           2138 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      002B43 0E                    2139 	.db	14
      002B44 02                    2140 	.uleb128	2
                                   2141 
                                   2142 	.area .debug_frame (NOLOAD)
      002B45 00 00                 2143 	.dw	0
      002B47 00 0E                 2144 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      002B49                       2145 Ldebug_CIE4_start:
      002B49 FF FF                 2146 	.dw	0xffff
      002B4B FF FF                 2147 	.dw	0xffff
      002B4D 01                    2148 	.db	1
      002B4E 00                    2149 	.db	0
      002B4F 01                    2150 	.uleb128	1
      002B50 7F                    2151 	.sleb128	-1
      002B51 09                    2152 	.db	9
      002B52 0C                    2153 	.db	12
      002B53 08                    2154 	.uleb128	8
      002B54 02                    2155 	.uleb128	2
      002B55 89                    2156 	.db	137
      002B56 01                    2157 	.uleb128	1
      002B57                       2158 Ldebug_CIE4_end:
      002B57 00 00 00 13           2159 	.dw	0,19
      002B5B 00 00 2B 45           2160 	.dw	0,(Ldebug_CIE4_start-4)
      002B5F 00 00 97 1A           2161 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)	;initial loc
      002B63 00 00 00 03           2162 	.dw	0,Sstm8s_itc$ITC_GetCPUCC$6-Sstm8s_itc$ITC_GetCPUCC$1
      002B67 01                    2163 	.db	1
      002B68 00 00 97 1A           2164 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      002B6C 0E                    2165 	.db	14
      002B6D 02                    2166 	.uleb128	2
