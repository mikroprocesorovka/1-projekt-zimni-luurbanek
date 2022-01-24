                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module swspi
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_WriteLow
                                     12 	.globl _GPIO_WriteHigh
                                     13 	.globl _GPIO_Init
                                     14 	.globl _swspi_init
                                     15 	.globl _swspi_tx16
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
                           000000    53 	Sswspi$swspi_init$0 ==.
                                     54 ;	./src/swspi.c: 12: void swspi_init(void){
                                     55 ; genLabel
                                     56 ;	-----------------------------------------
                                     57 ;	 function swspi_init
                                     58 ;	-----------------------------------------
                                     59 ;	Register assignment is optimal.
                                     60 ;	Stack space usage: 0 bytes.
      0088A0                         61 _swspi_init:
                           000000    62 	Sswspi$swspi_init$1 ==.
                           000000    63 	Sswspi$swspi_init$2 ==.
                                     64 ;	./src/swspi.c: 13: GPIO_Init(CS_GPIO,CS_PIN,GPIO_MODE_OUT_PP_HIGH_FAST);
                                     65 ; genIPush
      0088A0 4B F0            [ 1]   66 	push	#0xf0
                           000002    67 	Sswspi$swspi_init$3 ==.
                                     68 ; genIPush
      0088A2 4B 10            [ 1]   69 	push	#0x10
                           000004    70 	Sswspi$swspi_init$4 ==.
                                     71 ; genIPush
      0088A4 4B 05            [ 1]   72 	push	#0x05
                           000006    73 	Sswspi$swspi_init$5 ==.
      0088A6 4B 50            [ 1]   74 	push	#0x50
                           000008    75 	Sswspi$swspi_init$6 ==.
                                     76 ; genCall
      0088A8 CD 89 46         [ 4]   77 	call	_GPIO_Init
      0088AB 5B 04            [ 2]   78 	addw	sp, #4
                           00000D    79 	Sswspi$swspi_init$7 ==.
                           00000D    80 	Sswspi$swspi_init$8 ==.
                                     81 ;	./src/swspi.c: 14: GPIO_Init(CLK_GPIO,CLK_PIN,GPIO_MODE_OUT_PP_LOW_FAST);
                                     82 ; genIPush
      0088AD 4B E0            [ 1]   83 	push	#0xe0
                           00000F    84 	Sswspi$swspi_init$9 ==.
                                     85 ; genIPush
      0088AF 4B 08            [ 1]   86 	push	#0x08
                           000011    87 	Sswspi$swspi_init$10 ==.
                                     88 ; genIPush
      0088B1 4B 05            [ 1]   89 	push	#0x05
                           000013    90 	Sswspi$swspi_init$11 ==.
      0088B3 4B 50            [ 1]   91 	push	#0x50
                           000015    92 	Sswspi$swspi_init$12 ==.
                                     93 ; genCall
      0088B5 CD 89 46         [ 4]   94 	call	_GPIO_Init
      0088B8 5B 04            [ 2]   95 	addw	sp, #4
                           00001A    96 	Sswspi$swspi_init$13 ==.
                           00001A    97 	Sswspi$swspi_init$14 ==.
                                     98 ;	./src/swspi.c: 15: GPIO_Init(DIN_GPIO,DIN_PIN,GPIO_MODE_OUT_PP_LOW_FAST);
                                     99 ; genIPush
      0088BA 4B E0            [ 1]  100 	push	#0xe0
                           00001C   101 	Sswspi$swspi_init$15 ==.
                                    102 ; genIPush
      0088BC 4B 20            [ 1]  103 	push	#0x20
                           00001E   104 	Sswspi$swspi_init$16 ==.
                                    105 ; genIPush
      0088BE 4B 05            [ 1]  106 	push	#0x05
                           000020   107 	Sswspi$swspi_init$17 ==.
      0088C0 4B 50            [ 1]  108 	push	#0x50
                           000022   109 	Sswspi$swspi_init$18 ==.
                                    110 ; genCall
      0088C2 CD 89 46         [ 4]  111 	call	_GPIO_Init
      0088C5 5B 04            [ 2]  112 	addw	sp, #4
                           000027   113 	Sswspi$swspi_init$19 ==.
                                    114 ; genLabel
      0088C7                        115 00101$:
                           000027   116 	Sswspi$swspi_init$20 ==.
                                    117 ;	./src/swspi.c: 16: }
                                    118 ; genEndFunction
                           000027   119 	Sswspi$swspi_init$21 ==.
                           000027   120 	XG$swspi_init$0$0 ==.
      0088C7 81               [ 4]  121 	ret
                           000028   122 	Sswspi$swspi_init$22 ==.
                           000028   123 	Sswspi$swspi_tx16$23 ==.
                                    124 ;	./src/swspi.c: 19: void swspi_tx16(uint16_t data){
                                    125 ; genLabel
                                    126 ;	-----------------------------------------
                                    127 ;	 function swspi_tx16
                                    128 ;	-----------------------------------------
                                    129 ;	Register assignment is optimal.
                                    130 ;	Stack space usage: 2 bytes.
      0088C8                        131 _swspi_tx16:
                           000028   132 	Sswspi$swspi_tx16$24 ==.
      0088C8 89               [ 2]  133 	pushw	x
                           000029   134 	Sswspi$swspi_tx16$25 ==.
                           000029   135 	Sswspi$swspi_tx16$26 ==.
                                    136 ;	./src/swspi.c: 20: uint16_t maska=0b1<<15; 
                                    137 ; genAssign
      0088C9 AE 80 00         [ 2]  138 	ldw	x, #0x8000
      0088CC 1F 01            [ 2]  139 	ldw	(0x01, sp), x
                           00002E   140 	Sswspi$swspi_tx16$27 ==.
                                    141 ;	./src/swspi.c: 21: CS_L;										
                                    142 ; genIPush
      0088CE 4B 10            [ 1]  143 	push	#0x10
                           000030   144 	Sswspi$swspi_tx16$28 ==.
                                    145 ; genIPush
      0088D0 4B 05            [ 1]  146 	push	#0x05
                           000032   147 	Sswspi$swspi_tx16$29 ==.
      0088D2 4B 50            [ 1]  148 	push	#0x50
                           000034   149 	Sswspi$swspi_tx16$30 ==.
                                    150 ; genCall
      0088D4 CD 8A 69         [ 4]  151 	call	_GPIO_WriteLow
      0088D7 5B 03            [ 2]  152 	addw	sp, #3
                           000039   153 	Sswspi$swspi_tx16$31 ==.
                           000039   154 	Sswspi$swspi_tx16$32 ==.
                                    155 ;	./src/swspi.c: 22: while(maska){
                                    156 ; genLabel
      0088D9                        157 00104$:
                                    158 ; genIfx
      0088D9 1E 01            [ 2]  159 	ldw	x, (0x01, sp)
      0088DB 26 03            [ 1]  160 	jrne	00124$
      0088DD CC 89 26         [ 2]  161 	jp	00106$
      0088E0                        162 00124$:
                           000040   163 	Sswspi$swspi_tx16$33 ==.
                           000040   164 	Sswspi$swspi_tx16$34 ==.
                                    165 ;	./src/swspi.c: 23: if(maska & data){DIN_H;}else{DIN_L;}
                                    166 ; genAnd
      0088E0 7B 02            [ 1]  167 	ld	a, (0x02, sp)
      0088E2 14 06            [ 1]  168 	and	a, (0x06, sp)
      0088E4 97               [ 1]  169 	ld	xl, a
      0088E5 7B 01            [ 1]  170 	ld	a, (0x01, sp)
      0088E7 14 05            [ 1]  171 	and	a, (0x05, sp)
      0088E9 95               [ 1]  172 	ld	xh, a
                                    173 ; genIfx
      0088EA 5D               [ 2]  174 	tnzw	x
      0088EB 26 03            [ 1]  175 	jrne	00125$
      0088ED CC 88 FE         [ 2]  176 	jp	00102$
      0088F0                        177 00125$:
                           000050   178 	Sswspi$swspi_tx16$35 ==.
                                    179 ; genIPush
      0088F0 4B 20            [ 1]  180 	push	#0x20
                           000052   181 	Sswspi$swspi_tx16$36 ==.
                                    182 ; genIPush
      0088F2 4B 05            [ 1]  183 	push	#0x05
                           000054   184 	Sswspi$swspi_tx16$37 ==.
      0088F4 4B 50            [ 1]  185 	push	#0x50
                           000056   186 	Sswspi$swspi_tx16$38 ==.
                                    187 ; genCall
      0088F6 CD 8A 62         [ 4]  188 	call	_GPIO_WriteHigh
      0088F9 5B 03            [ 2]  189 	addw	sp, #3
                           00005B   190 	Sswspi$swspi_tx16$39 ==.
                           00005B   191 	Sswspi$swspi_tx16$40 ==.
                                    192 ; genGoto
      0088FB CC 89 09         [ 2]  193 	jp	00103$
                                    194 ; genLabel
      0088FE                        195 00102$:
                           00005E   196 	Sswspi$swspi_tx16$41 ==.
                                    197 ; genIPush
      0088FE 4B 20            [ 1]  198 	push	#0x20
                           000060   199 	Sswspi$swspi_tx16$42 ==.
                                    200 ; genIPush
      008900 4B 05            [ 1]  201 	push	#0x05
                           000062   202 	Sswspi$swspi_tx16$43 ==.
      008902 4B 50            [ 1]  203 	push	#0x50
                           000064   204 	Sswspi$swspi_tx16$44 ==.
                                    205 ; genCall
      008904 CD 8A 69         [ 4]  206 	call	_GPIO_WriteLow
      008907 5B 03            [ 2]  207 	addw	sp, #3
                           000069   208 	Sswspi$swspi_tx16$45 ==.
                           000069   209 	Sswspi$swspi_tx16$46 ==.
                                    210 ; genLabel
      008909                        211 00103$:
                           000069   212 	Sswspi$swspi_tx16$47 ==.
                                    213 ;	./src/swspi.c: 24: CLK_H;
                                    214 ; genIPush
      008909 4B 08            [ 1]  215 	push	#0x08
                           00006B   216 	Sswspi$swspi_tx16$48 ==.
                                    217 ; genIPush
      00890B 4B 05            [ 1]  218 	push	#0x05
                           00006D   219 	Sswspi$swspi_tx16$49 ==.
      00890D 4B 50            [ 1]  220 	push	#0x50
                           00006F   221 	Sswspi$swspi_tx16$50 ==.
                                    222 ; genCall
      00890F CD 8A 62         [ 4]  223 	call	_GPIO_WriteHigh
      008912 5B 03            [ 2]  224 	addw	sp, #3
                           000074   225 	Sswspi$swspi_tx16$51 ==.
                           000074   226 	Sswspi$swspi_tx16$52 ==.
                                    227 ;	./src/swspi.c: 25: maska = maska >> 1;
                                    228 ; genRightShiftLiteral
      008914 04 01            [ 1]  229 	srl	(0x01, sp)
      008916 06 02            [ 1]  230 	rrc	(0x02, sp)
                           000078   231 	Sswspi$swspi_tx16$53 ==.
                                    232 ;	./src/swspi.c: 26: CLK_L;
                                    233 ; genIPush
      008918 4B 08            [ 1]  234 	push	#0x08
                           00007A   235 	Sswspi$swspi_tx16$54 ==.
                                    236 ; genIPush
      00891A 4B 05            [ 1]  237 	push	#0x05
                           00007C   238 	Sswspi$swspi_tx16$55 ==.
      00891C 4B 50            [ 1]  239 	push	#0x50
                           00007E   240 	Sswspi$swspi_tx16$56 ==.
                                    241 ; genCall
      00891E CD 8A 69         [ 4]  242 	call	_GPIO_WriteLow
      008921 5B 03            [ 2]  243 	addw	sp, #3
                           000083   244 	Sswspi$swspi_tx16$57 ==.
                           000083   245 	Sswspi$swspi_tx16$58 ==.
                                    246 ; genGoto
      008923 CC 88 D9         [ 2]  247 	jp	00104$
                                    248 ; genLabel
      008926                        249 00106$:
                           000086   250 	Sswspi$swspi_tx16$59 ==.
                                    251 ;	./src/swspi.c: 28: CS_H;
                                    252 ; genIPush
      008926 4B 10            [ 1]  253 	push	#0x10
                           000088   254 	Sswspi$swspi_tx16$60 ==.
                                    255 ; genIPush
      008928 4B 05            [ 1]  256 	push	#0x05
                           00008A   257 	Sswspi$swspi_tx16$61 ==.
      00892A 4B 50            [ 1]  258 	push	#0x50
                           00008C   259 	Sswspi$swspi_tx16$62 ==.
                                    260 ; genCall
      00892C CD 8A 62         [ 4]  261 	call	_GPIO_WriteHigh
      00892F 5B 03            [ 2]  262 	addw	sp, #3
                           000091   263 	Sswspi$swspi_tx16$63 ==.
                                    264 ; genLabel
      008931                        265 00107$:
                           000091   266 	Sswspi$swspi_tx16$64 ==.
                                    267 ;	./src/swspi.c: 29: }
                                    268 ; genEndFunction
      008931 85               [ 2]  269 	popw	x
                           000092   270 	Sswspi$swspi_tx16$65 ==.
                           000092   271 	Sswspi$swspi_tx16$66 ==.
                           000092   272 	XG$swspi_tx16$0$0 ==.
      008932 81               [ 4]  273 	ret
                           000093   274 	Sswspi$swspi_tx16$67 ==.
                                    275 	.area CODE
                                    276 	.area CONST
                                    277 	.area INITIALIZER
                                    278 	.area CABS (ABS)
                                    279 
                                    280 	.area .debug_line (NOLOAD)
      000CCD 00 00 00 E2            281 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000CD1                        282 Ldebug_line_start:
      000CD1 00 02                  283 	.dw	2
      000CD3 00 00 00 6E            284 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000CD7 01                     285 	.db	1
      000CD8 01                     286 	.db	1
      000CD9 FB                     287 	.db	-5
      000CDA 0F                     288 	.db	15
      000CDB 0A                     289 	.db	10
      000CDC 00                     290 	.db	0
      000CDD 01                     291 	.db	1
      000CDE 01                     292 	.db	1
      000CDF 01                     293 	.db	1
      000CE0 01                     294 	.db	1
      000CE1 00                     295 	.db	0
      000CE2 00                     296 	.db	0
      000CE3 00                     297 	.db	0
      000CE4 01                     298 	.db	1
      000CE5 43 3A 5C 50 72 6F 67   299 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000D0D 00                     300 	.db	0
      000D0E 43 3A 5C 50 72 6F 67   301 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000D31 00                     302 	.db	0
      000D32 00                     303 	.db	0
      000D33 2E 2F 73 72 63 2F 73   304 	.ascii "./src/swspi.c"
             77 73 70 69 2E 63
      000D40 00                     305 	.db	0
      000D41 00                     306 	.uleb128	0
      000D42 00                     307 	.uleb128	0
      000D43 00                     308 	.uleb128	0
      000D44 00                     309 	.db	0
      000D45                        310 Ldebug_line_stmt:
      000D45 00                     311 	.db	0
      000D46 05                     312 	.uleb128	5
      000D47 02                     313 	.db	2
      000D48 00 00 88 A0            314 	.dw	0,(Sswspi$swspi_init$0)
      000D4C 03                     315 	.db	3
      000D4D 0B                     316 	.sleb128	11
      000D4E 01                     317 	.db	1
      000D4F 09                     318 	.db	9
      000D50 00 00                  319 	.dw	Sswspi$swspi_init$2-Sswspi$swspi_init$0
      000D52 03                     320 	.db	3
      000D53 01                     321 	.sleb128	1
      000D54 01                     322 	.db	1
      000D55 09                     323 	.db	9
      000D56 00 0D                  324 	.dw	Sswspi$swspi_init$8-Sswspi$swspi_init$2
      000D58 03                     325 	.db	3
      000D59 01                     326 	.sleb128	1
      000D5A 01                     327 	.db	1
      000D5B 09                     328 	.db	9
      000D5C 00 0D                  329 	.dw	Sswspi$swspi_init$14-Sswspi$swspi_init$8
      000D5E 03                     330 	.db	3
      000D5F 01                     331 	.sleb128	1
      000D60 01                     332 	.db	1
      000D61 09                     333 	.db	9
      000D62 00 0D                  334 	.dw	Sswspi$swspi_init$20-Sswspi$swspi_init$14
      000D64 03                     335 	.db	3
      000D65 01                     336 	.sleb128	1
      000D66 01                     337 	.db	1
      000D67 09                     338 	.db	9
      000D68 00 01                  339 	.dw	1+Sswspi$swspi_init$21-Sswspi$swspi_init$20
      000D6A 00                     340 	.db	0
      000D6B 01                     341 	.uleb128	1
      000D6C 01                     342 	.db	1
      000D6D 00                     343 	.db	0
      000D6E 05                     344 	.uleb128	5
      000D6F 02                     345 	.db	2
      000D70 00 00 88 C8            346 	.dw	0,(Sswspi$swspi_tx16$23)
      000D74 03                     347 	.db	3
      000D75 12                     348 	.sleb128	18
      000D76 01                     349 	.db	1
      000D77 09                     350 	.db	9
      000D78 00 01                  351 	.dw	Sswspi$swspi_tx16$26-Sswspi$swspi_tx16$23
      000D7A 03                     352 	.db	3
      000D7B 01                     353 	.sleb128	1
      000D7C 01                     354 	.db	1
      000D7D 09                     355 	.db	9
      000D7E 00 05                  356 	.dw	Sswspi$swspi_tx16$27-Sswspi$swspi_tx16$26
      000D80 03                     357 	.db	3
      000D81 01                     358 	.sleb128	1
      000D82 01                     359 	.db	1
      000D83 09                     360 	.db	9
      000D84 00 0B                  361 	.dw	Sswspi$swspi_tx16$32-Sswspi$swspi_tx16$27
      000D86 03                     362 	.db	3
      000D87 01                     363 	.sleb128	1
      000D88 01                     364 	.db	1
      000D89 09                     365 	.db	9
      000D8A 00 07                  366 	.dw	Sswspi$swspi_tx16$34-Sswspi$swspi_tx16$32
      000D8C 03                     367 	.db	3
      000D8D 01                     368 	.sleb128	1
      000D8E 01                     369 	.db	1
      000D8F 09                     370 	.db	9
      000D90 00 29                  371 	.dw	Sswspi$swspi_tx16$47-Sswspi$swspi_tx16$34
      000D92 03                     372 	.db	3
      000D93 01                     373 	.sleb128	1
      000D94 01                     374 	.db	1
      000D95 09                     375 	.db	9
      000D96 00 0B                  376 	.dw	Sswspi$swspi_tx16$52-Sswspi$swspi_tx16$47
      000D98 03                     377 	.db	3
      000D99 01                     378 	.sleb128	1
      000D9A 01                     379 	.db	1
      000D9B 09                     380 	.db	9
      000D9C 00 04                  381 	.dw	Sswspi$swspi_tx16$53-Sswspi$swspi_tx16$52
      000D9E 03                     382 	.db	3
      000D9F 01                     383 	.sleb128	1
      000DA0 01                     384 	.db	1
      000DA1 09                     385 	.db	9
      000DA2 00 0E                  386 	.dw	Sswspi$swspi_tx16$59-Sswspi$swspi_tx16$53
      000DA4 03                     387 	.db	3
      000DA5 02                     388 	.sleb128	2
      000DA6 01                     389 	.db	1
      000DA7 09                     390 	.db	9
      000DA8 00 0B                  391 	.dw	Sswspi$swspi_tx16$64-Sswspi$swspi_tx16$59
      000DAA 03                     392 	.db	3
      000DAB 01                     393 	.sleb128	1
      000DAC 01                     394 	.db	1
      000DAD 09                     395 	.db	9
      000DAE 00 02                  396 	.dw	1+Sswspi$swspi_tx16$66-Sswspi$swspi_tx16$64
      000DB0 00                     397 	.db	0
      000DB1 01                     398 	.uleb128	1
      000DB2 01                     399 	.db	1
      000DB3                        400 Ldebug_line_end:
                                    401 
                                    402 	.area .debug_loc (NOLOAD)
      001690                        403 Ldebug_loc_start:
      001690 00 00 89 32            404 	.dw	0,(Sswspi$swspi_tx16$65)
      001694 00 00 89 33            405 	.dw	0,(Sswspi$swspi_tx16$67)
      001698 00 02                  406 	.dw	2
      00169A 78                     407 	.db	120
      00169B 01                     408 	.sleb128	1
      00169C 00 00 89 31            409 	.dw	0,(Sswspi$swspi_tx16$63)
      0016A0 00 00 89 32            410 	.dw	0,(Sswspi$swspi_tx16$65)
      0016A4 00 02                  411 	.dw	2
      0016A6 78                     412 	.db	120
      0016A7 03                     413 	.sleb128	3
      0016A8 00 00 89 2C            414 	.dw	0,(Sswspi$swspi_tx16$62)
      0016AC 00 00 89 31            415 	.dw	0,(Sswspi$swspi_tx16$63)
      0016B0 00 02                  416 	.dw	2
      0016B2 78                     417 	.db	120
      0016B3 06                     418 	.sleb128	6
      0016B4 00 00 89 2A            419 	.dw	0,(Sswspi$swspi_tx16$61)
      0016B8 00 00 89 2C            420 	.dw	0,(Sswspi$swspi_tx16$62)
      0016BC 00 02                  421 	.dw	2
      0016BE 78                     422 	.db	120
      0016BF 05                     423 	.sleb128	5
      0016C0 00 00 89 28            424 	.dw	0,(Sswspi$swspi_tx16$60)
      0016C4 00 00 89 2A            425 	.dw	0,(Sswspi$swspi_tx16$61)
      0016C8 00 02                  426 	.dw	2
      0016CA 78                     427 	.db	120
      0016CB 04                     428 	.sleb128	4
      0016CC 00 00 89 23            429 	.dw	0,(Sswspi$swspi_tx16$57)
      0016D0 00 00 89 28            430 	.dw	0,(Sswspi$swspi_tx16$60)
      0016D4 00 02                  431 	.dw	2
      0016D6 78                     432 	.db	120
      0016D7 03                     433 	.sleb128	3
      0016D8 00 00 89 1E            434 	.dw	0,(Sswspi$swspi_tx16$56)
      0016DC 00 00 89 23            435 	.dw	0,(Sswspi$swspi_tx16$57)
      0016E0 00 02                  436 	.dw	2
      0016E2 78                     437 	.db	120
      0016E3 06                     438 	.sleb128	6
      0016E4 00 00 89 1C            439 	.dw	0,(Sswspi$swspi_tx16$55)
      0016E8 00 00 89 1E            440 	.dw	0,(Sswspi$swspi_tx16$56)
      0016EC 00 02                  441 	.dw	2
      0016EE 78                     442 	.db	120
      0016EF 05                     443 	.sleb128	5
      0016F0 00 00 89 1A            444 	.dw	0,(Sswspi$swspi_tx16$54)
      0016F4 00 00 89 1C            445 	.dw	0,(Sswspi$swspi_tx16$55)
      0016F8 00 02                  446 	.dw	2
      0016FA 78                     447 	.db	120
      0016FB 04                     448 	.sleb128	4
      0016FC 00 00 89 14            449 	.dw	0,(Sswspi$swspi_tx16$51)
      001700 00 00 89 1A            450 	.dw	0,(Sswspi$swspi_tx16$54)
      001704 00 02                  451 	.dw	2
      001706 78                     452 	.db	120
      001707 03                     453 	.sleb128	3
      001708 00 00 89 0F            454 	.dw	0,(Sswspi$swspi_tx16$50)
      00170C 00 00 89 14            455 	.dw	0,(Sswspi$swspi_tx16$51)
      001710 00 02                  456 	.dw	2
      001712 78                     457 	.db	120
      001713 06                     458 	.sleb128	6
      001714 00 00 89 0D            459 	.dw	0,(Sswspi$swspi_tx16$49)
      001718 00 00 89 0F            460 	.dw	0,(Sswspi$swspi_tx16$50)
      00171C 00 02                  461 	.dw	2
      00171E 78                     462 	.db	120
      00171F 05                     463 	.sleb128	5
      001720 00 00 89 0B            464 	.dw	0,(Sswspi$swspi_tx16$48)
      001724 00 00 89 0D            465 	.dw	0,(Sswspi$swspi_tx16$49)
      001728 00 02                  466 	.dw	2
      00172A 78                     467 	.db	120
      00172B 04                     468 	.sleb128	4
      00172C 00 00 89 09            469 	.dw	0,(Sswspi$swspi_tx16$45)
      001730 00 00 89 0B            470 	.dw	0,(Sswspi$swspi_tx16$48)
      001734 00 02                  471 	.dw	2
      001736 78                     472 	.db	120
      001737 03                     473 	.sleb128	3
      001738 00 00 89 04            474 	.dw	0,(Sswspi$swspi_tx16$44)
      00173C 00 00 89 09            475 	.dw	0,(Sswspi$swspi_tx16$45)
      001740 00 02                  476 	.dw	2
      001742 78                     477 	.db	120
      001743 06                     478 	.sleb128	6
      001744 00 00 89 02            479 	.dw	0,(Sswspi$swspi_tx16$43)
      001748 00 00 89 04            480 	.dw	0,(Sswspi$swspi_tx16$44)
      00174C 00 02                  481 	.dw	2
      00174E 78                     482 	.db	120
      00174F 05                     483 	.sleb128	5
      001750 00 00 89 00            484 	.dw	0,(Sswspi$swspi_tx16$42)
      001754 00 00 89 02            485 	.dw	0,(Sswspi$swspi_tx16$43)
      001758 00 02                  486 	.dw	2
      00175A 78                     487 	.db	120
      00175B 04                     488 	.sleb128	4
      00175C 00 00 88 FB            489 	.dw	0,(Sswspi$swspi_tx16$39)
      001760 00 00 89 00            490 	.dw	0,(Sswspi$swspi_tx16$42)
      001764 00 02                  491 	.dw	2
      001766 78                     492 	.db	120
      001767 03                     493 	.sleb128	3
      001768 00 00 88 F6            494 	.dw	0,(Sswspi$swspi_tx16$38)
      00176C 00 00 88 FB            495 	.dw	0,(Sswspi$swspi_tx16$39)
      001770 00 02                  496 	.dw	2
      001772 78                     497 	.db	120
      001773 06                     498 	.sleb128	6
      001774 00 00 88 F4            499 	.dw	0,(Sswspi$swspi_tx16$37)
      001778 00 00 88 F6            500 	.dw	0,(Sswspi$swspi_tx16$38)
      00177C 00 02                  501 	.dw	2
      00177E 78                     502 	.db	120
      00177F 05                     503 	.sleb128	5
      001780 00 00 88 F2            504 	.dw	0,(Sswspi$swspi_tx16$36)
      001784 00 00 88 F4            505 	.dw	0,(Sswspi$swspi_tx16$37)
      001788 00 02                  506 	.dw	2
      00178A 78                     507 	.db	120
      00178B 04                     508 	.sleb128	4
      00178C 00 00 88 D9            509 	.dw	0,(Sswspi$swspi_tx16$31)
      001790 00 00 88 F2            510 	.dw	0,(Sswspi$swspi_tx16$36)
      001794 00 02                  511 	.dw	2
      001796 78                     512 	.db	120
      001797 03                     513 	.sleb128	3
      001798 00 00 88 D4            514 	.dw	0,(Sswspi$swspi_tx16$30)
      00179C 00 00 88 D9            515 	.dw	0,(Sswspi$swspi_tx16$31)
      0017A0 00 02                  516 	.dw	2
      0017A2 78                     517 	.db	120
      0017A3 06                     518 	.sleb128	6
      0017A4 00 00 88 D2            519 	.dw	0,(Sswspi$swspi_tx16$29)
      0017A8 00 00 88 D4            520 	.dw	0,(Sswspi$swspi_tx16$30)
      0017AC 00 02                  521 	.dw	2
      0017AE 78                     522 	.db	120
      0017AF 05                     523 	.sleb128	5
      0017B0 00 00 88 D0            524 	.dw	0,(Sswspi$swspi_tx16$28)
      0017B4 00 00 88 D2            525 	.dw	0,(Sswspi$swspi_tx16$29)
      0017B8 00 02                  526 	.dw	2
      0017BA 78                     527 	.db	120
      0017BB 04                     528 	.sleb128	4
      0017BC 00 00 88 C9            529 	.dw	0,(Sswspi$swspi_tx16$25)
      0017C0 00 00 88 D0            530 	.dw	0,(Sswspi$swspi_tx16$28)
      0017C4 00 02                  531 	.dw	2
      0017C6 78                     532 	.db	120
      0017C7 03                     533 	.sleb128	3
      0017C8 00 00 88 C8            534 	.dw	0,(Sswspi$swspi_tx16$24)
      0017CC 00 00 88 C9            535 	.dw	0,(Sswspi$swspi_tx16$25)
      0017D0 00 02                  536 	.dw	2
      0017D2 78                     537 	.db	120
      0017D3 01                     538 	.sleb128	1
      0017D4 00 00 00 00            539 	.dw	0,0
      0017D8 00 00 00 00            540 	.dw	0,0
      0017DC 00 00 88 C7            541 	.dw	0,(Sswspi$swspi_init$19)
      0017E0 00 00 88 C8            542 	.dw	0,(Sswspi$swspi_init$22)
      0017E4 00 02                  543 	.dw	2
      0017E6 78                     544 	.db	120
      0017E7 01                     545 	.sleb128	1
      0017E8 00 00 88 C2            546 	.dw	0,(Sswspi$swspi_init$18)
      0017EC 00 00 88 C7            547 	.dw	0,(Sswspi$swspi_init$19)
      0017F0 00 02                  548 	.dw	2
      0017F2 78                     549 	.db	120
      0017F3 05                     550 	.sleb128	5
      0017F4 00 00 88 C0            551 	.dw	0,(Sswspi$swspi_init$17)
      0017F8 00 00 88 C2            552 	.dw	0,(Sswspi$swspi_init$18)
      0017FC 00 02                  553 	.dw	2
      0017FE 78                     554 	.db	120
      0017FF 04                     555 	.sleb128	4
      001800 00 00 88 BE            556 	.dw	0,(Sswspi$swspi_init$16)
      001804 00 00 88 C0            557 	.dw	0,(Sswspi$swspi_init$17)
      001808 00 02                  558 	.dw	2
      00180A 78                     559 	.db	120
      00180B 03                     560 	.sleb128	3
      00180C 00 00 88 BC            561 	.dw	0,(Sswspi$swspi_init$15)
      001810 00 00 88 BE            562 	.dw	0,(Sswspi$swspi_init$16)
      001814 00 02                  563 	.dw	2
      001816 78                     564 	.db	120
      001817 02                     565 	.sleb128	2
      001818 00 00 88 BA            566 	.dw	0,(Sswspi$swspi_init$13)
      00181C 00 00 88 BC            567 	.dw	0,(Sswspi$swspi_init$15)
      001820 00 02                  568 	.dw	2
      001822 78                     569 	.db	120
      001823 01                     570 	.sleb128	1
      001824 00 00 88 B5            571 	.dw	0,(Sswspi$swspi_init$12)
      001828 00 00 88 BA            572 	.dw	0,(Sswspi$swspi_init$13)
      00182C 00 02                  573 	.dw	2
      00182E 78                     574 	.db	120
      00182F 05                     575 	.sleb128	5
      001830 00 00 88 B3            576 	.dw	0,(Sswspi$swspi_init$11)
      001834 00 00 88 B5            577 	.dw	0,(Sswspi$swspi_init$12)
      001838 00 02                  578 	.dw	2
      00183A 78                     579 	.db	120
      00183B 04                     580 	.sleb128	4
      00183C 00 00 88 B1            581 	.dw	0,(Sswspi$swspi_init$10)
      001840 00 00 88 B3            582 	.dw	0,(Sswspi$swspi_init$11)
      001844 00 02                  583 	.dw	2
      001846 78                     584 	.db	120
      001847 03                     585 	.sleb128	3
      001848 00 00 88 AF            586 	.dw	0,(Sswspi$swspi_init$9)
      00184C 00 00 88 B1            587 	.dw	0,(Sswspi$swspi_init$10)
      001850 00 02                  588 	.dw	2
      001852 78                     589 	.db	120
      001853 02                     590 	.sleb128	2
      001854 00 00 88 AD            591 	.dw	0,(Sswspi$swspi_init$7)
      001858 00 00 88 AF            592 	.dw	0,(Sswspi$swspi_init$9)
      00185C 00 02                  593 	.dw	2
      00185E 78                     594 	.db	120
      00185F 01                     595 	.sleb128	1
      001860 00 00 88 A8            596 	.dw	0,(Sswspi$swspi_init$6)
      001864 00 00 88 AD            597 	.dw	0,(Sswspi$swspi_init$7)
      001868 00 02                  598 	.dw	2
      00186A 78                     599 	.db	120
      00186B 05                     600 	.sleb128	5
      00186C 00 00 88 A6            601 	.dw	0,(Sswspi$swspi_init$5)
      001870 00 00 88 A8            602 	.dw	0,(Sswspi$swspi_init$6)
      001874 00 02                  603 	.dw	2
      001876 78                     604 	.db	120
      001877 04                     605 	.sleb128	4
      001878 00 00 88 A4            606 	.dw	0,(Sswspi$swspi_init$4)
      00187C 00 00 88 A6            607 	.dw	0,(Sswspi$swspi_init$5)
      001880 00 02                  608 	.dw	2
      001882 78                     609 	.db	120
      001883 03                     610 	.sleb128	3
      001884 00 00 88 A2            611 	.dw	0,(Sswspi$swspi_init$3)
      001888 00 00 88 A4            612 	.dw	0,(Sswspi$swspi_init$4)
      00188C 00 02                  613 	.dw	2
      00188E 78                     614 	.db	120
      00188F 02                     615 	.sleb128	2
      001890 00 00 88 A0            616 	.dw	0,(Sswspi$swspi_init$1)
      001894 00 00 88 A2            617 	.dw	0,(Sswspi$swspi_init$3)
      001898 00 02                  618 	.dw	2
      00189A 78                     619 	.db	120
      00189B 01                     620 	.sleb128	1
      00189C 00 00 00 00            621 	.dw	0,0
      0018A0 00 00 00 00            622 	.dw	0,0
                                    623 
                                    624 	.area .debug_abbrev (NOLOAD)
      000284                        625 Ldebug_abbrev:
      000284 04                     626 	.uleb128	4
      000285 05                     627 	.uleb128	5
      000286 00                     628 	.db	0
      000287 02                     629 	.uleb128	2
      000288 0A                     630 	.uleb128	10
      000289 03                     631 	.uleb128	3
      00028A 08                     632 	.uleb128	8
      00028B 49                     633 	.uleb128	73
      00028C 13                     634 	.uleb128	19
      00028D 00                     635 	.uleb128	0
      00028E 00                     636 	.uleb128	0
      00028F 03                     637 	.uleb128	3
      000290 2E                     638 	.uleb128	46
      000291 01                     639 	.db	1
      000292 01                     640 	.uleb128	1
      000293 13                     641 	.uleb128	19
      000294 03                     642 	.uleb128	3
      000295 08                     643 	.uleb128	8
      000296 11                     644 	.uleb128	17
      000297 01                     645 	.uleb128	1
      000298 12                     646 	.uleb128	18
      000299 01                     647 	.uleb128	1
      00029A 3F                     648 	.uleb128	63
      00029B 0C                     649 	.uleb128	12
      00029C 40                     650 	.uleb128	64
      00029D 06                     651 	.uleb128	6
      00029E 00                     652 	.uleb128	0
      00029F 00                     653 	.uleb128	0
      0002A0 07                     654 	.uleb128	7
      0002A1 34                     655 	.uleb128	52
      0002A2 00                     656 	.db	0
      0002A3 02                     657 	.uleb128	2
      0002A4 0A                     658 	.uleb128	10
      0002A5 03                     659 	.uleb128	3
      0002A6 08                     660 	.uleb128	8
      0002A7 49                     661 	.uleb128	73
      0002A8 13                     662 	.uleb128	19
      0002A9 00                     663 	.uleb128	0
      0002AA 00                     664 	.uleb128	0
      0002AB 01                     665 	.uleb128	1
      0002AC 11                     666 	.uleb128	17
      0002AD 01                     667 	.db	1
      0002AE 03                     668 	.uleb128	3
      0002AF 08                     669 	.uleb128	8
      0002B0 10                     670 	.uleb128	16
      0002B1 06                     671 	.uleb128	6
      0002B2 13                     672 	.uleb128	19
      0002B3 0B                     673 	.uleb128	11
      0002B4 25                     674 	.uleb128	37
      0002B5 08                     675 	.uleb128	8
      0002B6 00                     676 	.uleb128	0
      0002B7 00                     677 	.uleb128	0
      0002B8 06                     678 	.uleb128	6
      0002B9 0B                     679 	.uleb128	11
      0002BA 00                     680 	.db	0
      0002BB 11                     681 	.uleb128	17
      0002BC 01                     682 	.uleb128	1
      0002BD 12                     683 	.uleb128	18
      0002BE 01                     684 	.uleb128	1
      0002BF 00                     685 	.uleb128	0
      0002C0 00                     686 	.uleb128	0
      0002C1 02                     687 	.uleb128	2
      0002C2 2E                     688 	.uleb128	46
      0002C3 00                     689 	.db	0
      0002C4 03                     690 	.uleb128	3
      0002C5 08                     691 	.uleb128	8
      0002C6 11                     692 	.uleb128	17
      0002C7 01                     693 	.uleb128	1
      0002C8 12                     694 	.uleb128	18
      0002C9 01                     695 	.uleb128	1
      0002CA 3F                     696 	.uleb128	63
      0002CB 0C                     697 	.uleb128	12
      0002CC 40                     698 	.uleb128	64
      0002CD 06                     699 	.uleb128	6
      0002CE 00                     700 	.uleb128	0
      0002CF 00                     701 	.uleb128	0
      0002D0 05                     702 	.uleb128	5
      0002D1 0B                     703 	.uleb128	11
      0002D2 01                     704 	.db	1
      0002D3 01                     705 	.uleb128	1
      0002D4 13                     706 	.uleb128	19
      0002D5 11                     707 	.uleb128	17
      0002D6 01                     708 	.uleb128	1
      0002D7 12                     709 	.uleb128	18
      0002D8 01                     710 	.uleb128	1
      0002D9 00                     711 	.uleb128	0
      0002DA 00                     712 	.uleb128	0
      0002DB 08                     713 	.uleb128	8
      0002DC 24                     714 	.uleb128	36
      0002DD 00                     715 	.db	0
      0002DE 03                     716 	.uleb128	3
      0002DF 08                     717 	.uleb128	8
      0002E0 0B                     718 	.uleb128	11
      0002E1 0B                     719 	.uleb128	11
      0002E2 3E                     720 	.uleb128	62
      0002E3 0B                     721 	.uleb128	11
      0002E4 00                     722 	.uleb128	0
      0002E5 00                     723 	.uleb128	0
      0002E6 00                     724 	.uleb128	0
                                    725 
                                    726 	.area .debug_info (NOLOAD)
      0014AF 00 00 00 BA            727 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0014B3                        728 Ldebug_info_start:
      0014B3 00 02                  729 	.dw	2
      0014B5 00 00 02 84            730 	.dw	0,(Ldebug_abbrev)
      0014B9 04                     731 	.db	4
      0014BA 01                     732 	.uleb128	1
      0014BB 2E 2F 73 72 63 2F 73   733 	.ascii "./src/swspi.c"
             77 73 70 69 2E 63
      0014C8 00                     734 	.db	0
      0014C9 00 00 0C CD            735 	.dw	0,(Ldebug_line_start+-4)
      0014CD 01                     736 	.db	1
      0014CE 53 44 43 43 20 76 65   737 	.ascii "SDCC version 4.1.0 #12072"
             72 73 69 6F 6E 20 34
             2E 31 2E 30 20 23 31
             32 30 37 32
      0014E7 00                     738 	.db	0
      0014E8 02                     739 	.uleb128	2
      0014E9 73 77 73 70 69 5F 69   740 	.ascii "swspi_init"
             6E 69 74
      0014F3 00                     741 	.db	0
      0014F4 00 00 88 A0            742 	.dw	0,(_swspi_init)
      0014F8 00 00 88 C8            743 	.dw	0,(XG$swspi_init$0$0+1)
      0014FC 01                     744 	.db	1
      0014FD 00 00 17 DC            745 	.dw	0,(Ldebug_loc_start+332)
      001501 03                     746 	.uleb128	3
      001502 00 00 00 AB            747 	.dw	0,171
      001506 73 77 73 70 69 5F 74   748 	.ascii "swspi_tx16"
             78 31 36
      001510 00                     749 	.db	0
      001511 00 00 88 C8            750 	.dw	0,(_swspi_tx16)
      001515 00 00 89 33            751 	.dw	0,(XG$swspi_tx16$0$0+1)
      001519 01                     752 	.db	1
      00151A 00 00 16 90            753 	.dw	0,(Ldebug_loc_start)
      00151E 04                     754 	.uleb128	4
      00151F 02                     755 	.db	2
      001520 91                     756 	.db	145
      001521 02                     757 	.sleb128	2
      001522 64 61 74 61            758 	.ascii "data"
      001526 00                     759 	.db	0
      001527 00 00 00 AB            760 	.dw	0,171
      00152B 05                     761 	.uleb128	5
      00152C 00 00 00 9C            762 	.dw	0,156
      001530 00 00 88 E0            763 	.dw	0,(Sswspi$swspi_tx16$33)
      001534 00 00 89 23            764 	.dw	0,(Sswspi$swspi_tx16$58)
      001538 06                     765 	.uleb128	6
      001539 00 00 88 F0            766 	.dw	0,(Sswspi$swspi_tx16$35)
      00153D 00 00 88 FB            767 	.dw	0,(Sswspi$swspi_tx16$40)
      001541 06                     768 	.uleb128	6
      001542 00 00 88 FE            769 	.dw	0,(Sswspi$swspi_tx16$41)
      001546 00 00 89 09            770 	.dw	0,(Sswspi$swspi_tx16$46)
      00154A 00                     771 	.uleb128	0
      00154B 07                     772 	.uleb128	7
      00154C 02                     773 	.db	2
      00154D 91                     774 	.db	145
      00154E 7E                     775 	.sleb128	-2
      00154F 6D 61 73 6B 61         776 	.ascii "maska"
      001554 00                     777 	.db	0
      001555 00 00 00 AB            778 	.dw	0,171
      001559 00                     779 	.uleb128	0
      00155A 08                     780 	.uleb128	8
      00155B 75 6E 73 69 67 6E 65   781 	.ascii "unsigned int"
             64 20 69 6E 74
      001567 00                     782 	.db	0
      001568 02                     783 	.db	2
      001569 07                     784 	.db	7
      00156A 00                     785 	.uleb128	0
      00156B 00                     786 	.uleb128	0
      00156C 00                     787 	.uleb128	0
      00156D                        788 Ldebug_info_end:
                                    789 
                                    790 	.area .debug_pubnames (NOLOAD)
      0004A3 00 00 00 2C            791 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0004A7                        792 Ldebug_pubnames_start:
      0004A7 00 02                  793 	.dw	2
      0004A9 00 00 14 AF            794 	.dw	0,(Ldebug_info_start-4)
      0004AD 00 00 00 BE            795 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0004B1 00 00 00 39            796 	.dw	0,57
      0004B5 73 77 73 70 69 5F 69   797 	.ascii "swspi_init"
             6E 69 74
      0004BF 00                     798 	.db	0
      0004C0 00 00 00 52            799 	.dw	0,82
      0004C4 73 77 73 70 69 5F 74   800 	.ascii "swspi_tx16"
             78 31 36
      0004CE 00                     801 	.db	0
      0004CF 00 00 00 00            802 	.dw	0,0
      0004D3                        803 Ldebug_pubnames_end:
                                    804 
                                    805 	.area .debug_frame (NOLOAD)
      0013EC 00 00                  806 	.dw	0
      0013EE 00 0E                  807 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0013F0                        808 Ldebug_CIE0_start:
      0013F0 FF FF                  809 	.dw	0xffff
      0013F2 FF FF                  810 	.dw	0xffff
      0013F4 01                     811 	.db	1
      0013F5 00                     812 	.db	0
      0013F6 01                     813 	.uleb128	1
      0013F7 7F                     814 	.sleb128	-1
      0013F8 09                     815 	.db	9
      0013F9 0C                     816 	.db	12
      0013FA 08                     817 	.uleb128	8
      0013FB 02                     818 	.uleb128	2
      0013FC 89                     819 	.db	137
      0013FD 01                     820 	.uleb128	1
      0013FE                        821 Ldebug_CIE0_end:
      0013FE 00 00 00 C9            822 	.dw	0,201
      001402 00 00 13 EC            823 	.dw	0,(Ldebug_CIE0_start-4)
      001406 00 00 88 C8            824 	.dw	0,(Sswspi$swspi_tx16$24)	;initial loc
      00140A 00 00 00 6B            825 	.dw	0,Sswspi$swspi_tx16$67-Sswspi$swspi_tx16$24
      00140E 01                     826 	.db	1
      00140F 00 00 88 C8            827 	.dw	0,(Sswspi$swspi_tx16$24)
      001413 0E                     828 	.db	14
      001414 02                     829 	.uleb128	2
      001415 01                     830 	.db	1
      001416 00 00 88 C9            831 	.dw	0,(Sswspi$swspi_tx16$25)
      00141A 0E                     832 	.db	14
      00141B 04                     833 	.uleb128	4
      00141C 01                     834 	.db	1
      00141D 00 00 88 D0            835 	.dw	0,(Sswspi$swspi_tx16$28)
      001421 0E                     836 	.db	14
      001422 05                     837 	.uleb128	5
      001423 01                     838 	.db	1
      001424 00 00 88 D2            839 	.dw	0,(Sswspi$swspi_tx16$29)
      001428 0E                     840 	.db	14
      001429 06                     841 	.uleb128	6
      00142A 01                     842 	.db	1
      00142B 00 00 88 D4            843 	.dw	0,(Sswspi$swspi_tx16$30)
      00142F 0E                     844 	.db	14
      001430 07                     845 	.uleb128	7
      001431 01                     846 	.db	1
      001432 00 00 88 D9            847 	.dw	0,(Sswspi$swspi_tx16$31)
      001436 0E                     848 	.db	14
      001437 04                     849 	.uleb128	4
      001438 01                     850 	.db	1
      001439 00 00 88 F2            851 	.dw	0,(Sswspi$swspi_tx16$36)
      00143D 0E                     852 	.db	14
      00143E 05                     853 	.uleb128	5
      00143F 01                     854 	.db	1
      001440 00 00 88 F4            855 	.dw	0,(Sswspi$swspi_tx16$37)
      001444 0E                     856 	.db	14
      001445 06                     857 	.uleb128	6
      001446 01                     858 	.db	1
      001447 00 00 88 F6            859 	.dw	0,(Sswspi$swspi_tx16$38)
      00144B 0E                     860 	.db	14
      00144C 07                     861 	.uleb128	7
      00144D 01                     862 	.db	1
      00144E 00 00 88 FB            863 	.dw	0,(Sswspi$swspi_tx16$39)
      001452 0E                     864 	.db	14
      001453 04                     865 	.uleb128	4
      001454 01                     866 	.db	1
      001455 00 00 89 00            867 	.dw	0,(Sswspi$swspi_tx16$42)
      001459 0E                     868 	.db	14
      00145A 05                     869 	.uleb128	5
      00145B 01                     870 	.db	1
      00145C 00 00 89 02            871 	.dw	0,(Sswspi$swspi_tx16$43)
      001460 0E                     872 	.db	14
      001461 06                     873 	.uleb128	6
      001462 01                     874 	.db	1
      001463 00 00 89 04            875 	.dw	0,(Sswspi$swspi_tx16$44)
      001467 0E                     876 	.db	14
      001468 07                     877 	.uleb128	7
      001469 01                     878 	.db	1
      00146A 00 00 89 09            879 	.dw	0,(Sswspi$swspi_tx16$45)
      00146E 0E                     880 	.db	14
      00146F 04                     881 	.uleb128	4
      001470 01                     882 	.db	1
      001471 00 00 89 0B            883 	.dw	0,(Sswspi$swspi_tx16$48)
      001475 0E                     884 	.db	14
      001476 05                     885 	.uleb128	5
      001477 01                     886 	.db	1
      001478 00 00 89 0D            887 	.dw	0,(Sswspi$swspi_tx16$49)
      00147C 0E                     888 	.db	14
      00147D 06                     889 	.uleb128	6
      00147E 01                     890 	.db	1
      00147F 00 00 89 0F            891 	.dw	0,(Sswspi$swspi_tx16$50)
      001483 0E                     892 	.db	14
      001484 07                     893 	.uleb128	7
      001485 01                     894 	.db	1
      001486 00 00 89 14            895 	.dw	0,(Sswspi$swspi_tx16$51)
      00148A 0E                     896 	.db	14
      00148B 04                     897 	.uleb128	4
      00148C 01                     898 	.db	1
      00148D 00 00 89 1A            899 	.dw	0,(Sswspi$swspi_tx16$54)
      001491 0E                     900 	.db	14
      001492 05                     901 	.uleb128	5
      001493 01                     902 	.db	1
      001494 00 00 89 1C            903 	.dw	0,(Sswspi$swspi_tx16$55)
      001498 0E                     904 	.db	14
      001499 06                     905 	.uleb128	6
      00149A 01                     906 	.db	1
      00149B 00 00 89 1E            907 	.dw	0,(Sswspi$swspi_tx16$56)
      00149F 0E                     908 	.db	14
      0014A0 07                     909 	.uleb128	7
      0014A1 01                     910 	.db	1
      0014A2 00 00 89 23            911 	.dw	0,(Sswspi$swspi_tx16$57)
      0014A6 0E                     912 	.db	14
      0014A7 04                     913 	.uleb128	4
      0014A8 01                     914 	.db	1
      0014A9 00 00 89 28            915 	.dw	0,(Sswspi$swspi_tx16$60)
      0014AD 0E                     916 	.db	14
      0014AE 05                     917 	.uleb128	5
      0014AF 01                     918 	.db	1
      0014B0 00 00 89 2A            919 	.dw	0,(Sswspi$swspi_tx16$61)
      0014B4 0E                     920 	.db	14
      0014B5 06                     921 	.uleb128	6
      0014B6 01                     922 	.db	1
      0014B7 00 00 89 2C            923 	.dw	0,(Sswspi$swspi_tx16$62)
      0014BB 0E                     924 	.db	14
      0014BC 07                     925 	.uleb128	7
      0014BD 01                     926 	.db	1
      0014BE 00 00 89 31            927 	.dw	0,(Sswspi$swspi_tx16$63)
      0014C2 0E                     928 	.db	14
      0014C3 04                     929 	.uleb128	4
      0014C4 01                     930 	.db	1
      0014C5 00 00 89 32            931 	.dw	0,(Sswspi$swspi_tx16$65)
      0014C9 0E                     932 	.db	14
      0014CA 02                     933 	.uleb128	2
                                    934 
                                    935 	.area .debug_frame (NOLOAD)
      0014CB 00 00                  936 	.dw	0
      0014CD 00 0E                  937 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0014CF                        938 Ldebug_CIE1_start:
      0014CF FF FF                  939 	.dw	0xffff
      0014D1 FF FF                  940 	.dw	0xffff
      0014D3 01                     941 	.db	1
      0014D4 00                     942 	.db	0
      0014D5 01                     943 	.uleb128	1
      0014D6 7F                     944 	.sleb128	-1
      0014D7 09                     945 	.db	9
      0014D8 0C                     946 	.db	12
      0014D9 08                     947 	.uleb128	8
      0014DA 02                     948 	.uleb128	2
      0014DB 89                     949 	.db	137
      0014DC 01                     950 	.uleb128	1
      0014DD                        951 Ldebug_CIE1_end:
      0014DD 00 00 00 7C            952 	.dw	0,124
      0014E1 00 00 14 CB            953 	.dw	0,(Ldebug_CIE1_start-4)
      0014E5 00 00 88 A0            954 	.dw	0,(Sswspi$swspi_init$1)	;initial loc
      0014E9 00 00 00 28            955 	.dw	0,Sswspi$swspi_init$22-Sswspi$swspi_init$1
      0014ED 01                     956 	.db	1
      0014EE 00 00 88 A0            957 	.dw	0,(Sswspi$swspi_init$1)
      0014F2 0E                     958 	.db	14
      0014F3 02                     959 	.uleb128	2
      0014F4 01                     960 	.db	1
      0014F5 00 00 88 A2            961 	.dw	0,(Sswspi$swspi_init$3)
      0014F9 0E                     962 	.db	14
      0014FA 03                     963 	.uleb128	3
      0014FB 01                     964 	.db	1
      0014FC 00 00 88 A4            965 	.dw	0,(Sswspi$swspi_init$4)
      001500 0E                     966 	.db	14
      001501 04                     967 	.uleb128	4
      001502 01                     968 	.db	1
      001503 00 00 88 A6            969 	.dw	0,(Sswspi$swspi_init$5)
      001507 0E                     970 	.db	14
      001508 05                     971 	.uleb128	5
      001509 01                     972 	.db	1
      00150A 00 00 88 A8            973 	.dw	0,(Sswspi$swspi_init$6)
      00150E 0E                     974 	.db	14
      00150F 06                     975 	.uleb128	6
      001510 01                     976 	.db	1
      001511 00 00 88 AD            977 	.dw	0,(Sswspi$swspi_init$7)
      001515 0E                     978 	.db	14
      001516 02                     979 	.uleb128	2
      001517 01                     980 	.db	1
      001518 00 00 88 AF            981 	.dw	0,(Sswspi$swspi_init$9)
      00151C 0E                     982 	.db	14
      00151D 03                     983 	.uleb128	3
      00151E 01                     984 	.db	1
      00151F 00 00 88 B1            985 	.dw	0,(Sswspi$swspi_init$10)
      001523 0E                     986 	.db	14
      001524 04                     987 	.uleb128	4
      001525 01                     988 	.db	1
      001526 00 00 88 B3            989 	.dw	0,(Sswspi$swspi_init$11)
      00152A 0E                     990 	.db	14
      00152B 05                     991 	.uleb128	5
      00152C 01                     992 	.db	1
      00152D 00 00 88 B5            993 	.dw	0,(Sswspi$swspi_init$12)
      001531 0E                     994 	.db	14
      001532 06                     995 	.uleb128	6
      001533 01                     996 	.db	1
      001534 00 00 88 BA            997 	.dw	0,(Sswspi$swspi_init$13)
      001538 0E                     998 	.db	14
      001539 02                     999 	.uleb128	2
      00153A 01                    1000 	.db	1
      00153B 00 00 88 BC           1001 	.dw	0,(Sswspi$swspi_init$15)
      00153F 0E                    1002 	.db	14
      001540 03                    1003 	.uleb128	3
      001541 01                    1004 	.db	1
      001542 00 00 88 BE           1005 	.dw	0,(Sswspi$swspi_init$16)
      001546 0E                    1006 	.db	14
      001547 04                    1007 	.uleb128	4
      001548 01                    1008 	.db	1
      001549 00 00 88 C0           1009 	.dw	0,(Sswspi$swspi_init$17)
      00154D 0E                    1010 	.db	14
      00154E 05                    1011 	.uleb128	5
      00154F 01                    1012 	.db	1
      001550 00 00 88 C2           1013 	.dw	0,(Sswspi$swspi_init$18)
      001554 0E                    1014 	.db	14
      001555 06                    1015 	.uleb128	6
      001556 01                    1016 	.db	1
      001557 00 00 88 C7           1017 	.dw	0,(Sswspi$swspi_init$19)
      00155B 0E                    1018 	.db	14
      00155C 02                    1019 	.uleb128	2
