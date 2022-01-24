                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TRAP_IRQHandler
                                     12 	.globl _TLI_IRQHandler
                                     13 	.globl _AWU_IRQHandler
                                     14 	.globl _CLK_IRQHandler
                                     15 	.globl _EXTI_PORTA_IRQHandler
                                     16 	.globl _EXTI_PORTB_IRQHandler
                                     17 	.globl _EXTI_PORTC_IRQHandler
                                     18 	.globl _EXTI_PORTD_IRQHandler
                                     19 	.globl _EXTI_PORTE_IRQHandler
                                     20 	.globl _CAN_RX_IRQHandler
                                     21 	.globl _CAN_TX_IRQHandler
                                     22 	.globl _SPI_IRQHandler
                                     23 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     24 	.globl _TIM1_CAP_COM_IRQHandler
                                     25 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     26 	.globl _TIM2_CAP_COM_IRQHandler
                                     27 	.globl _TIM3_UPD_OVF_BRK_IRQHandler
                                     28 	.globl _TIM3_CAP_COM_IRQHandler
                                     29 	.globl _UART1_TX_IRQHandler
                                     30 	.globl _UART1_RX_IRQHandler
                                     31 	.globl _I2C_IRQHandler
                                     32 	.globl _UART3_TX_IRQHandler
                                     33 	.globl _UART3_RX_IRQHandler
                                     34 	.globl _ADC2_IRQHandler
                                     35 	.globl _EEPROM_EEC_IRQHandler
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
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
                                     58 ; global & static initialisations
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area GSINIT
                                     64 ;--------------------------------------------------------
                                     65 ; Home
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area HOME
                                     69 ;--------------------------------------------------------
                                     70 ; code
                                     71 ;--------------------------------------------------------
                                     72 	.area CODE
                           000000    73 	Sstm8s_it$TRAP_IRQHandler$0 ==.
                                     74 ;	./src/stm8s_it.c: 63: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     75 ; genLabel
                                     76 ;	-----------------------------------------
                                     77 ;	 function TRAP_IRQHandler
                                     78 ;	-----------------------------------------
                                     79 ;	Register assignment is optimal.
                                     80 ;	Stack space usage: 0 bytes.
      008887                         81 _TRAP_IRQHandler:
                           000000    82 	Sstm8s_it$TRAP_IRQHandler$1 ==.
                           000000    83 	Sstm8s_it$TRAP_IRQHandler$2 ==.
                                     84 ;	./src/stm8s_it.c: 68: }
                                     85 ; genLabel
      008887                         86 00101$:
                                     87 ; genEndFunction
                           000000    88 	Sstm8s_it$TRAP_IRQHandler$3 ==.
                           000000    89 	XG$TRAP_IRQHandler$0$0 ==.
      008887 80               [11]   90 	iret
                           000001    91 	Sstm8s_it$TRAP_IRQHandler$4 ==.
                           000001    92 	Sstm8s_it$TLI_IRQHandler$5 ==.
                                     93 ;	./src/stm8s_it.c: 74: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     94 ; genLabel
                                     95 ;	-----------------------------------------
                                     96 ;	 function TLI_IRQHandler
                                     97 ;	-----------------------------------------
                                     98 ;	Register assignment is optimal.
                                     99 ;	Stack space usage: 0 bytes.
      008888                        100 _TLI_IRQHandler:
                           000001   101 	Sstm8s_it$TLI_IRQHandler$6 ==.
                           000001   102 	Sstm8s_it$TLI_IRQHandler$7 ==.
                                    103 ;	./src/stm8s_it.c: 79: }
                                    104 ; genLabel
      008888                        105 00101$:
                                    106 ; genEndFunction
                           000001   107 	Sstm8s_it$TLI_IRQHandler$8 ==.
                           000001   108 	XG$TLI_IRQHandler$0$0 ==.
      008888 80               [11]  109 	iret
                           000002   110 	Sstm8s_it$TLI_IRQHandler$9 ==.
                           000002   111 	Sstm8s_it$AWU_IRQHandler$10 ==.
                                    112 ;	./src/stm8s_it.c: 86: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                    113 ; genLabel
                                    114 ;	-----------------------------------------
                                    115 ;	 function AWU_IRQHandler
                                    116 ;	-----------------------------------------
                                    117 ;	Register assignment is optimal.
                                    118 ;	Stack space usage: 0 bytes.
      008889                        119 _AWU_IRQHandler:
                           000002   120 	Sstm8s_it$AWU_IRQHandler$11 ==.
                           000002   121 	Sstm8s_it$AWU_IRQHandler$12 ==.
                                    122 ;	./src/stm8s_it.c: 91: }
                                    123 ; genLabel
      008889                        124 00101$:
                                    125 ; genEndFunction
                           000002   126 	Sstm8s_it$AWU_IRQHandler$13 ==.
                           000002   127 	XG$AWU_IRQHandler$0$0 ==.
      008889 80               [11]  128 	iret
                           000003   129 	Sstm8s_it$AWU_IRQHandler$14 ==.
                           000003   130 	Sstm8s_it$CLK_IRQHandler$15 ==.
                                    131 ;	./src/stm8s_it.c: 98: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    132 ; genLabel
                                    133 ;	-----------------------------------------
                                    134 ;	 function CLK_IRQHandler
                                    135 ;	-----------------------------------------
                                    136 ;	Register assignment is optimal.
                                    137 ;	Stack space usage: 0 bytes.
      00888A                        138 _CLK_IRQHandler:
                           000003   139 	Sstm8s_it$CLK_IRQHandler$16 ==.
                           000003   140 	Sstm8s_it$CLK_IRQHandler$17 ==.
                                    141 ;	./src/stm8s_it.c: 103: }
                                    142 ; genLabel
      00888A                        143 00101$:
                                    144 ; genEndFunction
                           000003   145 	Sstm8s_it$CLK_IRQHandler$18 ==.
                           000003   146 	XG$CLK_IRQHandler$0$0 ==.
      00888A 80               [11]  147 	iret
                           000004   148 	Sstm8s_it$CLK_IRQHandler$19 ==.
                           000004   149 	Sstm8s_it$EXTI_PORTA_IRQHandler$20 ==.
                                    150 ;	./src/stm8s_it.c: 110: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    151 ; genLabel
                                    152 ;	-----------------------------------------
                                    153 ;	 function EXTI_PORTA_IRQHandler
                                    154 ;	-----------------------------------------
                                    155 ;	Register assignment is optimal.
                                    156 ;	Stack space usage: 0 bytes.
      00888B                        157 _EXTI_PORTA_IRQHandler:
                           000004   158 	Sstm8s_it$EXTI_PORTA_IRQHandler$21 ==.
                           000004   159 	Sstm8s_it$EXTI_PORTA_IRQHandler$22 ==.
                                    160 ;	./src/stm8s_it.c: 115: }
                                    161 ; genLabel
      00888B                        162 00101$:
                                    163 ; genEndFunction
                           000004   164 	Sstm8s_it$EXTI_PORTA_IRQHandler$23 ==.
                           000004   165 	XG$EXTI_PORTA_IRQHandler$0$0 ==.
      00888B 80               [11]  166 	iret
                           000005   167 	Sstm8s_it$EXTI_PORTA_IRQHandler$24 ==.
                           000005   168 	Sstm8s_it$EXTI_PORTB_IRQHandler$25 ==.
                                    169 ;	./src/stm8s_it.c: 122: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    170 ; genLabel
                                    171 ;	-----------------------------------------
                                    172 ;	 function EXTI_PORTB_IRQHandler
                                    173 ;	-----------------------------------------
                                    174 ;	Register assignment is optimal.
                                    175 ;	Stack space usage: 0 bytes.
      00888C                        176 _EXTI_PORTB_IRQHandler:
                           000005   177 	Sstm8s_it$EXTI_PORTB_IRQHandler$26 ==.
                           000005   178 	Sstm8s_it$EXTI_PORTB_IRQHandler$27 ==.
                                    179 ;	./src/stm8s_it.c: 127: }
                                    180 ; genLabel
      00888C                        181 00101$:
                                    182 ; genEndFunction
                           000005   183 	Sstm8s_it$EXTI_PORTB_IRQHandler$28 ==.
                           000005   184 	XG$EXTI_PORTB_IRQHandler$0$0 ==.
      00888C 80               [11]  185 	iret
                           000006   186 	Sstm8s_it$EXTI_PORTB_IRQHandler$29 ==.
                           000006   187 	Sstm8s_it$EXTI_PORTC_IRQHandler$30 ==.
                                    188 ;	./src/stm8s_it.c: 134: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    189 ; genLabel
                                    190 ;	-----------------------------------------
                                    191 ;	 function EXTI_PORTC_IRQHandler
                                    192 ;	-----------------------------------------
                                    193 ;	Register assignment is optimal.
                                    194 ;	Stack space usage: 0 bytes.
      00888D                        195 _EXTI_PORTC_IRQHandler:
                           000006   196 	Sstm8s_it$EXTI_PORTC_IRQHandler$31 ==.
                           000006   197 	Sstm8s_it$EXTI_PORTC_IRQHandler$32 ==.
                                    198 ;	./src/stm8s_it.c: 139: }
                                    199 ; genLabel
      00888D                        200 00101$:
                                    201 ; genEndFunction
                           000006   202 	Sstm8s_it$EXTI_PORTC_IRQHandler$33 ==.
                           000006   203 	XG$EXTI_PORTC_IRQHandler$0$0 ==.
      00888D 80               [11]  204 	iret
                           000007   205 	Sstm8s_it$EXTI_PORTC_IRQHandler$34 ==.
                           000007   206 	Sstm8s_it$EXTI_PORTD_IRQHandler$35 ==.
                                    207 ;	./src/stm8s_it.c: 146: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    208 ; genLabel
                                    209 ;	-----------------------------------------
                                    210 ;	 function EXTI_PORTD_IRQHandler
                                    211 ;	-----------------------------------------
                                    212 ;	Register assignment is optimal.
                                    213 ;	Stack space usage: 0 bytes.
      00888E                        214 _EXTI_PORTD_IRQHandler:
                           000007   215 	Sstm8s_it$EXTI_PORTD_IRQHandler$36 ==.
                           000007   216 	Sstm8s_it$EXTI_PORTD_IRQHandler$37 ==.
                                    217 ;	./src/stm8s_it.c: 151: }
                                    218 ; genLabel
      00888E                        219 00101$:
                                    220 ; genEndFunction
                           000007   221 	Sstm8s_it$EXTI_PORTD_IRQHandler$38 ==.
                           000007   222 	XG$EXTI_PORTD_IRQHandler$0$0 ==.
      00888E 80               [11]  223 	iret
                           000008   224 	Sstm8s_it$EXTI_PORTD_IRQHandler$39 ==.
                           000008   225 	Sstm8s_it$EXTI_PORTE_IRQHandler$40 ==.
                                    226 ;	./src/stm8s_it.c: 158: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    227 ; genLabel
                                    228 ;	-----------------------------------------
                                    229 ;	 function EXTI_PORTE_IRQHandler
                                    230 ;	-----------------------------------------
                                    231 ;	Register assignment is optimal.
                                    232 ;	Stack space usage: 0 bytes.
      00888F                        233 _EXTI_PORTE_IRQHandler:
                           000008   234 	Sstm8s_it$EXTI_PORTE_IRQHandler$41 ==.
                           000008   235 	Sstm8s_it$EXTI_PORTE_IRQHandler$42 ==.
                                    236 ;	./src/stm8s_it.c: 163: }
                                    237 ; genLabel
      00888F                        238 00101$:
                                    239 ; genEndFunction
                           000008   240 	Sstm8s_it$EXTI_PORTE_IRQHandler$43 ==.
                           000008   241 	XG$EXTI_PORTE_IRQHandler$0$0 ==.
      00888F 80               [11]  242 	iret
                           000009   243 	Sstm8s_it$EXTI_PORTE_IRQHandler$44 ==.
                           000009   244 	Sstm8s_it$CAN_RX_IRQHandler$45 ==.
                                    245 ;	./src/stm8s_it.c: 184: INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
                                    246 ; genLabel
                                    247 ;	-----------------------------------------
                                    248 ;	 function CAN_RX_IRQHandler
                                    249 ;	-----------------------------------------
                                    250 ;	Register assignment is optimal.
                                    251 ;	Stack space usage: 0 bytes.
      008890                        252 _CAN_RX_IRQHandler:
                           000009   253 	Sstm8s_it$CAN_RX_IRQHandler$46 ==.
                           000009   254 	Sstm8s_it$CAN_RX_IRQHandler$47 ==.
                                    255 ;	./src/stm8s_it.c: 189: }
                                    256 ; genLabel
      008890                        257 00101$:
                                    258 ; genEndFunction
                           000009   259 	Sstm8s_it$CAN_RX_IRQHandler$48 ==.
                           000009   260 	XG$CAN_RX_IRQHandler$0$0 ==.
      008890 80               [11]  261 	iret
                           00000A   262 	Sstm8s_it$CAN_RX_IRQHandler$49 ==.
                           00000A   263 	Sstm8s_it$CAN_TX_IRQHandler$50 ==.
                                    264 ;	./src/stm8s_it.c: 196: INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
                                    265 ; genLabel
                                    266 ;	-----------------------------------------
                                    267 ;	 function CAN_TX_IRQHandler
                                    268 ;	-----------------------------------------
                                    269 ;	Register assignment is optimal.
                                    270 ;	Stack space usage: 0 bytes.
      008891                        271 _CAN_TX_IRQHandler:
                           00000A   272 	Sstm8s_it$CAN_TX_IRQHandler$51 ==.
                           00000A   273 	Sstm8s_it$CAN_TX_IRQHandler$52 ==.
                                    274 ;	./src/stm8s_it.c: 201: }
                                    275 ; genLabel
      008891                        276 00101$:
                                    277 ; genEndFunction
                           00000A   278 	Sstm8s_it$CAN_TX_IRQHandler$53 ==.
                           00000A   279 	XG$CAN_TX_IRQHandler$0$0 ==.
      008891 80               [11]  280 	iret
                           00000B   281 	Sstm8s_it$CAN_TX_IRQHandler$54 ==.
                           00000B   282 	Sstm8s_it$SPI_IRQHandler$55 ==.
                                    283 ;	./src/stm8s_it.c: 209: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    284 ; genLabel
                                    285 ;	-----------------------------------------
                                    286 ;	 function SPI_IRQHandler
                                    287 ;	-----------------------------------------
                                    288 ;	Register assignment is optimal.
                                    289 ;	Stack space usage: 0 bytes.
      008892                        290 _SPI_IRQHandler:
                           00000B   291 	Sstm8s_it$SPI_IRQHandler$56 ==.
                           00000B   292 	Sstm8s_it$SPI_IRQHandler$57 ==.
                                    293 ;	./src/stm8s_it.c: 214: }
                                    294 ; genLabel
      008892                        295 00101$:
                                    296 ; genEndFunction
                           00000B   297 	Sstm8s_it$SPI_IRQHandler$58 ==.
                           00000B   298 	XG$SPI_IRQHandler$0$0 ==.
      008892 80               [11]  299 	iret
                           00000C   300 	Sstm8s_it$SPI_IRQHandler$59 ==.
                           00000C   301 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60 ==.
                                    302 ;	./src/stm8s_it.c: 221: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    303 ; genLabel
                                    304 ;	-----------------------------------------
                                    305 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    306 ;	-----------------------------------------
                                    307 ;	Register assignment is optimal.
                                    308 ;	Stack space usage: 0 bytes.
      008893                        309 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                           00000C   310 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61 ==.
                           00000C   311 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62 ==.
                                    312 ;	./src/stm8s_it.c: 226: }
                                    313 ; genLabel
      008893                        314 00101$:
                                    315 ; genEndFunction
                           00000C   316 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63 ==.
                           00000C   317 	XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0 ==.
      008893 80               [11]  318 	iret
                           00000D   319 	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64 ==.
                           00000D   320 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$65 ==.
                                    321 ;	./src/stm8s_it.c: 233: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    322 ; genLabel
                                    323 ;	-----------------------------------------
                                    324 ;	 function TIM1_CAP_COM_IRQHandler
                                    325 ;	-----------------------------------------
                                    326 ;	Register assignment is optimal.
                                    327 ;	Stack space usage: 0 bytes.
      008894                        328 _TIM1_CAP_COM_IRQHandler:
                           00000D   329 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$66 ==.
                           00000D   330 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67 ==.
                                    331 ;	./src/stm8s_it.c: 238: }
                                    332 ; genLabel
      008894                        333 00101$:
                                    334 ; genEndFunction
                           00000D   335 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$68 ==.
                           00000D   336 	XG$TIM1_CAP_COM_IRQHandler$0$0 ==.
      008894 80               [11]  337 	iret
                           00000E   338 	Sstm8s_it$TIM1_CAP_COM_IRQHandler$69 ==.
                           00000E   339 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70 ==.
                                    340 ;	./src/stm8s_it.c: 270: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    341 ; genLabel
                                    342 ;	-----------------------------------------
                                    343 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    344 ;	-----------------------------------------
                                    345 ;	Register assignment is optimal.
                                    346 ;	Stack space usage: 0 bytes.
      008895                        347 _TIM2_UPD_OVF_BRK_IRQHandler:
                           00000E   348 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71 ==.
                           00000E   349 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72 ==.
                                    350 ;	./src/stm8s_it.c: 275: }
                                    351 ; genLabel
      008895                        352 00101$:
                                    353 ; genEndFunction
                           00000E   354 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73 ==.
                           00000E   355 	XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0 ==.
      008895 80               [11]  356 	iret
                           00000F   357 	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74 ==.
                           00000F   358 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$75 ==.
                                    359 ;	./src/stm8s_it.c: 282: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    360 ; genLabel
                                    361 ;	-----------------------------------------
                                    362 ;	 function TIM2_CAP_COM_IRQHandler
                                    363 ;	-----------------------------------------
                                    364 ;	Register assignment is optimal.
                                    365 ;	Stack space usage: 0 bytes.
      008896                        366 _TIM2_CAP_COM_IRQHandler:
                           00000F   367 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$76 ==.
                           00000F   368 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$77 ==.
                                    369 ;	./src/stm8s_it.c: 287: }
                                    370 ; genLabel
      008896                        371 00101$:
                                    372 ; genEndFunction
                           00000F   373 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$78 ==.
                           00000F   374 	XG$TIM2_CAP_COM_IRQHandler$0$0 ==.
      008896 80               [11]  375 	iret
                           000010   376 	Sstm8s_it$TIM2_CAP_COM_IRQHandler$79 ==.
                           000010   377 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80 ==.
                                    378 ;	./src/stm8s_it.c: 297: INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
                                    379 ; genLabel
                                    380 ;	-----------------------------------------
                                    381 ;	 function TIM3_UPD_OVF_BRK_IRQHandler
                                    382 ;	-----------------------------------------
                                    383 ;	Register assignment is optimal.
                                    384 ;	Stack space usage: 0 bytes.
      008897                        385 _TIM3_UPD_OVF_BRK_IRQHandler:
                           000010   386 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81 ==.
                           000010   387 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82 ==.
                                    388 ;	./src/stm8s_it.c: 302: }
                                    389 ; genLabel
      008897                        390 00101$:
                                    391 ; genEndFunction
                           000010   392 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$83 ==.
                           000010   393 	XG$TIM3_UPD_OVF_BRK_IRQHandler$0$0 ==.
      008897 80               [11]  394 	iret
                           000011   395 	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84 ==.
                           000011   396 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$85 ==.
                                    397 ;	./src/stm8s_it.c: 309: INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
                                    398 ; genLabel
                                    399 ;	-----------------------------------------
                                    400 ;	 function TIM3_CAP_COM_IRQHandler
                                    401 ;	-----------------------------------------
                                    402 ;	Register assignment is optimal.
                                    403 ;	Stack space usage: 0 bytes.
      008898                        404 _TIM3_CAP_COM_IRQHandler:
                           000011   405 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$86 ==.
                           000011   406 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$87 ==.
                                    407 ;	./src/stm8s_it.c: 314: }
                                    408 ; genLabel
      008898                        409 00101$:
                                    410 ; genEndFunction
                           000011   411 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$88 ==.
                           000011   412 	XG$TIM3_CAP_COM_IRQHandler$0$0 ==.
      008898 80               [11]  413 	iret
                           000012   414 	Sstm8s_it$TIM3_CAP_COM_IRQHandler$89 ==.
                           000012   415 	Sstm8s_it$UART1_TX_IRQHandler$90 ==.
                                    416 ;	./src/stm8s_it.c: 324: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    417 ; genLabel
                                    418 ;	-----------------------------------------
                                    419 ;	 function UART1_TX_IRQHandler
                                    420 ;	-----------------------------------------
                                    421 ;	Register assignment is optimal.
                                    422 ;	Stack space usage: 0 bytes.
      008899                        423 _UART1_TX_IRQHandler:
                           000012   424 	Sstm8s_it$UART1_TX_IRQHandler$91 ==.
                           000012   425 	Sstm8s_it$UART1_TX_IRQHandler$92 ==.
                                    426 ;	./src/stm8s_it.c: 329: }
                                    427 ; genLabel
      008899                        428 00101$:
                                    429 ; genEndFunction
                           000012   430 	Sstm8s_it$UART1_TX_IRQHandler$93 ==.
                           000012   431 	XG$UART1_TX_IRQHandler$0$0 ==.
      008899 80               [11]  432 	iret
                           000013   433 	Sstm8s_it$UART1_TX_IRQHandler$94 ==.
                           000013   434 	Sstm8s_it$UART1_RX_IRQHandler$95 ==.
                                    435 ;	./src/stm8s_it.c: 336: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    436 ; genLabel
                                    437 ;	-----------------------------------------
                                    438 ;	 function UART1_RX_IRQHandler
                                    439 ;	-----------------------------------------
                                    440 ;	Register assignment is optimal.
                                    441 ;	Stack space usage: 0 bytes.
      00889A                        442 _UART1_RX_IRQHandler:
                           000013   443 	Sstm8s_it$UART1_RX_IRQHandler$96 ==.
                           000013   444 	Sstm8s_it$UART1_RX_IRQHandler$97 ==.
                                    445 ;	./src/stm8s_it.c: 341: }
                                    446 ; genLabel
      00889A                        447 00101$:
                                    448 ; genEndFunction
                           000013   449 	Sstm8s_it$UART1_RX_IRQHandler$98 ==.
                           000013   450 	XG$UART1_RX_IRQHandler$0$0 ==.
      00889A 80               [11]  451 	iret
                           000014   452 	Sstm8s_it$UART1_RX_IRQHandler$99 ==.
                           000014   453 	Sstm8s_it$I2C_IRQHandler$100 ==.
                                    454 ;	./src/stm8s_it.c: 349: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    455 ; genLabel
                                    456 ;	-----------------------------------------
                                    457 ;	 function I2C_IRQHandler
                                    458 ;	-----------------------------------------
                                    459 ;	Register assignment is optimal.
                                    460 ;	Stack space usage: 0 bytes.
      00889B                        461 _I2C_IRQHandler:
                           000014   462 	Sstm8s_it$I2C_IRQHandler$101 ==.
                           000014   463 	Sstm8s_it$I2C_IRQHandler$102 ==.
                                    464 ;	./src/stm8s_it.c: 354: }
                                    465 ; genLabel
      00889B                        466 00101$:
                                    467 ; genEndFunction
                           000014   468 	Sstm8s_it$I2C_IRQHandler$103 ==.
                           000014   469 	XG$I2C_IRQHandler$0$0 ==.
      00889B 80               [11]  470 	iret
                           000015   471 	Sstm8s_it$I2C_IRQHandler$104 ==.
                           000015   472 	Sstm8s_it$UART3_TX_IRQHandler$105 ==.
                                    473 ;	./src/stm8s_it.c: 388: INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
                                    474 ; genLabel
                                    475 ;	-----------------------------------------
                                    476 ;	 function UART3_TX_IRQHandler
                                    477 ;	-----------------------------------------
                                    478 ;	Register assignment is optimal.
                                    479 ;	Stack space usage: 0 bytes.
      00889C                        480 _UART3_TX_IRQHandler:
                           000015   481 	Sstm8s_it$UART3_TX_IRQHandler$106 ==.
                           000015   482 	Sstm8s_it$UART3_TX_IRQHandler$107 ==.
                                    483 ;	./src/stm8s_it.c: 393: }
                                    484 ; genLabel
      00889C                        485 00101$:
                                    486 ; genEndFunction
                           000015   487 	Sstm8s_it$UART3_TX_IRQHandler$108 ==.
                           000015   488 	XG$UART3_TX_IRQHandler$0$0 ==.
      00889C 80               [11]  489 	iret
                           000016   490 	Sstm8s_it$UART3_TX_IRQHandler$109 ==.
                           000016   491 	Sstm8s_it$UART3_RX_IRQHandler$110 ==.
                                    492 ;	./src/stm8s_it.c: 400: INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
                                    493 ; genLabel
                                    494 ;	-----------------------------------------
                                    495 ;	 function UART3_RX_IRQHandler
                                    496 ;	-----------------------------------------
                                    497 ;	Register assignment is optimal.
                                    498 ;	Stack space usage: 0 bytes.
      00889D                        499 _UART3_RX_IRQHandler:
                           000016   500 	Sstm8s_it$UART3_RX_IRQHandler$111 ==.
                           000016   501 	Sstm8s_it$UART3_RX_IRQHandler$112 ==.
                                    502 ;	./src/stm8s_it.c: 405: }
                                    503 ; genLabel
      00889D                        504 00101$:
                                    505 ; genEndFunction
                           000016   506 	Sstm8s_it$UART3_RX_IRQHandler$113 ==.
                           000016   507 	XG$UART3_RX_IRQHandler$0$0 ==.
      00889D 80               [11]  508 	iret
                           000017   509 	Sstm8s_it$UART3_RX_IRQHandler$114 ==.
                           000017   510 	Sstm8s_it$ADC2_IRQHandler$115 ==.
                                    511 ;	./src/stm8s_it.c: 414: INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
                                    512 ; genLabel
                                    513 ;	-----------------------------------------
                                    514 ;	 function ADC2_IRQHandler
                                    515 ;	-----------------------------------------
                                    516 ;	Register assignment is optimal.
                                    517 ;	Stack space usage: 0 bytes.
      00889E                        518 _ADC2_IRQHandler:
                           000017   519 	Sstm8s_it$ADC2_IRQHandler$116 ==.
                           000017   520 	Sstm8s_it$ADC2_IRQHandler$117 ==.
                                    521 ;	./src/stm8s_it.c: 420: return;
                                    522 ; genReturn
                                    523 ; genLabel
      00889E                        524 00101$:
                           000017   525 	Sstm8s_it$ADC2_IRQHandler$118 ==.
                                    526 ;	./src/stm8s_it.c: 422: }
                                    527 ; genEndFunction
                           000017   528 	Sstm8s_it$ADC2_IRQHandler$119 ==.
                           000017   529 	XG$ADC2_IRQHandler$0$0 ==.
      00889E 80               [11]  530 	iret
                           000018   531 	Sstm8s_it$ADC2_IRQHandler$120 ==.
                           000018   532 	Sstm8s_it$EEPROM_EEC_IRQHandler$121 ==.
                                    533 ;	./src/stm8s_it.c: 471: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    534 ; genLabel
                                    535 ;	-----------------------------------------
                                    536 ;	 function EEPROM_EEC_IRQHandler
                                    537 ;	-----------------------------------------
                                    538 ;	Register assignment is optimal.
                                    539 ;	Stack space usage: 0 bytes.
      00889F                        540 _EEPROM_EEC_IRQHandler:
                           000018   541 	Sstm8s_it$EEPROM_EEC_IRQHandler$122 ==.
                           000018   542 	Sstm8s_it$EEPROM_EEC_IRQHandler$123 ==.
                                    543 ;	./src/stm8s_it.c: 476: }
                                    544 ; genLabel
      00889F                        545 00101$:
                                    546 ; genEndFunction
                           000018   547 	Sstm8s_it$EEPROM_EEC_IRQHandler$124 ==.
                           000018   548 	XG$EEPROM_EEC_IRQHandler$0$0 ==.
      00889F 80               [11]  549 	iret
                           000019   550 	Sstm8s_it$EEPROM_EEC_IRQHandler$125 ==.
                                    551 	.area CODE
                                    552 	.area CONST
                                    553 	.area INITIALIZER
                                    554 	.area CABS (ABS)
                                    555 
                                    556 	.area .debug_line (NOLOAD)
      000A0E 00 00 02 BB            557 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000A12                        558 Ldebug_line_start:
      000A12 00 02                  559 	.dw	2
      000A14 00 00 00 71            560 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000A18 01                     561 	.db	1
      000A19 01                     562 	.db	1
      000A1A FB                     563 	.db	-5
      000A1B 0F                     564 	.db	15
      000A1C 0A                     565 	.db	10
      000A1D 00                     566 	.db	0
      000A1E 01                     567 	.db	1
      000A1F 01                     568 	.db	1
      000A20 01                     569 	.db	1
      000A21 01                     570 	.db	1
      000A22 00                     571 	.db	0
      000A23 00                     572 	.db	0
      000A24 00                     573 	.db	0
      000A25 01                     574 	.db	1
      000A26 43 3A 5C 50 72 6F 67   575 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000A4E 00                     576 	.db	0
      000A4F 43 3A 5C 50 72 6F 67   577 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000A72 00                     578 	.db	0
      000A73 00                     579 	.db	0
      000A74 2E 2F 73 72 63 2F 73   580 	.ascii "./src/stm8s_it.c"
             74 6D 38 73 5F 69 74
             2E 63
      000A84 00                     581 	.db	0
      000A85 00                     582 	.uleb128	0
      000A86 00                     583 	.uleb128	0
      000A87 00                     584 	.uleb128	0
      000A88 00                     585 	.db	0
      000A89                        586 Ldebug_line_stmt:
      000A89 00                     587 	.db	0
      000A8A 05                     588 	.uleb128	5
      000A8B 02                     589 	.db	2
      000A8C 00 00 88 87            590 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$0)
      000A90 03                     591 	.db	3
      000A91 3E                     592 	.sleb128	62
      000A92 01                     593 	.db	1
      000A93 09                     594 	.db	9
      000A94 00 00                  595 	.dw	Sstm8s_it$TRAP_IRQHandler$2-Sstm8s_it$TRAP_IRQHandler$0
      000A96 03                     596 	.db	3
      000A97 05                     597 	.sleb128	5
      000A98 01                     598 	.db	1
      000A99 09                     599 	.db	9
      000A9A 00 01                  600 	.dw	1+Sstm8s_it$TRAP_IRQHandler$3-Sstm8s_it$TRAP_IRQHandler$2
      000A9C 00                     601 	.db	0
      000A9D 01                     602 	.uleb128	1
      000A9E 01                     603 	.db	1
      000A9F 00                     604 	.db	0
      000AA0 05                     605 	.uleb128	5
      000AA1 02                     606 	.db	2
      000AA2 00 00 88 88            607 	.dw	0,(Sstm8s_it$TLI_IRQHandler$5)
      000AA6 03                     608 	.db	3
      000AA7 C9 00                  609 	.sleb128	73
      000AA9 01                     610 	.db	1
      000AAA 09                     611 	.db	9
      000AAB 00 00                  612 	.dw	Sstm8s_it$TLI_IRQHandler$7-Sstm8s_it$TLI_IRQHandler$5
      000AAD 03                     613 	.db	3
      000AAE 05                     614 	.sleb128	5
      000AAF 01                     615 	.db	1
      000AB0 09                     616 	.db	9
      000AB1 00 01                  617 	.dw	1+Sstm8s_it$TLI_IRQHandler$8-Sstm8s_it$TLI_IRQHandler$7
      000AB3 00                     618 	.db	0
      000AB4 01                     619 	.uleb128	1
      000AB5 01                     620 	.db	1
      000AB6 00                     621 	.db	0
      000AB7 05                     622 	.uleb128	5
      000AB8 02                     623 	.db	2
      000AB9 00 00 88 89            624 	.dw	0,(Sstm8s_it$AWU_IRQHandler$10)
      000ABD 03                     625 	.db	3
      000ABE D5 00                  626 	.sleb128	85
      000AC0 01                     627 	.db	1
      000AC1 09                     628 	.db	9
      000AC2 00 00                  629 	.dw	Sstm8s_it$AWU_IRQHandler$12-Sstm8s_it$AWU_IRQHandler$10
      000AC4 03                     630 	.db	3
      000AC5 05                     631 	.sleb128	5
      000AC6 01                     632 	.db	1
      000AC7 09                     633 	.db	9
      000AC8 00 01                  634 	.dw	1+Sstm8s_it$AWU_IRQHandler$13-Sstm8s_it$AWU_IRQHandler$12
      000ACA 00                     635 	.db	0
      000ACB 01                     636 	.uleb128	1
      000ACC 01                     637 	.db	1
      000ACD 00                     638 	.db	0
      000ACE 05                     639 	.uleb128	5
      000ACF 02                     640 	.db	2
      000AD0 00 00 88 8A            641 	.dw	0,(Sstm8s_it$CLK_IRQHandler$15)
      000AD4 03                     642 	.db	3
      000AD5 E1 00                  643 	.sleb128	97
      000AD7 01                     644 	.db	1
      000AD8 09                     645 	.db	9
      000AD9 00 00                  646 	.dw	Sstm8s_it$CLK_IRQHandler$17-Sstm8s_it$CLK_IRQHandler$15
      000ADB 03                     647 	.db	3
      000ADC 05                     648 	.sleb128	5
      000ADD 01                     649 	.db	1
      000ADE 09                     650 	.db	9
      000ADF 00 01                  651 	.dw	1+Sstm8s_it$CLK_IRQHandler$18-Sstm8s_it$CLK_IRQHandler$17
      000AE1 00                     652 	.db	0
      000AE2 01                     653 	.uleb128	1
      000AE3 01                     654 	.db	1
      000AE4 00                     655 	.db	0
      000AE5 05                     656 	.uleb128	5
      000AE6 02                     657 	.db	2
      000AE7 00 00 88 8B            658 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$20)
      000AEB 03                     659 	.db	3
      000AEC ED 00                  660 	.sleb128	109
      000AEE 01                     661 	.db	1
      000AEF 09                     662 	.db	9
      000AF0 00 00                  663 	.dw	Sstm8s_it$EXTI_PORTA_IRQHandler$22-Sstm8s_it$EXTI_PORTA_IRQHandler$20
      000AF2 03                     664 	.db	3
      000AF3 05                     665 	.sleb128	5
      000AF4 01                     666 	.db	1
      000AF5 09                     667 	.db	9
      000AF6 00 01                  668 	.dw	1+Sstm8s_it$EXTI_PORTA_IRQHandler$23-Sstm8s_it$EXTI_PORTA_IRQHandler$22
      000AF8 00                     669 	.db	0
      000AF9 01                     670 	.uleb128	1
      000AFA 01                     671 	.db	1
      000AFB 00                     672 	.db	0
      000AFC 05                     673 	.uleb128	5
      000AFD 02                     674 	.db	2
      000AFE 00 00 88 8C            675 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$25)
      000B02 03                     676 	.db	3
      000B03 F9 00                  677 	.sleb128	121
      000B05 01                     678 	.db	1
      000B06 09                     679 	.db	9
      000B07 00 00                  680 	.dw	Sstm8s_it$EXTI_PORTB_IRQHandler$27-Sstm8s_it$EXTI_PORTB_IRQHandler$25
      000B09 03                     681 	.db	3
      000B0A 05                     682 	.sleb128	5
      000B0B 01                     683 	.db	1
      000B0C 09                     684 	.db	9
      000B0D 00 01                  685 	.dw	1+Sstm8s_it$EXTI_PORTB_IRQHandler$28-Sstm8s_it$EXTI_PORTB_IRQHandler$27
      000B0F 00                     686 	.db	0
      000B10 01                     687 	.uleb128	1
      000B11 01                     688 	.db	1
      000B12 00                     689 	.db	0
      000B13 05                     690 	.uleb128	5
      000B14 02                     691 	.db	2
      000B15 00 00 88 8D            692 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$30)
      000B19 03                     693 	.db	3
      000B1A 85 01                  694 	.sleb128	133
      000B1C 01                     695 	.db	1
      000B1D 09                     696 	.db	9
      000B1E 00 00                  697 	.dw	Sstm8s_it$EXTI_PORTC_IRQHandler$32-Sstm8s_it$EXTI_PORTC_IRQHandler$30
      000B20 03                     698 	.db	3
      000B21 05                     699 	.sleb128	5
      000B22 01                     700 	.db	1
      000B23 09                     701 	.db	9
      000B24 00 01                  702 	.dw	1+Sstm8s_it$EXTI_PORTC_IRQHandler$33-Sstm8s_it$EXTI_PORTC_IRQHandler$32
      000B26 00                     703 	.db	0
      000B27 01                     704 	.uleb128	1
      000B28 01                     705 	.db	1
      000B29 00                     706 	.db	0
      000B2A 05                     707 	.uleb128	5
      000B2B 02                     708 	.db	2
      000B2C 00 00 88 8E            709 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$35)
      000B30 03                     710 	.db	3
      000B31 91 01                  711 	.sleb128	145
      000B33 01                     712 	.db	1
      000B34 09                     713 	.db	9
      000B35 00 00                  714 	.dw	Sstm8s_it$EXTI_PORTD_IRQHandler$37-Sstm8s_it$EXTI_PORTD_IRQHandler$35
      000B37 03                     715 	.db	3
      000B38 05                     716 	.sleb128	5
      000B39 01                     717 	.db	1
      000B3A 09                     718 	.db	9
      000B3B 00 01                  719 	.dw	1+Sstm8s_it$EXTI_PORTD_IRQHandler$38-Sstm8s_it$EXTI_PORTD_IRQHandler$37
      000B3D 00                     720 	.db	0
      000B3E 01                     721 	.uleb128	1
      000B3F 01                     722 	.db	1
      000B40 00                     723 	.db	0
      000B41 05                     724 	.uleb128	5
      000B42 02                     725 	.db	2
      000B43 00 00 88 8F            726 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$40)
      000B47 03                     727 	.db	3
      000B48 9D 01                  728 	.sleb128	157
      000B4A 01                     729 	.db	1
      000B4B 09                     730 	.db	9
      000B4C 00 00                  731 	.dw	Sstm8s_it$EXTI_PORTE_IRQHandler$42-Sstm8s_it$EXTI_PORTE_IRQHandler$40
      000B4E 03                     732 	.db	3
      000B4F 05                     733 	.sleb128	5
      000B50 01                     734 	.db	1
      000B51 09                     735 	.db	9
      000B52 00 01                  736 	.dw	1+Sstm8s_it$EXTI_PORTE_IRQHandler$43-Sstm8s_it$EXTI_PORTE_IRQHandler$42
      000B54 00                     737 	.db	0
      000B55 01                     738 	.uleb128	1
      000B56 01                     739 	.db	1
      000B57 00                     740 	.db	0
      000B58 05                     741 	.uleb128	5
      000B59 02                     742 	.db	2
      000B5A 00 00 88 90            743 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$45)
      000B5E 03                     744 	.db	3
      000B5F B7 01                  745 	.sleb128	183
      000B61 01                     746 	.db	1
      000B62 09                     747 	.db	9
      000B63 00 00                  748 	.dw	Sstm8s_it$CAN_RX_IRQHandler$47-Sstm8s_it$CAN_RX_IRQHandler$45
      000B65 03                     749 	.db	3
      000B66 05                     750 	.sleb128	5
      000B67 01                     751 	.db	1
      000B68 09                     752 	.db	9
      000B69 00 01                  753 	.dw	1+Sstm8s_it$CAN_RX_IRQHandler$48-Sstm8s_it$CAN_RX_IRQHandler$47
      000B6B 00                     754 	.db	0
      000B6C 01                     755 	.uleb128	1
      000B6D 01                     756 	.db	1
      000B6E 00                     757 	.db	0
      000B6F 05                     758 	.uleb128	5
      000B70 02                     759 	.db	2
      000B71 00 00 88 91            760 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$50)
      000B75 03                     761 	.db	3
      000B76 C3 01                  762 	.sleb128	195
      000B78 01                     763 	.db	1
      000B79 09                     764 	.db	9
      000B7A 00 00                  765 	.dw	Sstm8s_it$CAN_TX_IRQHandler$52-Sstm8s_it$CAN_TX_IRQHandler$50
      000B7C 03                     766 	.db	3
      000B7D 05                     767 	.sleb128	5
      000B7E 01                     768 	.db	1
      000B7F 09                     769 	.db	9
      000B80 00 01                  770 	.dw	1+Sstm8s_it$CAN_TX_IRQHandler$53-Sstm8s_it$CAN_TX_IRQHandler$52
      000B82 00                     771 	.db	0
      000B83 01                     772 	.uleb128	1
      000B84 01                     773 	.db	1
      000B85 00                     774 	.db	0
      000B86 05                     775 	.uleb128	5
      000B87 02                     776 	.db	2
      000B88 00 00 88 92            777 	.dw	0,(Sstm8s_it$SPI_IRQHandler$55)
      000B8C 03                     778 	.db	3
      000B8D D0 01                  779 	.sleb128	208
      000B8F 01                     780 	.db	1
      000B90 09                     781 	.db	9
      000B91 00 00                  782 	.dw	Sstm8s_it$SPI_IRQHandler$57-Sstm8s_it$SPI_IRQHandler$55
      000B93 03                     783 	.db	3
      000B94 05                     784 	.sleb128	5
      000B95 01                     785 	.db	1
      000B96 09                     786 	.db	9
      000B97 00 01                  787 	.dw	1+Sstm8s_it$SPI_IRQHandler$58-Sstm8s_it$SPI_IRQHandler$57
      000B99 00                     788 	.db	0
      000B9A 01                     789 	.uleb128	1
      000B9B 01                     790 	.db	1
      000B9C 00                     791 	.db	0
      000B9D 05                     792 	.uleb128	5
      000B9E 02                     793 	.db	2
      000B9F 00 00 88 93            794 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60)
      000BA3 03                     795 	.db	3
      000BA4 DC 01                  796 	.sleb128	220
      000BA6 01                     797 	.db	1
      000BA7 09                     798 	.db	9
      000BA8 00 00                  799 	.dw	Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$60
      000BAA 03                     800 	.db	3
      000BAB 05                     801 	.sleb128	5
      000BAC 01                     802 	.db	1
      000BAD 09                     803 	.db	9
      000BAE 00 01                  804 	.dw	1+Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$63-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$62
      000BB0 00                     805 	.db	0
      000BB1 01                     806 	.uleb128	1
      000BB2 01                     807 	.db	1
      000BB3 00                     808 	.db	0
      000BB4 05                     809 	.uleb128	5
      000BB5 02                     810 	.db	2
      000BB6 00 00 88 94            811 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$65)
      000BBA 03                     812 	.db	3
      000BBB E8 01                  813 	.sleb128	232
      000BBD 01                     814 	.db	1
      000BBE 09                     815 	.db	9
      000BBF 00 00                  816 	.dw	Sstm8s_it$TIM1_CAP_COM_IRQHandler$67-Sstm8s_it$TIM1_CAP_COM_IRQHandler$65
      000BC1 03                     817 	.db	3
      000BC2 05                     818 	.sleb128	5
      000BC3 01                     819 	.db	1
      000BC4 09                     820 	.db	9
      000BC5 00 01                  821 	.dw	1+Sstm8s_it$TIM1_CAP_COM_IRQHandler$68-Sstm8s_it$TIM1_CAP_COM_IRQHandler$67
      000BC7 00                     822 	.db	0
      000BC8 01                     823 	.uleb128	1
      000BC9 01                     824 	.db	1
      000BCA 00                     825 	.db	0
      000BCB 05                     826 	.uleb128	5
      000BCC 02                     827 	.db	2
      000BCD 00 00 88 95            828 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70)
      000BD1 03                     829 	.db	3
      000BD2 8D 02                  830 	.sleb128	269
      000BD4 01                     831 	.db	1
      000BD5 09                     832 	.db	9
      000BD6 00 00                  833 	.dw	Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$70
      000BD8 03                     834 	.db	3
      000BD9 05                     835 	.sleb128	5
      000BDA 01                     836 	.db	1
      000BDB 09                     837 	.db	9
      000BDC 00 01                  838 	.dw	1+Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$73-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$72
      000BDE 00                     839 	.db	0
      000BDF 01                     840 	.uleb128	1
      000BE0 01                     841 	.db	1
      000BE1 00                     842 	.db	0
      000BE2 05                     843 	.uleb128	5
      000BE3 02                     844 	.db	2
      000BE4 00 00 88 96            845 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$75)
      000BE8 03                     846 	.db	3
      000BE9 99 02                  847 	.sleb128	281
      000BEB 01                     848 	.db	1
      000BEC 09                     849 	.db	9
      000BED 00 00                  850 	.dw	Sstm8s_it$TIM2_CAP_COM_IRQHandler$77-Sstm8s_it$TIM2_CAP_COM_IRQHandler$75
      000BEF 03                     851 	.db	3
      000BF0 05                     852 	.sleb128	5
      000BF1 01                     853 	.db	1
      000BF2 09                     854 	.db	9
      000BF3 00 01                  855 	.dw	1+Sstm8s_it$TIM2_CAP_COM_IRQHandler$78-Sstm8s_it$TIM2_CAP_COM_IRQHandler$77
      000BF5 00                     856 	.db	0
      000BF6 01                     857 	.uleb128	1
      000BF7 01                     858 	.db	1
      000BF8 00                     859 	.db	0
      000BF9 05                     860 	.uleb128	5
      000BFA 02                     861 	.db	2
      000BFB 00 00 88 97            862 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80)
      000BFF 03                     863 	.db	3
      000C00 A8 02                  864 	.sleb128	296
      000C02 01                     865 	.db	1
      000C03 09                     866 	.db	9
      000C04 00 00                  867 	.dw	Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$80
      000C06 03                     868 	.db	3
      000C07 05                     869 	.sleb128	5
      000C08 01                     870 	.db	1
      000C09 09                     871 	.db	9
      000C0A 00 01                  872 	.dw	1+Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$83-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$82
      000C0C 00                     873 	.db	0
      000C0D 01                     874 	.uleb128	1
      000C0E 01                     875 	.db	1
      000C0F 00                     876 	.db	0
      000C10 05                     877 	.uleb128	5
      000C11 02                     878 	.db	2
      000C12 00 00 88 98            879 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$85)
      000C16 03                     880 	.db	3
      000C17 B4 02                  881 	.sleb128	308
      000C19 01                     882 	.db	1
      000C1A 09                     883 	.db	9
      000C1B 00 00                  884 	.dw	Sstm8s_it$TIM3_CAP_COM_IRQHandler$87-Sstm8s_it$TIM3_CAP_COM_IRQHandler$85
      000C1D 03                     885 	.db	3
      000C1E 05                     886 	.sleb128	5
      000C1F 01                     887 	.db	1
      000C20 09                     888 	.db	9
      000C21 00 01                  889 	.dw	1+Sstm8s_it$TIM3_CAP_COM_IRQHandler$88-Sstm8s_it$TIM3_CAP_COM_IRQHandler$87
      000C23 00                     890 	.db	0
      000C24 01                     891 	.uleb128	1
      000C25 01                     892 	.db	1
      000C26 00                     893 	.db	0
      000C27 05                     894 	.uleb128	5
      000C28 02                     895 	.db	2
      000C29 00 00 88 99            896 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$90)
      000C2D 03                     897 	.db	3
      000C2E C3 02                  898 	.sleb128	323
      000C30 01                     899 	.db	1
      000C31 09                     900 	.db	9
      000C32 00 00                  901 	.dw	Sstm8s_it$UART1_TX_IRQHandler$92-Sstm8s_it$UART1_TX_IRQHandler$90
      000C34 03                     902 	.db	3
      000C35 05                     903 	.sleb128	5
      000C36 01                     904 	.db	1
      000C37 09                     905 	.db	9
      000C38 00 01                  906 	.dw	1+Sstm8s_it$UART1_TX_IRQHandler$93-Sstm8s_it$UART1_TX_IRQHandler$92
      000C3A 00                     907 	.db	0
      000C3B 01                     908 	.uleb128	1
      000C3C 01                     909 	.db	1
      000C3D 00                     910 	.db	0
      000C3E 05                     911 	.uleb128	5
      000C3F 02                     912 	.db	2
      000C40 00 00 88 9A            913 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$95)
      000C44 03                     914 	.db	3
      000C45 CF 02                  915 	.sleb128	335
      000C47 01                     916 	.db	1
      000C48 09                     917 	.db	9
      000C49 00 00                  918 	.dw	Sstm8s_it$UART1_RX_IRQHandler$97-Sstm8s_it$UART1_RX_IRQHandler$95
      000C4B 03                     919 	.db	3
      000C4C 05                     920 	.sleb128	5
      000C4D 01                     921 	.db	1
      000C4E 09                     922 	.db	9
      000C4F 00 01                  923 	.dw	1+Sstm8s_it$UART1_RX_IRQHandler$98-Sstm8s_it$UART1_RX_IRQHandler$97
      000C51 00                     924 	.db	0
      000C52 01                     925 	.uleb128	1
      000C53 01                     926 	.db	1
      000C54 00                     927 	.db	0
      000C55 05                     928 	.uleb128	5
      000C56 02                     929 	.db	2
      000C57 00 00 88 9B            930 	.dw	0,(Sstm8s_it$I2C_IRQHandler$100)
      000C5B 03                     931 	.db	3
      000C5C DC 02                  932 	.sleb128	348
      000C5E 01                     933 	.db	1
      000C5F 09                     934 	.db	9
      000C60 00 00                  935 	.dw	Sstm8s_it$I2C_IRQHandler$102-Sstm8s_it$I2C_IRQHandler$100
      000C62 03                     936 	.db	3
      000C63 05                     937 	.sleb128	5
      000C64 01                     938 	.db	1
      000C65 09                     939 	.db	9
      000C66 00 01                  940 	.dw	1+Sstm8s_it$I2C_IRQHandler$103-Sstm8s_it$I2C_IRQHandler$102
      000C68 00                     941 	.db	0
      000C69 01                     942 	.uleb128	1
      000C6A 01                     943 	.db	1
      000C6B 00                     944 	.db	0
      000C6C 05                     945 	.uleb128	5
      000C6D 02                     946 	.db	2
      000C6E 00 00 88 9C            947 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$105)
      000C72 03                     948 	.db	3
      000C73 83 03                  949 	.sleb128	387
      000C75 01                     950 	.db	1
      000C76 09                     951 	.db	9
      000C77 00 00                  952 	.dw	Sstm8s_it$UART3_TX_IRQHandler$107-Sstm8s_it$UART3_TX_IRQHandler$105
      000C79 03                     953 	.db	3
      000C7A 05                     954 	.sleb128	5
      000C7B 01                     955 	.db	1
      000C7C 09                     956 	.db	9
      000C7D 00 01                  957 	.dw	1+Sstm8s_it$UART3_TX_IRQHandler$108-Sstm8s_it$UART3_TX_IRQHandler$107
      000C7F 00                     958 	.db	0
      000C80 01                     959 	.uleb128	1
      000C81 01                     960 	.db	1
      000C82 00                     961 	.db	0
      000C83 05                     962 	.uleb128	5
      000C84 02                     963 	.db	2
      000C85 00 00 88 9D            964 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$110)
      000C89 03                     965 	.db	3
      000C8A 8F 03                  966 	.sleb128	399
      000C8C 01                     967 	.db	1
      000C8D 09                     968 	.db	9
      000C8E 00 00                  969 	.dw	Sstm8s_it$UART3_RX_IRQHandler$112-Sstm8s_it$UART3_RX_IRQHandler$110
      000C90 03                     970 	.db	3
      000C91 05                     971 	.sleb128	5
      000C92 01                     972 	.db	1
      000C93 09                     973 	.db	9
      000C94 00 01                  974 	.dw	1+Sstm8s_it$UART3_RX_IRQHandler$113-Sstm8s_it$UART3_RX_IRQHandler$112
      000C96 00                     975 	.db	0
      000C97 01                     976 	.uleb128	1
      000C98 01                     977 	.db	1
      000C99 00                     978 	.db	0
      000C9A 05                     979 	.uleb128	5
      000C9B 02                     980 	.db	2
      000C9C 00 00 88 9E            981 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$115)
      000CA0 03                     982 	.db	3
      000CA1 9D 03                  983 	.sleb128	413
      000CA3 01                     984 	.db	1
      000CA4 09                     985 	.db	9
      000CA5 00 00                  986 	.dw	Sstm8s_it$ADC2_IRQHandler$117-Sstm8s_it$ADC2_IRQHandler$115
      000CA7 03                     987 	.db	3
      000CA8 06                     988 	.sleb128	6
      000CA9 01                     989 	.db	1
      000CAA 09                     990 	.db	9
      000CAB 00 00                  991 	.dw	Sstm8s_it$ADC2_IRQHandler$118-Sstm8s_it$ADC2_IRQHandler$117
      000CAD 03                     992 	.db	3
      000CAE 02                     993 	.sleb128	2
      000CAF 01                     994 	.db	1
      000CB0 09                     995 	.db	9
      000CB1 00 01                  996 	.dw	1+Sstm8s_it$ADC2_IRQHandler$119-Sstm8s_it$ADC2_IRQHandler$118
      000CB3 00                     997 	.db	0
      000CB4 01                     998 	.uleb128	1
      000CB5 01                     999 	.db	1
      000CB6 00                    1000 	.db	0
      000CB7 05                    1001 	.uleb128	5
      000CB8 02                    1002 	.db	2
      000CB9 00 00 88 9F           1003 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$121)
      000CBD 03                    1004 	.db	3
      000CBE D6 03                 1005 	.sleb128	470
      000CC0 01                    1006 	.db	1
      000CC1 09                    1007 	.db	9
      000CC2 00 00                 1008 	.dw	Sstm8s_it$EEPROM_EEC_IRQHandler$123-Sstm8s_it$EEPROM_EEC_IRQHandler$121
      000CC4 03                    1009 	.db	3
      000CC5 05                    1010 	.sleb128	5
      000CC6 01                    1011 	.db	1
      000CC7 09                    1012 	.db	9
      000CC8 00 01                 1013 	.dw	1+Sstm8s_it$EEPROM_EEC_IRQHandler$124-Sstm8s_it$EEPROM_EEC_IRQHandler$123
      000CCA 00                    1014 	.db	0
      000CCB 01                    1015 	.uleb128	1
      000CCC 01                    1016 	.db	1
      000CCD                       1017 Ldebug_line_end:
                                   1018 
                                   1019 	.area .debug_loc (NOLOAD)
      00149C                       1020 Ldebug_loc_start:
      00149C 00 00 88 9F           1021 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)
      0014A0 00 00 88 A0           1022 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$125)
      0014A4 00 02                 1023 	.dw	2
      0014A6 78                    1024 	.db	120
      0014A7 01                    1025 	.sleb128	1
      0014A8 00 00 00 00           1026 	.dw	0,0
      0014AC 00 00 00 00           1027 	.dw	0,0
      0014B0 00 00 88 9E           1028 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)
      0014B4 00 00 88 9F           1029 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$120)
      0014B8 00 02                 1030 	.dw	2
      0014BA 78                    1031 	.db	120
      0014BB 01                    1032 	.sleb128	1
      0014BC 00 00 00 00           1033 	.dw	0,0
      0014C0 00 00 00 00           1034 	.dw	0,0
      0014C4 00 00 88 9D           1035 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)
      0014C8 00 00 88 9E           1036 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$114)
      0014CC 00 02                 1037 	.dw	2
      0014CE 78                    1038 	.db	120
      0014CF 01                    1039 	.sleb128	1
      0014D0 00 00 00 00           1040 	.dw	0,0
      0014D4 00 00 00 00           1041 	.dw	0,0
      0014D8 00 00 88 9C           1042 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)
      0014DC 00 00 88 9D           1043 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$109)
      0014E0 00 02                 1044 	.dw	2
      0014E2 78                    1045 	.db	120
      0014E3 01                    1046 	.sleb128	1
      0014E4 00 00 00 00           1047 	.dw	0,0
      0014E8 00 00 00 00           1048 	.dw	0,0
      0014EC 00 00 88 9B           1049 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
      0014F0 00 00 88 9C           1050 	.dw	0,(Sstm8s_it$I2C_IRQHandler$104)
      0014F4 00 02                 1051 	.dw	2
      0014F6 78                    1052 	.db	120
      0014F7 01                    1053 	.sleb128	1
      0014F8 00 00 00 00           1054 	.dw	0,0
      0014FC 00 00 00 00           1055 	.dw	0,0
      001500 00 00 88 9A           1056 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)
      001504 00 00 88 9B           1057 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$99)
      001508 00 02                 1058 	.dw	2
      00150A 78                    1059 	.db	120
      00150B 01                    1060 	.sleb128	1
      00150C 00 00 00 00           1061 	.dw	0,0
      001510 00 00 00 00           1062 	.dw	0,0
      001514 00 00 88 99           1063 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)
      001518 00 00 88 9A           1064 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$94)
      00151C 00 02                 1065 	.dw	2
      00151E 78                    1066 	.db	120
      00151F 01                    1067 	.sleb128	1
      001520 00 00 00 00           1068 	.dw	0,0
      001524 00 00 00 00           1069 	.dw	0,0
      001528 00 00 88 98           1070 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)
      00152C 00 00 88 99           1071 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$89)
      001530 00 02                 1072 	.dw	2
      001532 78                    1073 	.db	120
      001533 01                    1074 	.sleb128	1
      001534 00 00 00 00           1075 	.dw	0,0
      001538 00 00 00 00           1076 	.dw	0,0
      00153C 00 00 88 97           1077 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)
      001540 00 00 88 98           1078 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84)
      001544 00 02                 1079 	.dw	2
      001546 78                    1080 	.db	120
      001547 01                    1081 	.sleb128	1
      001548 00 00 00 00           1082 	.dw	0,0
      00154C 00 00 00 00           1083 	.dw	0,0
      001550 00 00 88 96           1084 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)
      001554 00 00 88 97           1085 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$79)
      001558 00 02                 1086 	.dw	2
      00155A 78                    1087 	.db	120
      00155B 01                    1088 	.sleb128	1
      00155C 00 00 00 00           1089 	.dw	0,0
      001560 00 00 00 00           1090 	.dw	0,0
      001564 00 00 88 95           1091 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)
      001568 00 00 88 96           1092 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74)
      00156C 00 02                 1093 	.dw	2
      00156E 78                    1094 	.db	120
      00156F 01                    1095 	.sleb128	1
      001570 00 00 00 00           1096 	.dw	0,0
      001574 00 00 00 00           1097 	.dw	0,0
      001578 00 00 88 94           1098 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
      00157C 00 00 88 95           1099 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$69)
      001580 00 02                 1100 	.dw	2
      001582 78                    1101 	.db	120
      001583 01                    1102 	.sleb128	1
      001584 00 00 00 00           1103 	.dw	0,0
      001588 00 00 00 00           1104 	.dw	0,0
      00158C 00 00 88 93           1105 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
      001590 00 00 88 94           1106 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64)
      001594 00 02                 1107 	.dw	2
      001596 78                    1108 	.db	120
      001597 01                    1109 	.sleb128	1
      001598 00 00 00 00           1110 	.dw	0,0
      00159C 00 00 00 00           1111 	.dw	0,0
      0015A0 00 00 88 92           1112 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)
      0015A4 00 00 88 93           1113 	.dw	0,(Sstm8s_it$SPI_IRQHandler$59)
      0015A8 00 02                 1114 	.dw	2
      0015AA 78                    1115 	.db	120
      0015AB 01                    1116 	.sleb128	1
      0015AC 00 00 00 00           1117 	.dw	0,0
      0015B0 00 00 00 00           1118 	.dw	0,0
      0015B4 00 00 88 91           1119 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)
      0015B8 00 00 88 92           1120 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$54)
      0015BC 00 02                 1121 	.dw	2
      0015BE 78                    1122 	.db	120
      0015BF 01                    1123 	.sleb128	1
      0015C0 00 00 00 00           1124 	.dw	0,0
      0015C4 00 00 00 00           1125 	.dw	0,0
      0015C8 00 00 88 90           1126 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)
      0015CC 00 00 88 91           1127 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$49)
      0015D0 00 02                 1128 	.dw	2
      0015D2 78                    1129 	.db	120
      0015D3 01                    1130 	.sleb128	1
      0015D4 00 00 00 00           1131 	.dw	0,0
      0015D8 00 00 00 00           1132 	.dw	0,0
      0015DC 00 00 88 8F           1133 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)
      0015E0 00 00 88 90           1134 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$44)
      0015E4 00 02                 1135 	.dw	2
      0015E6 78                    1136 	.db	120
      0015E7 01                    1137 	.sleb128	1
      0015E8 00 00 00 00           1138 	.dw	0,0
      0015EC 00 00 00 00           1139 	.dw	0,0
      0015F0 00 00 88 8E           1140 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)
      0015F4 00 00 88 8F           1141 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$39)
      0015F8 00 02                 1142 	.dw	2
      0015FA 78                    1143 	.db	120
      0015FB 01                    1144 	.sleb128	1
      0015FC 00 00 00 00           1145 	.dw	0,0
      001600 00 00 00 00           1146 	.dw	0,0
      001604 00 00 88 8D           1147 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)
      001608 00 00 88 8E           1148 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$34)
      00160C 00 02                 1149 	.dw	2
      00160E 78                    1150 	.db	120
      00160F 01                    1151 	.sleb128	1
      001610 00 00 00 00           1152 	.dw	0,0
      001614 00 00 00 00           1153 	.dw	0,0
      001618 00 00 88 8C           1154 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)
      00161C 00 00 88 8D           1155 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$29)
      001620 00 02                 1156 	.dw	2
      001622 78                    1157 	.db	120
      001623 01                    1158 	.sleb128	1
      001624 00 00 00 00           1159 	.dw	0,0
      001628 00 00 00 00           1160 	.dw	0,0
      00162C 00 00 88 8B           1161 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)
      001630 00 00 88 8C           1162 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$24)
      001634 00 02                 1163 	.dw	2
      001636 78                    1164 	.db	120
      001637 01                    1165 	.sleb128	1
      001638 00 00 00 00           1166 	.dw	0,0
      00163C 00 00 00 00           1167 	.dw	0,0
      001640 00 00 88 8A           1168 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)
      001644 00 00 88 8B           1169 	.dw	0,(Sstm8s_it$CLK_IRQHandler$19)
      001648 00 02                 1170 	.dw	2
      00164A 78                    1171 	.db	120
      00164B 01                    1172 	.sleb128	1
      00164C 00 00 00 00           1173 	.dw	0,0
      001650 00 00 00 00           1174 	.dw	0,0
      001654 00 00 88 89           1175 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)
      001658 00 00 88 8A           1176 	.dw	0,(Sstm8s_it$AWU_IRQHandler$14)
      00165C 00 02                 1177 	.dw	2
      00165E 78                    1178 	.db	120
      00165F 01                    1179 	.sleb128	1
      001660 00 00 00 00           1180 	.dw	0,0
      001664 00 00 00 00           1181 	.dw	0,0
      001668 00 00 88 88           1182 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
      00166C 00 00 88 89           1183 	.dw	0,(Sstm8s_it$TLI_IRQHandler$9)
      001670 00 02                 1184 	.dw	2
      001672 78                    1185 	.db	120
      001673 01                    1186 	.sleb128	1
      001674 00 00 00 00           1187 	.dw	0,0
      001678 00 00 00 00           1188 	.dw	0,0
      00167C 00 00 88 87           1189 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
      001680 00 00 88 88           1190 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$4)
      001684 00 02                 1191 	.dw	2
      001686 78                    1192 	.db	120
      001687 01                    1193 	.sleb128	1
      001688 00 00 00 00           1194 	.dw	0,0
      00168C 00 00 00 00           1195 	.dw	0,0
                                   1196 
                                   1197 	.area .debug_abbrev (NOLOAD)
      000265                       1198 Ldebug_abbrev:
      000265 01                    1199 	.uleb128	1
      000266 11                    1200 	.uleb128	17
      000267 01                    1201 	.db	1
      000268 03                    1202 	.uleb128	3
      000269 08                    1203 	.uleb128	8
      00026A 10                    1204 	.uleb128	16
      00026B 06                    1205 	.uleb128	6
      00026C 13                    1206 	.uleb128	19
      00026D 0B                    1207 	.uleb128	11
      00026E 25                    1208 	.uleb128	37
      00026F 08                    1209 	.uleb128	8
      000270 00                    1210 	.uleb128	0
      000271 00                    1211 	.uleb128	0
      000272 02                    1212 	.uleb128	2
      000273 2E                    1213 	.uleb128	46
      000274 00                    1214 	.db	0
      000275 03                    1215 	.uleb128	3
      000276 08                    1216 	.uleb128	8
      000277 11                    1217 	.uleb128	17
      000278 01                    1218 	.uleb128	1
      000279 12                    1219 	.uleb128	18
      00027A 01                    1220 	.uleb128	1
      00027B 36                    1221 	.uleb128	54
      00027C 0B                    1222 	.uleb128	11
      00027D 3F                    1223 	.uleb128	63
      00027E 0C                    1224 	.uleb128	12
      00027F 40                    1225 	.uleb128	64
      000280 06                    1226 	.uleb128	6
      000281 00                    1227 	.uleb128	0
      000282 00                    1228 	.uleb128	0
      000283 00                    1229 	.uleb128	0
                                   1230 
                                   1231 	.area .debug_info (NOLOAD)
      0010F6 00 00 03 B5           1232 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0010FA                       1233 Ldebug_info_start:
      0010FA 00 02                 1234 	.dw	2
      0010FC 00 00 02 65           1235 	.dw	0,(Ldebug_abbrev)
      001100 04                    1236 	.db	4
      001101 01                    1237 	.uleb128	1
      001102 2E 2F 73 72 63 2F 73  1238 	.ascii "./src/stm8s_it.c"
             74 6D 38 73 5F 69 74
             2E 63
      001112 00                    1239 	.db	0
      001113 00 00 0A 0E           1240 	.dw	0,(Ldebug_line_start+-4)
      001117 01                    1241 	.db	1
      001118 53 44 43 43 20 76 65  1242 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      001131 00                    1243 	.db	0
      001132 02                    1244 	.uleb128	2
      001133 54 52 41 50 5F 49 52  1245 	.ascii "TRAP_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      001142 00                    1246 	.db	0
      001143 00 00 88 87           1247 	.dw	0,(_TRAP_IRQHandler)
      001147 00 00 88 88           1248 	.dw	0,(XG$TRAP_IRQHandler$0$0+1)
      00114B 03                    1249 	.db	3
      00114C 01                    1250 	.db	1
      00114D 00 00 16 7C           1251 	.dw	0,(Ldebug_loc_start+480)
      001151 02                    1252 	.uleb128	2
      001152 54 4C 49 5F 49 52 51  1253 	.ascii "TLI_IRQHandler"
             48 61 6E 64 6C 65 72
      001160 00                    1254 	.db	0
      001161 00 00 88 88           1255 	.dw	0,(_TLI_IRQHandler)
      001165 00 00 88 89           1256 	.dw	0,(XG$TLI_IRQHandler$0$0+1)
      001169 03                    1257 	.db	3
      00116A 01                    1258 	.db	1
      00116B 00 00 16 68           1259 	.dw	0,(Ldebug_loc_start+460)
      00116F 02                    1260 	.uleb128	2
      001170 41 57 55 5F 49 52 51  1261 	.ascii "AWU_IRQHandler"
             48 61 6E 64 6C 65 72
      00117E 00                    1262 	.db	0
      00117F 00 00 88 89           1263 	.dw	0,(_AWU_IRQHandler)
      001183 00 00 88 8A           1264 	.dw	0,(XG$AWU_IRQHandler$0$0+1)
      001187 03                    1265 	.db	3
      001188 01                    1266 	.db	1
      001189 00 00 16 54           1267 	.dw	0,(Ldebug_loc_start+440)
      00118D 02                    1268 	.uleb128	2
      00118E 43 4C 4B 5F 49 52 51  1269 	.ascii "CLK_IRQHandler"
             48 61 6E 64 6C 65 72
      00119C 00                    1270 	.db	0
      00119D 00 00 88 8A           1271 	.dw	0,(_CLK_IRQHandler)
      0011A1 00 00 88 8B           1272 	.dw	0,(XG$CLK_IRQHandler$0$0+1)
      0011A5 03                    1273 	.db	3
      0011A6 01                    1274 	.db	1
      0011A7 00 00 16 40           1275 	.dw	0,(Ldebug_loc_start+420)
      0011AB 02                    1276 	.uleb128	2
      0011AC 45 58 54 49 5F 50 4F  1277 	.ascii "EXTI_PORTA_IRQHandler"
             52 54 41 5F 49 52 51
             48 61 6E 64 6C 65 72
      0011C1 00                    1278 	.db	0
      0011C2 00 00 88 8B           1279 	.dw	0,(_EXTI_PORTA_IRQHandler)
      0011C6 00 00 88 8C           1280 	.dw	0,(XG$EXTI_PORTA_IRQHandler$0$0+1)
      0011CA 03                    1281 	.db	3
      0011CB 01                    1282 	.db	1
      0011CC 00 00 16 2C           1283 	.dw	0,(Ldebug_loc_start+400)
      0011D0 02                    1284 	.uleb128	2
      0011D1 45 58 54 49 5F 50 4F  1285 	.ascii "EXTI_PORTB_IRQHandler"
             52 54 42 5F 49 52 51
             48 61 6E 64 6C 65 72
      0011E6 00                    1286 	.db	0
      0011E7 00 00 88 8C           1287 	.dw	0,(_EXTI_PORTB_IRQHandler)
      0011EB 00 00 88 8D           1288 	.dw	0,(XG$EXTI_PORTB_IRQHandler$0$0+1)
      0011EF 03                    1289 	.db	3
      0011F0 01                    1290 	.db	1
      0011F1 00 00 16 18           1291 	.dw	0,(Ldebug_loc_start+380)
      0011F5 02                    1292 	.uleb128	2
      0011F6 45 58 54 49 5F 50 4F  1293 	.ascii "EXTI_PORTC_IRQHandler"
             52 54 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00120B 00                    1294 	.db	0
      00120C 00 00 88 8D           1295 	.dw	0,(_EXTI_PORTC_IRQHandler)
      001210 00 00 88 8E           1296 	.dw	0,(XG$EXTI_PORTC_IRQHandler$0$0+1)
      001214 03                    1297 	.db	3
      001215 01                    1298 	.db	1
      001216 00 00 16 04           1299 	.dw	0,(Ldebug_loc_start+360)
      00121A 02                    1300 	.uleb128	2
      00121B 45 58 54 49 5F 50 4F  1301 	.ascii "EXTI_PORTD_IRQHandler"
             52 54 44 5F 49 52 51
             48 61 6E 64 6C 65 72
      001230 00                    1302 	.db	0
      001231 00 00 88 8E           1303 	.dw	0,(_EXTI_PORTD_IRQHandler)
      001235 00 00 88 8F           1304 	.dw	0,(XG$EXTI_PORTD_IRQHandler$0$0+1)
      001239 03                    1305 	.db	3
      00123A 01                    1306 	.db	1
      00123B 00 00 15 F0           1307 	.dw	0,(Ldebug_loc_start+340)
      00123F 02                    1308 	.uleb128	2
      001240 45 58 54 49 5F 50 4F  1309 	.ascii "EXTI_PORTE_IRQHandler"
             52 54 45 5F 49 52 51
             48 61 6E 64 6C 65 72
      001255 00                    1310 	.db	0
      001256 00 00 88 8F           1311 	.dw	0,(_EXTI_PORTE_IRQHandler)
      00125A 00 00 88 90           1312 	.dw	0,(XG$EXTI_PORTE_IRQHandler$0$0+1)
      00125E 03                    1313 	.db	3
      00125F 01                    1314 	.db	1
      001260 00 00 15 DC           1315 	.dw	0,(Ldebug_loc_start+320)
      001264 02                    1316 	.uleb128	2
      001265 43 41 4E 5F 52 58 5F  1317 	.ascii "CAN_RX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      001276 00                    1318 	.db	0
      001277 00 00 88 90           1319 	.dw	0,(_CAN_RX_IRQHandler)
      00127B 00 00 88 91           1320 	.dw	0,(XG$CAN_RX_IRQHandler$0$0+1)
      00127F 03                    1321 	.db	3
      001280 01                    1322 	.db	1
      001281 00 00 15 C8           1323 	.dw	0,(Ldebug_loc_start+300)
      001285 02                    1324 	.uleb128	2
      001286 43 41 4E 5F 54 58 5F  1325 	.ascii "CAN_TX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      001297 00                    1326 	.db	0
      001298 00 00 88 91           1327 	.dw	0,(_CAN_TX_IRQHandler)
      00129C 00 00 88 92           1328 	.dw	0,(XG$CAN_TX_IRQHandler$0$0+1)
      0012A0 03                    1329 	.db	3
      0012A1 01                    1330 	.db	1
      0012A2 00 00 15 B4           1331 	.dw	0,(Ldebug_loc_start+280)
      0012A6 02                    1332 	.uleb128	2
      0012A7 53 50 49 5F 49 52 51  1333 	.ascii "SPI_IRQHandler"
             48 61 6E 64 6C 65 72
      0012B5 00                    1334 	.db	0
      0012B6 00 00 88 92           1335 	.dw	0,(_SPI_IRQHandler)
      0012BA 00 00 88 93           1336 	.dw	0,(XG$SPI_IRQHandler$0$0+1)
      0012BE 03                    1337 	.db	3
      0012BF 01                    1338 	.db	1
      0012C0 00 00 15 A0           1339 	.dw	0,(Ldebug_loc_start+260)
      0012C4 02                    1340 	.uleb128	2
      0012C5 54 49 4D 31 5F 55 50  1341 	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
             44 5F 4F 56 46 5F 54
             52 47 5F 42 52 4B 5F
             49 52 51 48 61 6E 64
             6C 65 72
      0012E4 00                    1342 	.db	0
      0012E5 00 00 88 93           1343 	.dw	0,(_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
      0012E9 00 00 88 94           1344 	.dw	0,(XG$TIM1_UPD_OVF_TRG_BRK_IRQHandler$0$0+1)
      0012ED 03                    1345 	.db	3
      0012EE 01                    1346 	.db	1
      0012EF 00 00 15 8C           1347 	.dw	0,(Ldebug_loc_start+240)
      0012F3 02                    1348 	.uleb128	2
      0012F4 54 49 4D 31 5F 43 41  1349 	.ascii "TIM1_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      00130B 00                    1350 	.db	0
      00130C 00 00 88 94           1351 	.dw	0,(_TIM1_CAP_COM_IRQHandler)
      001310 00 00 88 95           1352 	.dw	0,(XG$TIM1_CAP_COM_IRQHandler$0$0+1)
      001314 03                    1353 	.db	3
      001315 01                    1354 	.db	1
      001316 00 00 15 78           1355 	.dw	0,(Ldebug_loc_start+220)
      00131A 02                    1356 	.uleb128	2
      00131B 54 49 4D 32 5F 55 50  1357 	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      001336 00                    1358 	.db	0
      001337 00 00 88 95           1359 	.dw	0,(_TIM2_UPD_OVF_BRK_IRQHandler)
      00133B 00 00 88 96           1360 	.dw	0,(XG$TIM2_UPD_OVF_BRK_IRQHandler$0$0+1)
      00133F 03                    1361 	.db	3
      001340 01                    1362 	.db	1
      001341 00 00 15 64           1363 	.dw	0,(Ldebug_loc_start+200)
      001345 02                    1364 	.uleb128	2
      001346 54 49 4D 32 5F 43 41  1365 	.ascii "TIM2_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      00135D 00                    1366 	.db	0
      00135E 00 00 88 96           1367 	.dw	0,(_TIM2_CAP_COM_IRQHandler)
      001362 00 00 88 97           1368 	.dw	0,(XG$TIM2_CAP_COM_IRQHandler$0$0+1)
      001366 03                    1369 	.db	3
      001367 01                    1370 	.db	1
      001368 00 00 15 50           1371 	.dw	0,(Ldebug_loc_start+180)
      00136C 02                    1372 	.uleb128	2
      00136D 54 49 4D 33 5F 55 50  1373 	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      001388 00                    1374 	.db	0
      001389 00 00 88 97           1375 	.dw	0,(_TIM3_UPD_OVF_BRK_IRQHandler)
      00138D 00 00 88 98           1376 	.dw	0,(XG$TIM3_UPD_OVF_BRK_IRQHandler$0$0+1)
      001391 03                    1377 	.db	3
      001392 01                    1378 	.db	1
      001393 00 00 15 3C           1379 	.dw	0,(Ldebug_loc_start+160)
      001397 02                    1380 	.uleb128	2
      001398 54 49 4D 33 5F 43 41  1381 	.ascii "TIM3_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0013AF 00                    1382 	.db	0
      0013B0 00 00 88 98           1383 	.dw	0,(_TIM3_CAP_COM_IRQHandler)
      0013B4 00 00 88 99           1384 	.dw	0,(XG$TIM3_CAP_COM_IRQHandler$0$0+1)
      0013B8 03                    1385 	.db	3
      0013B9 01                    1386 	.db	1
      0013BA 00 00 15 28           1387 	.dw	0,(Ldebug_loc_start+140)
      0013BE 02                    1388 	.uleb128	2
      0013BF 55 41 52 54 31 5F 54  1389 	.ascii "UART1_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0013D2 00                    1390 	.db	0
      0013D3 00 00 88 99           1391 	.dw	0,(_UART1_TX_IRQHandler)
      0013D7 00 00 88 9A           1392 	.dw	0,(XG$UART1_TX_IRQHandler$0$0+1)
      0013DB 03                    1393 	.db	3
      0013DC 01                    1394 	.db	1
      0013DD 00 00 15 14           1395 	.dw	0,(Ldebug_loc_start+120)
      0013E1 02                    1396 	.uleb128	2
      0013E2 55 41 52 54 31 5F 52  1397 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0013F5 00                    1398 	.db	0
      0013F6 00 00 88 9A           1399 	.dw	0,(_UART1_RX_IRQHandler)
      0013FA 00 00 88 9B           1400 	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
      0013FE 03                    1401 	.db	3
      0013FF 01                    1402 	.db	1
      001400 00 00 15 00           1403 	.dw	0,(Ldebug_loc_start+100)
      001404 02                    1404 	.uleb128	2
      001405 49 32 43 5F 49 52 51  1405 	.ascii "I2C_IRQHandler"
             48 61 6E 64 6C 65 72
      001413 00                    1406 	.db	0
      001414 00 00 88 9B           1407 	.dw	0,(_I2C_IRQHandler)
      001418 00 00 88 9C           1408 	.dw	0,(XG$I2C_IRQHandler$0$0+1)
      00141C 03                    1409 	.db	3
      00141D 01                    1410 	.db	1
      00141E 00 00 14 EC           1411 	.dw	0,(Ldebug_loc_start+80)
      001422 02                    1412 	.uleb128	2
      001423 55 41 52 54 33 5F 54  1413 	.ascii "UART3_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001436 00                    1414 	.db	0
      001437 00 00 88 9C           1415 	.dw	0,(_UART3_TX_IRQHandler)
      00143B 00 00 88 9D           1416 	.dw	0,(XG$UART3_TX_IRQHandler$0$0+1)
      00143F 03                    1417 	.db	3
      001440 01                    1418 	.db	1
      001441 00 00 14 D8           1419 	.dw	0,(Ldebug_loc_start+60)
      001445 02                    1420 	.uleb128	2
      001446 55 41 52 54 33 5F 52  1421 	.ascii "UART3_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001459 00                    1422 	.db	0
      00145A 00 00 88 9D           1423 	.dw	0,(_UART3_RX_IRQHandler)
      00145E 00 00 88 9E           1424 	.dw	0,(XG$UART3_RX_IRQHandler$0$0+1)
      001462 03                    1425 	.db	3
      001463 01                    1426 	.db	1
      001464 00 00 14 C4           1427 	.dw	0,(Ldebug_loc_start+40)
      001468 02                    1428 	.uleb128	2
      001469 41 44 43 32 5F 49 52  1429 	.ascii "ADC2_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      001478 00                    1430 	.db	0
      001479 00 00 88 9E           1431 	.dw	0,(_ADC2_IRQHandler)
      00147D 00 00 88 9F           1432 	.dw	0,(XG$ADC2_IRQHandler$0$0+1)
      001481 03                    1433 	.db	3
      001482 01                    1434 	.db	1
      001483 00 00 14 B0           1435 	.dw	0,(Ldebug_loc_start+20)
      001487 02                    1436 	.uleb128	2
      001488 45 45 50 52 4F 4D 5F  1437 	.ascii "EEPROM_EEC_IRQHandler"
             45 45 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00149D 00                    1438 	.db	0
      00149E 00 00 88 9F           1439 	.dw	0,(_EEPROM_EEC_IRQHandler)
      0014A2 00 00 88 A0           1440 	.dw	0,(XG$EEPROM_EEC_IRQHandler$0$0+1)
      0014A6 03                    1441 	.db	3
      0014A7 01                    1442 	.db	1
      0014A8 00 00 14 9C           1443 	.dw	0,(Ldebug_loc_start)
      0014AC 00                    1444 	.uleb128	0
      0014AD 00                    1445 	.uleb128	0
      0014AE 00                    1446 	.uleb128	0
      0014AF                       1447 Ldebug_info_end:
                                   1448 
                                   1449 	.area .debug_pubnames (NOLOAD)
      00022A 00 00 02 75           1450 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00022E                       1451 Ldebug_pubnames_start:
      00022E 00 02                 1452 	.dw	2
      000230 00 00 10 F6           1453 	.dw	0,(Ldebug_info_start-4)
      000234 00 00 03 B9           1454 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000238 00 00 00 3C           1455 	.dw	0,60
      00023C 54 52 41 50 5F 49 52  1456 	.ascii "TRAP_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      00024B 00                    1457 	.db	0
      00024C 00 00 00 5B           1458 	.dw	0,91
      000250 54 4C 49 5F 49 52 51  1459 	.ascii "TLI_IRQHandler"
             48 61 6E 64 6C 65 72
      00025E 00                    1460 	.db	0
      00025F 00 00 00 79           1461 	.dw	0,121
      000263 41 57 55 5F 49 52 51  1462 	.ascii "AWU_IRQHandler"
             48 61 6E 64 6C 65 72
      000271 00                    1463 	.db	0
      000272 00 00 00 97           1464 	.dw	0,151
      000276 43 4C 4B 5F 49 52 51  1465 	.ascii "CLK_IRQHandler"
             48 61 6E 64 6C 65 72
      000284 00                    1466 	.db	0
      000285 00 00 00 B5           1467 	.dw	0,181
      000289 45 58 54 49 5F 50 4F  1468 	.ascii "EXTI_PORTA_IRQHandler"
             52 54 41 5F 49 52 51
             48 61 6E 64 6C 65 72
      00029E 00                    1469 	.db	0
      00029F 00 00 00 DA           1470 	.dw	0,218
      0002A3 45 58 54 49 5F 50 4F  1471 	.ascii "EXTI_PORTB_IRQHandler"
             52 54 42 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002B8 00                    1472 	.db	0
      0002B9 00 00 00 FF           1473 	.dw	0,255
      0002BD 45 58 54 49 5F 50 4F  1474 	.ascii "EXTI_PORTC_IRQHandler"
             52 54 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002D2 00                    1475 	.db	0
      0002D3 00 00 01 24           1476 	.dw	0,292
      0002D7 45 58 54 49 5F 50 4F  1477 	.ascii "EXTI_PORTD_IRQHandler"
             52 54 44 5F 49 52 51
             48 61 6E 64 6C 65 72
      0002EC 00                    1478 	.db	0
      0002ED 00 00 01 49           1479 	.dw	0,329
      0002F1 45 58 54 49 5F 50 4F  1480 	.ascii "EXTI_PORTE_IRQHandler"
             52 54 45 5F 49 52 51
             48 61 6E 64 6C 65 72
      000306 00                    1481 	.db	0
      000307 00 00 01 6E           1482 	.dw	0,366
      00030B 43 41 4E 5F 52 58 5F  1483 	.ascii "CAN_RX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      00031C 00                    1484 	.db	0
      00031D 00 00 01 8F           1485 	.dw	0,399
      000321 43 41 4E 5F 54 58 5F  1486 	.ascii "CAN_TX_IRQHandler"
             49 52 51 48 61 6E 64
             6C 65 72
      000332 00                    1487 	.db	0
      000333 00 00 01 B0           1488 	.dw	0,432
      000337 53 50 49 5F 49 52 51  1489 	.ascii "SPI_IRQHandler"
             48 61 6E 64 6C 65 72
      000345 00                    1490 	.db	0
      000346 00 00 01 CE           1491 	.dw	0,462
      00034A 54 49 4D 31 5F 55 50  1492 	.ascii "TIM1_UPD_OVF_TRG_BRK_IRQHandler"
             44 5F 4F 56 46 5F 54
             52 47 5F 42 52 4B 5F
             49 52 51 48 61 6E 64
             6C 65 72
      000369 00                    1493 	.db	0
      00036A 00 00 01 FD           1494 	.dw	0,509
      00036E 54 49 4D 31 5F 43 41  1495 	.ascii "TIM1_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      000385 00                    1496 	.db	0
      000386 00 00 02 24           1497 	.dw	0,548
      00038A 54 49 4D 32 5F 55 50  1498 	.ascii "TIM2_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      0003A5 00                    1499 	.db	0
      0003A6 00 00 02 4F           1500 	.dw	0,591
      0003AA 54 49 4D 32 5F 43 41  1501 	.ascii "TIM2_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0003C1 00                    1502 	.db	0
      0003C2 00 00 02 76           1503 	.dw	0,630
      0003C6 54 49 4D 33 5F 55 50  1504 	.ascii "TIM3_UPD_OVF_BRK_IRQHandler"
             44 5F 4F 56 46 5F 42
             52 4B 5F 49 52 51 48
             61 6E 64 6C 65 72
      0003E1 00                    1505 	.db	0
      0003E2 00 00 02 A1           1506 	.dw	0,673
      0003E6 54 49 4D 33 5F 43 41  1507 	.ascii "TIM3_CAP_COM_IRQHandler"
             50 5F 43 4F 4D 5F 49
             52 51 48 61 6E 64 6C
             65 72
      0003FD 00                    1508 	.db	0
      0003FE 00 00 02 C8           1509 	.dw	0,712
      000402 55 41 52 54 31 5F 54  1510 	.ascii "UART1_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000415 00                    1511 	.db	0
      000416 00 00 02 EB           1512 	.dw	0,747
      00041A 55 41 52 54 31 5F 52  1513 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      00042D 00                    1514 	.db	0
      00042E 00 00 03 0E           1515 	.dw	0,782
      000432 49 32 43 5F 49 52 51  1516 	.ascii "I2C_IRQHandler"
             48 61 6E 64 6C 65 72
      000440 00                    1517 	.db	0
      000441 00 00 03 2C           1518 	.dw	0,812
      000445 55 41 52 54 33 5F 54  1519 	.ascii "UART3_TX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000458 00                    1520 	.db	0
      000459 00 00 03 4F           1521 	.dw	0,847
      00045D 55 41 52 54 33 5F 52  1522 	.ascii "UART3_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000470 00                    1523 	.db	0
      000471 00 00 03 72           1524 	.dw	0,882
      000475 41 44 43 32 5F 49 52  1525 	.ascii "ADC2_IRQHandler"
             51 48 61 6E 64 6C 65
             72
      000484 00                    1526 	.db	0
      000485 00 00 03 91           1527 	.dw	0,913
      000489 45 45 50 52 4F 4D 5F  1528 	.ascii "EEPROM_EEC_IRQHandler"
             45 45 43 5F 49 52 51
             48 61 6E 64 6C 65 72
      00049E 00                    1529 	.db	0
      00049F 00 00 00 00           1530 	.dw	0,0
      0004A3                       1531 Ldebug_pubnames_end:
                                   1532 
                                   1533 	.area .debug_frame (NOLOAD)
      000FEB 00 00                 1534 	.dw	0
      000FED 00 0E                 1535 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000FEF                       1536 Ldebug_CIE0_start:
      000FEF FF FF                 1537 	.dw	0xffff
      000FF1 FF FF                 1538 	.dw	0xffff
      000FF3 01                    1539 	.db	1
      000FF4 00                    1540 	.db	0
      000FF5 01                    1541 	.uleb128	1
      000FF6 7F                    1542 	.sleb128	-1
      000FF7 09                    1543 	.db	9
      000FF8 0C                    1544 	.db	12
      000FF9 08                    1545 	.uleb128	8
      000FFA 09                    1546 	.uleb128	9
      000FFB 89                    1547 	.db	137
      000FFC 01                    1548 	.uleb128	1
      000FFD                       1549 Ldebug_CIE0_end:
      000FFD 00 00 00 13           1550 	.dw	0,19
      001001 00 00 0F EB           1551 	.dw	0,(Ldebug_CIE0_start-4)
      001005 00 00 88 9F           1552 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)	;initial loc
      001009 00 00 00 01           1553 	.dw	0,Sstm8s_it$EEPROM_EEC_IRQHandler$125-Sstm8s_it$EEPROM_EEC_IRQHandler$122
      00100D 01                    1554 	.db	1
      00100E 00 00 88 9F           1555 	.dw	0,(Sstm8s_it$EEPROM_EEC_IRQHandler$122)
      001012 0E                    1556 	.db	14
      001013 09                    1557 	.uleb128	9
                                   1558 
                                   1559 	.area .debug_frame (NOLOAD)
      001014 00 00                 1560 	.dw	0
      001016 00 0E                 1561 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001018                       1562 Ldebug_CIE1_start:
      001018 FF FF                 1563 	.dw	0xffff
      00101A FF FF                 1564 	.dw	0xffff
      00101C 01                    1565 	.db	1
      00101D 00                    1566 	.db	0
      00101E 01                    1567 	.uleb128	1
      00101F 7F                    1568 	.sleb128	-1
      001020 09                    1569 	.db	9
      001021 0C                    1570 	.db	12
      001022 08                    1571 	.uleb128	8
      001023 09                    1572 	.uleb128	9
      001024 89                    1573 	.db	137
      001025 01                    1574 	.uleb128	1
      001026                       1575 Ldebug_CIE1_end:
      001026 00 00 00 13           1576 	.dw	0,19
      00102A 00 00 10 14           1577 	.dw	0,(Ldebug_CIE1_start-4)
      00102E 00 00 88 9E           1578 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)	;initial loc
      001032 00 00 00 01           1579 	.dw	0,Sstm8s_it$ADC2_IRQHandler$120-Sstm8s_it$ADC2_IRQHandler$116
      001036 01                    1580 	.db	1
      001037 00 00 88 9E           1581 	.dw	0,(Sstm8s_it$ADC2_IRQHandler$116)
      00103B 0E                    1582 	.db	14
      00103C 09                    1583 	.uleb128	9
                                   1584 
                                   1585 	.area .debug_frame (NOLOAD)
      00103D 00 00                 1586 	.dw	0
      00103F 00 0E                 1587 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      001041                       1588 Ldebug_CIE2_start:
      001041 FF FF                 1589 	.dw	0xffff
      001043 FF FF                 1590 	.dw	0xffff
      001045 01                    1591 	.db	1
      001046 00                    1592 	.db	0
      001047 01                    1593 	.uleb128	1
      001048 7F                    1594 	.sleb128	-1
      001049 09                    1595 	.db	9
      00104A 0C                    1596 	.db	12
      00104B 08                    1597 	.uleb128	8
      00104C 09                    1598 	.uleb128	9
      00104D 89                    1599 	.db	137
      00104E 01                    1600 	.uleb128	1
      00104F                       1601 Ldebug_CIE2_end:
      00104F 00 00 00 13           1602 	.dw	0,19
      001053 00 00 10 3D           1603 	.dw	0,(Ldebug_CIE2_start-4)
      001057 00 00 88 9D           1604 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)	;initial loc
      00105B 00 00 00 01           1605 	.dw	0,Sstm8s_it$UART3_RX_IRQHandler$114-Sstm8s_it$UART3_RX_IRQHandler$111
      00105F 01                    1606 	.db	1
      001060 00 00 88 9D           1607 	.dw	0,(Sstm8s_it$UART3_RX_IRQHandler$111)
      001064 0E                    1608 	.db	14
      001065 09                    1609 	.uleb128	9
                                   1610 
                                   1611 	.area .debug_frame (NOLOAD)
      001066 00 00                 1612 	.dw	0
      001068 00 0E                 1613 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00106A                       1614 Ldebug_CIE3_start:
      00106A FF FF                 1615 	.dw	0xffff
      00106C FF FF                 1616 	.dw	0xffff
      00106E 01                    1617 	.db	1
      00106F 00                    1618 	.db	0
      001070 01                    1619 	.uleb128	1
      001071 7F                    1620 	.sleb128	-1
      001072 09                    1621 	.db	9
      001073 0C                    1622 	.db	12
      001074 08                    1623 	.uleb128	8
      001075 09                    1624 	.uleb128	9
      001076 89                    1625 	.db	137
      001077 01                    1626 	.uleb128	1
      001078                       1627 Ldebug_CIE3_end:
      001078 00 00 00 13           1628 	.dw	0,19
      00107C 00 00 10 66           1629 	.dw	0,(Ldebug_CIE3_start-4)
      001080 00 00 88 9C           1630 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)	;initial loc
      001084 00 00 00 01           1631 	.dw	0,Sstm8s_it$UART3_TX_IRQHandler$109-Sstm8s_it$UART3_TX_IRQHandler$106
      001088 01                    1632 	.db	1
      001089 00 00 88 9C           1633 	.dw	0,(Sstm8s_it$UART3_TX_IRQHandler$106)
      00108D 0E                    1634 	.db	14
      00108E 09                    1635 	.uleb128	9
                                   1636 
                                   1637 	.area .debug_frame (NOLOAD)
      00108F 00 00                 1638 	.dw	0
      001091 00 0E                 1639 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      001093                       1640 Ldebug_CIE4_start:
      001093 FF FF                 1641 	.dw	0xffff
      001095 FF FF                 1642 	.dw	0xffff
      001097 01                    1643 	.db	1
      001098 00                    1644 	.db	0
      001099 01                    1645 	.uleb128	1
      00109A 7F                    1646 	.sleb128	-1
      00109B 09                    1647 	.db	9
      00109C 0C                    1648 	.db	12
      00109D 08                    1649 	.uleb128	8
      00109E 09                    1650 	.uleb128	9
      00109F 89                    1651 	.db	137
      0010A0 01                    1652 	.uleb128	1
      0010A1                       1653 Ldebug_CIE4_end:
      0010A1 00 00 00 13           1654 	.dw	0,19
      0010A5 00 00 10 8F           1655 	.dw	0,(Ldebug_CIE4_start-4)
      0010A9 00 00 88 9B           1656 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)	;initial loc
      0010AD 00 00 00 01           1657 	.dw	0,Sstm8s_it$I2C_IRQHandler$104-Sstm8s_it$I2C_IRQHandler$101
      0010B1 01                    1658 	.db	1
      0010B2 00 00 88 9B           1659 	.dw	0,(Sstm8s_it$I2C_IRQHandler$101)
      0010B6 0E                    1660 	.db	14
      0010B7 09                    1661 	.uleb128	9
                                   1662 
                                   1663 	.area .debug_frame (NOLOAD)
      0010B8 00 00                 1664 	.dw	0
      0010BA 00 0E                 1665 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0010BC                       1666 Ldebug_CIE5_start:
      0010BC FF FF                 1667 	.dw	0xffff
      0010BE FF FF                 1668 	.dw	0xffff
      0010C0 01                    1669 	.db	1
      0010C1 00                    1670 	.db	0
      0010C2 01                    1671 	.uleb128	1
      0010C3 7F                    1672 	.sleb128	-1
      0010C4 09                    1673 	.db	9
      0010C5 0C                    1674 	.db	12
      0010C6 08                    1675 	.uleb128	8
      0010C7 09                    1676 	.uleb128	9
      0010C8 89                    1677 	.db	137
      0010C9 01                    1678 	.uleb128	1
      0010CA                       1679 Ldebug_CIE5_end:
      0010CA 00 00 00 13           1680 	.dw	0,19
      0010CE 00 00 10 B8           1681 	.dw	0,(Ldebug_CIE5_start-4)
      0010D2 00 00 88 9A           1682 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)	;initial loc
      0010D6 00 00 00 01           1683 	.dw	0,Sstm8s_it$UART1_RX_IRQHandler$99-Sstm8s_it$UART1_RX_IRQHandler$96
      0010DA 01                    1684 	.db	1
      0010DB 00 00 88 9A           1685 	.dw	0,(Sstm8s_it$UART1_RX_IRQHandler$96)
      0010DF 0E                    1686 	.db	14
      0010E0 09                    1687 	.uleb128	9
                                   1688 
                                   1689 	.area .debug_frame (NOLOAD)
      0010E1 00 00                 1690 	.dw	0
      0010E3 00 0E                 1691 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      0010E5                       1692 Ldebug_CIE6_start:
      0010E5 FF FF                 1693 	.dw	0xffff
      0010E7 FF FF                 1694 	.dw	0xffff
      0010E9 01                    1695 	.db	1
      0010EA 00                    1696 	.db	0
      0010EB 01                    1697 	.uleb128	1
      0010EC 7F                    1698 	.sleb128	-1
      0010ED 09                    1699 	.db	9
      0010EE 0C                    1700 	.db	12
      0010EF 08                    1701 	.uleb128	8
      0010F0 09                    1702 	.uleb128	9
      0010F1 89                    1703 	.db	137
      0010F2 01                    1704 	.uleb128	1
      0010F3                       1705 Ldebug_CIE6_end:
      0010F3 00 00 00 13           1706 	.dw	0,19
      0010F7 00 00 10 E1           1707 	.dw	0,(Ldebug_CIE6_start-4)
      0010FB 00 00 88 99           1708 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)	;initial loc
      0010FF 00 00 00 01           1709 	.dw	0,Sstm8s_it$UART1_TX_IRQHandler$94-Sstm8s_it$UART1_TX_IRQHandler$91
      001103 01                    1710 	.db	1
      001104 00 00 88 99           1711 	.dw	0,(Sstm8s_it$UART1_TX_IRQHandler$91)
      001108 0E                    1712 	.db	14
      001109 09                    1713 	.uleb128	9
                                   1714 
                                   1715 	.area .debug_frame (NOLOAD)
      00110A 00 00                 1716 	.dw	0
      00110C 00 0E                 1717 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      00110E                       1718 Ldebug_CIE7_start:
      00110E FF FF                 1719 	.dw	0xffff
      001110 FF FF                 1720 	.dw	0xffff
      001112 01                    1721 	.db	1
      001113 00                    1722 	.db	0
      001114 01                    1723 	.uleb128	1
      001115 7F                    1724 	.sleb128	-1
      001116 09                    1725 	.db	9
      001117 0C                    1726 	.db	12
      001118 08                    1727 	.uleb128	8
      001119 09                    1728 	.uleb128	9
      00111A 89                    1729 	.db	137
      00111B 01                    1730 	.uleb128	1
      00111C                       1731 Ldebug_CIE7_end:
      00111C 00 00 00 13           1732 	.dw	0,19
      001120 00 00 11 0A           1733 	.dw	0,(Ldebug_CIE7_start-4)
      001124 00 00 88 98           1734 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)	;initial loc
      001128 00 00 00 01           1735 	.dw	0,Sstm8s_it$TIM3_CAP_COM_IRQHandler$89-Sstm8s_it$TIM3_CAP_COM_IRQHandler$86
      00112C 01                    1736 	.db	1
      00112D 00 00 88 98           1737 	.dw	0,(Sstm8s_it$TIM3_CAP_COM_IRQHandler$86)
      001131 0E                    1738 	.db	14
      001132 09                    1739 	.uleb128	9
                                   1740 
                                   1741 	.area .debug_frame (NOLOAD)
      001133 00 00                 1742 	.dw	0
      001135 00 0E                 1743 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      001137                       1744 Ldebug_CIE8_start:
      001137 FF FF                 1745 	.dw	0xffff
      001139 FF FF                 1746 	.dw	0xffff
      00113B 01                    1747 	.db	1
      00113C 00                    1748 	.db	0
      00113D 01                    1749 	.uleb128	1
      00113E 7F                    1750 	.sleb128	-1
      00113F 09                    1751 	.db	9
      001140 0C                    1752 	.db	12
      001141 08                    1753 	.uleb128	8
      001142 09                    1754 	.uleb128	9
      001143 89                    1755 	.db	137
      001144 01                    1756 	.uleb128	1
      001145                       1757 Ldebug_CIE8_end:
      001145 00 00 00 13           1758 	.dw	0,19
      001149 00 00 11 33           1759 	.dw	0,(Ldebug_CIE8_start-4)
      00114D 00 00 88 97           1760 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)	;initial loc
      001151 00 00 00 01           1761 	.dw	0,Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$84-Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81
      001155 01                    1762 	.db	1
      001156 00 00 88 97           1763 	.dw	0,(Sstm8s_it$TIM3_UPD_OVF_BRK_IRQHandler$81)
      00115A 0E                    1764 	.db	14
      00115B 09                    1765 	.uleb128	9
                                   1766 
                                   1767 	.area .debug_frame (NOLOAD)
      00115C 00 00                 1768 	.dw	0
      00115E 00 0E                 1769 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      001160                       1770 Ldebug_CIE9_start:
      001160 FF FF                 1771 	.dw	0xffff
      001162 FF FF                 1772 	.dw	0xffff
      001164 01                    1773 	.db	1
      001165 00                    1774 	.db	0
      001166 01                    1775 	.uleb128	1
      001167 7F                    1776 	.sleb128	-1
      001168 09                    1777 	.db	9
      001169 0C                    1778 	.db	12
      00116A 08                    1779 	.uleb128	8
      00116B 09                    1780 	.uleb128	9
      00116C 89                    1781 	.db	137
      00116D 01                    1782 	.uleb128	1
      00116E                       1783 Ldebug_CIE9_end:
      00116E 00 00 00 13           1784 	.dw	0,19
      001172 00 00 11 5C           1785 	.dw	0,(Ldebug_CIE9_start-4)
      001176 00 00 88 96           1786 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)	;initial loc
      00117A 00 00 00 01           1787 	.dw	0,Sstm8s_it$TIM2_CAP_COM_IRQHandler$79-Sstm8s_it$TIM2_CAP_COM_IRQHandler$76
      00117E 01                    1788 	.db	1
      00117F 00 00 88 96           1789 	.dw	0,(Sstm8s_it$TIM2_CAP_COM_IRQHandler$76)
      001183 0E                    1790 	.db	14
      001184 09                    1791 	.uleb128	9
                                   1792 
                                   1793 	.area .debug_frame (NOLOAD)
      001185 00 00                 1794 	.dw	0
      001187 00 0E                 1795 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      001189                       1796 Ldebug_CIE10_start:
      001189 FF FF                 1797 	.dw	0xffff
      00118B FF FF                 1798 	.dw	0xffff
      00118D 01                    1799 	.db	1
      00118E 00                    1800 	.db	0
      00118F 01                    1801 	.uleb128	1
      001190 7F                    1802 	.sleb128	-1
      001191 09                    1803 	.db	9
      001192 0C                    1804 	.db	12
      001193 08                    1805 	.uleb128	8
      001194 09                    1806 	.uleb128	9
      001195 89                    1807 	.db	137
      001196 01                    1808 	.uleb128	1
      001197                       1809 Ldebug_CIE10_end:
      001197 00 00 00 13           1810 	.dw	0,19
      00119B 00 00 11 85           1811 	.dw	0,(Ldebug_CIE10_start-4)
      00119F 00 00 88 95           1812 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)	;initial loc
      0011A3 00 00 00 01           1813 	.dw	0,Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$74-Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71
      0011A7 01                    1814 	.db	1
      0011A8 00 00 88 95           1815 	.dw	0,(Sstm8s_it$TIM2_UPD_OVF_BRK_IRQHandler$71)
      0011AC 0E                    1816 	.db	14
      0011AD 09                    1817 	.uleb128	9
                                   1818 
                                   1819 	.area .debug_frame (NOLOAD)
      0011AE 00 00                 1820 	.dw	0
      0011B0 00 0E                 1821 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      0011B2                       1822 Ldebug_CIE11_start:
      0011B2 FF FF                 1823 	.dw	0xffff
      0011B4 FF FF                 1824 	.dw	0xffff
      0011B6 01                    1825 	.db	1
      0011B7 00                    1826 	.db	0
      0011B8 01                    1827 	.uleb128	1
      0011B9 7F                    1828 	.sleb128	-1
      0011BA 09                    1829 	.db	9
      0011BB 0C                    1830 	.db	12
      0011BC 08                    1831 	.uleb128	8
      0011BD 09                    1832 	.uleb128	9
      0011BE 89                    1833 	.db	137
      0011BF 01                    1834 	.uleb128	1
      0011C0                       1835 Ldebug_CIE11_end:
      0011C0 00 00 00 13           1836 	.dw	0,19
      0011C4 00 00 11 AE           1837 	.dw	0,(Ldebug_CIE11_start-4)
      0011C8 00 00 88 94           1838 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)	;initial loc
      0011CC 00 00 00 01           1839 	.dw	0,Sstm8s_it$TIM1_CAP_COM_IRQHandler$69-Sstm8s_it$TIM1_CAP_COM_IRQHandler$66
      0011D0 01                    1840 	.db	1
      0011D1 00 00 88 94           1841 	.dw	0,(Sstm8s_it$TIM1_CAP_COM_IRQHandler$66)
      0011D5 0E                    1842 	.db	14
      0011D6 09                    1843 	.uleb128	9
                                   1844 
                                   1845 	.area .debug_frame (NOLOAD)
      0011D7 00 00                 1846 	.dw	0
      0011D9 00 0E                 1847 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      0011DB                       1848 Ldebug_CIE12_start:
      0011DB FF FF                 1849 	.dw	0xffff
      0011DD FF FF                 1850 	.dw	0xffff
      0011DF 01                    1851 	.db	1
      0011E0 00                    1852 	.db	0
      0011E1 01                    1853 	.uleb128	1
      0011E2 7F                    1854 	.sleb128	-1
      0011E3 09                    1855 	.db	9
      0011E4 0C                    1856 	.db	12
      0011E5 08                    1857 	.uleb128	8
      0011E6 09                    1858 	.uleb128	9
      0011E7 89                    1859 	.db	137
      0011E8 01                    1860 	.uleb128	1
      0011E9                       1861 Ldebug_CIE12_end:
      0011E9 00 00 00 13           1862 	.dw	0,19
      0011ED 00 00 11 D7           1863 	.dw	0,(Ldebug_CIE12_start-4)
      0011F1 00 00 88 93           1864 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)	;initial loc
      0011F5 00 00 00 01           1865 	.dw	0,Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$64-Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61
      0011F9 01                    1866 	.db	1
      0011FA 00 00 88 93           1867 	.dw	0,(Sstm8s_it$TIM1_UPD_OVF_TRG_BRK_IRQHandler$61)
      0011FE 0E                    1868 	.db	14
      0011FF 09                    1869 	.uleb128	9
                                   1870 
                                   1871 	.area .debug_frame (NOLOAD)
      001200 00 00                 1872 	.dw	0
      001202 00 0E                 1873 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      001204                       1874 Ldebug_CIE13_start:
      001204 FF FF                 1875 	.dw	0xffff
      001206 FF FF                 1876 	.dw	0xffff
      001208 01                    1877 	.db	1
      001209 00                    1878 	.db	0
      00120A 01                    1879 	.uleb128	1
      00120B 7F                    1880 	.sleb128	-1
      00120C 09                    1881 	.db	9
      00120D 0C                    1882 	.db	12
      00120E 08                    1883 	.uleb128	8
      00120F 09                    1884 	.uleb128	9
      001210 89                    1885 	.db	137
      001211 01                    1886 	.uleb128	1
      001212                       1887 Ldebug_CIE13_end:
      001212 00 00 00 13           1888 	.dw	0,19
      001216 00 00 12 00           1889 	.dw	0,(Ldebug_CIE13_start-4)
      00121A 00 00 88 92           1890 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)	;initial loc
      00121E 00 00 00 01           1891 	.dw	0,Sstm8s_it$SPI_IRQHandler$59-Sstm8s_it$SPI_IRQHandler$56
      001222 01                    1892 	.db	1
      001223 00 00 88 92           1893 	.dw	0,(Sstm8s_it$SPI_IRQHandler$56)
      001227 0E                    1894 	.db	14
      001228 09                    1895 	.uleb128	9
                                   1896 
                                   1897 	.area .debug_frame (NOLOAD)
      001229 00 00                 1898 	.dw	0
      00122B 00 0E                 1899 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      00122D                       1900 Ldebug_CIE14_start:
      00122D FF FF                 1901 	.dw	0xffff
      00122F FF FF                 1902 	.dw	0xffff
      001231 01                    1903 	.db	1
      001232 00                    1904 	.db	0
      001233 01                    1905 	.uleb128	1
      001234 7F                    1906 	.sleb128	-1
      001235 09                    1907 	.db	9
      001236 0C                    1908 	.db	12
      001237 08                    1909 	.uleb128	8
      001238 09                    1910 	.uleb128	9
      001239 89                    1911 	.db	137
      00123A 01                    1912 	.uleb128	1
      00123B                       1913 Ldebug_CIE14_end:
      00123B 00 00 00 13           1914 	.dw	0,19
      00123F 00 00 12 29           1915 	.dw	0,(Ldebug_CIE14_start-4)
      001243 00 00 88 91           1916 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)	;initial loc
      001247 00 00 00 01           1917 	.dw	0,Sstm8s_it$CAN_TX_IRQHandler$54-Sstm8s_it$CAN_TX_IRQHandler$51
      00124B 01                    1918 	.db	1
      00124C 00 00 88 91           1919 	.dw	0,(Sstm8s_it$CAN_TX_IRQHandler$51)
      001250 0E                    1920 	.db	14
      001251 09                    1921 	.uleb128	9
                                   1922 
                                   1923 	.area .debug_frame (NOLOAD)
      001252 00 00                 1924 	.dw	0
      001254 00 0E                 1925 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      001256                       1926 Ldebug_CIE15_start:
      001256 FF FF                 1927 	.dw	0xffff
      001258 FF FF                 1928 	.dw	0xffff
      00125A 01                    1929 	.db	1
      00125B 00                    1930 	.db	0
      00125C 01                    1931 	.uleb128	1
      00125D 7F                    1932 	.sleb128	-1
      00125E 09                    1933 	.db	9
      00125F 0C                    1934 	.db	12
      001260 08                    1935 	.uleb128	8
      001261 09                    1936 	.uleb128	9
      001262 89                    1937 	.db	137
      001263 01                    1938 	.uleb128	1
      001264                       1939 Ldebug_CIE15_end:
      001264 00 00 00 13           1940 	.dw	0,19
      001268 00 00 12 52           1941 	.dw	0,(Ldebug_CIE15_start-4)
      00126C 00 00 88 90           1942 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)	;initial loc
      001270 00 00 00 01           1943 	.dw	0,Sstm8s_it$CAN_RX_IRQHandler$49-Sstm8s_it$CAN_RX_IRQHandler$46
      001274 01                    1944 	.db	1
      001275 00 00 88 90           1945 	.dw	0,(Sstm8s_it$CAN_RX_IRQHandler$46)
      001279 0E                    1946 	.db	14
      00127A 09                    1947 	.uleb128	9
                                   1948 
                                   1949 	.area .debug_frame (NOLOAD)
      00127B 00 00                 1950 	.dw	0
      00127D 00 0E                 1951 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      00127F                       1952 Ldebug_CIE16_start:
      00127F FF FF                 1953 	.dw	0xffff
      001281 FF FF                 1954 	.dw	0xffff
      001283 01                    1955 	.db	1
      001284 00                    1956 	.db	0
      001285 01                    1957 	.uleb128	1
      001286 7F                    1958 	.sleb128	-1
      001287 09                    1959 	.db	9
      001288 0C                    1960 	.db	12
      001289 08                    1961 	.uleb128	8
      00128A 09                    1962 	.uleb128	9
      00128B 89                    1963 	.db	137
      00128C 01                    1964 	.uleb128	1
      00128D                       1965 Ldebug_CIE16_end:
      00128D 00 00 00 13           1966 	.dw	0,19
      001291 00 00 12 7B           1967 	.dw	0,(Ldebug_CIE16_start-4)
      001295 00 00 88 8F           1968 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)	;initial loc
      001299 00 00 00 01           1969 	.dw	0,Sstm8s_it$EXTI_PORTE_IRQHandler$44-Sstm8s_it$EXTI_PORTE_IRQHandler$41
      00129D 01                    1970 	.db	1
      00129E 00 00 88 8F           1971 	.dw	0,(Sstm8s_it$EXTI_PORTE_IRQHandler$41)
      0012A2 0E                    1972 	.db	14
      0012A3 09                    1973 	.uleb128	9
                                   1974 
                                   1975 	.area .debug_frame (NOLOAD)
      0012A4 00 00                 1976 	.dw	0
      0012A6 00 0E                 1977 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      0012A8                       1978 Ldebug_CIE17_start:
      0012A8 FF FF                 1979 	.dw	0xffff
      0012AA FF FF                 1980 	.dw	0xffff
      0012AC 01                    1981 	.db	1
      0012AD 00                    1982 	.db	0
      0012AE 01                    1983 	.uleb128	1
      0012AF 7F                    1984 	.sleb128	-1
      0012B0 09                    1985 	.db	9
      0012B1 0C                    1986 	.db	12
      0012B2 08                    1987 	.uleb128	8
      0012B3 09                    1988 	.uleb128	9
      0012B4 89                    1989 	.db	137
      0012B5 01                    1990 	.uleb128	1
      0012B6                       1991 Ldebug_CIE17_end:
      0012B6 00 00 00 13           1992 	.dw	0,19
      0012BA 00 00 12 A4           1993 	.dw	0,(Ldebug_CIE17_start-4)
      0012BE 00 00 88 8E           1994 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)	;initial loc
      0012C2 00 00 00 01           1995 	.dw	0,Sstm8s_it$EXTI_PORTD_IRQHandler$39-Sstm8s_it$EXTI_PORTD_IRQHandler$36
      0012C6 01                    1996 	.db	1
      0012C7 00 00 88 8E           1997 	.dw	0,(Sstm8s_it$EXTI_PORTD_IRQHandler$36)
      0012CB 0E                    1998 	.db	14
      0012CC 09                    1999 	.uleb128	9
                                   2000 
                                   2001 	.area .debug_frame (NOLOAD)
      0012CD 00 00                 2002 	.dw	0
      0012CF 00 0E                 2003 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      0012D1                       2004 Ldebug_CIE18_start:
      0012D1 FF FF                 2005 	.dw	0xffff
      0012D3 FF FF                 2006 	.dw	0xffff
      0012D5 01                    2007 	.db	1
      0012D6 00                    2008 	.db	0
      0012D7 01                    2009 	.uleb128	1
      0012D8 7F                    2010 	.sleb128	-1
      0012D9 09                    2011 	.db	9
      0012DA 0C                    2012 	.db	12
      0012DB 08                    2013 	.uleb128	8
      0012DC 09                    2014 	.uleb128	9
      0012DD 89                    2015 	.db	137
      0012DE 01                    2016 	.uleb128	1
      0012DF                       2017 Ldebug_CIE18_end:
      0012DF 00 00 00 13           2018 	.dw	0,19
      0012E3 00 00 12 CD           2019 	.dw	0,(Ldebug_CIE18_start-4)
      0012E7 00 00 88 8D           2020 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)	;initial loc
      0012EB 00 00 00 01           2021 	.dw	0,Sstm8s_it$EXTI_PORTC_IRQHandler$34-Sstm8s_it$EXTI_PORTC_IRQHandler$31
      0012EF 01                    2022 	.db	1
      0012F0 00 00 88 8D           2023 	.dw	0,(Sstm8s_it$EXTI_PORTC_IRQHandler$31)
      0012F4 0E                    2024 	.db	14
      0012F5 09                    2025 	.uleb128	9
                                   2026 
                                   2027 	.area .debug_frame (NOLOAD)
      0012F6 00 00                 2028 	.dw	0
      0012F8 00 0E                 2029 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      0012FA                       2030 Ldebug_CIE19_start:
      0012FA FF FF                 2031 	.dw	0xffff
      0012FC FF FF                 2032 	.dw	0xffff
      0012FE 01                    2033 	.db	1
      0012FF 00                    2034 	.db	0
      001300 01                    2035 	.uleb128	1
      001301 7F                    2036 	.sleb128	-1
      001302 09                    2037 	.db	9
      001303 0C                    2038 	.db	12
      001304 08                    2039 	.uleb128	8
      001305 09                    2040 	.uleb128	9
      001306 89                    2041 	.db	137
      001307 01                    2042 	.uleb128	1
      001308                       2043 Ldebug_CIE19_end:
      001308 00 00 00 13           2044 	.dw	0,19
      00130C 00 00 12 F6           2045 	.dw	0,(Ldebug_CIE19_start-4)
      001310 00 00 88 8C           2046 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)	;initial loc
      001314 00 00 00 01           2047 	.dw	0,Sstm8s_it$EXTI_PORTB_IRQHandler$29-Sstm8s_it$EXTI_PORTB_IRQHandler$26
      001318 01                    2048 	.db	1
      001319 00 00 88 8C           2049 	.dw	0,(Sstm8s_it$EXTI_PORTB_IRQHandler$26)
      00131D 0E                    2050 	.db	14
      00131E 09                    2051 	.uleb128	9
                                   2052 
                                   2053 	.area .debug_frame (NOLOAD)
      00131F 00 00                 2054 	.dw	0
      001321 00 0E                 2055 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      001323                       2056 Ldebug_CIE20_start:
      001323 FF FF                 2057 	.dw	0xffff
      001325 FF FF                 2058 	.dw	0xffff
      001327 01                    2059 	.db	1
      001328 00                    2060 	.db	0
      001329 01                    2061 	.uleb128	1
      00132A 7F                    2062 	.sleb128	-1
      00132B 09                    2063 	.db	9
      00132C 0C                    2064 	.db	12
      00132D 08                    2065 	.uleb128	8
      00132E 09                    2066 	.uleb128	9
      00132F 89                    2067 	.db	137
      001330 01                    2068 	.uleb128	1
      001331                       2069 Ldebug_CIE20_end:
      001331 00 00 00 13           2070 	.dw	0,19
      001335 00 00 13 1F           2071 	.dw	0,(Ldebug_CIE20_start-4)
      001339 00 00 88 8B           2072 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)	;initial loc
      00133D 00 00 00 01           2073 	.dw	0,Sstm8s_it$EXTI_PORTA_IRQHandler$24-Sstm8s_it$EXTI_PORTA_IRQHandler$21
      001341 01                    2074 	.db	1
      001342 00 00 88 8B           2075 	.dw	0,(Sstm8s_it$EXTI_PORTA_IRQHandler$21)
      001346 0E                    2076 	.db	14
      001347 09                    2077 	.uleb128	9
                                   2078 
                                   2079 	.area .debug_frame (NOLOAD)
      001348 00 00                 2080 	.dw	0
      00134A 00 0E                 2081 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      00134C                       2082 Ldebug_CIE21_start:
      00134C FF FF                 2083 	.dw	0xffff
      00134E FF FF                 2084 	.dw	0xffff
      001350 01                    2085 	.db	1
      001351 00                    2086 	.db	0
      001352 01                    2087 	.uleb128	1
      001353 7F                    2088 	.sleb128	-1
      001354 09                    2089 	.db	9
      001355 0C                    2090 	.db	12
      001356 08                    2091 	.uleb128	8
      001357 09                    2092 	.uleb128	9
      001358 89                    2093 	.db	137
      001359 01                    2094 	.uleb128	1
      00135A                       2095 Ldebug_CIE21_end:
      00135A 00 00 00 13           2096 	.dw	0,19
      00135E 00 00 13 48           2097 	.dw	0,(Ldebug_CIE21_start-4)
      001362 00 00 88 8A           2098 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)	;initial loc
      001366 00 00 00 01           2099 	.dw	0,Sstm8s_it$CLK_IRQHandler$19-Sstm8s_it$CLK_IRQHandler$16
      00136A 01                    2100 	.db	1
      00136B 00 00 88 8A           2101 	.dw	0,(Sstm8s_it$CLK_IRQHandler$16)
      00136F 0E                    2102 	.db	14
      001370 09                    2103 	.uleb128	9
                                   2104 
                                   2105 	.area .debug_frame (NOLOAD)
      001371 00 00                 2106 	.dw	0
      001373 00 0E                 2107 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      001375                       2108 Ldebug_CIE22_start:
      001375 FF FF                 2109 	.dw	0xffff
      001377 FF FF                 2110 	.dw	0xffff
      001379 01                    2111 	.db	1
      00137A 00                    2112 	.db	0
      00137B 01                    2113 	.uleb128	1
      00137C 7F                    2114 	.sleb128	-1
      00137D 09                    2115 	.db	9
      00137E 0C                    2116 	.db	12
      00137F 08                    2117 	.uleb128	8
      001380 09                    2118 	.uleb128	9
      001381 89                    2119 	.db	137
      001382 01                    2120 	.uleb128	1
      001383                       2121 Ldebug_CIE22_end:
      001383 00 00 00 13           2122 	.dw	0,19
      001387 00 00 13 71           2123 	.dw	0,(Ldebug_CIE22_start-4)
      00138B 00 00 88 89           2124 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)	;initial loc
      00138F 00 00 00 01           2125 	.dw	0,Sstm8s_it$AWU_IRQHandler$14-Sstm8s_it$AWU_IRQHandler$11
      001393 01                    2126 	.db	1
      001394 00 00 88 89           2127 	.dw	0,(Sstm8s_it$AWU_IRQHandler$11)
      001398 0E                    2128 	.db	14
      001399 09                    2129 	.uleb128	9
                                   2130 
                                   2131 	.area .debug_frame (NOLOAD)
      00139A 00 00                 2132 	.dw	0
      00139C 00 0E                 2133 	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
      00139E                       2134 Ldebug_CIE23_start:
      00139E FF FF                 2135 	.dw	0xffff
      0013A0 FF FF                 2136 	.dw	0xffff
      0013A2 01                    2137 	.db	1
      0013A3 00                    2138 	.db	0
      0013A4 01                    2139 	.uleb128	1
      0013A5 7F                    2140 	.sleb128	-1
      0013A6 09                    2141 	.db	9
      0013A7 0C                    2142 	.db	12
      0013A8 08                    2143 	.uleb128	8
      0013A9 09                    2144 	.uleb128	9
      0013AA 89                    2145 	.db	137
      0013AB 01                    2146 	.uleb128	1
      0013AC                       2147 Ldebug_CIE23_end:
      0013AC 00 00 00 13           2148 	.dw	0,19
      0013B0 00 00 13 9A           2149 	.dw	0,(Ldebug_CIE23_start-4)
      0013B4 00 00 88 88           2150 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)	;initial loc
      0013B8 00 00 00 01           2151 	.dw	0,Sstm8s_it$TLI_IRQHandler$9-Sstm8s_it$TLI_IRQHandler$6
      0013BC 01                    2152 	.db	1
      0013BD 00 00 88 88           2153 	.dw	0,(Sstm8s_it$TLI_IRQHandler$6)
      0013C1 0E                    2154 	.db	14
      0013C2 09                    2155 	.uleb128	9
                                   2156 
                                   2157 	.area .debug_frame (NOLOAD)
      0013C3 00 00                 2158 	.dw	0
      0013C5 00 0E                 2159 	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
      0013C7                       2160 Ldebug_CIE24_start:
      0013C7 FF FF                 2161 	.dw	0xffff
      0013C9 FF FF                 2162 	.dw	0xffff
      0013CB 01                    2163 	.db	1
      0013CC 00                    2164 	.db	0
      0013CD 01                    2165 	.uleb128	1
      0013CE 7F                    2166 	.sleb128	-1
      0013CF 09                    2167 	.db	9
      0013D0 0C                    2168 	.db	12
      0013D1 08                    2169 	.uleb128	8
      0013D2 09                    2170 	.uleb128	9
      0013D3 89                    2171 	.db	137
      0013D4 01                    2172 	.uleb128	1
      0013D5                       2173 Ldebug_CIE24_end:
      0013D5 00 00 00 13           2174 	.dw	0,19
      0013D9 00 00 13 C3           2175 	.dw	0,(Ldebug_CIE24_start-4)
      0013DD 00 00 88 87           2176 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)	;initial loc
      0013E1 00 00 00 01           2177 	.dw	0,Sstm8s_it$TRAP_IRQHandler$4-Sstm8s_it$TRAP_IRQHandler$1
      0013E5 01                    2178 	.db	1
      0013E6 00 00 88 87           2179 	.dw	0,(Sstm8s_it$TRAP_IRQHandler$1)
      0013EA 0E                    2180 	.db	14
      0013EB 09                    2181 	.uleb128	9
