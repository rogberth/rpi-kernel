
bootstrap.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <init>:
   0:	e10f0000 	mrs	r0, CPSR
   4:	e3c000ff 	bic	r0, r0, #255	; 0xff
   8:	e38000c2 	orr	r0, r0, #194	; 0xc2
   c:	e121f000 	msr	CPSR_c, r0
  10:	e3a0da02 	mov	sp, #8192	; 0x2000
  14:	e10f0000 	mrs	r0, CPSR
  18:	e3c000ff 	bic	r0, r0, #255	; 0xff
  1c:	e3800013 	orr	r0, r0, #19
  20:	e129f000 	msr	CPSR_fc, r0
  24:	e3a0d902 	mov	sp, #32768	; 0x8000
  28:	eafffffe 	b	0 <kmain>
  2c:	eaffffff 	b	30 <hang$>

00000030 <hang$>:
  30:	eafffffe 	b	30 <hang$>

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00001341 	andeq	r1, r0, r1, asr #6
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000009 	andeq	r0, r0, r9
  10:	01080106 	tsteq	r8, r6, lsl #2
