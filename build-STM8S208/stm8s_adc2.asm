;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module stm8s_adc2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC2_DeInit
	.globl _ADC2_Init
	.globl _ADC2_Cmd
	.globl _ADC2_ITConfig
	.globl _ADC2_PrescalerConfig
	.globl _ADC2_SchmittTriggerConfig
	.globl _ADC2_ConversionConfig
	.globl _ADC2_ExternalTriggerConfig
	.globl _ADC2_StartConversion
	.globl _ADC2_GetConversionValue
	.globl _ADC2_GetFlagStatus
	.globl _ADC2_ClearFlag
	.globl _ADC2_GetITStatus
	.globl _ADC2_ClearITPendingBit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Sstm8s_adc2$ADC2_DeInit$0 ==.
;	../SPL/src/stm8s_adc2.c: 54: void ADC2_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_DeInit:
	Sstm8s_adc2$ADC2_DeInit$1 ==.
	Sstm8s_adc2$ADC2_DeInit$2 ==.
;	../SPL/src/stm8s_adc2.c: 56: ADC2->CSR  = ADC2_CSR_RESET_VALUE;
; genPointerSet
	mov	0x5400+0, #0x00
	Sstm8s_adc2$ADC2_DeInit$3 ==.
;	../SPL/src/stm8s_adc2.c: 57: ADC2->CR1  = ADC2_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5401+0, #0x00
	Sstm8s_adc2$ADC2_DeInit$4 ==.
;	../SPL/src/stm8s_adc2.c: 58: ADC2->CR2  = ADC2_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5402+0, #0x00
	Sstm8s_adc2$ADC2_DeInit$5 ==.
;	../SPL/src/stm8s_adc2.c: 59: ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
; genPointerSet
	mov	0x5406+0, #0x00
	Sstm8s_adc2$ADC2_DeInit$6 ==.
;	../SPL/src/stm8s_adc2.c: 60: ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
; genPointerSet
	mov	0x5407+0, #0x00
; genLabel
00101$:
	Sstm8s_adc2$ADC2_DeInit$7 ==.
;	../SPL/src/stm8s_adc2.c: 61: }
; genEndFunction
	Sstm8s_adc2$ADC2_DeInit$8 ==.
	XG$ADC2_DeInit$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_DeInit$9 ==.
	Sstm8s_adc2$ADC2_Init$10 ==.
;	../SPL/src/stm8s_adc2.c: 83: void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
; genLabel
;	-----------------------------------------
;	 function ADC2_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_Init:
	Sstm8s_adc2$ADC2_Init$11 ==.
	Sstm8s_adc2$ADC2_Init$12 ==.
;	../SPL/src/stm8s_adc2.c: 86: assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
; genIfx
	tnz	(0x03, sp)
	jrne	00503$
	jp	00104$
00503$:
; genCmpEQorNE
	ld	a, (0x03, sp)
	dec	a
	jrne	00505$
	jp	00104$
00505$:
	Sstm8s_adc2$ADC2_Init$13 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x56
	Sstm8s_adc2$ADC2_Init$14 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Init$15 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Init$16 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Init$17 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Init$18 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Init$19 ==.
; genLabel
00104$:
	Sstm8s_adc2$ADC2_Init$20 ==.
;	../SPL/src/stm8s_adc2.c: 87: assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
; genIfx
	tnz	(0x04, sp)
	jrne	00507$
	jp	00109$
00507$:
; genCmpEQorNE
	ld	a, (0x04, sp)
	dec	a
	jrne	00509$
	jp	00109$
00509$:
	Sstm8s_adc2$ADC2_Init$21 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x02
	jrne	00512$
	jp	00109$
00512$:
	Sstm8s_adc2$ADC2_Init$22 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x03
	jrne	00515$
	jp	00109$
00515$:
	Sstm8s_adc2$ADC2_Init$23 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x04
	jrne	00518$
	jp	00109$
00518$:
	Sstm8s_adc2$ADC2_Init$24 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x05
	jrne	00521$
	jp	00109$
00521$:
	Sstm8s_adc2$ADC2_Init$25 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x06
	jrne	00524$
	jp	00109$
00524$:
	Sstm8s_adc2$ADC2_Init$26 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x07
	jrne	00527$
	jp	00109$
00527$:
	Sstm8s_adc2$ADC2_Init$27 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x08
	jrne	00530$
	jp	00109$
00530$:
	Sstm8s_adc2$ADC2_Init$28 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x09
	jrne	00533$
	jp	00109$
00533$:
	Sstm8s_adc2$ADC2_Init$29 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0a
	jrne	00536$
	jp	00109$
00536$:
	Sstm8s_adc2$ADC2_Init$30 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0b
	jrne	00539$
	jp	00109$
00539$:
	Sstm8s_adc2$ADC2_Init$31 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0c
	jrne	00542$
	jp	00109$
00542$:
	Sstm8s_adc2$ADC2_Init$32 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0d
	jrne	00545$
	jp	00109$
00545$:
	Sstm8s_adc2$ADC2_Init$33 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0e
	jrne	00548$
	jp	00109$
00548$:
	Sstm8s_adc2$ADC2_Init$34 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0f
	jrne	00551$
	jp	00109$
00551$:
	Sstm8s_adc2$ADC2_Init$35 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x57
	Sstm8s_adc2$ADC2_Init$36 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Init$37 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Init$38 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Init$39 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Init$40 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Init$41 ==.
; genLabel
00109$:
	Sstm8s_adc2$ADC2_Init$42 ==.
;	../SPL/src/stm8s_adc2.c: 88: assert_param(IS_ADC2_PRESSEL_OK(ADC2_PrescalerSelection));
; genIfx
	tnz	(0x05, sp)
	jrne	00553$
	jp	00156$
00553$:
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x10
	jrne	00555$
	jp	00156$
00555$:
	Sstm8s_adc2$ADC2_Init$43 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x20
	jrne	00558$
	jp	00156$
00558$:
	Sstm8s_adc2$ADC2_Init$44 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x30
	jrne	00561$
	jp	00156$
00561$:
	Sstm8s_adc2$ADC2_Init$45 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x40
	jrne	00564$
	jp	00156$
00564$:
	Sstm8s_adc2$ADC2_Init$46 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x50
	jrne	00567$
	jp	00156$
00567$:
	Sstm8s_adc2$ADC2_Init$47 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x60
	jrne	00570$
	jp	00156$
00570$:
	Sstm8s_adc2$ADC2_Init$48 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x70
	jrne	00573$
	jp	00156$
00573$:
	Sstm8s_adc2$ADC2_Init$49 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x58
	Sstm8s_adc2$ADC2_Init$50 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Init$51 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Init$52 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Init$53 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Init$54 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Init$55 ==.
; genLabel
00156$:
	Sstm8s_adc2$ADC2_Init$56 ==.
;	../SPL/src/stm8s_adc2.c: 89: assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
; genIfx
	tnz	(0x06, sp)
	jrne	00575$
	jp	00179$
00575$:
; genCmpEQorNE
	ld	a, (0x06, sp)
	dec	a
	jrne	00577$
	jp	00179$
00577$:
	Sstm8s_adc2$ADC2_Init$57 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x59
	Sstm8s_adc2$ADC2_Init$58 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Init$59 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Init$60 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Init$61 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Init$62 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Init$63 ==.
; genLabel
00179$:
	Sstm8s_adc2$ADC2_Init$64 ==.
;	../SPL/src/stm8s_adc2.c: 90: assert_param(IS_FUNCTIONALSTATE_OK(((ADC2_ExtTriggerState))));
; genIfx
	tnz	(0x07, sp)
	jrne	00579$
	jp	00184$
00579$:
; genCmpEQorNE
	ld	a, (0x07, sp)
	dec	a
	jrne	00581$
	jp	00184$
00581$:
	Sstm8s_adc2$ADC2_Init$65 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x5a
	Sstm8s_adc2$ADC2_Init$66 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Init$67 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Init$68 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Init$69 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Init$70 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Init$71 ==.
; genLabel
00184$:
	Sstm8s_adc2$ADC2_Init$72 ==.
;	../SPL/src/stm8s_adc2.c: 91: assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
; genIfx
	tnz	(0x08, sp)
	jrne	00583$
	jp	00189$
00583$:
; genCmpEQorNE
	ld	a, (0x08, sp)
	cp	a, #0x08
	jrne	00585$
	jp	00189$
00585$:
	Sstm8s_adc2$ADC2_Init$73 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x5b
	Sstm8s_adc2$ADC2_Init$74 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Init$75 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Init$76 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Init$77 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Init$78 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Init$79 ==.
; genLabel
00189$:
	Sstm8s_adc2$ADC2_Init$80 ==.
;	../SPL/src/stm8s_adc2.c: 92: assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
; genIfx
	tnz	(0x09, sp)
	jrne	00587$
	jp	00194$
00587$:
; genCmpEQorNE
	ld	a, (0x09, sp)
	dec	a
	jrne	00589$
	jp	00194$
00589$:
	Sstm8s_adc2$ADC2_Init$81 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x02
	jrne	00592$
	jp	00194$
00592$:
	Sstm8s_adc2$ADC2_Init$82 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x03
	jrne	00595$
	jp	00194$
00595$:
	Sstm8s_adc2$ADC2_Init$83 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x04
	jrne	00598$
	jp	00194$
00598$:
	Sstm8s_adc2$ADC2_Init$84 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x05
	jrne	00601$
	jp	00194$
00601$:
	Sstm8s_adc2$ADC2_Init$85 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x06
	jrne	00604$
	jp	00194$
00604$:
	Sstm8s_adc2$ADC2_Init$86 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x07
	jrne	00607$
	jp	00194$
00607$:
	Sstm8s_adc2$ADC2_Init$87 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x08
	jrne	00610$
	jp	00194$
00610$:
	Sstm8s_adc2$ADC2_Init$88 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x09
	jrne	00613$
	jp	00194$
00613$:
	Sstm8s_adc2$ADC2_Init$89 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x0a
	jrne	00616$
	jp	00194$
00616$:
	Sstm8s_adc2$ADC2_Init$90 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x0b
	jrne	00619$
	jp	00194$
00619$:
	Sstm8s_adc2$ADC2_Init$91 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x0c
	jrne	00622$
	jp	00194$
00622$:
	Sstm8s_adc2$ADC2_Init$92 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x0d
	jrne	00625$
	jp	00194$
00625$:
	Sstm8s_adc2$ADC2_Init$93 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x0e
	jrne	00628$
	jp	00194$
00628$:
	Sstm8s_adc2$ADC2_Init$94 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x0f
	jrne	00631$
	jp	00194$
00631$:
	Sstm8s_adc2$ADC2_Init$95 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x09, sp)
	cp	a, #0x1f
	jrne	00634$
	jp	00194$
00634$:
	Sstm8s_adc2$ADC2_Init$96 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x5c
	Sstm8s_adc2$ADC2_Init$97 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Init$98 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Init$99 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Init$100 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Init$101 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Init$102 ==.
; genLabel
00194$:
	Sstm8s_adc2$ADC2_Init$103 ==.
;	../SPL/src/stm8s_adc2.c: 93: assert_param(IS_FUNCTIONALSTATE_OK(ADC2_SchmittTriggerState));
; genIfx
	tnz	(0x0a, sp)
	jrne	00636$
	jp	00244$
00636$:
; genCmpEQorNE
	ld	a, (0x0a, sp)
	dec	a
	jrne	00638$
	jp	00244$
00638$:
	Sstm8s_adc2$ADC2_Init$104 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x5d
	Sstm8s_adc2$ADC2_Init$105 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Init$106 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Init$107 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Init$108 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Init$109 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Init$110 ==.
; genLabel
00244$:
	Sstm8s_adc2$ADC2_Init$111 ==.
;	../SPL/src/stm8s_adc2.c: 98: ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
; genIPush
	ld	a, (0x08, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$112 ==.
; genIPush
	ld	a, (0x05, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$113 ==.
; genIPush
	ld	a, (0x05, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$114 ==.
; genCall
	call	_ADC2_ConversionConfig
	addw	sp, #3
	Sstm8s_adc2$ADC2_Init$115 ==.
	Sstm8s_adc2$ADC2_Init$116 ==.
;	../SPL/src/stm8s_adc2.c: 100: ADC2_PrescalerConfig(ADC2_PrescalerSelection);
; genIPush
	ld	a, (0x05, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$117 ==.
; genCall
	call	_ADC2_PrescalerConfig
	pop	a
	Sstm8s_adc2$ADC2_Init$118 ==.
	Sstm8s_adc2$ADC2_Init$119 ==.
;	../SPL/src/stm8s_adc2.c: 105: ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
; genIPush
	ld	a, (0x07, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$120 ==.
; genIPush
	ld	a, (0x07, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$121 ==.
; genCall
	call	_ADC2_ExternalTriggerConfig
	popw	x
	Sstm8s_adc2$ADC2_Init$122 ==.
	Sstm8s_adc2$ADC2_Init$123 ==.
;	../SPL/src/stm8s_adc2.c: 110: ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
; genIPush
	ld	a, (0x0a, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$124 ==.
; genIPush
	ld	a, (0x0a, sp)
	push	a
	Sstm8s_adc2$ADC2_Init$125 ==.
; genCall
	call	_ADC2_SchmittTriggerConfig
	popw	x
	Sstm8s_adc2$ADC2_Init$126 ==.
	Sstm8s_adc2$ADC2_Init$127 ==.
;	../SPL/src/stm8s_adc2.c: 113: ADC2->CR1 |= ADC2_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_Init$128 ==.
;	../SPL/src/stm8s_adc2.c: 114: }
; genEndFunction
	Sstm8s_adc2$ADC2_Init$129 ==.
	XG$ADC2_Init$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_Init$130 ==.
	Sstm8s_adc2$ADC2_Cmd$131 ==.
;	../SPL/src/stm8s_adc2.c: 121: void ADC2_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_Cmd:
	Sstm8s_adc2$ADC2_Cmd$132 ==.
	Sstm8s_adc2$ADC2_Cmd$133 ==.
;	../SPL/src/stm8s_adc2.c: 124: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
; genIfx
	tnz	(0x03, sp)
	jrne	00126$
	jp	00107$
00126$:
; genCmpEQorNE
	ld	a, (0x03, sp)
	dec	a
	jrne	00128$
	jp	00107$
00128$:
	Sstm8s_adc2$ADC2_Cmd$134 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x7c
	Sstm8s_adc2$ADC2_Cmd$135 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_Cmd$136 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_Cmd$137 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_Cmd$138 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_Cmd$139 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_Cmd$140 ==.
; genLabel
00107$:
	Sstm8s_adc2$ADC2_Cmd$141 ==.
;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
	Sstm8s_adc2$ADC2_Cmd$142 ==.
;	../SPL/src/stm8s_adc2.c: 126: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00130$
	jp	00102$
00130$:
	Sstm8s_adc2$ADC2_Cmd$143 ==.
	Sstm8s_adc2$ADC2_Cmd$144 ==.
;	../SPL/src/stm8s_adc2.c: 128: ADC2->CR1 |= ADC2_CR1_ADON;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_Cmd$145 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_Cmd$146 ==.
	Sstm8s_adc2$ADC2_Cmd$147 ==.
;	../SPL/src/stm8s_adc2.c: 132: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_Cmd$148 ==.
; genLabel
00104$:
	Sstm8s_adc2$ADC2_Cmd$149 ==.
;	../SPL/src/stm8s_adc2.c: 134: }
; genEndFunction
	Sstm8s_adc2$ADC2_Cmd$150 ==.
	XG$ADC2_Cmd$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_Cmd$151 ==.
	Sstm8s_adc2$ADC2_ITConfig$152 ==.
;	../SPL/src/stm8s_adc2.c: 141: void ADC2_ITConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ITConfig:
	Sstm8s_adc2$ADC2_ITConfig$153 ==.
	Sstm8s_adc2$ADC2_ITConfig$154 ==.
;	../SPL/src/stm8s_adc2.c: 144: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
; genIfx
	tnz	(0x03, sp)
	jrne	00126$
	jp	00107$
00126$:
; genCmpEQorNE
	ld	a, (0x03, sp)
	dec	a
	jrne	00128$
	jp	00107$
00128$:
	Sstm8s_adc2$ADC2_ITConfig$155 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x90
	Sstm8s_adc2$ADC2_ITConfig$156 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_ITConfig$157 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_ITConfig$158 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_ITConfig$159 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_ITConfig$160 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_ITConfig$161 ==.
; genLabel
00107$:
	Sstm8s_adc2$ADC2_ITConfig$162 ==.
;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
; genPointerGet
	ld	a, 0x5400
	Sstm8s_adc2$ADC2_ITConfig$163 ==.
;	../SPL/src/stm8s_adc2.c: 146: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00130$
	jp	00102$
00130$:
	Sstm8s_adc2$ADC2_ITConfig$164 ==.
	Sstm8s_adc2$ADC2_ITConfig$165 ==.
;	../SPL/src/stm8s_adc2.c: 149: ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5400, a
	Sstm8s_adc2$ADC2_ITConfig$166 ==.
; genGoto
	jp	00104$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_ITConfig$167 ==.
	Sstm8s_adc2$ADC2_ITConfig$168 ==.
;	../SPL/src/stm8s_adc2.c: 154: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5400, a
	Sstm8s_adc2$ADC2_ITConfig$169 ==.
; genLabel
00104$:
	Sstm8s_adc2$ADC2_ITConfig$170 ==.
;	../SPL/src/stm8s_adc2.c: 156: }
; genEndFunction
	Sstm8s_adc2$ADC2_ITConfig$171 ==.
	XG$ADC2_ITConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ITConfig$172 ==.
	Sstm8s_adc2$ADC2_PrescalerConfig$173 ==.
;	../SPL/src/stm8s_adc2.c: 164: void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
; genLabel
;	-----------------------------------------
;	 function ADC2_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_PrescalerConfig:
	Sstm8s_adc2$ADC2_PrescalerConfig$174 ==.
	Sstm8s_adc2$ADC2_PrescalerConfig$175 ==.
;	../SPL/src/stm8s_adc2.c: 167: assert_param(IS_ADC2_PRESSEL_OK(ADC2_Prescaler));
; genIfx
	tnz	(0x03, sp)
	jrne	00166$
	jp	00104$
00166$:
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x10
	jrne	00168$
	jp	00104$
00168$:
	Sstm8s_adc2$ADC2_PrescalerConfig$176 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x20
	jrne	00171$
	jp	00104$
00171$:
	Sstm8s_adc2$ADC2_PrescalerConfig$177 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x30
	jrne	00174$
	jp	00104$
00174$:
	Sstm8s_adc2$ADC2_PrescalerConfig$178 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x40
	jrne	00177$
	jp	00104$
00177$:
	Sstm8s_adc2$ADC2_PrescalerConfig$179 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x50
	jrne	00180$
	jp	00104$
00180$:
	Sstm8s_adc2$ADC2_PrescalerConfig$180 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x60
	jrne	00183$
	jp	00104$
00183$:
	Sstm8s_adc2$ADC2_PrescalerConfig$181 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x70
	jrne	00186$
	jp	00104$
00186$:
	Sstm8s_adc2$ADC2_PrescalerConfig$182 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xa7
	Sstm8s_adc2$ADC2_PrescalerConfig$183 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_PrescalerConfig$184 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_PrescalerConfig$185 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_PrescalerConfig$186 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_PrescalerConfig$187 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_PrescalerConfig$188 ==.
; genLabel
00104$:
	Sstm8s_adc2$ADC2_PrescalerConfig$189 ==.
;	../SPL/src/stm8s_adc2.c: 170: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
; genPointerGet
	ld	a, 0x5401
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_PrescalerConfig$190 ==.
;	../SPL/src/stm8s_adc2.c: 172: ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_PrescalerConfig$191 ==.
;	../SPL/src/stm8s_adc2.c: 173: }
; genEndFunction
	Sstm8s_adc2$ADC2_PrescalerConfig$192 ==.
	XG$ADC2_PrescalerConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_PrescalerConfig$193 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$194 ==.
;	../SPL/src/stm8s_adc2.c: 183: void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_SchmittTriggerConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC2_SchmittTriggerConfig:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$195 ==.
	push	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$196 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$197 ==.
;	../SPL/src/stm8s_adc2.c: 186: assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x1f
	jrne	00294$
	ld	a, #0x01
	ld	(0x01, sp), a
	jp	00295$
00294$:
	clr	(0x01, sp)
00295$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$198 ==.
; genIfx
	tnz	(0x04, sp)
	jrne	00296$
	jp	00119$
00296$:
; genCmpEQorNE
	ld	a, (0x04, sp)
	dec	a
	jrne	00298$
	jp	00119$
00298$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$199 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x02
	jrne	00301$
	jp	00119$
00301$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$200 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x03
	jrne	00304$
	jp	00119$
00304$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$201 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x04
	jrne	00307$
	jp	00119$
00307$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$202 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x05
	jrne	00310$
	jp	00119$
00310$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$203 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x06
	jrne	00313$
	jp	00119$
00313$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$204 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x07
	jrne	00316$
	jp	00119$
00316$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$205 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x08
	jrne	00319$
	jp	00119$
00319$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$206 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x09
	jrne	00322$
	jp	00119$
00322$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$207 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0a
	jrne	00325$
	jp	00119$
00325$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$208 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0b
	jrne	00328$
	jp	00119$
00328$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$209 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0c
	jrne	00331$
	jp	00119$
00331$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$210 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0d
	jrne	00334$
	jp	00119$
00334$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$211 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0e
	jrne	00337$
	jp	00119$
00337$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$212 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0f
	jrne	00340$
	jp	00119$
00340$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$213 ==.
; skipping generated iCode
; genIfx
	tnz	(0x01, sp)
	jreq	00342$
	jp	00119$
00342$:
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xba
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$214 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$215 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$216 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$217 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$218 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$219 ==.
; genLabel
00119$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$220 ==.
;	../SPL/src/stm8s_adc2.c: 187: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
; genIfx
	tnz	(0x05, sp)
	jrne	00343$
	jp	00169$
00343$:
; genCmpEQorNE
	ld	a, (0x05, sp)
	dec	a
	jrne	00345$
	jp	00169$
00345$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$221 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xbb
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$222 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$223 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$224 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$225 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$226 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$227 ==.
; genLabel
00169$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$228 ==.
;	../SPL/src/stm8s_adc2.c: 189: if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
; genAssign
	ld	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00347$
	jp	00114$
00347$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$229 ==.
;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
; genPointerGet
; Dummy read
	ld	a, 0x5407
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$230 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$231 ==.
;	../SPL/src/stm8s_adc2.c: 191: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00348$
	jp	00102$
00348$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$232 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$233 ==.
;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
; genPointerSet
	mov	0x5407+0, #0x00
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$234 ==.
;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
; genPointerGet
; Dummy read
	ld	a, 0x5406
; genPointerSet
	mov	0x5406+0, #0x00
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$235 ==.
; genGoto
	jp	00116$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$236 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$237 ==.
;	../SPL/src/stm8s_adc2.c: 198: ADC2->TDRL |= (uint8_t)0xFF;
; genPointerSet
	mov	0x5407+0, #0xff
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$238 ==.
;	../SPL/src/stm8s_adc2.c: 199: ADC2->TDRH |= (uint8_t)0xFF;
; genPointerGet
; Dummy read
	ld	a, 0x5406
; genPointerSet
	mov	0x5406+0, #0xff
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$239 ==.
; genGoto
	jp	00116$
; genLabel
00114$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$240 ==.
;	../SPL/src/stm8s_adc2.c: 202: else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
; genCmp
; genCmpTop
	ld	a, (0x04, sp)
	cp	a, #0x08
	jrc	00349$
	jp	00111$
00349$:
; skipping generated iCode
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$241 ==.
;	../SPL/src/stm8s_adc2.c: 193: ADC2->TDRL &= (uint8_t)0x0;
; genPointerGet
	ld	a, 0x5407
	ld	(0x01, sp), a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$242 ==.
;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
; genLeftShift
	ld	a, #0x01
	push	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$243 ==.
	ld	a, (0x05, sp)
	jreq	00351$
00350$:
	sll	(1, sp)
	dec	a
	jrne	00350$
00351$:
	pop	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$244 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$245 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$246 ==.
;	../SPL/src/stm8s_adc2.c: 204: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00352$
	jp	00105$
00352$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$247 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$248 ==.
;	../SPL/src/stm8s_adc2.c: 206: ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5407, a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$249 ==.
; genGoto
	jp	00116$
; genLabel
00105$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$250 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$251 ==.
;	../SPL/src/stm8s_adc2.c: 210: ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5407, a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$252 ==.
; genGoto
	jp	00116$
; genLabel
00111$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$253 ==.
;	../SPL/src/stm8s_adc2.c: 194: ADC2->TDRH &= (uint8_t)0x0;
; genPointerGet
	ld	a, 0x5406
	ld	(0x01, sp), a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$254 ==.
;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
; genMinus
	ld	a, (0x04, sp)
	sub	a, #0x08
	ld	xl, a
; genLeftShift
	ld	a, #0x01
	push	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$255 ==.
	ld	a, xl
	tnz	a
	jreq	00354$
00353$:
	sll	(1, sp)
	dec	a
	jrne	00353$
00354$:
	pop	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$256 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$257 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$258 ==.
;	../SPL/src/stm8s_adc2.c: 215: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00355$
	jp	00108$
00355$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$259 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$260 ==.
;	../SPL/src/stm8s_adc2.c: 217: ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5406, a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$261 ==.
; genGoto
	jp	00116$
; genLabel
00108$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$262 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$263 ==.
;	../SPL/src/stm8s_adc2.c: 221: ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5406, a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$264 ==.
; genLabel
00116$:
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$265 ==.
;	../SPL/src/stm8s_adc2.c: 224: }
; genEndFunction
	pop	a
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$266 ==.
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$267 ==.
	XG$ADC2_SchmittTriggerConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_SchmittTriggerConfig$268 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$269 ==.
;	../SPL/src/stm8s_adc2.c: 236: void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
; genLabel
;	-----------------------------------------
;	 function ADC2_ConversionConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC2_ConversionConfig:
	Sstm8s_adc2$ADC2_ConversionConfig$270 ==.
	push	a
	Sstm8s_adc2$ADC2_ConversionConfig$271 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$272 ==.
;	../SPL/src/stm8s_adc2.c: 239: assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
; genCmpEQorNE
	ld	a, (0x04, sp)
	dec	a
	jrne	00269$
	ld	a, #0x01
	ld	(0x01, sp), a
	jp	00270$
00269$:
	clr	(0x01, sp)
00270$:
	Sstm8s_adc2$ADC2_ConversionConfig$273 ==.
; genIfx
	tnz	(0x04, sp)
	jrne	00271$
	jp	00107$
00271$:
; genIfx
	tnz	(0x01, sp)
	jreq	00272$
	jp	00107$
00272$:
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xef
	Sstm8s_adc2$ADC2_ConversionConfig$274 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_ConversionConfig$275 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_ConversionConfig$276 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_ConversionConfig$277 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_ConversionConfig$278 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_ConversionConfig$279 ==.
; genLabel
00107$:
	Sstm8s_adc2$ADC2_ConversionConfig$280 ==.
;	../SPL/src/stm8s_adc2.c: 240: assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
; genIfx
	tnz	(0x05, sp)
	jrne	00273$
	jp	00112$
00273$:
; genCmpEQorNE
	ld	a, (0x05, sp)
	dec	a
	jrne	00275$
	jp	00112$
00275$:
	Sstm8s_adc2$ADC2_ConversionConfig$281 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x02
	jrne	00278$
	jp	00112$
00278$:
	Sstm8s_adc2$ADC2_ConversionConfig$282 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x03
	jrne	00281$
	jp	00112$
00281$:
	Sstm8s_adc2$ADC2_ConversionConfig$283 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x04
	jrne	00284$
	jp	00112$
00284$:
	Sstm8s_adc2$ADC2_ConversionConfig$284 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x05
	jrne	00287$
	jp	00112$
00287$:
	Sstm8s_adc2$ADC2_ConversionConfig$285 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x06
	jrne	00290$
	jp	00112$
00290$:
	Sstm8s_adc2$ADC2_ConversionConfig$286 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x07
	jrne	00293$
	jp	00112$
00293$:
	Sstm8s_adc2$ADC2_ConversionConfig$287 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x08
	jrne	00296$
	jp	00112$
00296$:
	Sstm8s_adc2$ADC2_ConversionConfig$288 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x09
	jrne	00299$
	jp	00112$
00299$:
	Sstm8s_adc2$ADC2_ConversionConfig$289 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x0a
	jrne	00302$
	jp	00112$
00302$:
	Sstm8s_adc2$ADC2_ConversionConfig$290 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x0b
	jrne	00305$
	jp	00112$
00305$:
	Sstm8s_adc2$ADC2_ConversionConfig$291 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x0c
	jrne	00308$
	jp	00112$
00308$:
	Sstm8s_adc2$ADC2_ConversionConfig$292 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x0d
	jrne	00311$
	jp	00112$
00311$:
	Sstm8s_adc2$ADC2_ConversionConfig$293 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x0e
	jrne	00314$
	jp	00112$
00314$:
	Sstm8s_adc2$ADC2_ConversionConfig$294 ==.
; skipping generated iCode
; genCmpEQorNE
	ld	a, (0x05, sp)
	cp	a, #0x0f
	jrne	00317$
	jp	00112$
00317$:
	Sstm8s_adc2$ADC2_ConversionConfig$295 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xf0
	Sstm8s_adc2$ADC2_ConversionConfig$296 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_ConversionConfig$297 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_ConversionConfig$298 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_ConversionConfig$299 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_ConversionConfig$300 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_ConversionConfig$301 ==.
; genLabel
00112$:
	Sstm8s_adc2$ADC2_ConversionConfig$302 ==.
;	../SPL/src/stm8s_adc2.c: 241: assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
; genIfx
	tnz	(0x06, sp)
	jrne	00319$
	jp	00159$
00319$:
; genCmpEQorNE
	ld	a, (0x06, sp)
	cp	a, #0x08
	jrne	00321$
	jp	00159$
00321$:
	Sstm8s_adc2$ADC2_ConversionConfig$303 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0xf1
	Sstm8s_adc2$ADC2_ConversionConfig$304 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_ConversionConfig$305 ==.
	push	#0x00
	Sstm8s_adc2$ADC2_ConversionConfig$306 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_ConversionConfig$307 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_ConversionConfig$308 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_ConversionConfig$309 ==.
; genLabel
00159$:
	Sstm8s_adc2$ADC2_ConversionConfig$310 ==.
;	../SPL/src/stm8s_adc2.c: 244: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
; genPointerGet
	ld	a, 0x5402
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5402, a
	Sstm8s_adc2$ADC2_ConversionConfig$311 ==.
;	../SPL/src/stm8s_adc2.c: 246: ADC2->CR2 |= (uint8_t)(ADC2_Align);
; genPointerGet
	ld	a, 0x5402
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ld	0x5402, a
	Sstm8s_adc2$ADC2_ConversionConfig$312 ==.
;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
; genPointerGet
	ld	a, 0x5401
	ld	xl, a
	Sstm8s_adc2$ADC2_ConversionConfig$313 ==.
;	../SPL/src/stm8s_adc2.c: 248: if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
; genAssign
	ld	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00323$
	jp	00102$
00323$:
	Sstm8s_adc2$ADC2_ConversionConfig$314 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$315 ==.
;	../SPL/src/stm8s_adc2.c: 251: ADC2->CR1 |= ADC2_CR1_CONT;
; genOr
	ld	a, xl
	or	a, #0x02
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_ConversionConfig$316 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_ConversionConfig$317 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$318 ==.
;	../SPL/src/stm8s_adc2.c: 256: ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
; genAnd
	ld	a, xl
	and	a, #0xfd
; genPointerSet
	ld	0x5401, a
	Sstm8s_adc2$ADC2_ConversionConfig$319 ==.
; genLabel
00103$:
	Sstm8s_adc2$ADC2_ConversionConfig$320 ==.
;	../SPL/src/stm8s_adc2.c: 260: ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5400, a
	Sstm8s_adc2$ADC2_ConversionConfig$321 ==.
;	../SPL/src/stm8s_adc2.c: 262: ADC2->CSR |= (uint8_t)(ADC2_Channel);
; genPointerGet
	ld	a, 0x5400
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x5400, a
; genLabel
00104$:
	Sstm8s_adc2$ADC2_ConversionConfig$322 ==.
;	../SPL/src/stm8s_adc2.c: 263: }
; genEndFunction
	pop	a
	Sstm8s_adc2$ADC2_ConversionConfig$323 ==.
	Sstm8s_adc2$ADC2_ConversionConfig$324 ==.
	XG$ADC2_ConversionConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ConversionConfig$325 ==.
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$326 ==.
;	../SPL/src/stm8s_adc2.c: 275: void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC2_ExternalTriggerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ExternalTriggerConfig:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$327 ==.
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$328 ==.
;	../SPL/src/stm8s_adc2.c: 278: assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
; genIfx
	tnz	(0x03, sp)
	jrne	00141$
	jp	00107$
00141$:
; genCmpEQorNE
	ld	a, (0x03, sp)
	dec	a
	jrne	00143$
	jp	00107$
00143$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$329 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x16
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$330 ==.
	push	#0x01
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$331 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$332 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$333 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$334 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$335 ==.
; genLabel
00107$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$336 ==.
;	../SPL/src/stm8s_adc2.c: 279: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
; genIfx
	tnz	(0x04, sp)
	jrne	00145$
	jp	00112$
00145$:
; genCmpEQorNE
	ld	a, (0x04, sp)
	dec	a
	jrne	00147$
	jp	00112$
00147$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$337 ==.
; skipping generated iCode
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genIPush
	push	#0x17
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$338 ==.
	push	#0x01
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$339 ==.
	clrw	x
	pushw	x
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$340 ==.
; genIPush
	push	#<(___str_0+0)
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$341 ==.
	push	#((___str_0+0) >> 8)
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$342 ==.
; genCall
	call	_assert_failed
	addw	sp, #6
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$343 ==.
; genLabel
00112$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$344 ==.
;	../SPL/src/stm8s_adc2.c: 282: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
; genPointerGet
	ld	a, 0x5402
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5402, a
; genPointerGet
	ld	a, 0x5402
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$345 ==.
;	../SPL/src/stm8s_adc2.c: 284: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00149$
	jp	00102$
00149$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$346 ==.
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$347 ==.
;	../SPL/src/stm8s_adc2.c: 287: ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5402, a
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$348 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$349 ==.
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$350 ==.
;	../SPL/src/stm8s_adc2.c: 292: ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5402, a
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$351 ==.
; genLabel
00103$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$352 ==.
;	../SPL/src/stm8s_adc2.c: 296: ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
; genPointerGet
	ld	a, 0x5402
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5402, a
; genLabel
00104$:
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$353 ==.
;	../SPL/src/stm8s_adc2.c: 297: }
; genEndFunction
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$354 ==.
	XG$ADC2_ExternalTriggerConfig$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ExternalTriggerConfig$355 ==.
	Sstm8s_adc2$ADC2_StartConversion$356 ==.
;	../SPL/src/stm8s_adc2.c: 308: void ADC2_StartConversion(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_StartConversion
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_StartConversion:
	Sstm8s_adc2$ADC2_StartConversion$357 ==.
	Sstm8s_adc2$ADC2_StartConversion$358 ==.
;	../SPL/src/stm8s_adc2.c: 310: ADC2->CR1 |= ADC2_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_StartConversion$359 ==.
;	../SPL/src/stm8s_adc2.c: 311: }
; genEndFunction
	Sstm8s_adc2$ADC2_StartConversion$360 ==.
	XG$ADC2_StartConversion$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_StartConversion$361 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$362 ==.
;	../SPL/src/stm8s_adc2.c: 320: uint16_t ADC2_GetConversionValue(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetConversionValue
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_ADC2_GetConversionValue:
	Sstm8s_adc2$ADC2_GetConversionValue$363 ==.
	sub	sp, #4
	Sstm8s_adc2$ADC2_GetConversionValue$364 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$365 ==.
;	../SPL/src/stm8s_adc2.c: 325: if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
; genPointerGet
	ld	a, 0x5402
; genAnd
	bcp	a, #0x08
	jrne	00111$
	jp	00102$
00111$:
; skipping generated iCode
	Sstm8s_adc2$ADC2_GetConversionValue$366 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$367 ==.
;	../SPL/src/stm8s_adc2.c: 328: templ = ADC2->DRL;
; genPointerGet
	ld	a, 0x5405
	ld	xl, a
	Sstm8s_adc2$ADC2_GetConversionValue$368 ==.
;	../SPL/src/stm8s_adc2.c: 330: temph = ADC2->DRH;
; genPointerGet
	ld	a, 0x5404
; genCast
; genAssign
	clrw	y
; genAssign
	Sstm8s_adc2$ADC2_GetConversionValue$369 ==.
;	../SPL/src/stm8s_adc2.c: 332: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
; genLeftShiftLiteral
	clr	(0x02, sp)
; genCast
; genAssign
	clr	(0x03, sp)
; genOr
	or	a, (0x03, sp)
	ld	xh, a
	ld	a, xl
	or	a, (0x02, sp)
	ld	xl, a
; genAssign
	ldw	(0x03, sp), x
	Sstm8s_adc2$ADC2_GetConversionValue$370 ==.
; genGoto
	jp	00103$
; genLabel
00102$:
	Sstm8s_adc2$ADC2_GetConversionValue$371 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$372 ==.
;	../SPL/src/stm8s_adc2.c: 337: temph = ADC2->DRH;
; genPointerGet
	ld	a, 0x5404
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genAssign
	exgw	x, y
	Sstm8s_adc2$ADC2_GetConversionValue$373 ==.
;	../SPL/src/stm8s_adc2.c: 339: templ = ADC2->DRL;
; genPointerGet
	ld	a, 0x5405
	Sstm8s_adc2$ADC2_GetConversionValue$374 ==.
;	../SPL/src/stm8s_adc2.c: 341: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x03, sp), x
; genLeftShiftLiteral
	clr	a
; genOr
	or	a, (0x04, sp)
	ld	xl, a
	ld	a, yl
	or	a, (0x03, sp)
	ld	xh, a
; genAssign
	ldw	(0x03, sp), x
	Sstm8s_adc2$ADC2_GetConversionValue$375 ==.
; genLabel
00103$:
	Sstm8s_adc2$ADC2_GetConversionValue$376 ==.
;	../SPL/src/stm8s_adc2.c: 344: return ((uint16_t)temph);
; genReturn
	ldw	x, (0x03, sp)
; genLabel
00104$:
	Sstm8s_adc2$ADC2_GetConversionValue$377 ==.
;	../SPL/src/stm8s_adc2.c: 345: }
; genEndFunction
	addw	sp, #4
	Sstm8s_adc2$ADC2_GetConversionValue$378 ==.
	Sstm8s_adc2$ADC2_GetConversionValue$379 ==.
	XG$ADC2_GetConversionValue$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_GetConversionValue$380 ==.
	Sstm8s_adc2$ADC2_GetFlagStatus$381 ==.
;	../SPL/src/stm8s_adc2.c: 352: FlagStatus ADC2_GetFlagStatus(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_GetFlagStatus:
	Sstm8s_adc2$ADC2_GetFlagStatus$382 ==.
	Sstm8s_adc2$ADC2_GetFlagStatus$383 ==.
;	../SPL/src/stm8s_adc2.c: 355: return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x80
; genReturn
; genLabel
00101$:
	Sstm8s_adc2$ADC2_GetFlagStatus$384 ==.
;	../SPL/src/stm8s_adc2.c: 356: }
; genEndFunction
	Sstm8s_adc2$ADC2_GetFlagStatus$385 ==.
	XG$ADC2_GetFlagStatus$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_GetFlagStatus$386 ==.
	Sstm8s_adc2$ADC2_ClearFlag$387 ==.
;	../SPL/src/stm8s_adc2.c: 363: void ADC2_ClearFlag(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ClearFlag:
	Sstm8s_adc2$ADC2_ClearFlag$388 ==.
	Sstm8s_adc2$ADC2_ClearFlag$389 ==.
;	../SPL/src/stm8s_adc2.c: 365: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5400, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_ClearFlag$390 ==.
;	../SPL/src/stm8s_adc2.c: 366: }
; genEndFunction
	Sstm8s_adc2$ADC2_ClearFlag$391 ==.
	XG$ADC2_ClearFlag$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ClearFlag$392 ==.
	Sstm8s_adc2$ADC2_GetITStatus$393 ==.
;	../SPL/src/stm8s_adc2.c: 374: ITStatus ADC2_GetITStatus(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_GetITStatus:
	Sstm8s_adc2$ADC2_GetITStatus$394 ==.
	Sstm8s_adc2$ADC2_GetITStatus$395 ==.
;	../SPL/src/stm8s_adc2.c: 376: return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x80
; genReturn
; genLabel
00101$:
	Sstm8s_adc2$ADC2_GetITStatus$396 ==.
;	../SPL/src/stm8s_adc2.c: 377: }
; genEndFunction
	Sstm8s_adc2$ADC2_GetITStatus$397 ==.
	XG$ADC2_GetITStatus$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_GetITStatus$398 ==.
	Sstm8s_adc2$ADC2_ClearITPendingBit$399 ==.
;	../SPL/src/stm8s_adc2.c: 384: void ADC2_ClearITPendingBit(void)
; genLabel
;	-----------------------------------------
;	 function ADC2_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC2_ClearITPendingBit:
	Sstm8s_adc2$ADC2_ClearITPendingBit$400 ==.
	Sstm8s_adc2$ADC2_ClearITPendingBit$401 ==.
;	../SPL/src/stm8s_adc2.c: 386: ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5400, a
; genLabel
00101$:
	Sstm8s_adc2$ADC2_ClearITPendingBit$402 ==.
;	../SPL/src/stm8s_adc2.c: 387: }
; genEndFunction
	Sstm8s_adc2$ADC2_ClearITPendingBit$403 ==.
	XG$ADC2_ClearITPendingBit$0$0 ==.
	ret
	Sstm8s_adc2$ADC2_ClearITPendingBit$404 ==.
	.area CODE
	.area CONST
Fstm8s_adc2$__str_0$0_0$0 == .
	.area CONST
___str_0:
	.ascii "../SPL/src/stm8s_adc2.c"
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
	.ascii "../SPL/src/stm8s_adc2.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$0)
	.db	3
	.sleb128	53
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$2-Sstm8s_adc2$ADC2_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$3-Sstm8s_adc2$ADC2_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$4-Sstm8s_adc2$ADC2_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$5-Sstm8s_adc2$ADC2_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$6-Sstm8s_adc2$ADC2_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_DeInit$7-Sstm8s_adc2$ADC2_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_DeInit$8-Sstm8s_adc2$ADC2_DeInit$7
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$10)
	.db	3
	.sleb128	82
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$12-Sstm8s_adc2$ADC2_Init$10
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$20-Sstm8s_adc2$ADC2_Init$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$42-Sstm8s_adc2$ADC2_Init$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$56-Sstm8s_adc2$ADC2_Init$42
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$64-Sstm8s_adc2$ADC2_Init$56
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$72-Sstm8s_adc2$ADC2_Init$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$80-Sstm8s_adc2$ADC2_Init$72
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$103-Sstm8s_adc2$ADC2_Init$80
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$111-Sstm8s_adc2$ADC2_Init$103
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$116-Sstm8s_adc2$ADC2_Init$111
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$119-Sstm8s_adc2$ADC2_Init$116
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$123-Sstm8s_adc2$ADC2_Init$119
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$127-Sstm8s_adc2$ADC2_Init$123
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Init$128-Sstm8s_adc2$ADC2_Init$127
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_Init$129-Sstm8s_adc2$ADC2_Init$128
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$131)
	.db	3
	.sleb128	120
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$133-Sstm8s_adc2$ADC2_Cmd$131
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$141-Sstm8s_adc2$ADC2_Cmd$133
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$142-Sstm8s_adc2$ADC2_Cmd$141
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$144-Sstm8s_adc2$ADC2_Cmd$142
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$147-Sstm8s_adc2$ADC2_Cmd$144
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_Cmd$149-Sstm8s_adc2$ADC2_Cmd$147
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_Cmd$150-Sstm8s_adc2$ADC2_Cmd$149
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$152)
	.db	3
	.sleb128	140
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$154-Sstm8s_adc2$ADC2_ITConfig$152
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$162-Sstm8s_adc2$ADC2_ITConfig$154
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$163-Sstm8s_adc2$ADC2_ITConfig$162
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$165-Sstm8s_adc2$ADC2_ITConfig$163
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$168-Sstm8s_adc2$ADC2_ITConfig$165
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ITConfig$170-Sstm8s_adc2$ADC2_ITConfig$168
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ITConfig$171-Sstm8s_adc2$ADC2_ITConfig$170
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$173)
	.db	3
	.sleb128	163
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$175-Sstm8s_adc2$ADC2_PrescalerConfig$173
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$189-Sstm8s_adc2$ADC2_PrescalerConfig$175
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$190-Sstm8s_adc2$ADC2_PrescalerConfig$189
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_PrescalerConfig$191-Sstm8s_adc2$ADC2_PrescalerConfig$190
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_PrescalerConfig$192-Sstm8s_adc2$ADC2_PrescalerConfig$191
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$194)
	.db	3
	.sleb128	182
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$197-Sstm8s_adc2$ADC2_SchmittTriggerConfig$194
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$220-Sstm8s_adc2$ADC2_SchmittTriggerConfig$197
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$228-Sstm8s_adc2$ADC2_SchmittTriggerConfig$220
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$229-Sstm8s_adc2$ADC2_SchmittTriggerConfig$228
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$231-Sstm8s_adc2$ADC2_SchmittTriggerConfig$229
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$233-Sstm8s_adc2$ADC2_SchmittTriggerConfig$231
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$234-Sstm8s_adc2$ADC2_SchmittTriggerConfig$233
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$237-Sstm8s_adc2$ADC2_SchmittTriggerConfig$234
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$238-Sstm8s_adc2$ADC2_SchmittTriggerConfig$237
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$240-Sstm8s_adc2$ADC2_SchmittTriggerConfig$238
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$241-Sstm8s_adc2$ADC2_SchmittTriggerConfig$240
	.db	3
	.sleb128	-9
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$242-Sstm8s_adc2$ADC2_SchmittTriggerConfig$241
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$246-Sstm8s_adc2$ADC2_SchmittTriggerConfig$242
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$248-Sstm8s_adc2$ADC2_SchmittTriggerConfig$246
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$251-Sstm8s_adc2$ADC2_SchmittTriggerConfig$248
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$253-Sstm8s_adc2$ADC2_SchmittTriggerConfig$251
	.db	3
	.sleb128	-16
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$254-Sstm8s_adc2$ADC2_SchmittTriggerConfig$253
	.db	3
	.sleb128	23
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$258-Sstm8s_adc2$ADC2_SchmittTriggerConfig$254
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$260-Sstm8s_adc2$ADC2_SchmittTriggerConfig$258
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$263-Sstm8s_adc2$ADC2_SchmittTriggerConfig$260
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_SchmittTriggerConfig$265-Sstm8s_adc2$ADC2_SchmittTriggerConfig$263
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_SchmittTriggerConfig$267-Sstm8s_adc2$ADC2_SchmittTriggerConfig$265
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$269)
	.db	3
	.sleb128	235
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$272-Sstm8s_adc2$ADC2_ConversionConfig$269
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$280-Sstm8s_adc2$ADC2_ConversionConfig$272
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$302-Sstm8s_adc2$ADC2_ConversionConfig$280
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$310-Sstm8s_adc2$ADC2_ConversionConfig$302
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$311-Sstm8s_adc2$ADC2_ConversionConfig$310
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$312-Sstm8s_adc2$ADC2_ConversionConfig$311
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$313-Sstm8s_adc2$ADC2_ConversionConfig$312
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$315-Sstm8s_adc2$ADC2_ConversionConfig$313
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$318-Sstm8s_adc2$ADC2_ConversionConfig$315
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$320-Sstm8s_adc2$ADC2_ConversionConfig$318
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$321-Sstm8s_adc2$ADC2_ConversionConfig$320
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ConversionConfig$322-Sstm8s_adc2$ADC2_ConversionConfig$321
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ConversionConfig$324-Sstm8s_adc2$ADC2_ConversionConfig$322
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$326)
	.db	3
	.sleb128	274
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$328-Sstm8s_adc2$ADC2_ExternalTriggerConfig$326
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$336-Sstm8s_adc2$ADC2_ExternalTriggerConfig$328
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$344-Sstm8s_adc2$ADC2_ExternalTriggerConfig$336
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$345-Sstm8s_adc2$ADC2_ExternalTriggerConfig$344
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$347-Sstm8s_adc2$ADC2_ExternalTriggerConfig$345
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$350-Sstm8s_adc2$ADC2_ExternalTriggerConfig$347
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$352-Sstm8s_adc2$ADC2_ExternalTriggerConfig$350
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ExternalTriggerConfig$353-Sstm8s_adc2$ADC2_ExternalTriggerConfig$352
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ExternalTriggerConfig$354-Sstm8s_adc2$ADC2_ExternalTriggerConfig$353
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$356)
	.db	3
	.sleb128	307
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_StartConversion$358-Sstm8s_adc2$ADC2_StartConversion$356
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_StartConversion$359-Sstm8s_adc2$ADC2_StartConversion$358
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_StartConversion$360-Sstm8s_adc2$ADC2_StartConversion$359
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$362)
	.db	3
	.sleb128	319
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$365-Sstm8s_adc2$ADC2_GetConversionValue$362
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$367-Sstm8s_adc2$ADC2_GetConversionValue$365
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$368-Sstm8s_adc2$ADC2_GetConversionValue$367
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$369-Sstm8s_adc2$ADC2_GetConversionValue$368
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$372-Sstm8s_adc2$ADC2_GetConversionValue$369
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$373-Sstm8s_adc2$ADC2_GetConversionValue$372
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$374-Sstm8s_adc2$ADC2_GetConversionValue$373
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$376-Sstm8s_adc2$ADC2_GetConversionValue$374
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetConversionValue$377-Sstm8s_adc2$ADC2_GetConversionValue$376
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_GetConversionValue$379-Sstm8s_adc2$ADC2_GetConversionValue$377
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$381)
	.db	3
	.sleb128	351
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$383-Sstm8s_adc2$ADC2_GetFlagStatus$381
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetFlagStatus$384-Sstm8s_adc2$ADC2_GetFlagStatus$383
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_GetFlagStatus$385-Sstm8s_adc2$ADC2_GetFlagStatus$384
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$387)
	.db	3
	.sleb128	362
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ClearFlag$389-Sstm8s_adc2$ADC2_ClearFlag$387
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ClearFlag$390-Sstm8s_adc2$ADC2_ClearFlag$389
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ClearFlag$391-Sstm8s_adc2$ADC2_ClearFlag$390
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$393)
	.db	3
	.sleb128	373
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetITStatus$395-Sstm8s_adc2$ADC2_GetITStatus$393
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_GetITStatus$396-Sstm8s_adc2$ADC2_GetITStatus$395
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_GetITStatus$397-Sstm8s_adc2$ADC2_GetITStatus$396
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$399)
	.db	3
	.sleb128	383
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$401-Sstm8s_adc2$ADC2_ClearITPendingBit$399
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_adc2$ADC2_ClearITPendingBit$402-Sstm8s_adc2$ADC2_ClearITPendingBit$401
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_adc2$ADC2_ClearITPendingBit$403-Sstm8s_adc2$ADC2_ClearITPendingBit$402
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$400)
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$404)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$394)
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$398)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$388)
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$392)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$382)
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$386)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$378)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$380)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$364)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$378)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$363)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$364)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$357)
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$361)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$343)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$355)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$342)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$343)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$341)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$342)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$340)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$341)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$339)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$340)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$338)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$339)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$337)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$338)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$335)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$337)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$334)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$335)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$333)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$334)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$332)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$333)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$331)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$332)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$330)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$331)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$329)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$330)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$327)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$329)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$323)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$325)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$309)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$323)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$308)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$309)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$307)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$308)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$306)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$307)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$305)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$306)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$304)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$305)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$303)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$304)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$301)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$303)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$300)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$301)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$299)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$300)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$298)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$299)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$297)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$298)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$296)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$297)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$295)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$296)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$294)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$295)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$293)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$294)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$292)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$293)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$291)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$292)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$290)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$291)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$289)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$290)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$288)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$289)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$287)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$288)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$286)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$287)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$285)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$286)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$284)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$285)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$283)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$284)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$282)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$283)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$281)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$282)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$279)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$281)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$278)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$279)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$277)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$278)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$276)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$277)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$275)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$276)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$274)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$275)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$273)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$274)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$271)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$273)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$270)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$271)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$266)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$268)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$256)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$266)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$255)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$256)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$244)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$255)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$243)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$244)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$227)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$243)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$226)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$227)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$225)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$226)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$224)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$225)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$223)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$224)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$222)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$223)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$221)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$222)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$219)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$221)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$218)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$219)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$217)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$218)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$216)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$217)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$215)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$216)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$214)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$215)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$213)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$214)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$212)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$213)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$211)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$212)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$210)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$211)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$209)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$210)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$208)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$209)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$207)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$208)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$206)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$207)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$205)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$206)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$204)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$205)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$203)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$204)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$202)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$203)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$201)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$202)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$200)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$201)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$199)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$200)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$198)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$199)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$196)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$198)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$195)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$196)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$188)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$193)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$187)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$188)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$186)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$187)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$185)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$186)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$184)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$185)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$183)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$184)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$182)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$183)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$181)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$182)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$180)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$181)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$179)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$180)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$178)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$179)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$177)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$178)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$176)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$177)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$174)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$176)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$161)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$172)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$160)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$161)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$159)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$160)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$158)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$159)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$157)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$158)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$156)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$157)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$155)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$156)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$153)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$155)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$140)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$151)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$139)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$140)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$138)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$139)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$137)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$138)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$136)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$137)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$135)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$136)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$134)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$135)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$132)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$134)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_Init$126)
	.dw	0,(Sstm8s_adc2$ADC2_Init$130)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$125)
	.dw	0,(Sstm8s_adc2$ADC2_Init$126)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_Init$124)
	.dw	0,(Sstm8s_adc2$ADC2_Init$125)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$122)
	.dw	0,(Sstm8s_adc2$ADC2_Init$124)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$121)
	.dw	0,(Sstm8s_adc2$ADC2_Init$122)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_Init$120)
	.dw	0,(Sstm8s_adc2$ADC2_Init$121)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$118)
	.dw	0,(Sstm8s_adc2$ADC2_Init$120)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$117)
	.dw	0,(Sstm8s_adc2$ADC2_Init$118)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$115)
	.dw	0,(Sstm8s_adc2$ADC2_Init$117)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$114)
	.dw	0,(Sstm8s_adc2$ADC2_Init$115)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$113)
	.dw	0,(Sstm8s_adc2$ADC2_Init$114)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_adc2$ADC2_Init$112)
	.dw	0,(Sstm8s_adc2$ADC2_Init$113)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$110)
	.dw	0,(Sstm8s_adc2$ADC2_Init$112)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$109)
	.dw	0,(Sstm8s_adc2$ADC2_Init$110)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Init$108)
	.dw	0,(Sstm8s_adc2$ADC2_Init$109)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Init$107)
	.dw	0,(Sstm8s_adc2$ADC2_Init$108)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Init$106)
	.dw	0,(Sstm8s_adc2$ADC2_Init$107)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$105)
	.dw	0,(Sstm8s_adc2$ADC2_Init$106)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$104)
	.dw	0,(Sstm8s_adc2$ADC2_Init$105)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$102)
	.dw	0,(Sstm8s_adc2$ADC2_Init$104)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$101)
	.dw	0,(Sstm8s_adc2$ADC2_Init$102)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Init$100)
	.dw	0,(Sstm8s_adc2$ADC2_Init$101)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Init$99)
	.dw	0,(Sstm8s_adc2$ADC2_Init$100)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Init$98)
	.dw	0,(Sstm8s_adc2$ADC2_Init$99)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$97)
	.dw	0,(Sstm8s_adc2$ADC2_Init$98)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$96)
	.dw	0,(Sstm8s_adc2$ADC2_Init$97)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$95)
	.dw	0,(Sstm8s_adc2$ADC2_Init$96)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$94)
	.dw	0,(Sstm8s_adc2$ADC2_Init$95)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$93)
	.dw	0,(Sstm8s_adc2$ADC2_Init$94)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$92)
	.dw	0,(Sstm8s_adc2$ADC2_Init$93)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$91)
	.dw	0,(Sstm8s_adc2$ADC2_Init$92)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$90)
	.dw	0,(Sstm8s_adc2$ADC2_Init$91)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$89)
	.dw	0,(Sstm8s_adc2$ADC2_Init$90)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$88)
	.dw	0,(Sstm8s_adc2$ADC2_Init$89)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$87)
	.dw	0,(Sstm8s_adc2$ADC2_Init$88)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$86)
	.dw	0,(Sstm8s_adc2$ADC2_Init$87)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$85)
	.dw	0,(Sstm8s_adc2$ADC2_Init$86)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$84)
	.dw	0,(Sstm8s_adc2$ADC2_Init$85)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$83)
	.dw	0,(Sstm8s_adc2$ADC2_Init$84)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$82)
	.dw	0,(Sstm8s_adc2$ADC2_Init$83)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$81)
	.dw	0,(Sstm8s_adc2$ADC2_Init$82)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$79)
	.dw	0,(Sstm8s_adc2$ADC2_Init$81)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$78)
	.dw	0,(Sstm8s_adc2$ADC2_Init$79)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Init$77)
	.dw	0,(Sstm8s_adc2$ADC2_Init$78)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Init$76)
	.dw	0,(Sstm8s_adc2$ADC2_Init$77)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Init$75)
	.dw	0,(Sstm8s_adc2$ADC2_Init$76)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$74)
	.dw	0,(Sstm8s_adc2$ADC2_Init$75)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$73)
	.dw	0,(Sstm8s_adc2$ADC2_Init$74)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$71)
	.dw	0,(Sstm8s_adc2$ADC2_Init$73)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$70)
	.dw	0,(Sstm8s_adc2$ADC2_Init$71)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Init$69)
	.dw	0,(Sstm8s_adc2$ADC2_Init$70)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Init$68)
	.dw	0,(Sstm8s_adc2$ADC2_Init$69)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Init$67)
	.dw	0,(Sstm8s_adc2$ADC2_Init$68)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$66)
	.dw	0,(Sstm8s_adc2$ADC2_Init$67)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$65)
	.dw	0,(Sstm8s_adc2$ADC2_Init$66)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$63)
	.dw	0,(Sstm8s_adc2$ADC2_Init$65)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$62)
	.dw	0,(Sstm8s_adc2$ADC2_Init$63)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Init$61)
	.dw	0,(Sstm8s_adc2$ADC2_Init$62)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Init$60)
	.dw	0,(Sstm8s_adc2$ADC2_Init$61)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Init$59)
	.dw	0,(Sstm8s_adc2$ADC2_Init$60)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$58)
	.dw	0,(Sstm8s_adc2$ADC2_Init$59)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$57)
	.dw	0,(Sstm8s_adc2$ADC2_Init$58)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$55)
	.dw	0,(Sstm8s_adc2$ADC2_Init$57)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$54)
	.dw	0,(Sstm8s_adc2$ADC2_Init$55)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Init$53)
	.dw	0,(Sstm8s_adc2$ADC2_Init$54)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Init$52)
	.dw	0,(Sstm8s_adc2$ADC2_Init$53)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Init$51)
	.dw	0,(Sstm8s_adc2$ADC2_Init$52)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$50)
	.dw	0,(Sstm8s_adc2$ADC2_Init$51)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$49)
	.dw	0,(Sstm8s_adc2$ADC2_Init$50)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$48)
	.dw	0,(Sstm8s_adc2$ADC2_Init$49)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$47)
	.dw	0,(Sstm8s_adc2$ADC2_Init$48)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$46)
	.dw	0,(Sstm8s_adc2$ADC2_Init$47)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$45)
	.dw	0,(Sstm8s_adc2$ADC2_Init$46)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$44)
	.dw	0,(Sstm8s_adc2$ADC2_Init$45)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$43)
	.dw	0,(Sstm8s_adc2$ADC2_Init$44)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$41)
	.dw	0,(Sstm8s_adc2$ADC2_Init$43)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$40)
	.dw	0,(Sstm8s_adc2$ADC2_Init$41)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Init$39)
	.dw	0,(Sstm8s_adc2$ADC2_Init$40)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Init$38)
	.dw	0,(Sstm8s_adc2$ADC2_Init$39)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Init$37)
	.dw	0,(Sstm8s_adc2$ADC2_Init$38)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$36)
	.dw	0,(Sstm8s_adc2$ADC2_Init$37)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$35)
	.dw	0,(Sstm8s_adc2$ADC2_Init$36)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$34)
	.dw	0,(Sstm8s_adc2$ADC2_Init$35)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$33)
	.dw	0,(Sstm8s_adc2$ADC2_Init$34)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$32)
	.dw	0,(Sstm8s_adc2$ADC2_Init$33)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
	.dw	0,(Sstm8s_adc2$ADC2_Init$32)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$30)
	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$29)
	.dw	0,(Sstm8s_adc2$ADC2_Init$30)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$28)
	.dw	0,(Sstm8s_adc2$ADC2_Init$29)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
	.dw	0,(Sstm8s_adc2$ADC2_Init$28)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$24)
	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
	.dw	0,(Sstm8s_adc2$ADC2_Init$24)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_adc2$ADC2_Init$17)
	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
	.dw	0,(Sstm8s_adc2$ADC2_Init$17)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$9)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
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
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
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
	.uleb128	3
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
	.uleb128	9
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
	.uleb128	12
	.uleb128	38
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
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
	.uleb128	6
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
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	2
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
	.ascii "../SPL/src/stm8s_adc2.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.1.0 #12072"
	.db	0
	.uleb128	2
	.ascii "ADC2_DeInit"
	.db	0
	.dw	0,(_ADC2_DeInit)
	.dw	0,(XG$ADC2_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+2876)
	.uleb128	3
	.dw	0,343
	.ascii "ADC2_Init"
	.db	0
	.dw	0,(_ADC2_Init)
	.dw	0,(XG$ADC2_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1620)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_ConversionMode"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "ADC2_Channel"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC2_PrescalerSelection"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "ADC2_ExtTrigger"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ADC2_ExtTriggerState"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "ADC2_Align"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "ADC2_SchmittTriggerChannel"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "ADC2_SchmittTriggerState"
	.db	0
	.dw	0,343
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,423
	.ascii "ADC2_Cmd"
	.db	0
	.dw	0,(_ADC2_Cmd)
	.dw	0,(XG$ADC2_Cmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1516)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,343
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$143)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$145)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$146)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$148)
	.uleb128	0
	.uleb128	3
	.dw	0,491
	.ascii "ADC2_ITConfig"
	.db	0
	.dw	0,(_ADC2_ITConfig)
	.dw	0,(XG$ADC2_ITConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1412)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,343
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$164)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$166)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$167)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$169)
	.uleb128	0
	.uleb128	3
	.dw	0,554
	.ascii "ADC2_PrescalerConfig"
	.db	0
	.dw	0,(_ADC2_PrescalerConfig)
	.dw	0,(XG$ADC2_PrescalerConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1236)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_Prescaler"
	.db	0
	.dw	0,343
	.uleb128	0
	.uleb128	3
	.dw	0,731
	.ascii "ADC2_SchmittTriggerConfig"
	.db	0
	.dw	0,(_ADC2_SchmittTriggerConfig)
	.dw	0,(XG$ADC2_SchmittTriggerConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+796)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_SchmittTriggerChannel"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "NewState"
	.db	0
	.dw	0,343
	.uleb128	7
	.dw	0,678
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$230)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$232)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$235)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$236)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$239)
	.uleb128	0
	.uleb128	7
	.dw	0,706
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$245)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$247)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$249)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$250)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$252)
	.uleb128	0
	.uleb128	8
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$257)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$259)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$261)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$262)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$264)
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,858
	.ascii "ADC2_ConversionConfig"
	.db	0
	.dw	0,(_ADC2_ConversionConfig)
	.dw	0,(XG$ADC2_ConversionConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+332)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_ConversionMode"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "ADC2_Channel"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "ADC2_Align"
	.db	0
	.dw	0,343
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$314)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$316)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$317)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$319)
	.uleb128	0
	.uleb128	3
	.dw	0,963
	.ascii "ADC2_ExternalTriggerConfig"
	.db	0
	.dw	0,(_ADC2_ExternalTriggerConfig)
	.dw	0,(XG$ADC2_ExternalTriggerConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+144)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "ADC2_ExtTrigger"
	.db	0
	.dw	0,343
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "NewState"
	.db	0
	.dw	0,343
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$346)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$348)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$349)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$351)
	.uleb128	0
	.uleb128	2
	.ascii "ADC2_StartConversion"
	.db	0
	.dw	0,(_ADC2_StartConversion)
	.dw	0,(XG$ADC2_StartConversion$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+124)
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	9
	.dw	0,1110
	.ascii "ADC2_GetConversionValue"
	.db	0
	.dw	0,(_ADC2_GetConversionValue)
	.dw	0,(XG$ADC2_GetConversionValue$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.dw	0,998
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$366)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$370)
	.uleb128	6
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$371)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$375)
	.uleb128	10
	.db	6
	.db	84
	.db	147
	.uleb128	1
	.db	83
	.db	147
	.uleb128	1
	.ascii "temph"
	.db	0
	.dw	0,998
	.uleb128	10
	.db	1
	.db	80
	.ascii "templ"
	.db	0
	.dw	0,343
	.uleb128	0
	.uleb128	11
	.ascii "ADC2_GetFlagStatus"
	.db	0
	.dw	0,(_ADC2_GetFlagStatus)
	.dw	0,(XG$ADC2_GetFlagStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.dw	0,343
	.uleb128	2
	.ascii "ADC2_ClearFlag"
	.db	0
	.dw	0,(_ADC2_ClearFlag)
	.dw	0,(XG$ADC2_ClearFlag$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	11
	.ascii "ADC2_GetITStatus"
	.db	0
	.dw	0,(_ADC2_GetITStatus)
	.dw	0,(XG$ADC2_GetITStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,343
	.uleb128	2
	.ascii "ADC2_ClearITPendingBit"
	.db	0
	.dw	0,(_ADC2_ClearITPendingBit)
	.dw	0,(XG$ADC2_ClearITPendingBit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	12
	.dw	0,343
	.uleb128	13
	.dw	0,1266
	.db	24
	.dw	0,1248
	.uleb128	14
	.db	23
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(___str_0)
	.ascii "__str_0"
	.db	0
	.dw	0,1253
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
	.dw	0,67
	.ascii "ADC2_DeInit"
	.db	0
	.dw	0,93
	.ascii "ADC2_Init"
	.db	0
	.dw	0,360
	.ascii "ADC2_Cmd"
	.db	0
	.dw	0,423
	.ascii "ADC2_ITConfig"
	.db	0
	.dw	0,491
	.ascii "ADC2_PrescalerConfig"
	.db	0
	.dw	0,554
	.ascii "ADC2_SchmittTriggerConfig"
	.db	0
	.dw	0,731
	.ascii "ADC2_ConversionConfig"
	.db	0
	.dw	0,858
	.ascii "ADC2_ExternalTriggerConfig"
	.db	0
	.dw	0,963
	.ascii "ADC2_StartConversion"
	.db	0
	.dw	0,1014
	.ascii "ADC2_GetConversionValue"
	.db	0
	.dw	0,1110
	.ascii "ADC2_GetFlagStatus"
	.db	0
	.dw	0,1147
	.ascii "ADC2_ClearFlag"
	.db	0
	.dw	0,1176
	.ascii "ADC2_GetITStatus"
	.db	0
	.dw	0,1211
	.ascii "ADC2_ClearITPendingBit"
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
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$400)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ClearITPendingBit$404-Sstm8s_adc2$ADC2_ClearITPendingBit$400
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ClearITPendingBit$400)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$394)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_GetITStatus$398-Sstm8s_adc2$ADC2_GetITStatus$394
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetITStatus$394)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$388)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ClearFlag$392-Sstm8s_adc2$ADC2_ClearFlag$388
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ClearFlag$388)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$382)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_GetFlagStatus$386-Sstm8s_adc2$ADC2_GetFlagStatus$382
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetFlagStatus$382)
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
	.dw	0,33
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$363)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_GetConversionValue$380-Sstm8s_adc2$ADC2_GetConversionValue$363
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$363)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$364)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_GetConversionValue$378)
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
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$357)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_StartConversion$361-Sstm8s_adc2$ADC2_StartConversion$357
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_StartConversion$357)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
Ldebug_CIE6_start:
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
Ldebug_CIE6_end:
	.dw	0,117
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$327)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ExternalTriggerConfig$355-Sstm8s_adc2$ADC2_ExternalTriggerConfig$327
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$327)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$329)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$330)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$331)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$332)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$333)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$334)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$335)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$337)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$338)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$339)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$340)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$341)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$342)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ExternalTriggerConfig$343)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
Ldebug_CIE7_start:
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
Ldebug_CIE7_end:
	.dw	0,278
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$270)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ConversionConfig$325-Sstm8s_adc2$ADC2_ConversionConfig$270
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$270)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$271)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$273)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$274)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$275)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$276)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$277)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$278)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$279)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$281)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$282)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$283)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$284)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$285)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$286)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$287)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$288)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$289)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$290)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$291)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$292)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$293)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$294)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$295)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$296)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$297)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$298)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$299)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$300)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$301)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$303)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$304)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$305)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$306)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$307)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$308)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$309)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ConversionConfig$323)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
Ldebug_CIE8_start:
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
Ldebug_CIE8_end:
	.dw	0,264
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$195)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_SchmittTriggerConfig$268-Sstm8s_adc2$ADC2_SchmittTriggerConfig$195
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$195)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$196)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$198)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$199)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$200)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$201)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$202)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$203)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$204)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$205)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$206)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$207)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$208)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$209)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$210)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$211)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$212)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$213)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$214)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$215)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$216)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$217)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$218)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$219)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$221)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$222)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$223)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$224)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$225)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$226)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$227)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$243)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$244)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$255)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$256)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_SchmittTriggerConfig$266)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
Ldebug_CIE9_start:
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
Ldebug_CIE9_end:
	.dw	0,110
	.dw	0,(Ldebug_CIE9_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$174)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_PrescalerConfig$193-Sstm8s_adc2$ADC2_PrescalerConfig$174
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$174)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$176)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$177)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$178)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$179)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$180)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$181)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$182)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$183)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$184)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$185)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$186)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$187)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_PrescalerConfig$188)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
Ldebug_CIE10_start:
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
Ldebug_CIE10_end:
	.dw	0,68
	.dw	0,(Ldebug_CIE10_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$153)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_ITConfig$172-Sstm8s_adc2$ADC2_ITConfig$153
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$153)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$155)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$156)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$157)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$158)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$159)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$160)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_ITConfig$161)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
Ldebug_CIE11_start:
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
Ldebug_CIE11_end:
	.dw	0,68
	.dw	0,(Ldebug_CIE11_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$132)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_Cmd$151-Sstm8s_adc2$ADC2_Cmd$132
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$132)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$134)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$135)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$136)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$137)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$138)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$139)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Cmd$140)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
Ldebug_CIE12_start:
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
Ldebug_CIE12_end:
	.dw	0,740
	.dw	0,(Ldebug_CIE12_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_Init$11)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_Init$130-Sstm8s_adc2$ADC2_Init$11
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$11)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$14)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$15)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$16)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$17)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$18)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$19)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$21)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$22)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$23)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$24)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$25)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$26)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$27)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$28)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$29)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$30)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$31)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$32)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$33)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$34)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$35)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$36)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$37)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$38)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$39)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$40)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$41)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$43)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$44)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$45)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$46)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$47)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$48)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$49)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$50)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$51)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$52)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$53)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$54)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$55)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$57)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$58)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$59)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$60)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$61)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$62)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$63)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$65)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$66)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$67)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$68)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$69)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$70)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$71)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$73)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$74)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$75)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$76)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$77)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$78)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$79)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$81)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$82)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$83)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$84)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$85)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$86)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$87)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$88)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$89)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$90)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$91)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$92)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$93)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$94)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$95)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$96)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$97)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$98)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$99)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$100)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$101)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$102)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$104)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$105)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$106)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$107)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$108)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$109)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$110)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$112)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$113)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$114)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$115)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$117)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$118)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$120)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$121)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$122)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$124)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$125)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_Init$126)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
Ldebug_CIE13_start:
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
Ldebug_CIE13_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE13_start-4)
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)	;initial loc
	.dw	0,Sstm8s_adc2$ADC2_DeInit$9-Sstm8s_adc2$ADC2_DeInit$1
	.db	1
	.dw	0,(Sstm8s_adc2$ADC2_DeInit$1)
	.db	14
	.uleb128	2
