
kernel.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <init_entry_point>:
    8000:	e59ff018 	ldr	pc, [pc, #24]	; 8020 <reset_handler>
    8004:	e59ff018 	ldr	pc, [pc, #24]	; 8024 <basic_handler>
    8008:	e59ff01c 	ldr	pc, [pc, #28]	; 802c <basic_handler_swi>
    800c:	e59ff010 	ldr	pc, [pc, #16]	; 8024 <basic_handler>
    8010:	e59ff00c 	ldr	pc, [pc, #12]	; 8024 <basic_handler>
    8014:	e59ff008 	ldr	pc, [pc, #8]	; 8024 <basic_handler>
    8018:	e59ff008 	ldr	pc, [pc, #8]	; 8028 <basic_handler_irq>
    801c:	e59ff000 	ldr	pc, [pc]	; 8024 <basic_handler>

00008020 <reset_handler>:
    8020:	00008038 	andeq	r8, r0, r8, lsr r0

00008024 <basic_handler>:
    8024:	00008060 	andeq	r8, r0, r0, rrx

00008028 <basic_handler_irq>:
    8028:	0000805c 	andeq	r8, r0, ip, asr r0

0000802c <basic_handler_swi>:
    802c:	00008070 	andeq	r8, r0, r0, ror r0

00008030 <return_addr>:
    8030:	00000000 	andeq	r0, r0, r0

00008034 <saved_cpsr>:
    8034:	00000000 	andeq	r0, r0, r0

00008038 <reset>:
    8038:	e3a00902 	mov	r0, #32768	; 0x8000
    803c:	e3a01000 	mov	r1, #0
    8040:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    8044:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    8048:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    804c:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    8050:	ea000030 	b	8118 <init>
    8054:	e12fff1e 	bx	lr

00008058 <hang>:
    8058:	eafffffe 	b	8058 <hang>

0000805c <arm_interrupt_handler_irq>:
    805c:	ea000475 	b	9238 <irq_handler>

00008060 <arm_interrupt_handler>:
    8060:	e24ee004 	sub	lr, lr, #4
    8064:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    8068:	ebffffed 	bl	8024 <basic_handler>
    806c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

00008070 <arm_interrupt_handler_swi>:
    8070:	e3350001 	teq	r5, #1
    8074:	0a000751 	beq	9dc0 <swi_svmode>
    8078:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    807c:	e3350000 	teq	r5, #0
    8080:	0a000003 	beq	8094 <swi_case_0>
    8084:	e3350002 	teq	r5, #2
    8088:	0a000003 	beq	809c <swi_case_2>
    808c:	e3350003 	teq	r5, #3
    8090:	0a000003 	beq	80a4 <swi_case_3>

00008094 <swi_case_0>:
    8094:	eb000719 	bl	9d00 <swi_writer>
    8098:	ea000003 	b	80ac <arm_swi_end>

0000809c <swi_case_2>:
    809c:	eb000787 	bl	9ec0 <swi_endTask>
    80a0:	ea000001 	b	80ac <arm_swi_end>

000080a4 <swi_case_3>:
    80a4:	eb0007aa 	bl	9f54 <swi_addTask>
    80a8:	eaffffff 	b	80ac <arm_swi_end>

000080ac <arm_swi_end>:
    80ac:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

000080b0 <armLoadContext>:
    80b0:	e59f0044 	ldr	r0, [pc, #68]	; 80fc <armClearScreenloop+0x18>
    80b4:	e5900000 	ldr	r0, [r0]
    80b8:	e2400044 	sub	r0, r0, #68	; 0x44
    80bc:	e5901000 	ldr	r1, [r0]
    80c0:	e2800004 	add	r0, r0, #4
    80c4:	e129f001 	msr	CPSR_fc, r1
    80c8:	e890ffff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr, pc}

000080cc <armRun>:
    80cc:	e369f010 	msr	SPSR_fc, #16
    80d0:	e92d0001 	stmfd	sp!, {r0}
    80d4:	e8dd8000 	ldm	sp, {pc}^

000080d8 <armClearScreen>:
    80d8:	e3a01000 	mov	r1, #0
    80dc:	e5902024 	ldr	r2, [r0, #36]	; 0x24
    80e0:	e5900020 	ldr	r0, [r0, #32]

000080e4 <armClearScreenloop>:
    80e4:	e5801000 	str	r1, [r0]
    80e8:	e2800004 	add	r0, r0, #4
    80ec:	e2422004 	sub	r2, r2, #4
    80f0:	e3520000 	cmp	r2, #0
    80f4:	1afffffa 	bne	80e4 <armClearScreenloop>
    80f8:	e1a0f00e 	mov	pc, lr
    80fc:	0000ad44 	andeq	sl, r0, r4, asr #26
    8100:	00001541 	andeq	r1, r0, r1, asr #10
    8104:	61656100 	cmnvs	r5, r0, lsl #2
    8108:	01006962 	tsteq	r0, r2, ror #18
    810c:	0000000b 	andeq	r0, r0, fp
    8110:	01080206 	tsteq	r8, r6, lsl #4
    8114:	00000109 	andeq	r0, r0, r9, lsl #2

00008118 <init>:
    8118:	e10f0000 	mrs	r0, CPSR
    811c:	e3c000ff 	bic	r0, r0, #255	; 0xff
    8120:	e38000c2 	orr	r0, r0, #194	; 0xc2
    8124:	e121f000 	msr	CPSR_c, r0
    8128:	e3a0da02 	mov	sp, #8192	; 0x2000
    812c:	e10f0000 	mrs	r0, CPSR
    8130:	e3c000ff 	bic	r0, r0, #255	; 0xff
    8134:	e3800013 	orr	r0, r0, #19
    8138:	e129f000 	msr	CPSR_fc, r0
    813c:	e3a0d902 	mov	sp, #32768	; 0x8000
    8140:	ea00087c 	b	a338 <kmain>
    8144:	eaffffff 	b	8148 <hang$>

00008148 <hang$>:
    8148:	eafffffe 	b	8148 <hang$>
    814c:	00001341 	andeq	r1, r0, r1, asr #6
    8150:	61656100 	cmnvs	r5, r0, lsl #2
    8154:	01006962 	tsteq	r0, r2, ror #18
    8158:	00000009 	andeq	r0, r0, r9
    815c:	01080106 	tsteq	r8, r6, lsl #2

00008160 <_Z6divideiiPiS_.part.0>:
    8160:	e3500000 	cmp	r0, #0
    8164:	b2600000 	rsblt	r0, r0, #0
    8168:	e3510000 	cmp	r1, #0
    816c:	b2611000 	rsblt	r1, r1, #0
    8170:	e3a0c000 	mov	ip, #0
    8174:	e1500001 	cmp	r0, r1
    8178:	e582c000 	str	ip, [r2]
    817c:	e92d0030 	push	{r4, r5}
    8180:	e583c000 	str	ip, [r3]
    8184:	ba00000d 	blt	81c0 <_Z6divideiiPiS_.part.0+0x60>
    8188:	e5924000 	ldr	r4, [r2]
    818c:	e1a0c001 	mov	ip, r1
    8190:	e2844001 	add	r4, r4, #1
    8194:	e08cc001 	add	ip, ip, r1
    8198:	e150000c 	cmp	r0, ip
    819c:	e1a05004 	mov	r5, r4
    81a0:	e2844001 	add	r4, r4, #1
    81a4:	aafffffa 	bge	8194 <_Z6divideiiPiS_.part.0+0x34>
    81a8:	e5825000 	str	r5, [r2]
    81ac:	e06cc000 	rsb	ip, ip, r0
    81b0:	e08c1001 	add	r1, ip, r1
    81b4:	e5831000 	str	r1, [r3]
    81b8:	e8bd0030 	pop	{r4, r5}
    81bc:	e12fff1e 	bx	lr
    81c0:	e1a0c001 	mov	ip, r1
    81c4:	eafffff8 	b	81ac <_Z6divideiiPiS_.part.0+0x4c>

000081c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>:
    81c8:	e3500009 	cmp	r0, #9
    81cc:	9a00000c 	bls	8204 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2+0x3c>
    81d0:	e3a03000 	mov	r3, #0
    81d4:	e240000a 	sub	r0, r0, #10
    81d8:	e3500009 	cmp	r0, #9
    81dc:	e2833001 	add	r3, r3, #1
    81e0:	8afffffb 	bhi	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2+0xc>
    81e4:	e1a03103 	lsl	r3, r3, #2
    81e8:	e2833202 	add	r3, r3, #536870912	; 0x20000000
    81ec:	e2833602 	add	r3, r3, #2097152	; 0x200000
    81f0:	e5932000 	ldr	r2, [r3]
    81f4:	e0800080 	add	r0, r0, r0, lsl #1
    81f8:	e1821011 	orr	r1, r2, r1, lsl r0
    81fc:	e5831000 	str	r1, [r3]
    8200:	e12fff1e 	bx	lr
    8204:	e59f3000 	ldr	r3, [pc]	; 820c <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2+0x44>
    8208:	eafffff8 	b	81f0 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2+0x28>
    820c:	20200000 	eorcs	r0, r0, r0

00008210 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>:
    8210:	e350001f 	cmp	r0, #31
    8214:	8a000003 	bhi	8228 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x18>
    8218:	e3510000 	cmp	r1, #0
    821c:	0a00000f 	beq	8260 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x50>
    8220:	e59f3040 	ldr	r3, [pc, #64]	; 8268 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x58>
    8224:	ea000003 	b	8238 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x28>
    8228:	e3510000 	cmp	r1, #0
    822c:	0a000005 	beq	8248 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x38>
    8230:	e59f3034 	ldr	r3, [pc, #52]	; 826c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x5c>
    8234:	e2400020 	sub	r0, r0, #32
    8238:	e3a02001 	mov	r2, #1
    823c:	e1a00012 	lsl	r0, r2, r0
    8240:	e5830000 	str	r0, [r3]
    8244:	e12fff1e 	bx	lr
    8248:	e59f2020 	ldr	r2, [pc, #32]	; 8270 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x60>
    824c:	e2400020 	sub	r0, r0, #32
    8250:	e3a03001 	mov	r3, #1
    8254:	e1a00013 	lsl	r0, r3, r0
    8258:	e5820000 	str	r0, [r2]
    825c:	e12fff1e 	bx	lr
    8260:	e59f200c 	ldr	r2, [pc, #12]	; 8274 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x64>
    8264:	eafffff9 	b	8250 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x40>
    8268:	2020001c 	eorcs	r0, r0, ip, lsl r0
    826c:	20200020 	eorcs	r0, r0, r0, lsr #32
    8270:	2020002c 	eorcs	r0, r0, ip, lsr #32
    8274:	20200028 	eorcs	r0, r0, r8, lsr #32

00008278 <_Z3absi>:
    8278:	e3500000 	cmp	r0, #0
    827c:	b2600000 	rsblt	r0, r0, #0
    8280:	e12fff1e 	bx	lr

00008284 <_Z15getNumberLengthiiPi>:
    8284:	e3a03000 	mov	r3, #0
    8288:	e5823000 	str	r3, [r2]
    828c:	e3a02001 	mov	r2, #1
    8290:	ea000000 	b	8298 <_Z15getNumberLengthiiPi+0x14>
    8294:	e1a02003 	mov	r2, r3
    8298:	e0030291 	mul	r3, r1, r2
    829c:	e1530000 	cmp	r3, r0
    82a0:	bafffffb 	blt	8294 <_Z15getNumberLengthiiPi+0x10>
    82a4:	e1a00002 	mov	r0, r2
    82a8:	e12fff1e 	bx	lr

000082ac <_Z15getNumberLengthii>:
    82ac:	e3a02001 	mov	r2, #1
    82b0:	ea000000 	b	82b8 <_Z15getNumberLengthii+0xc>
    82b4:	e1a02003 	mov	r2, r3
    82b8:	e0030192 	mul	r3, r2, r1
    82bc:	e1500003 	cmp	r0, r3
    82c0:	cafffffb 	bgt	82b4 <_Z15getNumberLengthii+0x8>
    82c4:	e1a00002 	mov	r0, r2
    82c8:	e12fff1e 	bx	lr

000082cc <_Z15getNumberLengthi>:
    82cc:	e3a03001 	mov	r3, #1
    82d0:	ea000000 	b	82d8 <_Z15getNumberLengthi+0xc>
    82d4:	e1a03002 	mov	r3, r2
    82d8:	e0832103 	add	r2, r3, r3, lsl #2
    82dc:	e1a02082 	lsl	r2, r2, #1
    82e0:	e1500002 	cmp	r0, r2
    82e4:	cafffffa 	bgt	82d4 <_Z15getNumberLengthi+0x8>
    82e8:	e1a00003 	mov	r0, r3
    82ec:	e12fff1e 	bx	lr

000082f0 <_Z6divideiiPiS_>:
    82f0:	e251c000 	subs	ip, r1, #0
    82f4:	e92d0070 	push	{r4, r5, r6}
    82f8:	e1a04003 	mov	r4, r3
    82fc:	0a000005 	beq	8318 <_Z6divideiiPiS_+0x28>
    8300:	e35c0001 	cmp	ip, #1
    8304:	03a03000 	moveq	r3, #0
    8308:	05820000 	streq	r0, [r2]
    830c:	05843000 	streq	r3, [r4]
    8310:	18bd0070 	popne	{r4, r5, r6}
    8314:	1affff91 	bne	8160 <_Z6divideiiPiS_.part.0>
    8318:	e8bd0070 	pop	{r4, r5, r6}
    831c:	e12fff1e 	bx	lr

00008320 <_Z6divideii>:
    8320:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8324:	e3a03000 	mov	r3, #0
    8328:	e24dd00c 	sub	sp, sp, #12
    832c:	e2512000 	subs	r2, r1, #0
    8330:	e58d3000 	str	r3, [sp]
    8334:	e58d3004 	str	r3, [sp, #4]
    8338:	e1a03000 	mov	r3, r0
    833c:	01a00002 	moveq	r0, r2
    8340:	0a000006 	beq	8360 <_Z6divideii+0x40>
    8344:	e3520001 	cmp	r2, #1
    8348:	01a00003 	moveq	r0, r3
    834c:	0a000003 	beq	8360 <_Z6divideii+0x40>
    8350:	e1a0200d 	mov	r2, sp
    8354:	e28d3004 	add	r3, sp, #4
    8358:	ebffff80 	bl	8160 <_Z6divideiiPiS_.part.0>
    835c:	e59d0000 	ldr	r0, [sp]
    8360:	e28dd00c 	add	sp, sp, #12
    8364:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    8368:	e12fff1e 	bx	lr

0000836c <_Z6moduloii>:
    836c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8370:	e3a03000 	mov	r3, #0
    8374:	e24dd00c 	sub	sp, sp, #12
    8378:	e3510001 	cmp	r1, #1
    837c:	e58d3000 	str	r3, [sp]
    8380:	e58d3004 	str	r3, [sp, #4]
    8384:	91a00003 	movls	r0, r3
    8388:	9a000003 	bls	839c <_Z6moduloii+0x30>
    838c:	e1a0200d 	mov	r2, sp
    8390:	e28d3004 	add	r3, sp, #4
    8394:	ebffff71 	bl	8160 <_Z6divideiiPiS_.part.0>
    8398:	e59d0004 	ldr	r0, [sp, #4]
    839c:	e28dd00c 	add	sp, sp, #12
    83a0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    83a4:	e12fff1e 	bx	lr

000083a8 <_Z5allocj>:
    83a8:	e59f3074 	ldr	r3, [pc, #116]	; 8424 <_Z5allocj+0x7c>
    83ac:	e5933000 	ldr	r3, [r3]
    83b0:	e5d32004 	ldrb	r2, [r3, #4]
    83b4:	e3520000 	cmp	r2, #0
    83b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    83bc:	e1a0c000 	mov	ip, r0
    83c0:	0a000003 	beq	83d4 <_Z5allocj+0x2c>
    83c4:	e5933000 	ldr	r3, [r3]
    83c8:	e5d32004 	ldrb	r2, [r3, #4]
    83cc:	e3520000 	cmp	r2, #0
    83d0:	1afffffb 	bne	83c4 <_Z5allocj+0x1c>
    83d4:	e5932008 	ldr	r2, [r3, #8]
    83d8:	e593000c 	ldr	r0, [r3, #12]
    83dc:	e35c0000 	cmp	ip, #0
    83e0:	e0820100 	add	r0, r2, r0, lsl #2
    83e4:	e3a01000 	mov	r1, #0
    83e8:	e583c40c 	str	ip, [r3, #1036]	; 0x40c
    83ec:	e5830408 	str	r0, [r3, #1032]	; 0x408
    83f0:	e5c31404 	strb	r1, [r3, #1028]	; 0x404
    83f4:	e2834b01 	add	r4, r3, #1024	; 0x400
    83f8:	1080c10c 	addne	ip, r0, ip, lsl #2
    83fc:	11a02000 	movne	r2, r0
    8400:	0a000002 	beq	8410 <_Z5allocj+0x68>
    8404:	e4821004 	str	r1, [r2], #4
    8408:	e152000c 	cmp	r2, ip
    840c:	1afffffc 	bne	8404 <_Z5allocj+0x5c>
    8410:	e3a02001 	mov	r2, #1
    8414:	e5834000 	str	r4, [r3]
    8418:	e5c32004 	strb	r2, [r3, #4]
    841c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    8420:	e12fff1e 	bx	lr
    8424:	0000ad2c 	andeq	sl, r0, ip, lsr #26

00008428 <_Z15init_page_tablev>:
    8428:	e59f0018 	ldr	r0, [pc, #24]	; 8448 <_Z15init_page_tablev+0x20>
    842c:	e3a0380f 	mov	r3, #983040	; 0xf0000
    8430:	e3a01000 	mov	r1, #0
    8434:	e3a02aff 	mov	r2, #1044480	; 0xff000
    8438:	e5803000 	str	r3, [r0]
    843c:	e5c31004 	strb	r1, [r3, #4]
    8440:	e5832008 	str	r2, [r3, #8]
    8444:	e12fff1e 	bx	lr
    8448:	0000ad2c 	andeq	sl, r0, ip, lsr #26

0000844c <_Z10irq_enablev>:
    844c:	e59f300c 	ldr	r3, [pc, #12]	; 8460 <_Z10irq_enablev+0x14>
    8450:	e3a0281e 	mov	r2, #1966080	; 0x1e0000
    8454:	e5832214 	str	r2, [r3, #532]	; 0x214
    8458:	e3a00001 	mov	r0, #1
    845c:	e12fff1e 	bx	lr
    8460:	2000b000 	andcs	fp, r0, r0

00008464 <_Z11irq_disablev>:
    8464:	e59f300c 	ldr	r3, [pc, #12]	; 8478 <_Z11irq_disablev+0x14>
    8468:	e3a0281e 	mov	r2, #1966080	; 0x1e0000
    846c:	e5832220 	str	r2, [r3, #544]	; 0x220
    8470:	e3a00001 	mov	r0, #1
    8474:	e12fff1e 	bx	lr
    8478:	2000b000 	andcs	fp, r0, r0

0000847c <_Z16irq_enable_timerv>:
    847c:	e59f300c 	ldr	r3, [pc, #12]	; 8490 <_Z16irq_enable_timerv+0x14>
    8480:	e3a02008 	mov	r2, #8
    8484:	e5832210 	str	r2, [r3, #528]	; 0x210
    8488:	e3a00001 	mov	r0, #1
    848c:	e12fff1e 	bx	lr
    8490:	2000b000 	andcs	fp, r0, r0

00008494 <_Z22irq_enable_kerneltimerv>:
    8494:	e59f300c 	ldr	r3, [pc, #12]	; 84a8 <_Z22irq_enable_kerneltimerv+0x14>
    8498:	e3a02002 	mov	r2, #2
    849c:	e5832210 	str	r2, [r3, #528]	; 0x210
    84a0:	e3a00001 	mov	r0, #1
    84a4:	e12fff1e 	bx	lr
    84a8:	2000b000 	andcs	fp, r0, r0

000084ac <_Z17irq_disable_timerv>:
    84ac:	e59f300c 	ldr	r3, [pc, #12]	; 84c0 <_Z17irq_disable_timerv+0x14>
    84b0:	e3a02008 	mov	r2, #8
    84b4:	e583221c 	str	r2, [r3, #540]	; 0x21c
    84b8:	e3a00001 	mov	r0, #1
    84bc:	e12fff1e 	bx	lr
    84c0:	2000b000 	andcs	fp, r0, r0

000084c4 <_Z23irq_disable_kerneltimerv>:
    84c4:	e59f300c 	ldr	r3, [pc, #12]	; 84d8 <_Z23irq_disable_kerneltimerv+0x14>
    84c8:	e3a02002 	mov	r2, #2
    84cc:	e583221c 	str	r2, [r3, #540]	; 0x21c
    84d0:	e3a00001 	mov	r0, #1
    84d4:	e12fff1e 	bx	lr
    84d8:	2000b000 	andcs	fp, r0, r0

000084dc <_ZN12RaspberryLib5GET32Ej>:
    84dc:	e5900000 	ldr	r0, [r0]
    84e0:	e12fff1e 	bx	lr

000084e4 <_ZN12RaspberryLib5PUT32Ejj>:
    84e4:	e5801000 	str	r1, [r0]
    84e8:	e12fff1e 	bx	lr

000084ec <_ZN12RaspberryLib4GET4Ej>:
    84ec:	e5d00000 	ldrb	r0, [r0]
    84f0:	e12fff1e 	bx	lr

000084f4 <_ZN12RaspberryLib4PUT4Ejc>:
    84f4:	e5c01000 	strb	r1, [r0]
    84f8:	e12fff1e 	bx	lr

000084fc <_ZN12RaspberryLib7SetGPIOEjj>:
    84fc:	e59f2064 	ldr	r2, [pc, #100]	; 8568 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
    8500:	e59f3064 	ldr	r3, [pc, #100]	; 856c <_ZN12RaspberryLib7SetGPIOEjj+0x70>
    8504:	e3510001 	cmp	r1, #1
    8508:	11a01002 	movne	r1, r2
    850c:	01a01003 	moveq	r1, r3
    8510:	e350000a 	cmp	r0, #10
    8514:	9a000010 	bls	855c <_ZN12RaspberryLib7SetGPIOEjj+0x60>
    8518:	e3a03000 	mov	r3, #0
    851c:	e240000a 	sub	r0, r0, #10
    8520:	e350000a 	cmp	r0, #10
    8524:	e2833001 	add	r3, r3, #1
    8528:	8afffffb 	bhi	851c <_ZN12RaspberryLib7SetGPIOEjj+0x20>
    852c:	e1a0c103 	lsl	ip, r3, #2
    8530:	e3a02001 	mov	r2, #1
    8534:	e1a03203 	lsl	r3, r3, #4
    8538:	e1a03312 	lsl	r3, r2, r3
    853c:	e28cc202 	add	ip, ip, #536870912	; 0x20000000
    8540:	e28cc602 	add	ip, ip, #2097152	; 0x200000
    8544:	e0800080 	add	r0, r0, r0, lsl #1
    8548:	e3a02001 	mov	r2, #1
    854c:	e1a00012 	lsl	r0, r2, r0
    8550:	e58c0000 	str	r0, [ip]
    8554:	e5813000 	str	r3, [r1]
    8558:	e12fff1e 	bx	lr
    855c:	e59fc00c 	ldr	ip, [pc, #12]	; 8570 <_ZN12RaspberryLib7SetGPIOEjj+0x74>
    8560:	e3a03001 	mov	r3, #1
    8564:	eafffff6 	b	8544 <_ZN12RaspberryLib7SetGPIOEjj+0x48>
    8568:	2020001c 	eorcs	r0, r0, ip, lsl r0
    856c:	20200028 	eorcs	r0, r0, r8, lsr #32
    8570:	20200000 	eorcs	r0, r0, r0

00008574 <_ZN12RaspberryLib15SetGPIOfunctionEjj>:
    8574:	e3500035 	cmp	r0, #53	; 0x35
    8578:	93510007 	cmpls	r1, #7
    857c:	812fff1e 	bxhi	lr
    8580:	eaffff10 	b	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>

00008584 <_ZN12RaspberryLib12SetGPIOvalueEjb>:
    8584:	e3500035 	cmp	r0, #53	; 0x35
    8588:	812fff1e 	bxhi	lr
    858c:	eaffff1f 	b	8210 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>

00008590 <_ZN12RaspberryLib13ReadGPIOvalueEj>:
    8590:	e3500035 	cmp	r0, #53	; 0x35
    8594:	8a000006 	bhi	85b4 <_ZN12RaspberryLib13ReadGPIOvalueEj+0x24>
    8598:	e59f201c 	ldr	r2, [pc, #28]	; 85bc <_ZN12RaspberryLib13ReadGPIOvalueEj+0x2c>
    859c:	e59f301c 	ldr	r3, [pc, #28]	; 85c0 <_ZN12RaspberryLib13ReadGPIOvalueEj+0x30>
    85a0:	e350001f 	cmp	r0, #31
    85a4:	81a00002 	movhi	r0, r2
    85a8:	91a00003 	movls	r0, r3
    85ac:	e5900000 	ldr	r0, [r0]
    85b0:	e12fff1e 	bx	lr
    85b4:	e3a00000 	mov	r0, #0
    85b8:	e12fff1e 	bx	lr
    85bc:	20200038 	eorcs	r0, r0, r8, lsr r0
    85c0:	20200034 	eorcs	r0, r0, r4, lsr r0

000085c4 <_ZN12RaspberryLib6SetLEDEjb>:
    85c4:	e2400001 	sub	r0, r0, #1
    85c8:	e92d4010 	push	{r4, lr}
    85cc:	e1a04001 	mov	r4, r1
    85d0:	e3500005 	cmp	r0, #5
    85d4:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
    85d8:	ea00002f 	b	869c <_ZN12RaspberryLib6SetLEDEjb+0xd8>
    85dc:	00008610 	andeq	r8, r0, r0, lsl r6
    85e0:	0000862c 	andeq	r8, r0, ip, lsr #12
    85e4:	00008648 	andeq	r8, r0, r8, asr #12
    85e8:	00008664 	andeq	r8, r0, r4, ror #12
    85ec:	00008680 	andeq	r8, r0, r0, lsl #13
    85f0:	000085f4 	strdeq	r8, [r0], -r4
    85f4:	e3a0001b 	mov	r0, #27
    85f8:	e3a01001 	mov	r1, #1
    85fc:	ebfffef1 	bl	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    8600:	e1a01004 	mov	r1, r4
    8604:	e3a0001b 	mov	r0, #27
    8608:	e8bd4010 	pop	{r4, lr}
    860c:	eafffeff 	b	8210 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
    8610:	e3a00009 	mov	r0, #9
    8614:	e3a01001 	mov	r1, #1
    8618:	ebfffeea 	bl	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    861c:	e1a01004 	mov	r1, r4
    8620:	e3a00009 	mov	r0, #9
    8624:	e8bd4010 	pop	{r4, lr}
    8628:	eafffef8 	b	8210 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
    862c:	e3a0000a 	mov	r0, #10
    8630:	e3a01001 	mov	r1, #1
    8634:	ebfffee3 	bl	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    8638:	e1a01004 	mov	r1, r4
    863c:	e3a0000a 	mov	r0, #10
    8640:	e8bd4010 	pop	{r4, lr}
    8644:	eafffef1 	b	8210 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
    8648:	e3a0000b 	mov	r0, #11
    864c:	e3a01001 	mov	r1, #1
    8650:	ebfffedc 	bl	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    8654:	e1a01004 	mov	r1, r4
    8658:	e3a0000b 	mov	r0, #11
    865c:	e8bd4010 	pop	{r4, lr}
    8660:	eafffeea 	b	8210 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
    8664:	e3a00011 	mov	r0, #17
    8668:	e3a01001 	mov	r1, #1
    866c:	ebfffed5 	bl	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    8670:	e1a01004 	mov	r1, r4
    8674:	e3a00011 	mov	r0, #17
    8678:	e8bd4010 	pop	{r4, lr}
    867c:	eafffee3 	b	8210 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
    8680:	e3a00016 	mov	r0, #22
    8684:	e3a01001 	mov	r1, #1
    8688:	ebfffece 	bl	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    868c:	e1a01004 	mov	r1, r4
    8690:	e3a00016 	mov	r0, #22
    8694:	e8bd4010 	pop	{r4, lr}
    8698:	eafffedc 	b	8210 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
    869c:	e8bd4010 	pop	{r4, lr}
    86a0:	e12fff1e 	bx	lr

000086a4 <_ZN12RaspberryLib10SetButtonsEb>:
    86a4:	e3500000 	cmp	r0, #0
    86a8:	e59f3010 	ldr	r3, [pc, #16]	; 86c0 <_ZN12RaspberryLib10SetButtonsEb+0x1c>
    86ac:	13a0200c 	movne	r2, #12
    86b0:	05932058 	ldreq	r2, [r3, #88]	; 0x58
    86b4:	15832058 	strne	r2, [r3, #88]	; 0x58
    86b8:	05830058 	streq	r0, [r3, #88]	; 0x58
    86bc:	e12fff1e 	bx	lr
    86c0:	20200000 	eorcs	r0, r0, r0

000086c4 <_ZN12RaspberryLib10TestBuzzerEv>:
    86c4:	e92d4008 	push	{r3, lr}
    86c8:	e3a01001 	mov	r1, #1
    86cc:	e3a00004 	mov	r0, #4
    86d0:	ebfffebc 	bl	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    86d4:	e59f2040 	ldr	r2, [pc, #64]	; 871c <_ZN12RaspberryLib10TestBuzzerEv+0x58>
    86d8:	e3a03010 	mov	r3, #16
    86dc:	e582301c 	str	r3, [r2, #28]
    86e0:	e59f1038 	ldr	r1, [pc, #56]	; 8720 <_ZN12RaspberryLib10TestBuzzerEv+0x5c>
    86e4:	e2511001 	subs	r1, r1, #1
    86e8:	e582301c 	str	r3, [r2, #28]
    86ec:	e59f0028 	ldr	r0, [pc, #40]	; 871c <_ZN12RaspberryLib10TestBuzzerEv+0x58>
    86f0:	e582301c 	str	r3, [r2, #28]
    86f4:	e3a0c010 	mov	ip, #16
    86f8:	e582301c 	str	r3, [r2, #28]
    86fc:	e582301c 	str	r3, [r2, #28]
    8700:	e5823028 	str	r3, [r2, #40]	; 0x28
    8704:	e5823028 	str	r3, [r2, #40]	; 0x28
    8708:	e5823028 	str	r3, [r2, #40]	; 0x28
    870c:	1afffff4 	bne	86e4 <_ZN12RaspberryLib10TestBuzzerEv+0x20>
    8710:	e580c028 	str	ip, [r0, #40]	; 0x28
    8714:	e8bd4008 	pop	{r3, lr}
    8718:	e12fff1e 	bx	lr
    871c:	20200000 	eorcs	r0, r0, r0
    8720:	000186a1 	andeq	r8, r1, r1, lsr #13

00008724 <_ZN12RaspberryLib14setTimerKernelEj>:
    8724:	e59f3028 	ldr	r3, [pc, #40]	; 8754 <_ZN12RaspberryLib14setTimerKernelEj+0x30>
    8728:	e0601280 	rsb	r1, r0, r0, lsl #5
    872c:	e5932004 	ldr	r2, [r3, #4]
    8730:	e0800101 	add	r0, r0, r1, lsl #2
    8734:	e59fc01c 	ldr	ip, [pc, #28]	; 8758 <_ZN12RaspberryLib14setTimerKernelEj+0x34>
    8738:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    873c:	e0822180 	add	r2, r2, r0, lsl #3
    8740:	e3a04001 	mov	r4, #1
    8744:	e5832010 	str	r2, [r3, #16]
    8748:	e5cc4004 	strb	r4, [ip, #4]
    874c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    8750:	e12fff1e 	bx	lr
    8754:	20003000 	andcs	r3, r0, r0
    8758:	0000ad2c 	andeq	sl, r0, ip, lsr #26

0000875c <_ZN12RaspberryLib8setTimerEj>:
    875c:	e59f3028 	ldr	r3, [pc, #40]	; 878c <_ZN12RaspberryLib8setTimerEj+0x30>
    8760:	e0601280 	rsb	r1, r0, r0, lsl #5
    8764:	e5932004 	ldr	r2, [r3, #4]
    8768:	e0800101 	add	r0, r0, r1, lsl #2
    876c:	e59fc01c 	ldr	ip, [pc, #28]	; 8790 <_ZN12RaspberryLib8setTimerEj+0x34>
    8770:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    8774:	e0822180 	add	r2, r2, r0, lsl #3
    8778:	e3a04001 	mov	r4, #1
    877c:	e5832018 	str	r2, [r3, #24]
    8780:	e5cc4005 	strb	r4, [ip, #5]
    8784:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    8788:	e12fff1e 	bx	lr
    878c:	20003000 	andcs	r3, r0, r0
    8790:	0000ad2c 	andeq	sl, r0, ip, lsr #26

00008794 <_ZN12RaspberryLib12CheckCounterEv>:
    8794:	e59f3004 	ldr	r3, [pc, #4]	; 87a0 <_ZN12RaspberryLib12CheckCounterEv+0xc>
    8798:	e5930004 	ldr	r0, [r3, #4]
    879c:	e12fff1e 	bx	lr
    87a0:	20003000 	andcs	r3, r0, r0

000087a4 <_ZN12RaspberryLib9WaitQuickEj>:
    87a4:	e59f2014 	ldr	r2, [pc, #20]	; 87c0 <_ZN12RaspberryLib9WaitQuickEj+0x1c>
    87a8:	e5923004 	ldr	r3, [r2, #4]
    87ac:	e0800003 	add	r0, r0, r3
    87b0:	e5923004 	ldr	r3, [r2, #4]
    87b4:	e1500003 	cmp	r0, r3
    87b8:	8afffffc 	bhi	87b0 <_ZN12RaspberryLib9WaitQuickEj+0xc>
    87bc:	e12fff1e 	bx	lr
    87c0:	20003000 	andcs	r3, r0, r0

000087c4 <_ZN12RaspberryLib4WaitEj>:
    87c4:	e59f101c 	ldr	r1, [pc, #28]	; 87e8 <_ZN12RaspberryLib4WaitEj+0x24>
    87c8:	e0602280 	rsb	r2, r0, r0, lsl #5
    87cc:	e5913004 	ldr	r3, [r1, #4]
    87d0:	e0800102 	add	r0, r0, r2, lsl #2
    87d4:	e0832180 	add	r2, r3, r0, lsl #3
    87d8:	e5913004 	ldr	r3, [r1, #4]
    87dc:	e1520003 	cmp	r2, r3
    87e0:	8afffffc 	bhi	87d8 <_ZN12RaspberryLib4WaitEj+0x14>
    87e4:	e12fff1e 	bx	lr
    87e8:	20003000 	andcs	r3, r0, r0

000087ec <_ZN12RaspberryLib5BlinkEjj>:
    87ec:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    87f0:	e2506000 	subs	r6, r0, #0
    87f4:	0a000016 	beq	8854 <_ZN12RaspberryLib5BlinkEjj+0x68>
    87f8:	e0613281 	rsb	r3, r1, r1, lsl #5
    87fc:	e0811103 	add	r1, r1, r3, lsl #2
    8800:	e59f4054 	ldr	r4, [pc, #84]	; 885c <_ZN12RaspberryLib5BlinkEjj+0x70>
    8804:	e1a07181 	lsl	r7, r1, #3
    8808:	e3a00010 	mov	r0, #16
    880c:	e3a01001 	mov	r1, #1
    8810:	ebffff39 	bl	84fc <_ZN12RaspberryLib7SetGPIOEjj>
    8814:	e5942004 	ldr	r2, [r4, #4]
    8818:	e0872002 	add	r2, r7, r2
    881c:	e5943004 	ldr	r3, [r4, #4]
    8820:	e1520003 	cmp	r2, r3
    8824:	e59f5030 	ldr	r5, [pc, #48]	; 885c <_ZN12RaspberryLib5BlinkEjj+0x70>
    8828:	8afffffb 	bhi	881c <_ZN12RaspberryLib5BlinkEjj+0x30>
    882c:	e3a00010 	mov	r0, #16
    8830:	e3a01000 	mov	r1, #0
    8834:	ebffff30 	bl	84fc <_ZN12RaspberryLib7SetGPIOEjj>
    8838:	e5952004 	ldr	r2, [r5, #4]
    883c:	e0872002 	add	r2, r7, r2
    8840:	e5943004 	ldr	r3, [r4, #4]
    8844:	e1520003 	cmp	r2, r3
    8848:	8afffffc 	bhi	8840 <_ZN12RaspberryLib5BlinkEjj+0x54>
    884c:	e2566001 	subs	r6, r6, #1
    8850:	1affffec 	bne	8808 <_ZN12RaspberryLib5BlinkEjj+0x1c>
    8854:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    8858:	e12fff1e 	bx	lr
    885c:	20003000 	andcs	r3, r0, r0

00008860 <_ZN12RaspberryLib7PiFaultEPKc>:
    8860:	e3a00004 	mov	r0, #4
    8864:	e3a010c8 	mov	r1, #200	; 0xc8
    8868:	eaffffdf 	b	87ec <_ZN12RaspberryLib5BlinkEjj>

0000886c <_ZN12RaspberryLib12MailboxWriteEcj>:
    886c:	e59f203c 	ldr	r2, [pc, #60]	; 88b0 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
    8870:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
    8874:	e3530000 	cmp	r3, #0
    8878:	bafffffc 	blt	8870 <_ZN12RaspberryLib12MailboxWriteEcj+0x4>
    887c:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    8880:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    8884:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    8888:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    888c:	e59f301c 	ldr	r3, [pc, #28]	; 88b0 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
    8890:	e3c1100f 	bic	r1, r1, #15
    8894:	e1800001 	orr	r0, r0, r1
    8898:	e58308a0 	str	r0, [r3, #2208]	; 0x8a0
    889c:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    88a0:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    88a4:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    88a8:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    88ac:	e12fff1e 	bx	lr
    88b0:	2000b000 	andcs	fp, r0, r0

000088b4 <_ZN12RaspberryLib12MailboxCheckEc>:
    88b4:	e92d4010 	push	{r4, lr}
    88b8:	e59f2070 	ldr	r2, [pc, #112]	; 8930 <_ZN12RaspberryLib12MailboxCheckEc+0x7c>
    88bc:	e59f4070 	ldr	r4, [pc, #112]	; 8934 <_ZN12RaspberryLib12MailboxCheckEc+0x80>
    88c0:	e3a01000 	mov	r1, #0
    88c4:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
    88c8:	e3130101 	tst	r3, #1073741824	; 0x40000000
    88cc:	1a00000e 	bne	890c <_ZN12RaspberryLib12MailboxCheckEc+0x58>
    88d0:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    88d4:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    88d8:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    88dc:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    88e0:	e5923880 	ldr	r3, [r2, #2176]	; 0x880
    88e4:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    88e8:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    88ec:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    88f0:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    88f4:	e203c00f 	and	ip, r3, #15
    88f8:	e15c0000 	cmp	ip, r0
    88fc:	1afffff0 	bne	88c4 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
    8900:	e3c3000f 	bic	r0, r3, #15
    8904:	e8bd4010 	pop	{r4, lr}
    8908:	e12fff1e 	bx	lr
    890c:	e1510004 	cmp	r1, r4
    8910:	e2811001 	add	r1, r1, #1
    8914:	9affffea 	bls	88c4 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
    8918:	e3a00004 	mov	r0, #4
    891c:	e3a010c8 	mov	r1, #200	; 0xc8
    8920:	ebffffb1 	bl	87ec <_ZN12RaspberryLib5BlinkEjj>
    8924:	e3e00000 	mvn	r0, #0
    8928:	e8bd4010 	pop	{r4, lr}
    892c:	e12fff1e 	bx	lr
    8930:	2000b000 	andcs	fp, r0, r0
    8934:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>

00008938 <_ZN12RaspberryLib18AcquireFrameBufferEjj>:
    8938:	e3a03a02 	mov	r3, #8192	; 0x2000
    893c:	e3a02000 	mov	r2, #0
    8940:	e3a0c018 	mov	ip, #24
    8944:	e92d4010 	push	{r4, lr}
    8948:	e8830003 	stm	r3, {r0, r1}
    894c:	e5830008 	str	r0, [r3, #8]
    8950:	e583100c 	str	r1, [r3, #12]
    8954:	e583c014 	str	ip, [r3, #20]
    8958:	e5832010 	str	r2, [r3, #16]
    895c:	e5832018 	str	r2, [r3, #24]
    8960:	e583201c 	str	r2, [r3, #28]
    8964:	e5832020 	str	r2, [r3, #32]
    8968:	e5832024 	str	r2, [r3, #36]	; 0x24
    896c:	e5c32028 	strb	r2, [r3, #40]	; 0x28
    8970:	e3a00001 	mov	r0, #1
    8974:	e59f107c 	ldr	r1, [pc, #124]	; 89f8 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xc0>
    8978:	ebffffbb 	bl	886c <_ZN12RaspberryLib12MailboxWriteEcj>
    897c:	e59f4078 	ldr	r4, [pc, #120]	; 89fc <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xc4>
    8980:	e3a00001 	mov	r0, #1
    8984:	ebffffca 	bl	88b4 <_ZN12RaspberryLib12MailboxCheckEc>
    8988:	e3500000 	cmp	r0, #0
    898c:	0a000011 	beq	89d8 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa0>
    8990:	e2544001 	subs	r4, r4, #1
    8994:	2afffff9 	bcs	8980 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x48>
    8998:	e3a03a02 	mov	r3, #8192	; 0x2000
    899c:	e5932020 	ldr	r2, [r3, #32]
    89a0:	e3520000 	cmp	r2, #0
    89a4:	0a00000d 	beq	89e0 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa8>
    89a8:	e5931010 	ldr	r1, [r3, #16]
    89ac:	e3510000 	cmp	r1, #0
    89b0:	0a00000a 	beq	89e0 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa8>
    89b4:	e3520101 	cmp	r2, #1073741824	; 0x40000000
    89b8:	e3a01001 	mov	r1, #1
    89bc:	e5c31028 	strb	r1, [r3, #40]	; 0x28
    89c0:	82822103 	addhi	r2, r2, #-1073741824	; 0xc0000000
    89c4:	e3a03a02 	mov	r3, #8192	; 0x2000
    89c8:	e3a00a02 	mov	r0, #8192	; 0x2000
    89cc:	e5832020 	str	r2, [r3, #32]
    89d0:	e8bd4010 	pop	{r4, lr}
    89d4:	e12fff1e 	bx	lr
    89d8:	e3540000 	cmp	r4, #0
    89dc:	1affffed 	bne	8998 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
    89e0:	e3a00004 	mov	r0, #4
    89e4:	e3a010c8 	mov	r1, #200	; 0xc8
    89e8:	ebffff7f 	bl	87ec <_ZN12RaspberryLib5BlinkEjj>
    89ec:	e3a00a02 	mov	r0, #8192	; 0x2000
    89f0:	e8bd4010 	pop	{r4, lr}
    89f4:	e12fff1e 	bx	lr
    89f8:	40002000 	andmi	r2, r0, r0
    89fc:	00002710 	andeq	r2, r0, r0, lsl r7

00008a00 <_ZN11gpu2dCanvas15initFrameBufferEv>:
    8a00:	e5901004 	ldr	r1, [r0, #4]
    8a04:	e92d4010 	push	{r4, lr}
    8a08:	e2811101 	add	r1, r1, #1073741824	; 0x40000000
    8a0c:	e1a04000 	mov	r4, r0
    8a10:	e3a00001 	mov	r0, #1
    8a14:	ebffff94 	bl	886c <_ZN12RaspberryLib12MailboxWriteEcj>
    8a18:	e3a00001 	mov	r0, #1
    8a1c:	ebffffa4 	bl	88b4 <_ZN12RaspberryLib12MailboxCheckEc>
    8a20:	e3500000 	cmp	r0, #0
    8a24:	1afffffb 	bne	8a18 <_ZN11gpu2dCanvas15initFrameBufferEv+0x18>
    8a28:	e5943004 	ldr	r3, [r4, #4]
    8a2c:	e5930020 	ldr	r0, [r3, #32]
    8a30:	e3500000 	cmp	r0, #0
    8a34:	0a000009 	beq	8a60 <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
    8a38:	e5932010 	ldr	r2, [r3, #16]
    8a3c:	e3520000 	cmp	r2, #0
    8a40:	01a00002 	moveq	r0, r2
    8a44:	0a000005 	beq	8a60 <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
    8a48:	e3500101 	cmp	r0, #1073741824	; 0x40000000
    8a4c:	82800103 	addhi	r0, r0, #-1073741824	; 0xc0000000
    8a50:	e3a02001 	mov	r2, #1
    8a54:	e5830020 	str	r0, [r3, #32]
    8a58:	e5c42000 	strb	r2, [r4]
    8a5c:	e1a00002 	mov	r0, r2
    8a60:	e8bd4010 	pop	{r4, lr}
    8a64:	e12fff1e 	bx	lr

00008a68 <_ZN11gpu2dCanvasC1Ebjj>:
    8a68:	e92d4038 	push	{r3, r4, r5, lr}
    8a6c:	e3510000 	cmp	r1, #0
    8a70:	e1a04000 	mov	r4, r0
    8a74:	e3a0c000 	mov	ip, #0
    8a78:	e3a00a02 	mov	r0, #8192	; 0x2000
    8a7c:	e5840004 	str	r0, [r4, #4]
    8a80:	e5c41002 	strb	r1, [r4, #2]
    8a84:	e5c4c000 	strb	ip, [r4]
    8a88:	e880000c 	stm	r0, {r2, r3}
    8a8c:	11a03083 	lslne	r3, r3, #1
    8a90:	e5802008 	str	r2, [r0, #8]
    8a94:	e580300c 	str	r3, [r0, #12]
    8a98:	e3a05000 	mov	r5, #0
    8a9c:	e3a03a02 	mov	r3, #8192	; 0x2000
    8aa0:	e3a02018 	mov	r2, #24
    8aa4:	e5832014 	str	r2, [r3, #20]
    8aa8:	e5835018 	str	r5, [r3, #24]
    8aac:	e583501c 	str	r5, [r3, #28]
    8ab0:	e5835010 	str	r5, [r3, #16]
    8ab4:	e5835020 	str	r5, [r3, #32]
    8ab8:	e5835024 	str	r5, [r3, #36]	; 0x24
    8abc:	e1a00004 	mov	r0, r4
    8ac0:	ebffffce 	bl	8a00 <_ZN11gpu2dCanvas15initFrameBufferEv>
    8ac4:	e1500005 	cmp	r0, r5
    8ac8:	15c45001 	strbne	r5, [r4, #1]
    8acc:	e1a00004 	mov	r0, r4
    8ad0:	e8bd4038 	pop	{r3, r4, r5, lr}
    8ad4:	e12fff1e 	bx	lr

00008ad8 <_ZN11gpu2dCanvasC1Ev>:
    8ad8:	e92d4010 	push	{r4, lr}
    8adc:	e24dd008 	sub	sp, sp, #8
    8ae0:	e1a04000 	mov	r4, r0
    8ae4:	e3a01001 	mov	r1, #1
    8ae8:	e1a0000d 	mov	r0, sp
    8aec:	e3a02b01 	mov	r2, #1024	; 0x400
    8af0:	e3a03c03 	mov	r3, #768	; 0x300
    8af4:	ebffffdb 	bl	8a68 <_ZN11gpu2dCanvasC1Ebjj>
    8af8:	e1a00004 	mov	r0, r4
    8afc:	e28dd008 	add	sp, sp, #8
    8b00:	e8bd4010 	pop	{r4, lr}
    8b04:	e12fff1e 	bx	lr

00008b08 <_ZN11gpu2dCanvas4DrawEv.part.6>:
    8b08:	e5d03001 	ldrb	r3, [r0, #1]
    8b0c:	e3530000 	cmp	r3, #0
    8b10:	e5903004 	ldr	r3, [r0, #4]
    8b14:	05932004 	ldreq	r2, [r3, #4]
    8b18:	e92d4010 	push	{r4, lr}
    8b1c:	13a02000 	movne	r2, #0
    8b20:	e1a04000 	mov	r4, r0
    8b24:	e583201c 	str	r2, [r3, #28]
    8b28:	ebffffb4 	bl	8a00 <_ZN11gpu2dCanvas15initFrameBufferEv>
    8b2c:	e5d43001 	ldrb	r3, [r4, #1]
    8b30:	e2233001 	eor	r3, r3, #1
    8b34:	e5c43001 	strb	r3, [r4, #1]
    8b38:	e8bd4010 	pop	{r4, lr}
    8b3c:	e12fff1e 	bx	lr

00008b40 <_ZN11gpu2dCanvas4DrawEv>:
    8b40:	e5d02000 	ldrb	r2, [r0]
    8b44:	e3520000 	cmp	r2, #0
    8b48:	012fff1e 	bxeq	lr
    8b4c:	e5d03002 	ldrb	r3, [r0, #2]
    8b50:	e3530000 	cmp	r3, #0
    8b54:	012fff1e 	bxeq	lr
    8b58:	eaffffea 	b	8b08 <_ZN11gpu2dCanvas4DrawEv.part.6>

00008b5c <_ZN11gpu2dCanvas5ClearEj>:
    8b5c:	e5d03000 	ldrb	r3, [r0]
    8b60:	e3530000 	cmp	r3, #0
    8b64:	e92d03f0 	push	{r4, r5, r6, r7, r8, r9}
    8b68:	0a000028 	beq	8c10 <_ZN11gpu2dCanvas5ClearEj+0xb4>
    8b6c:	e5d03001 	ldrb	r3, [r0, #1]
    8b70:	e3530000 	cmp	r3, #0
    8b74:	0a000027 	beq	8c18 <_ZN11gpu2dCanvas5ClearEj+0xbc>
    8b78:	e5902004 	ldr	r2, [r0, #4]
    8b7c:	e5923004 	ldr	r3, [r2, #4]
    8b80:	e3a08000 	mov	r8, #0
    8b84:	e20148ff 	and	r4, r1, #16711680	; 0xff0000
    8b88:	e2015cff 	and	r5, r1, #65280	; 0xff00
    8b8c:	e3530000 	cmp	r3, #0
    8b90:	e1a04824 	lsr	r4, r4, #16
    8b94:	e1a05425 	lsr	r5, r5, #8
    8b98:	e20160ff 	and	r6, r1, #255	; 0xff
    8b9c:	0a00001b 	beq	8c10 <_ZN11gpu2dCanvas5ClearEj+0xb4>
    8ba0:	e3a07000 	mov	r7, #0
    8ba4:	e5923000 	ldr	r3, [r2]
    8ba8:	e3530000 	cmp	r3, #0
    8bac:	0a000013 	beq	8c00 <_ZN11gpu2dCanvas5ClearEj+0xa4>
    8bb0:	e087c008 	add	ip, r7, r8
    8bb4:	e3a03000 	mov	r3, #0
    8bb8:	e5929010 	ldr	r9, [r2, #16]
    8bbc:	e0831083 	add	r1, r3, r3, lsl #1
    8bc0:	e0211c99 	mla	r1, r9, ip, r1
    8bc4:	e5922020 	ldr	r2, [r2, #32]
    8bc8:	e7c16002 	strb	r6, [r1, r2]
    8bcc:	e5902004 	ldr	r2, [r0, #4]
    8bd0:	e5922020 	ldr	r2, [r2, #32]
    8bd4:	e0812002 	add	r2, r1, r2
    8bd8:	e5c25001 	strb	r5, [r2, #1]
    8bdc:	e5902004 	ldr	r2, [r0, #4]
    8be0:	e5922020 	ldr	r2, [r2, #32]
    8be4:	e0811002 	add	r1, r1, r2
    8be8:	e5c14002 	strb	r4, [r1, #2]
    8bec:	e5902004 	ldr	r2, [r0, #4]
    8bf0:	e5921000 	ldr	r1, [r2]
    8bf4:	e2833001 	add	r3, r3, #1
    8bf8:	e1510003 	cmp	r1, r3
    8bfc:	8affffed 	bhi	8bb8 <_ZN11gpu2dCanvas5ClearEj+0x5c>
    8c00:	e5923004 	ldr	r3, [r2, #4]
    8c04:	e2877001 	add	r7, r7, #1
    8c08:	e1530007 	cmp	r3, r7
    8c0c:	8affffe4 	bhi	8ba4 <_ZN11gpu2dCanvas5ClearEj+0x48>
    8c10:	e8bd03f0 	pop	{r4, r5, r6, r7, r8, r9}
    8c14:	e12fff1e 	bx	lr
    8c18:	e5d03002 	ldrb	r3, [r0, #2]
    8c1c:	e3530000 	cmp	r3, #0
    8c20:	0affffd4 	beq	8b78 <_ZN11gpu2dCanvas5ClearEj+0x1c>
    8c24:	e5902004 	ldr	r2, [r0, #4]
    8c28:	e5928004 	ldr	r8, [r2, #4]
    8c2c:	e1a03008 	mov	r3, r8
    8c30:	eaffffd3 	b	8b84 <_ZN11gpu2dCanvas5ClearEj+0x28>

00008c34 <_ZN11gpu2dCanvas9ClearFastEv>:
    8c34:	e92d4008 	push	{r3, lr}
    8c38:	e5d03000 	ldrb	r3, [r0]
    8c3c:	e3530000 	cmp	r3, #0
    8c40:	15900004 	ldrne	r0, [r0, #4]
    8c44:	13a01000 	movne	r1, #0
    8c48:	1bfffd22 	blne	80d8 <armClearScreen>
    8c4c:	e8bd4008 	pop	{r3, lr}
    8c50:	e12fff1e 	bx	lr

00008c54 <_ZN11gpu2dCanvas4syncEv>:
    8c54:	e5d03002 	ldrb	r3, [r0, #2]
    8c58:	e3530000 	cmp	r3, #0
    8c5c:	e92d0030 	push	{r4, r5}
    8c60:	0a00001c 	beq	8cd8 <_ZN11gpu2dCanvas4syncEv+0x84>
    8c64:	e5903004 	ldr	r3, [r0, #4]
    8c68:	e5934004 	ldr	r4, [r3, #4]
    8c6c:	e3540000 	cmp	r4, #0
    8c70:	e5d05001 	ldrb	r5, [r0, #1]
    8c74:	0a000017 	beq	8cd8 <_ZN11gpu2dCanvas4syncEv+0x84>
    8c78:	e3a0c000 	mov	ip, #0
    8c7c:	e5932000 	ldr	r2, [r3]
    8c80:	e3520000 	cmp	r2, #0
    8c84:	0a000010 	beq	8ccc <_ZN11gpu2dCanvas4syncEv+0x78>
    8c88:	e3a02000 	mov	r2, #0
    8c8c:	e5931020 	ldr	r1, [r3, #32]
    8c90:	e5933010 	ldr	r3, [r3, #16]
    8c94:	e084400c 	add	r4, r4, ip
    8c98:	e0241493 	mla	r4, r3, r4, r1
    8c9c:	e0211c93 	mla	r1, r3, ip, r1
    8ca0:	e3550000 	cmp	r5, #0
    8ca4:	e0823082 	add	r3, r2, r2, lsl #1
    8ca8:	17d11003 	ldrbne	r1, [r1, r3]
    8cac:	07d44003 	ldrbeq	r4, [r4, r3]
    8cb0:	17c41003 	strbne	r1, [r4, r3]
    8cb4:	07c14003 	strbeq	r4, [r1, r3]
    8cb8:	e5903004 	ldr	r3, [r0, #4]
    8cbc:	e8930012 	ldm	r3, {r1, r4}
    8cc0:	e2822001 	add	r2, r2, #1
    8cc4:	e1510002 	cmp	r1, r2
    8cc8:	8affffef 	bhi	8c8c <_ZN11gpu2dCanvas4syncEv+0x38>
    8ccc:	e28cc001 	add	ip, ip, #1
    8cd0:	e15c0004 	cmp	ip, r4
    8cd4:	3affffe8 	bcc	8c7c <_ZN11gpu2dCanvas4syncEv+0x28>
    8cd8:	e8bd0030 	pop	{r4, r5}
    8cdc:	e12fff1e 	bx	lr

00008ce0 <_ZN11gpu2dCanvas8setPixelEjjj>:
    8ce0:	e5d0c001 	ldrb	ip, [r0, #1]
    8ce4:	e35c0000 	cmp	ip, #0
    8ce8:	e92d0030 	push	{r4, r5}
    8cec:	1a000004 	bne	8d04 <_ZN11gpu2dCanvas8setPixelEjjj+0x24>
    8cf0:	e5d0c002 	ldrb	ip, [r0, #2]
    8cf4:	e35c0000 	cmp	ip, #0
    8cf8:	1590c004 	ldrne	ip, [r0, #4]
    8cfc:	159c5004 	ldrne	r5, [ip, #4]
    8d00:	1a000001 	bne	8d0c <_ZN11gpu2dCanvas8setPixelEjjj+0x2c>
    8d04:	e590c004 	ldr	ip, [r0, #4]
    8d08:	e3a05000 	mov	r5, #0
    8d0c:	e59c4010 	ldr	r4, [ip, #16]
    8d10:	e0852002 	add	r2, r5, r2
    8d14:	e0811081 	add	r1, r1, r1, lsl #1
    8d18:	e0211294 	mla	r1, r4, r2, r1
    8d1c:	e59c2020 	ldr	r2, [ip, #32]
    8d20:	e1a0c823 	lsr	ip, r3, #16
    8d24:	e7c1c002 	strb	ip, [r1, r2]
    8d28:	e5902004 	ldr	r2, [r0, #4]
    8d2c:	e5922020 	ldr	r2, [r2, #32]
    8d30:	e1a0c423 	lsr	ip, r3, #8
    8d34:	e0812002 	add	r2, r1, r2
    8d38:	e5c2c001 	strb	ip, [r2, #1]
    8d3c:	e5902004 	ldr	r2, [r0, #4]
    8d40:	e5922020 	ldr	r2, [r2, #32]
    8d44:	e0811002 	add	r1, r1, r2
    8d48:	e5c13002 	strb	r3, [r1, #2]
    8d4c:	e8bd0030 	pop	{r4, r5}
    8d50:	e12fff1e 	bx	lr

00008d54 <_ZN11gpu2dCanvas8DrawLineEiiiij>:
    8d54:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8d58:	e59da028 	ldr	sl, [sp, #40]	; 0x28
    8d5c:	e062a00a 	rsb	sl, r2, sl
    8d60:	e1a07003 	mov	r7, r3
    8d64:	e1530001 	cmp	r3, r1
    8d68:	e1a0b08a 	lsl	fp, sl, #1
    8d6c:	e0613003 	rsb	r3, r1, r3
    8d70:	e1a06002 	mov	r6, r2
    8d74:	e1a04001 	mov	r4, r1
    8d78:	e1a08000 	mov	r8, r0
    8d7c:	e063500b 	rsb	r5, r3, fp
    8d80:	e59d902c 	ldr	r9, [sp, #44]	; 0x2c
    8d84:	da000017 	ble	8de8 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x94>
    8d88:	e063a00a 	rsb	sl, r3, sl
    8d8c:	e1a0a08a 	lsl	sl, sl, #1
    8d90:	ea000009 	b	8dbc <_ZN11gpu2dCanvas8DrawLineEiiiij+0x68>
    8d94:	e2866001 	add	r6, r6, #1
    8d98:	e1a01004 	mov	r1, r4
    8d9c:	e1a02006 	mov	r2, r6
    8da0:	e1a00008 	mov	r0, r8
    8da4:	e1a03009 	mov	r3, r9
    8da8:	e2844001 	add	r4, r4, #1
    8dac:	ebffffcb 	bl	8ce0 <_ZN11gpu2dCanvas8setPixelEjjj>
    8db0:	e1540007 	cmp	r4, r7
    8db4:	e085500a 	add	r5, r5, sl
    8db8:	0a00000a 	beq	8de8 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x94>
    8dbc:	e3550000 	cmp	r5, #0
    8dc0:	cafffff3 	bgt	8d94 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x40>
    8dc4:	e1a01004 	mov	r1, r4
    8dc8:	e1a00008 	mov	r0, r8
    8dcc:	e1a02006 	mov	r2, r6
    8dd0:	e1a03009 	mov	r3, r9
    8dd4:	e2844001 	add	r4, r4, #1
    8dd8:	ebffffc0 	bl	8ce0 <_ZN11gpu2dCanvas8setPixelEjjj>
    8ddc:	e1540007 	cmp	r4, r7
    8de0:	e085500b 	add	r5, r5, fp
    8de4:	1afffff4 	bne	8dbc <_ZN11gpu2dCanvas8DrawLineEiiiij+0x68>
    8de8:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8dec:	e12fff1e 	bx	lr

00008df0 <_ZN11gpu2dCanvas13DrawCharacterEiicj>:
    8df0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8df4:	e24dd01c 	sub	sp, sp, #28
    8df8:	e28dc008 	add	ip, sp, #8
    8dfc:	e59d8040 	ldr	r8, [sp, #64]	; 0x40
    8e00:	e59fe088 	ldr	lr, [pc, #136]	; 8e90 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0xa0>
    8e04:	e1a06000 	mov	r6, r0
    8e08:	e1a0b001 	mov	fp, r1
    8e0c:	e06c3203 	rsb	r3, ip, r3, lsl #4
    8e10:	e1a0a00c 	mov	sl, ip
    8e14:	e28d0018 	add	r0, sp, #24
    8e18:	e083100c 	add	r1, r3, ip
    8e1c:	e7de1001 	ldrb	r1, [lr, r1]
    8e20:	e4cc1001 	strb	r1, [ip], #1
    8e24:	e15c0000 	cmp	ip, r0
    8e28:	1afffffa 	bne	8e18 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x28>
    8e2c:	e28aa00f 	add	sl, sl, #15
    8e30:	e58da004 	str	sl, [sp, #4]
    8e34:	e1a05002 	mov	r5, r2
    8e38:	e28d9007 	add	r9, sp, #7
    8e3c:	e5f97001 	ldrb	r7, [r9, #1]!
    8e40:	e1a0a00b 	mov	sl, fp
    8e44:	e3a04000 	mov	r4, #0
    8e48:	e1a03457 	asr	r3, r7, r4
    8e4c:	e2133001 	ands	r3, r3, #1
    8e50:	e1a0100a 	mov	r1, sl
    8e54:	11a03008 	movne	r3, r8
    8e58:	e1a00006 	mov	r0, r6
    8e5c:	e1a02005 	mov	r2, r5
    8e60:	e2844001 	add	r4, r4, #1
    8e64:	ebffff9d 	bl	8ce0 <_ZN11gpu2dCanvas8setPixelEjjj>
    8e68:	e3540008 	cmp	r4, #8
    8e6c:	e28aa001 	add	sl, sl, #1
    8e70:	1afffff4 	bne	8e48 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x58>
    8e74:	e59d3004 	ldr	r3, [sp, #4]
    8e78:	e1590003 	cmp	r9, r3
    8e7c:	e2855001 	add	r5, r5, #1
    8e80:	1affffed 	bne	8e3c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x4c>
    8e84:	e28dd01c 	add	sp, sp, #28
    8e88:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8e8c:	e12fff1e 	bx	lr
    8e90:	0000a520 	andeq	sl, r0, r0, lsr #10

00008e94 <_ZN11gpu2dCanvas14ClearCharacterEii>:
    8e94:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    8e98:	e3a04000 	mov	r4, #0
    8e9c:	e1a06001 	mov	r6, r1
    8ea0:	e1a07000 	mov	r7, r0
    8ea4:	e1a05002 	mov	r5, r2
    8ea8:	e1a01004 	mov	r1, r4
    8eac:	e0811006 	add	r1, r1, r6
    8eb0:	e3a03000 	mov	r3, #0
    8eb4:	e1a00007 	mov	r0, r7
    8eb8:	e1a02005 	mov	r2, r5
    8ebc:	ebffff87 	bl	8ce0 <_ZN11gpu2dCanvas8setPixelEjjj>
    8ec0:	e2843001 	add	r3, r4, #1
    8ec4:	e1a03803 	lsl	r3, r3, #16
    8ec8:	e1a01843 	asr	r1, r3, #16
    8ecc:	e3510008 	cmp	r1, #8
    8ed0:	e1a04823 	lsr	r4, r3, #16
    8ed4:	1afffff4 	bne	8eac <_ZN11gpu2dCanvas14ClearCharacterEii+0x18>
    8ed8:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    8edc:	e12fff1e 	bx	lr

00008ee0 <_ZN7Console5clearEv>:
    8ee0:	e590300c 	ldr	r3, [r0, #12]
    8ee4:	e5d31000 	ldrb	r1, [r3]
    8ee8:	e3a02001 	mov	r2, #1
    8eec:	e3510000 	cmp	r1, #0
    8ef0:	e3a01000 	mov	r1, #0
    8ef4:	e92d4010 	push	{r4, lr}
    8ef8:	e1a04000 	mov	r4, r0
    8efc:	e8800006 	stm	r0, {r1, r2}
    8f00:	1a000001 	bne	8f0c <_ZN7Console5clearEv+0x2c>
    8f04:	e8bd4010 	pop	{r4, lr}
    8f08:	e12fff1e 	bx	lr
    8f0c:	e5930004 	ldr	r0, [r3, #4]
    8f10:	ebfffc70 	bl	80d8 <armClearScreen>
    8f14:	e594000c 	ldr	r0, [r4, #12]
    8f18:	e5d03000 	ldrb	r3, [r0]
    8f1c:	e3530000 	cmp	r3, #0
    8f20:	0afffff7 	beq	8f04 <_ZN7Console5clearEv+0x24>
    8f24:	e5d03002 	ldrb	r3, [r0, #2]
    8f28:	e3530000 	cmp	r3, #0
    8f2c:	0afffff4 	beq	8f04 <_ZN7Console5clearEv+0x24>
    8f30:	e8bd4010 	pop	{r4, lr}
    8f34:	eafffef3 	b	8b08 <_ZN11gpu2dCanvas4DrawEv.part.6>

00008f38 <_ZN7Console7newLineEv>:
    8f38:	e5902004 	ldr	r2, [r0, #4]
    8f3c:	e2822001 	add	r2, r2, #1
    8f40:	e3a01000 	mov	r1, #0
    8f44:	e352002d 	cmp	r2, #45	; 0x2d
    8f48:	e8800006 	stm	r0, {r1, r2}
    8f4c:	912fff1e 	bxls	lr
    8f50:	eaffffe2 	b	8ee0 <_ZN7Console5clearEv>

00008f54 <_ZN7Console9printCharEcj>:
    8f54:	e92d4030 	push	{r4, r5, lr}
    8f58:	e3510009 	cmp	r1, #9
    8f5c:	e24dd014 	sub	sp, sp, #20
    8f60:	e1a04000 	mov	r4, r0
    8f64:	0a00003d 	beq	9060 <_ZN7Console9printCharEcj+0x10c>
    8f68:	e351000a 	cmp	r1, #10
    8f6c:	0a000032 	beq	903c <_ZN7Console9printCharEcj+0xe8>
    8f70:	e3510008 	cmp	r1, #8
    8f74:	0a00001c 	beq	8fec <_ZN7Console9printCharEcj+0x98>
    8f78:	e8901008 	ldm	r0, {r3, ip}
    8f7c:	e3530078 	cmp	r3, #120	; 0x78
    8f80:	9a000041 	bls	908c <_ZN7Console9printCharEcj+0x138>
    8f84:	e28cc001 	add	ip, ip, #1
    8f88:	e3a03000 	mov	r3, #0
    8f8c:	e35c002d 	cmp	ip, #45	; 0x2d
    8f90:	e8801008 	stm	r0, {r3, ip}
    8f94:	8a000036 	bhi	9074 <_ZN7Console9printCharEcj+0x120>
    8f98:	e594e008 	ldr	lr, [r4, #8]
    8f9c:	e5945000 	ldr	r5, [r4]
    8fa0:	e594000c 	ldr	r0, [r4, #12]
    8fa4:	e1a03001 	mov	r3, r1
    8fa8:	e58d2000 	str	r2, [sp]
    8fac:	e08e1185 	add	r1, lr, r5, lsl #3
    8fb0:	e08e220c 	add	r2, lr, ip, lsl #4
    8fb4:	ebffff8d 	bl	8df0 <_ZN11gpu2dCanvas13DrawCharacterEiicj>
    8fb8:	e594000c 	ldr	r0, [r4, #12]
    8fbc:	e5d03000 	ldrb	r3, [r0]
    8fc0:	e3530000 	cmp	r3, #0
    8fc4:	0a000002 	beq	8fd4 <_ZN7Console9printCharEcj+0x80>
    8fc8:	e5d03002 	ldrb	r3, [r0, #2]
    8fcc:	e3530000 	cmp	r3, #0
    8fd0:	1a000033 	bne	90a4 <_ZN7Console9printCharEcj+0x150>
    8fd4:	e5943000 	ldr	r3, [r4]
    8fd8:	e2833001 	add	r3, r3, #1
    8fdc:	e5843000 	str	r3, [r4]
    8fe0:	e28dd014 	add	sp, sp, #20
    8fe4:	e8bd4030 	pop	{r4, r5, lr}
    8fe8:	e12fff1e 	bx	lr
    8fec:	e5903000 	ldr	r3, [r0]
    8ff0:	e3530000 	cmp	r3, #0
    8ff4:	0afffff9 	beq	8fe0 <_ZN7Console9printCharEcj+0x8c>
    8ff8:	e9900005 	ldmib	r0, {r0, r2}
    8ffc:	e2431001 	sub	r1, r3, #1
    9000:	e5841000 	str	r1, [r4]
    9004:	e0821181 	add	r1, r2, r1, lsl #3
    9008:	e0822200 	add	r2, r2, r0, lsl #4
    900c:	e594000c 	ldr	r0, [r4, #12]
    9010:	ebffff9f 	bl	8e94 <_ZN11gpu2dCanvas14ClearCharacterEii>
    9014:	e594000c 	ldr	r0, [r4, #12]
    9018:	e5d03000 	ldrb	r3, [r0]
    901c:	e3530000 	cmp	r3, #0
    9020:	0affffee 	beq	8fe0 <_ZN7Console9printCharEcj+0x8c>
    9024:	e5d03002 	ldrb	r3, [r0, #2]
    9028:	e3530000 	cmp	r3, #0
    902c:	0affffeb 	beq	8fe0 <_ZN7Console9printCharEcj+0x8c>
    9030:	e28dd014 	add	sp, sp, #20
    9034:	e8bd4030 	pop	{r4, r5, lr}
    9038:	eafffeb2 	b	8b08 <_ZN11gpu2dCanvas4DrawEv.part.6>
    903c:	e5903004 	ldr	r3, [r0, #4]
    9040:	e2833001 	add	r3, r3, #1
    9044:	e3a02000 	mov	r2, #0
    9048:	e353002d 	cmp	r3, #45	; 0x2d
    904c:	e880000c 	stm	r0, {r2, r3}
    9050:	8a00000f 	bhi	9094 <_ZN7Console9printCharEcj+0x140>
    9054:	e28dd014 	add	sp, sp, #20
    9058:	e8bd4030 	pop	{r4, r5, lr}
    905c:	e12fff1e 	bx	lr
    9060:	e5903000 	ldr	r3, [r0]
    9064:	e2833004 	add	r3, r3, #4
    9068:	e3530077 	cmp	r3, #119	; 0x77
    906c:	95843000 	strls	r3, [r4]
    9070:	eaffffda 	b	8fe0 <_ZN7Console9printCharEcj+0x8c>
    9074:	e58d100c 	str	r1, [sp, #12]
    9078:	e58d2008 	str	r2, [sp, #8]
    907c:	ebffff97 	bl	8ee0 <_ZN7Console5clearEv>
    9080:	e594c004 	ldr	ip, [r4, #4]
    9084:	e59d2008 	ldr	r2, [sp, #8]
    9088:	e59d100c 	ldr	r1, [sp, #12]
    908c:	e35c002d 	cmp	ip, #45	; 0x2d
    9090:	9affffc0 	bls	8f98 <_ZN7Console9printCharEcj+0x44>
    9094:	e1a00004 	mov	r0, r4
    9098:	e28dd014 	add	sp, sp, #20
    909c:	e8bd4030 	pop	{r4, r5, lr}
    90a0:	eaffff8e 	b	8ee0 <_ZN7Console5clearEv>
    90a4:	ebfffe97 	bl	8b08 <_ZN11gpu2dCanvas4DrawEv.part.6>
    90a8:	eaffffc9 	b	8fd4 <_ZN7Console9printCharEcj+0x80>

000090ac <_ZN7Console6kprintEPKc>:
    90ac:	e92d4038 	push	{r3, r4, r5, lr}
    90b0:	e1a04001 	mov	r4, r1
    90b4:	e5d11000 	ldrb	r1, [r1]
    90b8:	e3510000 	cmp	r1, #0
    90bc:	e1a05000 	mov	r5, r0
    90c0:	0a000005 	beq	90dc <_ZN7Console6kprintEPKc+0x30>
    90c4:	e1a00005 	mov	r0, r5
    90c8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    90cc:	ebffffa0 	bl	8f54 <_ZN7Console9printCharEcj>
    90d0:	e5f41001 	ldrb	r1, [r4, #1]!
    90d4:	e3510000 	cmp	r1, #0
    90d8:	1afffff9 	bne	90c4 <_ZN7Console6kprintEPKc+0x18>
    90dc:	e8bd4038 	pop	{r3, r4, r5, lr}
    90e0:	e12fff1e 	bx	lr

000090e4 <_ZN7Console6kprintEPc>:
    90e4:	e92d4038 	push	{r3, r4, r5, lr}
    90e8:	e1a04001 	mov	r4, r1
    90ec:	e5d11000 	ldrb	r1, [r1]
    90f0:	e3510000 	cmp	r1, #0
    90f4:	e1a05000 	mov	r5, r0
    90f8:	0a000005 	beq	9114 <_ZN7Console6kprintEPc+0x30>
    90fc:	e1a00005 	mov	r0, r5
    9100:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9104:	ebffff92 	bl	8f54 <_ZN7Console9printCharEcj>
    9108:	e5f41001 	ldrb	r1, [r4, #1]!
    910c:	e3510000 	cmp	r1, #0
    9110:	1afffff9 	bne	90fc <_ZN7Console6kprintEPc+0x18>
    9114:	e8bd4038 	pop	{r3, r4, r5, lr}
    9118:	e12fff1e 	bx	lr

0000911c <_ZN7Console6kprintEPcj>:
    911c:	e92d4070 	push	{r4, r5, r6, lr}
    9120:	e1a04001 	mov	r4, r1
    9124:	e5d11000 	ldrb	r1, [r1]
    9128:	e3510000 	cmp	r1, #0
    912c:	e1a05000 	mov	r5, r0
    9130:	e1a06002 	mov	r6, r2
    9134:	0a000005 	beq	9150 <_ZN7Console6kprintEPcj+0x34>
    9138:	e1a00005 	mov	r0, r5
    913c:	e1a02006 	mov	r2, r6
    9140:	ebffff83 	bl	8f54 <_ZN7Console9printCharEcj>
    9144:	e5f41001 	ldrb	r1, [r4, #1]!
    9148:	e3510000 	cmp	r1, #0
    914c:	1afffff9 	bne	9138 <_ZN7Console6kprintEPcj+0x1c>
    9150:	e8bd4070 	pop	{r4, r5, r6, lr}
    9154:	e12fff1e 	bx	lr

00009158 <_ZN7Console6kprintEPKcj>:
    9158:	e92d4070 	push	{r4, r5, r6, lr}
    915c:	e1a04001 	mov	r4, r1
    9160:	e5d11000 	ldrb	r1, [r1]
    9164:	e3510000 	cmp	r1, #0
    9168:	e1a05000 	mov	r5, r0
    916c:	e1a06002 	mov	r6, r2
    9170:	0a000005 	beq	918c <_ZN7Console6kprintEPKcj+0x34>
    9174:	e1a00005 	mov	r0, r5
    9178:	e1a02006 	mov	r2, r6
    917c:	ebffff74 	bl	8f54 <_ZN7Console9printCharEcj>
    9180:	e5f41001 	ldrb	r1, [r4, #1]!
    9184:	e3510000 	cmp	r1, #0
    9188:	1afffff9 	bne	9174 <_ZN7Console6kprintEPKcj+0x1c>
    918c:	e8bd4070 	pop	{r4, r5, r6, lr}
    9190:	e12fff1e 	bx	lr

00009194 <_ZN7Console6kprintEjj>:
    9194:	e92d4070 	push	{r4, r5, r6, lr}
    9198:	e59f403c 	ldr	r4, [pc, #60]	; 91dc <_ZN7Console6kprintEjj+0x48>
    919c:	e0843491 	umull	r3, r4, r1, r4
    91a0:	e1a041a4 	lsr	r4, r4, #3
    91a4:	e1a03004 	mov	r3, r4
    91a8:	e3540000 	cmp	r4, #0
    91ac:	e0844104 	add	r4, r4, r4, lsl #2
    91b0:	e0414084 	sub	r4, r1, r4, lsl #1
    91b4:	e1a06000 	mov	r6, r0
    91b8:	e1a05002 	mov	r5, r2
    91bc:	11a01003 	movne	r1, r3
    91c0:	1bfffff3 	blne	9194 <_ZN7Console6kprintEjj>
    91c4:	e2844030 	add	r4, r4, #48	; 0x30
    91c8:	e20410ff 	and	r1, r4, #255	; 0xff
    91cc:	e1a00006 	mov	r0, r6
    91d0:	e1a02005 	mov	r2, r5
    91d4:	e8bd4070 	pop	{r4, r5, r6, lr}
    91d8:	eaffff5d 	b	8f54 <_ZN7Console9printCharEcj>
    91dc:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

000091e0 <_ZN7Console6kprintEj>:
    91e0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    91e4:	eaffffea 	b	9194 <_ZN7Console6kprintEjj>

000091e8 <_ZN7Console12kprintHexa32Ejj>:
    91e8:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    91ec:	e1a07000 	mov	r7, r0
    91f0:	e1a06001 	mov	r6, r1
    91f4:	e1a05002 	mov	r5, r2
    91f8:	e3a0401c 	mov	r4, #28
    91fc:	e1a03436 	lsr	r3, r6, r4
    9200:	e203300f 	and	r3, r3, #15
    9204:	e3530009 	cmp	r3, #9
    9208:	83a0c007 	movhi	ip, #7
    920c:	93a0c000 	movls	ip, #0
    9210:	e2831030 	add	r1, r3, #48	; 0x30
    9214:	e2444004 	sub	r4, r4, #4
    9218:	e08c1001 	add	r1, ip, r1
    921c:	e1a00007 	mov	r0, r7
    9220:	e1a02005 	mov	r2, r5
    9224:	ebffff4a 	bl	8f54 <_ZN7Console9printCharEcj>
    9228:	e3740004 	cmn	r4, #4
    922c:	1afffff2 	bne	91fc <_ZN7Console12kprintHexa32Ejj+0x14>
    9230:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    9234:	e12fff1e 	bx	lr

00009238 <irq_handler>:
    9238:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    923c:	e3a0da02 	mov	sp, #8192	; 0x2000
    9240:	e24ee004 	sub	lr, lr, #4
    9244:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    9248:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    924c:	e3a03a01 	mov	r3, #4096	; 0x1000
    9250:	e1a00003 	mov	r0, r3
    9254:	e9201ffe 	stmdb	r0!, {r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    9258:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    925c:	e3a03efd 	mov	r3, #4048	; 0xfd0
    9260:	e1a01003 	mov	r1, r3
    9264:	e5810000 	str	r0, [r1]
    9268:	e59f1cb4 	ldr	r1, [pc, #3252]	; 9f24 <swi_endTask+0x64>
    926c:	e581e000 	str	lr, [r1]
    9270:	e59f638c 	ldr	r6, [pc, #908]	; 9604 <irq_handler+0x3cc>
    9274:	e5965040 	ldr	r5, [r6, #64]	; 0x40
    9278:	e59f3388 	ldr	r3, [pc, #904]	; 9608 <irq_handler+0x3d0>
    927c:	e3550000 	cmp	r5, #0
    9280:	e5932000 	ldr	r2, [r3]
    9284:	0a000016 	beq	92e4 <irq_handler+0xac>
    9288:	e5963040 	ldr	r3, [r6, #64]	; 0x40
    928c:	e3550004 	cmp	r5, #4
    9290:	e5863040 	str	r3, [r6, #64]	; 0x40
    9294:	0a0000b2 	beq	9564 <irq_handler+0x32c>
    9298:	e3550008 	cmp	r5, #8
    929c:	0a0000c4 	beq	95b4 <irq_handler+0x37c>
    92a0:	e59f4364 	ldr	r4, [pc, #868]	; 960c <irq_handler+0x3d4>
    92a4:	ebfffd06 	bl	86c4 <_ZN12RaspberryLib10TestBuzzerEv>
    92a8:	e59f2354 	ldr	r2, [pc, #852]	; 9604 <irq_handler+0x3cc>
    92ac:	e3a01000 	mov	r1, #0
    92b0:	e5923058 	ldr	r3, [r2, #88]	; 0x58
    92b4:	e5821058 	str	r1, [r2, #88]	; 0x58
    92b8:	e59f3348 	ldr	r3, [pc, #840]	; 9608 <irq_handler+0x3d0>
    92bc:	e5932004 	ldr	r2, [r3, #4]
    92c0:	e282293d 	add	r2, r2, #999424	; 0xf4000
    92c4:	e2822d09 	add	r2, r2, #576	; 0x240
    92c8:	e3a01001 	mov	r1, #1
    92cc:	e5c41005 	strb	r1, [r4, #5]
    92d0:	e5832018 	str	r2, [r3, #24]
    92d4:	e59fdc4c 	ldr	sp, [pc, #3148]	; 9f28 <swi_endTask+0x68>
    92d8:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    92dc:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    92e0:	e12fff1e 	bx	lr
    92e4:	e59f4320 	ldr	r4, [pc, #800]	; 960c <irq_handler+0x3d4>
    92e8:	e5d41005 	ldrb	r1, [r4, #5]
    92ec:	e3510000 	cmp	r1, #0
    92f0:	1a00006c 	bne	94a8 <irq_handler+0x270>
    92f4:	e5d43004 	ldrb	r3, [r4, #4]
    92f8:	e3530000 	cmp	r3, #0
    92fc:	e59f3308 	ldr	r3, [pc, #776]	; 960c <irq_handler+0x3d4>
    9300:	0afffff3 	beq	92d4 <irq_handler+0x9c>
    9304:	e3120002 	tst	r2, #2
    9308:	0afffff1 	beq	92d4 <irq_handler+0x9c>
    930c:	e593200c 	ldr	r2, [r3, #12]
    9310:	e59f12f0 	ldr	r1, [pc, #752]	; 9608 <irq_handler+0x3d0>
    9314:	e3a00002 	mov	r0, #2
    9318:	e5810000 	str	r0, [r1]
    931c:	e5922014 	ldr	r2, [r2, #20]
    9320:	e5925044 	ldr	r5, [r2, #68]	; 0x44
    9324:	e3a02000 	mov	r2, #0
    9328:	e3550301 	cmp	r5, #67108864	; 0x4000000
    932c:	e5835010 	str	r5, [r3, #16]
    9330:	e5c32004 	strb	r2, [r3, #4]
    9334:	8a000078 	bhi	951c <irq_handler+0x2e4>
    9338:	e5d32014 	ldrb	r2, [r3, #20]
    933c:	e3520000 	cmp	r2, #0
    9340:	01a02005 	moveq	r2, r5
    9344:	0a000023 	beq	93d8 <irq_handler+0x1a0>
    9348:	e5937008 	ldr	r7, [r3, #8]
    934c:	e59f62bc 	ldr	r6, [pc, #700]	; 9610 <irq_handler+0x3d8>
    9350:	e3a0100a 	mov	r1, #10
    9354:	e1a00007 	mov	r0, r7
    9358:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    935c:	ebfffefc 	bl	8f54 <_ZN7Console9printCharEcj>
    9360:	e5f61001 	ldrb	r1, [r6, #1]!
    9364:	e3510000 	cmp	r1, #0
    9368:	1afffff9 	bne	9354 <irq_handler+0x11c>
    936c:	e594300c 	ldr	r3, [r4, #12]
    9370:	e5933014 	ldr	r3, [r3, #20]
    9374:	e5940008 	ldr	r0, [r4, #8]
    9378:	e1d315b4 	ldrh	r1, [r3, #84]	; 0x54
    937c:	e59f2290 	ldr	r2, [pc, #656]	; 9614 <irq_handler+0x3dc>
    9380:	ebffff83 	bl	9194 <_ZN7Console6kprintEjj>
    9384:	e59f628c 	ldr	r6, [pc, #652]	; 9618 <irq_handler+0x3e0>
    9388:	e5947008 	ldr	r7, [r4, #8]
    938c:	e3a0100a 	mov	r1, #10
    9390:	e1a00007 	mov	r0, r7
    9394:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9398:	ebfffeed 	bl	8f54 <_ZN7Console9printCharEcj>
    939c:	e5f61001 	ldrb	r1, [r6, #1]!
    93a0:	e3510000 	cmp	r1, #0
    93a4:	1afffff9 	bne	9390 <irq_handler+0x158>
    93a8:	e59f226c 	ldr	r2, [pc, #620]	; 961c <irq_handler+0x3e4>
    93ac:	e5940008 	ldr	r0, [r4, #8]
    93b0:	e5941010 	ldr	r1, [r4, #16]
    93b4:	ebffff8b 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    93b8:	e59f3248 	ldr	r3, [pc, #584]	; 9608 <irq_handler+0x3d0>
    93bc:	e5932004 	ldr	r2, [r3, #4]
    93c0:	e282297a 	add	r2, r2, #1998848	; 0x1e8000
    93c4:	e2822d12 	add	r2, r2, #1152	; 0x480
    93c8:	e5931004 	ldr	r1, [r3, #4]
    93cc:	e1520001 	cmp	r2, r1
    93d0:	2afffffc 	bcs	93c8 <irq_handler+0x190>
    93d4:	e5942010 	ldr	r2, [r4, #16]
    93d8:	e59f022c 	ldr	r0, [pc, #556]	; 960c <irq_handler+0x3d4>
    93dc:	e59f123c 	ldr	r1, [pc, #572]	; 9620 <irq_handler+0x3e8>
    93e0:	e242200c 	sub	r2, r2, #12
    93e4:	e3a03a01 	mov	r3, #4096	; 0x1000
    93e8:	ea000000 	b	93f0 <irq_handler+0x1b8>
    93ec:	e5902010 	ldr	r2, [r0, #16]
    93f0:	e242c004 	sub	ip, r2, #4
    93f4:	e584c010 	str	ip, [r4, #16]
    93f8:	e533c004 	ldr	ip, [r3, #-4]!
    93fc:	e1530001 	cmp	r3, r1
    9400:	e502c004 	str	ip, [r2, #-4]
    9404:	1afffff8 	bne	93ec <irq_handler+0x1b4>
    9408:	e59f1b1c 	ldr	r1, [pc, #2844]	; 9f2c <swi_endTask+0x6c>
    940c:	e5911000 	ldr	r1, [r1]
    9410:	e2411004 	sub	r1, r1, #4
    9414:	e14f0000 	mrs	r0, SPSR
    9418:	e5810000 	str	r0, [r1]
    941c:	e5845010 	str	r5, [r4, #16]
    9420:	e59f1b04 	ldr	r1, [pc, #2820]	; 9f2c <swi_endTask+0x6c>
    9424:	e5911000 	ldr	r1, [r1]
    9428:	e2411004 	sub	r1, r1, #4
    942c:	e59f2af0 	ldr	r2, [pc, #2800]	; 9f24 <swi_endTask+0x64>
    9430:	e5922000 	ldr	r2, [r2]
    9434:	e5812000 	str	r2, [r1]
    9438:	e3a000df 	mov	r0, #223	; 0xdf
    943c:	e129f000 	msr	CPSR_fc, r0
    9440:	e2411004 	sub	r1, r1, #4
    9444:	e581e000 	str	lr, [r1]
    9448:	e2411004 	sub	r1, r1, #4
    944c:	e581d000 	str	sp, [r1]
    9450:	e3a000d3 	mov	r0, #211	; 0xd3
    9454:	e129f000 	msr	CPSR_fc, r0
    9458:	e59f1ad0 	ldr	r1, [pc, #2768]	; 9f30 <swi_endTask+0x70>
    945c:	e591d000 	ldr	sp, [r1]
    9460:	e59f41a4 	ldr	r4, [pc, #420]	; 960c <irq_handler+0x3d4>
    9464:	e5940008 	ldr	r0, [r4, #8]
    9468:	ebfffe9c 	bl	8ee0 <_ZN7Console5clearEv>
    946c:	e594300c 	ldr	r3, [r4, #12]
    9470:	e5933014 	ldr	r3, [r3, #20]
    9474:	e3a02002 	mov	r2, #2
    9478:	e5c32058 	strb	r2, [r3, #88]	; 0x58
    947c:	e3a05001 	mov	r5, #1
    9480:	ef000000 	svc	0x00000000
    9484:	e1a00000 	nop			; (mov r0, r0)
    9488:	e1a00000 	nop			; (mov r0, r0)
    948c:	e1a00000 	nop			; (mov r0, r0)
    9490:	e1a00000 	nop			; (mov r0, r0)
    9494:	e1a00000 	nop			; (mov r0, r0)
    9498:	e59fda88 	ldr	sp, [pc, #2696]	; 9f28 <swi_endTask+0x68>
    949c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    94a0:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    94a4:	e12fff1e 	bx	lr
    94a8:	e3120008 	tst	r2, #8
    94ac:	0affff90 	beq	92f4 <irq_handler+0xbc>
    94b0:	e3a02008 	mov	r2, #8
    94b4:	e5c45005 	strb	r5, [r4, #5]
    94b8:	e1a01005 	mov	r1, r5
    94bc:	e5832000 	str	r2, [r3]
    94c0:	e3a00001 	mov	r0, #1
    94c4:	ebfffc3e 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    94c8:	e1a01005 	mov	r1, r5
    94cc:	e3a00002 	mov	r0, #2
    94d0:	ebfffc3b 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    94d4:	e1a01005 	mov	r1, r5
    94d8:	e3a00003 	mov	r0, #3
    94dc:	ebfffc38 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    94e0:	e1a01005 	mov	r1, r5
    94e4:	e3a00004 	mov	r0, #4
    94e8:	ebfffc35 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    94ec:	e1a01005 	mov	r1, r5
    94f0:	e3a00005 	mov	r0, #5
    94f4:	ebfffc32 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    94f8:	e1a01005 	mov	r1, r5
    94fc:	e3a00006 	mov	r0, #6
    9500:	ebfffc2f 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    9504:	e3a0300c 	mov	r3, #12
    9508:	e5863058 	str	r3, [r6, #88]	; 0x58
    950c:	e59fda14 	ldr	sp, [pc, #2580]	; 9f28 <swi_endTask+0x68>
    9510:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    9514:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    9518:	e12fff1e 	bx	lr
    951c:	e5936008 	ldr	r6, [r3, #8]
    9520:	e59f50fc 	ldr	r5, [pc, #252]	; 9624 <irq_handler+0x3ec>
    9524:	e3a0100a 	mov	r1, #10
    9528:	e1a00006 	mov	r0, r6
    952c:	e3a020ff 	mov	r2, #255	; 0xff
    9530:	ebfffe87 	bl	8f54 <_ZN7Console9printCharEcj>
    9534:	e5f51001 	ldrb	r1, [r5, #1]!
    9538:	e3510000 	cmp	r1, #0
    953c:	1afffff9 	bne	9528 <irq_handler+0x2f0>
    9540:	e5940008 	ldr	r0, [r4, #8]
    9544:	e5941010 	ldr	r1, [r4, #16]
    9548:	e59f20c4 	ldr	r2, [pc, #196]	; 9614 <irq_handler+0x3dc>
    954c:	ebffff25 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    9550:	e5940008 	ldr	r0, [r4, #8]
    9554:	e59f10cc 	ldr	r1, [pc, #204]	; 9628 <irq_handler+0x3f0>
    9558:	e3a02cff 	mov	r2, #65280	; 0xff00
    955c:	ebffff21 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    9560:	eafffffe 	b	9560 <irq_handler+0x328>
    9564:	e3a00001 	mov	r0, #1
    9568:	e1a01000 	mov	r1, r0
    956c:	ebfffc14 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    9570:	e59f4094 	ldr	r4, [pc, #148]	; 960c <irq_handler+0x3d4>
    9574:	e3a00003 	mov	r0, #3
    9578:	e3a01001 	mov	r1, #1
    957c:	ebfffc10 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    9580:	e3a01001 	mov	r1, #1
    9584:	e3a00005 	mov	r0, #5
    9588:	ebfffc0d 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    958c:	e59f5098 	ldr	r5, [pc, #152]	; 962c <irq_handler+0x3f4>
    9590:	e5946008 	ldr	r6, [r4, #8]
    9594:	e3a0100a 	mov	r1, #10
    9598:	e1a00006 	mov	r0, r6
    959c:	e59f2070 	ldr	r2, [pc, #112]	; 9614 <irq_handler+0x3dc>
    95a0:	ebfffe6b 	bl	8f54 <_ZN7Console9printCharEcj>
    95a4:	e5f51001 	ldrb	r1, [r5, #1]!
    95a8:	e3510000 	cmp	r1, #0
    95ac:	1afffff9 	bne	9598 <irq_handler+0x360>
    95b0:	eaffff3b 	b	92a4 <irq_handler+0x6c>
    95b4:	e3a00002 	mov	r0, #2
    95b8:	e3a01001 	mov	r1, #1
    95bc:	ebfffc00 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    95c0:	e59f4044 	ldr	r4, [pc, #68]	; 960c <irq_handler+0x3d4>
    95c4:	e3a00004 	mov	r0, #4
    95c8:	e3a01001 	mov	r1, #1
    95cc:	ebfffbfc 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    95d0:	e3a01001 	mov	r1, #1
    95d4:	e3a00006 	mov	r0, #6
    95d8:	ebfffbf9 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    95dc:	e59f504c 	ldr	r5, [pc, #76]	; 9630 <irq_handler+0x3f8>
    95e0:	e5946008 	ldr	r6, [r4, #8]
    95e4:	e3a0100a 	mov	r1, #10
    95e8:	e1a00006 	mov	r0, r6
    95ec:	e59f2020 	ldr	r2, [pc, #32]	; 9614 <irq_handler+0x3dc>
    95f0:	ebfffe57 	bl	8f54 <_ZN7Console9printCharEcj>
    95f4:	e5f51001 	ldrb	r1, [r5, #1]!
    95f8:	e3510000 	cmp	r1, #0
    95fc:	1afffff9 	bne	95e8 <irq_handler+0x3b0>
    9600:	eaffff27 	b	92a4 <irq_handler+0x6c>
    9604:	20200000 	eorcs	r0, r0, r0
    9608:	20003000 	andcs	r3, r0, r0
    960c:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    9610:	0000b154 	andeq	fp, r0, r4, asr r1
    9614:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    9618:	0000b160 	andeq	fp, r0, r0, ror #2
    961c:	00ff00ff 	ldrshteq	r0, [pc], #15
    9620:	00000fcc 	andeq	r0, r0, ip, asr #31
    9624:	0000b128 	andeq	fp, r0, r8, lsr #2
    9628:	0000ad3c 	andeq	sl, r0, ip, lsr sp
    962c:	0000b100 	andeq	fp, r0, r0, lsl #2
    9630:	0000b114 	andeq	fp, r0, r4, lsl r1

00009634 <_ZN7Console12kprintHexa32Ej>:
    9634:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9638:	eafffeea 	b	91e8 <_ZN7Console12kprintHexa32Ejj>

0000963c <_ZN7Console4koutEPKc>:
    963c:	e92d4070 	push	{r4, r5, r6, lr}
    9640:	e59f505c 	ldr	r5, [pc, #92]	; 96a4 <_ZN7Console4koutEPKc+0x68>
    9644:	e1a06001 	mov	r6, r1
    9648:	e1a04000 	mov	r4, r0
    964c:	e3a0105b 	mov	r1, #91	; 0x5b
    9650:	e1a00004 	mov	r0, r4
    9654:	e59f204c 	ldr	r2, [pc, #76]	; 96a8 <_ZN7Console4koutEPKc+0x6c>
    9658:	ebfffe3d 	bl	8f54 <_ZN7Console9printCharEcj>
    965c:	e5f51001 	ldrb	r1, [r5, #1]!
    9660:	e3510000 	cmp	r1, #0
    9664:	1afffff9 	bne	9650 <_ZN7Console4koutEPKc+0x14>
    9668:	e5d61000 	ldrb	r1, [r6]
    966c:	e3510000 	cmp	r1, #0
    9670:	11a05006 	movne	r5, r6
    9674:	0a000005 	beq	9690 <_ZN7Console4koutEPKc+0x54>
    9678:	e1a00004 	mov	r0, r4
    967c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9680:	ebfffe33 	bl	8f54 <_ZN7Console9printCharEcj>
    9684:	e5f51001 	ldrb	r1, [r5, #1]!
    9688:	e3510000 	cmp	r1, #0
    968c:	1afffff9 	bne	9678 <_ZN7Console4koutEPKc+0x3c>
    9690:	e1a00004 	mov	r0, r4
    9694:	e3a0100a 	mov	r1, #10
    9698:	e59f2008 	ldr	r2, [pc, #8]	; 96a8 <_ZN7Console4koutEPKc+0x6c>
    969c:	e8bd4070 	pop	{r4, r5, r6, lr}
    96a0:	eafffe2b 	b	8f54 <_ZN7Console9printCharEcj>
    96a4:	0000b188 	andeq	fp, r0, r8, lsl #3
    96a8:	00f0330f 	rscseq	r3, r0, pc, lsl #6

000096ac <basic_handler>:
    96ac:	e92d4008 	push	{r3, lr}
    96b0:	e59f302c 	ldr	r3, [pc, #44]	; 96e4 <basic_handler+0x38>
    96b4:	e59f102c 	ldr	r1, [pc, #44]	; 96e8 <basic_handler+0x3c>
    96b8:	e5930008 	ldr	r0, [r3, #8]
    96bc:	ebffffde 	bl	963c <_ZN7Console4koutEPKc>
    96c0:	e59f2024 	ldr	r2, [pc, #36]	; 96ec <basic_handler+0x40>
    96c4:	e5921004 	ldr	r1, [r2, #4]
    96c8:	e2811b61 	add	r1, r1, #99328	; 0x18400
    96cc:	e2811e2a 	add	r1, r1, #672	; 0x2a0
    96d0:	e5923004 	ldr	r3, [r2, #4]
    96d4:	e1510003 	cmp	r1, r3
    96d8:	8afffffc 	bhi	96d0 <basic_handler+0x24>
    96dc:	e8bd4008 	pop	{r3, lr}
    96e0:	e12fff1e 	bx	lr
    96e4:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    96e8:	0000b190 	muleq	r0, r0, r1
    96ec:	20003000 	andcs	r3, r0, r0

000096f0 <_ZN7ConsoleC1EP11gpu2dCanvas>:
    96f0:	e92d4010 	push	{r4, lr}
    96f4:	e3a03000 	mov	r3, #0
    96f8:	e3a0200a 	mov	r2, #10
    96fc:	e1a04000 	mov	r4, r0
    9700:	e580100c 	str	r1, [r0, #12]
    9704:	e5802008 	str	r2, [r0, #8]
    9708:	e5803000 	str	r3, [r0]
    970c:	e5803004 	str	r3, [r0, #4]
    9710:	ebfffdf2 	bl	8ee0 <_ZN7Console5clearEv>
    9714:	e1a00004 	mov	r0, r4
    9718:	e8bd4010 	pop	{r4, lr}
    971c:	e12fff1e 	bx	lr

00009720 <_ZN9Scheduler11LoadContextEv>:
    9720:	e92d4038 	push	{r3, r4, r5, lr}
    9724:	e5903014 	ldr	r3, [r0, #20]
    9728:	e5933044 	ldr	r3, [r3, #68]	; 0x44
    972c:	e59f2038 	ldr	r2, [pc, #56]	; 976c <_ZN9Scheduler11LoadContextEv+0x4c>
    9730:	e3530000 	cmp	r3, #0
    9734:	e5823018 	str	r3, [r2, #24]
    9738:	1a000009 	bne	9764 <_ZN9Scheduler11LoadContextEv+0x44>
    973c:	e5905018 	ldr	r5, [r0, #24]
    9740:	e59f4028 	ldr	r4, [pc, #40]	; 9770 <_ZN9Scheduler11LoadContextEv+0x50>
    9744:	e3a0100a 	mov	r1, #10
    9748:	e1a00005 	mov	r0, r5
    974c:	e3a020ff 	mov	r2, #255	; 0xff
    9750:	ebfffdff 	bl	8f54 <_ZN7Console9printCharEcj>
    9754:	e5f41001 	ldrb	r1, [r4, #1]!
    9758:	e3510000 	cmp	r1, #0
    975c:	1afffff9 	bne	9748 <_ZN9Scheduler11LoadContextEv+0x28>
    9760:	eafffffe 	b	9760 <_ZN9Scheduler11LoadContextEv+0x40>
    9764:	ebfffa51 	bl	80b0 <armLoadContext>
    9768:	eafffffc 	b	9760 <_ZN9Scheduler11LoadContextEv+0x40>
    976c:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    9770:	0000b1a0 	andeq	fp, r0, r0, lsr #3

00009774 <_ZN9Scheduler8ScheduleEv>:
    9774:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    9778:	e1a04000 	mov	r4, r0
    977c:	e8bd0003 	pop	{r0, r1}
    9780:	e59f53d0 	ldr	r5, [pc, #976]	; 9b58 <_ZN9Scheduler8ScheduleEv+0x3e4>
    9784:	e594301c 	ldr	r3, [r4, #28]
    9788:	e5931000 	ldr	r1, [r3]
    978c:	e3510000 	cmp	r1, #0
    9790:	0a0000ac 	beq	9a48 <_ZN9Scheduler8ScheduleEv+0x2d4>
    9794:	e5d50014 	ldrb	r0, [r5, #20]
    9798:	e5912048 	ldr	r2, [r1, #72]	; 0x48
    979c:	e3500000 	cmp	r0, #0
    97a0:	e5832000 	str	r2, [r3]
    97a4:	e5841014 	str	r1, [r4, #20]
    97a8:	0a00005c 	beq	9920 <_ZN9Scheduler8ScheduleEv+0x1ac>
    97ac:	e5947018 	ldr	r7, [r4, #24]
    97b0:	e59f63a4 	ldr	r6, [pc, #932]	; 9b5c <_ZN9Scheduler8ScheduleEv+0x3e8>
    97b4:	e3a0100a 	mov	r1, #10
    97b8:	e1a00007 	mov	r0, r7
    97bc:	e59f239c 	ldr	r2, [pc, #924]	; 9b60 <_ZN9Scheduler8ScheduleEv+0x3ec>
    97c0:	ebfffde3 	bl	8f54 <_ZN7Console9printCharEcj>
    97c4:	e5f61001 	ldrb	r1, [r6, #1]!
    97c8:	e3510000 	cmp	r1, #0
    97cc:	1afffff9 	bne	97b8 <_ZN9Scheduler8ScheduleEv+0x44>
    97d0:	e59f175c 	ldr	r1, [pc, #1884]	; 9f34 <swi_endTask+0x74>
    97d4:	e581d000 	str	sp, [r1]
    97d8:	e3a02cff 	mov	r2, #65280	; 0xff00
    97dc:	e595101c 	ldr	r1, [r5, #28]
    97e0:	e5940018 	ldr	r0, [r4, #24]
    97e4:	ebfffe7f 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    97e8:	e59f6374 	ldr	r6, [pc, #884]	; 9b64 <_ZN9Scheduler8ScheduleEv+0x3f0>
    97ec:	e5947018 	ldr	r7, [r4, #24]
    97f0:	e3a0100a 	mov	r1, #10
    97f4:	e1a00007 	mov	r0, r7
    97f8:	e59f2360 	ldr	r2, [pc, #864]	; 9b60 <_ZN9Scheduler8ScheduleEv+0x3ec>
    97fc:	ebfffdd4 	bl	8f54 <_ZN7Console9printCharEcj>
    9800:	e5f61001 	ldrb	r1, [r6, #1]!
    9804:	e3510000 	cmp	r1, #0
    9808:	1afffff9 	bne	97f4 <_ZN9Scheduler8ScheduleEv+0x80>
    980c:	e5943014 	ldr	r3, [r4, #20]
    9810:	e5940018 	ldr	r0, [r4, #24]
    9814:	e1d315b4 	ldrh	r1, [r3, #84]	; 0x54
    9818:	e3a02cff 	mov	r2, #65280	; 0xff00
    981c:	ebfffe5c 	bl	9194 <_ZN7Console6kprintEjj>
    9820:	e59f6340 	ldr	r6, [pc, #832]	; 9b68 <_ZN9Scheduler8ScheduleEv+0x3f4>
    9824:	e5947018 	ldr	r7, [r4, #24]
    9828:	e3a0100a 	mov	r1, #10
    982c:	e1a00007 	mov	r0, r7
    9830:	e59f2328 	ldr	r2, [pc, #808]	; 9b60 <_ZN9Scheduler8ScheduleEv+0x3ec>
    9834:	ebfffdc6 	bl	8f54 <_ZN7Console9printCharEcj>
    9838:	e5f61001 	ldrb	r1, [r6, #1]!
    983c:	e3510000 	cmp	r1, #0
    9840:	1afffff9 	bne	982c <_ZN9Scheduler8ScheduleEv+0xb8>
    9844:	e5943014 	ldr	r3, [r4, #20]
    9848:	e5940018 	ldr	r0, [r4, #24]
    984c:	e5d31058 	ldrb	r1, [r3, #88]	; 0x58
    9850:	e3a02cff 	mov	r2, #65280	; 0xff00
    9854:	ebfffe4e 	bl	9194 <_ZN7Console6kprintEjj>
    9858:	e59f630c 	ldr	r6, [pc, #780]	; 9b6c <_ZN9Scheduler8ScheduleEv+0x3f8>
    985c:	e5947018 	ldr	r7, [r4, #24]
    9860:	e3a0100a 	mov	r1, #10
    9864:	e1a00007 	mov	r0, r7
    9868:	e59f22f0 	ldr	r2, [pc, #752]	; 9b60 <_ZN9Scheduler8ScheduleEv+0x3ec>
    986c:	ebfffdb8 	bl	8f54 <_ZN7Console9printCharEcj>
    9870:	e5f61001 	ldrb	r1, [r6, #1]!
    9874:	e3510000 	cmp	r1, #0
    9878:	1afffff9 	bne	9864 <_ZN9Scheduler8ScheduleEv+0xf0>
    987c:	e2841014 	add	r1, r4, #20
    9880:	e5940018 	ldr	r0, [r4, #24]
    9884:	e3a02cff 	mov	r2, #65280	; 0xff00
    9888:	ebfffe56 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    988c:	e59f62dc 	ldr	r6, [pc, #732]	; 9b70 <_ZN9Scheduler8ScheduleEv+0x3fc>
    9890:	e5947018 	ldr	r7, [r4, #24]
    9894:	e3a0100a 	mov	r1, #10
    9898:	e1a00007 	mov	r0, r7
    989c:	e59f22bc 	ldr	r2, [pc, #700]	; 9b60 <_ZN9Scheduler8ScheduleEv+0x3ec>
    98a0:	ebfffdab 	bl	8f54 <_ZN7Console9printCharEcj>
    98a4:	e5f61001 	ldrb	r1, [r6, #1]!
    98a8:	e3510000 	cmp	r1, #0
    98ac:	1afffff9 	bne	9898 <_ZN9Scheduler8ScheduleEv+0x124>
    98b0:	e5943014 	ldr	r3, [r4, #20]
    98b4:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    98b8:	e5940018 	ldr	r0, [r4, #24]
    98bc:	e1d315b4 	ldrh	r1, [r3, #84]	; 0x54
    98c0:	e3a02cff 	mov	r2, #65280	; 0xff00
    98c4:	ebfffe32 	bl	9194 <_ZN7Console6kprintEjj>
    98c8:	e59f629c 	ldr	r6, [pc, #668]	; 9b6c <_ZN9Scheduler8ScheduleEv+0x3f8>
    98cc:	e5947018 	ldr	r7, [r4, #24]
    98d0:	e3a0100a 	mov	r1, #10
    98d4:	e1a00007 	mov	r0, r7
    98d8:	e59f2280 	ldr	r2, [pc, #640]	; 9b60 <_ZN9Scheduler8ScheduleEv+0x3ec>
    98dc:	ebfffd9c 	bl	8f54 <_ZN7Console9printCharEcj>
    98e0:	e5f61001 	ldrb	r1, [r6, #1]!
    98e4:	e3510000 	cmp	r1, #0
    98e8:	1afffff9 	bne	98d4 <_ZN9Scheduler8ScheduleEv+0x160>
    98ec:	e5941014 	ldr	r1, [r4, #20]
    98f0:	e3a02cff 	mov	r2, #65280	; 0xff00
    98f4:	e2811048 	add	r1, r1, #72	; 0x48
    98f8:	e5940018 	ldr	r0, [r4, #24]
    98fc:	ebfffe39 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    9900:	e59f226c 	ldr	r2, [pc, #620]	; 9b74 <_ZN9Scheduler8ScheduleEv+0x400>
    9904:	e5921004 	ldr	r1, [r2, #4]
    9908:	e281197a 	add	r1, r1, #1998848	; 0x1e8000
    990c:	e2811d12 	add	r1, r1, #1152	; 0x480
    9910:	e5923004 	ldr	r3, [r2, #4]
    9914:	e1510003 	cmp	r1, r3
    9918:	8afffffc 	bhi	9910 <_ZN9Scheduler8ScheduleEv+0x19c>
    991c:	e5941014 	ldr	r1, [r4, #20]
    9920:	e5d13058 	ldrb	r3, [r1, #88]	; 0x58
    9924:	e3530003 	cmp	r3, #3
    9928:	0a000033 	beq	99fc <_ZN9Scheduler8ScheduleEv+0x288>
    992c:	e594301c 	ldr	r3, [r4, #28]
    9930:	e594c004 	ldr	ip, [r4, #4]
    9934:	e5932000 	ldr	r2, [r3]
    9938:	e28cc001 	add	ip, ip, #1
    993c:	e3520000 	cmp	r2, #0
    9940:	e3a00000 	mov	r0, #0
    9944:	e584c004 	str	ip, [r4, #4]
    9948:	e5810048 	str	r0, [r1, #72]	; 0x48
    994c:	05831000 	streq	r1, [r3]
    9950:	1a000001 	bne	995c <_ZN9Scheduler8ScheduleEv+0x1e8>
    9954:	ea000004 	b	996c <_ZN9Scheduler8ScheduleEv+0x1f8>
    9958:	e1a02003 	mov	r2, r3
    995c:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    9960:	e3530000 	cmp	r3, #0
    9964:	1afffffb 	bne	9958 <_ZN9Scheduler8ScheduleEv+0x1e4>
    9968:	e5821048 	str	r1, [r2, #72]	; 0x48
    996c:	e59f15bc 	ldr	r1, [pc, #1468]	; 9f30 <swi_endTask+0x70>
    9970:	e581d000 	str	sp, [r1]
    9974:	e5940018 	ldr	r0, [r4, #24]
    9978:	ebfffd58 	bl	8ee0 <_ZN7Console5clearEv>
    997c:	e5943014 	ldr	r3, [r4, #20]
    9980:	e5d32058 	ldrb	r2, [r3, #88]	; 0x58
    9984:	e3520000 	cmp	r2, #0
    9988:	1a000067 	bne	9b2c <_ZN9Scheduler8ScheduleEv+0x3b8>
    998c:	e5931050 	ldr	r1, [r3, #80]	; 0x50
    9990:	e3a02001 	mov	r2, #1
    9994:	e5851018 	str	r1, [r5, #24]
    9998:	e5c32058 	strb	r2, [r3, #88]	; 0x58
    999c:	e3a00010 	mov	r0, #16
    99a0:	e129f000 	msr	CPSR_fc, r0
    99a4:	e59f158c 	ldr	r1, [pc, #1420]	; 9f38 <swi_endTask+0x78>
    99a8:	e591d000 	ldr	sp, [r1]
    99ac:	e59f61c0 	ldr	r6, [pc, #448]	; 9b74 <_ZN9Scheduler8ScheduleEv+0x400>
    99b0:	e594200c 	ldr	r2, [r4, #12]
    99b4:	e5961004 	ldr	r1, [r6, #4]
    99b8:	e0620282 	rsb	r0, r2, r2, lsl #5
    99bc:	e0822100 	add	r2, r2, r0, lsl #2
    99c0:	e59f5190 	ldr	r5, [pc, #400]	; 9b58 <_ZN9Scheduler8ScheduleEv+0x3e4>
    99c4:	e0812182 	add	r2, r1, r2, lsl #3
    99c8:	e3a07001 	mov	r7, #1
    99cc:	e5c57004 	strb	r7, [r5, #4]
    99d0:	e5862010 	str	r2, [r6, #16]
    99d4:	e593c04c 	ldr	ip, [r3, #76]	; 0x4c
    99d8:	e1a0e00f 	mov	lr, pc
    99dc:	e12fff1c 	bx	ip
    99e0:	e5963004 	ldr	r3, [r6, #4]
    99e4:	e5c57004 	strb	r7, [r5, #4]
    99e8:	e5863010 	str	r3, [r6, #16]
    99ec:	e3a05002 	mov	r5, #2
    99f0:	ef000000 	svc	0x00000000
    99f4:	e3a05001 	mov	r5, #1
    99f8:	ef000000 	svc	0x00000000
    99fc:	e5953020 	ldr	r3, [r5, #32]
    9a00:	e5d52014 	ldrb	r2, [r5, #20]
    9a04:	e2833001 	add	r3, r3, #1
    9a08:	e3520000 	cmp	r2, #0
    9a0c:	e5853020 	str	r3, [r5, #32]
    9a10:	0affff5b 	beq	9784 <_ZN9Scheduler8ScheduleEv+0x10>
    9a14:	e5947018 	ldr	r7, [r4, #24]
    9a18:	e59f6158 	ldr	r6, [pc, #344]	; 9b78 <_ZN9Scheduler8ScheduleEv+0x404>
    9a1c:	e3a0100a 	mov	r1, #10
    9a20:	e1a00007 	mov	r0, r7
    9a24:	e3a020ff 	mov	r2, #255	; 0xff
    9a28:	ebfffd49 	bl	8f54 <_ZN7Console9printCharEcj>
    9a2c:	e5f61001 	ldrb	r1, [r6, #1]!
    9a30:	e3510000 	cmp	r1, #0
    9a34:	1afffff9 	bne	9a20 <_ZN9Scheduler8ScheduleEv+0x2ac>
    9a38:	e594301c 	ldr	r3, [r4, #28]
    9a3c:	e5931000 	ldr	r1, [r3]
    9a40:	e3510000 	cmp	r1, #0
    9a44:	1affff52 	bne	9794 <_ZN9Scheduler8ScheduleEv+0x20>
    9a48:	e59f2124 	ldr	r2, [pc, #292]	; 9b74 <_ZN9Scheduler8ScheduleEv+0x400>
    9a4c:	e5943008 	ldr	r3, [r4, #8]
    9a50:	e5922004 	ldr	r2, [r2, #4]
    9a54:	e0633002 	rsb	r3, r3, r2
    9a58:	e5843008 	str	r3, [r4, #8]
    9a5c:	e5940018 	ldr	r0, [r4, #24]
    9a60:	ebfffd1e 	bl	8ee0 <_ZN7Console5clearEv>
    9a64:	e59f3110 	ldr	r3, [pc, #272]	; 9b7c <_ZN9Scheduler8ScheduleEv+0x408>
    9a68:	e3a02002 	mov	r2, #2
    9a6c:	e583221c 	str	r2, [r3, #540]	; 0x21c
    9a70:	e5946018 	ldr	r6, [r4, #24]
    9a74:	e59f5104 	ldr	r5, [pc, #260]	; 9b80 <_ZN9Scheduler8ScheduleEv+0x40c>
    9a78:	e3a0100a 	mov	r1, #10
    9a7c:	e1a00006 	mov	r0, r6
    9a80:	e3a02cff 	mov	r2, #65280	; 0xff00
    9a84:	ebfffd32 	bl	8f54 <_ZN7Console9printCharEcj>
    9a88:	e5f51001 	ldrb	r1, [r5, #1]!
    9a8c:	e3510000 	cmp	r1, #0
    9a90:	1afffff9 	bne	9a7c <_ZN9Scheduler8ScheduleEv+0x308>
    9a94:	e5946018 	ldr	r6, [r4, #24]
    9a98:	e59f50e4 	ldr	r5, [pc, #228]	; 9b84 <_ZN9Scheduler8ScheduleEv+0x410>
    9a9c:	e3a0100a 	mov	r1, #10
    9aa0:	e1a00006 	mov	r0, r6
    9aa4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9aa8:	ebfffd29 	bl	8f54 <_ZN7Console9printCharEcj>
    9aac:	e5f51001 	ldrb	r1, [r5, #1]!
    9ab0:	e3510000 	cmp	r1, #0
    9ab4:	1afffff9 	bne	9aa0 <_ZN9Scheduler8ScheduleEv+0x32c>
    9ab8:	e5941004 	ldr	r1, [r4, #4]
    9abc:	e5940018 	ldr	r0, [r4, #24]
    9ac0:	e59f2098 	ldr	r2, [pc, #152]	; 9b60 <_ZN9Scheduler8ScheduleEv+0x3ec>
    9ac4:	ebfffdb2 	bl	9194 <_ZN7Console6kprintEjj>
    9ac8:	e59f50b8 	ldr	r5, [pc, #184]	; 9b88 <_ZN9Scheduler8ScheduleEv+0x414>
    9acc:	e5946018 	ldr	r6, [r4, #24]
    9ad0:	e3a0100a 	mov	r1, #10
    9ad4:	e1a00006 	mov	r0, r6
    9ad8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9adc:	ebfffd1c 	bl	8f54 <_ZN7Console9printCharEcj>
    9ae0:	e5f51001 	ldrb	r1, [r5, #1]!
    9ae4:	e3510000 	cmp	r1, #0
    9ae8:	1afffff9 	bne	9ad4 <_ZN9Scheduler8ScheduleEv+0x360>
    9aec:	e5941008 	ldr	r1, [r4, #8]
    9af0:	e5940018 	ldr	r0, [r4, #24]
    9af4:	e59f2064 	ldr	r2, [pc, #100]	; 9b60 <_ZN9Scheduler8ScheduleEv+0x3ec>
    9af8:	ebfffda5 	bl	9194 <_ZN7Console6kprintEjj>
    9afc:	e59f5088 	ldr	r5, [pc, #136]	; 9b8c <_ZN9Scheduler8ScheduleEv+0x418>
    9b00:	e5944018 	ldr	r4, [r4, #24]
    9b04:	e3a01020 	mov	r1, #32
    9b08:	e1a00004 	mov	r0, r4
    9b0c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9b10:	ebfffd0f 	bl	8f54 <_ZN7Console9printCharEcj>
    9b14:	e5f51001 	ldrb	r1, [r5, #1]!
    9b18:	e3510000 	cmp	r1, #0
    9b1c:	1afffff9 	bne	9b08 <_ZN9Scheduler8ScheduleEv+0x394>
    9b20:	e1a00000 	nop			; (mov r0, r0)
    9b24:	e1a00000 	nop			; (mov r0, r0)
    9b28:	eafffffc 	b	9b20 <_ZN9Scheduler8ScheduleEv+0x3ac>
    9b2c:	e594300c 	ldr	r3, [r4, #12]
    9b30:	e59f203c 	ldr	r2, [pc, #60]	; 9b74 <_ZN9Scheduler8ScheduleEv+0x400>
    9b34:	e0630283 	rsb	r0, r3, r3, lsl #5
    9b38:	e5921004 	ldr	r1, [r2, #4]
    9b3c:	e0833100 	add	r3, r3, r0, lsl #2
    9b40:	e0813183 	add	r3, r1, r3, lsl #3
    9b44:	e3a01001 	mov	r1, #1
    9b48:	e5c51004 	strb	r1, [r5, #4]
    9b4c:	e1a00004 	mov	r0, r4
    9b50:	e5823010 	str	r3, [r2, #16]
    9b54:	ebfffef1 	bl	9720 <_ZN9Scheduler11LoadContextEv>
    9b58:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    9b5c:	0000b1c4 	andeq	fp, r0, r4, asr #3
    9b60:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    9b64:	0000b1d0 	ldrdeq	fp, [r0], -r0
    9b68:	0000b230 	andeq	fp, r0, r0, lsr r2
    9b6c:	0000b240 	andeq	fp, r0, r0, asr #4
    9b70:	0000b254 	andeq	fp, r0, r4, asr r2
    9b74:	20003000 	andcs	r3, r0, r0
    9b78:	0000b1e4 	andeq	fp, r0, r4, ror #3
    9b7c:	2000b000 	andcs	fp, r0, r0
    9b80:	0000b218 	andeq	fp, r0, r8, lsl r2
    9b84:	0000b268 	andeq	fp, r0, r8, ror #4
    9b88:	0000b274 	andeq	fp, r0, r4, ror r2
    9b8c:	0000b284 	andeq	fp, r0, r4, lsl #5

00009b90 <_ZN9Scheduler7AddTaskEv>:
    9b90:	e590301c 	ldr	r3, [r0, #28]
    9b94:	e5932000 	ldr	r2, [r3]
    9b98:	e5901010 	ldr	r1, [r0, #16]
    9b9c:	e92d4070 	push	{r4, r5, r6, lr}
    9ba0:	e3520000 	cmp	r2, #0
    9ba4:	e1a05000 	mov	r5, r0
    9ba8:	e3a00000 	mov	r0, #0
    9bac:	e5810048 	str	r0, [r1, #72]	; 0x48
    9bb0:	05831000 	streq	r1, [r3]
    9bb4:	1a000001 	bne	9bc0 <_ZN9Scheduler7AddTaskEv+0x30>
    9bb8:	ea000004 	b	9bd0 <_ZN9Scheduler7AddTaskEv+0x40>
    9bbc:	e1a02003 	mov	r2, r3
    9bc0:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    9bc4:	e3530000 	cmp	r3, #0
    9bc8:	1afffffb 	bne	9bbc <_ZN9Scheduler7AddTaskEv+0x2c>
    9bcc:	e5821048 	str	r1, [r2, #72]	; 0x48
    9bd0:	e59f30f8 	ldr	r3, [pc, #248]	; 9cd0 <_ZN9Scheduler7AddTaskEv+0x140>
    9bd4:	e5d33014 	ldrb	r3, [r3, #20]
    9bd8:	e3530000 	cmp	r3, #0
    9bdc:	0a000039 	beq	9cc8 <_ZN9Scheduler7AddTaskEv+0x138>
    9be0:	e5956018 	ldr	r6, [r5, #24]
    9be4:	e59f40e8 	ldr	r4, [pc, #232]	; 9cd4 <_ZN9Scheduler7AddTaskEv+0x144>
    9be8:	e3a0100a 	mov	r1, #10
    9bec:	e1a00006 	mov	r0, r6
    9bf0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9bf4:	ebfffcd6 	bl	8f54 <_ZN7Console9printCharEcj>
    9bf8:	e5f41001 	ldrb	r1, [r4, #1]!
    9bfc:	e3510000 	cmp	r1, #0
    9c00:	1afffff9 	bne	9bec <_ZN9Scheduler7AddTaskEv+0x5c>
    9c04:	e595301c 	ldr	r3, [r5, #28]
    9c08:	e5933000 	ldr	r3, [r3]
    9c0c:	e3530000 	cmp	r3, #0
    9c10:	e5950018 	ldr	r0, [r5, #24]
    9c14:	0a000007 	beq	9c38 <_ZN9Scheduler7AddTaskEv+0xa8>
    9c18:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    9c1c:	e3530000 	cmp	r3, #0
    9c20:	e3a01001 	mov	r1, #1
    9c24:	0a000003 	beq	9c38 <_ZN9Scheduler7AddTaskEv+0xa8>
    9c28:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    9c2c:	e3530000 	cmp	r3, #0
    9c30:	e2811001 	add	r1, r1, #1
    9c34:	1afffffb 	bne	9c28 <_ZN9Scheduler7AddTaskEv+0x98>
    9c38:	e59f2098 	ldr	r2, [pc, #152]	; 9cd8 <_ZN9Scheduler7AddTaskEv+0x148>
    9c3c:	ebfffd54 	bl	9194 <_ZN7Console6kprintEjj>
    9c40:	e59f4094 	ldr	r4, [pc, #148]	; 9cdc <_ZN9Scheduler7AddTaskEv+0x14c>
    9c44:	e5956018 	ldr	r6, [r5, #24]
    9c48:	e3a0100a 	mov	r1, #10
    9c4c:	e1a00006 	mov	r0, r6
    9c50:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9c54:	ebfffcbe 	bl	8f54 <_ZN7Console9printCharEcj>
    9c58:	e5f41001 	ldrb	r1, [r4, #1]!
    9c5c:	e3510000 	cmp	r1, #0
    9c60:	1afffff9 	bne	9c4c <_ZN9Scheduler7AddTaskEv+0xbc>
    9c64:	e5953010 	ldr	r3, [r5, #16]
    9c68:	e5950018 	ldr	r0, [r5, #24]
    9c6c:	e1d315b4 	ldrh	r1, [r3, #84]	; 0x54
    9c70:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9c74:	ebfffd46 	bl	9194 <_ZN7Console6kprintEjj>
    9c78:	e59f4060 	ldr	r4, [pc, #96]	; 9ce0 <_ZN9Scheduler7AddTaskEv+0x150>
    9c7c:	e5956018 	ldr	r6, [r5, #24]
    9c80:	e3a0100a 	mov	r1, #10
    9c84:	e1a00006 	mov	r0, r6
    9c88:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9c8c:	ebfffcb0 	bl	8f54 <_ZN7Console9printCharEcj>
    9c90:	e5f41001 	ldrb	r1, [r4, #1]!
    9c94:	e3510000 	cmp	r1, #0
    9c98:	1afffff9 	bne	9c84 <_ZN9Scheduler7AddTaskEv+0xf4>
    9c9c:	e5951010 	ldr	r1, [r5, #16]
    9ca0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9ca4:	e5950018 	ldr	r0, [r5, #24]
    9ca8:	ebfffd4e 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    9cac:	e59f2030 	ldr	r2, [pc, #48]	; 9ce4 <_ZN9Scheduler7AddTaskEv+0x154>
    9cb0:	e5921004 	ldr	r1, [r2, #4]
    9cb4:	e281183d 	add	r1, r1, #3997696	; 0x3d0000
    9cb8:	e2811c09 	add	r1, r1, #2304	; 0x900
    9cbc:	e5923004 	ldr	r3, [r2, #4]
    9cc0:	e1510003 	cmp	r1, r3
    9cc4:	8afffffc 	bhi	9cbc <_ZN9Scheduler7AddTaskEv+0x12c>
    9cc8:	e8bd4070 	pop	{r4, r5, r6, lr}
    9ccc:	e12fff1e 	bx	lr
    9cd0:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    9cd4:	0000b2ac 	andeq	fp, r0, ip, lsr #5
    9cd8:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    9cdc:	0000b2c8 	andeq	fp, r0, r8, asr #5
    9ce0:	0000b2d8 	ldrdeq	fp, [r0], -r8
    9ce4:	20003000 	andcs	r3, r0, r0

00009ce8 <_Z5test1v>:
    9ce8:	e59f300c 	ldr	r3, [pc, #12]	; 9cfc <_Z5test1v+0x14>
    9cec:	e1a00000 	nop			; (mov r0, r0)
    9cf0:	e2533001 	subs	r3, r3, #1
    9cf4:	1afffffc 	bne	9cec <_Z5test1v+0x4>
    9cf8:	e12fff1e 	bx	lr
    9cfc:	00989680 	addseq	r9, r8, r0, lsl #13

00009d00 <swi_writer>:
    9d00:	e92d4070 	push	{r4, r5, r6, lr}
    9d04:	e1a05006 	mov	r5, r6
    9d08:	e1a04007 	mov	r4, r7
    9d0c:	e1a01008 	mov	r1, r8
    9d10:	e1a03009 	mov	r3, r9
    9d14:	e3530003 	cmp	r3, #3
    9d18:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    9d1c:	ea00000e 	b	9d5c <swi_writer+0x5c>
    9d20:	00009d30 	andeq	r9, r0, r0, lsr sp
    9d24:	00009d8c 	andeq	r9, r0, ip, lsl #27
    9d28:	00009d78 	andeq	r9, r0, r8, ror sp
    9d2c:	00009d64 	andeq	r9, r0, r4, ror #26
    9d30:	e5d51000 	ldrb	r1, [r5]
    9d34:	e59f3080 	ldr	r3, [pc, #128]	; 9dbc <swi_writer+0xbc>
    9d38:	e3510000 	cmp	r1, #0
    9d3c:	e5936008 	ldr	r6, [r3, #8]
    9d40:	0a000005 	beq	9d5c <swi_writer+0x5c>
    9d44:	e1a00006 	mov	r0, r6
    9d48:	e1a02004 	mov	r2, r4
    9d4c:	ebfffc80 	bl	8f54 <_ZN7Console9printCharEcj>
    9d50:	e5f51001 	ldrb	r1, [r5, #1]!
    9d54:	e3510000 	cmp	r1, #0
    9d58:	1afffff9 	bne	9d44 <swi_writer+0x44>
    9d5c:	e8bd4070 	pop	{r4, r5, r6, lr}
    9d60:	e12fff1e 	bx	lr
    9d64:	e59f3050 	ldr	r3, [pc, #80]	; 9dbc <swi_writer+0xbc>
    9d68:	e1a02004 	mov	r2, r4
    9d6c:	e5930008 	ldr	r0, [r3, #8]
    9d70:	e8bd4070 	pop	{r4, r5, r6, lr}
    9d74:	eafffd1b 	b	91e8 <_ZN7Console12kprintHexa32Ejj>
    9d78:	e59f303c 	ldr	r3, [pc, #60]	; 9dbc <swi_writer+0xbc>
    9d7c:	e1a02004 	mov	r2, r4
    9d80:	e5930008 	ldr	r0, [r3, #8]
    9d84:	e8bd4070 	pop	{r4, r5, r6, lr}
    9d88:	eafffd01 	b	9194 <_ZN7Console6kprintEjj>
    9d8c:	e5d51000 	ldrb	r1, [r5]
    9d90:	e59f3024 	ldr	r3, [pc, #36]	; 9dbc <swi_writer+0xbc>
    9d94:	e3510000 	cmp	r1, #0
    9d98:	e5936008 	ldr	r6, [r3, #8]
    9d9c:	0affffee 	beq	9d5c <swi_writer+0x5c>
    9da0:	e1a00006 	mov	r0, r6
    9da4:	e1a02004 	mov	r2, r4
    9da8:	ebfffc69 	bl	8f54 <_ZN7Console9printCharEcj>
    9dac:	e5f51001 	ldrb	r1, [r5, #1]!
    9db0:	e3510000 	cmp	r1, #0
    9db4:	1afffff9 	bne	9da0 <swi_writer+0xa0>
    9db8:	eaffffe7 	b	9d5c <swi_writer+0x5c>
    9dbc:	0000ad2c 	andeq	sl, r0, ip, lsr #26

00009dc0 <swi_svmode>:
    9dc0:	e92d4070 	push	{r4, r5, r6, lr}
    9dc4:	e8bd4070 	pop	{r4, r5, r6, lr}
    9dc8:	e59f50dc 	ldr	r5, [pc, #220]	; 9eac <swi_svmode+0xec>
    9dcc:	e5d53014 	ldrb	r3, [r5, #20]
    9dd0:	e3530000 	cmp	r3, #0
    9dd4:	0a000032 	beq	9ea4 <swi_svmode+0xe4>
    9dd8:	e5956008 	ldr	r6, [r5, #8]
    9ddc:	e59f40cc 	ldr	r4, [pc, #204]	; 9eb0 <swi_svmode+0xf0>
    9de0:	e3a0100a 	mov	r1, #10
    9de4:	e1a00006 	mov	r0, r6
    9de8:	e59f20c4 	ldr	r2, [pc, #196]	; 9eb4 <swi_svmode+0xf4>
    9dec:	ebfffc58 	bl	8f54 <_ZN7Console9printCharEcj>
    9df0:	e5f41001 	ldrb	r1, [r4, #1]!
    9df4:	e3510000 	cmp	r1, #0
    9df8:	1afffff9 	bne	9de4 <swi_svmode+0x24>
    9dfc:	e5956008 	ldr	r6, [r5, #8]
    9e00:	e59f40b0 	ldr	r4, [pc, #176]	; 9eb8 <swi_svmode+0xf8>
    9e04:	e3a0100a 	mov	r1, #10
    9e08:	e1a00006 	mov	r0, r6
    9e0c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9e10:	ebfffc4f 	bl	8f54 <_ZN7Console9printCharEcj>
    9e14:	e5f41001 	ldrb	r1, [r4, #1]!
    9e18:	e3510000 	cmp	r1, #0
    9e1c:	1afffff9 	bne	9e08 <swi_svmode+0x48>
    9e20:	e595300c 	ldr	r3, [r5, #12]
    9e24:	e593301c 	ldr	r3, [r3, #28]
    9e28:	e5933000 	ldr	r3, [r3]
    9e2c:	e3530000 	cmp	r3, #0
    9e30:	e5950008 	ldr	r0, [r5, #8]
    9e34:	0a000007 	beq	9e58 <swi_svmode+0x98>
    9e38:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    9e3c:	e3530000 	cmp	r3, #0
    9e40:	e3a01001 	mov	r1, #1
    9e44:	0a000003 	beq	9e58 <swi_svmode+0x98>
    9e48:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    9e4c:	e3530000 	cmp	r3, #0
    9e50:	e2811001 	add	r1, r1, #1
    9e54:	1afffffb 	bne	9e48 <swi_svmode+0x88>
    9e58:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9e5c:	ebfffccc 	bl	9194 <_ZN7Console6kprintEjj>
    9e60:	e59f10d4 	ldr	r1, [pc, #212]	; 9f3c <swi_endTask+0x7c>
    9e64:	e581d000 	str	sp, [r1]
    9e68:	e3a0100a 	mov	r1, #10
    9e6c:	e5950008 	ldr	r0, [r5, #8]
    9e70:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9e74:	ebfffc36 	bl	8f54 <_ZN7Console9printCharEcj>
    9e78:	e5951020 	ldr	r1, [r5, #32]
    9e7c:	e3a02cff 	mov	r2, #65280	; 0xff00
    9e80:	e5950008 	ldr	r0, [r5, #8]
    9e84:	ebfffcd7 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    9e88:	e59f202c 	ldr	r2, [pc, #44]	; 9ebc <swi_svmode+0xfc>
    9e8c:	e5921004 	ldr	r1, [r2, #4]
    9e90:	e28119b7 	add	r1, r1, #2998272	; 0x2dc000
    9e94:	e2811d1b 	add	r1, r1, #1728	; 0x6c0
    9e98:	e5923004 	ldr	r3, [r2, #4]
    9e9c:	e1510003 	cmp	r1, r3
    9ea0:	8afffffc 	bhi	9e98 <swi_svmode+0xd8>
    9ea4:	e595000c 	ldr	r0, [r5, #12]
    9ea8:	ebfffe31 	bl	9774 <_ZN9Scheduler8ScheduleEv>
    9eac:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    9eb0:	0000b2f0 	strdeq	fp, [r0], -r0
    9eb4:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    9eb8:	0000b30c 	andeq	fp, r0, ip, lsl #6
    9ebc:	20003000 	andcs	r3, r0, r0

00009ec0 <swi_endTask>:
    9ec0:	e92d4038 	push	{r3, r4, r5, lr}
    9ec4:	e59f307c 	ldr	r3, [pc, #124]	; 9f48 <swi_endTask+0x88>
    9ec8:	e593200c 	ldr	r2, [r3, #12]
    9ecc:	e5d30014 	ldrb	r0, [r3, #20]
    9ed0:	e5922014 	ldr	r2, [r2, #20]
    9ed4:	e3a01003 	mov	r1, #3
    9ed8:	e3500000 	cmp	r0, #0
    9edc:	e5c21058 	strb	r1, [r2, #88]	; 0x58
    9ee0:	0a00000f 	beq	9f24 <swi_endTask+0x64>
    9ee4:	e5935008 	ldr	r5, [r3, #8]
    9ee8:	e59f405c 	ldr	r4, [pc, #92]	; 9f4c <swi_endTask+0x8c>
    9eec:	e3a0100a 	mov	r1, #10
    9ef0:	e1a00005 	mov	r0, r5
    9ef4:	e3a020ff 	mov	r2, #255	; 0xff
    9ef8:	ebfffc15 	bl	8f54 <_ZN7Console9printCharEcj>
    9efc:	e5f41001 	ldrb	r1, [r4, #1]!
    9f00:	e3510000 	cmp	r1, #0
    9f04:	1afffff9 	bne	9ef0 <swi_endTask+0x30>
    9f08:	e59f2040 	ldr	r2, [pc, #64]	; 9f50 <swi_endTask+0x90>
    9f0c:	e5921004 	ldr	r1, [r2, #4]
    9f10:	e28119b7 	add	r1, r1, #2998272	; 0x2dc000
    9f14:	e2811d1b 	add	r1, r1, #1728	; 0x6c0
    9f18:	e5923004 	ldr	r3, [r2, #4]
    9f1c:	e1510003 	cmp	r1, r3
    9f20:	8afffffc 	bhi	9f18 <swi_endTask+0x58>
    9f24:	0000ad70 	andeq	sl, r0, r0, ror sp
    9f28:	00001fc8 	andeq	r1, r0, r8, asr #31
    9f2c:	0000ad3c 	andeq	sl, r0, ip, lsr sp
    9f30:	0000ad78 	andeq	sl, r0, r8, ror sp
    9f34:	0000ad48 	andeq	sl, r0, r8, asr #26
    9f38:	0000ad44 	andeq	sl, r0, r4, asr #26
    9f3c:	0000ad4c 	andeq	sl, r0, ip, asr #26
    9f40:	e8bd4038 	pop	{r3, r4, r5, lr}
    9f44:	e12fff1e 	bx	lr
    9f48:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    9f4c:	0000b324 	andeq	fp, r0, r4, lsr #6
    9f50:	20003000 	andcs	r3, r0, r0

00009f54 <swi_addTask>:
    9f54:	e59f301c 	ldr	r3, [pc, #28]	; 9f78 <swi_addTask+0x24>
    9f58:	e593000c 	ldr	r0, [r3, #12]
    9f5c:	e59f3018 	ldr	r3, [pc, #24]	; 9f7c <swi_addTask+0x28>
    9f60:	e3a02801 	mov	r2, #65536	; 0x10000
    9f64:	e3500000 	cmp	r0, #0
    9f68:	e583201c 	str	r2, [r3, #28]
    9f6c:	e5832028 	str	r2, [r3, #40]	; 0x28
    9f70:	012fff1e 	bxeq	lr
    9f74:	eaffff05 	b	9b90 <_ZN9Scheduler7AddTaskEv>
    9f78:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    9f7c:	20200000 	eorcs	r0, r0, r0

00009f80 <_Z11userAddTaskv>:
    9f80:	e3a05003 	mov	r5, #3
    9f84:	ef000000 	svc	0x00000000
    9f88:	e12fff1e 	bx	lr

00009f8c <_Z9userPrintPKcj>:
    9f8c:	e59fc034 	ldr	ip, [pc, #52]	; 9fc8 <_Z9userPrintPKcj+0x3c>
    9f90:	e3a03000 	mov	r3, #0
    9f94:	e7d02003 	ldrb	r2, [r0, r3]
    9f98:	e3520000 	cmp	r2, #0
    9f9c:	1a000007 	bne	9fc0 <_Z9userPrintPKcj+0x34>
    9fa0:	e153000c 	cmp	r3, ip
    9fa4:	8a000005 	bhi	9fc0 <_Z9userPrintPKcj+0x34>
    9fa8:	e1a07001 	mov	r7, r1
    9fac:	e1a06000 	mov	r6, r0
    9fb0:	e3a09000 	mov	r9, #0
    9fb4:	e3a05000 	mov	r5, #0
    9fb8:	ef000000 	svc	0x00000000
    9fbc:	e12fff1e 	bx	lr
    9fc0:	e2833001 	add	r3, r3, #1
    9fc4:	eafffff2 	b	9f94 <_Z9userPrintPKcj+0x8>
    9fc8:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

00009fcc <_Z9userPrintPKc>:
    9fcc:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    9fd0:	eaffffed 	b	9f8c <_Z9userPrintPKcj>

00009fd4 <_Z9userPrintPcj>:
    9fd4:	e59fc034 	ldr	ip, [pc, #52]	; a010 <_Z9userPrintPcj+0x3c>
    9fd8:	e3a03000 	mov	r3, #0
    9fdc:	e7d02003 	ldrb	r2, [r0, r3]
    9fe0:	e3520000 	cmp	r2, #0
    9fe4:	1a000007 	bne	a008 <_Z9userPrintPcj+0x34>
    9fe8:	e153000c 	cmp	r3, ip
    9fec:	8a000005 	bhi	a008 <_Z9userPrintPcj+0x34>
    9ff0:	e1a07001 	mov	r7, r1
    9ff4:	e1a06000 	mov	r6, r0
    9ff8:	e3a09001 	mov	r9, #1
    9ffc:	e3a05000 	mov	r5, #0
    a000:	ef000000 	svc	0x00000000
    a004:	e12fff1e 	bx	lr
    a008:	e2833001 	add	r3, r3, #1
    a00c:	eafffff2 	b	9fdc <_Z9userPrintPcj+0x8>
    a010:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

0000a014 <_Z9userPrintPc>:
    a014:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    a018:	eaffffed 	b	9fd4 <_Z9userPrintPcj>

0000a01c <_Z9userPrintjj>:
    a01c:	e92d4030 	push	{r4, r5, lr}
    a020:	e24dd00c 	sub	sp, sp, #12
    a024:	e1a07001 	mov	r7, r1
    a028:	e1a08000 	mov	r8, r0
    a02c:	e3a09002 	mov	r9, #2
    a030:	e3a05000 	mov	r5, #0
    a034:	ef000000 	svc	0x00000000
    a038:	e3a03001 	mov	r3, #1
    a03c:	e5cd3007 	strb	r3, [sp, #7]
    a040:	e5dd3007 	ldrb	r3, [sp, #7]
    a044:	e3530000 	cmp	r3, #0
    a048:	1a00000c 	bne	a080 <_Z9userPrintjj+0x64>
    a04c:	e59f303c 	ldr	r3, [pc, #60]	; a090 <_Z9userPrintjj+0x74>
    a050:	e59f403c 	ldr	r4, [pc, #60]	; a094 <_Z9userPrintjj+0x78>
    a054:	e5935008 	ldr	r5, [r3, #8]
    a058:	e3a0100a 	mov	r1, #10
    a05c:	e1a00005 	mov	r0, r5
    a060:	e3a020ff 	mov	r2, #255	; 0xff
    a064:	ebfffbba 	bl	8f54 <_ZN7Console9printCharEcj>
    a068:	e5f41001 	ldrb	r1, [r4, #1]!
    a06c:	e3510000 	cmp	r1, #0
    a070:	1afffff9 	bne	a05c <_Z9userPrintjj+0x40>
    a074:	e28dd00c 	add	sp, sp, #12
    a078:	e8bd4030 	pop	{r4, r5, lr}
    a07c:	e12fff1e 	bx	lr
    a080:	e1a00000 	nop			; (mov r0, r0)
    a084:	e28dd00c 	add	sp, sp, #12
    a088:	e8bd4030 	pop	{r4, r5, lr}
    a08c:	e12fff1e 	bx	lr
    a090:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    a094:	0000b33c 	andeq	fp, r0, ip, lsr r3

0000a098 <_Z12PrintProcessv>:
    a098:	e92d4010 	push	{r4, lr}
    a09c:	e3a04f7d 	mov	r4, #500	; 0x1f4
    a0a0:	e2444001 	sub	r4, r4, #1
    a0a4:	e59f0038 	ldr	r0, [pc, #56]	; a0e4 <_Z12PrintProcessv+0x4c>
    a0a8:	e3a01cff 	mov	r1, #65280	; 0xff00
    a0ac:	ebffffb6 	bl	9f8c <_Z9userPrintPKcj>
    a0b0:	e1a00004 	mov	r0, r4
    a0b4:	e3a01cff 	mov	r1, #65280	; 0xff00
    a0b8:	ebffffd7 	bl	a01c <_Z9userPrintjj>
    a0bc:	e59f0024 	ldr	r0, [pc, #36]	; a0e8 <_Z12PrintProcessv+0x50>
    a0c0:	e3a01cff 	mov	r1, #65280	; 0xff00
    a0c4:	ebffffb0 	bl	9f8c <_Z9userPrintPKcj>
    a0c8:	e59f001c 	ldr	r0, [pc, #28]	; a0ec <_Z12PrintProcessv+0x54>
    a0cc:	e59f101c 	ldr	r1, [pc, #28]	; a0f0 <_Z12PrintProcessv+0x58>
    a0d0:	ebffffad 	bl	9f8c <_Z9userPrintPKcj>
    a0d4:	e3540000 	cmp	r4, #0
    a0d8:	1afffff0 	bne	a0a0 <_Z12PrintProcessv+0x8>
    a0dc:	e8bd4010 	pop	{r4, lr}
    a0e0:	e12fff1e 	bx	lr
    a0e4:	0000b34c 	andeq	fp, r0, ip, asr #6
    a0e8:	0000b350 	andeq	fp, r0, r0, asr r3
    a0ec:	0000b354 	andeq	fp, r0, r4, asr r3
    a0f0:	00ffff00 	rscseq	pc, pc, r0, lsl #30

0000a0f4 <_Z13PrintProcess2v>:
    a0f4:	e92d4010 	push	{r4, lr}
    a0f8:	e3a04f7d 	mov	r4, #500	; 0x1f4
    a0fc:	e2444001 	sub	r4, r4, #1
    a100:	e59f0040 	ldr	r0, [pc, #64]	; a148 <_Z13PrintProcess2v+0x54>
    a104:	e3a01cff 	mov	r1, #65280	; 0xff00
    a108:	ebffff9f 	bl	9f8c <_Z9userPrintPKcj>
    a10c:	e1a00004 	mov	r0, r4
    a110:	e3a01cff 	mov	r1, #65280	; 0xff00
    a114:	ebffffc0 	bl	a01c <_Z9userPrintjj>
    a118:	e59f002c 	ldr	r0, [pc, #44]	; a14c <_Z13PrintProcess2v+0x58>
    a11c:	e3a01cff 	mov	r1, #65280	; 0xff00
    a120:	ebffff99 	bl	9f8c <_Z9userPrintPKcj>
    a124:	e59f0024 	ldr	r0, [pc, #36]	; a150 <_Z13PrintProcess2v+0x5c>
    a128:	e3a010ff 	mov	r1, #255	; 0xff
    a12c:	ebffff96 	bl	9f8c <_Z9userPrintPKcj>
    a130:	e3540000 	cmp	r4, #0
    a134:	1afffff0 	bne	a0fc <_Z13PrintProcess2v+0x8>
    a138:	e3a05003 	mov	r5, #3
    a13c:	ef000000 	svc	0x00000000
    a140:	e8bd4010 	pop	{r4, lr}
    a144:	e12fff1e 	bx	lr
    a148:	0000b34c 	andeq	fp, r0, ip, asr #6
    a14c:	0000b350 	andeq	fp, r0, r0, asr r3
    a150:	0000b388 	andeq	fp, r0, r8, lsl #7

0000a154 <_Z13PrintProcess3v>:
    a154:	e92d4010 	push	{r4, lr}
    a158:	e3a04f7d 	mov	r4, #500	; 0x1f4
    a15c:	e2444001 	sub	r4, r4, #1
    a160:	e59f0038 	ldr	r0, [pc, #56]	; a1a0 <_Z13PrintProcess3v+0x4c>
    a164:	e3a01cff 	mov	r1, #65280	; 0xff00
    a168:	ebffff87 	bl	9f8c <_Z9userPrintPKcj>
    a16c:	e1a00004 	mov	r0, r4
    a170:	e3a01cff 	mov	r1, #65280	; 0xff00
    a174:	ebffffa8 	bl	a01c <_Z9userPrintjj>
    a178:	e59f0024 	ldr	r0, [pc, #36]	; a1a4 <_Z13PrintProcess3v+0x50>
    a17c:	e3a01cff 	mov	r1, #65280	; 0xff00
    a180:	ebffff81 	bl	9f8c <_Z9userPrintPKcj>
    a184:	e59f001c 	ldr	r0, [pc, #28]	; a1a8 <_Z13PrintProcess3v+0x54>
    a188:	e59f101c 	ldr	r1, [pc, #28]	; a1ac <_Z13PrintProcess3v+0x58>
    a18c:	ebffff7e 	bl	9f8c <_Z9userPrintPKcj>
    a190:	e3540000 	cmp	r4, #0
    a194:	1afffff0 	bne	a15c <_Z13PrintProcess3v+0x8>
    a198:	e8bd4010 	pop	{r4, lr}
    a19c:	e12fff1e 	bx	lr
    a1a0:	0000b34c 	andeq	fp, r0, ip, asr #6
    a1a4:	0000b350 	andeq	fp, r0, r0, asr r3
    a1a8:	0000b3a8 	andeq	fp, r0, r8, lsr #7
    a1ac:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>

0000a1b0 <_Z13PrintProcess4v>:
    a1b0:	e92d4010 	push	{r4, lr}
    a1b4:	e3a04f7d 	mov	r4, #500	; 0x1f4
    a1b8:	e2444001 	sub	r4, r4, #1
    a1bc:	e59f0038 	ldr	r0, [pc, #56]	; a1fc <_Z13PrintProcess4v+0x4c>
    a1c0:	e3a01cff 	mov	r1, #65280	; 0xff00
    a1c4:	ebffff70 	bl	9f8c <_Z9userPrintPKcj>
    a1c8:	e1a00004 	mov	r0, r4
    a1cc:	e3a01cff 	mov	r1, #65280	; 0xff00
    a1d0:	ebffff91 	bl	a01c <_Z9userPrintjj>
    a1d4:	e59f0024 	ldr	r0, [pc, #36]	; a200 <_Z13PrintProcess4v+0x50>
    a1d8:	e3a01cff 	mov	r1, #65280	; 0xff00
    a1dc:	ebffff6a 	bl	9f8c <_Z9userPrintPKcj>
    a1e0:	e59f001c 	ldr	r0, [pc, #28]	; a204 <_Z13PrintProcess4v+0x54>
    a1e4:	e59f101c 	ldr	r1, [pc, #28]	; a208 <_Z13PrintProcess4v+0x58>
    a1e8:	ebffff67 	bl	9f8c <_Z9userPrintPKcj>
    a1ec:	e3540000 	cmp	r4, #0
    a1f0:	1afffff0 	bne	a1b8 <_Z13PrintProcess4v+0x8>
    a1f4:	e8bd4010 	pop	{r4, lr}
    a1f8:	e12fff1e 	bx	lr
    a1fc:	0000b34c 	andeq	fp, r0, ip, asr #6
    a200:	0000b350 	andeq	fp, r0, r0, asr r3
    a204:	0000b3bc 			; <UNDEFINED> instruction: 0x0000b3bc
    a208:	00ff00ff 	ldrshteq	r0, [pc], #15

0000a20c <_Z9userPrintj>:
    a20c:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    a210:	eaffff81 	b	a01c <_Z9userPrintjj>

0000a214 <_Z15userPrintHexa32jj>:
    a214:	e92d4030 	push	{r4, r5, lr}
    a218:	e24dd00c 	sub	sp, sp, #12
    a21c:	e1a07001 	mov	r7, r1
    a220:	e1a08000 	mov	r8, r0
    a224:	e3a09003 	mov	r9, #3
    a228:	e3a05000 	mov	r5, #0
    a22c:	ef000000 	svc	0x00000000
    a230:	e3a03001 	mov	r3, #1
    a234:	e5cd3007 	strb	r3, [sp, #7]
    a238:	e5dd3007 	ldrb	r3, [sp, #7]
    a23c:	e3530000 	cmp	r3, #0
    a240:	1a00000c 	bne	a278 <_Z15userPrintHexa32jj+0x64>
    a244:	e59f303c 	ldr	r3, [pc, #60]	; a288 <_Z15userPrintHexa32jj+0x74>
    a248:	e59f403c 	ldr	r4, [pc, #60]	; a28c <_Z15userPrintHexa32jj+0x78>
    a24c:	e5935008 	ldr	r5, [r3, #8]
    a250:	e3a0100a 	mov	r1, #10
    a254:	e1a00005 	mov	r0, r5
    a258:	e3a020ff 	mov	r2, #255	; 0xff
    a25c:	ebfffb3c 	bl	8f54 <_ZN7Console9printCharEcj>
    a260:	e5f41001 	ldrb	r1, [r4, #1]!
    a264:	e3510000 	cmp	r1, #0
    a268:	1afffff9 	bne	a254 <_Z15userPrintHexa32jj+0x40>
    a26c:	e28dd00c 	add	sp, sp, #12
    a270:	e8bd4030 	pop	{r4, r5, lr}
    a274:	e12fff1e 	bx	lr
    a278:	e1a00000 	nop			; (mov r0, r0)
    a27c:	e28dd00c 	add	sp, sp, #12
    a280:	e8bd4030 	pop	{r4, r5, lr}
    a284:	e12fff1e 	bx	lr
    a288:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    a28c:	0000b33c 	andeq	fp, r0, ip, lsr r3

0000a290 <_Z15userPrintHexa32j>:
    a290:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    a294:	eaffffde 	b	a214 <_Z15userPrintHexa32jj>

0000a298 <_Z12print_headerP7Console>:
    a298:	e92d4038 	push	{r3, r4, r5, lr}
    a29c:	e59f5084 	ldr	r5, [pc, #132]	; a328 <_Z12print_headerP7Console+0x90>
    a2a0:	e1a04000 	mov	r4, r0
    a2a4:	e3a01057 	mov	r1, #87	; 0x57
    a2a8:	e1a00004 	mov	r0, r4
    a2ac:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a2b0:	ebfffb27 	bl	8f54 <_ZN7Console9printCharEcj>
    a2b4:	e5f51001 	ldrb	r1, [r5, #1]!
    a2b8:	e3510000 	cmp	r1, #0
    a2bc:	1afffff9 	bne	a2a8 <_Z12print_headerP7Console+0x10>
    a2c0:	e59f5064 	ldr	r5, [pc, #100]	; a32c <_Z12print_headerP7Console+0x94>
    a2c4:	e3a01042 	mov	r1, #66	; 0x42
    a2c8:	e1a00004 	mov	r0, r4
    a2cc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a2d0:	ebfffb1f 	bl	8f54 <_ZN7Console9printCharEcj>
    a2d4:	e5f51001 	ldrb	r1, [r5, #1]!
    a2d8:	e3510000 	cmp	r1, #0
    a2dc:	1afffff9 	bne	a2c8 <_Z12print_headerP7Console+0x30>
    a2e0:	e59f5048 	ldr	r5, [pc, #72]	; a330 <_Z12print_headerP7Console+0x98>
    a2e4:	e3a01030 	mov	r1, #48	; 0x30
    a2e8:	e1a00004 	mov	r0, r4
    a2ec:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a2f0:	ebfffb17 	bl	8f54 <_ZN7Console9printCharEcj>
    a2f4:	e5f51001 	ldrb	r1, [r5, #1]!
    a2f8:	e3510000 	cmp	r1, #0
    a2fc:	1afffff9 	bne	a2e8 <_Z12print_headerP7Console+0x50>
    a300:	e59f502c 	ldr	r5, [pc, #44]	; a334 <_Z12print_headerP7Console+0x9c>
    a304:	e3a0100a 	mov	r1, #10
    a308:	e1a00004 	mov	r0, r4
    a30c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a310:	ebfffb0f 	bl	8f54 <_ZN7Console9printCharEcj>
    a314:	e5f51001 	ldrb	r1, [r5, #1]!
    a318:	e3510000 	cmp	r1, #0
    a31c:	1afffff9 	bne	a308 <_Z12print_headerP7Console+0x70>
    a320:	e8bd4038 	pop	{r3, r4, r5, lr}
    a324:	e12fff1e 	bx	lr
    a328:	0000b3d0 	ldrdeq	fp, [r0], -r0
    a32c:	0000b414 	andeq	fp, r0, r4, lsl r4
    a330:	0000b41c 	andeq	fp, r0, ip, lsl r4
    a334:	0000b428 	andeq	fp, r0, r8, lsr #8

0000a338 <kmain>:
    a338:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    a33c:	e24dd03c 	sub	sp, sp, #60	; 0x3c
    a340:	e59f11d4 	ldr	r1, [pc, #468]	; a51c <kmain+0x1e4>
    a344:	e581e000 	str	lr, [r1]
    a348:	e59f61a8 	ldr	r6, [pc, #424]	; a4f8 <kmain+0x1c0>
    a34c:	e5964008 	ldr	r4, [r6, #8]
    a350:	e3540000 	cmp	r4, #0
    a354:	0a00000c 	beq	a38c <kmain+0x54>
    a358:	e59f519c 	ldr	r5, [pc, #412]	; a4fc <kmain+0x1c4>
    a35c:	e3a0100a 	mov	r1, #10
    a360:	e1a00004 	mov	r0, r4
    a364:	e3a020ff 	mov	r2, #255	; 0xff
    a368:	ebfffaf9 	bl	8f54 <_ZN7Console9printCharEcj>
    a36c:	e5f51001 	ldrb	r1, [r5, #1]!
    a370:	e3510000 	cmp	r1, #0
    a374:	1afffff9 	bne	a360 <kmain+0x28>
    a378:	e5961020 	ldr	r1, [r6, #32]
    a37c:	e5960008 	ldr	r0, [r6, #8]
    a380:	e59f2178 	ldr	r2, [pc, #376]	; a500 <kmain+0x1c8>
    a384:	ebfffb97 	bl	91e8 <_ZN7Console12kprintHexa32Ejj>
    a388:	eafffffe 	b	a388 <kmain+0x50>
    a38c:	e1a01004 	mov	r1, r4
    a390:	e28d5008 	add	r5, sp, #8
    a394:	e3a02b01 	mov	r2, #1024	; 0x400
    a398:	e3a03c03 	mov	r3, #768	; 0x300
    a39c:	e1a0000d 	mov	r0, sp
    a3a0:	ebfff9b0 	bl	8a68 <_ZN11gpu2dCanvasC1Ebjj>
    a3a4:	e3a0300a 	mov	r3, #10
    a3a8:	e28d2000 	add	r2, sp, #0
    a3ac:	e1a00005 	mov	r0, r5
    a3b0:	e58d2014 	str	r2, [sp, #20]
    a3b4:	e58d3010 	str	r3, [sp, #16]
    a3b8:	e58d4008 	str	r4, [sp, #8]
    a3bc:	e58d400c 	str	r4, [sp, #12]
    a3c0:	ebfffac6 	bl	8ee0 <_ZN7Console5clearEv>
    a3c4:	e3a01001 	mov	r1, #1
    a3c8:	e3a00030 	mov	r0, #48	; 0x30
    a3cc:	e5865008 	str	r5, [r6, #8]
    a3d0:	ebfff77c 	bl	81c8 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    a3d4:	e59f3128 	ldr	r3, [pc, #296]	; a504 <kmain+0x1cc>
    a3d8:	e3a02801 	mov	r2, #65536	; 0x10000
    a3dc:	e1a00005 	mov	r0, r5
    a3e0:	e583202c 	str	r2, [r3, #44]	; 0x2c
    a3e4:	e59f411c 	ldr	r4, [pc, #284]	; a508 <kmain+0x1d0>
    a3e8:	ebffffaa 	bl	a298 <_Z12print_headerP7Console>
    a3ec:	e3a01057 	mov	r1, #87	; 0x57
    a3f0:	e1a00005 	mov	r0, r5
    a3f4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a3f8:	ebfffad5 	bl	8f54 <_ZN7Console9printCharEcj>
    a3fc:	e5f41001 	ldrb	r1, [r4, #1]!
    a400:	e3510000 	cmp	r1, #0
    a404:	1afffff9 	bne	a3f0 <kmain+0xb8>
    a408:	e59f70fc 	ldr	r7, [pc, #252]	; a50c <kmain+0x1d4>
    a40c:	e3a04012 	mov	r4, #18
    a410:	e1a00005 	mov	r0, r5
    a414:	e3a0102e 	mov	r1, #46	; 0x2e
    a418:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a41c:	ebfffacc 	bl	8f54 <_ZN7Console9printCharEcj>
    a420:	e5973004 	ldr	r3, [r7, #4]
    a424:	e2833b61 	add	r3, r3, #99328	; 0x18400
    a428:	e2833e2a 	add	r3, r3, #672	; 0x2a0
    a42c:	e5972004 	ldr	r2, [r7, #4]
    a430:	e1530002 	cmp	r3, r2
    a434:	8afffffc 	bhi	a42c <kmain+0xf4>
    a438:	e2544001 	subs	r4, r4, #1
    a43c:	1afffff3 	bne	a410 <kmain+0xd8>
    a440:	e59f70c8 	ldr	r7, [pc, #200]	; a510 <kmain+0x1d8>
    a444:	e3a0400a 	mov	r4, #10
    a448:	e1a01004 	mov	r1, r4
    a44c:	e1a00005 	mov	r0, r5
    a450:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a454:	ebfffabe 	bl	8f54 <_ZN7Console9printCharEcj>
    a458:	e5f74001 	ldrb	r4, [r7, #1]!
    a45c:	e3540000 	cmp	r4, #0
    a460:	1afffff8 	bne	a448 <kmain+0x110>
    a464:	e3a0380f 	mov	r3, #983040	; 0xf0000
    a468:	e3a02aff 	mov	r2, #1044480	; 0xff000
    a46c:	e5863000 	str	r3, [r6]
    a470:	e1a00005 	mov	r0, r5
    a474:	e5832008 	str	r2, [r3, #8]
    a478:	e5c34004 	strb	r4, [r3, #4]
    a47c:	e59f1090 	ldr	r1, [pc, #144]	; a514 <kmain+0x1dc>
    a480:	ebfffc6d 	bl	963c <_ZN7Console4koutEPKc>
    a484:	e59f208c 	ldr	r2, [pc, #140]	; a518 <kmain+0x1e0>
    a488:	e59fc074 	ldr	ip, [pc, #116]	; a504 <kmain+0x1cc>
    a48c:	e3a0381e 	mov	r3, #1966080	; 0x1e0000
    a490:	e3a00f7d 	mov	r0, #500	; 0x1f4
    a494:	e3a07002 	mov	r7, #2
    a498:	e3a0e00c 	mov	lr, #12
    a49c:	e3a01ffa 	mov	r1, #1000	; 0x3e8
    a4a0:	e5823214 	str	r3, [r2, #532]	; 0x214
    a4a4:	e5827210 	str	r7, [r2, #528]	; 0x210
    a4a8:	e59f305c 	ldr	r3, [pc, #92]	; a50c <kmain+0x1d4>
    a4ac:	e58ce058 	str	lr, [ip, #88]	; 0x58
    a4b0:	e58d0024 	str	r0, [sp, #36]	; 0x24
    a4b4:	e58d401c 	str	r4, [sp, #28]
    a4b8:	e58d4020 	str	r4, [sp, #32]
    a4bc:	e58d1018 	str	r1, [sp, #24]
    a4c0:	e5932004 	ldr	r2, [r3, #4]
    a4c4:	e28d0018 	add	r0, sp, #24
    a4c8:	e28229b7 	add	r2, r2, #2998272	; 0x2dc000
    a4cc:	e5c64014 	strb	r4, [r6, #20]
    a4d0:	e58d5030 	str	r5, [sp, #48]	; 0x30
    a4d4:	e58d4034 	str	r4, [sp, #52]	; 0x34
    a4d8:	e58d4028 	str	r4, [sp, #40]	; 0x28
    a4dc:	e58d402c 	str	r4, [sp, #44]	; 0x2c
    a4e0:	e586000c 	str	r0, [r6, #12]
    a4e4:	e2822d1b 	add	r2, r2, #1728	; 0x6c0
    a4e8:	e5931004 	ldr	r1, [r3, #4]
    a4ec:	e1520001 	cmp	r2, r1
    a4f0:	8afffffc 	bhi	a4e8 <kmain+0x1b0>
    a4f4:	eb00023e 	bl	adf4 <_ZN9Scheduler4mainEv>
    a4f8:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    a4fc:	0000b42c 	andeq	fp, r0, ip, lsr #8
    a500:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    a504:	20200000 	eorcs	r0, r0, r0
    a508:	0000b450 	andeq	fp, r0, r0, asr r4
    a50c:	20003000 	andcs	r3, r0, r0
    a510:	0000b45c 	andeq	fp, r0, ip, asr r4
    a514:	0000b46c 	andeq	fp, r0, ip, ror #8
    a518:	2000b000 	andcs	fp, r0, r0
    a51c:	0000ad4c 	andeq	sl, r0, ip, asr #26

0000a520 <_ZL19kernel_default_font>:
	...
    a730:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    a734:	08080808 	stmdaeq	r8, {r3, fp}
    a738:	08080008 	stmdaeq	r8, {r3}
    a73c:	00000000 	andeq	r0, r0, r0
    a740:	14000000 	strne	r0, [r0], #-0
    a744:	00141414 	andseq	r1, r4, r4, lsl r4
	...
    a750:	48480000 	stmdami	r8, {}^	; <UNPREDICTABLE>
    a754:	2424fe68 	strtcs	pc, [r4], #-3688	; 0xe68
    a758:	1212147f 	andsne	r1, r2, #2130706432	; 0x7f000000
    a75c:	00000000 	andeq	r0, r0, r0
    a760:	10000000 	andne	r0, r0, r0
    a764:	1c12927c 	lfmne	f1, 1, [r2], {124}	; 0x7c
    a768:	7c929070 	ldcvc	0, cr9, [r2], {112}	; 0x70
    a76c:	00001010 	andeq	r1, r0, r0, lsl r0
    a770:	06000000 	streq	r0, [r0], -r0
    a774:	38460909 	stmdacc	r6, {r0, r3, r8, fp}^
    a778:	60909066 	addsvs	r9, r0, r6, rrx
    a77c:	00000000 	andeq	r0, r0, r0
    a780:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    a784:	920c0404 	andls	r0, ip, #4, 8	; 0x4000000
    a788:	bc46a2b2 	sfmlt	f2, 3, [r6], {178}	; 0xb2
    a78c:	00000000 	andeq	r0, r0, r0
    a790:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    a794:	00080808 	andeq	r0, r8, r8, lsl #16
	...
    a7a0:	10103000 	andsne	r3, r0, r0
    a7a4:	08080808 	stmdaeq	r8, {r3, fp}
    a7a8:	10100808 	andsne	r0, r0, r8, lsl #16
    a7ac:	00000020 	andeq	r0, r0, r0, lsr #32
    a7b0:	08080c00 	stmdaeq	r8, {sl, fp}
    a7b4:	10101010 	andsne	r1, r0, r0, lsl r0
    a7b8:	08081010 	stmdaeq	r8, {r4, ip}
    a7bc:	0000000c 	andeq	r0, r0, ip
    a7c0:	10000000 	andne	r0, r0, r0
    a7c4:	d6387c92 			; <UNDEFINED> instruction: 0xd6387c92
    a7c8:	00000010 	andeq	r0, r0, r0, lsl r0
	...
    a7d4:	7f080808 	svcvc	0x00080808
    a7d8:	00080808 	andeq	r0, r8, r8, lsl #16
	...
    a7e8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    a7ec:	00000408 	andeq	r0, r0, r8, lsl #8
	...
    a7f8:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
    a808:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    a80c:	00000000 	andeq	r0, r0, r0
    a810:	40000000 	andmi	r0, r0, r0
    a814:	10102020 	andsne	r2, r0, r0, lsr #32
    a818:	04080818 	streq	r0, [r8], #-2072	; 0x818
    a81c:	00000204 	andeq	r0, r0, r4, lsl #4
    a820:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    a824:	92828244 	addls	r8, r2, #68, 4	; 0x40000004
    a828:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
    a82c:	00000000 	andeq	r0, r0, r0
    a830:	1c000000 	stcne	0, cr0, [r0], {-0}
    a834:	10101010 	andsne	r1, r0, r0, lsl r0
    a838:	7c101010 	ldcvc	0, cr1, [r0], {16}
    a83c:	00000000 	andeq	r0, r0, r0
    a840:	7c000000 	stcvc	0, cr0, [r0], {-0}
    a844:	408080c2 	addmi	r8, r0, r2, asr #1
    a848:	fe041830 	mcr2	8, 0, r1, cr4, cr0, {1}
    a84c:	00000000 	andeq	r0, r0, r0
    a850:	7c000000 	stcvc	0, cr0, [r0], {-0}
    a854:	38c08082 	stmiacc	r0, {r1, r7, pc}^
    a858:	7cc280c0 	stclvc	0, cr8, [r2], {192}	; 0xc0
    a85c:	00000000 	andeq	r0, r0, r0
    a860:	60000000 	andvs	r0, r0, r0
    a864:	44485850 	strbmi	r5, [r8], #-2128	; 0x850
    a868:	4040fe42 	submi	pc, r0, r2, asr #28
    a86c:	00000000 	andeq	r0, r0, r0
    a870:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    a874:	c03e0202 	eorsgt	r0, lr, r2, lsl #4
    a878:	3cc28080 	stclcc	0, cr8, [r2], {128}	; 0x80
    a87c:	00000000 	andeq	r0, r0, r0
    a880:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    a884:	c67a0284 	ldrbtgt	r0, [sl], -r4, lsl #5
    a888:	78c48282 	stmiavc	r4, {r1, r7, r9, pc}^
    a88c:	00000000 	andeq	r0, r0, r0
    a890:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    a894:	20204040 	eorcs	r4, r0, r0, asr #32
    a898:	04081810 	streq	r1, [r8], #-2064	; 0x810
    a89c:	00000000 	andeq	r0, r0, r0
    a8a0:	7c000000 	stcvc	0, cr0, [r0], {-0}
    a8a4:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
    a8a8:	7c868282 	sfmvc	f0, 1, [r6], {130}	; 0x82
    a8ac:	00000000 	andeq	r0, r0, r0
    a8b0:	3c000000 	stccc	0, cr0, [r0], {-0}
    a8b4:	c6828246 	strgt	r8, [r2], r6, asr #4
    a8b8:	3c4280bc 	mcrrcc	0, 11, r8, r2, cr12
	...
    a8c4:	00181800 	andseq	r1, r8, r0, lsl #16
    a8c8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
	...
    a8d4:	00181800 	andseq	r1, r8, r0, lsl #16
    a8d8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    a8dc:	00000408 	andeq	r0, r0, r8, lsl #8
    a8e0:	00000000 	andeq	r0, r0, r0
    a8e4:	0e708000 	cdpeq	0, 7, cr8, cr0, cr0, {0}
    a8e8:	0080700e 	addeq	r7, r0, lr
	...
    a8f4:	00fe0000 	rscseq	r0, lr, r0
    a8f8:	0000fe00 	andeq	pc, r0, r0, lsl #28
	...
    a904:	e01c0200 	ands	r0, ip, r0, lsl #4
    a908:	00021ce0 	andeq	r1, r2, r0, ror #25
    a90c:	00000000 	andeq	r0, r0, r0
    a910:	1c000000 	stcne	0, cr0, [r0], {-0}
    a914:	08102022 	ldmdaeq	r0, {r1, r5, sp}
    a918:	08080008 	stmdaeq	r8, {r3}
    a91c:	00000000 	andeq	r0, r0, r0
    a920:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    a924:	92e284cc 	rscls	r8, r2, #204, 8	; 0xcc000000
    a928:	04e29292 	strbteq	r9, [r2], #658	; 0x292
    a92c:	0000780c 	andeq	r7, r0, ip, lsl #16
    a930:	10000000 	andne	r0, r0, r0
    a934:	44282828 	strtmi	r2, [r8], #-2088	; 0x828
    a938:	82c67c44 	sbchi	r7, r6, #68, 24	; 0x4400
    a93c:	00000000 	andeq	r0, r0, r0
    a940:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    a944:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
    a948:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
    a94c:	00000000 	andeq	r0, r0, r0
    a950:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    a954:	02020284 	andeq	r0, r2, #132, 4	; 0x40000008
    a958:	78840202 	stmvc	r4, {r1, r9}
    a95c:	00000000 	andeq	r0, r0, r0
    a960:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    a964:	82828242 	addhi	r8, r2, #536870916	; 0x20000004
    a968:	3e428282 	cdpcc	2, 4, cr8, cr2, cr2, {4}
    a96c:	00000000 	andeq	r0, r0, r0
    a970:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    a974:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    a978:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    a97c:	00000000 	andeq	r0, r0, r0
    a980:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    a984:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    a988:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    a98c:	00000000 	andeq	r0, r0, r0
    a990:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    a994:	c2020284 	andgt	r0, r2, #132, 4	; 0x40000008
    a998:	78848282 	stmvc	r4, {r1, r7, r9, pc}
    a99c:	00000000 	andeq	r0, r0, r0
    a9a0:	82000000 	andhi	r0, r0, #0
    a9a4:	fe828282 	cdp2	2, 8, cr8, cr2, cr2, {4}
    a9a8:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
    a9ac:	00000000 	andeq	r0, r0, r0
    a9b0:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    a9b4:	08080808 	stmdaeq	r8, {r3, fp}
    a9b8:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
    a9bc:	00000000 	andeq	r0, r0, r0
    a9c0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    a9c4:	20202020 	eorcs	r2, r0, r0, lsr #32
    a9c8:	1c222020 	stcne	0, cr2, [r2], #-128	; 0xffffff80
    a9cc:	00000000 	andeq	r0, r0, r0
    a9d0:	42000000 	andmi	r0, r0, #0
    a9d4:	0e0a1222 	cdpeq	2, 0, cr1, cr10, cr2, {1}
    a9d8:	42222212 	eormi	r2, r2, #536870913	; 0x20000001
    a9dc:	00000000 	andeq	r0, r0, r0
    a9e0:	02000000 	andeq	r0, r0, #0
    a9e4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    a9e8:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    a9ec:	00000000 	andeq	r0, r0, r0
    a9f0:	c6000000 	strgt	r0, [r0], -r0
    a9f4:	aaaaaac6 	bge	feab5514 <_ZN9Scheduler4mainEv+0xfeaaa720>
    a9f8:	82828292 	addhi	r8, r2, #536870921	; 0x20000009
    a9fc:	00000000 	andeq	r0, r0, r0
    aa00:	86000000 	strhi	r0, [r0], -r0
    aa04:	928a8a86 	addls	r8, sl, #548864	; 0x86000
    aa08:	c2c2a2a2 	sbcgt	sl, r2, #536870922	; 0x2000000a
    aa0c:	00000000 	andeq	r0, r0, r0
    aa10:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    aa14:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
    aa18:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
    aa1c:	00000000 	andeq	r0, r0, r0
    aa20:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    aa24:	c28282c2 	addgt	r8, r2, #536870924	; 0x2000000c
    aa28:	0202027e 	andeq	r0, r2, #-536870905	; 0xe0000007
    aa2c:	00000000 	andeq	r0, r0, r0
    aa30:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    aa34:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
    aa38:	78448282 	stmdavc	r4, {r1, r7, r9, pc}^
    aa3c:	00004060 	andeq	r4, r0, r0, rrx
    aa40:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    aa44:	7e8282c2 	cdpvc	2, 8, cr8, cr2, cr2, {6}
    aa48:	02828242 	addeq	r8, r2, #536870916	; 0x20000004
    aa4c:	00000000 	andeq	r0, r0, r0
    aa50:	7c000000 	stcvc	0, cr0, [r0], {-0}
    aa54:	7c060286 	sfmvc	f0, 4, [r6], {134}	; 0x86
    aa58:	7dc280c0 	stclvc	0, cr8, [r2, #768]	; 0x300
    aa5c:	00000000 	andeq	r0, r0, r0
    aa60:	7f000000 	svcvc	0x00000000
    aa64:	08080808 	stmdaeq	r8, {r3, fp}
    aa68:	08080808 	stmdaeq	r8, {r3, fp}
    aa6c:	00000000 	andeq	r0, r0, r0
    aa70:	82000000 	andhi	r0, r0, #0
    aa74:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
    aa78:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
    aa7c:	00000000 	andeq	r0, r0, r0
    aa80:	82000000 	andhi	r0, r0, #0
    aa84:	444444c6 	strbmi	r4, [r4], #-1222	; 0x4c6
    aa88:	10282828 	eorne	r2, r8, r8, lsr #16
    aa8c:	00000000 	andeq	r0, r0, r0
    aa90:	81000000 	mrshi	r0, (UNDEF: 0)
    aa94:	5a5a8181 	bpl	16ab0a0 <_ZN9Scheduler4mainEv+0x16a02ac>
    aa98:	6666665a 			; <UNDEFINED> instruction: 0x6666665a
    aa9c:	00000000 	andeq	r0, r0, r0
    aaa0:	c6000000 	strgt	r0, [r0], -r0
    aaa4:	10382844 	eorsne	r2, r8, r4, asr #16
    aaa8:	82446c28 	subhi	r6, r4, #40, 24	; 0x2800
    aaac:	00000000 	andeq	r0, r0, r0
    aab0:	41000000 	mrsmi	r0, (UNDEF: 0)
    aab4:	08141422 	ldmdaeq	r4, {r1, r5, sl, ip}
    aab8:	08080808 	stmdaeq	r8, {r3, fp}
    aabc:	00000000 	andeq	r0, r0, r0
    aac0:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    aac4:	102060c0 	eorne	r6, r0, r0, asr #1
    aac8:	fe060c08 	cdp2	12, 0, cr0, cr6, cr8, {0}
    aacc:	00000000 	andeq	r0, r0, r0
    aad0:	08083800 	stmdaeq	r8, {fp, ip, sp}
    aad4:	08080808 	stmdaeq	r8, {r3, fp}
    aad8:	08080808 	stmdaeq	r8, {r3, fp}
    aadc:	00000038 	andeq	r0, r0, r8, lsr r0
    aae0:	02000000 	andeq	r0, r0, #0
    aae4:	08080404 	stmdaeq	r8, {r2, sl}
    aae8:	20101018 	andscs	r1, r0, r8, lsl r0
    aaec:	00004020 	andeq	r4, r0, r0, lsr #32
    aaf0:	10101c00 	andsne	r1, r0, r0, lsl #24
    aaf4:	10101010 	andsne	r1, r0, r0, lsl r0
    aaf8:	10101010 	andsne	r1, r0, r0, lsl r0
    aafc:	0000001c 	andeq	r0, r0, ip, lsl r0
    ab00:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    ab04:	00632214 	rsbeq	r2, r3, r4, lsl r2
	...
    ab1c:	007f0000 	rsbseq	r0, pc, r0
    ab20:	10080000 	andne	r0, r8, r0
	...
    ab34:	40443800 	submi	r3, r4, r0, lsl #16
    ab38:	5c62427c 	sfmpl	f4, 2, [r2], #-496	; 0xfffffe10
    ab3c:	00000000 	andeq	r0, r0, r0
    ab40:	02020200 	andeq	r0, r2, #0, 4
    ab44:	42663e02 	rsbmi	r3, r6, #2, 28
    ab48:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
	...
    ab54:	02443800 	subeq	r3, r4, #0, 16
    ab58:	38440202 	stmdacc	r4, {r1, r9}^
    ab5c:	00000000 	andeq	r0, r0, r0
    ab60:	40404000 	submi	r4, r0, r0
    ab64:	42667c40 	rsbmi	r7, r6, #64, 24	; 0x4000
    ab68:	7c664242 	sfmvc	f4, 2, [r6], #-264	; 0xfffffef8
	...
    ab74:	42663c00 	rsbmi	r3, r6, #0, 24
    ab78:	3c46027e 	sfmcc	f0, 2, [r6], {126}	; 0x7e
    ab7c:	00000000 	andeq	r0, r0, r0
    ab80:	08083000 	stmdaeq	r8, {ip, sp}
    ab84:	08083e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp}
    ab88:	08080808 	stmdaeq	r8, {r3, fp}
	...
    ab94:	42667c00 	rsbmi	r7, r6, #0, 24
    ab98:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
    ab9c:	00384440 	eorseq	r4, r8, r0, asr #8
    aba0:	02020200 	andeq	r0, r2, #0, 4
    aba4:	42463a02 	submi	r3, r6, #8192	; 0x2000
    aba8:	42424242 	submi	r4, r2, #536870916	; 0x20000004
    abac:	00000000 	andeq	r0, r0, r0
    abb0:	00000800 	andeq	r0, r0, r0, lsl #16
    abb4:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    abb8:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
    abbc:	00000000 	andeq	r0, r0, r0
    abc0:	00001000 	andeq	r1, r0, r0
    abc4:	10101c00 	andsne	r1, r0, r0, lsl #24
    abc8:	10101010 	andsne	r1, r0, r0, lsl r0
    abcc:	000e1010 	andeq	r1, lr, r0, lsl r0
    abd0:	02020200 	andeq	r0, r2, #0, 4
    abd4:	0a122202 	beq	4933e4 <_ZN9Scheduler4mainEv+0x4885f0>
    abd8:	4222120e 	eormi	r1, r2, #-536870912	; 0xe0000000
    abdc:	00000000 	andeq	r0, r0, r0
    abe0:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    abe4:	08080808 	stmdaeq	r8, {r3, fp}
    abe8:	70080808 	andvc	r0, r8, r8, lsl #16
	...
    abf4:	9292fe00 	addsls	pc, r2, #0, 28
    abf8:	92929292 	addsls	r9, r2, #536870921	; 0x20000009
	...
    ac04:	42463a00 	submi	r3, r6, #0, 20
    ac08:	42424242 	submi	r4, r2, #536870916	; 0x20000004
	...
    ac14:	42663c00 	rsbmi	r3, r6, #0, 24
    ac18:	3c664242 	sfmcc	f4, 2, [r6], #-264	; 0xfffffef8
	...
    ac24:	42663e00 	rsbmi	r3, r6, #0, 28
    ac28:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
    ac2c:	00020202 	andeq	r0, r2, r2, lsl #4
    ac30:	00000000 	andeq	r0, r0, r0
    ac34:	42667c00 	rsbmi	r7, r6, #0, 24
    ac38:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
    ac3c:	00404040 	subeq	r4, r0, r0, asr #32
    ac40:	00000000 	andeq	r0, r0, r0
    ac44:	044c3c00 	strbeq	r3, [ip], #-3072	; 0xc00
    ac48:	04040404 	streq	r0, [r4], #-1028	; 0x404
	...
    ac54:	02423c00 	subeq	r3, r2, #0, 24
    ac58:	3c42403c 	mcrrcc	0, 3, r4, r2, cr12
    ac5c:	00000000 	andeq	r0, r0, r0
    ac60:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    ac64:	08087e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp, lr}
    ac68:	70080808 	andvc	r0, r8, r8, lsl #16
	...
    ac74:	42424200 	submi	r4, r2, #0, 4
    ac78:	5c624242 	sfmpl	f4, 2, [r2], #-264	; 0xfffffef8
	...
    ac84:	24664200 	strbtcs	r4, [r6], #-512	; 0x200
    ac88:	18183c24 	ldmdane	r8, {r2, r5, sl, fp, ip, sp}
	...
    ac94:	5a818100 	bpl	fe06b09c <_ZN9Scheduler4mainEv+0xfe0602a8>
    ac98:	24245a5a 	strtcs	r5, [r4], #-2650	; 0xa5a
	...
    aca4:	18246600 	stmdane	r4!, {r9, sl, sp, lr}
    aca8:	66241818 			; <UNDEFINED> instruction: 0x66241818
	...
    acb4:	24444200 	strbcs	r4, [r4], #-512	; 0x200
    acb8:	10182824 	andsne	r2, r8, r4, lsr #16
    acbc:	000c0810 	andeq	r0, ip, r0, lsl r8
    acc0:	00000000 	andeq	r0, r0, r0
    acc4:	20407e00 	subcs	r7, r0, r0, lsl #28
    acc8:	7e020418 	cfmvdlrvc	mvd2, r0
    accc:	00000000 	andeq	r0, r0, r0
    acd0:	08083800 	stmdaeq	r8, {fp, ip, sp}
    acd4:	08060808 	stmdaeq	r6, {r3, fp}
    acd8:	08080808 	stmdaeq	r8, {r3, fp}
    acdc:	00000030 	andeq	r0, r0, r0, lsr r0
    ace0:	08080800 	stmdaeq	r8, {fp}
    ace4:	08080808 	stmdaeq	r8, {r3, fp}
    ace8:	08080808 	stmdaeq	r8, {r3, fp}
    acec:	00000808 	andeq	r0, r0, r8, lsl #16
    acf0:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    acf4:	08300808 	ldmdaeq	r0!, {r3, fp}
    acf8:	08080808 	stmdaeq	r8, {r3, fp}
    acfc:	00000006 	andeq	r0, r0, r6
    ad00:	00000000 	andeq	r0, r0, r0
    ad04:	9c000000 	stcls	0, cr0, [r0], {-0}
    ad08:	00000062 	andeq	r0, r0, r2, rrx
    ad0c:	00000000 	andeq	r0, r0, r0
    ad10:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    ad14:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    ad18:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    ad1c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    ad20:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    ad24:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

0000ad28 <freeStackPos>:
    ad28:	00004000 	andeq	r4, r0, r0

0000ad2c <rootPageTable>:
    ad2c:	00000000 	andeq	r0, r0, r0

0000ad30 <globalkerneltimerset>:
	...

0000ad31 <globaltimerset>:
    ad31:	00000000 	andeq	r0, r0, r0

0000ad34 <irq_console>:
    ad34:	00000000 	andeq	r0, r0, r0

0000ad38 <irq_scheduler>:
    ad38:	00000000 	andeq	r0, r0, r0

0000ad3c <globalauxptr>:
    ad3c:	00000000 	andeq	r0, r0, r0

0000ad40 <globalverbose>:
    ad40:	00000000 	andeq	r0, r0, r0

0000ad44 <stackPointer>:
    ad44:	00000000 	andeq	r0, r0, r0

0000ad48 <globalaux>:
    ad48:	00000000 	andeq	r0, r0, r0

0000ad4c <globaltest>:
    ad4c:	00000000 	andeq	r0, r0, r0

0000ad50 <irqcount>:
    ad50:	00000000 	andeq	r0, r0, r0

0000ad54 <globalPrintString>:
    ad54:	00000000 	andeq	r0, r0, r0

0000ad58 <globalPrintMode>:
    ad58:	00000000 	andeq	r0, r0, r0

0000ad5c <globalPrintColour>:
    ad5c:	00000000 	andeq	r0, r0, r0

0000ad60 <globalPrintNum>:
    ad60:	00000000 	andeq	r0, r0, r0

0000ad64 <globalPrintAux>:
    ad64:	00000000 	andeq	r0, r0, r0

0000ad68 <globalCPSR>:
    ad68:	00000000 	andeq	r0, r0, r0

0000ad6c <globalSWI>:
    ad6c:	00000000 	andeq	r0, r0, r0

0000ad70 <globalLRirq>:
    ad70:	00000000 	andeq	r0, r0, r0

0000ad74 <globalSPirq>:
    ad74:	00000000 	andeq	r0, r0, r0

0000ad78 <globalSPkernel>:
    ad78:	00000000 	andeq	r0, r0, r0

0000ad7c <globalProtectCPSR>:
    ad7c:	00000000 	andeq	r0, r0, r0

0000ad80 <_ZN4page8allocateEj>:
    ad80:	e5d03004 	ldrb	r3, [r0, #4]
    ad84:	e3530000 	cmp	r3, #0
    ad88:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    ad8c:	e1a03000 	mov	r3, r0
    ad90:	0a000003 	beq	ada4 <_ZN4page8allocateEj+0x24>
    ad94:	e5933000 	ldr	r3, [r3]
    ad98:	e5d32004 	ldrb	r2, [r3, #4]
    ad9c:	e3520000 	cmp	r2, #0
    ada0:	1afffffb 	bne	ad94 <_ZN4page8allocateEj+0x14>
    ada4:	e5932008 	ldr	r2, [r3, #8]
    ada8:	e593000c 	ldr	r0, [r3, #12]
    adac:	e3510000 	cmp	r1, #0
    adb0:	e0820100 	add	r0, r2, r0, lsl #2
    adb4:	e3a0c000 	mov	ip, #0
    adb8:	e583140c 	str	r1, [r3, #1036]	; 0x40c
    adbc:	e5830408 	str	r0, [r3, #1032]	; 0x408
    adc0:	e5c3c404 	strb	ip, [r3, #1028]	; 0x404
    adc4:	e2834b01 	add	r4, r3, #1024	; 0x400
    adc8:	10801101 	addne	r1, r0, r1, lsl #2
    adcc:	11a02000 	movne	r2, r0
    add0:	0a000002 	beq	ade0 <_ZN4page8allocateEj+0x60>
    add4:	e482c004 	str	ip, [r2], #4
    add8:	e1520001 	cmp	r2, r1
    addc:	1afffffc 	bne	add4 <_ZN4page8allocateEj+0x54>
    ade0:	e3a02001 	mov	r2, #1
    ade4:	e5834000 	str	r4, [r3]
    ade8:	e5c32004 	strb	r2, [r3, #4]
    adec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    adf0:	e12fff1e 	bx	lr

0000adf4 <_ZN9Scheduler4mainEv>:
    adf4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    adf8:	e5906018 	ldr	r6, [r0, #24]
    adfc:	e59f52d4 	ldr	r5, [pc, #724]	; b0d8 <_ZN9Scheduler4mainEv+0x2e4>
    ae00:	e24dd008 	sub	sp, sp, #8
    ae04:	e1a07000 	mov	r7, r0
    ae08:	e3a0400a 	mov	r4, #10
    ae0c:	e1a01004 	mov	r1, r4
    ae10:	e1a00006 	mov	r0, r6
    ae14:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    ae18:	ebfff84d 	bl	8f54 <_ZN7Console9printCharEcj>
    ae1c:	e5f54001 	ldrb	r4, [r5, #1]!
    ae20:	e3540000 	cmp	r4, #0
    ae24:	1afffff8 	bne	ae0c <_ZN9Scheduler4mainEv+0x18>
    ae28:	e28d3008 	add	r3, sp, #8
    ae2c:	e5234008 	str	r4, [r3, #-8]!
    ae30:	e59f92a4 	ldr	r9, [pc, #676]	; b0dc <_ZN9Scheduler4mainEv+0x2e8>
    ae34:	e5972018 	ldr	r2, [r7, #24]
    ae38:	e587301c 	str	r3, [r7, #28]
    ae3c:	e5990000 	ldr	r0, [r9]
    ae40:	e3a0105c 	mov	r1, #92	; 0x5c
    ae44:	e58d2004 	str	r2, [sp, #4]
    ae48:	ebffffcc 	bl	ad80 <_ZN4page8allocateEj>
    ae4c:	e3a0105c 	mov	r1, #92	; 0x5c
    ae50:	e1a06000 	mov	r6, r0
    ae54:	e5990000 	ldr	r0, [r9]
    ae58:	ebffffc8 	bl	ad80 <_ZN4page8allocateEj>
    ae5c:	e3a0105c 	mov	r1, #92	; 0x5c
    ae60:	e1a05000 	mov	r5, r0
    ae64:	e5990000 	ldr	r0, [r9]
    ae68:	ebffffc4 	bl	ad80 <_ZN4page8allocateEj>
    ae6c:	e3a0105c 	mov	r1, #92	; 0x5c
    ae70:	e1a08000 	mov	r8, r0
    ae74:	e5990000 	ldr	r0, [r9]
    ae78:	ebffffc0 	bl	ad80 <_ZN4page8allocateEj>
    ae7c:	e59fe25c 	ldr	lr, [pc, #604]	; b0e0 <_ZN9Scheduler4mainEv+0x2ec>
    ae80:	e5979000 	ldr	r9, [r7]
    ae84:	e59ec808 	ldr	ip, [lr, #2056]	; 0x808
    ae88:	e59f3254 	ldr	r3, [pc, #596]	; b0e4 <_ZN9Scheduler4mainEv+0x2f0>
    ae8c:	e1a01004 	mov	r1, r4
    ae90:	e1c695b4 	strh	r9, [r6, #84]	; 0x54
    ae94:	e586c050 	str	ip, [r6, #80]	; 0x50
    ae98:	e1c645b6 	strh	r4, [r6, #86]	; 0x56
    ae9c:	e5c64058 	strb	r4, [r6, #88]	; 0x58
    aea0:	e5864048 	str	r4, [r6, #72]	; 0x48
    aea4:	e586304c 	str	r3, [r6, #76]	; 0x4c
    aea8:	e24c4c01 	sub	r4, ip, #256	; 0x100
    aeac:	e289a001 	add	sl, r9, #1
    aeb0:	e1a03001 	mov	r3, r1
    aeb4:	e7863001 	str	r3, [r6, r1]
    aeb8:	e2811004 	add	r1, r1, #4
    aebc:	e3510044 	cmp	r1, #68	; 0x44
    aec0:	e3a02000 	mov	r2, #0
    aec4:	1afffffa 	bne	aeb4 <_ZN9Scheduler4mainEv+0xc0>
    aec8:	e59f1218 	ldr	r1, [pc, #536]	; b0e8 <_ZN9Scheduler4mainEv+0x2f4>
    aecc:	e2863040 	add	r3, r6, #64	; 0x40
    aed0:	e5863044 	str	r3, [r6, #68]	; 0x44
    aed4:	e1c525b6 	strh	r2, [r5, #86]	; 0x56
    aed8:	e5c52058 	strb	r2, [r5, #88]	; 0x58
    aedc:	e5852048 	str	r2, [r5, #72]	; 0x48
    aee0:	e1c5a5b4 	strh	sl, [r5, #84]	; 0x54
    aee4:	e5854050 	str	r4, [r5, #80]	; 0x50
    aee8:	e585104c 	str	r1, [r5, #76]	; 0x4c
    aeec:	e1a03002 	mov	r3, r2
    aef0:	e1a01002 	mov	r1, r2
    aef4:	e289a002 	add	sl, r9, #2
    aef8:	e24c4c02 	sub	r4, ip, #512	; 0x200
    aefc:	e7851003 	str	r1, [r5, r3]
    af00:	e2833004 	add	r3, r3, #4
    af04:	e3530044 	cmp	r3, #68	; 0x44
    af08:	e3a02000 	mov	r2, #0
    af0c:	1afffffa 	bne	aefc <_ZN9Scheduler4mainEv+0x108>
    af10:	e59f11d4 	ldr	r1, [pc, #468]	; b0ec <_ZN9Scheduler4mainEv+0x2f8>
    af14:	e2853040 	add	r3, r5, #64	; 0x40
    af18:	e5853044 	str	r3, [r5, #68]	; 0x44
    af1c:	e1c825b6 	strh	r2, [r8, #86]	; 0x56
    af20:	e5c82058 	strb	r2, [r8, #88]	; 0x58
    af24:	e5882048 	str	r2, [r8, #72]	; 0x48
    af28:	e1c8a5b4 	strh	sl, [r8, #84]	; 0x54
    af2c:	e5884050 	str	r4, [r8, #80]	; 0x50
    af30:	e588104c 	str	r1, [r8, #76]	; 0x4c
    af34:	e1a03002 	mov	r3, r2
    af38:	e1a01002 	mov	r1, r2
    af3c:	e289a003 	add	sl, r9, #3
    af40:	e24c4c03 	sub	r4, ip, #768	; 0x300
    af44:	e7881003 	str	r1, [r8, r3]
    af48:	e2833004 	add	r3, r3, #4
    af4c:	e3530044 	cmp	r3, #68	; 0x44
    af50:	e3a02000 	mov	r2, #0
    af54:	1afffffa 	bne	af44 <_ZN9Scheduler4mainEv+0x150>
    af58:	e59f1190 	ldr	r1, [pc, #400]	; b0f0 <_ZN9Scheduler4mainEv+0x2fc>
    af5c:	e2883040 	add	r3, r8, #64	; 0x40
    af60:	e2899004 	add	r9, r9, #4
    af64:	e24ccb01 	sub	ip, ip, #1024	; 0x400
    af68:	e5883044 	str	r3, [r8, #68]	; 0x44
    af6c:	e5879000 	str	r9, [r7]
    af70:	e58ec808 	str	ip, [lr, #2056]	; 0x808
    af74:	e1c0a5b4 	strh	sl, [r0, #84]	; 0x54
    af78:	e5804050 	str	r4, [r0, #80]	; 0x50
    af7c:	e1c025b6 	strh	r2, [r0, #86]	; 0x56
    af80:	e5c02058 	strb	r2, [r0, #88]	; 0x58
    af84:	e5802048 	str	r2, [r0, #72]	; 0x48
    af88:	e580104c 	str	r1, [r0, #76]	; 0x4c
    af8c:	e1a03002 	mov	r3, r2
    af90:	e1a01002 	mov	r1, r2
    af94:	e7801003 	str	r1, [r0, r3]
    af98:	e2833004 	add	r3, r3, #4
    af9c:	e3530044 	cmp	r3, #68	; 0x44
    afa0:	e3a02000 	mov	r2, #0
    afa4:	1afffffa 	bne	af94 <_ZN9Scheduler4mainEv+0x1a0>
    afa8:	e597e01c 	ldr	lr, [r7, #28]
    afac:	e59ec000 	ldr	ip, [lr]
    afb0:	e2803040 	add	r3, r0, #64	; 0x40
    afb4:	e15c0002 	cmp	ip, r2
    afb8:	e5803044 	str	r3, [r0, #68]	; 0x44
    afbc:	e1a0100c 	mov	r1, ip
    afc0:	e5862048 	str	r2, [r6, #72]	; 0x48
    afc4:	1a000001 	bne	afd0 <_ZN9Scheduler4mainEv+0x1dc>
    afc8:	ea000032 	b	b098 <_ZN9Scheduler4mainEv+0x2a4>
    afcc:	e1a01003 	mov	r1, r3
    afd0:	e5913048 	ldr	r3, [r1, #72]	; 0x48
    afd4:	e3530000 	cmp	r3, #0
    afd8:	1afffffb 	bne	afcc <_ZN9Scheduler4mainEv+0x1d8>
    afdc:	e5816048 	str	r6, [r1, #72]	; 0x48
    afe0:	e3a03000 	mov	r3, #0
    afe4:	e35c0000 	cmp	ip, #0
    afe8:	e5853048 	str	r3, [r5, #72]	; 0x48
    afec:	e1a0100c 	mov	r1, ip
    aff0:	1a000001 	bne	affc <_ZN9Scheduler4mainEv+0x208>
    aff4:	ea00002a 	b	b0a4 <_ZN9Scheduler4mainEv+0x2b0>
    aff8:	e1a01003 	mov	r1, r3
    affc:	e5913048 	ldr	r3, [r1, #72]	; 0x48
    b000:	e3530000 	cmp	r3, #0
    b004:	1afffffb 	bne	aff8 <_ZN9Scheduler4mainEv+0x204>
    b008:	e5815048 	str	r5, [r1, #72]	; 0x48
    b00c:	e35c0000 	cmp	ip, #0
    b010:	e3a03000 	mov	r3, #0
    b014:	e5883048 	str	r3, [r8, #72]	; 0x48
    b018:	e1a0200c 	mov	r2, ip
    b01c:	058e8000 	streq	r8, [lr]
    b020:	1a000001 	bne	b02c <_ZN9Scheduler4mainEv+0x238>
    b024:	ea000004 	b	b03c <_ZN9Scheduler4mainEv+0x248>
    b028:	e1a02003 	mov	r2, r3
    b02c:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    b030:	e3530000 	cmp	r3, #0
    b034:	1afffffb 	bne	b028 <_ZN9Scheduler4mainEv+0x234>
    b038:	e5828048 	str	r8, [r2, #72]	; 0x48
    b03c:	e5870010 	str	r0, [r7, #16]
    b040:	e3a0100a 	mov	r1, #10
    b044:	e5970018 	ldr	r0, [r7, #24]
    b048:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    b04c:	ebfff7c0 	bl	8f54 <_ZN7Console9printCharEcj>
    b050:	e597301c 	ldr	r3, [r7, #28]
    b054:	e5933000 	ldr	r3, [r3]
    b058:	e3530000 	cmp	r3, #0
    b05c:	0a000013 	beq	b0b0 <_ZN9Scheduler4mainEv+0x2bc>
    b060:	e5975018 	ldr	r5, [r7, #24]
    b064:	e59f4088 	ldr	r4, [pc, #136]	; b0f4 <_ZN9Scheduler4mainEv+0x300>
    b068:	e3a0100a 	mov	r1, #10
    b06c:	e1a00005 	mov	r0, r5
    b070:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    b074:	ebfff7b6 	bl	8f54 <_ZN7Console9printCharEcj>
    b078:	e5f41001 	ldrb	r1, [r4, #1]!
    b07c:	e3510000 	cmp	r1, #0
    b080:	1afffff9 	bne	b06c <_ZN9Scheduler4mainEv+0x278>
    b084:	e59f306c 	ldr	r3, [pc, #108]	; b0f8 <_ZN9Scheduler4mainEv+0x304>
    b088:	e5933004 	ldr	r3, [r3, #4]
    b08c:	e1a00007 	mov	r0, r7
    b090:	e5873008 	str	r3, [r7, #8]
    b094:	ebfff9b6 	bl	9774 <_ZN9Scheduler8ScheduleEv>
    b098:	e58e6000 	str	r6, [lr]
    b09c:	e1a0c006 	mov	ip, r6
    b0a0:	eaffffce 	b	afe0 <_ZN9Scheduler4mainEv+0x1ec>
    b0a4:	e58e5000 	str	r5, [lr]
    b0a8:	e1a0c005 	mov	ip, r5
    b0ac:	eaffffd6 	b	b00c <_ZN9Scheduler4mainEv+0x218>
    b0b0:	e5975018 	ldr	r5, [r7, #24]
    b0b4:	e59f4040 	ldr	r4, [pc, #64]	; b0fc <_ZN9Scheduler4mainEv+0x308>
    b0b8:	e3a0100a 	mov	r1, #10
    b0bc:	e1a00005 	mov	r0, r5
    b0c0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    b0c4:	ebfff7a2 	bl	8f54 <_ZN7Console9printCharEcj>
    b0c8:	e5f41001 	ldrb	r1, [r4, #1]!
    b0cc:	e3510000 	cmp	r1, #0
    b0d0:	1afffff9 	bne	b0bc <_ZN9Scheduler4mainEv+0x2c8>
    b0d4:	eaffffea 	b	b084 <_ZN9Scheduler4mainEv+0x290>
    b0d8:	0000b288 	andeq	fp, r0, r8, lsl #5
    b0dc:	0000ad2c 	andeq	sl, r0, ip, lsr #26
    b0e0:	0000a520 	andeq	sl, r0, r0, lsr #10
    b0e4:	0000a098 	muleq	r0, r8, r0
    b0e8:	0000a0f4 	strdeq	sl, [r0], -r4
    b0ec:	0000a154 	andeq	sl, r0, r4, asr r1
    b0f0:	0000a1b0 			; <UNDEFINED> instruction: 0x0000a1b0
    b0f4:	0000b298 	muleq	r0, r8, r2
    b0f8:	20003000 	andcs	r3, r0, r0
    b0fc:	0000b2a4 	andeq	fp, r0, r4, lsr #5
    b100:	746f420a 	strbtvc	r4, [pc], #-522	; b108 <_ZN9Scheduler4mainEv+0x314>
    b104:	31206e4f 	teqcc	r0, pc, asr #28
    b108:	6c757020 	ldclvs	0, cr7, [r5], #-128	; 0xffffff80
    b10c:	6f646173 	svcvs	0x00646173
    b110:	00000000 	andeq	r0, r0, r0
    b114:	746f420a 	strbtvc	r4, [pc], #-522	; b11c <_ZN9Scheduler4mainEv+0x328>
    b118:	32206e4f 	eorcc	r6, r0, #1264	; 0x4f0
    b11c:	6c757020 	ldclvs	0, cr7, [r5], #-128	; 0xffffff80
    b120:	6f646173 	svcvs	0x00646173
    b124:	00000000 	andeq	r0, r0, r0
    b128:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
    b12c:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
    b130:	6944205d 	stmdbvs	r4, {r0, r2, r3, r4, r6, sp}^
    b134:	63636572 	cmnvs	r3, #478150656	; 0x1c800000
    b138:	206e4f69 	rsbcs	r4, lr, r9, ror #30
    b13c:	6d206564 	cfstr32vs	mvfx6, [r0, #-400]!	; 0xfffffe70
    b140:	726f6d65 	rsbvc	r6, pc, #6464	; 0x1940
    b144:	69206169 	stmdbvs	r0!, {r0, r3, r5, r6, r8, sp, lr}
    b148:	6c41766e 	mcrrvs	6, 6, r7, r1, cr14
    b14c:	2e616469 	cdpcs	4, 6, cr6, cr1, cr9, {3}
    b150:	00000000 	andeq	r0, r0, r0
    b154:	6f72500a 	svcvs	0x0072500a
    b158:	6f736563 	svcvs	0x00736563
    b15c:	00000020 	andeq	r0, r0, r0, lsr #32
    b160:	6f5a0a0a 	svcvs	0x005a0a0a
    b164:	6420616e 	strtvs	r6, [r0], #-366	; 0x16e
    b168:	656d2065 	strbvs	r2, [sp, #-101]!	; 0x65
    b16c:	69726f6d 	ldmdbvs	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    b170:	61702061 	cmnvs	r0, r1, rrx
    b174:	73206172 	teqvc	r0, #-2147483620	; 0x8000001c
    b178:	61766c61 	cmnvs	r6, r1, ror #24
    b17c:	6f632072 	svcvs	0x00632072
    b180:	7865746e 	stmdavc	r5!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}^
    b184:	003a6f74 	eorseq	r6, sl, r4, ror pc
    b188:	4e4f445b 	mcrmi	4, 2, r4, cr15, cr11, {2}
    b18c:	00095d45 	andeq	r5, r9, r5, asr #26
    b190:	69736142 	ldmdbvs	r3!, {r1, r6, r8, sp, lr}^
    b194:	6e692063 	cdpvs	0, 6, cr2, cr9, cr3, {3}
    b198:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
    b19c:	00747075 	rsbseq	r7, r4, r5, ror r0
    b1a0:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
    b1a4:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
    b1a8:	6e49205d 	mcrvs	0, 2, r2, cr9, cr13, {2}
    b1ac:	696c6176 	stmdbvs	ip!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    b1b0:	6f6c2064 	svcvs	0x006c2064
    b1b4:	6e696461 	cdpvs	4, 6, cr6, cr9, cr1, {3}
    b1b8:	61762067 	cmnvs	r6, r7, rrx
    b1bc:	2e65756c 	cdpcs	5, 6, cr7, cr5, cr12, {3}
    b1c0:	00000000 	andeq	r0, r0, r0
    b1c4:	72654b0a 	rsbvc	r4, r5, #10240	; 0x2800
    b1c8:	536c656e 	cmnpl	ip, #461373440	; 0x1b800000
    b1cc:	00203a50 	eoreq	r3, r0, r0, asr sl
    b1d0:	61530a0a 	cmpvs	r3, sl, lsl #20
    b1d4:	65206f63 	strvs	r6, [r0, #-3939]!	; 0xf63
    b1d8:	7270206c 	rsbsvc	r2, r0, #108	; 0x6c
    b1dc:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
    b1e0:	00203a6f 	eoreq	r3, r0, pc, ror #20
    b1e4:	6f72500a 	svcvs	0x0072500a
    b1e8:	6f736563 	svcvs	0x00736563
    b1ec:	20617920 	rsbcs	r7, r1, r0, lsr #18
    b1f0:	6d726574 	cfldr64vs	mvdx6, [r2, #-464]!	; 0xfffffe30
    b1f4:	64616e69 	strbtvs	r6, [r1], #-3689	; 0xe69
    b1f8:	45202e6f 	strmi	r2, [r0, #-3695]!	; 0xe6f
    b1fc:	696d696c 	stmdbvs	sp!, {r2, r3, r5, r6, r8, fp, sp, lr}^
    b200:	646e616e 	strbtvs	r6, [lr], #-366	; 0x16e
    b204:	6564206f 	strbvs	r2, [r4, #-111]!	; 0x6f
    b208:	20616c20 	rsbcs	r6, r1, r0, lsr #24
    b20c:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0x96c
    b210:	2e2e2e61 	cdpcs	14, 2, cr2, cr14, cr1, {3}
    b214:	00000000 	andeq	r0, r0, r0
    b218:	4f4e0a0a 	svcmi	0x004e0a0a
    b21c:	59414820 	stmdbpl	r1, {r5, fp, lr}^
    b220:	53414d20 	movtpl	r4, #7456	; 0x1d20
    b224:	4f525020 	svcmi	0x00525020
    b228:	4f534543 	svcmi	0x00534543
    b22c:	000a2e53 	andeq	r2, sl, r3, asr lr
    b230:	6e6f430a 	cdpvs	3, 6, cr4, cr15, cr10, {0}
    b234:	74736520 	ldrbtvc	r6, [r3], #-1312	; 0x520
    b238:	3a6f6461 	bcc	1be43c4 <_ZN9Scheduler4mainEv+0x1bd95d0>
    b23c:	00000020 	andeq	r0, r0, r0, lsr #32
    b240:	4243500a 	submi	r5, r3, #10
    b244:	61756720 	cmnvs	r5, r0, lsr #14
    b248:	64616472 	strbtvs	r6, [r1], #-1138	; 0x472
    b24c:	6e65206f 	cdpvs	0, 6, cr2, cr5, cr15, {3}
    b250:	00203a20 	eoreq	r3, r0, r0, lsr #20
    b254:	72500a0a 	subsvc	r0, r0, #40960	; 0xa000
    b258:	6d69786f 	stclvs	8, cr7, [r9, #-444]!	; 0xfffffe44
    b25c:	7270206f 	rsbsvc	r2, r0, #111	; 0x6f
    b260:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
    b264:	00203a6f 	eoreq	r3, r0, pc, ror #20
    b268:	6175510a 	cmnvs	r5, sl, lsl #2
    b26c:	6d75746e 	cfldrdvs	mvd7, [r5, #-440]!	; 0xfffffe48
    b270:	00003a73 	andeq	r3, r0, r3, ror sl
    b274:	6569540a 	strbvs	r5, [r9, #-1034]!	; 0x40a
    b278:	206f706d 	rsbcs	r7, pc, sp, rrx
    b27c:	61746f74 	cmnvs	r4, r4, ror pc
    b280:	00203a6c 	eoreq	r3, r0, ip, ror #20
    b284:	00737520 	rsbseq	r7, r3, r0, lsr #10
    b288:	69614d0a 	stmdbvs	r1!, {r1, r3, r8, sl, fp, lr}^
    b28c:	6373206e 	cmnvs	r3, #110	; 0x6e
    b290:	75646568 	strbvc	r6, [r4, #-1384]!	; 0x568
    b294:	0072656c 	rsbseq	r6, r2, ip, ror #10
    b298:	206f4e0a 	rsbcs	r4, pc, sl, lsl #28
    b29c:	69636176 	stmdbvs	r3!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    b2a0:	00000061 	andeq	r0, r0, r1, rrx
    b2a4:	6361560a 	cmnvs	r1, #10485760	; 0xa00000
    b2a8:	00006169 	andeq	r6, r0, r9, ror #2
    b2ac:	6d754e0a 	ldclvs	14, cr4, [r5, #-40]!	; 0xffffffd8
    b2b0:	20726562 	rsbscs	r6, r2, r2, ror #10
    b2b4:	6e20666f 	cfmadda32vs	mvax3, mvax6, mvfx0, mvfx15
    b2b8:	65207765 	strvs	r7, [r0, #-1893]!	; 0x765
    b2bc:	656d656c 	strbvs	r6, [sp, #-1388]!	; 0x56c
    b2c0:	3a73746e 	bcc	1ce8480 <_ZN9Scheduler4mainEv+0x1cdd68c>
    b2c4:	00000000 	andeq	r0, r0, r0
    b2c8:	77654e0a 	strbvc	r4, [r5, -sl, lsl #28]!
    b2cc:	73615420 	cmnvc	r1, #32, 8	; 0x20000000
    b2d0:	6970206b 	ldmdbvs	r0!, {r0, r1, r3, r5, r6, sp}^
    b2d4:	00203a64 	eoreq	r3, r0, r4, ror #20
    b2d8:	77654e0a 	strbvc	r4, [r5, -sl, lsl #28]!
    b2dc:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    b2e0:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0x369
    b2e4:	6f7a2072 	svcvs	0x007a2072
    b2e8:	203a656e 	eorscs	r6, sl, lr, ror #10
    b2ec:	00000000 	andeq	r0, r0, r0
    b2f0:	3d3d0a0a 	vldmdbcc	sp!, {s0-s9}
    b2f4:	6e616843 	cdpvs	8, 6, cr6, cr1, cr3, {2}
    b2f8:	676e6967 	strbvs	r6, [lr, -r7, ror #18]!
    b2fc:	206f7420 	rsbcs	r7, pc, r0, lsr #8
    b300:	4d205653 	stcmi	6, cr5, [r0, #-332]!	; 0xfffffeb4
    b304:	3d45444f 	cfstrdcc	mvd4, [r5, #-316]	; 0xfffffec4
    b308:	0000003d 	andeq	r0, r0, sp, lsr r0
    b30c:	6d65520a 	sfmvs	f5, 2, [r5, #-40]!	; 0xffffffd8
    b310:	696e6961 	stmdbvs	lr!, {r0, r5, r6, r8, fp, sp, lr}^
    b314:	7020676e 	eorvc	r6, r0, lr, ror #14
    b318:	65636f72 	strbvs	r6, [r3, #-3954]!	; 0xf72
    b31c:	73657373 	cmnvc	r5, #-872415231	; 0xcc000001
    b320:	0000003a 	andeq	r0, r0, sl, lsr r0
    b324:	3d3d0a0a 	vldmdbcc	sp!, {s0-s9}
    b328:	206e6946 	rsbcs	r6, lr, r6, asr #18
    b32c:	70206564 	eorvc	r6, r0, r4, ror #10
    b330:	65636f72 	strbvs	r6, [r3, #-3954]!	; 0xf72
    b334:	3d3d6f73 	ldccc	15, cr6, [sp, #-460]!	; 0xfffffe34
    b338:	00000000 	andeq	r0, r0, r0
    b33c:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
    b340:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
    b344:	3f3f205d 	svccc	0x003f205d
    b348:	00003f3f 	andeq	r3, r0, pc, lsr pc
    b34c:	00005b0a 	andeq	r5, r0, sl, lsl #22
    b350:	0000205d 	andeq	r2, r0, sp, asr r0
    b354:	636f7250 	cmnvs	pc, #80, 4
    b358:	20737365 	rsbscs	r7, r3, r5, ror #6
    b35c:	2d202131 	stfcss	f2, [r0, #-196]!	; 0xffffff3c
    b360:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b364:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b368:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b36c:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b370:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b374:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b378:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b37c:	6c202d2d 	stcvs	13, cr2, [r0], #-180	; 0xffffff4c
    b380:	21676e6f 	cmncs	r7, pc, ror #28
    b384:	00000000 	andeq	r0, r0, r0
    b388:	636f7250 	cmnvs	pc, #80, 4
    b38c:	20737365 	rsbscs	r7, r3, r5, ror #6
    b390:	2d202132 	stfcss	f2, [r0, #-200]!	; 0xffffff38
    b394:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b398:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b39c:	6d2d2d2d 	stcvs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b3a0:	75696465 	strbvc	r6, [r9, #-1125]!	; 0x465
    b3a4:	0000006d 	andeq	r0, r0, sp, rrx
    b3a8:	636f7250 	cmnvs	pc, #80, 4
    b3ac:	20737365 	rsbscs	r7, r3, r5, ror #6
    b3b0:	2d202133 	stfcss	f2, [r0, #-204]!	; 0xffffff34
    b3b4:	6f687320 	svcvs	0x00687320
    b3b8:	00007472 	andeq	r7, r0, r2, ror r4
    b3bc:	636f7250 	cmnvs	pc, #80, 4
    b3c0:	20737365 	rsbscs	r7, r3, r5, ror #6
    b3c4:	2d202134 	stfcss	f2, [r0, #-208]!	; 0xffffff30
    b3c8:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b3cc:	0000002d 	andeq	r0, r0, sp, lsr #32
    b3d0:	636c6557 	cmnvs	ip, #364904448	; 0x15c00000
    b3d4:	20656d6f 	rsbcs	r6, r5, pc, ror #26
    b3d8:	4d206f74 	stcmi	15, cr6, [r0, #-464]!	; 0xfffffe30
    b3dc:	66646e69 	strbtvs	r6, [r4], -r9, ror #28
    b3e0:	6579616c 	ldrbvs	r6, [r9, #-364]!	; 0x16c
    b3e4:	61202c72 	teqvs	r0, r2, ror ip
    b3e8:	73756320 	cmnvc	r5, #32, 6	; 0x80000000
    b3ec:	206d6f74 	rsbcs	r6, sp, r4, ror pc
    b3f0:	70736172 	rsbsvc	r6, r3, r2, ror r1
    b3f4:	72726562 	rsbsvc	r6, r2, #411041792	; 0x18800000
    b3f8:	69702079 	ldmdbvs	r0!, {r0, r3, r4, r5, r6, sp}^
    b3fc:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
    b400:	206c656e 	rsbcs	r6, ip, lr, ror #10
    b404:	74697277 	strbtvc	r7, [r9], #-631	; 0x277
    b408:	206e6574 	rsbcs	r6, lr, r4, ror r5
    b40c:	43206e69 	teqmi	r0, #1680	; 0x690
    b410:	000a2b2b 	andeq	r2, sl, fp, lsr #22
    b414:	6c697542 	cfstr64vs	mvdx7, [r9], #-264	; 0xfffffef8
    b418:	00203a64 	eoreq	r3, r0, r4, ror #20
    b41c:	2e302e30 	mrccs	14, 1, r2, cr0, cr0, {1}
    b420:	36363532 			; <UNDEFINED> instruction: 0x36363532
    b424:	00000000 	andeq	r0, r0, r0
    b428:	000a0a0a 	andeq	r0, sl, sl, lsl #20
    b42c:	52455b0a 	subpl	r5, r5, #10240	; 0x2800
    b430:	5d524f52 	ldclpl	15, cr4, [r2, #-328]	; 0xfffffeb8
    b434:	6c615320 	stclvs	3, cr5, [r1], #-128	; 0xffffff80
    b438:	61206f74 	teqvs	r0, r4, ror pc
    b43c:	72696420 	rsbvc	r6, r9, #32, 8	; 0x20000000
    b440:	69636365 	stmdbvs	r3!, {r0, r2, r5, r6, r8, r9, sp, lr}^
    b444:	30206e4f 	eorcc	r6, r0, pc, asr #28
    b448:	202e3078 	eorcs	r3, lr, r8, ror r0
    b44c:	00000000 	andeq	r0, r0, r0
    b450:	74696157 	strbtvc	r6, [r9], #-343	; 0x157
    b454:	3a676e69 	bcc	19e6e00 <_ZN9Scheduler4mainEv+0x19dc00c>
    b458:	00000020 	andeq	r0, r0, r0, lsr #32
    b45c:	54535b0a 	ldrbpl	r5, [r3], #-2826	; 0xb0a
    b460:	49545241 	ldmdbmi	r4, {r0, r6, r9, ip, lr}^
    b464:	0a5d474e 	beq	175d1a4 <_ZN9Scheduler4mainEv+0x17523b0>
    b468:	0000000a 	andeq	r0, r0, sl
    b46c:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xe49
    b470:	696c6169 	stmdbvs	ip!, {r0, r3, r5, r6, r8, sp, lr}^
    b474:	2064657a 	rsbcs	r6, r4, sl, ror r5
    b478:	65676170 	strbvs	r6, [r7, #-368]!	; 0x170
    b47c:	62617420 	rsbvs	r7, r1, #32, 8	; 0x20000000
    b480:	0000656c 	andeq	r6, r0, ip, ror #10
    b484:	3a434347 	bcc	10dc1a8 <_ZN9Scheduler4mainEv+0x10d13b4>
    b488:	2e342820 	cdpcs	8, 3, cr2, cr4, cr0, {1}
    b48c:	2d322e38 	ldccs	14, cr2, [r2, #-224]!	; 0xffffff20
    b490:	62753431 	rsbsvs	r3, r5, #822083584	; 0x31000000
    b494:	75746e75 	ldrbvc	r6, [r4, #-3701]!	; 0xe75
    b498:	29362b31 	ldmdbcs	r6!, {r0, r4, r5, r8, r9, fp, sp}
    b49c:	382e3420 	stmdacc	lr!, {r5, sl, ip, sp}
    b4a0:	4100322e 	tstmi	r0, lr, lsr #4
    b4a4:	0000002f 	andeq	r0, r0, pc, lsr #32
    b4a8:	62616561 	rsbvs	r6, r1, #406847488	; 0x18400000
    b4ac:	25010069 	strcs	r0, [r1, #-105]	; 0x69
    b4b0:	05000000 	streq	r0, [r0, #-0]
    b4b4:	374d5241 	strbcc	r5, [sp, -r1, asr #4]
    b4b8:	494d4454 	stmdbmi	sp, {r2, r4, r6, sl, lr}^
    b4bc:	08020600 	stmdaeq	r2, {r9, sl}
    b4c0:	12010901 	andne	r0, r1, #16384	; 0x4000
    b4c4:	15011404 	strne	r1, [r1, #-1028]	; 0x404
    b4c8:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
    b4cc:	1a011901 	bne	518d8 <_ZN9Scheduler4mainEv+0x46ae4>
    b4d0:	Address 0x000000000000b4d0 is out of bounds.

