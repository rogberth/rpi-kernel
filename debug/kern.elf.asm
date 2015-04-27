
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
    8050:	ea000035 	b	812c <init>
    8054:	e12fff1e 	bx	lr

00008058 <hang>:
    8058:	eafffffe 	b	8058 <hang>

0000805c <arm_interrupt_handler_irq>:
    805c:	ea00047d 	b	9258 <irq_handler>

00008060 <arm_interrupt_handler>:
    8060:	e24ee004 	sub	lr, lr, #4
    8064:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    8068:	ebffffed 	bl	8024 <basic_handler>
    806c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

00008070 <arm_interrupt_handler_swi>:
    8070:	e3350001 	teq	r5, #1
    8074:	0a00076d 	beq	9e30 <swi_svmode>
    8078:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    807c:	e3350000 	teq	r5, #0
    8080:	0a000003 	beq	8094 <swi_case_0>
    8084:	e3350002 	teq	r5, #2
    8088:	0a000003 	beq	809c <swi_case_2>
    808c:	e3350003 	teq	r5, #3
    8090:	0a000003 	beq	80a4 <swi_case_3>

00008094 <swi_case_0>:
    8094:	eb000735 	bl	9d70 <swi_writer>
    8098:	ea000003 	b	80ac <arm_swi_end>

0000809c <swi_case_2>:
    809c:	eb0007a4 	bl	9f34 <swi_endTask>
    80a0:	ea000001 	b	80ac <arm_swi_end>

000080a4 <swi_case_3>:
    80a4:	eb0007c8 	bl	9fcc <swi_addTask>
    80a8:	eaffffff 	b	80ac <arm_swi_end>

000080ac <arm_swi_end>:
    80ac:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

000080b0 <armLoadContext>:
    80b0:	e59f0058 	ldr	r0, [pc, #88]	; 8110 <armClearScreenloop+0x18>
    80b4:	e5900000 	ldr	r0, [r0]
    80b8:	e2400044 	sub	r0, r0, #68	; 0x44
    80bc:	e5901000 	ldr	r1, [r0]
    80c0:	e2800004 	add	r0, r0, #4
    80c4:	e129f001 	msr	CPSR_fc, r1
    80c8:	e890ffff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr, pc}

000080cc <armPrepareContext>:
    80cc:	e3a00010 	mov	r0, #16
    80d0:	e129f000 	msr	CPSR_fc, r0
    80d4:	e59f1034 	ldr	r1, [pc, #52]	; 8110 <armClearScreenloop+0x18>
    80d8:	e591d000 	ldr	sp, [r1]
    80dc:	e12fff1e 	bx	lr

000080e0 <armRun>:
    80e0:	e369f010 	msr	SPSR_fc, #16
    80e4:	e92d0001 	stmfd	sp!, {r0}
    80e8:	e8dd8000 	ldm	sp, {pc}^

000080ec <armClearScreen>:
    80ec:	e3a01000 	mov	r1, #0
    80f0:	e5902024 	ldr	r2, [r0, #36]	; 0x24
    80f4:	e5900020 	ldr	r0, [r0, #32]

000080f8 <armClearScreenloop>:
    80f8:	e5801000 	str	r1, [r0]
    80fc:	e2800004 	add	r0, r0, #4
    8100:	e2422004 	sub	r2, r2, #4
    8104:	e3520000 	cmp	r2, #0
    8108:	1afffffa 	bne	80f8 <armClearScreenloop>
    810c:	e1a0f00e 	mov	pc, lr
    8110:	0000ade4 	andeq	sl, r0, r4, ror #27
    8114:	00001541 	andeq	r1, r0, r1, asr #10
    8118:	61656100 	cmnvs	r5, r0, lsl #2
    811c:	01006962 	tsteq	r0, r2, ror #18
    8120:	0000000b 	andeq	r0, r0, fp
    8124:	01080206 	tsteq	r8, r6, lsl #4
    8128:	00000109 	andeq	r0, r0, r9, lsl #2

0000812c <init>:
    812c:	e10f0000 	mrs	r0, CPSR
    8130:	e3c000ff 	bic	r0, r0, #255	; 0xff
    8134:	e38000c2 	orr	r0, r0, #194	; 0xc2
    8138:	e121f000 	msr	CPSR_c, r0
    813c:	e3a0da02 	mov	sp, #8192	; 0x2000
    8140:	e10f0000 	mrs	r0, CPSR
    8144:	e3c000ff 	bic	r0, r0, #255	; 0xff
    8148:	e3800013 	orr	r0, r0, #19
    814c:	e129f000 	msr	CPSR_fc, r0
    8150:	e3a0d902 	mov	sp, #32768	; 0x8000
    8154:	ea00089f 	b	a3d8 <kmain>
    8158:	eaffffff 	b	815c <hang$>

0000815c <hang$>:
    815c:	eafffffe 	b	815c <hang$>
    8160:	00001341 	andeq	r1, r0, r1, asr #6
    8164:	61656100 	cmnvs	r5, r0, lsl #2
    8168:	01006962 	tsteq	r0, r2, ror #18
    816c:	00000009 	andeq	r0, r0, r9
    8170:	01080106 	tsteq	r8, r6, lsl #2

00008174 <_Z6divideiiPiS_.part.0>:
    8174:	e3a0c000 	mov	ip, #0
    8178:	e3500000 	cmp	r0, #0
    817c:	b2600000 	rsblt	r0, r0, #0
    8180:	e3510000 	cmp	r1, #0
    8184:	b2611000 	rsblt	r1, r1, #0
    8188:	e1500001 	cmp	r0, r1
    818c:	e92d4010 	push	{r4, lr}
    8190:	e582c000 	str	ip, [r2]
    8194:	e1a0e001 	mov	lr, r1
    8198:	e583c000 	str	ip, [r3]
    819c:	ba000007 	blt	81c0 <_Z6divideiiPiS_.part.0+0x4c>
    81a0:	e592c000 	ldr	ip, [r2]
    81a4:	e28cc001 	add	ip, ip, #1
    81a8:	e08ee001 	add	lr, lr, r1
    81ac:	e150000e 	cmp	r0, lr
    81b0:	e1a0400c 	mov	r4, ip
    81b4:	e28cc001 	add	ip, ip, #1
    81b8:	aafffffa 	bge	81a8 <_Z6divideiiPiS_.part.0+0x34>
    81bc:	e5824000 	str	r4, [r2]
    81c0:	e06e0000 	rsb	r0, lr, r0
    81c4:	e0800001 	add	r0, r0, r1
    81c8:	e5830000 	str	r0, [r3]
    81cc:	e8bd4010 	pop	{r4, lr}
    81d0:	e12fff1e 	bx	lr

000081d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>:
    81d4:	e3500009 	cmp	r0, #9
    81d8:	9a00000c 	bls	8210 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3+0x3c>
    81dc:	e3a03000 	mov	r3, #0
    81e0:	e240000a 	sub	r0, r0, #10
    81e4:	e3500009 	cmp	r0, #9
    81e8:	e2833001 	add	r3, r3, #1
    81ec:	8afffffb 	bhi	81e0 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3+0xc>
    81f0:	e1a03103 	lsl	r3, r3, #2
    81f4:	e2833202 	add	r3, r3, #536870912	; 0x20000000
    81f8:	e2833602 	add	r3, r3, #2097152	; 0x200000
    81fc:	e5932000 	ldr	r2, [r3]
    8200:	e0800080 	add	r0, r0, r0, lsl #1
    8204:	e1820011 	orr	r0, r2, r1, lsl r0
    8208:	e5830000 	str	r0, [r3]
    820c:	e12fff1e 	bx	lr
    8210:	e59f3000 	ldr	r3, [pc]	; 8218 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3+0x44>
    8214:	eafffff8 	b	81fc <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3+0x28>
    8218:	20200000 	eorcs	r0, r0, r0

0000821c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>:
    821c:	e350001f 	cmp	r0, #31
    8220:	8a000003 	bhi	8234 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x18>
    8224:	e3510000 	cmp	r1, #0
    8228:	0a00000c 	beq	8260 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x44>
    822c:	e59f2034 	ldr	r2, [pc, #52]	; 8268 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x4c>
    8230:	ea000003 	b	8244 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x28>
    8234:	e3510000 	cmp	r1, #0
    8238:	1a000005 	bne	8254 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x38>
    823c:	e59f2028 	ldr	r2, [pc, #40]	; 826c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x50>
    8240:	e2400020 	sub	r0, r0, #32
    8244:	e3a03001 	mov	r3, #1
    8248:	e1a00013 	lsl	r0, r3, r0
    824c:	e5820000 	str	r0, [r2]
    8250:	e12fff1e 	bx	lr
    8254:	e2400020 	sub	r0, r0, #32
    8258:	e59f2010 	ldr	r2, [pc, #16]	; 8270 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x54>
    825c:	eafffff8 	b	8244 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x28>
    8260:	e59f200c 	ldr	r2, [pc, #12]	; 8274 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x58>
    8264:	eafffff6 	b	8244 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x28>
    8268:	2020001c 	eorcs	r0, r0, ip, lsl r0
    826c:	2020002c 	eorcs	r0, r0, ip, lsr #32
    8270:	20200020 	eorcs	r0, r0, r0, lsr #32
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
    82cc:	e3a02001 	mov	r2, #1
    82d0:	ea000000 	b	82d8 <_Z15getNumberLengthi+0xc>
    82d4:	e1a02003 	mov	r2, r3
    82d8:	e0823102 	add	r3, r2, r2, lsl #2
    82dc:	e1a03083 	lsl	r3, r3, #1
    82e0:	e1500003 	cmp	r0, r3
    82e4:	cafffffa 	bgt	82d4 <_Z15getNumberLengthi+0x8>
    82e8:	e1a00002 	mov	r0, r2
    82ec:	e12fff1e 	bx	lr

000082f0 <_Z6divideiiPiS_>:
    82f0:	e251c000 	subs	ip, r1, #0
    82f4:	012fff1e 	bxeq	lr
    82f8:	e35c0001 	cmp	ip, #1
    82fc:	1affff9c 	bne	8174 <_Z6divideiiPiS_.part.0>
    8300:	e92d4030 	push	{r4, r5, lr}
    8304:	e1a0e003 	mov	lr, r3
    8308:	e1a04002 	mov	r4, r2
    830c:	e3a03000 	mov	r3, #0
    8310:	e5840000 	str	r0, [r4]
    8314:	e58e3000 	str	r3, [lr]
    8318:	e8bd4030 	pop	{r4, r5, lr}
    831c:	e12fff1e 	bx	lr

00008320 <_Z6divideii>:
    8320:	e3a02000 	mov	r2, #0
    8324:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8328:	e2513000 	subs	r3, r1, #0
    832c:	e24dd00c 	sub	sp, sp, #12
    8330:	e58d2000 	str	r2, [sp]
    8334:	e58d2004 	str	r2, [sp, #4]
    8338:	01a00003 	moveq	r0, r3
    833c:	0a000007 	beq	8360 <_Z6divideii+0x40>
    8340:	e3530001 	cmp	r3, #1
    8344:	01a02000 	moveq	r2, r0
    8348:	01a00002 	moveq	r0, r2
    834c:	0a000003 	beq	8360 <_Z6divideii+0x40>
    8350:	e1a0200d 	mov	r2, sp
    8354:	e28d3004 	add	r3, sp, #4
    8358:	ebffff85 	bl	8174 <_Z6divideiiPiS_.part.0>
    835c:	e59d0000 	ldr	r0, [sp]
    8360:	e28dd00c 	add	sp, sp, #12
    8364:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    8368:	e12fff1e 	bx	lr

0000836c <_Z6moduloii>:
    836c:	e3a03000 	mov	r3, #0
    8370:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8374:	e3510001 	cmp	r1, #1
    8378:	e24dd00c 	sub	sp, sp, #12
    837c:	e58d3000 	str	r3, [sp]
    8380:	e58d3004 	str	r3, [sp, #4]
    8384:	91a00003 	movls	r0, r3
    8388:	9a000003 	bls	839c <_Z6moduloii+0x30>
    838c:	e1a0200d 	mov	r2, sp
    8390:	e28d3004 	add	r3, sp, #4
    8394:	ebffff76 	bl	8174 <_Z6divideiiPiS_.part.0>
    8398:	e59d0004 	ldr	r0, [sp, #4]
    839c:	e28dd00c 	add	sp, sp, #12
    83a0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    83a4:	e12fff1e 	bx	lr

000083a8 <_Z5allocj>:
    83a8:	e59f3074 	ldr	r3, [pc, #116]	; 8424 <_Z5allocj+0x7c>
    83ac:	e5933000 	ldr	r3, [r3]
    83b0:	e5d32004 	ldrb	r2, [r3, #4]
    83b4:	e3520000 	cmp	r2, #0
    83b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    83bc:	e1a01000 	mov	r1, r0
    83c0:	0a000003 	beq	83d4 <_Z5allocj+0x2c>
    83c4:	e5933000 	ldr	r3, [r3]
    83c8:	e5d32004 	ldrb	r2, [r3, #4]
    83cc:	e3520000 	cmp	r2, #0
    83d0:	1afffffb 	bne	83c4 <_Z5allocj+0x1c>
    83d4:	e3a0c000 	mov	ip, #0
    83d8:	e5932008 	ldr	r2, [r3, #8]
    83dc:	e593000c 	ldr	r0, [r3, #12]
    83e0:	e151000c 	cmp	r1, ip
    83e4:	e0820100 	add	r0, r2, r0, lsl #2
    83e8:	e583140c 	str	r1, [r3, #1036]	; 0x40c
    83ec:	e5830408 	str	r0, [r3, #1032]	; 0x408
    83f0:	e5c3c404 	strb	ip, [r3, #1028]	; 0x404
    83f4:	e283eb01 	add	lr, r3, #1024	; 0x400
    83f8:	0a000004 	beq	8410 <_Z5allocj+0x68>
    83fc:	e1a02000 	mov	r2, r0
    8400:	e0801101 	add	r1, r0, r1, lsl #2
    8404:	e482c004 	str	ip, [r2], #4
    8408:	e1520001 	cmp	r2, r1
    840c:	1afffffc 	bne	8404 <_Z5allocj+0x5c>
    8410:	e3a02001 	mov	r2, #1
    8414:	e583e000 	str	lr, [r3]
    8418:	e5c32004 	strb	r2, [r3, #4]
    841c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    8420:	e12fff1e 	bx	lr
    8424:	0000adcc 	andeq	sl, r0, ip, asr #27

00008428 <_Z15init_page_tablev>:
    8428:	e3a0380f 	mov	r3, #983040	; 0xf0000
    842c:	e3a01000 	mov	r1, #0
    8430:	e3a02aff 	mov	r2, #1044480	; 0xff000
    8434:	e59f000c 	ldr	r0, [pc, #12]	; 8448 <_Z15init_page_tablev+0x20>
    8438:	e5803000 	str	r3, [r0]
    843c:	e5c31004 	strb	r1, [r3, #4]
    8440:	e5832008 	str	r2, [r3, #8]
    8444:	e12fff1e 	bx	lr
    8448:	0000adcc 	andeq	sl, r0, ip, asr #27

0000844c <_Z10irq_enablev>:
    844c:	e3a0287e 	mov	r2, #8257536	; 0x7e0000
    8450:	e59f3008 	ldr	r3, [pc, #8]	; 8460 <_Z10irq_enablev+0x14>
    8454:	e3a00001 	mov	r0, #1
    8458:	e5832214 	str	r2, [r3, #532]	; 0x214
    845c:	e12fff1e 	bx	lr
    8460:	2000b000 	andcs	fp, r0, r0

00008464 <_Z11irq_disablev>:
    8464:	e3a0287e 	mov	r2, #8257536	; 0x7e0000
    8468:	e59f3008 	ldr	r3, [pc, #8]	; 8478 <_Z11irq_disablev+0x14>
    846c:	e3a00001 	mov	r0, #1
    8470:	e5832220 	str	r2, [r3, #544]	; 0x220
    8474:	e12fff1e 	bx	lr
    8478:	2000b000 	andcs	fp, r0, r0

0000847c <_Z16irq_enable_timerv>:
    847c:	e3a02008 	mov	r2, #8
    8480:	e59f3008 	ldr	r3, [pc, #8]	; 8490 <_Z16irq_enable_timerv+0x14>
    8484:	e3a00001 	mov	r0, #1
    8488:	e5832210 	str	r2, [r3, #528]	; 0x210
    848c:	e12fff1e 	bx	lr
    8490:	2000b000 	andcs	fp, r0, r0

00008494 <_Z22irq_enable_kerneltimerv>:
    8494:	e3a02002 	mov	r2, #2
    8498:	e59f3008 	ldr	r3, [pc, #8]	; 84a8 <_Z22irq_enable_kerneltimerv+0x14>
    849c:	e3a00001 	mov	r0, #1
    84a0:	e5832210 	str	r2, [r3, #528]	; 0x210
    84a4:	e12fff1e 	bx	lr
    84a8:	2000b000 	andcs	fp, r0, r0

000084ac <_Z17irq_disable_timerv>:
    84ac:	e3a02008 	mov	r2, #8
    84b0:	e59f3008 	ldr	r3, [pc, #8]	; 84c0 <_Z17irq_disable_timerv+0x14>
    84b4:	e3a00001 	mov	r0, #1
    84b8:	e583221c 	str	r2, [r3, #540]	; 0x21c
    84bc:	e12fff1e 	bx	lr
    84c0:	2000b000 	andcs	fp, r0, r0

000084c4 <_Z23irq_disable_kerneltimerv>:
    84c4:	e3a02002 	mov	r2, #2
    84c8:	e59f3008 	ldr	r3, [pc, #8]	; 84d8 <_Z23irq_disable_kerneltimerv+0x14>
    84cc:	e3a00001 	mov	r0, #1
    84d0:	e583221c 	str	r2, [r3, #540]	; 0x21c
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
    84fc:	e59f3064 	ldr	r3, [pc, #100]	; 8568 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
    8500:	e59f2064 	ldr	r2, [pc, #100]	; 856c <_ZN12RaspberryLib7SetGPIOEjj+0x70>
    8504:	e3510001 	cmp	r1, #1
    8508:	01a01003 	moveq	r1, r3
    850c:	11a01002 	movne	r1, r2
    8510:	e350000a 	cmp	r0, #10
    8514:	9a000010 	bls	855c <_ZN12RaspberryLib7SetGPIOEjj+0x60>
    8518:	e3a03000 	mov	r3, #0
    851c:	e240000a 	sub	r0, r0, #10
    8520:	e350000a 	cmp	r0, #10
    8524:	e2833001 	add	r3, r3, #1
    8528:	8afffffb 	bhi	851c <_ZN12RaspberryLib7SetGPIOEjj+0x20>
    852c:	e3a0c001 	mov	ip, #1
    8530:	e1a02103 	lsl	r2, r3, #2
    8534:	e2822202 	add	r2, r2, #536870912	; 0x20000000
    8538:	e1a03203 	lsl	r3, r3, #4
    853c:	e2822602 	add	r2, r2, #2097152	; 0x200000
    8540:	e1a0331c 	lsl	r3, ip, r3
    8544:	e3a0c001 	mov	ip, #1
    8548:	e0800080 	add	r0, r0, r0, lsl #1
    854c:	e1a0001c 	lsl	r0, ip, r0
    8550:	e5820000 	str	r0, [r2]
    8554:	e5813000 	str	r3, [r1]
    8558:	e12fff1e 	bx	lr
    855c:	e3a03001 	mov	r3, #1
    8560:	e59f2008 	ldr	r2, [pc, #8]	; 8570 <_ZN12RaspberryLib7SetGPIOEjj+0x74>
    8564:	eafffff6 	b	8544 <_ZN12RaspberryLib7SetGPIOEjj+0x48>
    8568:	20200028 	eorcs	r0, r0, r8, lsr #32
    856c:	2020001c 	eorcs	r0, r0, ip, lsl r0
    8570:	20200000 	eorcs	r0, r0, r0

00008574 <_ZN12RaspberryLib15SetGPIOfunctionEjj>:
    8574:	e3500035 	cmp	r0, #53	; 0x35
    8578:	93510007 	cmpls	r1, #7
    857c:	812fff1e 	bxhi	lr
    8580:	eaffff13 	b	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>

00008584 <_ZN12RaspberryLib12SetGPIOvalueEjb>:
    8584:	e3500035 	cmp	r0, #53	; 0x35
    8588:	812fff1e 	bxhi	lr
    858c:	eaffff22 	b	821c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>

00008590 <_ZN12RaspberryLib13ReadGPIOvalueEj>:
    8590:	e3500035 	cmp	r0, #53	; 0x35
    8594:	8a000006 	bhi	85b4 <_ZN12RaspberryLib13ReadGPIOvalueEj+0x24>
    8598:	e59f301c 	ldr	r3, [pc, #28]	; 85bc <_ZN12RaspberryLib13ReadGPIOvalueEj+0x2c>
    859c:	e59f201c 	ldr	r2, [pc, #28]	; 85c0 <_ZN12RaspberryLib13ReadGPIOvalueEj+0x30>
    85a0:	e350001f 	cmp	r0, #31
    85a4:	91a00003 	movls	r0, r3
    85a8:	81a00002 	movhi	r0, r2
    85ac:	e5900000 	ldr	r0, [r0]
    85b0:	e12fff1e 	bx	lr
    85b4:	e3a00000 	mov	r0, #0
    85b8:	e12fff1e 	bx	lr
    85bc:	20200034 	eorcs	r0, r0, r4, lsr r0
    85c0:	20200038 	eorcs	r0, r0, r8, lsr r0

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
    85fc:	ebfffef4 	bl	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    8600:	e1a01004 	mov	r1, r4
    8604:	e3a0001b 	mov	r0, #27
    8608:	e8bd4010 	pop	{r4, lr}
    860c:	eaffff02 	b	821c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
    8610:	e3a00009 	mov	r0, #9
    8614:	e3a01001 	mov	r1, #1
    8618:	ebfffeed 	bl	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    861c:	e1a01004 	mov	r1, r4
    8620:	e3a00009 	mov	r0, #9
    8624:	e8bd4010 	pop	{r4, lr}
    8628:	eafffefb 	b	821c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
    862c:	e3a0000a 	mov	r0, #10
    8630:	e3a01001 	mov	r1, #1
    8634:	ebfffee6 	bl	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    8638:	e1a01004 	mov	r1, r4
    863c:	e3a0000a 	mov	r0, #10
    8640:	e8bd4010 	pop	{r4, lr}
    8644:	eafffef4 	b	821c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
    8648:	e3a0000b 	mov	r0, #11
    864c:	e3a01001 	mov	r1, #1
    8650:	ebfffedf 	bl	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    8654:	e1a01004 	mov	r1, r4
    8658:	e3a0000b 	mov	r0, #11
    865c:	e8bd4010 	pop	{r4, lr}
    8660:	eafffeed 	b	821c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
    8664:	e3a00011 	mov	r0, #17
    8668:	e3a01001 	mov	r1, #1
    866c:	ebfffed8 	bl	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    8670:	e1a01004 	mov	r1, r4
    8674:	e3a00011 	mov	r0, #17
    8678:	e8bd4010 	pop	{r4, lr}
    867c:	eafffee6 	b	821c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
    8680:	e3a00016 	mov	r0, #22
    8684:	e3a01001 	mov	r1, #1
    8688:	ebfffed1 	bl	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    868c:	e1a01004 	mov	r1, r4
    8690:	e3a00016 	mov	r0, #22
    8694:	e8bd4010 	pop	{r4, lr}
    8698:	eafffedf 	b	821c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
    869c:	e8bd4010 	pop	{r4, lr}
    86a0:	e12fff1e 	bx	lr

000086a4 <_ZN12RaspberryLib10SetButtonsEb>:
    86a4:	e3500000 	cmp	r0, #0
    86a8:	13a0200c 	movne	r2, #12
    86ac:	059f3010 	ldreq	r3, [pc, #16]	; 86c4 <_ZN12RaspberryLib10SetButtonsEb+0x20>
    86b0:	159f300c 	ldrne	r3, [pc, #12]	; 86c4 <_ZN12RaspberryLib10SetButtonsEb+0x20>
    86b4:	05932058 	ldreq	r2, [r3, #88]	; 0x58
    86b8:	15832058 	strne	r2, [r3, #88]	; 0x58
    86bc:	05830058 	streq	r0, [r3, #88]	; 0x58
    86c0:	e12fff1e 	bx	lr
    86c4:	20200000 	eorcs	r0, r0, r0

000086c8 <_ZN12RaspberryLib10TestBuzzerEv>:
    86c8:	e92d4008 	push	{r3, lr}
    86cc:	e3a00004 	mov	r0, #4
    86d0:	e3a01001 	mov	r1, #1
    86d4:	ebfffebe 	bl	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    86d8:	e3a00010 	mov	r0, #16
    86dc:	e1a02000 	mov	r2, r0
    86e0:	e59f1040 	ldr	r1, [pc, #64]	; 8728 <_ZN12RaspberryLib10TestBuzzerEv+0x60>
    86e4:	e1a03001 	mov	r3, r1
    86e8:	e581001c 	str	r0, [r1, #28]
    86ec:	e59f1038 	ldr	r1, [pc, #56]	; 872c <_ZN12RaspberryLib10TestBuzzerEv+0x64>
    86f0:	e2511001 	subs	r1, r1, #1
    86f4:	e583201c 	str	r2, [r3, #28]
    86f8:	e59f0028 	ldr	r0, [pc, #40]	; 8728 <_ZN12RaspberryLib10TestBuzzerEv+0x60>
    86fc:	e583201c 	str	r2, [r3, #28]
    8700:	e3a0c010 	mov	ip, #16
    8704:	e583201c 	str	r2, [r3, #28]
    8708:	e583201c 	str	r2, [r3, #28]
    870c:	e5832028 	str	r2, [r3, #40]	; 0x28
    8710:	e5832028 	str	r2, [r3, #40]	; 0x28
    8714:	e5832028 	str	r2, [r3, #40]	; 0x28
    8718:	1afffff4 	bne	86f0 <_ZN12RaspberryLib10TestBuzzerEv+0x28>
    871c:	e580c028 	str	ip, [r0, #40]	; 0x28
    8720:	e8bd4008 	pop	{r3, lr}
    8724:	e12fff1e 	bx	lr
    8728:	20200000 	eorcs	r0, r0, r0
    872c:	000186a1 	andeq	r8, r1, r1, lsr #13

00008730 <_ZN12RaspberryLib14setTimerKernelEj>:
    8730:	e3a0c001 	mov	ip, #1
    8734:	e59f101c 	ldr	r1, [pc, #28]	; 8758 <_ZN12RaspberryLib14setTimerKernelEj+0x28>
    8738:	e0602280 	rsb	r2, r0, r0, lsl #5
    873c:	e5913004 	ldr	r3, [r1, #4]
    8740:	e0800102 	add	r0, r0, r2, lsl #2
    8744:	e59f2010 	ldr	r2, [pc, #16]	; 875c <_ZN12RaspberryLib14setTimerKernelEj+0x2c>
    8748:	e0833180 	add	r3, r3, r0, lsl #3
    874c:	e5813010 	str	r3, [r1, #16]
    8750:	e5c2c004 	strb	ip, [r2, #4]
    8754:	e12fff1e 	bx	lr
    8758:	20003000 	andcs	r3, r0, r0
    875c:	0000adcc 	andeq	sl, r0, ip, asr #27

00008760 <_ZN12RaspberryLib8setTimerEj>:
    8760:	e3a0c001 	mov	ip, #1
    8764:	e59f101c 	ldr	r1, [pc, #28]	; 8788 <_ZN12RaspberryLib8setTimerEj+0x28>
    8768:	e0602280 	rsb	r2, r0, r0, lsl #5
    876c:	e5913004 	ldr	r3, [r1, #4]
    8770:	e0800102 	add	r0, r0, r2, lsl #2
    8774:	e59f2010 	ldr	r2, [pc, #16]	; 878c <_ZN12RaspberryLib8setTimerEj+0x2c>
    8778:	e0833180 	add	r3, r3, r0, lsl #3
    877c:	e5813018 	str	r3, [r1, #24]
    8780:	e5c2c005 	strb	ip, [r2, #5]
    8784:	e12fff1e 	bx	lr
    8788:	20003000 	andcs	r3, r0, r0
    878c:	0000adcc 	andeq	sl, r0, ip, asr #27

00008790 <_ZN12RaspberryLib12CheckCounterEv>:
    8790:	e59f3004 	ldr	r3, [pc, #4]	; 879c <_ZN12RaspberryLib12CheckCounterEv+0xc>
    8794:	e5930004 	ldr	r0, [r3, #4]
    8798:	e12fff1e 	bx	lr
    879c:	20003000 	andcs	r3, r0, r0

000087a0 <_ZN12RaspberryLib9WaitQuickEj>:
    87a0:	e59f3018 	ldr	r3, [pc, #24]	; 87c0 <_ZN12RaspberryLib9WaitQuickEj+0x20>
    87a4:	e1a02003 	mov	r2, r3
    87a8:	e5933004 	ldr	r3, [r3, #4]
    87ac:	e0800003 	add	r0, r0, r3
    87b0:	e5923004 	ldr	r3, [r2, #4]
    87b4:	e1500003 	cmp	r0, r3
    87b8:	8afffffc 	bhi	87b0 <_ZN12RaspberryLib9WaitQuickEj+0x10>
    87bc:	e12fff1e 	bx	lr
    87c0:	20003000 	andcs	r3, r0, r0

000087c4 <_ZN12RaspberryLib4WaitEj>:
    87c4:	e59f3020 	ldr	r3, [pc, #32]	; 87ec <_ZN12RaspberryLib4WaitEj+0x28>
    87c8:	e0601280 	rsb	r1, r0, r0, lsl #5
    87cc:	e1a02003 	mov	r2, r3
    87d0:	e5933004 	ldr	r3, [r3, #4]
    87d4:	e0800101 	add	r0, r0, r1, lsl #2
    87d8:	e0830180 	add	r0, r3, r0, lsl #3
    87dc:	e5923004 	ldr	r3, [r2, #4]
    87e0:	e1500003 	cmp	r0, r3
    87e4:	8afffffc 	bhi	87dc <_ZN12RaspberryLib4WaitEj+0x18>
    87e8:	e12fff1e 	bx	lr
    87ec:	20003000 	andcs	r3, r0, r0

000087f0 <_ZN12RaspberryLib5BlinkEjj>:
    87f0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    87f4:	e2505000 	subs	r5, r0, #0
    87f8:	0a000016 	beq	8858 <_ZN12RaspberryLib5BlinkEjj+0x68>
    87fc:	e0616281 	rsb	r6, r1, r1, lsl #5
    8800:	e0811106 	add	r1, r1, r6, lsl #2
    8804:	e59f4054 	ldr	r4, [pc, #84]	; 8860 <_ZN12RaspberryLib5BlinkEjj+0x70>
    8808:	e1a06181 	lsl	r6, r1, #3
    880c:	e3a00010 	mov	r0, #16
    8810:	e3a01001 	mov	r1, #1
    8814:	ebffff38 	bl	84fc <_ZN12RaspberryLib7SetGPIOEjj>
    8818:	e5942004 	ldr	r2, [r4, #4]
    881c:	e0862002 	add	r2, r6, r2
    8820:	e5943004 	ldr	r3, [r4, #4]
    8824:	e1520003 	cmp	r2, r3
    8828:	e59f7030 	ldr	r7, [pc, #48]	; 8860 <_ZN12RaspberryLib5BlinkEjj+0x70>
    882c:	8afffffb 	bhi	8820 <_ZN12RaspberryLib5BlinkEjj+0x30>
    8830:	e3a00010 	mov	r0, #16
    8834:	e3a01000 	mov	r1, #0
    8838:	ebffff2f 	bl	84fc <_ZN12RaspberryLib7SetGPIOEjj>
    883c:	e5972004 	ldr	r2, [r7, #4]
    8840:	e0862002 	add	r2, r6, r2
    8844:	e5943004 	ldr	r3, [r4, #4]
    8848:	e1520003 	cmp	r2, r3
    884c:	8afffffc 	bhi	8844 <_ZN12RaspberryLib5BlinkEjj+0x54>
    8850:	e2555001 	subs	r5, r5, #1
    8854:	1affffec 	bne	880c <_ZN12RaspberryLib5BlinkEjj+0x1c>
    8858:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    885c:	e12fff1e 	bx	lr
    8860:	20003000 	andcs	r3, r0, r0

00008864 <_ZN12RaspberryLib7PiFaultEPKc>:
    8864:	e3a00004 	mov	r0, #4
    8868:	e3a010c8 	mov	r1, #200	; 0xc8
    886c:	eaffffdf 	b	87f0 <_ZN12RaspberryLib5BlinkEjj>

00008870 <_ZN12RaspberryLib12MailboxWriteEcj>:
    8870:	e59f203c 	ldr	r2, [pc, #60]	; 88b4 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
    8874:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
    8878:	e3530000 	cmp	r3, #0
    887c:	e59f3030 	ldr	r3, [pc, #48]	; 88b4 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
    8880:	bafffffb 	blt	8874 <_ZN12RaspberryLib12MailboxWriteEcj+0x4>
    8884:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    8888:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    888c:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    8890:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    8894:	e3c1100f 	bic	r1, r1, #15
    8898:	e1800001 	orr	r0, r0, r1
    889c:	e58308a0 	str	r0, [r3, #2208]	; 0x8a0
    88a0:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    88a4:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    88a8:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    88ac:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    88b0:	e12fff1e 	bx	lr
    88b4:	2000b000 	andcs	fp, r0, r0

000088b8 <_ZN12RaspberryLib12MailboxCheckEc>:
    88b8:	e92d4008 	push	{r3, lr}
    88bc:	e3a03000 	mov	r3, #0
    88c0:	e59f106c 	ldr	r1, [pc, #108]	; 8934 <_ZN12RaspberryLib12MailboxCheckEc+0x7c>
    88c4:	e59fe06c 	ldr	lr, [pc, #108]	; 8938 <_ZN12RaspberryLib12MailboxCheckEc+0x80>
    88c8:	e5912898 	ldr	r2, [r1, #2200]	; 0x898
    88cc:	e3120101 	tst	r2, #1073741824	; 0x40000000
    88d0:	1a00000e 	bne	8910 <_ZN12RaspberryLib12MailboxCheckEc+0x58>
    88d4:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    88d8:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    88dc:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    88e0:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    88e4:	e5912880 	ldr	r2, [r1, #2176]	; 0x880
    88e8:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
    88ec:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
    88f0:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
    88f4:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
    88f8:	e202c00f 	and	ip, r2, #15
    88fc:	e15c0000 	cmp	ip, r0
    8900:	1afffff0 	bne	88c8 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
    8904:	e3c2000f 	bic	r0, r2, #15
    8908:	e8bd4008 	pop	{r3, lr}
    890c:	e12fff1e 	bx	lr
    8910:	e153000e 	cmp	r3, lr
    8914:	e2833001 	add	r3, r3, #1
    8918:	9affffea 	bls	88c8 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
    891c:	e3a00004 	mov	r0, #4
    8920:	e3a010c8 	mov	r1, #200	; 0xc8
    8924:	ebffffb1 	bl	87f0 <_ZN12RaspberryLib5BlinkEjj>
    8928:	e3e00000 	mvn	r0, #0
    892c:	e8bd4008 	pop	{r3, lr}
    8930:	e12fff1e 	bx	lr
    8934:	2000b000 	andcs	fp, r0, r0
    8938:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>

0000893c <_ZN12RaspberryLib18AcquireFrameBufferEjj>:
    893c:	e3a03a02 	mov	r3, #8192	; 0x2000
    8940:	e3a02000 	mov	r2, #0
    8944:	e3a0c018 	mov	ip, #24
    8948:	e92d4010 	push	{r4, lr}
    894c:	e8830003 	stm	r3, {r0, r1}
    8950:	e5830008 	str	r0, [r3, #8]
    8954:	e583100c 	str	r1, [r3, #12]
    8958:	e583c014 	str	ip, [r3, #20]
    895c:	e5832010 	str	r2, [r3, #16]
    8960:	e5832018 	str	r2, [r3, #24]
    8964:	e583201c 	str	r2, [r3, #28]
    8968:	e5832020 	str	r2, [r3, #32]
    896c:	e5832024 	str	r2, [r3, #36]	; 0x24
    8970:	e5c32028 	strb	r2, [r3, #40]	; 0x28
    8974:	e3a00001 	mov	r0, #1
    8978:	e59f107c 	ldr	r1, [pc, #124]	; 89fc <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xc0>
    897c:	ebffffbb 	bl	8870 <_ZN12RaspberryLib12MailboxWriteEcj>
    8980:	e59f4078 	ldr	r4, [pc, #120]	; 8a00 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xc4>
    8984:	e3a00001 	mov	r0, #1
    8988:	ebffffca 	bl	88b8 <_ZN12RaspberryLib12MailboxCheckEc>
    898c:	e3500000 	cmp	r0, #0
    8990:	0a000011 	beq	89dc <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa0>
    8994:	e2544001 	subs	r4, r4, #1
    8998:	2afffff9 	bcs	8984 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x48>
    899c:	e3a02a02 	mov	r2, #8192	; 0x2000
    89a0:	e5923020 	ldr	r3, [r2, #32]
    89a4:	e3530000 	cmp	r3, #0
    89a8:	0a00000d 	beq	89e4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa8>
    89ac:	e5921010 	ldr	r1, [r2, #16]
    89b0:	e3510000 	cmp	r1, #0
    89b4:	0a00000a 	beq	89e4 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa8>
    89b8:	e3a01001 	mov	r1, #1
    89bc:	e5c21028 	strb	r1, [r2, #40]	; 0x28
    89c0:	e3a02a02 	mov	r2, #8192	; 0x2000
    89c4:	e3530101 	cmp	r3, #1073741824	; 0x40000000
    89c8:	82833103 	addhi	r3, r3, #-1073741824	; 0xc0000000
    89cc:	e3a00a02 	mov	r0, #8192	; 0x2000
    89d0:	e5823020 	str	r3, [r2, #32]
    89d4:	e8bd4010 	pop	{r4, lr}
    89d8:	e12fff1e 	bx	lr
    89dc:	e3540000 	cmp	r4, #0
    89e0:	1affffed 	bne	899c <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
    89e4:	e3a00004 	mov	r0, #4
    89e8:	e3a010c8 	mov	r1, #200	; 0xc8
    89ec:	ebffff7f 	bl	87f0 <_ZN12RaspberryLib5BlinkEjj>
    89f0:	e3a00a02 	mov	r0, #8192	; 0x2000
    89f4:	e8bd4010 	pop	{r4, lr}
    89f8:	e12fff1e 	bx	lr
    89fc:	40002000 	andmi	r2, r0, r0
    8a00:	00002710 	andeq	r2, r0, r0, lsl r7

00008a04 <_ZN11gpu2dCanvas15initFrameBufferEv>:
    8a04:	e5901004 	ldr	r1, [r0, #4]
    8a08:	e92d4010 	push	{r4, lr}
    8a0c:	e2811101 	add	r1, r1, #1073741824	; 0x40000000
    8a10:	e1a04000 	mov	r4, r0
    8a14:	e3a00001 	mov	r0, #1
    8a18:	ebffff94 	bl	8870 <_ZN12RaspberryLib12MailboxWriteEcj>
    8a1c:	e3a00001 	mov	r0, #1
    8a20:	ebffffa4 	bl	88b8 <_ZN12RaspberryLib12MailboxCheckEc>
    8a24:	e3500000 	cmp	r0, #0
    8a28:	1afffffb 	bne	8a1c <_ZN11gpu2dCanvas15initFrameBufferEv+0x18>
    8a2c:	e5943004 	ldr	r3, [r4, #4]
    8a30:	e5930020 	ldr	r0, [r3, #32]
    8a34:	e3500000 	cmp	r0, #0
    8a38:	0a000009 	beq	8a64 <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
    8a3c:	e5932010 	ldr	r2, [r3, #16]
    8a40:	e3520000 	cmp	r2, #0
    8a44:	01a00002 	moveq	r0, r2
    8a48:	0a000005 	beq	8a64 <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
    8a4c:	e3a02001 	mov	r2, #1
    8a50:	e3500101 	cmp	r0, #1073741824	; 0x40000000
    8a54:	82800103 	addhi	r0, r0, #-1073741824	; 0xc0000000
    8a58:	e5830020 	str	r0, [r3, #32]
    8a5c:	e1a00002 	mov	r0, r2
    8a60:	e5c42000 	strb	r2, [r4]
    8a64:	e8bd4010 	pop	{r4, lr}
    8a68:	e12fff1e 	bx	lr

00008a6c <_ZN11gpu2dCanvasC1Ebjj>:
    8a6c:	e3a0c000 	mov	ip, #0
    8a70:	e92d4038 	push	{r3, r4, r5, lr}
    8a74:	e1a04000 	mov	r4, r0
    8a78:	e3a00a02 	mov	r0, #8192	; 0x2000
    8a7c:	e151000c 	cmp	r1, ip
    8a80:	e5840004 	str	r0, [r4, #4]
    8a84:	e5c41002 	strb	r1, [r4, #2]
    8a88:	e5c4c000 	strb	ip, [r4]
    8a8c:	e880000c 	stm	r0, {r2, r3}
    8a90:	11a03083 	lslne	r3, r3, #1
    8a94:	e5802008 	str	r2, [r0, #8]
    8a98:	e580300c 	str	r3, [r0, #12]
    8a9c:	e3a05000 	mov	r5, #0
    8aa0:	e3a03a02 	mov	r3, #8192	; 0x2000
    8aa4:	e3a02018 	mov	r2, #24
    8aa8:	e5835018 	str	r5, [r3, #24]
    8aac:	e5832014 	str	r2, [r3, #20]
    8ab0:	e583501c 	str	r5, [r3, #28]
    8ab4:	e5835010 	str	r5, [r3, #16]
    8ab8:	e5835020 	str	r5, [r3, #32]
    8abc:	e5835024 	str	r5, [r3, #36]	; 0x24
    8ac0:	e1a00004 	mov	r0, r4
    8ac4:	ebffffce 	bl	8a04 <_ZN11gpu2dCanvas15initFrameBufferEv>
    8ac8:	e1500005 	cmp	r0, r5
    8acc:	15c45001 	strbne	r5, [r4, #1]
    8ad0:	e1a00004 	mov	r0, r4
    8ad4:	e8bd4038 	pop	{r3, r4, r5, lr}
    8ad8:	e12fff1e 	bx	lr

00008adc <_ZN11gpu2dCanvasC1Ev>:
    8adc:	e92d4010 	push	{r4, lr}
    8ae0:	e1a04000 	mov	r4, r0
    8ae4:	e24dd008 	sub	sp, sp, #8
    8ae8:	e3a01001 	mov	r1, #1
    8aec:	e1a0000d 	mov	r0, sp
    8af0:	e3a02b01 	mov	r2, #1024	; 0x400
    8af4:	e3a03c03 	mov	r3, #768	; 0x300
    8af8:	ebffffdb 	bl	8a6c <_ZN11gpu2dCanvasC1Ebjj>
    8afc:	e1a00004 	mov	r0, r4
    8b00:	e28dd008 	add	sp, sp, #8
    8b04:	e8bd4010 	pop	{r4, lr}
    8b08:	e12fff1e 	bx	lr

00008b0c <_ZN11gpu2dCanvas4DrawEv.part.7>:
    8b0c:	e5d03001 	ldrb	r3, [r0, #1]
    8b10:	e3530000 	cmp	r3, #0
    8b14:	13a02000 	movne	r2, #0
    8b18:	e92d4010 	push	{r4, lr}
    8b1c:	e1a04000 	mov	r4, r0
    8b20:	e5903004 	ldr	r3, [r0, #4]
    8b24:	05932004 	ldreq	r2, [r3, #4]
    8b28:	e583201c 	str	r2, [r3, #28]
    8b2c:	ebffffb4 	bl	8a04 <_ZN11gpu2dCanvas15initFrameBufferEv>
    8b30:	e5d43001 	ldrb	r3, [r4, #1]
    8b34:	e2233001 	eor	r3, r3, #1
    8b38:	e5c43001 	strb	r3, [r4, #1]
    8b3c:	e8bd4010 	pop	{r4, lr}
    8b40:	e12fff1e 	bx	lr

00008b44 <_ZN11gpu2dCanvas4DrawEv>:
    8b44:	e5d02000 	ldrb	r2, [r0]
    8b48:	e3520000 	cmp	r2, #0
    8b4c:	012fff1e 	bxeq	lr
    8b50:	e5d03002 	ldrb	r3, [r0, #2]
    8b54:	e3530000 	cmp	r3, #0
    8b58:	012fff1e 	bxeq	lr
    8b5c:	eaffffea 	b	8b0c <_ZN11gpu2dCanvas4DrawEv.part.7>

00008b60 <_ZN11gpu2dCanvas5ClearEj>:
    8b60:	e5d03000 	ldrb	r3, [r0]
    8b64:	e3530000 	cmp	r3, #0
    8b68:	012fff1e 	bxeq	lr
    8b6c:	e5d03001 	ldrb	r3, [r0, #1]
    8b70:	e3530000 	cmp	r3, #0
    8b74:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8b78:	0a000027 	beq	8c1c <_ZN11gpu2dCanvas5ClearEj+0xbc>
    8b7c:	e3a08000 	mov	r8, #0
    8b80:	e590c004 	ldr	ip, [r0, #4]
    8b84:	e59c3004 	ldr	r3, [ip, #4]
    8b88:	e3530000 	cmp	r3, #0
    8b8c:	e20158ff 	and	r5, r1, #16711680	; 0xff0000
    8b90:	e2016cff 	and	r6, r1, #65280	; 0xff00
    8b94:	e1a05825 	lsr	r5, r5, #16
    8b98:	e1a06426 	lsr	r6, r6, #8
    8b9c:	e20140ff 	and	r4, r1, #255	; 0xff
    8ba0:	13a07000 	movne	r7, #0
    8ba4:	0a00001a 	beq	8c14 <_ZN11gpu2dCanvas5ClearEj+0xb4>
    8ba8:	e59c3000 	ldr	r3, [ip]
    8bac:	e3530000 	cmp	r3, #0
    8bb0:	0a000013 	beq	8c04 <_ZN11gpu2dCanvas5ClearEj+0xa4>
    8bb4:	e3a02000 	mov	r2, #0
    8bb8:	e087e008 	add	lr, r7, r8
    8bbc:	e59c1010 	ldr	r1, [ip, #16]
    8bc0:	e0823082 	add	r3, r2, r2, lsl #1
    8bc4:	e0233e91 	mla	r3, r1, lr, r3
    8bc8:	e59c1020 	ldr	r1, [ip, #32]
    8bcc:	e7c34001 	strb	r4, [r3, r1]
    8bd0:	e5901004 	ldr	r1, [r0, #4]
    8bd4:	e5911020 	ldr	r1, [r1, #32]
    8bd8:	e0831001 	add	r1, r3, r1
    8bdc:	e5c16001 	strb	r6, [r1, #1]
    8be0:	e5901004 	ldr	r1, [r0, #4]
    8be4:	e5911020 	ldr	r1, [r1, #32]
    8be8:	e0833001 	add	r3, r3, r1
    8bec:	e5c35002 	strb	r5, [r3, #2]
    8bf0:	e590c004 	ldr	ip, [r0, #4]
    8bf4:	e59c3000 	ldr	r3, [ip]
    8bf8:	e2822001 	add	r2, r2, #1
    8bfc:	e1530002 	cmp	r3, r2
    8c00:	8affffed 	bhi	8bbc <_ZN11gpu2dCanvas5ClearEj+0x5c>
    8c04:	e59c3004 	ldr	r3, [ip, #4]
    8c08:	e2877001 	add	r7, r7, #1
    8c0c:	e1530007 	cmp	r3, r7
    8c10:	8affffe4 	bhi	8ba8 <_ZN11gpu2dCanvas5ClearEj+0x48>
    8c14:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8c18:	e12fff1e 	bx	lr
    8c1c:	e5d03002 	ldrb	r3, [r0, #2]
    8c20:	e3530000 	cmp	r3, #0
    8c24:	0affffd4 	beq	8b7c <_ZN11gpu2dCanvas5ClearEj+0x1c>
    8c28:	e590c004 	ldr	ip, [r0, #4]
    8c2c:	e59c8004 	ldr	r8, [ip, #4]
    8c30:	e1a03008 	mov	r3, r8
    8c34:	eaffffd3 	b	8b88 <_ZN11gpu2dCanvas5ClearEj+0x28>

00008c38 <_ZN11gpu2dCanvas9ClearFastEv>:
    8c38:	e92d4008 	push	{r3, lr}
    8c3c:	e5d03000 	ldrb	r3, [r0]
    8c40:	e3530000 	cmp	r3, #0
    8c44:	15900004 	ldrne	r0, [r0, #4]
    8c48:	13a01000 	movne	r1, #0
    8c4c:	1bfffd26 	blne	80ec <armClearScreen>
    8c50:	e8bd4008 	pop	{r3, lr}
    8c54:	e12fff1e 	bx	lr

00008c58 <_ZN11gpu2dCanvas4syncEv>:
    8c58:	e5d03002 	ldrb	r3, [r0, #2]
    8c5c:	e3530000 	cmp	r3, #0
    8c60:	012fff1e 	bxeq	lr
    8c64:	e5902004 	ldr	r2, [r0, #4]
    8c68:	e5923004 	ldr	r3, [r2, #4]
    8c6c:	e3530000 	cmp	r3, #0
    8c70:	e92d4010 	push	{r4, lr}
    8c74:	e5d04001 	ldrb	r4, [r0, #1]
    8c78:	13a0e000 	movne	lr, #0
    8c7c:	0a000017 	beq	8ce0 <_ZN11gpu2dCanvas4syncEv+0x88>
    8c80:	e5921000 	ldr	r1, [r2]
    8c84:	e3510000 	cmp	r1, #0
    8c88:	0a000011 	beq	8cd4 <_ZN11gpu2dCanvas4syncEv+0x7c>
    8c8c:	e3a01000 	mov	r1, #0
    8c90:	e592c020 	ldr	ip, [r2, #32]
    8c94:	e5922010 	ldr	r2, [r2, #16]
    8c98:	e083300e 	add	r3, r3, lr
    8c9c:	e023c392 	mla	r3, r2, r3, ip
    8ca0:	e022c29e 	mla	r2, lr, r2, ip
    8ca4:	e3540000 	cmp	r4, #0
    8ca8:	e081c081 	add	ip, r1, r1, lsl #1
    8cac:	17d2200c 	ldrbne	r2, [r2, ip]
    8cb0:	07d3300c 	ldrbeq	r3, [r3, ip]
    8cb4:	17c3200c 	strbne	r2, [r3, ip]
    8cb8:	07c2300c 	strbeq	r3, [r2, ip]
    8cbc:	e5902004 	ldr	r2, [r0, #4]
    8cc0:	e5923000 	ldr	r3, [r2]
    8cc4:	e2811001 	add	r1, r1, #1
    8cc8:	e1530001 	cmp	r3, r1
    8ccc:	e5923004 	ldr	r3, [r2, #4]
    8cd0:	8affffee 	bhi	8c90 <_ZN11gpu2dCanvas4syncEv+0x38>
    8cd4:	e28ee001 	add	lr, lr, #1
    8cd8:	e15e0003 	cmp	lr, r3
    8cdc:	3affffe7 	bcc	8c80 <_ZN11gpu2dCanvas4syncEv+0x28>
    8ce0:	e8bd4010 	pop	{r4, lr}
    8ce4:	e12fff1e 	bx	lr

00008ce8 <_ZN11gpu2dCanvas8setPixelEjjj>:
    8ce8:	e5d0c001 	ldrb	ip, [r0, #1]
    8cec:	e35c0000 	cmp	ip, #0
    8cf0:	e92d4010 	push	{r4, lr}
    8cf4:	1a000004 	bne	8d0c <_ZN11gpu2dCanvas8setPixelEjjj+0x24>
    8cf8:	e5d0c002 	ldrb	ip, [r0, #2]
    8cfc:	e35c0000 	cmp	ip, #0
    8d00:	15904004 	ldrne	r4, [r0, #4]
    8d04:	1594e004 	ldrne	lr, [r4, #4]
    8d08:	1a000001 	bne	8d14 <_ZN11gpu2dCanvas8setPixelEjjj+0x2c>
    8d0c:	e3a0e000 	mov	lr, #0
    8d10:	e5904004 	ldr	r4, [r0, #4]
    8d14:	e594c010 	ldr	ip, [r4, #16]
    8d18:	e08e2002 	add	r2, lr, r2
    8d1c:	e0811081 	add	r1, r1, r1, lsl #1
    8d20:	e021129c 	mla	r1, ip, r2, r1
    8d24:	e5942020 	ldr	r2, [r4, #32]
    8d28:	e1a0c823 	lsr	ip, r3, #16
    8d2c:	e7c1c002 	strb	ip, [r1, r2]
    8d30:	e5902004 	ldr	r2, [r0, #4]
    8d34:	e5922020 	ldr	r2, [r2, #32]
    8d38:	e1a0c423 	lsr	ip, r3, #8
    8d3c:	e0812002 	add	r2, r1, r2
    8d40:	e5c2c001 	strb	ip, [r2, #1]
    8d44:	e5902004 	ldr	r2, [r0, #4]
    8d48:	e5922020 	ldr	r2, [r2, #32]
    8d4c:	e0811002 	add	r1, r1, r2
    8d50:	e5c13002 	strb	r3, [r1, #2]
    8d54:	e8bd4010 	pop	{r4, lr}
    8d58:	e12fff1e 	bx	lr

00008d5c <_ZN11gpu2dCanvas8DrawLineEiiiij>:
    8d5c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8d60:	e1a08003 	mov	r8, r3
    8d64:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    8d68:	e0623003 	rsb	r3, r2, r3
    8d6c:	e1a0b083 	lsl	fp, r3, #1
    8d70:	e0617008 	rsb	r7, r1, r8
    8d74:	e1580001 	cmp	r8, r1
    8d78:	e1a06002 	mov	r6, r2
    8d7c:	e1a04001 	mov	r4, r1
    8d80:	e067500b 	rsb	r5, r7, fp
    8d84:	e59da02c 	ldr	sl, [sp, #44]	; 0x2c
    8d88:	da000018 	ble	8df0 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x94>
    8d8c:	e0677003 	rsb	r7, r7, r3
    8d90:	e1a09000 	mov	r9, r0
    8d94:	e1a07087 	lsl	r7, r7, #1
    8d98:	ea000009 	b	8dc4 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x68>
    8d9c:	e2866001 	add	r6, r6, #1
    8da0:	e1a01004 	mov	r1, r4
    8da4:	e1a02006 	mov	r2, r6
    8da8:	e1a00009 	mov	r0, r9
    8dac:	e1a0300a 	mov	r3, sl
    8db0:	e2844001 	add	r4, r4, #1
    8db4:	ebffffcb 	bl	8ce8 <_ZN11gpu2dCanvas8setPixelEjjj>
    8db8:	e1540008 	cmp	r4, r8
    8dbc:	e0855007 	add	r5, r5, r7
    8dc0:	0a00000a 	beq	8df0 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x94>
    8dc4:	e3550000 	cmp	r5, #0
    8dc8:	cafffff3 	bgt	8d9c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x40>
    8dcc:	e1a01004 	mov	r1, r4
    8dd0:	e1a00009 	mov	r0, r9
    8dd4:	e1a02006 	mov	r2, r6
    8dd8:	e1a0300a 	mov	r3, sl
    8ddc:	e2844001 	add	r4, r4, #1
    8de0:	ebffffc0 	bl	8ce8 <_ZN11gpu2dCanvas8setPixelEjjj>
    8de4:	e1540008 	cmp	r4, r8
    8de8:	e085500b 	add	r5, r5, fp
    8dec:	1afffff4 	bne	8dc4 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x68>
    8df0:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8df4:	e12fff1e 	bx	lr

00008df8 <_ZN11gpu2dCanvas13DrawCharacterEiicj>:
    8df8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8dfc:	e24dd01c 	sub	sp, sp, #28
    8e00:	e28d9008 	add	r9, sp, #8
    8e04:	e1a0b001 	mov	fp, r1
    8e08:	e1a07000 	mov	r7, r0
    8e0c:	e1a01009 	mov	r1, r9
    8e10:	e59d8040 	ldr	r8, [sp, #64]	; 0x40
    8e14:	e59fc078 	ldr	ip, [pc, #120]	; 8e94 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x9c>
    8e18:	e28de018 	add	lr, sp, #24
    8e1c:	e0693203 	rsb	r3, r9, r3, lsl #4
    8e20:	e0830001 	add	r0, r3, r1
    8e24:	e7dc0000 	ldrb	r0, [ip, r0]
    8e28:	e4c10001 	strb	r0, [r1], #1
    8e2c:	e151000e 	cmp	r1, lr
    8e30:	1afffffa 	bne	8e20 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x28>
    8e34:	e1a05002 	mov	r5, r2
    8e38:	e2823010 	add	r3, r2, #16
    8e3c:	e58d3004 	str	r3, [sp, #4]
    8e40:	e1a0a00b 	mov	sl, fp
    8e44:	e3a04000 	mov	r4, #0
    8e48:	e4d96001 	ldrb	r6, [r9], #1
    8e4c:	e1a03456 	asr	r3, r6, r4
    8e50:	e2133001 	ands	r3, r3, #1
    8e54:	e1a0100a 	mov	r1, sl
    8e58:	11a03008 	movne	r3, r8
    8e5c:	e1a00007 	mov	r0, r7
    8e60:	e1a02005 	mov	r2, r5
    8e64:	e2844001 	add	r4, r4, #1
    8e68:	ebffff9e 	bl	8ce8 <_ZN11gpu2dCanvas8setPixelEjjj>
    8e6c:	e3540008 	cmp	r4, #8
    8e70:	e28aa001 	add	sl, sl, #1
    8e74:	1afffff4 	bne	8e4c <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x54>
    8e78:	e59d3004 	ldr	r3, [sp, #4]
    8e7c:	e2855001 	add	r5, r5, #1
    8e80:	e1550003 	cmp	r5, r3
    8e84:	1affffed 	bne	8e40 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x48>
    8e88:	e28dd01c 	add	sp, sp, #28
    8e8c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8e90:	e12fff1e 	bx	lr
    8e94:	0000a5c0 	andeq	sl, r0, r0, asr #11

00008e98 <_ZN11gpu2dCanvas14ClearCharacterEii>:
    8e98:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8e9c:	e1a05002 	mov	r5, r2
    8ea0:	e1a07000 	mov	r7, r0
    8ea4:	e1a06001 	mov	r6, r1
    8ea8:	e3a04000 	mov	r4, #0
    8eac:	e2828010 	add	r8, r2, #16
    8eb0:	e1a01804 	lsl	r1, r4, #16
    8eb4:	e1a01841 	asr	r1, r1, #16
    8eb8:	e3510008 	cmp	r1, #8
    8ebc:	0a00000a 	beq	8eec <_ZN11gpu2dCanvas14ClearCharacterEii+0x54>
    8ec0:	e0811006 	add	r1, r1, r6
    8ec4:	e3a03000 	mov	r3, #0
    8ec8:	e1a00007 	mov	r0, r7
    8ecc:	e1a02005 	mov	r2, r5
    8ed0:	ebffff84 	bl	8ce8 <_ZN11gpu2dCanvas8setPixelEjjj>
    8ed4:	e2843001 	add	r3, r4, #1
    8ed8:	e1a03803 	lsl	r3, r3, #16
    8edc:	e1a01843 	asr	r1, r3, #16
    8ee0:	e3510008 	cmp	r1, #8
    8ee4:	e1a04823 	lsr	r4, r3, #16
    8ee8:	1afffff4 	bne	8ec0 <_ZN11gpu2dCanvas14ClearCharacterEii+0x28>
    8eec:	e2855001 	add	r5, r5, #1
    8ef0:	e1550008 	cmp	r5, r8
    8ef4:	e3a04008 	mov	r4, #8
    8ef8:	1affffec 	bne	8eb0 <_ZN11gpu2dCanvas14ClearCharacterEii+0x18>
    8efc:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8f00:	e12fff1e 	bx	lr

00008f04 <_ZN7Console5clearEv>:
    8f04:	e3a01000 	mov	r1, #0
    8f08:	e3a02001 	mov	r2, #1
    8f0c:	e590300c 	ldr	r3, [r0, #12]
    8f10:	e5d3c000 	ldrb	ip, [r3]
    8f14:	e15c0001 	cmp	ip, r1
    8f18:	e8800006 	stm	r0, {r1, r2}
    8f1c:	012fff1e 	bxeq	lr
    8f20:	e92d4010 	push	{r4, lr}
    8f24:	e1a04000 	mov	r4, r0
    8f28:	e5930004 	ldr	r0, [r3, #4]
    8f2c:	ebfffc6e 	bl	80ec <armClearScreen>
    8f30:	e594000c 	ldr	r0, [r4, #12]
    8f34:	e5d03000 	ldrb	r3, [r0]
    8f38:	e3530000 	cmp	r3, #0
    8f3c:	0a000002 	beq	8f4c <_ZN7Console5clearEv+0x48>
    8f40:	e5d03002 	ldrb	r3, [r0, #2]
    8f44:	e3530000 	cmp	r3, #0
    8f48:	1a000001 	bne	8f54 <_ZN7Console5clearEv+0x50>
    8f4c:	e8bd4010 	pop	{r4, lr}
    8f50:	e12fff1e 	bx	lr
    8f54:	e8bd4010 	pop	{r4, lr}
    8f58:	eafffeeb 	b	8b0c <_ZN11gpu2dCanvas4DrawEv.part.7>

00008f5c <_ZN7Console7newLineEv>:
    8f5c:	e3a01000 	mov	r1, #0
    8f60:	e5903004 	ldr	r3, [r0, #4]
    8f64:	e2833001 	add	r3, r3, #1
    8f68:	e353002d 	cmp	r3, #45	; 0x2d
    8f6c:	e880000a 	stm	r0, {r1, r3}
    8f70:	912fff1e 	bxls	lr
    8f74:	eaffffe2 	b	8f04 <_ZN7Console5clearEv>

00008f78 <_ZN7Console9printCharEcj>:
    8f78:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    8f7c:	e3510009 	cmp	r1, #9
    8f80:	e24dd00c 	sub	sp, sp, #12
    8f84:	e1a04000 	mov	r4, r0
    8f88:	0a000040 	beq	9090 <_ZN7Console9printCharEcj+0x118>
    8f8c:	e351000a 	cmp	r1, #10
    8f90:	e1a07002 	mov	r7, r2
    8f94:	e1a06001 	mov	r6, r1
    8f98:	0a000033 	beq	906c <_ZN7Console9printCharEcj+0xf4>
    8f9c:	e3510008 	cmp	r1, #8
    8fa0:	0a00001d 	beq	901c <_ZN7Console9printCharEcj+0xa4>
    8fa4:	e5903000 	ldr	r3, [r0]
    8fa8:	e3530078 	cmp	r3, #120	; 0x78
    8fac:	9a00003d 	bls	90a8 <_ZN7Console9printCharEcj+0x130>
    8fb0:	e3a03000 	mov	r3, #0
    8fb4:	e590c004 	ldr	ip, [r0, #4]
    8fb8:	e28cc001 	add	ip, ip, #1
    8fbc:	e35c002d 	cmp	ip, #45	; 0x2d
    8fc0:	e8801008 	stm	r0, {r3, ip}
    8fc4:	8a000036 	bhi	90a4 <_ZN7Console9printCharEcj+0x12c>
    8fc8:	e594e008 	ldr	lr, [r4, #8]
    8fcc:	e5945000 	ldr	r5, [r4]
    8fd0:	e594000c 	ldr	r0, [r4, #12]
    8fd4:	e1a03006 	mov	r3, r6
    8fd8:	e58d7000 	str	r7, [sp]
    8fdc:	e08e220c 	add	r2, lr, ip, lsl #4
    8fe0:	e08e1185 	add	r1, lr, r5, lsl #3
    8fe4:	ebffff83 	bl	8df8 <_ZN11gpu2dCanvas13DrawCharacterEiicj>
    8fe8:	e594000c 	ldr	r0, [r4, #12]
    8fec:	e5d03000 	ldrb	r3, [r0]
    8ff0:	e3530000 	cmp	r3, #0
    8ff4:	0a000002 	beq	9004 <_ZN7Console9printCharEcj+0x8c>
    8ff8:	e5d03002 	ldrb	r3, [r0, #2]
    8ffc:	e3530000 	cmp	r3, #0
    9000:	1a00002f 	bne	90c4 <_ZN7Console9printCharEcj+0x14c>
    9004:	e5943000 	ldr	r3, [r4]
    9008:	e2833001 	add	r3, r3, #1
    900c:	e5843000 	str	r3, [r4]
    9010:	e28dd00c 	add	sp, sp, #12
    9014:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
    9018:	e12fff1e 	bx	lr
    901c:	e5901000 	ldr	r1, [r0]
    9020:	e3510000 	cmp	r1, #0
    9024:	0afffff9 	beq	9010 <_ZN7Console9printCharEcj+0x98>
    9028:	e990000c 	ldmib	r0, {r2, r3}
    902c:	e2411001 	sub	r1, r1, #1
    9030:	e5801000 	str	r1, [r0]
    9034:	e0832202 	add	r2, r3, r2, lsl #4
    9038:	e0831181 	add	r1, r3, r1, lsl #3
    903c:	e590000c 	ldr	r0, [r0, #12]
    9040:	ebffff94 	bl	8e98 <_ZN11gpu2dCanvas14ClearCharacterEii>
    9044:	e594000c 	ldr	r0, [r4, #12]
    9048:	e5d03000 	ldrb	r3, [r0]
    904c:	e3530000 	cmp	r3, #0
    9050:	0affffee 	beq	9010 <_ZN7Console9printCharEcj+0x98>
    9054:	e5d03002 	ldrb	r3, [r0, #2]
    9058:	e3530000 	cmp	r3, #0
    905c:	0affffeb 	beq	9010 <_ZN7Console9printCharEcj+0x98>
    9060:	e28dd00c 	add	sp, sp, #12
    9064:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
    9068:	eafffea7 	b	8b0c <_ZN11gpu2dCanvas4DrawEv.part.7>
    906c:	e3a02000 	mov	r2, #0
    9070:	e5903004 	ldr	r3, [r0, #4]
    9074:	e2833001 	add	r3, r3, #1
    9078:	e353002d 	cmp	r3, #45	; 0x2d
    907c:	e880000c 	stm	r0, {r2, r3}
    9080:	8a00000b 	bhi	90b4 <_ZN7Console9printCharEcj+0x13c>
    9084:	e28dd00c 	add	sp, sp, #12
    9088:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
    908c:	e12fff1e 	bx	lr
    9090:	e5903000 	ldr	r3, [r0]
    9094:	e2833004 	add	r3, r3, #4
    9098:	e3530077 	cmp	r3, #119	; 0x77
    909c:	95843000 	strls	r3, [r4]
    90a0:	eaffffda 	b	9010 <_ZN7Console9printCharEcj+0x98>
    90a4:	ebffff96 	bl	8f04 <_ZN7Console5clearEv>
    90a8:	e594c004 	ldr	ip, [r4, #4]
    90ac:	e35c002d 	cmp	ip, #45	; 0x2d
    90b0:	9affffc4 	bls	8fc8 <_ZN7Console9printCharEcj+0x50>
    90b4:	e1a00004 	mov	r0, r4
    90b8:	e28dd00c 	add	sp, sp, #12
    90bc:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
    90c0:	eaffff8f 	b	8f04 <_ZN7Console5clearEv>
    90c4:	ebfffe90 	bl	8b0c <_ZN11gpu2dCanvas4DrawEv.part.7>
    90c8:	eaffffcd 	b	9004 <_ZN7Console9printCharEcj+0x8c>

000090cc <_ZN7Console6kprintEPKc>:
    90cc:	e92d4038 	push	{r3, r4, r5, lr}
    90d0:	e1a04001 	mov	r4, r1
    90d4:	e5d11000 	ldrb	r1, [r1]
    90d8:	e3510000 	cmp	r1, #0
    90dc:	e1a05000 	mov	r5, r0
    90e0:	0a000005 	beq	90fc <_ZN7Console6kprintEPKc+0x30>
    90e4:	e1a00005 	mov	r0, r5
    90e8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    90ec:	ebffffa1 	bl	8f78 <_ZN7Console9printCharEcj>
    90f0:	e5f41001 	ldrb	r1, [r4, #1]!
    90f4:	e3510000 	cmp	r1, #0
    90f8:	1afffff9 	bne	90e4 <_ZN7Console6kprintEPKc+0x18>
    90fc:	e8bd4038 	pop	{r3, r4, r5, lr}
    9100:	e12fff1e 	bx	lr

00009104 <_ZN7Console6kprintEPc>:
    9104:	e92d4038 	push	{r3, r4, r5, lr}
    9108:	e1a04001 	mov	r4, r1
    910c:	e5d11000 	ldrb	r1, [r1]
    9110:	e3510000 	cmp	r1, #0
    9114:	e1a05000 	mov	r5, r0
    9118:	0a000005 	beq	9134 <_ZN7Console6kprintEPc+0x30>
    911c:	e1a00005 	mov	r0, r5
    9120:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9124:	ebffff93 	bl	8f78 <_ZN7Console9printCharEcj>
    9128:	e5f41001 	ldrb	r1, [r4, #1]!
    912c:	e3510000 	cmp	r1, #0
    9130:	1afffff9 	bne	911c <_ZN7Console6kprintEPc+0x18>
    9134:	e8bd4038 	pop	{r3, r4, r5, lr}
    9138:	e12fff1e 	bx	lr

0000913c <_ZN7Console6kprintEPcj>:
    913c:	e92d4070 	push	{r4, r5, r6, lr}
    9140:	e1a04001 	mov	r4, r1
    9144:	e5d11000 	ldrb	r1, [r1]
    9148:	e3510000 	cmp	r1, #0
    914c:	e1a06000 	mov	r6, r0
    9150:	e1a05002 	mov	r5, r2
    9154:	0a000005 	beq	9170 <_ZN7Console6kprintEPcj+0x34>
    9158:	e1a00006 	mov	r0, r6
    915c:	e1a02005 	mov	r2, r5
    9160:	ebffff84 	bl	8f78 <_ZN7Console9printCharEcj>
    9164:	e5f41001 	ldrb	r1, [r4, #1]!
    9168:	e3510000 	cmp	r1, #0
    916c:	1afffff9 	bne	9158 <_ZN7Console6kprintEPcj+0x1c>
    9170:	e8bd4070 	pop	{r4, r5, r6, lr}
    9174:	e12fff1e 	bx	lr

00009178 <_ZN7Console6kprintEPKcj>:
    9178:	e92d4070 	push	{r4, r5, r6, lr}
    917c:	e1a04001 	mov	r4, r1
    9180:	e5d11000 	ldrb	r1, [r1]
    9184:	e3510000 	cmp	r1, #0
    9188:	e1a06000 	mov	r6, r0
    918c:	e1a05002 	mov	r5, r2
    9190:	0a000005 	beq	91ac <_ZN7Console6kprintEPKcj+0x34>
    9194:	e1a00006 	mov	r0, r6
    9198:	e1a02005 	mov	r2, r5
    919c:	ebffff75 	bl	8f78 <_ZN7Console9printCharEcj>
    91a0:	e5f41001 	ldrb	r1, [r4, #1]!
    91a4:	e3510000 	cmp	r1, #0
    91a8:	1afffff9 	bne	9194 <_ZN7Console6kprintEPKcj+0x1c>
    91ac:	e8bd4070 	pop	{r4, r5, r6, lr}
    91b0:	e12fff1e 	bx	lr

000091b4 <_ZN7Console6kprintEjj>:
    91b4:	e92d4070 	push	{r4, r5, r6, lr}
    91b8:	e59f403c 	ldr	r4, [pc, #60]	; 91fc <_ZN7Console6kprintEjj+0x48>
    91bc:	e0843491 	umull	r3, r4, r1, r4
    91c0:	e1a041a4 	lsr	r4, r4, #3
    91c4:	e1a03004 	mov	r3, r4
    91c8:	e0844104 	add	r4, r4, r4, lsl #2
    91cc:	e3530000 	cmp	r3, #0
    91d0:	e0414084 	sub	r4, r1, r4, lsl #1
    91d4:	e1a06000 	mov	r6, r0
    91d8:	e1a05002 	mov	r5, r2
    91dc:	11a01003 	movne	r1, r3
    91e0:	1bfffff3 	blne	91b4 <_ZN7Console6kprintEjj>
    91e4:	e2841030 	add	r1, r4, #48	; 0x30
    91e8:	e1a00006 	mov	r0, r6
    91ec:	e1a02005 	mov	r2, r5
    91f0:	e20110ff 	and	r1, r1, #255	; 0xff
    91f4:	e8bd4070 	pop	{r4, r5, r6, lr}
    91f8:	eaffff5e 	b	8f78 <_ZN7Console9printCharEcj>
    91fc:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

00009200 <_ZN7Console6kprintEj>:
    9200:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9204:	eaffffea 	b	91b4 <_ZN7Console6kprintEjj>

00009208 <_ZN7Console12kprintHexa32Ejj>:
    9208:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    920c:	e1a07000 	mov	r7, r0
    9210:	e1a06001 	mov	r6, r1
    9214:	e1a05002 	mov	r5, r2
    9218:	e3a0401c 	mov	r4, #28
    921c:	e1a03436 	lsr	r3, r6, r4
    9220:	e203300f 	and	r3, r3, #15
    9224:	e3530009 	cmp	r3, #9
    9228:	83a01007 	movhi	r1, #7
    922c:	93a01000 	movls	r1, #0
    9230:	e0831001 	add	r1, r3, r1
    9234:	e2444004 	sub	r4, r4, #4
    9238:	e2811030 	add	r1, r1, #48	; 0x30
    923c:	e1a00007 	mov	r0, r7
    9240:	e1a02005 	mov	r2, r5
    9244:	ebffff4b 	bl	8f78 <_ZN7Console9printCharEcj>
    9248:	e3740004 	cmn	r4, #4
    924c:	1afffff2 	bne	921c <_ZN7Console12kprintHexa32Ejj+0x14>
    9250:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    9254:	e12fff1e 	bx	lr

00009258 <irq_handler>:
    9258:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    925c:	e3a0da02 	mov	sp, #8192	; 0x2000
    9260:	e24ee004 	sub	lr, lr, #4
    9264:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    9268:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    926c:	e3a03a01 	mov	r3, #4096	; 0x1000
    9270:	e1a00003 	mov	r0, r3
    9274:	e9201ffe 	stmdb	r0!, {r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    9278:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    927c:	e3a03efd 	mov	r3, #4048	; 0xfd0
    9280:	e1a01003 	mov	r1, r3
    9284:	e5810000 	str	r0, [r1]
    9288:	e59f1d0c 	ldr	r1, [pc, #3340]	; 9f9c <swi_endTask+0x68>
    928c:	e581e000 	str	lr, [r1]
    9290:	e59f6390 	ldr	r6, [pc, #912]	; 9628 <irq_handler+0x3d0>
    9294:	e5965040 	ldr	r5, [r6, #64]	; 0x40
    9298:	e59f338c 	ldr	r3, [pc, #908]	; 962c <irq_handler+0x3d4>
    929c:	e3550000 	cmp	r5, #0
    92a0:	e5932000 	ldr	r2, [r3]
    92a4:	0a000016 	beq	9304 <irq_handler+0xac>
    92a8:	e5963040 	ldr	r3, [r6, #64]	; 0x40
    92ac:	e3550004 	cmp	r5, #4
    92b0:	e5863040 	str	r3, [r6, #64]	; 0x40
    92b4:	0a0000b3 	beq	9588 <irq_handler+0x330>
    92b8:	e3550008 	cmp	r5, #8
    92bc:	0a0000c5 	beq	95d8 <irq_handler+0x380>
    92c0:	e59f4368 	ldr	r4, [pc, #872]	; 9630 <irq_handler+0x3d8>
    92c4:	ebfffcff 	bl	86c8 <_ZN12RaspberryLib10TestBuzzerEv>
    92c8:	e3a00000 	mov	r0, #0
    92cc:	e3a01001 	mov	r1, #1
    92d0:	e59f3350 	ldr	r3, [pc, #848]	; 9628 <irq_handler+0x3d0>
    92d4:	e59f2350 	ldr	r2, [pc, #848]	; 962c <irq_handler+0x3d4>
    92d8:	e593c058 	ldr	ip, [r3, #88]	; 0x58
    92dc:	e5830058 	str	r0, [r3, #88]	; 0x58
    92e0:	e5923004 	ldr	r3, [r2, #4]
    92e4:	e283393d 	add	r3, r3, #999424	; 0xf4000
    92e8:	e2833d09 	add	r3, r3, #576	; 0x240
    92ec:	e5c41005 	strb	r1, [r4, #5]
    92f0:	e5823018 	str	r3, [r2, #24]
    92f4:	e59fdca4 	ldr	sp, [pc, #3236]	; 9fa0 <swi_endTask+0x6c>
    92f8:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    92fc:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    9300:	e12fff1e 	bx	lr
    9304:	e59f4324 	ldr	r4, [pc, #804]	; 9630 <irq_handler+0x3d8>
    9308:	e5d41005 	ldrb	r1, [r4, #5]
    930c:	e3510000 	cmp	r1, #0
    9310:	1a00006d 	bne	94cc <irq_handler+0x274>
    9314:	e5d43004 	ldrb	r3, [r4, #4]
    9318:	e3530000 	cmp	r3, #0
    931c:	e59f330c 	ldr	r3, [pc, #780]	; 9630 <irq_handler+0x3d8>
    9320:	0afffff3 	beq	92f4 <irq_handler+0x9c>
    9324:	e3120002 	tst	r2, #2
    9328:	0afffff1 	beq	92f4 <irq_handler+0x9c>
    932c:	e3a0c002 	mov	ip, #2
    9330:	e3a02000 	mov	r2, #0
    9334:	e593100c 	ldr	r1, [r3, #12]
    9338:	e59f02ec 	ldr	r0, [pc, #748]	; 962c <irq_handler+0x3d4>
    933c:	e5911018 	ldr	r1, [r1, #24]
    9340:	e580c000 	str	ip, [r0]
    9344:	e5915044 	ldr	r5, [r1, #68]	; 0x44
    9348:	e3550301 	cmp	r5, #67108864	; 0x4000000
    934c:	e5835010 	str	r5, [r3, #16]
    9350:	e5c32004 	strb	r2, [r3, #4]
    9354:	8a000079 	bhi	9540 <irq_handler+0x2e8>
    9358:	e5d32014 	ldrb	r2, [r3, #20]
    935c:	e3520000 	cmp	r2, #0
    9360:	01a03005 	moveq	r3, r5
    9364:	0a000024 	beq	93fc <irq_handler+0x1a4>
    9368:	e3a0100a 	mov	r1, #10
    936c:	e5937008 	ldr	r7, [r3, #8]
    9370:	e59f62bc 	ldr	r6, [pc, #700]	; 9634 <irq_handler+0x3dc>
    9374:	e1a00007 	mov	r0, r7
    9378:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    937c:	ebfffefd 	bl	8f78 <_ZN7Console9printCharEcj>
    9380:	e5f61001 	ldrb	r1, [r6, #1]!
    9384:	e3510000 	cmp	r1, #0
    9388:	1afffff9 	bne	9374 <irq_handler+0x11c>
    938c:	e594300c 	ldr	r3, [r4, #12]
    9390:	e5933018 	ldr	r3, [r3, #24]
    9394:	e5940008 	ldr	r0, [r4, #8]
    9398:	e1d316b0 	ldrh	r1, [r3, #96]	; 0x60
    939c:	e59f2294 	ldr	r2, [pc, #660]	; 9638 <irq_handler+0x3e0>
    93a0:	ebffff83 	bl	91b4 <_ZN7Console6kprintEjj>
    93a4:	e3a0100a 	mov	r1, #10
    93a8:	e59f628c 	ldr	r6, [pc, #652]	; 963c <irq_handler+0x3e4>
    93ac:	e5947008 	ldr	r7, [r4, #8]
    93b0:	e1a00007 	mov	r0, r7
    93b4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    93b8:	ebfffeee 	bl	8f78 <_ZN7Console9printCharEcj>
    93bc:	e5f61001 	ldrb	r1, [r6, #1]!
    93c0:	e3510000 	cmp	r1, #0
    93c4:	1afffff9 	bne	93b0 <irq_handler+0x158>
    93c8:	e59f2270 	ldr	r2, [pc, #624]	; 9640 <irq_handler+0x3e8>
    93cc:	e5940008 	ldr	r0, [r4, #8]
    93d0:	e5941010 	ldr	r1, [r4, #16]
    93d4:	ebffff8b 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    93d8:	e59f324c 	ldr	r3, [pc, #588]	; 962c <irq_handler+0x3d4>
    93dc:	e1a02003 	mov	r2, r3
    93e0:	e5933004 	ldr	r3, [r3, #4]
    93e4:	e283397a 	add	r3, r3, #1998848	; 0x1e8000
    93e8:	e2833d12 	add	r3, r3, #1152	; 0x480
    93ec:	e5921004 	ldr	r1, [r2, #4]
    93f0:	e1530001 	cmp	r3, r1
    93f4:	2afffffc 	bcs	93ec <irq_handler+0x194>
    93f8:	e5943010 	ldr	r3, [r4, #16]
    93fc:	e3a02a01 	mov	r2, #4096	; 0x1000
    9400:	e59f0228 	ldr	r0, [pc, #552]	; 9630 <irq_handler+0x3d8>
    9404:	e59f1238 	ldr	r1, [pc, #568]	; 9644 <irq_handler+0x3ec>
    9408:	e243300c 	sub	r3, r3, #12
    940c:	ea000000 	b	9414 <irq_handler+0x1bc>
    9410:	e5903010 	ldr	r3, [r0, #16]
    9414:	e243c004 	sub	ip, r3, #4
    9418:	e584c010 	str	ip, [r4, #16]
    941c:	e532c004 	ldr	ip, [r2, #-4]!
    9420:	e1520001 	cmp	r2, r1
    9424:	e503c004 	str	ip, [r3, #-4]
    9428:	e59f6200 	ldr	r6, [pc, #512]	; 9630 <irq_handler+0x3d8>
    942c:	1afffff7 	bne	9410 <irq_handler+0x1b8>
    9430:	e59f1b6c 	ldr	r1, [pc, #2924]	; 9fa4 <swi_endTask+0x70>
    9434:	e5911000 	ldr	r1, [r1]
    9438:	e2411004 	sub	r1, r1, #4
    943c:	e14f0000 	mrs	r0, SPSR
    9440:	e5810000 	str	r0, [r1]
    9444:	e5865010 	str	r5, [r6, #16]
    9448:	e59f1b54 	ldr	r1, [pc, #2900]	; 9fa4 <swi_endTask+0x70>
    944c:	e5911000 	ldr	r1, [r1]
    9450:	e2411004 	sub	r1, r1, #4
    9454:	e59f2b40 	ldr	r2, [pc, #2880]	; 9f9c <swi_endTask+0x68>
    9458:	e5922000 	ldr	r2, [r2]
    945c:	e5812000 	str	r2, [r1]
    9460:	e3a000df 	mov	r0, #223	; 0xdf
    9464:	e129f000 	msr	CPSR_fc, r0
    9468:	e2411004 	sub	r1, r1, #4
    946c:	e581e000 	str	lr, [r1]
    9470:	e2411004 	sub	r1, r1, #4
    9474:	e581d000 	str	sp, [r1]
    9478:	e3a000d3 	mov	r0, #211	; 0xd3
    947c:	e129f000 	msr	CPSR_fc, r0
    9480:	e59f1b20 	ldr	r1, [pc, #2848]	; 9fa8 <swi_endTask+0x74>
    9484:	e591d000 	ldr	sp, [r1]
    9488:	e5960008 	ldr	r0, [r6, #8]
    948c:	ebfffe9c 	bl	8f04 <_ZN7Console5clearEv>
    9490:	e3a02002 	mov	r2, #2
    9494:	e596300c 	ldr	r3, [r6, #12]
    9498:	e5933018 	ldr	r3, [r3, #24]
    949c:	e5c32064 	strb	r2, [r3, #100]	; 0x64
    94a0:	e3a05001 	mov	r5, #1
    94a4:	ef000000 	svc	0x00000000
    94a8:	e1a00000 	nop			; (mov r0, r0)
    94ac:	e1a00000 	nop			; (mov r0, r0)
    94b0:	e1a00000 	nop			; (mov r0, r0)
    94b4:	e1a00000 	nop			; (mov r0, r0)
    94b8:	e1a00000 	nop			; (mov r0, r0)
    94bc:	e59fdadc 	ldr	sp, [pc, #2780]	; 9fa0 <swi_endTask+0x6c>
    94c0:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    94c4:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    94c8:	e12fff1e 	bx	lr
    94cc:	e3120008 	tst	r2, #8
    94d0:	0affff8f 	beq	9314 <irq_handler+0xbc>
    94d4:	e3a02008 	mov	r2, #8
    94d8:	e5c45005 	strb	r5, [r4, #5]
    94dc:	e1a01005 	mov	r1, r5
    94e0:	e5832000 	str	r2, [r3]
    94e4:	e3a00001 	mov	r0, #1
    94e8:	ebfffc35 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    94ec:	e1a01005 	mov	r1, r5
    94f0:	e3a00002 	mov	r0, #2
    94f4:	ebfffc32 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    94f8:	e1a01005 	mov	r1, r5
    94fc:	e3a00003 	mov	r0, #3
    9500:	ebfffc2f 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    9504:	e1a01005 	mov	r1, r5
    9508:	e3a00004 	mov	r0, #4
    950c:	ebfffc2c 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    9510:	e1a01005 	mov	r1, r5
    9514:	e3a00005 	mov	r0, #5
    9518:	ebfffc29 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    951c:	e1a01005 	mov	r1, r5
    9520:	e3a00006 	mov	r0, #6
    9524:	ebfffc26 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    9528:	e3a0300c 	mov	r3, #12
    952c:	e5863058 	str	r3, [r6, #88]	; 0x58
    9530:	e59fda68 	ldr	sp, [pc, #2664]	; 9fa0 <swi_endTask+0x6c>
    9534:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    9538:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    953c:	e12fff1e 	bx	lr
    9540:	e3a0100a 	mov	r1, #10
    9544:	e5936008 	ldr	r6, [r3, #8]
    9548:	e59f50f8 	ldr	r5, [pc, #248]	; 9648 <irq_handler+0x3f0>
    954c:	e1a00006 	mov	r0, r6
    9550:	e3a020ff 	mov	r2, #255	; 0xff
    9554:	ebfffe87 	bl	8f78 <_ZN7Console9printCharEcj>
    9558:	e5f51001 	ldrb	r1, [r5, #1]!
    955c:	e3510000 	cmp	r1, #0
    9560:	1afffff9 	bne	954c <irq_handler+0x2f4>
    9564:	e5940008 	ldr	r0, [r4, #8]
    9568:	e5941010 	ldr	r1, [r4, #16]
    956c:	e59f20c4 	ldr	r2, [pc, #196]	; 9638 <irq_handler+0x3e0>
    9570:	ebffff24 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    9574:	e5940008 	ldr	r0, [r4, #8]
    9578:	e59f10cc 	ldr	r1, [pc, #204]	; 964c <irq_handler+0x3f4>
    957c:	e3a02cff 	mov	r2, #65280	; 0xff00
    9580:	ebffff20 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    9584:	eafffffe 	b	9584 <irq_handler+0x32c>
    9588:	e3a00001 	mov	r0, #1
    958c:	e1a01000 	mov	r1, r0
    9590:	ebfffc0b 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    9594:	e3a00003 	mov	r0, #3
    9598:	e3a01001 	mov	r1, #1
    959c:	ebfffc08 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    95a0:	e3a01001 	mov	r1, #1
    95a4:	e3a00005 	mov	r0, #5
    95a8:	ebfffc05 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    95ac:	e3a0100a 	mov	r1, #10
    95b0:	e59f4078 	ldr	r4, [pc, #120]	; 9630 <irq_handler+0x3d8>
    95b4:	e59f5094 	ldr	r5, [pc, #148]	; 9650 <irq_handler+0x3f8>
    95b8:	e5946008 	ldr	r6, [r4, #8]
    95bc:	e1a00006 	mov	r0, r6
    95c0:	e59f2070 	ldr	r2, [pc, #112]	; 9638 <irq_handler+0x3e0>
    95c4:	ebfffe6b 	bl	8f78 <_ZN7Console9printCharEcj>
    95c8:	e5f51001 	ldrb	r1, [r5, #1]!
    95cc:	e3510000 	cmp	r1, #0
    95d0:	1afffff9 	bne	95bc <irq_handler+0x364>
    95d4:	eaffff3a 	b	92c4 <irq_handler+0x6c>
    95d8:	e3a00002 	mov	r0, #2
    95dc:	e3a01001 	mov	r1, #1
    95e0:	ebfffbf7 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    95e4:	e3a00004 	mov	r0, #4
    95e8:	e3a01001 	mov	r1, #1
    95ec:	ebfffbf4 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    95f0:	e3a01001 	mov	r1, #1
    95f4:	e3a00006 	mov	r0, #6
    95f8:	ebfffbf1 	bl	85c4 <_ZN12RaspberryLib6SetLEDEjb>
    95fc:	e3a0100a 	mov	r1, #10
    9600:	e59f4028 	ldr	r4, [pc, #40]	; 9630 <irq_handler+0x3d8>
    9604:	e59f5048 	ldr	r5, [pc, #72]	; 9654 <irq_handler+0x3fc>
    9608:	e5946008 	ldr	r6, [r4, #8]
    960c:	e1a00006 	mov	r0, r6
    9610:	e59f2020 	ldr	r2, [pc, #32]	; 9638 <irq_handler+0x3e0>
    9614:	ebfffe57 	bl	8f78 <_ZN7Console9printCharEcj>
    9618:	e5f51001 	ldrb	r1, [r5, #1]!
    961c:	e3510000 	cmp	r1, #0
    9620:	1afffff9 	bne	960c <irq_handler+0x3b4>
    9624:	eaffff26 	b	92c4 <irq_handler+0x6c>
    9628:	20200000 	eorcs	r0, r0, r0
    962c:	20003000 	andcs	r3, r0, r0
    9630:	0000adcc 	andeq	sl, r0, ip, asr #27
    9634:	0000b204 	andeq	fp, r0, r4, lsl #4
    9638:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    963c:	0000b210 	andeq	fp, r0, r0, lsl r2
    9640:	00ff00ff 	ldrshteq	r0, [pc], #15
    9644:	00000fcc 	andeq	r0, r0, ip, asr #31
    9648:	0000b1d8 	ldrdeq	fp, [r0], -r8
    964c:	0000addc 	ldrdeq	sl, [r0], -ip
    9650:	0000b1b0 			; <UNDEFINED> instruction: 0x0000b1b0
    9654:	0000b1c4 	andeq	fp, r0, r4, asr #3

00009658 <_ZN7Console12kprintHexa32Ej>:
    9658:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    965c:	eafffee9 	b	9208 <_ZN7Console12kprintHexa32Ejj>

00009660 <_ZN7Console4koutEPKc>:
    9660:	e92d4070 	push	{r4, r5, r6, lr}
    9664:	e1a05001 	mov	r5, r1
    9668:	e1a04000 	mov	r4, r0
    966c:	e3a0105b 	mov	r1, #91	; 0x5b
    9670:	e59f604c 	ldr	r6, [pc, #76]	; 96c4 <_ZN7Console4koutEPKc+0x64>
    9674:	e1a00004 	mov	r0, r4
    9678:	e59f2048 	ldr	r2, [pc, #72]	; 96c8 <_ZN7Console4koutEPKc+0x68>
    967c:	ebfffe3d 	bl	8f78 <_ZN7Console9printCharEcj>
    9680:	e5f61001 	ldrb	r1, [r6, #1]!
    9684:	e3510000 	cmp	r1, #0
    9688:	1afffff9 	bne	9674 <_ZN7Console4koutEPKc+0x14>
    968c:	e5d51000 	ldrb	r1, [r5]
    9690:	e3510000 	cmp	r1, #0
    9694:	0a000005 	beq	96b0 <_ZN7Console4koutEPKc+0x50>
    9698:	e1a00004 	mov	r0, r4
    969c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    96a0:	ebfffe34 	bl	8f78 <_ZN7Console9printCharEcj>
    96a4:	e5f51001 	ldrb	r1, [r5, #1]!
    96a8:	e3510000 	cmp	r1, #0
    96ac:	1afffff9 	bne	9698 <_ZN7Console4koutEPKc+0x38>
    96b0:	e1a00004 	mov	r0, r4
    96b4:	e3a0100a 	mov	r1, #10
    96b8:	e59f2008 	ldr	r2, [pc, #8]	; 96c8 <_ZN7Console4koutEPKc+0x68>
    96bc:	e8bd4070 	pop	{r4, r5, r6, lr}
    96c0:	eafffe2c 	b	8f78 <_ZN7Console9printCharEcj>
    96c4:	0000b238 	andeq	fp, r0, r8, lsr r2
    96c8:	00f0330f 	rscseq	r3, r0, pc, lsl #6

000096cc <basic_handler>:
    96cc:	e92d4008 	push	{r3, lr}
    96d0:	e59f3030 	ldr	r3, [pc, #48]	; 9708 <basic_handler+0x3c>
    96d4:	e59f1030 	ldr	r1, [pc, #48]	; 970c <basic_handler+0x40>
    96d8:	e5930008 	ldr	r0, [r3, #8]
    96dc:	ebffffdf 	bl	9660 <_ZN7Console4koutEPKc>
    96e0:	e59f3028 	ldr	r3, [pc, #40]	; 9710 <basic_handler+0x44>
    96e4:	e1a01003 	mov	r1, r3
    96e8:	e5932004 	ldr	r2, [r3, #4]
    96ec:	e2822b61 	add	r2, r2, #99328	; 0x18400
    96f0:	e2822e2a 	add	r2, r2, #672	; 0x2a0
    96f4:	e5913004 	ldr	r3, [r1, #4]
    96f8:	e1520003 	cmp	r2, r3
    96fc:	8afffffc 	bhi	96f4 <basic_handler+0x28>
    9700:	e8bd4008 	pop	{r3, lr}
    9704:	e12fff1e 	bx	lr
    9708:	0000adcc 	andeq	sl, r0, ip, asr #27
    970c:	0000b240 	andeq	fp, r0, r0, asr #4
    9710:	20003000 	andcs	r3, r0, r0

00009714 <_ZN7ConsoleC1EP11gpu2dCanvas>:
    9714:	e3a03000 	mov	r3, #0
    9718:	e3a0200a 	mov	r2, #10
    971c:	e92d4010 	push	{r4, lr}
    9720:	e1a04000 	mov	r4, r0
    9724:	e580100c 	str	r1, [r0, #12]
    9728:	e5802008 	str	r2, [r0, #8]
    972c:	e5803000 	str	r3, [r0]
    9730:	e5803004 	str	r3, [r0, #4]
    9734:	ebfffdf2 	bl	8f04 <_ZN7Console5clearEv>
    9738:	e1a00004 	mov	r0, r4
    973c:	e8bd4010 	pop	{r4, lr}
    9740:	e12fff1e 	bx	lr

00009744 <_ZN9Scheduler11LoadContextEv>:
    9744:	e92d4008 	push	{r3, lr}
    9748:	e5903018 	ldr	r3, [r0, #24]
    974c:	e5933044 	ldr	r3, [r3, #68]	; 0x44
    9750:	e59f2038 	ldr	r2, [pc, #56]	; 9790 <_ZN9Scheduler11LoadContextEv+0x4c>
    9754:	e3530000 	cmp	r3, #0
    9758:	e5823018 	str	r3, [r2, #24]
    975c:	1a000009 	bne	9788 <_ZN9Scheduler11LoadContextEv+0x44>
    9760:	e3a0100a 	mov	r1, #10
    9764:	e590501c 	ldr	r5, [r0, #28]
    9768:	e59f4024 	ldr	r4, [pc, #36]	; 9794 <_ZN9Scheduler11LoadContextEv+0x50>
    976c:	e1a00005 	mov	r0, r5
    9770:	e3a020ff 	mov	r2, #255	; 0xff
    9774:	ebfffdff 	bl	8f78 <_ZN7Console9printCharEcj>
    9778:	e5f41001 	ldrb	r1, [r4, #1]!
    977c:	e3510000 	cmp	r1, #0
    9780:	1afffff9 	bne	976c <_ZN9Scheduler11LoadContextEv+0x28>
    9784:	eafffffe 	b	9784 <_ZN9Scheduler11LoadContextEv+0x40>
    9788:	ebfffa48 	bl	80b0 <armLoadContext>
    978c:	eafffffc 	b	9784 <_ZN9Scheduler11LoadContextEv+0x40>
    9790:	0000adcc 	andeq	sl, r0, ip, asr #27
    9794:	0000b250 	andeq	fp, r0, r0, asr r2

00009798 <_ZN9Scheduler8ScheduleEv>:
    9798:	e92d4080 	push	{r7, lr}
    979c:	e1a04000 	mov	r4, r0
    97a0:	e8bd0003 	pop	{r0, r1}
    97a4:	e59f53e8 	ldr	r5, [pc, #1000]	; 9b94 <_ZN9Scheduler8ScheduleEv+0x3fc>
    97a8:	e5943020 	ldr	r3, [r4, #32]
    97ac:	e5931000 	ldr	r1, [r3]
    97b0:	e3510000 	cmp	r1, #0
    97b4:	0a0000b0 	beq	9a7c <_ZN9Scheduler8ScheduleEv+0x2e4>
    97b8:	e5d50014 	ldrb	r0, [r5, #20]
    97bc:	e5912048 	ldr	r2, [r1, #72]	; 0x48
    97c0:	e3500000 	cmp	r0, #0
    97c4:	e5832000 	str	r2, [r3]
    97c8:	e5841018 	str	r1, [r4, #24]
    97cc:	0a00005e 	beq	994c <_ZN9Scheduler8ScheduleEv+0x1b4>
    97d0:	e3a0100a 	mov	r1, #10
    97d4:	e594701c 	ldr	r7, [r4, #28]
    97d8:	e59f63b8 	ldr	r6, [pc, #952]	; 9b98 <_ZN9Scheduler8ScheduleEv+0x400>
    97dc:	e1a00007 	mov	r0, r7
    97e0:	e59f23b4 	ldr	r2, [pc, #948]	; 9b9c <_ZN9Scheduler8ScheduleEv+0x404>
    97e4:	ebfffde3 	bl	8f78 <_ZN7Console9printCharEcj>
    97e8:	e5f61001 	ldrb	r1, [r6, #1]!
    97ec:	e3510000 	cmp	r1, #0
    97f0:	1afffff9 	bne	97dc <_ZN9Scheduler8ScheduleEv+0x44>
    97f4:	e59f17b0 	ldr	r1, [pc, #1968]	; 9fac <swi_endTask+0x78>
    97f8:	e581d000 	str	sp, [r1]
    97fc:	e3a02cff 	mov	r2, #65280	; 0xff00
    9800:	e595101c 	ldr	r1, [r5, #28]
    9804:	e594001c 	ldr	r0, [r4, #28]
    9808:	ebfffe7e 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    980c:	e3a0100a 	mov	r1, #10
    9810:	e594701c 	ldr	r7, [r4, #28]
    9814:	e59f6384 	ldr	r6, [pc, #900]	; 9ba0 <_ZN9Scheduler8ScheduleEv+0x408>
    9818:	e1a00007 	mov	r0, r7
    981c:	e59f2378 	ldr	r2, [pc, #888]	; 9b9c <_ZN9Scheduler8ScheduleEv+0x404>
    9820:	ebfffdd4 	bl	8f78 <_ZN7Console9printCharEcj>
    9824:	e5f61001 	ldrb	r1, [r6, #1]!
    9828:	e3510000 	cmp	r1, #0
    982c:	1afffff9 	bne	9818 <_ZN9Scheduler8ScheduleEv+0x80>
    9830:	e5943018 	ldr	r3, [r4, #24]
    9834:	e594001c 	ldr	r0, [r4, #28]
    9838:	e1d316b0 	ldrh	r1, [r3, #96]	; 0x60
    983c:	e3a02cff 	mov	r2, #65280	; 0xff00
    9840:	ebfffe5b 	bl	91b4 <_ZN7Console6kprintEjj>
    9844:	e3a0100a 	mov	r1, #10
    9848:	e59f6354 	ldr	r6, [pc, #852]	; 9ba4 <_ZN9Scheduler8ScheduleEv+0x40c>
    984c:	e594701c 	ldr	r7, [r4, #28]
    9850:	e1a00007 	mov	r0, r7
    9854:	e59f2340 	ldr	r2, [pc, #832]	; 9b9c <_ZN9Scheduler8ScheduleEv+0x404>
    9858:	ebfffdc6 	bl	8f78 <_ZN7Console9printCharEcj>
    985c:	e5f61001 	ldrb	r1, [r6, #1]!
    9860:	e3510000 	cmp	r1, #0
    9864:	1afffff9 	bne	9850 <_ZN9Scheduler8ScheduleEv+0xb8>
    9868:	e5943018 	ldr	r3, [r4, #24]
    986c:	e594001c 	ldr	r0, [r4, #28]
    9870:	e5d31064 	ldrb	r1, [r3, #100]	; 0x64
    9874:	e3a02cff 	mov	r2, #65280	; 0xff00
    9878:	ebfffe4d 	bl	91b4 <_ZN7Console6kprintEjj>
    987c:	e3a0100a 	mov	r1, #10
    9880:	e59f6320 	ldr	r6, [pc, #800]	; 9ba8 <_ZN9Scheduler8ScheduleEv+0x410>
    9884:	e594701c 	ldr	r7, [r4, #28]
    9888:	e1a00007 	mov	r0, r7
    988c:	e59f2308 	ldr	r2, [pc, #776]	; 9b9c <_ZN9Scheduler8ScheduleEv+0x404>
    9890:	ebfffdb8 	bl	8f78 <_ZN7Console9printCharEcj>
    9894:	e5f61001 	ldrb	r1, [r6, #1]!
    9898:	e3510000 	cmp	r1, #0
    989c:	1afffff9 	bne	9888 <_ZN9Scheduler8ScheduleEv+0xf0>
    98a0:	e2841018 	add	r1, r4, #24
    98a4:	e594001c 	ldr	r0, [r4, #28]
    98a8:	e3a02cff 	mov	r2, #65280	; 0xff00
    98ac:	ebfffe55 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    98b0:	e3a0100a 	mov	r1, #10
    98b4:	e59f62f0 	ldr	r6, [pc, #752]	; 9bac <_ZN9Scheduler8ScheduleEv+0x414>
    98b8:	e594701c 	ldr	r7, [r4, #28]
    98bc:	e1a00007 	mov	r0, r7
    98c0:	e59f22d4 	ldr	r2, [pc, #724]	; 9b9c <_ZN9Scheduler8ScheduleEv+0x404>
    98c4:	ebfffdab 	bl	8f78 <_ZN7Console9printCharEcj>
    98c8:	e5f61001 	ldrb	r1, [r6, #1]!
    98cc:	e3510000 	cmp	r1, #0
    98d0:	1afffff9 	bne	98bc <_ZN9Scheduler8ScheduleEv+0x124>
    98d4:	e5943018 	ldr	r3, [r4, #24]
    98d8:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    98dc:	e594001c 	ldr	r0, [r4, #28]
    98e0:	e1d316b0 	ldrh	r1, [r3, #96]	; 0x60
    98e4:	e3a02cff 	mov	r2, #65280	; 0xff00
    98e8:	ebfffe31 	bl	91b4 <_ZN7Console6kprintEjj>
    98ec:	e3a0100a 	mov	r1, #10
    98f0:	e59f62b0 	ldr	r6, [pc, #688]	; 9ba8 <_ZN9Scheduler8ScheduleEv+0x410>
    98f4:	e594701c 	ldr	r7, [r4, #28]
    98f8:	e1a00007 	mov	r0, r7
    98fc:	e59f2298 	ldr	r2, [pc, #664]	; 9b9c <_ZN9Scheduler8ScheduleEv+0x404>
    9900:	ebfffd9c 	bl	8f78 <_ZN7Console9printCharEcj>
    9904:	e5f61001 	ldrb	r1, [r6, #1]!
    9908:	e3510000 	cmp	r1, #0
    990c:	1afffff9 	bne	98f8 <_ZN9Scheduler8ScheduleEv+0x160>
    9910:	e5941018 	ldr	r1, [r4, #24]
    9914:	e3a02cff 	mov	r2, #65280	; 0xff00
    9918:	e2811048 	add	r1, r1, #72	; 0x48
    991c:	e594001c 	ldr	r0, [r4, #28]
    9920:	ebfffe38 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    9924:	e59f3284 	ldr	r3, [pc, #644]	; 9bb0 <_ZN9Scheduler8ScheduleEv+0x418>
    9928:	e1a01003 	mov	r1, r3
    992c:	e5932004 	ldr	r2, [r3, #4]
    9930:	e282297a 	add	r2, r2, #1998848	; 0x1e8000
    9934:	e2822d12 	add	r2, r2, #1152	; 0x480
    9938:	e5842010 	str	r2, [r4, #16]
    993c:	e5913004 	ldr	r3, [r1, #4]
    9940:	e1520003 	cmp	r2, r3
    9944:	2afffffc 	bcs	993c <_ZN9Scheduler8ScheduleEv+0x1a4>
    9948:	e5941018 	ldr	r1, [r4, #24]
    994c:	e5d13064 	ldrb	r3, [r1, #100]	; 0x64
    9950:	e3530004 	cmp	r3, #4
    9954:	0a000035 	beq	9a30 <_ZN9Scheduler8ScheduleEv+0x298>
    9958:	e3a02000 	mov	r2, #0
    995c:	e5943004 	ldr	r3, [r4, #4]
    9960:	e2833001 	add	r3, r3, #1
    9964:	e5843004 	str	r3, [r4, #4]
    9968:	e5943020 	ldr	r3, [r4, #32]
    996c:	e5812048 	str	r2, [r1, #72]	; 0x48
    9970:	e5932000 	ldr	r2, [r3]
    9974:	e3520000 	cmp	r2, #0
    9978:	1a000001 	bne	9984 <_ZN9Scheduler8ScheduleEv+0x1ec>
    997c:	ea000077 	b	9b60 <_ZN9Scheduler8ScheduleEv+0x3c8>
    9980:	e1a02003 	mov	r2, r3
    9984:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    9988:	e3530000 	cmp	r3, #0
    998c:	1afffffb 	bne	9980 <_ZN9Scheduler8ScheduleEv+0x1e8>
    9990:	e5821048 	str	r1, [r2, #72]	; 0x48
    9994:	e59f160c 	ldr	r1, [pc, #1548]	; 9fa8 <swi_endTask+0x74>
    9998:	e581d000 	str	sp, [r1]
    999c:	e594001c 	ldr	r0, [r4, #28]
    99a0:	ebfffd57 	bl	8f04 <_ZN7Console5clearEv>
    99a4:	e5942018 	ldr	r2, [r4, #24]
    99a8:	e5d23064 	ldrb	r3, [r2, #100]	; 0x64
    99ac:	e3530000 	cmp	r3, #0
    99b0:	1a00006c 	bne	9b68 <_ZN9Scheduler8ScheduleEv+0x3d0>
    99b4:	e3a07001 	mov	r7, #1
    99b8:	e5923050 	ldr	r3, [r2, #80]	; 0x50
    99bc:	e5c27064 	strb	r7, [r2, #100]	; 0x64
    99c0:	e5853018 	str	r3, [r5, #24]
    99c4:	e3a00010 	mov	r0, #16
    99c8:	e129f000 	msr	CPSR_fc, r0
    99cc:	e59f15dc 	ldr	r1, [pc, #1500]	; 9fb0 <swi_endTask+0x7c>
    99d0:	e591d000 	ldr	sp, [r1]
    99d4:	e59f61d4 	ldr	r6, [pc, #468]	; 9bb0 <_ZN9Scheduler8ScheduleEv+0x418>
    99d8:	e594300c 	ldr	r3, [r4, #12]
    99dc:	e5961004 	ldr	r1, [r6, #4]
    99e0:	e0630283 	rsb	r0, r3, r3, lsl #5
    99e4:	e0833100 	add	r3, r3, r0, lsl #2
    99e8:	e0813183 	add	r3, r1, r3, lsl #3
    99ec:	e5c57004 	strb	r7, [r5, #4]
    99f0:	e5863010 	str	r3, [r6, #16]
    99f4:	e592c04c 	ldr	ip, [r2, #76]	; 0x4c
    99f8:	e1a0e00f 	mov	lr, pc
    99fc:	e12fff1c 	bx	ip
    9a00:	e1a00000 	nop			; (mov r0, r0)
    9a04:	e1a00000 	nop			; (mov r0, r0)
    9a08:	e1a00000 	nop			; (mov r0, r0)
    9a0c:	e1a00000 	nop			; (mov r0, r0)
    9a10:	e1a00000 	nop			; (mov r0, r0)
    9a14:	e5963004 	ldr	r3, [r6, #4]
    9a18:	e5c57004 	strb	r7, [r5, #4]
    9a1c:	e5863010 	str	r3, [r6, #16]
    9a20:	e3a05002 	mov	r5, #2
    9a24:	ef000000 	svc	0x00000000
    9a28:	e3a05001 	mov	r5, #1
    9a2c:	ef000000 	svc	0x00000000
    9a30:	e5953020 	ldr	r3, [r5, #32]
    9a34:	e5d52014 	ldrb	r2, [r5, #20]
    9a38:	e2833001 	add	r3, r3, #1
    9a3c:	e3520000 	cmp	r2, #0
    9a40:	e5853020 	str	r3, [r5, #32]
    9a44:	0affff57 	beq	97a8 <_ZN9Scheduler8ScheduleEv+0x10>
    9a48:	e3a0100a 	mov	r1, #10
    9a4c:	e594701c 	ldr	r7, [r4, #28]
    9a50:	e59f615c 	ldr	r6, [pc, #348]	; 9bb4 <_ZN9Scheduler8ScheduleEv+0x41c>
    9a54:	e1a00007 	mov	r0, r7
    9a58:	e3a020ff 	mov	r2, #255	; 0xff
    9a5c:	ebfffd45 	bl	8f78 <_ZN7Console9printCharEcj>
    9a60:	e5f61001 	ldrb	r1, [r6, #1]!
    9a64:	e3510000 	cmp	r1, #0
    9a68:	1afffff9 	bne	9a54 <_ZN9Scheduler8ScheduleEv+0x2bc>
    9a6c:	e5943020 	ldr	r3, [r4, #32]
    9a70:	e5931000 	ldr	r1, [r3]
    9a74:	e3510000 	cmp	r1, #0
    9a78:	1affff4e 	bne	97b8 <_ZN9Scheduler8ScheduleEv+0x20>
    9a7c:	e59f312c 	ldr	r3, [pc, #300]	; 9bb0 <_ZN9Scheduler8ScheduleEv+0x418>
    9a80:	e5942008 	ldr	r2, [r4, #8]
    9a84:	e5933004 	ldr	r3, [r3, #4]
    9a88:	e0623003 	rsb	r3, r2, r3
    9a8c:	e5843008 	str	r3, [r4, #8]
    9a90:	e594001c 	ldr	r0, [r4, #28]
    9a94:	ebfffd1a 	bl	8f04 <_ZN7Console5clearEv>
    9a98:	e3a02002 	mov	r2, #2
    9a9c:	e3a0100a 	mov	r1, #10
    9aa0:	e59f3110 	ldr	r3, [pc, #272]	; 9bb8 <_ZN9Scheduler8ScheduleEv+0x420>
    9aa4:	e594601c 	ldr	r6, [r4, #28]
    9aa8:	e59f510c 	ldr	r5, [pc, #268]	; 9bbc <_ZN9Scheduler8ScheduleEv+0x424>
    9aac:	e583221c 	str	r2, [r3, #540]	; 0x21c
    9ab0:	e1a00006 	mov	r0, r6
    9ab4:	e3a02cff 	mov	r2, #65280	; 0xff00
    9ab8:	ebfffd2e 	bl	8f78 <_ZN7Console9printCharEcj>
    9abc:	e5f51001 	ldrb	r1, [r5, #1]!
    9ac0:	e3510000 	cmp	r1, #0
    9ac4:	1afffff9 	bne	9ab0 <_ZN9Scheduler8ScheduleEv+0x318>
    9ac8:	e3a0100a 	mov	r1, #10
    9acc:	e594601c 	ldr	r6, [r4, #28]
    9ad0:	e59f50e8 	ldr	r5, [pc, #232]	; 9bc0 <_ZN9Scheduler8ScheduleEv+0x428>
    9ad4:	e1a00006 	mov	r0, r6
    9ad8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9adc:	ebfffd25 	bl	8f78 <_ZN7Console9printCharEcj>
    9ae0:	e5f51001 	ldrb	r1, [r5, #1]!
    9ae4:	e3510000 	cmp	r1, #0
    9ae8:	1afffff9 	bne	9ad4 <_ZN9Scheduler8ScheduleEv+0x33c>
    9aec:	e5941004 	ldr	r1, [r4, #4]
    9af0:	e594001c 	ldr	r0, [r4, #28]
    9af4:	e59f20a0 	ldr	r2, [pc, #160]	; 9b9c <_ZN9Scheduler8ScheduleEv+0x404>
    9af8:	ebfffdad 	bl	91b4 <_ZN7Console6kprintEjj>
    9afc:	e3a0100a 	mov	r1, #10
    9b00:	e59f50bc 	ldr	r5, [pc, #188]	; 9bc4 <_ZN9Scheduler8ScheduleEv+0x42c>
    9b04:	e594601c 	ldr	r6, [r4, #28]
    9b08:	e1a00006 	mov	r0, r6
    9b0c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9b10:	ebfffd18 	bl	8f78 <_ZN7Console9printCharEcj>
    9b14:	e5f51001 	ldrb	r1, [r5, #1]!
    9b18:	e3510000 	cmp	r1, #0
    9b1c:	1afffff9 	bne	9b08 <_ZN9Scheduler8ScheduleEv+0x370>
    9b20:	e5941008 	ldr	r1, [r4, #8]
    9b24:	e594001c 	ldr	r0, [r4, #28]
    9b28:	e59f206c 	ldr	r2, [pc, #108]	; 9b9c <_ZN9Scheduler8ScheduleEv+0x404>
    9b2c:	ebfffda0 	bl	91b4 <_ZN7Console6kprintEjj>
    9b30:	e3a01020 	mov	r1, #32
    9b34:	e59f508c 	ldr	r5, [pc, #140]	; 9bc8 <_ZN9Scheduler8ScheduleEv+0x430>
    9b38:	e594401c 	ldr	r4, [r4, #28]
    9b3c:	e1a00004 	mov	r0, r4
    9b40:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9b44:	ebfffd0b 	bl	8f78 <_ZN7Console9printCharEcj>
    9b48:	e5f51001 	ldrb	r1, [r5, #1]!
    9b4c:	e3510000 	cmp	r1, #0
    9b50:	1afffff9 	bne	9b3c <_ZN9Scheduler8ScheduleEv+0x3a4>
    9b54:	e1a00000 	nop			; (mov r0, r0)
    9b58:	e1a00000 	nop			; (mov r0, r0)
    9b5c:	eafffffc 	b	9b54 <_ZN9Scheduler8ScheduleEv+0x3bc>
    9b60:	e5831000 	str	r1, [r3]
    9b64:	eaffff8a 	b	9994 <_ZN9Scheduler8ScheduleEv+0x1fc>
    9b68:	e3a0c001 	mov	ip, #1
    9b6c:	e594300c 	ldr	r3, [r4, #12]
    9b70:	e59f1038 	ldr	r1, [pc, #56]	; 9bb0 <_ZN9Scheduler8ScheduleEv+0x418>
    9b74:	e0630283 	rsb	r0, r3, r3, lsl #5
    9b78:	e5912004 	ldr	r2, [r1, #4]
    9b7c:	e0833100 	add	r3, r3, r0, lsl #2
    9b80:	e0823183 	add	r3, r2, r3, lsl #3
    9b84:	e5813010 	str	r3, [r1, #16]
    9b88:	e1a00004 	mov	r0, r4
    9b8c:	e5c5c004 	strb	ip, [r5, #4]
    9b90:	ebfffeeb 	bl	9744 <_ZN9Scheduler11LoadContextEv>
    9b94:	0000adcc 	andeq	sl, r0, ip, asr #27
    9b98:	0000b274 	andeq	fp, r0, r4, ror r2
    9b9c:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    9ba0:	0000b280 	andeq	fp, r0, r0, lsl #5
    9ba4:	0000b294 	muleq	r0, r4, r2
    9ba8:	0000b2a4 	andeq	fp, r0, r4, lsr #5
    9bac:	0000b2b8 			; <UNDEFINED> instruction: 0x0000b2b8
    9bb0:	20003000 	andcs	r3, r0, r0
    9bb4:	0000b2cc 	andeq	fp, r0, ip, asr #5
    9bb8:	2000b000 	andcs	fp, r0, r0
    9bbc:	0000b300 	andeq	fp, r0, r0, lsl #6
    9bc0:	0000b318 	andeq	fp, r0, r8, lsl r3
    9bc4:	0000b324 	andeq	fp, r0, r4, lsr #6
    9bc8:	0000b334 	andeq	fp, r0, r4, lsr r3

00009bcc <_ZN9Scheduler11PrepareTaskEv>:
    9bcc:	e3a0c001 	mov	ip, #1
    9bd0:	e92d4008 	push	{r3, lr}
    9bd4:	e5903018 	ldr	r3, [r0, #24]
    9bd8:	e59f2014 	ldr	r2, [pc, #20]	; 9bf4 <_ZN9Scheduler11PrepareTaskEv+0x28>
    9bdc:	e5931050 	ldr	r1, [r3, #80]	; 0x50
    9be0:	e5c3c064 	strb	ip, [r3, #100]	; 0x64
    9be4:	e5821018 	str	r1, [r2, #24]
    9be8:	ebfff937 	bl	80cc <armPrepareContext>
    9bec:	e8bd4008 	pop	{r3, lr}
    9bf0:	e12fff1e 	bx	lr
    9bf4:	0000adcc 	andeq	sl, r0, ip, asr #27

00009bf8 <_ZN9Scheduler7AddTaskEv>:
    9bf8:	e3a02000 	mov	r2, #0
    9bfc:	e5901014 	ldr	r1, [r0, #20]
    9c00:	e59fc138 	ldr	ip, [pc, #312]	; 9d40 <_ZN9Scheduler7AddTaskEv+0x148>
    9c04:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    9c08:	e5903020 	ldr	r3, [r0, #32]
    9c0c:	e59c4004 	ldr	r4, [ip, #4]
    9c10:	e5812048 	str	r2, [r1, #72]	; 0x48
    9c14:	e5932000 	ldr	r2, [r3]
    9c18:	e3520000 	cmp	r2, #0
    9c1c:	1a000001 	bne	9c28 <_ZN9Scheduler7AddTaskEv+0x30>
    9c20:	ea000044 	b	9d38 <_ZN9Scheduler7AddTaskEv+0x140>
    9c24:	e1a02003 	mov	r2, r3
    9c28:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    9c2c:	e3530000 	cmp	r3, #0
    9c30:	1afffffb 	bne	9c24 <_ZN9Scheduler7AddTaskEv+0x2c>
    9c34:	e5821048 	str	r1, [r2, #72]	; 0x48
    9c38:	e59f3104 	ldr	r3, [pc, #260]	; 9d44 <_ZN9Scheduler7AddTaskEv+0x14c>
    9c3c:	e5d33014 	ldrb	r3, [r3, #20]
    9c40:	e3530000 	cmp	r3, #0
    9c44:	0a000039 	beq	9d30 <_ZN9Scheduler7AddTaskEv+0x138>
    9c48:	e1a06000 	mov	r6, r0
    9c4c:	e3a0100a 	mov	r1, #10
    9c50:	e590701c 	ldr	r7, [r0, #28]
    9c54:	e59f50ec 	ldr	r5, [pc, #236]	; 9d48 <_ZN9Scheduler7AddTaskEv+0x150>
    9c58:	e1a00007 	mov	r0, r7
    9c5c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9c60:	ebfffcc4 	bl	8f78 <_ZN7Console9printCharEcj>
    9c64:	e5f51001 	ldrb	r1, [r5, #1]!
    9c68:	e3510000 	cmp	r1, #0
    9c6c:	1afffff9 	bne	9c58 <_ZN9Scheduler7AddTaskEv+0x60>
    9c70:	e5963020 	ldr	r3, [r6, #32]
    9c74:	e5933000 	ldr	r3, [r3]
    9c78:	e3530000 	cmp	r3, #0
    9c7c:	e596001c 	ldr	r0, [r6, #28]
    9c80:	0a000007 	beq	9ca4 <_ZN9Scheduler7AddTaskEv+0xac>
    9c84:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    9c88:	e3530000 	cmp	r3, #0
    9c8c:	e3a01001 	mov	r1, #1
    9c90:	0a000003 	beq	9ca4 <_ZN9Scheduler7AddTaskEv+0xac>
    9c94:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    9c98:	e3530000 	cmp	r3, #0
    9c9c:	e2811001 	add	r1, r1, #1
    9ca0:	1afffffb 	bne	9c94 <_ZN9Scheduler7AddTaskEv+0x9c>
    9ca4:	e59f20a0 	ldr	r2, [pc, #160]	; 9d4c <_ZN9Scheduler7AddTaskEv+0x154>
    9ca8:	ebfffd41 	bl	91b4 <_ZN7Console6kprintEjj>
    9cac:	e3a0100a 	mov	r1, #10
    9cb0:	e59f5098 	ldr	r5, [pc, #152]	; 9d50 <_ZN9Scheduler7AddTaskEv+0x158>
    9cb4:	e596701c 	ldr	r7, [r6, #28]
    9cb8:	e1a00007 	mov	r0, r7
    9cbc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9cc0:	ebfffcac 	bl	8f78 <_ZN7Console9printCharEcj>
    9cc4:	e5f51001 	ldrb	r1, [r5, #1]!
    9cc8:	e3510000 	cmp	r1, #0
    9ccc:	1afffff9 	bne	9cb8 <_ZN9Scheduler7AddTaskEv+0xc0>
    9cd0:	e5963014 	ldr	r3, [r6, #20]
    9cd4:	e596001c 	ldr	r0, [r6, #28]
    9cd8:	e1d316b0 	ldrh	r1, [r3, #96]	; 0x60
    9cdc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9ce0:	ebfffd33 	bl	91b4 <_ZN7Console6kprintEjj>
    9ce4:	e3a0100a 	mov	r1, #10
    9ce8:	e59f5064 	ldr	r5, [pc, #100]	; 9d54 <_ZN9Scheduler7AddTaskEv+0x15c>
    9cec:	e596701c 	ldr	r7, [r6, #28]
    9cf0:	e1a00007 	mov	r0, r7
    9cf4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9cf8:	ebfffc9e 	bl	8f78 <_ZN7Console9printCharEcj>
    9cfc:	e5f51001 	ldrb	r1, [r5, #1]!
    9d00:	e3510000 	cmp	r1, #0
    9d04:	1afffff9 	bne	9cf0 <_ZN9Scheduler7AddTaskEv+0xf8>
    9d08:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9d0c:	e596001c 	ldr	r0, [r6, #28]
    9d10:	e5961014 	ldr	r1, [r6, #20]
    9d14:	ebfffd3b 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    9d18:	e284483d 	add	r4, r4, #3997696	; 0x3d0000
    9d1c:	e59f201c 	ldr	r2, [pc, #28]	; 9d40 <_ZN9Scheduler7AddTaskEv+0x148>
    9d20:	e2844c09 	add	r4, r4, #2304	; 0x900
    9d24:	e5923004 	ldr	r3, [r2, #4]
    9d28:	e1540003 	cmp	r4, r3
    9d2c:	2afffffc 	bcs	9d24 <_ZN9Scheduler7AddTaskEv+0x12c>
    9d30:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    9d34:	e12fff1e 	bx	lr
    9d38:	e5831000 	str	r1, [r3]
    9d3c:	eaffffbd 	b	9c38 <_ZN9Scheduler7AddTaskEv+0x40>
    9d40:	20003000 	andcs	r3, r0, r0
    9d44:	0000adcc 	andeq	sl, r0, ip, asr #27
    9d48:	0000b35c 	andeq	fp, r0, ip, asr r3
    9d4c:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    9d50:	0000b378 	andeq	fp, r0, r8, ror r3
    9d54:	0000b388 	andeq	fp, r0, r8, lsl #7

00009d58 <_Z5test1v>:
    9d58:	e59f300c 	ldr	r3, [pc, #12]	; 9d6c <_Z5test1v+0x14>
    9d5c:	e1a00000 	nop			; (mov r0, r0)
    9d60:	e2533001 	subs	r3, r3, #1
    9d64:	1afffffc 	bne	9d5c <_Z5test1v+0x4>
    9d68:	e12fff1e 	bx	lr
    9d6c:	00989680 	addseq	r9, r8, r0, lsl #13

00009d70 <swi_writer>:
    9d70:	e92d4070 	push	{r4, r5, r6, lr}
    9d74:	e1a04006 	mov	r4, r6
    9d78:	e1a05007 	mov	r5, r7
    9d7c:	e1a01008 	mov	r1, r8
    9d80:	e1a03009 	mov	r3, r9
    9d84:	e3530003 	cmp	r3, #3
    9d88:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    9d8c:	ea00000e 	b	9dcc <swi_writer+0x5c>
    9d90:	00009da0 	andeq	r9, r0, r0, lsr #27
    9d94:	00009dfc 	strdeq	r9, [r0], -ip
    9d98:	00009de8 	andeq	r9, r0, r8, ror #27
    9d9c:	00009dd4 	ldrdeq	r9, [r0], -r4
    9da0:	e5d41000 	ldrb	r1, [r4]
    9da4:	e59f3080 	ldr	r3, [pc, #128]	; 9e2c <swi_writer+0xbc>
    9da8:	e3510000 	cmp	r1, #0
    9dac:	e5936008 	ldr	r6, [r3, #8]
    9db0:	0a000005 	beq	9dcc <swi_writer+0x5c>
    9db4:	e1a00006 	mov	r0, r6
    9db8:	e1a02005 	mov	r2, r5
    9dbc:	ebfffc6d 	bl	8f78 <_ZN7Console9printCharEcj>
    9dc0:	e5f41001 	ldrb	r1, [r4, #1]!
    9dc4:	e3510000 	cmp	r1, #0
    9dc8:	1afffff9 	bne	9db4 <swi_writer+0x44>
    9dcc:	e8bd4070 	pop	{r4, r5, r6, lr}
    9dd0:	e12fff1e 	bx	lr
    9dd4:	e59f3050 	ldr	r3, [pc, #80]	; 9e2c <swi_writer+0xbc>
    9dd8:	e1a02005 	mov	r2, r5
    9ddc:	e5930008 	ldr	r0, [r3, #8]
    9de0:	e8bd4070 	pop	{r4, r5, r6, lr}
    9de4:	eafffd07 	b	9208 <_ZN7Console12kprintHexa32Ejj>
    9de8:	e59f303c 	ldr	r3, [pc, #60]	; 9e2c <swi_writer+0xbc>
    9dec:	e1a02005 	mov	r2, r5
    9df0:	e5930008 	ldr	r0, [r3, #8]
    9df4:	e8bd4070 	pop	{r4, r5, r6, lr}
    9df8:	eafffced 	b	91b4 <_ZN7Console6kprintEjj>
    9dfc:	e5d41000 	ldrb	r1, [r4]
    9e00:	e59f3024 	ldr	r3, [pc, #36]	; 9e2c <swi_writer+0xbc>
    9e04:	e3510000 	cmp	r1, #0
    9e08:	e5936008 	ldr	r6, [r3, #8]
    9e0c:	0affffee 	beq	9dcc <swi_writer+0x5c>
    9e10:	e1a00006 	mov	r0, r6
    9e14:	e1a02005 	mov	r2, r5
    9e18:	ebfffc56 	bl	8f78 <_ZN7Console9printCharEcj>
    9e1c:	e5f41001 	ldrb	r1, [r4, #1]!
    9e20:	e3510000 	cmp	r1, #0
    9e24:	1afffff9 	bne	9e10 <swi_writer+0xa0>
    9e28:	eaffffe7 	b	9dcc <swi_writer+0x5c>
    9e2c:	0000adcc 	andeq	sl, r0, ip, asr #27

00009e30 <swi_svmode>:
    9e30:	e92d4070 	push	{r4, r5, r6, lr}
    9e34:	e8bd4070 	pop	{r4, r5, r6, lr}
    9e38:	e59f50e0 	ldr	r5, [pc, #224]	; 9f20 <swi_svmode+0xf0>
    9e3c:	e5d53014 	ldrb	r3, [r5, #20]
    9e40:	e3530000 	cmp	r3, #0
    9e44:	0a000033 	beq	9f18 <swi_svmode+0xe8>
    9e48:	e3a0100a 	mov	r1, #10
    9e4c:	e5956008 	ldr	r6, [r5, #8]
    9e50:	e59f40cc 	ldr	r4, [pc, #204]	; 9f24 <swi_svmode+0xf4>
    9e54:	e1a00006 	mov	r0, r6
    9e58:	e59f20c8 	ldr	r2, [pc, #200]	; 9f28 <swi_svmode+0xf8>
    9e5c:	ebfffc45 	bl	8f78 <_ZN7Console9printCharEcj>
    9e60:	e5f41001 	ldrb	r1, [r4, #1]!
    9e64:	e3510000 	cmp	r1, #0
    9e68:	1afffff9 	bne	9e54 <swi_svmode+0x24>
    9e6c:	e3a0100a 	mov	r1, #10
    9e70:	e5956008 	ldr	r6, [r5, #8]
    9e74:	e59f40b0 	ldr	r4, [pc, #176]	; 9f2c <swi_svmode+0xfc>
    9e78:	e1a00006 	mov	r0, r6
    9e7c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9e80:	ebfffc3c 	bl	8f78 <_ZN7Console9printCharEcj>
    9e84:	e5f41001 	ldrb	r1, [r4, #1]!
    9e88:	e3510000 	cmp	r1, #0
    9e8c:	1afffff9 	bne	9e78 <swi_svmode+0x48>
    9e90:	e595300c 	ldr	r3, [r5, #12]
    9e94:	e5933020 	ldr	r3, [r3, #32]
    9e98:	e5933000 	ldr	r3, [r3]
    9e9c:	e3530000 	cmp	r3, #0
    9ea0:	e5950008 	ldr	r0, [r5, #8]
    9ea4:	0a000007 	beq	9ec8 <swi_svmode+0x98>
    9ea8:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    9eac:	e3530000 	cmp	r3, #0
    9eb0:	e3a01001 	mov	r1, #1
    9eb4:	0a000003 	beq	9ec8 <swi_svmode+0x98>
    9eb8:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    9ebc:	e3530000 	cmp	r3, #0
    9ec0:	e2811001 	add	r1, r1, #1
    9ec4:	1afffffb 	bne	9eb8 <swi_svmode+0x88>
    9ec8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9ecc:	ebfffcb8 	bl	91b4 <_ZN7Console6kprintEjj>
    9ed0:	e59f10dc 	ldr	r1, [pc, #220]	; 9fb4 <swi_endTask+0x80>
    9ed4:	e581d000 	str	sp, [r1]
    9ed8:	e3a0100a 	mov	r1, #10
    9edc:	e5950008 	ldr	r0, [r5, #8]
    9ee0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    9ee4:	ebfffc23 	bl	8f78 <_ZN7Console9printCharEcj>
    9ee8:	e5951020 	ldr	r1, [r5, #32]
    9eec:	e3a02cff 	mov	r2, #65280	; 0xff00
    9ef0:	e5950008 	ldr	r0, [r5, #8]
    9ef4:	ebfffcc3 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    9ef8:	e59f3030 	ldr	r3, [pc, #48]	; 9f30 <swi_svmode+0x100>
    9efc:	e1a01003 	mov	r1, r3
    9f00:	e5932004 	ldr	r2, [r3, #4]
    9f04:	e28229b7 	add	r2, r2, #2998272	; 0x2dc000
    9f08:	e2822d1b 	add	r2, r2, #1728	; 0x6c0
    9f0c:	e5913004 	ldr	r3, [r1, #4]
    9f10:	e1520003 	cmp	r2, r3
    9f14:	8afffffc 	bhi	9f0c <swi_svmode+0xdc>
    9f18:	e595000c 	ldr	r0, [r5, #12]
    9f1c:	ebfffe1d 	bl	9798 <_ZN9Scheduler8ScheduleEv>
    9f20:	0000adcc 	andeq	sl, r0, ip, asr #27
    9f24:	0000b3a0 	andeq	fp, r0, r0, lsr #7
    9f28:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    9f2c:	0000b3bc 			; <UNDEFINED> instruction: 0x0000b3bc
    9f30:	20003000 	andcs	r3, r0, r0

00009f34 <swi_endTask>:
    9f34:	e3a01004 	mov	r1, #4
    9f38:	e92d4038 	push	{r3, r4, r5, lr}
    9f3c:	e59f307c 	ldr	r3, [pc, #124]	; 9fc0 <swi_endTask+0x8c>
    9f40:	e593200c 	ldr	r2, [r3, #12]
    9f44:	e5d30014 	ldrb	r0, [r3, #20]
    9f48:	e5922018 	ldr	r2, [r2, #24]
    9f4c:	e3500000 	cmp	r0, #0
    9f50:	e5c21064 	strb	r1, [r2, #100]	; 0x64
    9f54:	0a000010 	beq	9f9c <swi_endTask+0x68>
    9f58:	e3a0100a 	mov	r1, #10
    9f5c:	e5935008 	ldr	r5, [r3, #8]
    9f60:	e59f405c 	ldr	r4, [pc, #92]	; 9fc4 <swi_endTask+0x90>
    9f64:	e1a00005 	mov	r0, r5
    9f68:	e3a020ff 	mov	r2, #255	; 0xff
    9f6c:	ebfffc01 	bl	8f78 <_ZN7Console9printCharEcj>
    9f70:	e5f41001 	ldrb	r1, [r4, #1]!
    9f74:	e3510000 	cmp	r1, #0
    9f78:	1afffff9 	bne	9f64 <swi_endTask+0x30>
    9f7c:	e59f3044 	ldr	r3, [pc, #68]	; 9fc8 <swi_endTask+0x94>
    9f80:	e1a01003 	mov	r1, r3
    9f84:	e5932004 	ldr	r2, [r3, #4]
    9f88:	e28229b7 	add	r2, r2, #2998272	; 0x2dc000
    9f8c:	e2822d1b 	add	r2, r2, #1728	; 0x6c0
    9f90:	e5913004 	ldr	r3, [r1, #4]
    9f94:	e1520003 	cmp	r2, r3
    9f98:	8afffffc 	bhi	9f90 <swi_endTask+0x5c>
    9f9c:	0000ae14 	andeq	sl, r0, r4, lsl lr
    9fa0:	00001fc8 	andeq	r1, r0, r8, asr #31
    9fa4:	0000addc 	ldrdeq	sl, [r0], -ip
    9fa8:	0000ae28 	andeq	sl, r0, r8, lsr #28
    9fac:	0000ade8 	andeq	sl, r0, r8, ror #27
    9fb0:	0000ade4 	andeq	sl, r0, r4, ror #27
    9fb4:	0000adec 	andeq	sl, r0, ip, ror #27
    9fb8:	e8bd4038 	pop	{r3, r4, r5, lr}
    9fbc:	e12fff1e 	bx	lr
    9fc0:	0000adcc 	andeq	sl, r0, ip, asr #27
    9fc4:	0000b3d4 	ldrdeq	fp, [r0], -r4
    9fc8:	20003000 	andcs	r3, r0, r0

00009fcc <swi_addTask>:
    9fcc:	e3a02801 	mov	r2, #65536	; 0x10000
    9fd0:	e59f3018 	ldr	r3, [pc, #24]	; 9ff0 <swi_addTask+0x24>
    9fd4:	e593000c 	ldr	r0, [r3, #12]
    9fd8:	e59f3014 	ldr	r3, [pc, #20]	; 9ff4 <swi_addTask+0x28>
    9fdc:	e3500000 	cmp	r0, #0
    9fe0:	e583201c 	str	r2, [r3, #28]
    9fe4:	e5832028 	str	r2, [r3, #40]	; 0x28
    9fe8:	012fff1e 	bxeq	lr
    9fec:	eaffff01 	b	9bf8 <_ZN9Scheduler7AddTaskEv>
    9ff0:	0000adcc 	andeq	sl, r0, ip, asr #27
    9ff4:	20200000 	eorcs	r0, r0, r0

00009ff8 <_Z11userAddTaskv>:
    9ff8:	e3a05003 	mov	r5, #3
    9ffc:	ef000000 	svc	0x00000000
    a000:	e12fff1e 	bx	lr

0000a004 <_Z9userPrintPKcj>:
    a004:	e5d03000 	ldrb	r3, [r0]
    a008:	e3530000 	cmp	r3, #0
    a00c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    a010:	1a000006 	bne	a030 <_Z9userPrintPKcj+0x2c>
    a014:	e1a07001 	mov	r7, r1
    a018:	e1a06000 	mov	r6, r0
    a01c:	e3a09000 	mov	r9, #0
    a020:	e3a05000 	mov	r5, #0
    a024:	ef000000 	svc	0x00000000
    a028:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    a02c:	e12fff1e 	bx	lr
    a030:	e1a03000 	mov	r3, r0
    a034:	e59f2018 	ldr	r2, [pc, #24]	; a054 <_Z9userPrintPKcj+0x50>
    a038:	e2833001 	add	r3, r3, #1
    a03c:	e5d3c000 	ldrb	ip, [r3]
    a040:	e060e003 	rsb	lr, r0, r3
    a044:	e15e0002 	cmp	lr, r2
    a048:	935c0000 	cmpls	ip, #0
    a04c:	0afffff0 	beq	a014 <_Z9userPrintPKcj+0x10>
    a050:	eafffff8 	b	a038 <_Z9userPrintPKcj+0x34>
    a054:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

0000a058 <_Z9userPrintPKc>:
    a058:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    a05c:	eaffffe8 	b	a004 <_Z9userPrintPKcj>

0000a060 <_Z9userPrintPcj>:
    a060:	e5d03000 	ldrb	r3, [r0]
    a064:	e3530000 	cmp	r3, #0
    a068:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    a06c:	1a000006 	bne	a08c <_Z9userPrintPcj+0x2c>
    a070:	e1a07001 	mov	r7, r1
    a074:	e1a06000 	mov	r6, r0
    a078:	e3a09001 	mov	r9, #1
    a07c:	e3a05000 	mov	r5, #0
    a080:	ef000000 	svc	0x00000000
    a084:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    a088:	e12fff1e 	bx	lr
    a08c:	e1a03000 	mov	r3, r0
    a090:	e59f2018 	ldr	r2, [pc, #24]	; a0b0 <_Z9userPrintPcj+0x50>
    a094:	e2833001 	add	r3, r3, #1
    a098:	e5d3c000 	ldrb	ip, [r3]
    a09c:	e060e003 	rsb	lr, r0, r3
    a0a0:	e15e0002 	cmp	lr, r2
    a0a4:	935c0000 	cmpls	ip, #0
    a0a8:	0afffff0 	beq	a070 <_Z9userPrintPcj+0x10>
    a0ac:	eafffff8 	b	a094 <_Z9userPrintPcj+0x34>
    a0b0:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

0000a0b4 <_Z9userPrintPc>:
    a0b4:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    a0b8:	eaffffe8 	b	a060 <_Z9userPrintPcj>

0000a0bc <_Z9userPrintjj>:
    a0bc:	e92d4030 	push	{r4, r5, lr}
    a0c0:	e24dd00c 	sub	sp, sp, #12
    a0c4:	e1a07001 	mov	r7, r1
    a0c8:	e1a08000 	mov	r8, r0
    a0cc:	e3a09002 	mov	r9, #2
    a0d0:	e3a05000 	mov	r5, #0
    a0d4:	ef000000 	svc	0x00000000
    a0d8:	e3a03001 	mov	r3, #1
    a0dc:	e5cd3007 	strb	r3, [sp, #7]
    a0e0:	e5dd3007 	ldrb	r3, [sp, #7]
    a0e4:	e3530000 	cmp	r3, #0
    a0e8:	1a00000c 	bne	a120 <_Z9userPrintjj+0x64>
    a0ec:	e3a0100a 	mov	r1, #10
    a0f0:	e59f3038 	ldr	r3, [pc, #56]	; a130 <_Z9userPrintjj+0x74>
    a0f4:	e59f4038 	ldr	r4, [pc, #56]	; a134 <_Z9userPrintjj+0x78>
    a0f8:	e5935008 	ldr	r5, [r3, #8]
    a0fc:	e1a00005 	mov	r0, r5
    a100:	e3a020ff 	mov	r2, #255	; 0xff
    a104:	ebfffb9b 	bl	8f78 <_ZN7Console9printCharEcj>
    a108:	e5f41001 	ldrb	r1, [r4, #1]!
    a10c:	e3510000 	cmp	r1, #0
    a110:	1afffff9 	bne	a0fc <_Z9userPrintjj+0x40>
    a114:	e28dd00c 	add	sp, sp, #12
    a118:	e8bd4030 	pop	{r4, r5, lr}
    a11c:	e12fff1e 	bx	lr
    a120:	e1a00000 	nop			; (mov r0, r0)
    a124:	e28dd00c 	add	sp, sp, #12
    a128:	e8bd4030 	pop	{r4, r5, lr}
    a12c:	e12fff1e 	bx	lr
    a130:	0000adcc 	andeq	sl, r0, ip, asr #27
    a134:	0000b3ec 	andeq	fp, r0, ip, ror #7

0000a138 <_Z12PrintProcessv>:
    a138:	e92d4010 	push	{r4, lr}
    a13c:	e3a04f7d 	mov	r4, #500	; 0x1f4
    a140:	e2444001 	sub	r4, r4, #1
    a144:	e59f0038 	ldr	r0, [pc, #56]	; a184 <_Z12PrintProcessv+0x4c>
    a148:	e3a01cff 	mov	r1, #65280	; 0xff00
    a14c:	ebffffac 	bl	a004 <_Z9userPrintPKcj>
    a150:	e1a00004 	mov	r0, r4
    a154:	e3a01cff 	mov	r1, #65280	; 0xff00
    a158:	ebffffd7 	bl	a0bc <_Z9userPrintjj>
    a15c:	e59f0024 	ldr	r0, [pc, #36]	; a188 <_Z12PrintProcessv+0x50>
    a160:	e3a01cff 	mov	r1, #65280	; 0xff00
    a164:	ebffffa6 	bl	a004 <_Z9userPrintPKcj>
    a168:	e59f001c 	ldr	r0, [pc, #28]	; a18c <_Z12PrintProcessv+0x54>
    a16c:	e59f101c 	ldr	r1, [pc, #28]	; a190 <_Z12PrintProcessv+0x58>
    a170:	ebffffa3 	bl	a004 <_Z9userPrintPKcj>
    a174:	e3540000 	cmp	r4, #0
    a178:	1afffff0 	bne	a140 <_Z12PrintProcessv+0x8>
    a17c:	e8bd4010 	pop	{r4, lr}
    a180:	e12fff1e 	bx	lr
    a184:	0000b3fc 	strdeq	fp, [r0], -ip
    a188:	0000b400 	andeq	fp, r0, r0, lsl #8
    a18c:	0000b404 	andeq	fp, r0, r4, lsl #8
    a190:	00ffff00 	rscseq	pc, pc, r0, lsl #30

0000a194 <_Z13PrintProcess2v>:
    a194:	e92d4010 	push	{r4, lr}
    a198:	e3a04f7d 	mov	r4, #500	; 0x1f4
    a19c:	e2444001 	sub	r4, r4, #1
    a1a0:	e59f0040 	ldr	r0, [pc, #64]	; a1e8 <_Z13PrintProcess2v+0x54>
    a1a4:	e3a01cff 	mov	r1, #65280	; 0xff00
    a1a8:	ebffff95 	bl	a004 <_Z9userPrintPKcj>
    a1ac:	e1a00004 	mov	r0, r4
    a1b0:	e3a01cff 	mov	r1, #65280	; 0xff00
    a1b4:	ebffffc0 	bl	a0bc <_Z9userPrintjj>
    a1b8:	e59f002c 	ldr	r0, [pc, #44]	; a1ec <_Z13PrintProcess2v+0x58>
    a1bc:	e3a01cff 	mov	r1, #65280	; 0xff00
    a1c0:	ebffff8f 	bl	a004 <_Z9userPrintPKcj>
    a1c4:	e59f0024 	ldr	r0, [pc, #36]	; a1f0 <_Z13PrintProcess2v+0x5c>
    a1c8:	e3a010ff 	mov	r1, #255	; 0xff
    a1cc:	ebffff8c 	bl	a004 <_Z9userPrintPKcj>
    a1d0:	e3540000 	cmp	r4, #0
    a1d4:	1afffff0 	bne	a19c <_Z13PrintProcess2v+0x8>
    a1d8:	e3a05003 	mov	r5, #3
    a1dc:	ef000000 	svc	0x00000000
    a1e0:	e8bd4010 	pop	{r4, lr}
    a1e4:	e12fff1e 	bx	lr
    a1e8:	0000b3fc 	strdeq	fp, [r0], -ip
    a1ec:	0000b400 	andeq	fp, r0, r0, lsl #8
    a1f0:	0000b438 	andeq	fp, r0, r8, lsr r4

0000a1f4 <_Z13PrintProcess3v>:
    a1f4:	e92d4010 	push	{r4, lr}
    a1f8:	e3a04f7d 	mov	r4, #500	; 0x1f4
    a1fc:	e2444001 	sub	r4, r4, #1
    a200:	e59f0038 	ldr	r0, [pc, #56]	; a240 <_Z13PrintProcess3v+0x4c>
    a204:	e3a01cff 	mov	r1, #65280	; 0xff00
    a208:	ebffff7d 	bl	a004 <_Z9userPrintPKcj>
    a20c:	e1a00004 	mov	r0, r4
    a210:	e3a01cff 	mov	r1, #65280	; 0xff00
    a214:	ebffffa8 	bl	a0bc <_Z9userPrintjj>
    a218:	e59f0024 	ldr	r0, [pc, #36]	; a244 <_Z13PrintProcess3v+0x50>
    a21c:	e3a01cff 	mov	r1, #65280	; 0xff00
    a220:	ebffff77 	bl	a004 <_Z9userPrintPKcj>
    a224:	e59f001c 	ldr	r0, [pc, #28]	; a248 <_Z13PrintProcess3v+0x54>
    a228:	e59f101c 	ldr	r1, [pc, #28]	; a24c <_Z13PrintProcess3v+0x58>
    a22c:	ebffff74 	bl	a004 <_Z9userPrintPKcj>
    a230:	e3540000 	cmp	r4, #0
    a234:	1afffff0 	bne	a1fc <_Z13PrintProcess3v+0x8>
    a238:	e8bd4010 	pop	{r4, lr}
    a23c:	e12fff1e 	bx	lr
    a240:	0000b3fc 	strdeq	fp, [r0], -ip
    a244:	0000b400 	andeq	fp, r0, r0, lsl #8
    a248:	0000b458 	andeq	fp, r0, r8, asr r4
    a24c:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>

0000a250 <_Z13PrintProcess4v>:
    a250:	e92d4010 	push	{r4, lr}
    a254:	e3a04f7d 	mov	r4, #500	; 0x1f4
    a258:	e2444001 	sub	r4, r4, #1
    a25c:	e59f0038 	ldr	r0, [pc, #56]	; a29c <_Z13PrintProcess4v+0x4c>
    a260:	e3a01cff 	mov	r1, #65280	; 0xff00
    a264:	ebffff66 	bl	a004 <_Z9userPrintPKcj>
    a268:	e1a00004 	mov	r0, r4
    a26c:	e3a01cff 	mov	r1, #65280	; 0xff00
    a270:	ebffff91 	bl	a0bc <_Z9userPrintjj>
    a274:	e59f0024 	ldr	r0, [pc, #36]	; a2a0 <_Z13PrintProcess4v+0x50>
    a278:	e3a01cff 	mov	r1, #65280	; 0xff00
    a27c:	ebffff60 	bl	a004 <_Z9userPrintPKcj>
    a280:	e59f001c 	ldr	r0, [pc, #28]	; a2a4 <_Z13PrintProcess4v+0x54>
    a284:	e59f101c 	ldr	r1, [pc, #28]	; a2a8 <_Z13PrintProcess4v+0x58>
    a288:	ebffff5d 	bl	a004 <_Z9userPrintPKcj>
    a28c:	e3540000 	cmp	r4, #0
    a290:	1afffff0 	bne	a258 <_Z13PrintProcess4v+0x8>
    a294:	e8bd4010 	pop	{r4, lr}
    a298:	e12fff1e 	bx	lr
    a29c:	0000b3fc 	strdeq	fp, [r0], -ip
    a2a0:	0000b400 	andeq	fp, r0, r0, lsl #8
    a2a4:	0000b46c 	andeq	fp, r0, ip, ror #8
    a2a8:	00ff00ff 	ldrshteq	r0, [pc], #15

0000a2ac <_Z9userPrintj>:
    a2ac:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    a2b0:	eaffff81 	b	a0bc <_Z9userPrintjj>

0000a2b4 <_Z15userPrintHexa32jj>:
    a2b4:	e92d4030 	push	{r4, r5, lr}
    a2b8:	e24dd00c 	sub	sp, sp, #12
    a2bc:	e1a07001 	mov	r7, r1
    a2c0:	e1a08000 	mov	r8, r0
    a2c4:	e3a09003 	mov	r9, #3
    a2c8:	e3a05000 	mov	r5, #0
    a2cc:	ef000000 	svc	0x00000000
    a2d0:	e3a03001 	mov	r3, #1
    a2d4:	e5cd3007 	strb	r3, [sp, #7]
    a2d8:	e5dd3007 	ldrb	r3, [sp, #7]
    a2dc:	e3530000 	cmp	r3, #0
    a2e0:	1a00000c 	bne	a318 <_Z15userPrintHexa32jj+0x64>
    a2e4:	e3a0100a 	mov	r1, #10
    a2e8:	e59f3038 	ldr	r3, [pc, #56]	; a328 <_Z15userPrintHexa32jj+0x74>
    a2ec:	e59f4038 	ldr	r4, [pc, #56]	; a32c <_Z15userPrintHexa32jj+0x78>
    a2f0:	e5935008 	ldr	r5, [r3, #8]
    a2f4:	e1a00005 	mov	r0, r5
    a2f8:	e3a020ff 	mov	r2, #255	; 0xff
    a2fc:	ebfffb1d 	bl	8f78 <_ZN7Console9printCharEcj>
    a300:	e5f41001 	ldrb	r1, [r4, #1]!
    a304:	e3510000 	cmp	r1, #0
    a308:	1afffff9 	bne	a2f4 <_Z15userPrintHexa32jj+0x40>
    a30c:	e28dd00c 	add	sp, sp, #12
    a310:	e8bd4030 	pop	{r4, r5, lr}
    a314:	e12fff1e 	bx	lr
    a318:	e1a00000 	nop			; (mov r0, r0)
    a31c:	e28dd00c 	add	sp, sp, #12
    a320:	e8bd4030 	pop	{r4, r5, lr}
    a324:	e12fff1e 	bx	lr
    a328:	0000adcc 	andeq	sl, r0, ip, asr #27
    a32c:	0000b3ec 	andeq	fp, r0, ip, ror #7

0000a330 <_Z15userPrintHexa32j>:
    a330:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    a334:	eaffffde 	b	a2b4 <_Z15userPrintHexa32jj>

0000a338 <_Z12print_headerP7Console>:
    a338:	e92d4038 	push	{r3, r4, r5, lr}
    a33c:	e3a01057 	mov	r1, #87	; 0x57
    a340:	e1a04000 	mov	r4, r0
    a344:	e59f507c 	ldr	r5, [pc, #124]	; a3c8 <_Z12print_headerP7Console+0x90>
    a348:	e1a00004 	mov	r0, r4
    a34c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a350:	ebfffb08 	bl	8f78 <_ZN7Console9printCharEcj>
    a354:	e5f51001 	ldrb	r1, [r5, #1]!
    a358:	e3510000 	cmp	r1, #0
    a35c:	1afffff9 	bne	a348 <_Z12print_headerP7Console+0x10>
    a360:	e3a01042 	mov	r1, #66	; 0x42
    a364:	e59f5060 	ldr	r5, [pc, #96]	; a3cc <_Z12print_headerP7Console+0x94>
    a368:	e1a00004 	mov	r0, r4
    a36c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a370:	ebfffb00 	bl	8f78 <_ZN7Console9printCharEcj>
    a374:	e5f51001 	ldrb	r1, [r5, #1]!
    a378:	e3510000 	cmp	r1, #0
    a37c:	1afffff9 	bne	a368 <_Z12print_headerP7Console+0x30>
    a380:	e3a01030 	mov	r1, #48	; 0x30
    a384:	e59f5044 	ldr	r5, [pc, #68]	; a3d0 <_Z12print_headerP7Console+0x98>
    a388:	e1a00004 	mov	r0, r4
    a38c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a390:	ebfffaf8 	bl	8f78 <_ZN7Console9printCharEcj>
    a394:	e5f51001 	ldrb	r1, [r5, #1]!
    a398:	e3510000 	cmp	r1, #0
    a39c:	1afffff9 	bne	a388 <_Z12print_headerP7Console+0x50>
    a3a0:	e3a0100a 	mov	r1, #10
    a3a4:	e59f5028 	ldr	r5, [pc, #40]	; a3d4 <_Z12print_headerP7Console+0x9c>
    a3a8:	e1a00004 	mov	r0, r4
    a3ac:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a3b0:	ebfffaf0 	bl	8f78 <_ZN7Console9printCharEcj>
    a3b4:	e5f51001 	ldrb	r1, [r5, #1]!
    a3b8:	e3510000 	cmp	r1, #0
    a3bc:	1afffff9 	bne	a3a8 <_Z12print_headerP7Console+0x70>
    a3c0:	e8bd4038 	pop	{r3, r4, r5, lr}
    a3c4:	e12fff1e 	bx	lr
    a3c8:	0000b480 	andeq	fp, r0, r0, lsl #9
    a3cc:	0000b4c4 	andeq	fp, r0, r4, asr #9
    a3d0:	0000b4cc 	andeq	fp, r0, ip, asr #9
    a3d4:	0000b4d8 	ldrdeq	fp, [r0], -r8

0000a3d8 <kmain>:
    a3d8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    a3dc:	e24dd044 	sub	sp, sp, #68	; 0x44
    a3e0:	e59f11d4 	ldr	r1, [pc, #468]	; a5bc <kmain+0x1e4>
    a3e4:	e581e000 	str	lr, [r1]
    a3e8:	e59f61a8 	ldr	r6, [pc, #424]	; a598 <kmain+0x1c0>
    a3ec:	e5964008 	ldr	r4, [r6, #8]
    a3f0:	e3540000 	cmp	r4, #0
    a3f4:	0a00000c 	beq	a42c <kmain+0x54>
    a3f8:	e3a0100a 	mov	r1, #10
    a3fc:	e59f5198 	ldr	r5, [pc, #408]	; a59c <kmain+0x1c4>
    a400:	e1a00004 	mov	r0, r4
    a404:	e3a020ff 	mov	r2, #255	; 0xff
    a408:	ebfffada 	bl	8f78 <_ZN7Console9printCharEcj>
    a40c:	e5f51001 	ldrb	r1, [r5, #1]!
    a410:	e3510000 	cmp	r1, #0
    a414:	1afffff9 	bne	a400 <kmain+0x28>
    a418:	e5961020 	ldr	r1, [r6, #32]
    a41c:	e5960008 	ldr	r0, [r6, #8]
    a420:	e59f2178 	ldr	r2, [pc, #376]	; a5a0 <kmain+0x1c8>
    a424:	ebfffb77 	bl	9208 <_ZN7Console12kprintHexa32Ejj>
    a428:	eafffffe 	b	a428 <kmain+0x50>
    a42c:	e28d7004 	add	r7, sp, #4
    a430:	e1a01004 	mov	r1, r4
    a434:	e3a02b01 	mov	r2, #1024	; 0x400
    a438:	e3a03c03 	mov	r3, #768	; 0x300
    a43c:	e1a00007 	mov	r0, r7
    a440:	ebfff989 	bl	8a6c <_ZN11gpu2dCanvasC1Ebjj>
    a444:	e3a0300a 	mov	r3, #10
    a448:	e28d500c 	add	r5, sp, #12
    a44c:	e1a00005 	mov	r0, r5
    a450:	e58d3014 	str	r3, [sp, #20]
    a454:	e58d400c 	str	r4, [sp, #12]
    a458:	e58d4010 	str	r4, [sp, #16]
    a45c:	e58d7018 	str	r7, [sp, #24]
    a460:	ebfffaa7 	bl	8f04 <_ZN7Console5clearEv>
    a464:	e3a01001 	mov	r1, #1
    a468:	e3a00030 	mov	r0, #48	; 0x30
    a46c:	e5865008 	str	r5, [r6, #8]
    a470:	ebfff757 	bl	81d4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    a474:	e3a02801 	mov	r2, #65536	; 0x10000
    a478:	e59f3124 	ldr	r3, [pc, #292]	; a5a4 <kmain+0x1cc>
    a47c:	e1a00005 	mov	r0, r5
    a480:	e583202c 	str	r2, [r3, #44]	; 0x2c
    a484:	ebffffab 	bl	a338 <_Z12print_headerP7Console>
    a488:	e3a01057 	mov	r1, #87	; 0x57
    a48c:	e59f4114 	ldr	r4, [pc, #276]	; a5a8 <kmain+0x1d0>
    a490:	e1a00005 	mov	r0, r5
    a494:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a498:	ebfffab6 	bl	8f78 <_ZN7Console9printCharEcj>
    a49c:	e5f41001 	ldrb	r1, [r4, #1]!
    a4a0:	e3510000 	cmp	r1, #0
    a4a4:	1afffff9 	bne	a490 <kmain+0xb8>
    a4a8:	e3a04012 	mov	r4, #18
    a4ac:	e59f70f8 	ldr	r7, [pc, #248]	; a5ac <kmain+0x1d4>
    a4b0:	e1a00005 	mov	r0, r5
    a4b4:	e3a0102e 	mov	r1, #46	; 0x2e
    a4b8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a4bc:	ebfffaad 	bl	8f78 <_ZN7Console9printCharEcj>
    a4c0:	e5973004 	ldr	r3, [r7, #4]
    a4c4:	e2833b61 	add	r3, r3, #99328	; 0x18400
    a4c8:	e2833e2a 	add	r3, r3, #672	; 0x2a0
    a4cc:	e5972004 	ldr	r2, [r7, #4]
    a4d0:	e1530002 	cmp	r3, r2
    a4d4:	8afffffc 	bhi	a4cc <kmain+0xf4>
    a4d8:	e2544001 	subs	r4, r4, #1
    a4dc:	1afffff3 	bne	a4b0 <kmain+0xd8>
    a4e0:	e3a0400a 	mov	r4, #10
    a4e4:	e59f70c4 	ldr	r7, [pc, #196]	; a5b0 <kmain+0x1d8>
    a4e8:	e1a01004 	mov	r1, r4
    a4ec:	e1a00005 	mov	r0, r5
    a4f0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    a4f4:	ebfffa9f 	bl	8f78 <_ZN7Console9printCharEcj>
    a4f8:	e5f74001 	ldrb	r4, [r7, #1]!
    a4fc:	e3540000 	cmp	r4, #0
    a500:	1afffff8 	bne	a4e8 <kmain+0x110>
    a504:	e3a0380f 	mov	r3, #983040	; 0xf0000
    a508:	e3a02aff 	mov	r2, #1044480	; 0xff000
    a50c:	e5863000 	str	r3, [r6]
    a510:	e1a00005 	mov	r0, r5
    a514:	e5832008 	str	r2, [r3, #8]
    a518:	e5c34004 	strb	r4, [r3, #4]
    a51c:	e59f1090 	ldr	r1, [pc, #144]	; a5b4 <kmain+0x1dc>
    a520:	ebfffc4e 	bl	9660 <_ZN7Console4koutEPKc>
    a524:	e3a0987e 	mov	r9, #8257536	; 0x7e0000
    a528:	e3a00f7d 	mov	r0, #500	; 0x1f4
    a52c:	e3a08002 	mov	r8, #2
    a530:	e3a0e00c 	mov	lr, #12
    a534:	e3a01ffa 	mov	r1, #1000	; 0x3e8
    a538:	e59f2078 	ldr	r2, [pc, #120]	; a5b8 <kmain+0x1e0>
    a53c:	e59fc060 	ldr	ip, [pc, #96]	; a5a4 <kmain+0x1cc>
    a540:	e5829214 	str	r9, [r2, #532]	; 0x214
    a544:	e59f3060 	ldr	r3, [pc, #96]	; a5ac <kmain+0x1d4>
    a548:	e5828210 	str	r8, [r2, #528]	; 0x210
    a54c:	e58ce058 	str	lr, [ip, #88]	; 0x58
    a550:	e58d0028 	str	r0, [sp, #40]	; 0x28
    a554:	e58d4020 	str	r4, [sp, #32]
    a558:	e58d4024 	str	r4, [sp, #36]	; 0x24
    a55c:	e58d101c 	str	r1, [sp, #28]
    a560:	e1a07003 	mov	r7, r3
    a564:	e5933004 	ldr	r3, [r3, #4]
    a568:	e28d001c 	add	r0, sp, #28
    a56c:	e28339b7 	add	r3, r3, #2998272	; 0x2dc000
    a570:	e5c64014 	strb	r4, [r6, #20]
    a574:	e58d5038 	str	r5, [sp, #56]	; 0x38
    a578:	e58d4034 	str	r4, [sp, #52]	; 0x34
    a57c:	e58d403c 	str	r4, [sp, #60]	; 0x3c
    a580:	e586000c 	str	r0, [r6, #12]
    a584:	e2833d1b 	add	r3, r3, #1728	; 0x6c0
    a588:	e5972004 	ldr	r2, [r7, #4]
    a58c:	e1520003 	cmp	r2, r3
    a590:	3afffffc 	bcc	a588 <kmain+0x1b0>
    a594:	eb000250 	bl	aedc <_ZN9Scheduler4mainEv>
    a598:	0000adcc 	andeq	sl, r0, ip, asr #27
    a59c:	0000b4dc 	ldrdeq	fp, [r0], -ip
    a5a0:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    a5a4:	20200000 	eorcs	r0, r0, r0
    a5a8:	0000b500 	andeq	fp, r0, r0, lsl #10
    a5ac:	20003000 	andcs	r3, r0, r0
    a5b0:	0000b50c 	andeq	fp, r0, ip, lsl #10
    a5b4:	0000b51c 	andeq	fp, r0, ip, lsl r5
    a5b8:	2000b000 	andcs	fp, r0, r0
    a5bc:	0000adec 	andeq	sl, r0, ip, ror #27

0000a5c0 <_ZL19kernel_default_font>:
	...
    a7d0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    a7d4:	08080808 	stmdaeq	r8, {r3, fp}
    a7d8:	08080008 	stmdaeq	r8, {r3}
    a7dc:	00000000 	andeq	r0, r0, r0
    a7e0:	14000000 	strne	r0, [r0], #-0
    a7e4:	00141414 	andseq	r1, r4, r4, lsl r4
	...
    a7f0:	48480000 	stmdami	r8, {}^	; <UNPREDICTABLE>
    a7f4:	2424fe68 	strtcs	pc, [r4], #-3688	; 0xe68
    a7f8:	1212147f 	andsne	r1, r2, #2130706432	; 0x7f000000
    a7fc:	00000000 	andeq	r0, r0, r0
    a800:	10000000 	andne	r0, r0, r0
    a804:	1c12927c 	lfmne	f1, 1, [r2], {124}	; 0x7c
    a808:	7c929070 	ldcvc	0, cr9, [r2], {112}	; 0x70
    a80c:	00001010 	andeq	r1, r0, r0, lsl r0
    a810:	06000000 	streq	r0, [r0], -r0
    a814:	38460909 	stmdacc	r6, {r0, r3, r8, fp}^
    a818:	60909066 	addsvs	r9, r0, r6, rrx
    a81c:	00000000 	andeq	r0, r0, r0
    a820:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    a824:	920c0404 	andls	r0, ip, #4, 8	; 0x4000000
    a828:	bc46a2b2 	sfmlt	f2, 3, [r6], {178}	; 0xb2
    a82c:	00000000 	andeq	r0, r0, r0
    a830:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    a834:	00080808 	andeq	r0, r8, r8, lsl #16
	...
    a840:	10103000 	andsne	r3, r0, r0
    a844:	08080808 	stmdaeq	r8, {r3, fp}
    a848:	10100808 	andsne	r0, r0, r8, lsl #16
    a84c:	00000020 	andeq	r0, r0, r0, lsr #32
    a850:	08080c00 	stmdaeq	r8, {sl, fp}
    a854:	10101010 	andsne	r1, r0, r0, lsl r0
    a858:	08081010 	stmdaeq	r8, {r4, ip}
    a85c:	0000000c 	andeq	r0, r0, ip
    a860:	10000000 	andne	r0, r0, r0
    a864:	d6387c92 			; <UNDEFINED> instruction: 0xd6387c92
    a868:	00000010 	andeq	r0, r0, r0, lsl r0
	...
    a874:	7f080808 	svcvc	0x00080808
    a878:	00080808 	andeq	r0, r8, r8, lsl #16
	...
    a888:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    a88c:	00000408 	andeq	r0, r0, r8, lsl #8
	...
    a898:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
    a8a8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    a8ac:	00000000 	andeq	r0, r0, r0
    a8b0:	40000000 	andmi	r0, r0, r0
    a8b4:	10102020 	andsne	r2, r0, r0, lsr #32
    a8b8:	04080818 	streq	r0, [r8], #-2072	; 0x818
    a8bc:	00000204 	andeq	r0, r0, r4, lsl #4
    a8c0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    a8c4:	92828244 	addls	r8, r2, #68, 4	; 0x40000004
    a8c8:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
    a8cc:	00000000 	andeq	r0, r0, r0
    a8d0:	1c000000 	stcne	0, cr0, [r0], {-0}
    a8d4:	10101010 	andsne	r1, r0, r0, lsl r0
    a8d8:	7c101010 	ldcvc	0, cr1, [r0], {16}
    a8dc:	00000000 	andeq	r0, r0, r0
    a8e0:	7c000000 	stcvc	0, cr0, [r0], {-0}
    a8e4:	408080c2 	addmi	r8, r0, r2, asr #1
    a8e8:	fe041830 	mcr2	8, 0, r1, cr4, cr0, {1}
    a8ec:	00000000 	andeq	r0, r0, r0
    a8f0:	7c000000 	stcvc	0, cr0, [r0], {-0}
    a8f4:	38c08082 	stmiacc	r0, {r1, r7, pc}^
    a8f8:	7cc280c0 	stclvc	0, cr8, [r2], {192}	; 0xc0
    a8fc:	00000000 	andeq	r0, r0, r0
    a900:	60000000 	andvs	r0, r0, r0
    a904:	44485850 	strbmi	r5, [r8], #-2128	; 0x850
    a908:	4040fe42 	submi	pc, r0, r2, asr #28
    a90c:	00000000 	andeq	r0, r0, r0
    a910:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    a914:	c03e0202 	eorsgt	r0, lr, r2, lsl #4
    a918:	3cc28080 	stclcc	0, cr8, [r2], {128}	; 0x80
    a91c:	00000000 	andeq	r0, r0, r0
    a920:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    a924:	c67a0284 	ldrbtgt	r0, [sl], -r4, lsl #5
    a928:	78c48282 	stmiavc	r4, {r1, r7, r9, pc}^
    a92c:	00000000 	andeq	r0, r0, r0
    a930:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    a934:	20204040 	eorcs	r4, r0, r0, asr #32
    a938:	04081810 	streq	r1, [r8], #-2064	; 0x810
    a93c:	00000000 	andeq	r0, r0, r0
    a940:	7c000000 	stcvc	0, cr0, [r0], {-0}
    a944:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
    a948:	7c868282 	sfmvc	f0, 1, [r6], {130}	; 0x82
    a94c:	00000000 	andeq	r0, r0, r0
    a950:	3c000000 	stccc	0, cr0, [r0], {-0}
    a954:	c6828246 	strgt	r8, [r2], r6, asr #4
    a958:	3c4280bc 	mcrrcc	0, 11, r8, r2, cr12
	...
    a964:	00181800 	andseq	r1, r8, r0, lsl #16
    a968:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
	...
    a974:	00181800 	andseq	r1, r8, r0, lsl #16
    a978:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
    a97c:	00000408 	andeq	r0, r0, r8, lsl #8
    a980:	00000000 	andeq	r0, r0, r0
    a984:	0e708000 	cdpeq	0, 7, cr8, cr0, cr0, {0}
    a988:	0080700e 	addeq	r7, r0, lr
	...
    a994:	00fe0000 	rscseq	r0, lr, r0
    a998:	0000fe00 	andeq	pc, r0, r0, lsl #28
	...
    a9a4:	e01c0200 	ands	r0, ip, r0, lsl #4
    a9a8:	00021ce0 	andeq	r1, r2, r0, ror #25
    a9ac:	00000000 	andeq	r0, r0, r0
    a9b0:	1c000000 	stcne	0, cr0, [r0], {-0}
    a9b4:	08102022 	ldmdaeq	r0, {r1, r5, sp}
    a9b8:	08080008 	stmdaeq	r8, {r3}
    a9bc:	00000000 	andeq	r0, r0, r0
    a9c0:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    a9c4:	92e284cc 	rscls	r8, r2, #204, 8	; 0xcc000000
    a9c8:	04e29292 	strbteq	r9, [r2], #658	; 0x292
    a9cc:	0000780c 	andeq	r7, r0, ip, lsl #16
    a9d0:	10000000 	andne	r0, r0, r0
    a9d4:	44282828 	strtmi	r2, [r8], #-2088	; 0x828
    a9d8:	82c67c44 	sbchi	r7, r6, #68, 24	; 0x4400
    a9dc:	00000000 	andeq	r0, r0, r0
    a9e0:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    a9e4:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
    a9e8:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
    a9ec:	00000000 	andeq	r0, r0, r0
    a9f0:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    a9f4:	02020284 	andeq	r0, r2, #132, 4	; 0x40000008
    a9f8:	78840202 	stmvc	r4, {r1, r9}
    a9fc:	00000000 	andeq	r0, r0, r0
    aa00:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    aa04:	82828242 	addhi	r8, r2, #536870916	; 0x20000004
    aa08:	3e428282 	cdpcc	2, 4, cr8, cr2, cr2, {4}
    aa0c:	00000000 	andeq	r0, r0, r0
    aa10:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    aa14:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    aa18:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    aa1c:	00000000 	andeq	r0, r0, r0
    aa20:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    aa24:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    aa28:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    aa2c:	00000000 	andeq	r0, r0, r0
    aa30:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    aa34:	c2020284 	andgt	r0, r2, #132, 4	; 0x40000008
    aa38:	78848282 	stmvc	r4, {r1, r7, r9, pc}
    aa3c:	00000000 	andeq	r0, r0, r0
    aa40:	82000000 	andhi	r0, r0, #0
    aa44:	fe828282 	cdp2	2, 8, cr8, cr2, cr2, {4}
    aa48:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
    aa4c:	00000000 	andeq	r0, r0, r0
    aa50:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
    aa54:	08080808 	stmdaeq	r8, {r3, fp}
    aa58:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
    aa5c:	00000000 	andeq	r0, r0, r0
    aa60:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    aa64:	20202020 	eorcs	r2, r0, r0, lsr #32
    aa68:	1c222020 	stcne	0, cr2, [r2], #-128	; 0xffffff80
    aa6c:	00000000 	andeq	r0, r0, r0
    aa70:	42000000 	andmi	r0, r0, #0
    aa74:	0e0a1222 	cdpeq	2, 0, cr1, cr10, cr2, {1}
    aa78:	42222212 	eormi	r2, r2, #536870913	; 0x20000001
    aa7c:	00000000 	andeq	r0, r0, r0
    aa80:	02000000 	andeq	r0, r0, #0
    aa84:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    aa88:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
    aa8c:	00000000 	andeq	r0, r0, r0
    aa90:	c6000000 	strgt	r0, [r0], -r0
    aa94:	aaaaaac6 	bge	feab55b4 <_ZN9Scheduler4mainEv+0xfeaaa6d8>
    aa98:	82828292 	addhi	r8, r2, #536870921	; 0x20000009
    aa9c:	00000000 	andeq	r0, r0, r0
    aaa0:	86000000 	strhi	r0, [r0], -r0
    aaa4:	928a8a86 	addls	r8, sl, #548864	; 0x86000
    aaa8:	c2c2a2a2 	sbcgt	sl, r2, #536870922	; 0x2000000a
    aaac:	00000000 	andeq	r0, r0, r0
    aab0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    aab4:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
    aab8:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
    aabc:	00000000 	andeq	r0, r0, r0
    aac0:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    aac4:	c28282c2 	addgt	r8, r2, #536870924	; 0x2000000c
    aac8:	0202027e 	andeq	r0, r2, #-536870905	; 0xe0000007
    aacc:	00000000 	andeq	r0, r0, r0
    aad0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    aad4:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
    aad8:	78448282 	stmdavc	r4, {r1, r7, r9, pc}^
    aadc:	00004060 	andeq	r4, r0, r0, rrx
    aae0:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
    aae4:	7e8282c2 	cdpvc	2, 8, cr8, cr2, cr2, {6}
    aae8:	02828242 	addeq	r8, r2, #536870916	; 0x20000004
    aaec:	00000000 	andeq	r0, r0, r0
    aaf0:	7c000000 	stcvc	0, cr0, [r0], {-0}
    aaf4:	7c060286 	sfmvc	f0, 4, [r6], {134}	; 0x86
    aaf8:	7dc280c0 	stclvc	0, cr8, [r2, #768]	; 0x300
    aafc:	00000000 	andeq	r0, r0, r0
    ab00:	7f000000 	svcvc	0x00000000
    ab04:	08080808 	stmdaeq	r8, {r3, fp}
    ab08:	08080808 	stmdaeq	r8, {r3, fp}
    ab0c:	00000000 	andeq	r0, r0, r0
    ab10:	82000000 	andhi	r0, r0, #0
    ab14:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
    ab18:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
    ab1c:	00000000 	andeq	r0, r0, r0
    ab20:	82000000 	andhi	r0, r0, #0
    ab24:	444444c6 	strbmi	r4, [r4], #-1222	; 0x4c6
    ab28:	10282828 	eorne	r2, r8, r8, lsr #16
    ab2c:	00000000 	andeq	r0, r0, r0
    ab30:	81000000 	mrshi	r0, (UNDEF: 0)
    ab34:	5a5a8181 	bpl	16ab140 <_ZN9Scheduler4mainEv+0x16a0264>
    ab38:	6666665a 			; <UNDEFINED> instruction: 0x6666665a
    ab3c:	00000000 	andeq	r0, r0, r0
    ab40:	c6000000 	strgt	r0, [r0], -r0
    ab44:	10382844 	eorsne	r2, r8, r4, asr #16
    ab48:	82446c28 	subhi	r6, r4, #40, 24	; 0x2800
    ab4c:	00000000 	andeq	r0, r0, r0
    ab50:	41000000 	mrsmi	r0, (UNDEF: 0)
    ab54:	08141422 	ldmdaeq	r4, {r1, r5, sl, ip}
    ab58:	08080808 	stmdaeq	r8, {r3, fp}
    ab5c:	00000000 	andeq	r0, r0, r0
    ab60:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
    ab64:	102060c0 	eorne	r6, r0, r0, asr #1
    ab68:	fe060c08 	cdp2	12, 0, cr0, cr6, cr8, {0}
    ab6c:	00000000 	andeq	r0, r0, r0
    ab70:	08083800 	stmdaeq	r8, {fp, ip, sp}
    ab74:	08080808 	stmdaeq	r8, {r3, fp}
    ab78:	08080808 	stmdaeq	r8, {r3, fp}
    ab7c:	00000038 	andeq	r0, r0, r8, lsr r0
    ab80:	02000000 	andeq	r0, r0, #0
    ab84:	08080404 	stmdaeq	r8, {r2, sl}
    ab88:	20101018 	andscs	r1, r0, r8, lsl r0
    ab8c:	00004020 	andeq	r4, r0, r0, lsr #32
    ab90:	10101c00 	andsne	r1, r0, r0, lsl #24
    ab94:	10101010 	andsne	r1, r0, r0, lsl r0
    ab98:	10101010 	andsne	r1, r0, r0, lsl r0
    ab9c:	0000001c 	andeq	r0, r0, ip, lsl r0
    aba0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    aba4:	00632214 	rsbeq	r2, r3, r4, lsl r2
	...
    abbc:	007f0000 	rsbseq	r0, pc, r0
    abc0:	10080000 	andne	r0, r8, r0
	...
    abd4:	40443800 	submi	r3, r4, r0, lsl #16
    abd8:	5c62427c 	sfmpl	f4, 2, [r2], #-496	; 0xfffffe10
    abdc:	00000000 	andeq	r0, r0, r0
    abe0:	02020200 	andeq	r0, r2, #0, 4
    abe4:	42663e02 	rsbmi	r3, r6, #2, 28
    abe8:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
	...
    abf4:	02443800 	subeq	r3, r4, #0, 16
    abf8:	38440202 	stmdacc	r4, {r1, r9}^
    abfc:	00000000 	andeq	r0, r0, r0
    ac00:	40404000 	submi	r4, r0, r0
    ac04:	42667c40 	rsbmi	r7, r6, #64, 24	; 0x4000
    ac08:	7c664242 	sfmvc	f4, 2, [r6], #-264	; 0xfffffef8
	...
    ac14:	42663c00 	rsbmi	r3, r6, #0, 24
    ac18:	3c46027e 	sfmcc	f0, 2, [r6], {126}	; 0x7e
    ac1c:	00000000 	andeq	r0, r0, r0
    ac20:	08083000 	stmdaeq	r8, {ip, sp}
    ac24:	08083e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp}
    ac28:	08080808 	stmdaeq	r8, {r3, fp}
	...
    ac34:	42667c00 	rsbmi	r7, r6, #0, 24
    ac38:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
    ac3c:	00384440 	eorseq	r4, r8, r0, asr #8
    ac40:	02020200 	andeq	r0, r2, #0, 4
    ac44:	42463a02 	submi	r3, r6, #8192	; 0x2000
    ac48:	42424242 	submi	r4, r2, #536870916	; 0x20000004
    ac4c:	00000000 	andeq	r0, r0, r0
    ac50:	00000800 	andeq	r0, r0, r0, lsl #16
    ac54:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    ac58:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
    ac5c:	00000000 	andeq	r0, r0, r0
    ac60:	00001000 	andeq	r1, r0, r0
    ac64:	10101c00 	andsne	r1, r0, r0, lsl #24
    ac68:	10101010 	andsne	r1, r0, r0, lsl r0
    ac6c:	000e1010 	andeq	r1, lr, r0, lsl r0
    ac70:	02020200 	andeq	r0, r2, #0, 4
    ac74:	0a122202 	beq	493484 <_ZN9Scheduler4mainEv+0x4885a8>
    ac78:	4222120e 	eormi	r1, r2, #-536870912	; 0xe0000000
    ac7c:	00000000 	andeq	r0, r0, r0
    ac80:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    ac84:	08080808 	stmdaeq	r8, {r3, fp}
    ac88:	70080808 	andvc	r0, r8, r8, lsl #16
	...
    ac94:	9292fe00 	addsls	pc, r2, #0, 28
    ac98:	92929292 	addsls	r9, r2, #536870921	; 0x20000009
	...
    aca4:	42463a00 	submi	r3, r6, #0, 20
    aca8:	42424242 	submi	r4, r2, #536870916	; 0x20000004
	...
    acb4:	42663c00 	rsbmi	r3, r6, #0, 24
    acb8:	3c664242 	sfmcc	f4, 2, [r6], #-264	; 0xfffffef8
	...
    acc4:	42663e00 	rsbmi	r3, r6, #0, 28
    acc8:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
    accc:	00020202 	andeq	r0, r2, r2, lsl #4
    acd0:	00000000 	andeq	r0, r0, r0
    acd4:	42667c00 	rsbmi	r7, r6, #0, 24
    acd8:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
    acdc:	00404040 	subeq	r4, r0, r0, asr #32
    ace0:	00000000 	andeq	r0, r0, r0
    ace4:	044c3c00 	strbeq	r3, [ip], #-3072	; 0xc00
    ace8:	04040404 	streq	r0, [r4], #-1028	; 0x404
	...
    acf4:	02423c00 	subeq	r3, r2, #0, 24
    acf8:	3c42403c 	mcrrcc	0, 3, r4, r2, cr12
    acfc:	00000000 	andeq	r0, r0, r0
    ad00:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    ad04:	08087e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp, lr}
    ad08:	70080808 	andvc	r0, r8, r8, lsl #16
	...
    ad14:	42424200 	submi	r4, r2, #0, 4
    ad18:	5c624242 	sfmpl	f4, 2, [r2], #-264	; 0xfffffef8
	...
    ad24:	24664200 	strbtcs	r4, [r6], #-512	; 0x200
    ad28:	18183c24 	ldmdane	r8, {r2, r5, sl, fp, ip, sp}
	...
    ad34:	5a818100 	bpl	fe06b13c <_ZN9Scheduler4mainEv+0xfe060260>
    ad38:	24245a5a 	strtcs	r5, [r4], #-2650	; 0xa5a
	...
    ad44:	18246600 	stmdane	r4!, {r9, sl, sp, lr}
    ad48:	66241818 			; <UNDEFINED> instruction: 0x66241818
	...
    ad54:	24444200 	strbcs	r4, [r4], #-512	; 0x200
    ad58:	10182824 	andsne	r2, r8, r4, lsr #16
    ad5c:	000c0810 	andeq	r0, ip, r0, lsl r8
    ad60:	00000000 	andeq	r0, r0, r0
    ad64:	20407e00 	subcs	r7, r0, r0, lsl #28
    ad68:	7e020418 	cfmvdlrvc	mvd2, r0
    ad6c:	00000000 	andeq	r0, r0, r0
    ad70:	08083800 	stmdaeq	r8, {fp, ip, sp}
    ad74:	08060808 	stmdaeq	r6, {r3, fp}
    ad78:	08080808 	stmdaeq	r8, {r3, fp}
    ad7c:	00000030 	andeq	r0, r0, r0, lsr r0
    ad80:	08080800 	stmdaeq	r8, {fp}
    ad84:	08080808 	stmdaeq	r8, {r3, fp}
    ad88:	08080808 	stmdaeq	r8, {r3, fp}
    ad8c:	00000808 	andeq	r0, r0, r8, lsl #16
    ad90:	08080e00 	stmdaeq	r8, {r9, sl, fp}
    ad94:	08300808 	ldmdaeq	r0!, {r3, fp}
    ad98:	08080808 	stmdaeq	r8, {r3, fp}
    ad9c:	00000006 	andeq	r0, r0, r6
    ada0:	00000000 	andeq	r0, r0, r0
    ada4:	9c000000 	stcls	0, cr0, [r0], {-0}
    ada8:	00000062 	andeq	r0, r0, r2, rrx
    adac:	00000000 	andeq	r0, r0, r0
    adb0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    adb4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    adb8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    adbc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    adc0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    adc4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

0000adc8 <baseStack>:
    adc8:	00004000 	andeq	r4, r0, r0

0000adcc <rootPageTable>:
    adcc:	00000000 	andeq	r0, r0, r0

0000add0 <globalkerneltimerset>:
	...

0000add1 <globaltimerset>:
    add1:	00000000 	andeq	r0, r0, r0

0000add4 <irq_console>:
    add4:	00000000 	andeq	r0, r0, r0

0000add8 <irq_scheduler>:
    add8:	00000000 	andeq	r0, r0, r0

0000addc <globalauxptr>:
    addc:	00000000 	andeq	r0, r0, r0

0000ade0 <globalverbose>:
    ade0:	00000000 	andeq	r0, r0, r0

0000ade4 <stackPointer>:
    ade4:	00000000 	andeq	r0, r0, r0

0000ade8 <globalaux3>:
    ade8:	00000000 	andeq	r0, r0, r0

0000adec <globaltest>:
    adec:	00000000 	andeq	r0, r0, r0

0000adf0 <globalcount>:
    adf0:	00000000 	andeq	r0, r0, r0

0000adf4 <irqcount>:
    adf4:	00000000 	andeq	r0, r0, r0

0000adf8 <globalPrintString>:
    adf8:	00000000 	andeq	r0, r0, r0

0000adfc <globalPrintMode>:
    adfc:	00000000 	andeq	r0, r0, r0

0000ae00 <globalPrintColour>:
    ae00:	00000000 	andeq	r0, r0, r0

0000ae04 <globalPrintNum>:
    ae04:	00000000 	andeq	r0, r0, r0

0000ae08 <globalPrintAux>:
    ae08:	00000000 	andeq	r0, r0, r0

0000ae0c <globalCPSR>:
    ae0c:	00000000 	andeq	r0, r0, r0

0000ae10 <globalSWI>:
    ae10:	00000000 	andeq	r0, r0, r0

0000ae14 <globalLRirq>:
    ae14:	00000000 	andeq	r0, r0, r0

0000ae18 <globalSPirq>:
    ae18:	00000000 	andeq	r0, r0, r0

0000ae1c <globalTaskEnd>:
    ae1c:	00000000 	andeq	r0, r0, r0

0000ae20 <globaltimecont>:
    ae20:	00000000 	andeq	r0, r0, r0

0000ae24 <globalPCkernel>:
    ae24:	00000000 	andeq	r0, r0, r0

0000ae28 <globalSPkernel>:
    ae28:	00000000 	andeq	r0, r0, r0

0000ae2c <globalProtectCPSR>:
    ae2c:	00000000 	andeq	r0, r0, r0

0000ae30 <_ZN4page8allocateEj>:
    ae30:	e5d03004 	ldrb	r3, [r0, #4]
    ae34:	e3530000 	cmp	r3, #0
    ae38:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    ae3c:	e1a03000 	mov	r3, r0
    ae40:	0a000003 	beq	ae54 <_ZN4page8allocateEj+0x24>
    ae44:	e5933000 	ldr	r3, [r3]
    ae48:	e5d32004 	ldrb	r2, [r3, #4]
    ae4c:	e3520000 	cmp	r2, #0
    ae50:	1afffffb 	bne	ae44 <_ZN4page8allocateEj+0x14>
    ae54:	e3a0c000 	mov	ip, #0
    ae58:	e5932008 	ldr	r2, [r3, #8]
    ae5c:	e593000c 	ldr	r0, [r3, #12]
    ae60:	e151000c 	cmp	r1, ip
    ae64:	e0820100 	add	r0, r2, r0, lsl #2
    ae68:	e583140c 	str	r1, [r3, #1036]	; 0x40c
    ae6c:	e5830408 	str	r0, [r3, #1032]	; 0x408
    ae70:	e5c3c404 	strb	ip, [r3, #1028]	; 0x404
    ae74:	e283eb01 	add	lr, r3, #1024	; 0x400
    ae78:	0a000004 	beq	ae90 <_ZN4page8allocateEj+0x60>
    ae7c:	e1a02000 	mov	r2, r0
    ae80:	e0801101 	add	r1, r0, r1, lsl #2
    ae84:	e482c004 	str	ip, [r2], #4
    ae88:	e1520001 	cmp	r2, r1
    ae8c:	1afffffc 	bne	ae84 <_ZN4page8allocateEj+0x54>
    ae90:	e3a02001 	mov	r2, #1
    ae94:	e583e000 	str	lr, [r3]
    ae98:	e5c32004 	strb	r2, [r3, #4]
    ae9c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    aea0:	e12fff1e 	bx	lr

0000aea4 <_ZN9TaskQueue4PushEP7PCBlock>:
    aea4:	e3a03000 	mov	r3, #0
    aea8:	e5813048 	str	r3, [r1, #72]	; 0x48
    aeac:	e5902000 	ldr	r2, [r0]
    aeb0:	e1520003 	cmp	r2, r3
    aeb4:	1a000001 	bne	aec0 <_ZN9TaskQueue4PushEP7PCBlock+0x1c>
    aeb8:	ea000005 	b	aed4 <_ZN9TaskQueue4PushEP7PCBlock+0x30>
    aebc:	e1a02003 	mov	r2, r3
    aec0:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    aec4:	e3530000 	cmp	r3, #0
    aec8:	1afffffb 	bne	aebc <_ZN9TaskQueue4PushEP7PCBlock+0x18>
    aecc:	e5821048 	str	r1, [r2, #72]	; 0x48
    aed0:	e12fff1e 	bx	lr
    aed4:	e5801000 	str	r1, [r0]
    aed8:	e12fff1e 	bx	lr

0000aedc <_ZN9Scheduler4mainEv>:
    aedc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    aee0:	e1a06000 	mov	r6, r0
    aee4:	e3a0400a 	mov	r4, #10
    aee8:	e590701c 	ldr	r7, [r0, #28]
    aeec:	e59f5294 	ldr	r5, [pc, #660]	; b188 <_ZN9Scheduler4mainEv+0x2ac>
    aef0:	e24dd00c 	sub	sp, sp, #12
    aef4:	e1a01004 	mov	r1, r4
    aef8:	e1a00007 	mov	r0, r7
    aefc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    af00:	ebfff81c 	bl	8f78 <_ZN7Console9printCharEcj>
    af04:	e5f54001 	ldrb	r4, [r5, #1]!
    af08:	e3540000 	cmp	r4, #0
    af0c:	1afffff8 	bne	aef4 <_ZN9Scheduler4mainEv+0x18>
    af10:	e28d3008 	add	r3, sp, #8
    af14:	e5234008 	str	r4, [r3, #-8]!
    af18:	e59f526c 	ldr	r5, [pc, #620]	; b18c <_ZN9Scheduler4mainEv+0x2b0>
    af1c:	e596201c 	ldr	r2, [r6, #28]
    af20:	e5863020 	str	r3, [r6, #32]
    af24:	e5950000 	ldr	r0, [r5]
    af28:	e3a01068 	mov	r1, #104	; 0x68
    af2c:	e58d2004 	str	r2, [sp, #4]
    af30:	ebffffbe 	bl	ae30 <_ZN4page8allocateEj>
    af34:	e3a01068 	mov	r1, #104	; 0x68
    af38:	e1a09000 	mov	r9, r0
    af3c:	e5950000 	ldr	r0, [r5]
    af40:	ebffffba 	bl	ae30 <_ZN4page8allocateEj>
    af44:	e3a01068 	mov	r1, #104	; 0x68
    af48:	e1a08000 	mov	r8, r0
    af4c:	e5950000 	ldr	r0, [r5]
    af50:	ebffffb6 	bl	ae30 <_ZN4page8allocateEj>
    af54:	e3a01068 	mov	r1, #104	; 0x68
    af58:	e1a07000 	mov	r7, r0
    af5c:	e5950000 	ldr	r0, [r5]
    af60:	ebffffb2 	bl	ae30 <_ZN4page8allocateEj>
    af64:	e3a0c001 	mov	ip, #1
    af68:	e1a05000 	mov	r5, r0
    af6c:	e59f021c 	ldr	r0, [pc, #540]	; b190 <_ZN9Scheduler4mainEv+0x2b4>
    af70:	e59f221c 	ldr	r2, [pc, #540]	; b194 <_ZN9Scheduler4mainEv+0x2b8>
    af74:	e5901808 	ldr	r1, [r0, #2056]	; 0x808
    af78:	e589204c 	str	r2, [r9, #76]	; 0x4c
    af7c:	e2413044 	sub	r3, r1, #68	; 0x44
    af80:	e5891050 	str	r1, [r9, #80]	; 0x50
    af84:	e1a0e004 	mov	lr, r4
    af88:	e589405c 	str	r4, [r9, #92]	; 0x5c
    af8c:	e1c946b2 	strh	r4, [r9, #98]	; 0x62
    af90:	e5c94064 	strb	r4, [r9, #100]	; 0x64
    af94:	e5894048 	str	r4, [r9, #72]	; 0x48
    af98:	e1c9c6b0 	strh	ip, [r9, #96]	; 0x60
    af9c:	e5893054 	str	r3, [r9, #84]	; 0x54
    afa0:	e5893058 	str	r3, [r9, #88]	; 0x58
    afa4:	e2414b02 	sub	r4, r1, #2048	; 0x800
    afa8:	e2493004 	sub	r3, r9, #4
    afac:	e289c040 	add	ip, r9, #64	; 0x40
    afb0:	e5a3e004 	str	lr, [r3, #4]!
    afb4:	e153000c 	cmp	r3, ip
    afb8:	e3a02000 	mov	r2, #0
    afbc:	1afffffb 	bne	afb0 <_ZN9Scheduler4mainEv+0xd4>
    afc0:	e3a0b002 	mov	fp, #2
    afc4:	e1a0e002 	mov	lr, r2
    afc8:	e59fa1c8 	ldr	sl, [pc, #456]	; b198 <_ZN9Scheduler4mainEv+0x2bc>
    afcc:	e241cd21 	sub	ip, r1, #2112	; 0x840
    afd0:	e5893044 	str	r3, [r9, #68]	; 0x44
    afd4:	e24cc004 	sub	ip, ip, #4
    afd8:	e588205c 	str	r2, [r8, #92]	; 0x5c
    afdc:	e1c826b2 	strh	r2, [r8, #98]	; 0x62
    afe0:	e5c82064 	strb	r2, [r8, #100]	; 0x64
    afe4:	e5882048 	str	r2, [r8, #72]	; 0x48
    afe8:	e1c8b6b0 	strh	fp, [r8, #96]	; 0x60
    afec:	e588a04c 	str	sl, [r8, #76]	; 0x4c
    aff0:	e5884050 	str	r4, [r8, #80]	; 0x50
    aff4:	e588c054 	str	ip, [r8, #84]	; 0x54
    aff8:	e588c058 	str	ip, [r8, #88]	; 0x58
    affc:	e2414a01 	sub	r4, r1, #4096	; 0x1000
    b000:	e2483004 	sub	r3, r8, #4
    b004:	e288c040 	add	ip, r8, #64	; 0x40
    b008:	e5a3e004 	str	lr, [r3, #4]!
    b00c:	e153000c 	cmp	r3, ip
    b010:	e3a02000 	mov	r2, #0
    b014:	1afffffb 	bne	b008 <_ZN9Scheduler4mainEv+0x12c>
    b018:	e3a0b003 	mov	fp, #3
    b01c:	e1a0e002 	mov	lr, r2
    b020:	e59fa174 	ldr	sl, [pc, #372]	; b19c <_ZN9Scheduler4mainEv+0x2c0>
    b024:	e241cd41 	sub	ip, r1, #4160	; 0x1040
    b028:	e5883044 	str	r3, [r8, #68]	; 0x44
    b02c:	e24cc004 	sub	ip, ip, #4
    b030:	e587205c 	str	r2, [r7, #92]	; 0x5c
    b034:	e1c726b2 	strh	r2, [r7, #98]	; 0x62
    b038:	e5c72064 	strb	r2, [r7, #100]	; 0x64
    b03c:	e5872048 	str	r2, [r7, #72]	; 0x48
    b040:	e1c7b6b0 	strh	fp, [r7, #96]	; 0x60
    b044:	e587a04c 	str	sl, [r7, #76]	; 0x4c
    b048:	e5874050 	str	r4, [r7, #80]	; 0x50
    b04c:	e587c054 	str	ip, [r7, #84]	; 0x54
    b050:	e587c058 	str	ip, [r7, #88]	; 0x58
    b054:	e2414b06 	sub	r4, r1, #6144	; 0x1800
    b058:	e2473004 	sub	r3, r7, #4
    b05c:	e287c040 	add	ip, r7, #64	; 0x40
    b060:	e5a3e004 	str	lr, [r3, #4]!
    b064:	e153000c 	cmp	r3, ip
    b068:	e3a02000 	mov	r2, #0
    b06c:	1afffffb 	bne	b060 <_ZN9Scheduler4mainEv+0x184>
    b070:	e3a0b004 	mov	fp, #4
    b074:	e241ed61 	sub	lr, r1, #6208	; 0x1840
    b078:	e59fa120 	ldr	sl, [pc, #288]	; b1a0 <_ZN9Scheduler4mainEv+0x2c4>
    b07c:	e24ee004 	sub	lr, lr, #4
    b080:	e2411a02 	sub	r1, r1, #8192	; 0x2000
    b084:	e5873044 	str	r3, [r7, #68]	; 0x44
    b088:	e5801808 	str	r1, [r0, #2056]	; 0x808
    b08c:	e5854050 	str	r4, [r5, #80]	; 0x50
    b090:	e585e054 	str	lr, [r5, #84]	; 0x54
    b094:	e585e058 	str	lr, [r5, #88]	; 0x58
    b098:	e1c5b6b0 	strh	fp, [r5, #96]	; 0x60
    b09c:	e585a04c 	str	sl, [r5, #76]	; 0x4c
    b0a0:	e1a0c002 	mov	ip, r2
    b0a4:	e585205c 	str	r2, [r5, #92]	; 0x5c
    b0a8:	e1c526b2 	strh	r2, [r5, #98]	; 0x62
    b0ac:	e5c52064 	strb	r2, [r5, #100]	; 0x64
    b0b0:	e5852048 	str	r2, [r5, #72]	; 0x48
    b0b4:	e2453004 	sub	r3, r5, #4
    b0b8:	e2852040 	add	r2, r5, #64	; 0x40
    b0bc:	e5a3c004 	str	ip, [r3, #4]!
    b0c0:	e1530002 	cmp	r3, r2
    b0c4:	1afffffc 	bne	b0bc <_ZN9Scheduler4mainEv+0x1e0>
    b0c8:	e5853044 	str	r3, [r5, #68]	; 0x44
    b0cc:	e1a01009 	mov	r1, r9
    b0d0:	e5960020 	ldr	r0, [r6, #32]
    b0d4:	ebffff72 	bl	aea4 <_ZN9TaskQueue4PushEP7PCBlock>
    b0d8:	e1a01008 	mov	r1, r8
    b0dc:	e5960020 	ldr	r0, [r6, #32]
    b0e0:	ebffff6f 	bl	aea4 <_ZN9TaskQueue4PushEP7PCBlock>
    b0e4:	e1a01007 	mov	r1, r7
    b0e8:	e5960020 	ldr	r0, [r6, #32]
    b0ec:	ebffff6c 	bl	aea4 <_ZN9TaskQueue4PushEP7PCBlock>
    b0f0:	e5865014 	str	r5, [r6, #20]
    b0f4:	e596001c 	ldr	r0, [r6, #28]
    b0f8:	e3a0100a 	mov	r1, #10
    b0fc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    b100:	ebfff79c 	bl	8f78 <_ZN7Console9printCharEcj>
    b104:	e5963020 	ldr	r3, [r6, #32]
    b108:	e5933000 	ldr	r3, [r3]
    b10c:	e3530000 	cmp	r3, #0
    b110:	0a000012 	beq	b160 <_ZN9Scheduler4mainEv+0x284>
    b114:	e3a0100a 	mov	r1, #10
    b118:	e596501c 	ldr	r5, [r6, #28]
    b11c:	e59f4080 	ldr	r4, [pc, #128]	; b1a4 <_ZN9Scheduler4mainEv+0x2c8>
    b120:	e1a00005 	mov	r0, r5
    b124:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    b128:	ebfff792 	bl	8f78 <_ZN7Console9printCharEcj>
    b12c:	e5f41001 	ldrb	r1, [r4, #1]!
    b130:	e3510000 	cmp	r1, #0
    b134:	1afffff9 	bne	b120 <_ZN9Scheduler4mainEv+0x244>
    b138:	e59f3068 	ldr	r3, [pc, #104]	; b1a8 <_ZN9Scheduler4mainEv+0x2cc>
    b13c:	e5933004 	ldr	r3, [r3, #4]
    b140:	e5863008 	str	r3, [r6, #8]
    b144:	e1a00000 	nop			; (mov r0, r0)
    b148:	e1a00000 	nop			; (mov r0, r0)
    b14c:	e1a00000 	nop			; (mov r0, r0)
    b150:	e1a00000 	nop			; (mov r0, r0)
    b154:	e1a00000 	nop			; (mov r0, r0)
    b158:	e1a00006 	mov	r0, r6
    b15c:	ebfff98d 	bl	9798 <_ZN9Scheduler8ScheduleEv>
    b160:	e3a0100a 	mov	r1, #10
    b164:	e596501c 	ldr	r5, [r6, #28]
    b168:	e59f403c 	ldr	r4, [pc, #60]	; b1ac <_ZN9Scheduler4mainEv+0x2d0>
    b16c:	e1a00005 	mov	r0, r5
    b170:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    b174:	ebfff77f 	bl	8f78 <_ZN7Console9printCharEcj>
    b178:	e5f41001 	ldrb	r1, [r4, #1]!
    b17c:	e3510000 	cmp	r1, #0
    b180:	1afffff9 	bne	b16c <_ZN9Scheduler4mainEv+0x290>
    b184:	eaffffeb 	b	b138 <_ZN9Scheduler4mainEv+0x25c>
    b188:	0000b338 	andeq	fp, r0, r8, lsr r3
    b18c:	0000adcc 	andeq	sl, r0, ip, asr #27
    b190:	0000a5c0 	andeq	sl, r0, r0, asr #11
    b194:	0000a138 	andeq	sl, r0, r8, lsr r1
    b198:	0000a194 	muleq	r0, r4, r1
    b19c:	0000a1f4 	strdeq	sl, [r0], -r4
    b1a0:	0000a250 	andeq	sl, r0, r0, asr r2
    b1a4:	0000b348 	andeq	fp, r0, r8, asr #6
    b1a8:	20003000 	andcs	r3, r0, r0
    b1ac:	0000b354 	andeq	fp, r0, r4, asr r3
    b1b0:	746f420a 	strbtvc	r4, [pc], #-522	; b1b8 <_ZN9Scheduler4mainEv+0x2dc>
    b1b4:	31206e4f 	teqcc	r0, pc, asr #28
    b1b8:	6c757020 	ldclvs	0, cr7, [r5], #-128	; 0xffffff80
    b1bc:	6f646173 	svcvs	0x00646173
    b1c0:	00000000 	andeq	r0, r0, r0
    b1c4:	746f420a 	strbtvc	r4, [pc], #-522	; b1cc <_ZN9Scheduler4mainEv+0x2f0>
    b1c8:	32206e4f 	eorcc	r6, r0, #1264	; 0x4f0
    b1cc:	6c757020 	ldclvs	0, cr7, [r5], #-128	; 0xffffff80
    b1d0:	6f646173 	svcvs	0x00646173
    b1d4:	00000000 	andeq	r0, r0, r0
    b1d8:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
    b1dc:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
    b1e0:	6944205d 	stmdbvs	r4, {r0, r2, r3, r4, r6, sp}^
    b1e4:	63636572 	cmnvs	r3, #478150656	; 0x1c800000
    b1e8:	206e4f69 	rsbcs	r4, lr, r9, ror #30
    b1ec:	6d206564 	cfstr32vs	mvfx6, [r0, #-400]!	; 0xfffffe70
    b1f0:	726f6d65 	rsbvc	r6, pc, #6464	; 0x1940
    b1f4:	69206169 	stmdbvs	r0!, {r0, r3, r5, r6, r8, sp, lr}
    b1f8:	6c41766e 	mcrrvs	6, 6, r7, r1, cr14
    b1fc:	2e616469 	cdpcs	4, 6, cr6, cr1, cr9, {3}
    b200:	00000000 	andeq	r0, r0, r0
    b204:	6f72500a 	svcvs	0x0072500a
    b208:	6f736563 	svcvs	0x00736563
    b20c:	00000020 	andeq	r0, r0, r0, lsr #32
    b210:	6f5a0a0a 	svcvs	0x005a0a0a
    b214:	6420616e 	strtvs	r6, [r0], #-366	; 0x16e
    b218:	656d2065 	strbvs	r2, [sp, #-101]!	; 0x65
    b21c:	69726f6d 	ldmdbvs	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    b220:	61702061 	cmnvs	r0, r1, rrx
    b224:	73206172 	teqvc	r0, #-2147483620	; 0x8000001c
    b228:	61766c61 	cmnvs	r6, r1, ror #24
    b22c:	6f632072 	svcvs	0x00632072
    b230:	7865746e 	stmdavc	r5!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}^
    b234:	003a6f74 	eorseq	r6, sl, r4, ror pc
    b238:	4e4f445b 	mcrmi	4, 2, r4, cr15, cr11, {2}
    b23c:	00095d45 	andeq	r5, r9, r5, asr #26
    b240:	69736142 	ldmdbvs	r3!, {r1, r6, r8, sp, lr}^
    b244:	6e692063 	cdpvs	0, 6, cr2, cr9, cr3, {3}
    b248:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
    b24c:	00747075 	rsbseq	r7, r4, r5, ror r0
    b250:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
    b254:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
    b258:	6e49205d 	mcrvs	0, 2, r2, cr9, cr13, {2}
    b25c:	696c6176 	stmdbvs	ip!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    b260:	6f6c2064 	svcvs	0x006c2064
    b264:	6e696461 	cdpvs	4, 6, cr6, cr9, cr1, {3}
    b268:	61762067 	cmnvs	r6, r7, rrx
    b26c:	2e65756c 	cdpcs	5, 6, cr7, cr5, cr12, {3}
    b270:	00000000 	andeq	r0, r0, r0
    b274:	72654b0a 	rsbvc	r4, r5, #10240	; 0x2800
    b278:	536c656e 	cmnpl	ip, #461373440	; 0x1b800000
    b27c:	00203a50 	eoreq	r3, r0, r0, asr sl
    b280:	61530a0a 	cmpvs	r3, sl, lsl #20
    b284:	65206f63 	strvs	r6, [r0, #-3939]!	; 0xf63
    b288:	7270206c 	rsbsvc	r2, r0, #108	; 0x6c
    b28c:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
    b290:	00203a6f 	eoreq	r3, r0, pc, ror #20
    b294:	6e6f430a 	cdpvs	3, 6, cr4, cr15, cr10, {0}
    b298:	74736520 	ldrbtvc	r6, [r3], #-1312	; 0x520
    b29c:	3a6f6461 	bcc	1be4428 <_ZN9Scheduler4mainEv+0x1bd954c>
    b2a0:	00000020 	andeq	r0, r0, r0, lsr #32
    b2a4:	4243500a 	submi	r5, r3, #10
    b2a8:	61756720 	cmnvs	r5, r0, lsr #14
    b2ac:	64616472 	strbtvs	r6, [r1], #-1138	; 0x472
    b2b0:	6e65206f 	cdpvs	0, 6, cr2, cr5, cr15, {3}
    b2b4:	00203a20 	eoreq	r3, r0, r0, lsr #20
    b2b8:	72500a0a 	subsvc	r0, r0, #40960	; 0xa000
    b2bc:	6d69786f 	stclvs	8, cr7, [r9, #-444]!	; 0xfffffe44
    b2c0:	7270206f 	rsbsvc	r2, r0, #111	; 0x6f
    b2c4:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
    b2c8:	00203a6f 	eoreq	r3, r0, pc, ror #20
    b2cc:	6f72500a 	svcvs	0x0072500a
    b2d0:	6f736563 	svcvs	0x00736563
    b2d4:	20617920 	rsbcs	r7, r1, r0, lsr #18
    b2d8:	6d726574 	cfldr64vs	mvdx6, [r2, #-464]!	; 0xfffffe30
    b2dc:	64616e69 	strbtvs	r6, [r1], #-3689	; 0xe69
    b2e0:	45202e6f 	strmi	r2, [r0, #-3695]!	; 0xe6f
    b2e4:	696d696c 	stmdbvs	sp!, {r2, r3, r5, r6, r8, fp, sp, lr}^
    b2e8:	646e616e 	strbtvs	r6, [lr], #-366	; 0x16e
    b2ec:	6564206f 	strbvs	r2, [r4, #-111]!	; 0x6f
    b2f0:	20616c20 	rsbcs	r6, r1, r0, lsr #24
    b2f4:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0x96c
    b2f8:	2e2e2e61 	cdpcs	14, 2, cr2, cr14, cr1, {3}
    b2fc:	00000000 	andeq	r0, r0, r0
    b300:	4f4e0a0a 	svcmi	0x004e0a0a
    b304:	59414820 	stmdbpl	r1, {r5, fp, lr}^
    b308:	53414d20 	movtpl	r4, #7456	; 0x1d20
    b30c:	4f525020 	svcmi	0x00525020
    b310:	4f534543 	svcmi	0x00534543
    b314:	000a2e53 	andeq	r2, sl, r3, asr lr
    b318:	6175510a 	cmnvs	r5, sl, lsl #2
    b31c:	6d75746e 	cfldrdvs	mvd7, [r5, #-440]!	; 0xfffffe48
    b320:	00003a73 	andeq	r3, r0, r3, ror sl
    b324:	6569540a 	strbvs	r5, [r9, #-1034]!	; 0x40a
    b328:	206f706d 	rsbcs	r7, pc, sp, rrx
    b32c:	61746f74 	cmnvs	r4, r4, ror pc
    b330:	00203a6c 	eoreq	r3, r0, ip, ror #20
    b334:	00737520 	rsbseq	r7, r3, r0, lsr #10
    b338:	69614d0a 	stmdbvs	r1!, {r1, r3, r8, sl, fp, lr}^
    b33c:	6373206e 	cmnvs	r3, #110	; 0x6e
    b340:	75646568 	strbvc	r6, [r4, #-1384]!	; 0x568
    b344:	0072656c 	rsbseq	r6, r2, ip, ror #10
    b348:	206f4e0a 	rsbcs	r4, pc, sl, lsl #28
    b34c:	69636176 	stmdbvs	r3!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    b350:	00000061 	andeq	r0, r0, r1, rrx
    b354:	6361560a 	cmnvs	r1, #10485760	; 0xa00000
    b358:	00006169 	andeq	r6, r0, r9, ror #2
    b35c:	6d754e0a 	ldclvs	14, cr4, [r5, #-40]!	; 0xffffffd8
    b360:	20726562 	rsbscs	r6, r2, r2, ror #10
    b364:	6e20666f 	cfmadda32vs	mvax3, mvax6, mvfx0, mvfx15
    b368:	65207765 	strvs	r7, [r0, #-1893]!	; 0x765
    b36c:	656d656c 	strbvs	r6, [sp, #-1388]!	; 0x56c
    b370:	3a73746e 	bcc	1ce8530 <_ZN9Scheduler4mainEv+0x1cdd654>
    b374:	00000000 	andeq	r0, r0, r0
    b378:	77654e0a 	strbvc	r4, [r5, -sl, lsl #28]!
    b37c:	73615420 	cmnvc	r1, #32, 8	; 0x20000000
    b380:	6970206b 	ldmdbvs	r0!, {r0, r1, r3, r5, r6, sp}^
    b384:	00203a64 	eoreq	r3, r0, r4, ror #20
    b388:	77654e0a 	strbvc	r4, [r5, -sl, lsl #28]!
    b38c:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
    b390:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0x369
    b394:	6f7a2072 	svcvs	0x007a2072
    b398:	203a656e 	eorscs	r6, sl, lr, ror #10
    b39c:	00000000 	andeq	r0, r0, r0
    b3a0:	3d3d0a0a 	vldmdbcc	sp!, {s0-s9}
    b3a4:	6e616843 	cdpvs	8, 6, cr6, cr1, cr3, {2}
    b3a8:	676e6967 	strbvs	r6, [lr, -r7, ror #18]!
    b3ac:	206f7420 	rsbcs	r7, pc, r0, lsr #8
    b3b0:	4d205653 	stcmi	6, cr5, [r0, #-332]!	; 0xfffffeb4
    b3b4:	3d45444f 	cfstrdcc	mvd4, [r5, #-316]	; 0xfffffec4
    b3b8:	0000003d 	andeq	r0, r0, sp, lsr r0
    b3bc:	6d65520a 	sfmvs	f5, 2, [r5, #-40]!	; 0xffffffd8
    b3c0:	696e6961 	stmdbvs	lr!, {r0, r5, r6, r8, fp, sp, lr}^
    b3c4:	7020676e 	eorvc	r6, r0, lr, ror #14
    b3c8:	65636f72 	strbvs	r6, [r3, #-3954]!	; 0xf72
    b3cc:	73657373 	cmnvc	r5, #-872415231	; 0xcc000001
    b3d0:	0000003a 	andeq	r0, r0, sl, lsr r0
    b3d4:	3d3d0a0a 	vldmdbcc	sp!, {s0-s9}
    b3d8:	206e6946 	rsbcs	r6, lr, r6, asr #18
    b3dc:	70206564 	eorvc	r6, r0, r4, ror #10
    b3e0:	65636f72 	strbvs	r6, [r3, #-3954]!	; 0xf72
    b3e4:	3d3d6f73 	ldccc	15, cr6, [sp, #-460]!	; 0xfffffe34
    b3e8:	00000000 	andeq	r0, r0, r0
    b3ec:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
    b3f0:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
    b3f4:	3f3f205d 	svccc	0x003f205d
    b3f8:	00003f3f 	andeq	r3, r0, pc, lsr pc
    b3fc:	00005b0a 	andeq	r5, r0, sl, lsl #22
    b400:	0000205d 	andeq	r2, r0, sp, asr r0
    b404:	636f7250 	cmnvs	pc, #80, 4
    b408:	20737365 	rsbscs	r7, r3, r5, ror #6
    b40c:	2d202131 	stfcss	f2, [r0, #-196]!	; 0xffffff3c
    b410:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b414:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b418:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b41c:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b420:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b424:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b428:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b42c:	6c202d2d 	stcvs	13, cr2, [r0], #-180	; 0xffffff4c
    b430:	21676e6f 	cmncs	r7, pc, ror #28
    b434:	00000000 	andeq	r0, r0, r0
    b438:	636f7250 	cmnvs	pc, #80, 4
    b43c:	20737365 	rsbscs	r7, r3, r5, ror #6
    b440:	2d202132 	stfcss	f2, [r0, #-200]!	; 0xffffff38
    b444:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b448:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b44c:	6d2d2d2d 	stcvs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b450:	75696465 	strbvc	r6, [r9, #-1125]!	; 0x465
    b454:	0000006d 	andeq	r0, r0, sp, rrx
    b458:	636f7250 	cmnvs	pc, #80, 4
    b45c:	20737365 	rsbscs	r7, r3, r5, ror #6
    b460:	2d202133 	stfcss	f2, [r0, #-204]!	; 0xffffff34
    b464:	6f687320 	svcvs	0x00687320
    b468:	00007472 	andeq	r7, r0, r2, ror r4
    b46c:	636f7250 	cmnvs	pc, #80, 4
    b470:	20737365 	rsbscs	r7, r3, r5, ror #6
    b474:	2d202134 	stfcss	f2, [r0, #-208]!	; 0xffffff30
    b478:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
    b47c:	0000002d 	andeq	r0, r0, sp, lsr #32
    b480:	636c6557 	cmnvs	ip, #364904448	; 0x15c00000
    b484:	20656d6f 	rsbcs	r6, r5, pc, ror #26
    b488:	4d206f74 	stcmi	15, cr6, [r0, #-464]!	; 0xfffffe30
    b48c:	66646e69 	strbtvs	r6, [r4], -r9, ror #28
    b490:	6579616c 	ldrbvs	r6, [r9, #-364]!	; 0x16c
    b494:	61202c72 	teqvs	r0, r2, ror ip
    b498:	73756320 	cmnvc	r5, #32, 6	; 0x80000000
    b49c:	206d6f74 	rsbcs	r6, sp, r4, ror pc
    b4a0:	70736172 	rsbsvc	r6, r3, r2, ror r1
    b4a4:	72726562 	rsbsvc	r6, r2, #411041792	; 0x18800000
    b4a8:	69702079 	ldmdbvs	r0!, {r0, r3, r4, r5, r6, sp}^
    b4ac:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
    b4b0:	206c656e 	rsbcs	r6, ip, lr, ror #10
    b4b4:	74697277 	strbtvc	r7, [r9], #-631	; 0x277
    b4b8:	206e6574 	rsbcs	r6, lr, r4, ror r5
    b4bc:	43206e69 	teqmi	r0, #1680	; 0x690
    b4c0:	000a2b2b 	andeq	r2, sl, fp, lsr #22
    b4c4:	6c697542 	cfstr64vs	mvdx7, [r9], #-264	; 0xfffffef8
    b4c8:	00203a64 	eoreq	r3, r0, r4, ror #20
    b4cc:	2e302e30 	mrccs	14, 1, r2, cr0, cr0, {1}
    b4d0:	33363532 	teqcc	r6, #209715200	; 0xc800000
    b4d4:	00000000 	andeq	r0, r0, r0
    b4d8:	000a0a0a 	andeq	r0, sl, sl, lsl #20
    b4dc:	52455b0a 	subpl	r5, r5, #10240	; 0x2800
    b4e0:	5d524f52 	ldclpl	15, cr4, [r2, #-328]	; 0xfffffeb8
    b4e4:	6c615320 	stclvs	3, cr5, [r1], #-128	; 0xffffff80
    b4e8:	61206f74 	teqvs	r0, r4, ror pc
    b4ec:	72696420 	rsbvc	r6, r9, #32, 8	; 0x20000000
    b4f0:	69636365 	stmdbvs	r3!, {r0, r2, r5, r6, r8, r9, sp, lr}^
    b4f4:	30206e4f 	eorcc	r6, r0, pc, asr #28
    b4f8:	202e3078 	eorcs	r3, lr, r8, ror r0
    b4fc:	00000000 	andeq	r0, r0, r0
    b500:	74696157 	strbtvc	r6, [r9], #-343	; 0x157
    b504:	3a676e69 	bcc	19e6eb0 <_ZN9Scheduler4mainEv+0x19dbfd4>
    b508:	00000020 	andeq	r0, r0, r0, lsr #32
    b50c:	54535b0a 	ldrbpl	r5, [r3], #-2826	; 0xb0a
    b510:	49545241 	ldmdbmi	r4, {r0, r6, r9, ip, lr}^
    b514:	0a5d474e 	beq	175d254 <_ZN9Scheduler4mainEv+0x1752378>
    b518:	0000000a 	andeq	r0, r0, sl
    b51c:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xe49
    b520:	696c6169 	stmdbvs	ip!, {r0, r3, r5, r6, r8, sp, lr}^
    b524:	2064657a 	rsbcs	r6, r4, sl, ror r5
    b528:	65676170 	strbvs	r6, [r7, #-368]!	; 0x170
    b52c:	62617420 	rsbvs	r7, r1, #32, 8	; 0x20000000
    b530:	0000656c 	andeq	r6, r0, ip, ror #10
    b534:	3a434347 	bcc	10dc258 <_ZN9Scheduler4mainEv+0x10d137c>
    b538:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
    b53c:	6f542055 	svcvs	0x00542055
    b540:	20736c6f 	rsbscs	r6, r3, pc, ror #24
    b544:	20726f66 	rsbscs	r6, r2, r6, ror #30
    b548:	204d5241 	subcs	r5, sp, r1, asr #4
    b54c:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xd45
    b550:	64656464 	strbtvs	r6, [r5], #-1124	; 0x464
    b554:	6f725020 	svcvs	0x00725020
    b558:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
    b55c:	2973726f 	ldmdbcs	r3!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}^
    b560:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
    b564:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
    b568:	31343130 	teqcc	r4, r0, lsr r1
    b56c:	20393131 	eorscs	r3, r9, r1, lsr r1
    b570:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
    b574:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
    b578:	415b2029 	cmpmi	fp, r9, lsr #32
    b57c:	652f4d52 	strvs	r4, [pc, #-3410]!	; a832 <_ZL19kernel_default_font+0x272>
    b580:	6465626d 	strbtvs	r6, [r5], #-621	; 0x26d
    b584:	2d646564 	cfstr64cs	mvdx6, [r4, #-400]!	; 0xfffffe70
    b588:	2d395f34 	ldccs	15, cr5, [r9, #-208]!	; 0xffffff30
    b58c:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
    b590:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
    b594:	73697665 	cmnvc	r9, #105906176	; 0x6500000
    b598:	206e6f69 	rsbcs	r6, lr, r9, ror #30
    b59c:	32383132 	eorscc	r3, r8, #-2147483636	; 0x8000000c
    b5a0:	005d3837 	subseq	r3, sp, r7, lsr r8
    b5a4:	00002f41 	andeq	r2, r0, r1, asr #30
    b5a8:	61656100 	cmnvs	r5, r0, lsl #2
    b5ac:	01006962 	tsteq	r0, r2, ror #18
    b5b0:	00000025 	andeq	r0, r0, r5, lsr #32
    b5b4:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
    b5b8:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
    b5bc:	02060049 	andeq	r0, r6, #73	; 0x49
    b5c0:	01090108 	tsteq	r9, r8, lsl #2
    b5c4:	01140412 	tsteq	r4, r2, lsl r4
    b5c8:	03170115 	tsteq	r7, #1073741829	; 0x40000005
    b5cc:	01190118 	tsteq	r9, r8, lsl r1
    b5d0:	021e011a 	andseq	r0, lr, #-2147483642	; 0x80000006
