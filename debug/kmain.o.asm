
kmain.o:     file format elf32-littlearm


Disassembly of section .group:

00000000 <.group>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000006 	andeq	r0, r0, r6

Disassembly of section .text:

00000000 <_Z6divideiiPiS_.part.0>:
       0:	e3500000 	cmp	r0, #0
       4:	b2600000 	rsblt	r0, r0, #0
       8:	e3510000 	cmp	r1, #0
       c:	b2611000 	rsblt	r1, r1, #0
      10:	e3a0c000 	mov	ip, #0
      14:	e1500001 	cmp	r0, r1
      18:	e582c000 	str	ip, [r2]
      1c:	e92d0030 	push	{r4, r5}
      20:	e583c000 	str	ip, [r3]
      24:	ba00000d 	blt	60 <_Z6divideiiPiS_.part.0+0x60>
      28:	e5924000 	ldr	r4, [r2]
      2c:	e1a0c001 	mov	ip, r1
      30:	e2844001 	add	r4, r4, #1
      34:	e08cc001 	add	ip, ip, r1
      38:	e150000c 	cmp	r0, ip
      3c:	e1a05004 	mov	r5, r4
      40:	e2844001 	add	r4, r4, #1
      44:	aafffffa 	bge	34 <_Z6divideiiPiS_.part.0+0x34>
      48:	e5825000 	str	r5, [r2]
      4c:	e06cc000 	rsb	ip, ip, r0
      50:	e08c1001 	add	r1, ip, r1
      54:	e5831000 	str	r1, [r3]
      58:	e8bd0030 	pop	{r4, r5}
      5c:	e12fff1e 	bx	lr
      60:	e1a0c001 	mov	ip, r1
      64:	eafffff8 	b	4c <_Z6divideiiPiS_.part.0+0x4c>

00000068 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>:
      68:	e3500009 	cmp	r0, #9
      6c:	9a00000c 	bls	a4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2+0x3c>
      70:	e3a03000 	mov	r3, #0
      74:	e240000a 	sub	r0, r0, #10
      78:	e3500009 	cmp	r0, #9
      7c:	e2833001 	add	r3, r3, #1
      80:	8afffffb 	bhi	74 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2+0xc>
      84:	e1a03103 	lsl	r3, r3, #2
      88:	e2833202 	add	r3, r3, #536870912	; 0x20000000
      8c:	e2833602 	add	r3, r3, #2097152	; 0x200000
      90:	e5932000 	ldr	r2, [r3]
      94:	e0800080 	add	r0, r0, r0, lsl #1
      98:	e1821011 	orr	r1, r2, r1, lsl r0
      9c:	e5831000 	str	r1, [r3]
      a0:	e12fff1e 	bx	lr
      a4:	e59f3000 	ldr	r3, [pc]	; ac <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2+0x44>
      a8:	eafffff8 	b	90 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2+0x28>
      ac:	20200000 	eorcs	r0, r0, r0

000000b0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>:
      b0:	e350001f 	cmp	r0, #31
      b4:	8a000003 	bhi	c8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x18>
      b8:	e3510000 	cmp	r1, #0
      bc:	0a00000f 	beq	100 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x50>
      c0:	e59f3040 	ldr	r3, [pc, #64]	; 108 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x58>
      c4:	ea000003 	b	d8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x28>
      c8:	e3510000 	cmp	r1, #0
      cc:	0a000005 	beq	e8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x38>
      d0:	e59f3034 	ldr	r3, [pc, #52]	; 10c <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x5c>
      d4:	e2400020 	sub	r0, r0, #32
      d8:	e3a02001 	mov	r2, #1
      dc:	e1a00012 	lsl	r0, r2, r0
      e0:	e5830000 	str	r0, [r3]
      e4:	e12fff1e 	bx	lr
      e8:	e59f2020 	ldr	r2, [pc, #32]	; 110 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x60>
      ec:	e2400020 	sub	r0, r0, #32
      f0:	e3a03001 	mov	r3, #1
      f4:	e1a00013 	lsl	r0, r3, r0
      f8:	e5820000 	str	r0, [r2]
      fc:	e12fff1e 	bx	lr
     100:	e59f200c 	ldr	r2, [pc, #12]	; 114 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x64>
     104:	eafffff9 	b	f0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3+0x40>
     108:	2020001c 	eorcs	r0, r0, ip, lsl r0
     10c:	20200020 	eorcs	r0, r0, r0, lsr #32
     110:	2020002c 	eorcs	r0, r0, ip, lsr #32
     114:	20200028 	eorcs	r0, r0, r8, lsr #32

00000118 <_Z3absi>:
     118:	e3500000 	cmp	r0, #0
     11c:	b2600000 	rsblt	r0, r0, #0
     120:	e12fff1e 	bx	lr

00000124 <_Z15getNumberLengthiiPi>:
     124:	e3a03000 	mov	r3, #0
     128:	e5823000 	str	r3, [r2]
     12c:	e3a02001 	mov	r2, #1
     130:	ea000000 	b	138 <_Z15getNumberLengthiiPi+0x14>
     134:	e1a02003 	mov	r2, r3
     138:	e0030291 	mul	r3, r1, r2
     13c:	e1530000 	cmp	r3, r0
     140:	bafffffb 	blt	134 <_Z15getNumberLengthiiPi+0x10>
     144:	e1a00002 	mov	r0, r2
     148:	e12fff1e 	bx	lr

0000014c <_Z15getNumberLengthii>:
     14c:	e3a02001 	mov	r2, #1
     150:	ea000000 	b	158 <_Z15getNumberLengthii+0xc>
     154:	e1a02003 	mov	r2, r3
     158:	e0030192 	mul	r3, r2, r1
     15c:	e1500003 	cmp	r0, r3
     160:	cafffffb 	bgt	154 <_Z15getNumberLengthii+0x8>
     164:	e1a00002 	mov	r0, r2
     168:	e12fff1e 	bx	lr

0000016c <_Z15getNumberLengthi>:
     16c:	e3a03001 	mov	r3, #1
     170:	ea000000 	b	178 <_Z15getNumberLengthi+0xc>
     174:	e1a03002 	mov	r3, r2
     178:	e0832103 	add	r2, r3, r3, lsl #2
     17c:	e1a02082 	lsl	r2, r2, #1
     180:	e1500002 	cmp	r0, r2
     184:	cafffffa 	bgt	174 <_Z15getNumberLengthi+0x8>
     188:	e1a00003 	mov	r0, r3
     18c:	e12fff1e 	bx	lr

00000190 <_Z6divideiiPiS_>:
     190:	e251c000 	subs	ip, r1, #0
     194:	e92d0070 	push	{r4, r5, r6}
     198:	e1a04003 	mov	r4, r3
     19c:	0a000005 	beq	1b8 <_Z6divideiiPiS_+0x28>
     1a0:	e35c0001 	cmp	ip, #1
     1a4:	03a03000 	moveq	r3, #0
     1a8:	05820000 	streq	r0, [r2]
     1ac:	05843000 	streq	r3, [r4]
     1b0:	18bd0070 	popne	{r4, r5, r6}
     1b4:	1affff91 	bne	0 <_Z6divideiiPiS_.part.0>
     1b8:	e8bd0070 	pop	{r4, r5, r6}
     1bc:	e12fff1e 	bx	lr

000001c0 <_Z6divideii>:
     1c0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     1c4:	e3a03000 	mov	r3, #0
     1c8:	e24dd00c 	sub	sp, sp, #12
     1cc:	e2512000 	subs	r2, r1, #0
     1d0:	e58d3000 	str	r3, [sp]
     1d4:	e58d3004 	str	r3, [sp, #4]
     1d8:	e1a03000 	mov	r3, r0
     1dc:	01a00002 	moveq	r0, r2
     1e0:	0a000006 	beq	200 <_Z6divideii+0x40>
     1e4:	e3520001 	cmp	r2, #1
     1e8:	01a00003 	moveq	r0, r3
     1ec:	0a000003 	beq	200 <_Z6divideii+0x40>
     1f0:	e1a0200d 	mov	r2, sp
     1f4:	e28d3004 	add	r3, sp, #4
     1f8:	ebffff80 	bl	0 <_Z6divideiiPiS_.part.0>
     1fc:	e59d0000 	ldr	r0, [sp]
     200:	e28dd00c 	add	sp, sp, #12
     204:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     208:	e12fff1e 	bx	lr

0000020c <_Z6moduloii>:
     20c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     210:	e3a03000 	mov	r3, #0
     214:	e24dd00c 	sub	sp, sp, #12
     218:	e3510001 	cmp	r1, #1
     21c:	e58d3000 	str	r3, [sp]
     220:	e58d3004 	str	r3, [sp, #4]
     224:	91a00003 	movls	r0, r3
     228:	9a000003 	bls	23c <_Z6moduloii+0x30>
     22c:	e1a0200d 	mov	r2, sp
     230:	e28d3004 	add	r3, sp, #4
     234:	ebffff71 	bl	0 <_Z6divideiiPiS_.part.0>
     238:	e59d0004 	ldr	r0, [sp, #4]
     23c:	e28dd00c 	add	sp, sp, #12
     240:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     244:	e12fff1e 	bx	lr

00000248 <_Z5allocj>:
     248:	e59f3074 	ldr	r3, [pc, #116]	; 2c4 <_Z5allocj+0x7c>
     24c:	e5933000 	ldr	r3, [r3]
     250:	e5d32004 	ldrb	r2, [r3, #4]
     254:	e3520000 	cmp	r2, #0
     258:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     25c:	e1a0c000 	mov	ip, r0
     260:	0a000003 	beq	274 <_Z5allocj+0x2c>
     264:	e5933000 	ldr	r3, [r3]
     268:	e5d32004 	ldrb	r2, [r3, #4]
     26c:	e3520000 	cmp	r2, #0
     270:	1afffffb 	bne	264 <_Z5allocj+0x1c>
     274:	e5932008 	ldr	r2, [r3, #8]
     278:	e593000c 	ldr	r0, [r3, #12]
     27c:	e35c0000 	cmp	ip, #0
     280:	e0820100 	add	r0, r2, r0, lsl #2
     284:	e3a01000 	mov	r1, #0
     288:	e583c40c 	str	ip, [r3, #1036]	; 0x40c
     28c:	e5830408 	str	r0, [r3, #1032]	; 0x408
     290:	e5c31404 	strb	r1, [r3, #1028]	; 0x404
     294:	e2834b01 	add	r4, r3, #1024	; 0x400
     298:	1080c10c 	addne	ip, r0, ip, lsl #2
     29c:	11a02000 	movne	r2, r0
     2a0:	0a000002 	beq	2b0 <_Z5allocj+0x68>
     2a4:	e4821004 	str	r1, [r2], #4
     2a8:	e152000c 	cmp	r2, ip
     2ac:	1afffffc 	bne	2a4 <_Z5allocj+0x5c>
     2b0:	e3a02001 	mov	r2, #1
     2b4:	e5834000 	str	r4, [r3]
     2b8:	e5c32004 	strb	r2, [r3, #4]
     2bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     2c0:	e12fff1e 	bx	lr
     2c4:	00000000 	andeq	r0, r0, r0

000002c8 <_Z15init_page_tablev>:
     2c8:	e59f0018 	ldr	r0, [pc, #24]	; 2e8 <_Z15init_page_tablev+0x20>
     2cc:	e3a0380f 	mov	r3, #983040	; 0xf0000
     2d0:	e3a01000 	mov	r1, #0
     2d4:	e3a02aff 	mov	r2, #1044480	; 0xff000
     2d8:	e5803000 	str	r3, [r0]
     2dc:	e5c31004 	strb	r1, [r3, #4]
     2e0:	e5832008 	str	r2, [r3, #8]
     2e4:	e12fff1e 	bx	lr
     2e8:	00000000 	andeq	r0, r0, r0

000002ec <_Z10irq_enablev>:
     2ec:	e59f300c 	ldr	r3, [pc, #12]	; 300 <_Z10irq_enablev+0x14>
     2f0:	e3a0281e 	mov	r2, #1966080	; 0x1e0000
     2f4:	e5832214 	str	r2, [r3, #532]	; 0x214
     2f8:	e3a00001 	mov	r0, #1
     2fc:	e12fff1e 	bx	lr
     300:	2000b000 	andcs	fp, r0, r0

00000304 <_Z11irq_disablev>:
     304:	e59f300c 	ldr	r3, [pc, #12]	; 318 <_Z11irq_disablev+0x14>
     308:	e3a0281e 	mov	r2, #1966080	; 0x1e0000
     30c:	e5832220 	str	r2, [r3, #544]	; 0x220
     310:	e3a00001 	mov	r0, #1
     314:	e12fff1e 	bx	lr
     318:	2000b000 	andcs	fp, r0, r0

0000031c <_Z16irq_enable_timerv>:
     31c:	e59f300c 	ldr	r3, [pc, #12]	; 330 <_Z16irq_enable_timerv+0x14>
     320:	e3a02008 	mov	r2, #8
     324:	e5832210 	str	r2, [r3, #528]	; 0x210
     328:	e3a00001 	mov	r0, #1
     32c:	e12fff1e 	bx	lr
     330:	2000b000 	andcs	fp, r0, r0

00000334 <_Z22irq_enable_kerneltimerv>:
     334:	e59f300c 	ldr	r3, [pc, #12]	; 348 <_Z22irq_enable_kerneltimerv+0x14>
     338:	e3a02002 	mov	r2, #2
     33c:	e5832210 	str	r2, [r3, #528]	; 0x210
     340:	e3a00001 	mov	r0, #1
     344:	e12fff1e 	bx	lr
     348:	2000b000 	andcs	fp, r0, r0

0000034c <_Z17irq_disable_timerv>:
     34c:	e59f300c 	ldr	r3, [pc, #12]	; 360 <_Z17irq_disable_timerv+0x14>
     350:	e3a02008 	mov	r2, #8
     354:	e583221c 	str	r2, [r3, #540]	; 0x21c
     358:	e3a00001 	mov	r0, #1
     35c:	e12fff1e 	bx	lr
     360:	2000b000 	andcs	fp, r0, r0

00000364 <_Z23irq_disable_kerneltimerv>:
     364:	e59f300c 	ldr	r3, [pc, #12]	; 378 <_Z23irq_disable_kerneltimerv+0x14>
     368:	e3a02002 	mov	r2, #2
     36c:	e583221c 	str	r2, [r3, #540]	; 0x21c
     370:	e3a00001 	mov	r0, #1
     374:	e12fff1e 	bx	lr
     378:	2000b000 	andcs	fp, r0, r0

0000037c <_ZN12RaspberryLib5GET32Ej>:
     37c:	e5900000 	ldr	r0, [r0]
     380:	e12fff1e 	bx	lr

00000384 <_ZN12RaspberryLib5PUT32Ejj>:
     384:	e5801000 	str	r1, [r0]
     388:	e12fff1e 	bx	lr

0000038c <_ZN12RaspberryLib4GET4Ej>:
     38c:	e5d00000 	ldrb	r0, [r0]
     390:	e12fff1e 	bx	lr

00000394 <_ZN12RaspberryLib4PUT4Ejc>:
     394:	e5c01000 	strb	r1, [r0]
     398:	e12fff1e 	bx	lr

0000039c <_ZN12RaspberryLib7SetGPIOEjj>:
     39c:	e59f2064 	ldr	r2, [pc, #100]	; 408 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
     3a0:	e59f3064 	ldr	r3, [pc, #100]	; 40c <_ZN12RaspberryLib7SetGPIOEjj+0x70>
     3a4:	e3510001 	cmp	r1, #1
     3a8:	11a01002 	movne	r1, r2
     3ac:	01a01003 	moveq	r1, r3
     3b0:	e350000a 	cmp	r0, #10
     3b4:	9a000010 	bls	3fc <_ZN12RaspberryLib7SetGPIOEjj+0x60>
     3b8:	e3a03000 	mov	r3, #0
     3bc:	e240000a 	sub	r0, r0, #10
     3c0:	e350000a 	cmp	r0, #10
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	8afffffb 	bhi	3bc <_ZN12RaspberryLib7SetGPIOEjj+0x20>
     3cc:	e1a0c103 	lsl	ip, r3, #2
     3d0:	e3a02001 	mov	r2, #1
     3d4:	e1a03203 	lsl	r3, r3, #4
     3d8:	e1a03312 	lsl	r3, r2, r3
     3dc:	e28cc202 	add	ip, ip, #536870912	; 0x20000000
     3e0:	e28cc602 	add	ip, ip, #2097152	; 0x200000
     3e4:	e0800080 	add	r0, r0, r0, lsl #1
     3e8:	e3a02001 	mov	r2, #1
     3ec:	e1a00012 	lsl	r0, r2, r0
     3f0:	e58c0000 	str	r0, [ip]
     3f4:	e5813000 	str	r3, [r1]
     3f8:	e12fff1e 	bx	lr
     3fc:	e59fc00c 	ldr	ip, [pc, #12]	; 410 <_ZN12RaspberryLib7SetGPIOEjj+0x74>
     400:	e3a03001 	mov	r3, #1
     404:	eafffff6 	b	3e4 <_ZN12RaspberryLib7SetGPIOEjj+0x48>
     408:	2020001c 	eorcs	r0, r0, ip, lsl r0
     40c:	20200028 	eorcs	r0, r0, r8, lsr #32
     410:	20200000 	eorcs	r0, r0, r0

00000414 <_ZN12RaspberryLib15SetGPIOfunctionEjj>:
     414:	e3500035 	cmp	r0, #53	; 0x35
     418:	93510007 	cmpls	r1, #7
     41c:	812fff1e 	bxhi	lr
     420:	eaffff10 	b	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>

00000424 <_ZN12RaspberryLib12SetGPIOvalueEjb>:
     424:	e3500035 	cmp	r0, #53	; 0x35
     428:	812fff1e 	bxhi	lr
     42c:	eaffff1f 	b	b0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>

00000430 <_ZN12RaspberryLib13ReadGPIOvalueEj>:
     430:	e3500035 	cmp	r0, #53	; 0x35
     434:	8a000006 	bhi	454 <_ZN12RaspberryLib13ReadGPIOvalueEj+0x24>
     438:	e59f201c 	ldr	r2, [pc, #28]	; 45c <_ZN12RaspberryLib13ReadGPIOvalueEj+0x2c>
     43c:	e59f301c 	ldr	r3, [pc, #28]	; 460 <_ZN12RaspberryLib13ReadGPIOvalueEj+0x30>
     440:	e350001f 	cmp	r0, #31
     444:	81a00002 	movhi	r0, r2
     448:	91a00003 	movls	r0, r3
     44c:	e5900000 	ldr	r0, [r0]
     450:	e12fff1e 	bx	lr
     454:	e3a00000 	mov	r0, #0
     458:	e12fff1e 	bx	lr
     45c:	20200038 	eorcs	r0, r0, r8, lsr r0
     460:	20200034 	eorcs	r0, r0, r4, lsr r0

00000464 <_ZN12RaspberryLib6SetLEDEjb>:
     464:	e2400001 	sub	r0, r0, #1
     468:	e92d4010 	push	{r4, lr}
     46c:	e1a04001 	mov	r4, r1
     470:	e3500005 	cmp	r0, #5
     474:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
     478:	ea00002f 	b	53c <_ZN12RaspberryLib6SetLEDEjb+0xd8>
     47c:	000004b0 			; <UNDEFINED> instruction: 0x000004b0
     480:	000004cc 	andeq	r0, r0, ip, asr #9
     484:	000004e8 	andeq	r0, r0, r8, ror #9
     488:	00000504 	andeq	r0, r0, r4, lsl #10
     48c:	00000520 	andeq	r0, r0, r0, lsr #10
     490:	00000494 	muleq	r0, r4, r4
     494:	e3a0001b 	mov	r0, #27
     498:	e3a01001 	mov	r1, #1
     49c:	ebfffef1 	bl	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
     4a0:	e1a01004 	mov	r1, r4
     4a4:	e3a0001b 	mov	r0, #27
     4a8:	e8bd4010 	pop	{r4, lr}
     4ac:	eafffeff 	b	b0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
     4b0:	e3a00009 	mov	r0, #9
     4b4:	e3a01001 	mov	r1, #1
     4b8:	ebfffeea 	bl	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
     4bc:	e1a01004 	mov	r1, r4
     4c0:	e3a00009 	mov	r0, #9
     4c4:	e8bd4010 	pop	{r4, lr}
     4c8:	eafffef8 	b	b0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
     4cc:	e3a0000a 	mov	r0, #10
     4d0:	e3a01001 	mov	r1, #1
     4d4:	ebfffee3 	bl	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
     4d8:	e1a01004 	mov	r1, r4
     4dc:	e3a0000a 	mov	r0, #10
     4e0:	e8bd4010 	pop	{r4, lr}
     4e4:	eafffef1 	b	b0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
     4e8:	e3a0000b 	mov	r0, #11
     4ec:	e3a01001 	mov	r1, #1
     4f0:	ebfffedc 	bl	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
     4f4:	e1a01004 	mov	r1, r4
     4f8:	e3a0000b 	mov	r0, #11
     4fc:	e8bd4010 	pop	{r4, lr}
     500:	eafffeea 	b	b0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
     504:	e3a00011 	mov	r0, #17
     508:	e3a01001 	mov	r1, #1
     50c:	ebfffed5 	bl	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
     510:	e1a01004 	mov	r1, r4
     514:	e3a00011 	mov	r0, #17
     518:	e8bd4010 	pop	{r4, lr}
     51c:	eafffee3 	b	b0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
     520:	e3a00016 	mov	r0, #22
     524:	e3a01001 	mov	r1, #1
     528:	ebfffece 	bl	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
     52c:	e1a01004 	mov	r1, r4
     530:	e3a00016 	mov	r0, #22
     534:	e8bd4010 	pop	{r4, lr}
     538:	eafffedc 	b	b0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.3>
     53c:	e8bd4010 	pop	{r4, lr}
     540:	e12fff1e 	bx	lr

00000544 <_ZN12RaspberryLib10SetButtonsEb>:
     544:	e3500000 	cmp	r0, #0
     548:	e59f3010 	ldr	r3, [pc, #16]	; 560 <_ZN12RaspberryLib10SetButtonsEb+0x1c>
     54c:	13a0200c 	movne	r2, #12
     550:	05932058 	ldreq	r2, [r3, #88]	; 0x58
     554:	15832058 	strne	r2, [r3, #88]	; 0x58
     558:	05830058 	streq	r0, [r3, #88]	; 0x58
     55c:	e12fff1e 	bx	lr
     560:	20200000 	eorcs	r0, r0, r0

00000564 <_ZN12RaspberryLib10TestBuzzerEv>:
     564:	e92d4008 	push	{r3, lr}
     568:	e3a01001 	mov	r1, #1
     56c:	e3a00004 	mov	r0, #4
     570:	ebfffebc 	bl	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
     574:	e59f2040 	ldr	r2, [pc, #64]	; 5bc <_ZN12RaspberryLib10TestBuzzerEv+0x58>
     578:	e3a03010 	mov	r3, #16
     57c:	e582301c 	str	r3, [r2, #28]
     580:	e59f1038 	ldr	r1, [pc, #56]	; 5c0 <_ZN12RaspberryLib10TestBuzzerEv+0x5c>
     584:	e2511001 	subs	r1, r1, #1
     588:	e582301c 	str	r3, [r2, #28]
     58c:	e59f0028 	ldr	r0, [pc, #40]	; 5bc <_ZN12RaspberryLib10TestBuzzerEv+0x58>
     590:	e582301c 	str	r3, [r2, #28]
     594:	e3a0c010 	mov	ip, #16
     598:	e582301c 	str	r3, [r2, #28]
     59c:	e582301c 	str	r3, [r2, #28]
     5a0:	e5823028 	str	r3, [r2, #40]	; 0x28
     5a4:	e5823028 	str	r3, [r2, #40]	; 0x28
     5a8:	e5823028 	str	r3, [r2, #40]	; 0x28
     5ac:	1afffff4 	bne	584 <_ZN12RaspberryLib10TestBuzzerEv+0x20>
     5b0:	e580c028 	str	ip, [r0, #40]	; 0x28
     5b4:	e8bd4008 	pop	{r3, lr}
     5b8:	e12fff1e 	bx	lr
     5bc:	20200000 	eorcs	r0, r0, r0
     5c0:	000186a1 	andeq	r8, r1, r1, lsr #13

000005c4 <_ZN12RaspberryLib14setTimerKernelEj>:
     5c4:	e59f3028 	ldr	r3, [pc, #40]	; 5f4 <_ZN12RaspberryLib14setTimerKernelEj+0x30>
     5c8:	e0601280 	rsb	r1, r0, r0, lsl #5
     5cc:	e5932004 	ldr	r2, [r3, #4]
     5d0:	e0800101 	add	r0, r0, r1, lsl #2
     5d4:	e59fc01c 	ldr	ip, [pc, #28]	; 5f8 <_ZN12RaspberryLib14setTimerKernelEj+0x34>
     5d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5dc:	e0822180 	add	r2, r2, r0, lsl #3
     5e0:	e3a04001 	mov	r4, #1
     5e4:	e5832010 	str	r2, [r3, #16]
     5e8:	e5cc4004 	strb	r4, [ip, #4]
     5ec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr
     5f4:	20003000 	andcs	r3, r0, r0
     5f8:	00000000 	andeq	r0, r0, r0

000005fc <_ZN12RaspberryLib8setTimerEj>:
     5fc:	e59f3028 	ldr	r3, [pc, #40]	; 62c <_ZN12RaspberryLib8setTimerEj+0x30>
     600:	e0601280 	rsb	r1, r0, r0, lsl #5
     604:	e5932004 	ldr	r2, [r3, #4]
     608:	e0800101 	add	r0, r0, r1, lsl #2
     60c:	e59fc01c 	ldr	ip, [pc, #28]	; 630 <_ZN12RaspberryLib8setTimerEj+0x34>
     610:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     614:	e0822180 	add	r2, r2, r0, lsl #3
     618:	e3a04001 	mov	r4, #1
     61c:	e5832018 	str	r2, [r3, #24]
     620:	e5cc4005 	strb	r4, [ip, #5]
     624:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     628:	e12fff1e 	bx	lr
     62c:	20003000 	andcs	r3, r0, r0
     630:	00000000 	andeq	r0, r0, r0

00000634 <_ZN12RaspberryLib12CheckCounterEv>:
     634:	e59f3004 	ldr	r3, [pc, #4]	; 640 <_ZN12RaspberryLib12CheckCounterEv+0xc>
     638:	e5930004 	ldr	r0, [r3, #4]
     63c:	e12fff1e 	bx	lr
     640:	20003000 	andcs	r3, r0, r0

00000644 <_ZN12RaspberryLib9WaitQuickEj>:
     644:	e59f2014 	ldr	r2, [pc, #20]	; 660 <_ZN12RaspberryLib9WaitQuickEj+0x1c>
     648:	e5923004 	ldr	r3, [r2, #4]
     64c:	e0800003 	add	r0, r0, r3
     650:	e5923004 	ldr	r3, [r2, #4]
     654:	e1500003 	cmp	r0, r3
     658:	8afffffc 	bhi	650 <_ZN12RaspberryLib9WaitQuickEj+0xc>
     65c:	e12fff1e 	bx	lr
     660:	20003000 	andcs	r3, r0, r0

00000664 <_ZN12RaspberryLib4WaitEj>:
     664:	e59f101c 	ldr	r1, [pc, #28]	; 688 <_ZN12RaspberryLib4WaitEj+0x24>
     668:	e0602280 	rsb	r2, r0, r0, lsl #5
     66c:	e5913004 	ldr	r3, [r1, #4]
     670:	e0800102 	add	r0, r0, r2, lsl #2
     674:	e0832180 	add	r2, r3, r0, lsl #3
     678:	e5913004 	ldr	r3, [r1, #4]
     67c:	e1520003 	cmp	r2, r3
     680:	8afffffc 	bhi	678 <_ZN12RaspberryLib4WaitEj+0x14>
     684:	e12fff1e 	bx	lr
     688:	20003000 	andcs	r3, r0, r0

0000068c <_ZN12RaspberryLib5BlinkEjj>:
     68c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
     690:	e2506000 	subs	r6, r0, #0
     694:	0a000016 	beq	6f4 <_ZN12RaspberryLib5BlinkEjj+0x68>
     698:	e0613281 	rsb	r3, r1, r1, lsl #5
     69c:	e0811103 	add	r1, r1, r3, lsl #2
     6a0:	e59f4054 	ldr	r4, [pc, #84]	; 6fc <_ZN12RaspberryLib5BlinkEjj+0x70>
     6a4:	e1a07181 	lsl	r7, r1, #3
     6a8:	e3a00010 	mov	r0, #16
     6ac:	e3a01001 	mov	r1, #1
     6b0:	ebfffffe 	bl	39c <_ZN12RaspberryLib7SetGPIOEjj>
     6b4:	e5942004 	ldr	r2, [r4, #4]
     6b8:	e0872002 	add	r2, r7, r2
     6bc:	e5943004 	ldr	r3, [r4, #4]
     6c0:	e1520003 	cmp	r2, r3
     6c4:	e59f5030 	ldr	r5, [pc, #48]	; 6fc <_ZN12RaspberryLib5BlinkEjj+0x70>
     6c8:	8afffffb 	bhi	6bc <_ZN12RaspberryLib5BlinkEjj+0x30>
     6cc:	e3a00010 	mov	r0, #16
     6d0:	e3a01000 	mov	r1, #0
     6d4:	ebfffffe 	bl	39c <_ZN12RaspberryLib7SetGPIOEjj>
     6d8:	e5952004 	ldr	r2, [r5, #4]
     6dc:	e0872002 	add	r2, r7, r2
     6e0:	e5943004 	ldr	r3, [r4, #4]
     6e4:	e1520003 	cmp	r2, r3
     6e8:	8afffffc 	bhi	6e0 <_ZN12RaspberryLib5BlinkEjj+0x54>
     6ec:	e2566001 	subs	r6, r6, #1
     6f0:	1affffec 	bne	6a8 <_ZN12RaspberryLib5BlinkEjj+0x1c>
     6f4:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
     6f8:	e12fff1e 	bx	lr
     6fc:	20003000 	andcs	r3, r0, r0

00000700 <_ZN12RaspberryLib7PiFaultEPKc>:
     700:	e3a00004 	mov	r0, #4
     704:	e3a010c8 	mov	r1, #200	; 0xc8
     708:	eafffffe 	b	68c <_ZN12RaspberryLib5BlinkEjj>

0000070c <_ZN12RaspberryLib12MailboxWriteEcj>:
     70c:	e59f203c 	ldr	r2, [pc, #60]	; 750 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
     710:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
     714:	e3530000 	cmp	r3, #0
     718:	bafffffc 	blt	710 <_ZN12RaspberryLib12MailboxWriteEcj+0x4>
     71c:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     720:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     724:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     728:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     72c:	e59f301c 	ldr	r3, [pc, #28]	; 750 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
     730:	e3c1100f 	bic	r1, r1, #15
     734:	e1800001 	orr	r0, r0, r1
     738:	e58308a0 	str	r0, [r3, #2208]	; 0x8a0
     73c:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     740:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     744:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     748:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     74c:	e12fff1e 	bx	lr
     750:	2000b000 	andcs	fp, r0, r0

00000754 <_ZN12RaspberryLib12MailboxCheckEc>:
     754:	e92d4010 	push	{r4, lr}
     758:	e59f2070 	ldr	r2, [pc, #112]	; 7d0 <_ZN12RaspberryLib12MailboxCheckEc+0x7c>
     75c:	e59f4070 	ldr	r4, [pc, #112]	; 7d4 <_ZN12RaspberryLib12MailboxCheckEc+0x80>
     760:	e3a01000 	mov	r1, #0
     764:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
     768:	e3130101 	tst	r3, #1073741824	; 0x40000000
     76c:	1a00000e 	bne	7ac <_ZN12RaspberryLib12MailboxCheckEc+0x58>
     770:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     774:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     778:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     77c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     780:	e5923880 	ldr	r3, [r2, #2176]	; 0x880
     784:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     788:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     78c:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     790:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     794:	e203c00f 	and	ip, r3, #15
     798:	e15c0000 	cmp	ip, r0
     79c:	1afffff0 	bne	764 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
     7a0:	e3c3000f 	bic	r0, r3, #15
     7a4:	e8bd4010 	pop	{r4, lr}
     7a8:	e12fff1e 	bx	lr
     7ac:	e1510004 	cmp	r1, r4
     7b0:	e2811001 	add	r1, r1, #1
     7b4:	9affffea 	bls	764 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
     7b8:	e3a00004 	mov	r0, #4
     7bc:	e3a010c8 	mov	r1, #200	; 0xc8
     7c0:	ebfffffe 	bl	68c <_ZN12RaspberryLib5BlinkEjj>
     7c4:	e3e00000 	mvn	r0, #0
     7c8:	e8bd4010 	pop	{r4, lr}
     7cc:	e12fff1e 	bx	lr
     7d0:	2000b000 	andcs	fp, r0, r0
     7d4:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>

000007d8 <_ZN12RaspberryLib18AcquireFrameBufferEjj>:
     7d8:	e3a03a02 	mov	r3, #8192	; 0x2000
     7dc:	e3a02000 	mov	r2, #0
     7e0:	e3a0c018 	mov	ip, #24
     7e4:	e92d4010 	push	{r4, lr}
     7e8:	e8830003 	stm	r3, {r0, r1}
     7ec:	e5830008 	str	r0, [r3, #8]
     7f0:	e583100c 	str	r1, [r3, #12]
     7f4:	e583c014 	str	ip, [r3, #20]
     7f8:	e5832010 	str	r2, [r3, #16]
     7fc:	e5832018 	str	r2, [r3, #24]
     800:	e583201c 	str	r2, [r3, #28]
     804:	e5832020 	str	r2, [r3, #32]
     808:	e5832024 	str	r2, [r3, #36]	; 0x24
     80c:	e5c32028 	strb	r2, [r3, #40]	; 0x28
     810:	e3a00001 	mov	r0, #1
     814:	e59f107c 	ldr	r1, [pc, #124]	; 898 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xc0>
     818:	ebfffffe 	bl	70c <_ZN12RaspberryLib12MailboxWriteEcj>
     81c:	e59f4078 	ldr	r4, [pc, #120]	; 89c <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xc4>
     820:	e3a00001 	mov	r0, #1
     824:	ebfffffe 	bl	754 <_ZN12RaspberryLib12MailboxCheckEc>
     828:	e3500000 	cmp	r0, #0
     82c:	0a000011 	beq	878 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa0>
     830:	e2544001 	subs	r4, r4, #1
     834:	2afffff9 	bcs	820 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x48>
     838:	e3a03a02 	mov	r3, #8192	; 0x2000
     83c:	e5932020 	ldr	r2, [r3, #32]
     840:	e3520000 	cmp	r2, #0
     844:	0a00000d 	beq	880 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa8>
     848:	e5931010 	ldr	r1, [r3, #16]
     84c:	e3510000 	cmp	r1, #0
     850:	0a00000a 	beq	880 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa8>
     854:	e3520101 	cmp	r2, #1073741824	; 0x40000000
     858:	e3a01001 	mov	r1, #1
     85c:	e5c31028 	strb	r1, [r3, #40]	; 0x28
     860:	82822103 	addhi	r2, r2, #-1073741824	; 0xc0000000
     864:	e3a03a02 	mov	r3, #8192	; 0x2000
     868:	e3a00a02 	mov	r0, #8192	; 0x2000
     86c:	e5832020 	str	r2, [r3, #32]
     870:	e8bd4010 	pop	{r4, lr}
     874:	e12fff1e 	bx	lr
     878:	e3540000 	cmp	r4, #0
     87c:	1affffed 	bne	838 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
     880:	e3a00004 	mov	r0, #4
     884:	e3a010c8 	mov	r1, #200	; 0xc8
     888:	ebfffffe 	bl	68c <_ZN12RaspberryLib5BlinkEjj>
     88c:	e3a00a02 	mov	r0, #8192	; 0x2000
     890:	e8bd4010 	pop	{r4, lr}
     894:	e12fff1e 	bx	lr
     898:	40002000 	andmi	r2, r0, r0
     89c:	00002710 	andeq	r2, r0, r0, lsl r7

000008a0 <_ZN11gpu2dCanvas15initFrameBufferEv>:
     8a0:	e5901004 	ldr	r1, [r0, #4]
     8a4:	e92d4010 	push	{r4, lr}
     8a8:	e2811101 	add	r1, r1, #1073741824	; 0x40000000
     8ac:	e1a04000 	mov	r4, r0
     8b0:	e3a00001 	mov	r0, #1
     8b4:	ebfffffe 	bl	70c <_ZN12RaspberryLib12MailboxWriteEcj>
     8b8:	e3a00001 	mov	r0, #1
     8bc:	ebfffffe 	bl	754 <_ZN12RaspberryLib12MailboxCheckEc>
     8c0:	e3500000 	cmp	r0, #0
     8c4:	1afffffb 	bne	8b8 <_ZN11gpu2dCanvas15initFrameBufferEv+0x18>
     8c8:	e5943004 	ldr	r3, [r4, #4]
     8cc:	e5930020 	ldr	r0, [r3, #32]
     8d0:	e3500000 	cmp	r0, #0
     8d4:	0a000009 	beq	900 <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
     8d8:	e5932010 	ldr	r2, [r3, #16]
     8dc:	e3520000 	cmp	r2, #0
     8e0:	01a00002 	moveq	r0, r2
     8e4:	0a000005 	beq	900 <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
     8e8:	e3500101 	cmp	r0, #1073741824	; 0x40000000
     8ec:	82800103 	addhi	r0, r0, #-1073741824	; 0xc0000000
     8f0:	e3a02001 	mov	r2, #1
     8f4:	e5830020 	str	r0, [r3, #32]
     8f8:	e5c42000 	strb	r2, [r4]
     8fc:	e1a00002 	mov	r0, r2
     900:	e8bd4010 	pop	{r4, lr}
     904:	e12fff1e 	bx	lr

00000908 <_ZN11gpu2dCanvasC1Ebjj>:
     908:	e92d4038 	push	{r3, r4, r5, lr}
     90c:	e3510000 	cmp	r1, #0
     910:	e1a04000 	mov	r4, r0
     914:	e3a0c000 	mov	ip, #0
     918:	e3a00a02 	mov	r0, #8192	; 0x2000
     91c:	e5840004 	str	r0, [r4, #4]
     920:	e5c41002 	strb	r1, [r4, #2]
     924:	e5c4c000 	strb	ip, [r4]
     928:	e880000c 	stm	r0, {r2, r3}
     92c:	11a03083 	lslne	r3, r3, #1
     930:	e5802008 	str	r2, [r0, #8]
     934:	e580300c 	str	r3, [r0, #12]
     938:	e3a05000 	mov	r5, #0
     93c:	e3a03a02 	mov	r3, #8192	; 0x2000
     940:	e3a02018 	mov	r2, #24
     944:	e5832014 	str	r2, [r3, #20]
     948:	e5835018 	str	r5, [r3, #24]
     94c:	e583501c 	str	r5, [r3, #28]
     950:	e5835010 	str	r5, [r3, #16]
     954:	e5835020 	str	r5, [r3, #32]
     958:	e5835024 	str	r5, [r3, #36]	; 0x24
     95c:	e1a00004 	mov	r0, r4
     960:	ebfffffe 	bl	8a0 <_ZN11gpu2dCanvas15initFrameBufferEv>
     964:	e1500005 	cmp	r0, r5
     968:	15c45001 	strbne	r5, [r4, #1]
     96c:	e1a00004 	mov	r0, r4
     970:	e8bd4038 	pop	{r3, r4, r5, lr}
     974:	e12fff1e 	bx	lr

00000978 <_ZN11gpu2dCanvasC1Ev>:
     978:	e92d4010 	push	{r4, lr}
     97c:	e24dd008 	sub	sp, sp, #8
     980:	e1a04000 	mov	r4, r0
     984:	e3a01001 	mov	r1, #1
     988:	e1a0000d 	mov	r0, sp
     98c:	e3a02b01 	mov	r2, #1024	; 0x400
     990:	e3a03c03 	mov	r3, #768	; 0x300
     994:	ebfffffe 	bl	908 <_ZN11gpu2dCanvasC1Ebjj>
     998:	e1a00004 	mov	r0, r4
     99c:	e28dd008 	add	sp, sp, #8
     9a0:	e8bd4010 	pop	{r4, lr}
     9a4:	e12fff1e 	bx	lr

000009a8 <_ZN11gpu2dCanvas4DrawEv.part.6>:
     9a8:	e5d03001 	ldrb	r3, [r0, #1]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	e5903004 	ldr	r3, [r0, #4]
     9b4:	05932004 	ldreq	r2, [r3, #4]
     9b8:	e92d4010 	push	{r4, lr}
     9bc:	13a02000 	movne	r2, #0
     9c0:	e1a04000 	mov	r4, r0
     9c4:	e583201c 	str	r2, [r3, #28]
     9c8:	ebfffffe 	bl	8a0 <_ZN11gpu2dCanvas15initFrameBufferEv>
     9cc:	e5d43001 	ldrb	r3, [r4, #1]
     9d0:	e2233001 	eor	r3, r3, #1
     9d4:	e5c43001 	strb	r3, [r4, #1]
     9d8:	e8bd4010 	pop	{r4, lr}
     9dc:	e12fff1e 	bx	lr

000009e0 <_ZN11gpu2dCanvas4DrawEv>:
     9e0:	e5d02000 	ldrb	r2, [r0]
     9e4:	e3520000 	cmp	r2, #0
     9e8:	012fff1e 	bxeq	lr
     9ec:	e5d03002 	ldrb	r3, [r0, #2]
     9f0:	e3530000 	cmp	r3, #0
     9f4:	012fff1e 	bxeq	lr
     9f8:	eaffffea 	b	9a8 <_ZN11gpu2dCanvas4DrawEv.part.6>

000009fc <_ZN11gpu2dCanvas5ClearEj>:
     9fc:	e5d03000 	ldrb	r3, [r0]
     a00:	e3530000 	cmp	r3, #0
     a04:	e92d03f0 	push	{r4, r5, r6, r7, r8, r9}
     a08:	0a000028 	beq	ab0 <_ZN11gpu2dCanvas5ClearEj+0xb4>
     a0c:	e5d03001 	ldrb	r3, [r0, #1]
     a10:	e3530000 	cmp	r3, #0
     a14:	0a000027 	beq	ab8 <_ZN11gpu2dCanvas5ClearEj+0xbc>
     a18:	e5902004 	ldr	r2, [r0, #4]
     a1c:	e5923004 	ldr	r3, [r2, #4]
     a20:	e3a08000 	mov	r8, #0
     a24:	e20148ff 	and	r4, r1, #16711680	; 0xff0000
     a28:	e2015cff 	and	r5, r1, #65280	; 0xff00
     a2c:	e3530000 	cmp	r3, #0
     a30:	e1a04824 	lsr	r4, r4, #16
     a34:	e1a05425 	lsr	r5, r5, #8
     a38:	e20160ff 	and	r6, r1, #255	; 0xff
     a3c:	0a00001b 	beq	ab0 <_ZN11gpu2dCanvas5ClearEj+0xb4>
     a40:	e3a07000 	mov	r7, #0
     a44:	e5923000 	ldr	r3, [r2]
     a48:	e3530000 	cmp	r3, #0
     a4c:	0a000013 	beq	aa0 <_ZN11gpu2dCanvas5ClearEj+0xa4>
     a50:	e087c008 	add	ip, r7, r8
     a54:	e3a03000 	mov	r3, #0
     a58:	e5929010 	ldr	r9, [r2, #16]
     a5c:	e0831083 	add	r1, r3, r3, lsl #1
     a60:	e0211c99 	mla	r1, r9, ip, r1
     a64:	e5922020 	ldr	r2, [r2, #32]
     a68:	e7c16002 	strb	r6, [r1, r2]
     a6c:	e5902004 	ldr	r2, [r0, #4]
     a70:	e5922020 	ldr	r2, [r2, #32]
     a74:	e0812002 	add	r2, r1, r2
     a78:	e5c25001 	strb	r5, [r2, #1]
     a7c:	e5902004 	ldr	r2, [r0, #4]
     a80:	e5922020 	ldr	r2, [r2, #32]
     a84:	e0811002 	add	r1, r1, r2
     a88:	e5c14002 	strb	r4, [r1, #2]
     a8c:	e5902004 	ldr	r2, [r0, #4]
     a90:	e5921000 	ldr	r1, [r2]
     a94:	e2833001 	add	r3, r3, #1
     a98:	e1510003 	cmp	r1, r3
     a9c:	8affffed 	bhi	a58 <_ZN11gpu2dCanvas5ClearEj+0x5c>
     aa0:	e5923004 	ldr	r3, [r2, #4]
     aa4:	e2877001 	add	r7, r7, #1
     aa8:	e1530007 	cmp	r3, r7
     aac:	8affffe4 	bhi	a44 <_ZN11gpu2dCanvas5ClearEj+0x48>
     ab0:	e8bd03f0 	pop	{r4, r5, r6, r7, r8, r9}
     ab4:	e12fff1e 	bx	lr
     ab8:	e5d03002 	ldrb	r3, [r0, #2]
     abc:	e3530000 	cmp	r3, #0
     ac0:	0affffd4 	beq	a18 <_ZN11gpu2dCanvas5ClearEj+0x1c>
     ac4:	e5902004 	ldr	r2, [r0, #4]
     ac8:	e5928004 	ldr	r8, [r2, #4]
     acc:	e1a03008 	mov	r3, r8
     ad0:	eaffffd3 	b	a24 <_ZN11gpu2dCanvas5ClearEj+0x28>

00000ad4 <_ZN11gpu2dCanvas9ClearFastEv>:
     ad4:	e92d4008 	push	{r3, lr}
     ad8:	e5d03000 	ldrb	r3, [r0]
     adc:	e3530000 	cmp	r3, #0
     ae0:	15900004 	ldrne	r0, [r0, #4]
     ae4:	13a01000 	movne	r1, #0
     ae8:	1bfffffe 	blne	0 <armClearScreen>
     aec:	e8bd4008 	pop	{r3, lr}
     af0:	e12fff1e 	bx	lr

00000af4 <_ZN11gpu2dCanvas4syncEv>:
     af4:	e5d03002 	ldrb	r3, [r0, #2]
     af8:	e3530000 	cmp	r3, #0
     afc:	e92d0030 	push	{r4, r5}
     b00:	0a00001c 	beq	b78 <_ZN11gpu2dCanvas4syncEv+0x84>
     b04:	e5903004 	ldr	r3, [r0, #4]
     b08:	e5934004 	ldr	r4, [r3, #4]
     b0c:	e3540000 	cmp	r4, #0
     b10:	e5d05001 	ldrb	r5, [r0, #1]
     b14:	0a000017 	beq	b78 <_ZN11gpu2dCanvas4syncEv+0x84>
     b18:	e3a0c000 	mov	ip, #0
     b1c:	e5932000 	ldr	r2, [r3]
     b20:	e3520000 	cmp	r2, #0
     b24:	0a000010 	beq	b6c <_ZN11gpu2dCanvas4syncEv+0x78>
     b28:	e3a02000 	mov	r2, #0
     b2c:	e5931020 	ldr	r1, [r3, #32]
     b30:	e5933010 	ldr	r3, [r3, #16]
     b34:	e084400c 	add	r4, r4, ip
     b38:	e0241493 	mla	r4, r3, r4, r1
     b3c:	e0211c93 	mla	r1, r3, ip, r1
     b40:	e3550000 	cmp	r5, #0
     b44:	e0823082 	add	r3, r2, r2, lsl #1
     b48:	17d11003 	ldrbne	r1, [r1, r3]
     b4c:	07d44003 	ldrbeq	r4, [r4, r3]
     b50:	17c41003 	strbne	r1, [r4, r3]
     b54:	07c14003 	strbeq	r4, [r1, r3]
     b58:	e5903004 	ldr	r3, [r0, #4]
     b5c:	e8930012 	ldm	r3, {r1, r4}
     b60:	e2822001 	add	r2, r2, #1
     b64:	e1510002 	cmp	r1, r2
     b68:	8affffef 	bhi	b2c <_ZN11gpu2dCanvas4syncEv+0x38>
     b6c:	e28cc001 	add	ip, ip, #1
     b70:	e15c0004 	cmp	ip, r4
     b74:	3affffe8 	bcc	b1c <_ZN11gpu2dCanvas4syncEv+0x28>
     b78:	e8bd0030 	pop	{r4, r5}
     b7c:	e12fff1e 	bx	lr

00000b80 <_ZN11gpu2dCanvas8setPixelEjjj>:
     b80:	e5d0c001 	ldrb	ip, [r0, #1]
     b84:	e35c0000 	cmp	ip, #0
     b88:	e92d0030 	push	{r4, r5}
     b8c:	1a000004 	bne	ba4 <_ZN11gpu2dCanvas8setPixelEjjj+0x24>
     b90:	e5d0c002 	ldrb	ip, [r0, #2]
     b94:	e35c0000 	cmp	ip, #0
     b98:	1590c004 	ldrne	ip, [r0, #4]
     b9c:	159c5004 	ldrne	r5, [ip, #4]
     ba0:	1a000001 	bne	bac <_ZN11gpu2dCanvas8setPixelEjjj+0x2c>
     ba4:	e590c004 	ldr	ip, [r0, #4]
     ba8:	e3a05000 	mov	r5, #0
     bac:	e59c4010 	ldr	r4, [ip, #16]
     bb0:	e0852002 	add	r2, r5, r2
     bb4:	e0811081 	add	r1, r1, r1, lsl #1
     bb8:	e0211294 	mla	r1, r4, r2, r1
     bbc:	e59c2020 	ldr	r2, [ip, #32]
     bc0:	e1a0c823 	lsr	ip, r3, #16
     bc4:	e7c1c002 	strb	ip, [r1, r2]
     bc8:	e5902004 	ldr	r2, [r0, #4]
     bcc:	e5922020 	ldr	r2, [r2, #32]
     bd0:	e1a0c423 	lsr	ip, r3, #8
     bd4:	e0812002 	add	r2, r1, r2
     bd8:	e5c2c001 	strb	ip, [r2, #1]
     bdc:	e5902004 	ldr	r2, [r0, #4]
     be0:	e5922020 	ldr	r2, [r2, #32]
     be4:	e0811002 	add	r1, r1, r2
     be8:	e5c13002 	strb	r3, [r1, #2]
     bec:	e8bd0030 	pop	{r4, r5}
     bf0:	e12fff1e 	bx	lr

00000bf4 <_ZN11gpu2dCanvas8DrawLineEiiiij>:
     bf4:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
     bf8:	e59da028 	ldr	sl, [sp, #40]	; 0x28
     bfc:	e062a00a 	rsb	sl, r2, sl
     c00:	e1a07003 	mov	r7, r3
     c04:	e1530001 	cmp	r3, r1
     c08:	e1a0b08a 	lsl	fp, sl, #1
     c0c:	e0613003 	rsb	r3, r1, r3
     c10:	e1a06002 	mov	r6, r2
     c14:	e1a04001 	mov	r4, r1
     c18:	e1a08000 	mov	r8, r0
     c1c:	e063500b 	rsb	r5, r3, fp
     c20:	e59d902c 	ldr	r9, [sp, #44]	; 0x2c
     c24:	da000017 	ble	c88 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x94>
     c28:	e063a00a 	rsb	sl, r3, sl
     c2c:	e1a0a08a 	lsl	sl, sl, #1
     c30:	ea000009 	b	c5c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x68>
     c34:	e2866001 	add	r6, r6, #1
     c38:	e1a01004 	mov	r1, r4
     c3c:	e1a02006 	mov	r2, r6
     c40:	e1a00008 	mov	r0, r8
     c44:	e1a03009 	mov	r3, r9
     c48:	e2844001 	add	r4, r4, #1
     c4c:	ebfffffe 	bl	b80 <_ZN11gpu2dCanvas8setPixelEjjj>
     c50:	e1540007 	cmp	r4, r7
     c54:	e085500a 	add	r5, r5, sl
     c58:	0a00000a 	beq	c88 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x94>
     c5c:	e3550000 	cmp	r5, #0
     c60:	cafffff3 	bgt	c34 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x40>
     c64:	e1a01004 	mov	r1, r4
     c68:	e1a00008 	mov	r0, r8
     c6c:	e1a02006 	mov	r2, r6
     c70:	e1a03009 	mov	r3, r9
     c74:	e2844001 	add	r4, r4, #1
     c78:	ebfffffe 	bl	b80 <_ZN11gpu2dCanvas8setPixelEjjj>
     c7c:	e1540007 	cmp	r4, r7
     c80:	e085500b 	add	r5, r5, fp
     c84:	1afffff4 	bne	c5c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x68>
     c88:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
     c8c:	e12fff1e 	bx	lr

00000c90 <_ZN11gpu2dCanvas13DrawCharacterEiicj>:
     c90:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     c94:	e24dd01c 	sub	sp, sp, #28
     c98:	e28dc008 	add	ip, sp, #8
     c9c:	e59d8040 	ldr	r8, [sp, #64]	; 0x40
     ca0:	e59fe088 	ldr	lr, [pc, #136]	; d30 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0xa0>
     ca4:	e1a06000 	mov	r6, r0
     ca8:	e1a0b001 	mov	fp, r1
     cac:	e06c3203 	rsb	r3, ip, r3, lsl #4
     cb0:	e1a0a00c 	mov	sl, ip
     cb4:	e28d0018 	add	r0, sp, #24
     cb8:	e083100c 	add	r1, r3, ip
     cbc:	e7de1001 	ldrb	r1, [lr, r1]
     cc0:	e4cc1001 	strb	r1, [ip], #1
     cc4:	e15c0000 	cmp	ip, r0
     cc8:	1afffffa 	bne	cb8 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x28>
     ccc:	e28aa00f 	add	sl, sl, #15
     cd0:	e58da004 	str	sl, [sp, #4]
     cd4:	e1a05002 	mov	r5, r2
     cd8:	e28d9007 	add	r9, sp, #7
     cdc:	e5f97001 	ldrb	r7, [r9, #1]!
     ce0:	e1a0a00b 	mov	sl, fp
     ce4:	e3a04000 	mov	r4, #0
     ce8:	e1a03457 	asr	r3, r7, r4
     cec:	e2133001 	ands	r3, r3, #1
     cf0:	e1a0100a 	mov	r1, sl
     cf4:	11a03008 	movne	r3, r8
     cf8:	e1a00006 	mov	r0, r6
     cfc:	e1a02005 	mov	r2, r5
     d00:	e2844001 	add	r4, r4, #1
     d04:	ebfffffe 	bl	b80 <_ZN11gpu2dCanvas8setPixelEjjj>
     d08:	e3540008 	cmp	r4, #8
     d0c:	e28aa001 	add	sl, sl, #1
     d10:	1afffff4 	bne	ce8 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x58>
     d14:	e59d3004 	ldr	r3, [sp, #4]
     d18:	e1590003 	cmp	r9, r3
     d1c:	e2855001 	add	r5, r5, #1
     d20:	1affffed 	bne	cdc <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x4c>
     d24:	e28dd01c 	add	sp, sp, #28
     d28:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     d2c:	e12fff1e 	bx	lr
     d30:	00000000 	andeq	r0, r0, r0

00000d34 <_ZN11gpu2dCanvas14ClearCharacterEii>:
     d34:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
     d38:	e3a04000 	mov	r4, #0
     d3c:	e1a06001 	mov	r6, r1
     d40:	e1a07000 	mov	r7, r0
     d44:	e1a05002 	mov	r5, r2
     d48:	e1a01004 	mov	r1, r4
     d4c:	e0811006 	add	r1, r1, r6
     d50:	e3a03000 	mov	r3, #0
     d54:	e1a00007 	mov	r0, r7
     d58:	e1a02005 	mov	r2, r5
     d5c:	ebfffffe 	bl	b80 <_ZN11gpu2dCanvas8setPixelEjjj>
     d60:	e2843001 	add	r3, r4, #1
     d64:	e1a03803 	lsl	r3, r3, #16
     d68:	e1a01843 	asr	r1, r3, #16
     d6c:	e3510008 	cmp	r1, #8
     d70:	e1a04823 	lsr	r4, r3, #16
     d74:	1afffff4 	bne	d4c <_ZN11gpu2dCanvas14ClearCharacterEii+0x18>
     d78:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
     d7c:	e12fff1e 	bx	lr

00000d80 <_ZN7Console5clearEv>:
     d80:	e590300c 	ldr	r3, [r0, #12]
     d84:	e5d31000 	ldrb	r1, [r3]
     d88:	e3a02001 	mov	r2, #1
     d8c:	e3510000 	cmp	r1, #0
     d90:	e3a01000 	mov	r1, #0
     d94:	e92d4010 	push	{r4, lr}
     d98:	e1a04000 	mov	r4, r0
     d9c:	e8800006 	stm	r0, {r1, r2}
     da0:	1a000001 	bne	dac <_ZN7Console5clearEv+0x2c>
     da4:	e8bd4010 	pop	{r4, lr}
     da8:	e12fff1e 	bx	lr
     dac:	e5930004 	ldr	r0, [r3, #4]
     db0:	ebfffffe 	bl	0 <armClearScreen>
     db4:	e594000c 	ldr	r0, [r4, #12]
     db8:	e5d03000 	ldrb	r3, [r0]
     dbc:	e3530000 	cmp	r3, #0
     dc0:	0afffff7 	beq	da4 <_ZN7Console5clearEv+0x24>
     dc4:	e5d03002 	ldrb	r3, [r0, #2]
     dc8:	e3530000 	cmp	r3, #0
     dcc:	0afffff4 	beq	da4 <_ZN7Console5clearEv+0x24>
     dd0:	e8bd4010 	pop	{r4, lr}
     dd4:	eafffef3 	b	9a8 <_ZN11gpu2dCanvas4DrawEv.part.6>

00000dd8 <_ZN7Console7newLineEv>:
     dd8:	e5902004 	ldr	r2, [r0, #4]
     ddc:	e2822001 	add	r2, r2, #1
     de0:	e3a01000 	mov	r1, #0
     de4:	e352002d 	cmp	r2, #45	; 0x2d
     de8:	e8800006 	stm	r0, {r1, r2}
     dec:	912fff1e 	bxls	lr
     df0:	eafffffe 	b	d80 <_ZN7Console5clearEv>

00000df4 <_ZN7Console9printCharEcj>:
     df4:	e92d4030 	push	{r4, r5, lr}
     df8:	e3510009 	cmp	r1, #9
     dfc:	e24dd014 	sub	sp, sp, #20
     e00:	e1a04000 	mov	r4, r0
     e04:	0a00003d 	beq	f00 <_ZN7Console9printCharEcj+0x10c>
     e08:	e351000a 	cmp	r1, #10
     e0c:	0a000032 	beq	edc <_ZN7Console9printCharEcj+0xe8>
     e10:	e3510008 	cmp	r1, #8
     e14:	0a00001c 	beq	e8c <_ZN7Console9printCharEcj+0x98>
     e18:	e8901008 	ldm	r0, {r3, ip}
     e1c:	e3530078 	cmp	r3, #120	; 0x78
     e20:	9a000041 	bls	f2c <_ZN7Console9printCharEcj+0x138>
     e24:	e28cc001 	add	ip, ip, #1
     e28:	e3a03000 	mov	r3, #0
     e2c:	e35c002d 	cmp	ip, #45	; 0x2d
     e30:	e8801008 	stm	r0, {r3, ip}
     e34:	8a000036 	bhi	f14 <_ZN7Console9printCharEcj+0x120>
     e38:	e594e008 	ldr	lr, [r4, #8]
     e3c:	e5945000 	ldr	r5, [r4]
     e40:	e594000c 	ldr	r0, [r4, #12]
     e44:	e1a03001 	mov	r3, r1
     e48:	e58d2000 	str	r2, [sp]
     e4c:	e08e1185 	add	r1, lr, r5, lsl #3
     e50:	e08e220c 	add	r2, lr, ip, lsl #4
     e54:	ebfffffe 	bl	c90 <_ZN11gpu2dCanvas13DrawCharacterEiicj>
     e58:	e594000c 	ldr	r0, [r4, #12]
     e5c:	e5d03000 	ldrb	r3, [r0]
     e60:	e3530000 	cmp	r3, #0
     e64:	0a000002 	beq	e74 <_ZN7Console9printCharEcj+0x80>
     e68:	e5d03002 	ldrb	r3, [r0, #2]
     e6c:	e3530000 	cmp	r3, #0
     e70:	1a000033 	bne	f44 <_ZN7Console9printCharEcj+0x150>
     e74:	e5943000 	ldr	r3, [r4]
     e78:	e2833001 	add	r3, r3, #1
     e7c:	e5843000 	str	r3, [r4]
     e80:	e28dd014 	add	sp, sp, #20
     e84:	e8bd4030 	pop	{r4, r5, lr}
     e88:	e12fff1e 	bx	lr
     e8c:	e5903000 	ldr	r3, [r0]
     e90:	e3530000 	cmp	r3, #0
     e94:	0afffff9 	beq	e80 <_ZN7Console9printCharEcj+0x8c>
     e98:	e9900005 	ldmib	r0, {r0, r2}
     e9c:	e2431001 	sub	r1, r3, #1
     ea0:	e5841000 	str	r1, [r4]
     ea4:	e0821181 	add	r1, r2, r1, lsl #3
     ea8:	e0822200 	add	r2, r2, r0, lsl #4
     eac:	e594000c 	ldr	r0, [r4, #12]
     eb0:	ebfffffe 	bl	d34 <_ZN11gpu2dCanvas14ClearCharacterEii>
     eb4:	e594000c 	ldr	r0, [r4, #12]
     eb8:	e5d03000 	ldrb	r3, [r0]
     ebc:	e3530000 	cmp	r3, #0
     ec0:	0affffee 	beq	e80 <_ZN7Console9printCharEcj+0x8c>
     ec4:	e5d03002 	ldrb	r3, [r0, #2]
     ec8:	e3530000 	cmp	r3, #0
     ecc:	0affffeb 	beq	e80 <_ZN7Console9printCharEcj+0x8c>
     ed0:	e28dd014 	add	sp, sp, #20
     ed4:	e8bd4030 	pop	{r4, r5, lr}
     ed8:	eafffeb2 	b	9a8 <_ZN11gpu2dCanvas4DrawEv.part.6>
     edc:	e5903004 	ldr	r3, [r0, #4]
     ee0:	e2833001 	add	r3, r3, #1
     ee4:	e3a02000 	mov	r2, #0
     ee8:	e353002d 	cmp	r3, #45	; 0x2d
     eec:	e880000c 	stm	r0, {r2, r3}
     ef0:	8a00000f 	bhi	f34 <_ZN7Console9printCharEcj+0x140>
     ef4:	e28dd014 	add	sp, sp, #20
     ef8:	e8bd4030 	pop	{r4, r5, lr}
     efc:	e12fff1e 	bx	lr
     f00:	e5903000 	ldr	r3, [r0]
     f04:	e2833004 	add	r3, r3, #4
     f08:	e3530077 	cmp	r3, #119	; 0x77
     f0c:	95843000 	strls	r3, [r4]
     f10:	eaffffda 	b	e80 <_ZN7Console9printCharEcj+0x8c>
     f14:	e58d100c 	str	r1, [sp, #12]
     f18:	e58d2008 	str	r2, [sp, #8]
     f1c:	ebfffffe 	bl	d80 <_ZN7Console5clearEv>
     f20:	e594c004 	ldr	ip, [r4, #4]
     f24:	e59d2008 	ldr	r2, [sp, #8]
     f28:	e59d100c 	ldr	r1, [sp, #12]
     f2c:	e35c002d 	cmp	ip, #45	; 0x2d
     f30:	9affffc0 	bls	e38 <_ZN7Console9printCharEcj+0x44>
     f34:	e1a00004 	mov	r0, r4
     f38:	e28dd014 	add	sp, sp, #20
     f3c:	e8bd4030 	pop	{r4, r5, lr}
     f40:	eafffffe 	b	d80 <_ZN7Console5clearEv>
     f44:	ebfffe97 	bl	9a8 <_ZN11gpu2dCanvas4DrawEv.part.6>
     f48:	eaffffc9 	b	e74 <_ZN7Console9printCharEcj+0x80>

00000f4c <_ZN7Console6kprintEPKc>:
     f4c:	e92d4038 	push	{r3, r4, r5, lr}
     f50:	e1a04001 	mov	r4, r1
     f54:	e5d11000 	ldrb	r1, [r1]
     f58:	e3510000 	cmp	r1, #0
     f5c:	e1a05000 	mov	r5, r0
     f60:	0a000005 	beq	f7c <_ZN7Console6kprintEPKc+0x30>
     f64:	e1a00005 	mov	r0, r5
     f68:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
     f6c:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
     f70:	e5f41001 	ldrb	r1, [r4, #1]!
     f74:	e3510000 	cmp	r1, #0
     f78:	1afffff9 	bne	f64 <_ZN7Console6kprintEPKc+0x18>
     f7c:	e8bd4038 	pop	{r3, r4, r5, lr}
     f80:	e12fff1e 	bx	lr

00000f84 <_ZN7Console6kprintEPc>:
     f84:	e92d4038 	push	{r3, r4, r5, lr}
     f88:	e1a04001 	mov	r4, r1
     f8c:	e5d11000 	ldrb	r1, [r1]
     f90:	e3510000 	cmp	r1, #0
     f94:	e1a05000 	mov	r5, r0
     f98:	0a000005 	beq	fb4 <_ZN7Console6kprintEPc+0x30>
     f9c:	e1a00005 	mov	r0, r5
     fa0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
     fa4:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
     fa8:	e5f41001 	ldrb	r1, [r4, #1]!
     fac:	e3510000 	cmp	r1, #0
     fb0:	1afffff9 	bne	f9c <_ZN7Console6kprintEPc+0x18>
     fb4:	e8bd4038 	pop	{r3, r4, r5, lr}
     fb8:	e12fff1e 	bx	lr

00000fbc <_ZN7Console6kprintEPcj>:
     fbc:	e92d4070 	push	{r4, r5, r6, lr}
     fc0:	e1a04001 	mov	r4, r1
     fc4:	e5d11000 	ldrb	r1, [r1]
     fc8:	e3510000 	cmp	r1, #0
     fcc:	e1a05000 	mov	r5, r0
     fd0:	e1a06002 	mov	r6, r2
     fd4:	0a000005 	beq	ff0 <_ZN7Console6kprintEPcj+0x34>
     fd8:	e1a00005 	mov	r0, r5
     fdc:	e1a02006 	mov	r2, r6
     fe0:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
     fe4:	e5f41001 	ldrb	r1, [r4, #1]!
     fe8:	e3510000 	cmp	r1, #0
     fec:	1afffff9 	bne	fd8 <_ZN7Console6kprintEPcj+0x1c>
     ff0:	e8bd4070 	pop	{r4, r5, r6, lr}
     ff4:	e12fff1e 	bx	lr

00000ff8 <_ZN7Console6kprintEPKcj>:
     ff8:	e92d4070 	push	{r4, r5, r6, lr}
     ffc:	e1a04001 	mov	r4, r1
    1000:	e5d11000 	ldrb	r1, [r1]
    1004:	e3510000 	cmp	r1, #0
    1008:	e1a05000 	mov	r5, r0
    100c:	e1a06002 	mov	r6, r2
    1010:	0a000005 	beq	102c <_ZN7Console6kprintEPKcj+0x34>
    1014:	e1a00005 	mov	r0, r5
    1018:	e1a02006 	mov	r2, r6
    101c:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1020:	e5f41001 	ldrb	r1, [r4, #1]!
    1024:	e3510000 	cmp	r1, #0
    1028:	1afffff9 	bne	1014 <_ZN7Console6kprintEPKcj+0x1c>
    102c:	e8bd4070 	pop	{r4, r5, r6, lr}
    1030:	e12fff1e 	bx	lr

00001034 <_ZN7Console6kprintEjj>:
    1034:	e92d4070 	push	{r4, r5, r6, lr}
    1038:	e59f403c 	ldr	r4, [pc, #60]	; 107c <_ZN7Console6kprintEjj+0x48>
    103c:	e0843491 	umull	r3, r4, r1, r4
    1040:	e1a041a4 	lsr	r4, r4, #3
    1044:	e1a03004 	mov	r3, r4
    1048:	e3540000 	cmp	r4, #0
    104c:	e0844104 	add	r4, r4, r4, lsl #2
    1050:	e0414084 	sub	r4, r1, r4, lsl #1
    1054:	e1a06000 	mov	r6, r0
    1058:	e1a05002 	mov	r5, r2
    105c:	11a01003 	movne	r1, r3
    1060:	1bfffffe 	blne	1034 <_ZN7Console6kprintEjj>
    1064:	e2844030 	add	r4, r4, #48	; 0x30
    1068:	e20410ff 	and	r1, r4, #255	; 0xff
    106c:	e1a00006 	mov	r0, r6
    1070:	e1a02005 	mov	r2, r5
    1074:	e8bd4070 	pop	{r4, r5, r6, lr}
    1078:	eafffffe 	b	df4 <_ZN7Console9printCharEcj>
    107c:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

00001080 <_ZN7Console6kprintEj>:
    1080:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1084:	eafffffe 	b	1034 <_ZN7Console6kprintEjj>

00001088 <_ZN7Console12kprintHexa32Ejj>:
    1088:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    108c:	e1a07000 	mov	r7, r0
    1090:	e1a06001 	mov	r6, r1
    1094:	e1a05002 	mov	r5, r2
    1098:	e3a0401c 	mov	r4, #28
    109c:	e1a03436 	lsr	r3, r6, r4
    10a0:	e203300f 	and	r3, r3, #15
    10a4:	e3530009 	cmp	r3, #9
    10a8:	83a0c007 	movhi	ip, #7
    10ac:	93a0c000 	movls	ip, #0
    10b0:	e2831030 	add	r1, r3, #48	; 0x30
    10b4:	e2444004 	sub	r4, r4, #4
    10b8:	e08c1001 	add	r1, ip, r1
    10bc:	e1a00007 	mov	r0, r7
    10c0:	e1a02005 	mov	r2, r5
    10c4:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    10c8:	e3740004 	cmn	r4, #4
    10cc:	1afffff2 	bne	109c <_ZN7Console12kprintHexa32Ejj+0x14>
    10d0:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    10d4:	e12fff1e 	bx	lr

000010d8 <irq_handler>:
    10d8:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    10dc:	e3a0da02 	mov	sp, #8192	; 0x2000
    10e0:	e24ee004 	sub	lr, lr, #4
    10e4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    10e8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    10ec:	e3a03a01 	mov	r3, #4096	; 0x1000
    10f0:	e1a00003 	mov	r0, r3
    10f4:	e9201ffe 	stmdb	r0!, {r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    10f8:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    10fc:	e3a03efd 	mov	r3, #4048	; 0xfd0
    1100:	e1a01003 	mov	r1, r3
    1104:	e5810000 	str	r0, [r1]
    1108:	e59f1cb4 	ldr	r1, [pc, #3252]	; 1dc4 <swi_endTask+0x64>
    110c:	e581e000 	str	lr, [r1]
    1110:	e59f638c 	ldr	r6, [pc, #908]	; 14a4 <irq_handler+0x3cc>
    1114:	e5965040 	ldr	r5, [r6, #64]	; 0x40
    1118:	e59f3388 	ldr	r3, [pc, #904]	; 14a8 <irq_handler+0x3d0>
    111c:	e3550000 	cmp	r5, #0
    1120:	e5932000 	ldr	r2, [r3]
    1124:	0a000016 	beq	1184 <irq_handler+0xac>
    1128:	e5963040 	ldr	r3, [r6, #64]	; 0x40
    112c:	e3550004 	cmp	r5, #4
    1130:	e5863040 	str	r3, [r6, #64]	; 0x40
    1134:	0a0000b2 	beq	1404 <irq_handler+0x32c>
    1138:	e3550008 	cmp	r5, #8
    113c:	0a0000c4 	beq	1454 <irq_handler+0x37c>
    1140:	e59f4364 	ldr	r4, [pc, #868]	; 14ac <irq_handler+0x3d4>
    1144:	ebfffffe 	bl	564 <_ZN12RaspberryLib10TestBuzzerEv>
    1148:	e59f2354 	ldr	r2, [pc, #852]	; 14a4 <irq_handler+0x3cc>
    114c:	e3a01000 	mov	r1, #0
    1150:	e5923058 	ldr	r3, [r2, #88]	; 0x58
    1154:	e5821058 	str	r1, [r2, #88]	; 0x58
    1158:	e59f3348 	ldr	r3, [pc, #840]	; 14a8 <irq_handler+0x3d0>
    115c:	e5932004 	ldr	r2, [r3, #4]
    1160:	e282293d 	add	r2, r2, #999424	; 0xf4000
    1164:	e2822d09 	add	r2, r2, #576	; 0x240
    1168:	e3a01001 	mov	r1, #1
    116c:	e5c41005 	strb	r1, [r4, #5]
    1170:	e5832018 	str	r2, [r3, #24]
    1174:	e59fdc4c 	ldr	sp, [pc, #3148]	; 1dc8 <swi_endTask+0x68>
    1178:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    117c:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    1180:	e12fff1e 	bx	lr
    1184:	e59f4320 	ldr	r4, [pc, #800]	; 14ac <irq_handler+0x3d4>
    1188:	e5d41005 	ldrb	r1, [r4, #5]
    118c:	e3510000 	cmp	r1, #0
    1190:	1a00006c 	bne	1348 <irq_handler+0x270>
    1194:	e5d43004 	ldrb	r3, [r4, #4]
    1198:	e3530000 	cmp	r3, #0
    119c:	e59f3308 	ldr	r3, [pc, #776]	; 14ac <irq_handler+0x3d4>
    11a0:	0afffff3 	beq	1174 <irq_handler+0x9c>
    11a4:	e3120002 	tst	r2, #2
    11a8:	0afffff1 	beq	1174 <irq_handler+0x9c>
    11ac:	e593200c 	ldr	r2, [r3, #12]
    11b0:	e59f12f0 	ldr	r1, [pc, #752]	; 14a8 <irq_handler+0x3d0>
    11b4:	e3a00002 	mov	r0, #2
    11b8:	e5810000 	str	r0, [r1]
    11bc:	e5922014 	ldr	r2, [r2, #20]
    11c0:	e5925044 	ldr	r5, [r2, #68]	; 0x44
    11c4:	e3a02000 	mov	r2, #0
    11c8:	e3550301 	cmp	r5, #67108864	; 0x4000000
    11cc:	e5835010 	str	r5, [r3, #16]
    11d0:	e5c32004 	strb	r2, [r3, #4]
    11d4:	8a000078 	bhi	13bc <irq_handler+0x2e4>
    11d8:	e5d32014 	ldrb	r2, [r3, #20]
    11dc:	e3520000 	cmp	r2, #0
    11e0:	01a02005 	moveq	r2, r5
    11e4:	0a000023 	beq	1278 <irq_handler+0x1a0>
    11e8:	e5937008 	ldr	r7, [r3, #8]
    11ec:	e59f62bc 	ldr	r6, [pc, #700]	; 14b0 <irq_handler+0x3d8>
    11f0:	e3a0100a 	mov	r1, #10
    11f4:	e1a00007 	mov	r0, r7
    11f8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    11fc:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1200:	e5f61001 	ldrb	r1, [r6, #1]!
    1204:	e3510000 	cmp	r1, #0
    1208:	1afffff9 	bne	11f4 <irq_handler+0x11c>
    120c:	e594300c 	ldr	r3, [r4, #12]
    1210:	e5933014 	ldr	r3, [r3, #20]
    1214:	e5940008 	ldr	r0, [r4, #8]
    1218:	e1d315b4 	ldrh	r1, [r3, #84]	; 0x54
    121c:	e59f2290 	ldr	r2, [pc, #656]	; 14b4 <irq_handler+0x3dc>
    1220:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    1224:	e59f628c 	ldr	r6, [pc, #652]	; 14b8 <irq_handler+0x3e0>
    1228:	e5947008 	ldr	r7, [r4, #8]
    122c:	e3a0100a 	mov	r1, #10
    1230:	e1a00007 	mov	r0, r7
    1234:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1238:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    123c:	e5f61001 	ldrb	r1, [r6, #1]!
    1240:	e3510000 	cmp	r1, #0
    1244:	1afffff9 	bne	1230 <irq_handler+0x158>
    1248:	e59f226c 	ldr	r2, [pc, #620]	; 14bc <irq_handler+0x3e4>
    124c:	e5940008 	ldr	r0, [r4, #8]
    1250:	e5941010 	ldr	r1, [r4, #16]
    1254:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    1258:	e59f3248 	ldr	r3, [pc, #584]	; 14a8 <irq_handler+0x3d0>
    125c:	e5932004 	ldr	r2, [r3, #4]
    1260:	e282297a 	add	r2, r2, #1998848	; 0x1e8000
    1264:	e2822d12 	add	r2, r2, #1152	; 0x480
    1268:	e5931004 	ldr	r1, [r3, #4]
    126c:	e1520001 	cmp	r2, r1
    1270:	2afffffc 	bcs	1268 <irq_handler+0x190>
    1274:	e5942010 	ldr	r2, [r4, #16]
    1278:	e59f022c 	ldr	r0, [pc, #556]	; 14ac <irq_handler+0x3d4>
    127c:	e59f123c 	ldr	r1, [pc, #572]	; 14c0 <irq_handler+0x3e8>
    1280:	e242200c 	sub	r2, r2, #12
    1284:	e3a03a01 	mov	r3, #4096	; 0x1000
    1288:	ea000000 	b	1290 <irq_handler+0x1b8>
    128c:	e5902010 	ldr	r2, [r0, #16]
    1290:	e242c004 	sub	ip, r2, #4
    1294:	e584c010 	str	ip, [r4, #16]
    1298:	e533c004 	ldr	ip, [r3, #-4]!
    129c:	e1530001 	cmp	r3, r1
    12a0:	e502c004 	str	ip, [r2, #-4]
    12a4:	1afffff8 	bne	128c <irq_handler+0x1b4>
    12a8:	e59f1b1c 	ldr	r1, [pc, #2844]	; 1dcc <swi_endTask+0x6c>
    12ac:	e5911000 	ldr	r1, [r1]
    12b0:	e2411004 	sub	r1, r1, #4
    12b4:	e14f0000 	mrs	r0, SPSR
    12b8:	e5810000 	str	r0, [r1]
    12bc:	e5845010 	str	r5, [r4, #16]
    12c0:	e59f1b04 	ldr	r1, [pc, #2820]	; 1dcc <swi_endTask+0x6c>
    12c4:	e5911000 	ldr	r1, [r1]
    12c8:	e2411004 	sub	r1, r1, #4
    12cc:	e59f2af0 	ldr	r2, [pc, #2800]	; 1dc4 <swi_endTask+0x64>
    12d0:	e5922000 	ldr	r2, [r2]
    12d4:	e5812000 	str	r2, [r1]
    12d8:	e3a000df 	mov	r0, #223	; 0xdf
    12dc:	e129f000 	msr	CPSR_fc, r0
    12e0:	e2411004 	sub	r1, r1, #4
    12e4:	e581e000 	str	lr, [r1]
    12e8:	e2411004 	sub	r1, r1, #4
    12ec:	e581d000 	str	sp, [r1]
    12f0:	e3a000d3 	mov	r0, #211	; 0xd3
    12f4:	e129f000 	msr	CPSR_fc, r0
    12f8:	e59f1ad0 	ldr	r1, [pc, #2768]	; 1dd0 <swi_endTask+0x70>
    12fc:	e591d000 	ldr	sp, [r1]
    1300:	e59f41a4 	ldr	r4, [pc, #420]	; 14ac <irq_handler+0x3d4>
    1304:	e5940008 	ldr	r0, [r4, #8]
    1308:	ebfffffe 	bl	d80 <_ZN7Console5clearEv>
    130c:	e594300c 	ldr	r3, [r4, #12]
    1310:	e5933014 	ldr	r3, [r3, #20]
    1314:	e3a02002 	mov	r2, #2
    1318:	e5c32058 	strb	r2, [r3, #88]	; 0x58
    131c:	e3a05001 	mov	r5, #1
    1320:	ef000000 	svc	0x00000000
    1324:	e1a00000 	nop			; (mov r0, r0)
    1328:	e1a00000 	nop			; (mov r0, r0)
    132c:	e1a00000 	nop			; (mov r0, r0)
    1330:	e1a00000 	nop			; (mov r0, r0)
    1334:	e1a00000 	nop			; (mov r0, r0)
    1338:	e59fda88 	ldr	sp, [pc, #2696]	; 1dc8 <swi_endTask+0x68>
    133c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    1340:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    1344:	e12fff1e 	bx	lr
    1348:	e3120008 	tst	r2, #8
    134c:	0affff90 	beq	1194 <irq_handler+0xbc>
    1350:	e3a02008 	mov	r2, #8
    1354:	e5c45005 	strb	r5, [r4, #5]
    1358:	e1a01005 	mov	r1, r5
    135c:	e5832000 	str	r2, [r3]
    1360:	e3a00001 	mov	r0, #1
    1364:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    1368:	e1a01005 	mov	r1, r5
    136c:	e3a00002 	mov	r0, #2
    1370:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    1374:	e1a01005 	mov	r1, r5
    1378:	e3a00003 	mov	r0, #3
    137c:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    1380:	e1a01005 	mov	r1, r5
    1384:	e3a00004 	mov	r0, #4
    1388:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    138c:	e1a01005 	mov	r1, r5
    1390:	e3a00005 	mov	r0, #5
    1394:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    1398:	e1a01005 	mov	r1, r5
    139c:	e3a00006 	mov	r0, #6
    13a0:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    13a4:	e3a0300c 	mov	r3, #12
    13a8:	e5863058 	str	r3, [r6, #88]	; 0x58
    13ac:	e59fda14 	ldr	sp, [pc, #2580]	; 1dc8 <swi_endTask+0x68>
    13b0:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    13b4:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    13b8:	e12fff1e 	bx	lr
    13bc:	e5936008 	ldr	r6, [r3, #8]
    13c0:	e59f50fc 	ldr	r5, [pc, #252]	; 14c4 <irq_handler+0x3ec>
    13c4:	e3a0100a 	mov	r1, #10
    13c8:	e1a00006 	mov	r0, r6
    13cc:	e3a020ff 	mov	r2, #255	; 0xff
    13d0:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    13d4:	e5f51001 	ldrb	r1, [r5, #1]!
    13d8:	e3510000 	cmp	r1, #0
    13dc:	1afffff9 	bne	13c8 <irq_handler+0x2f0>
    13e0:	e5940008 	ldr	r0, [r4, #8]
    13e4:	e5941010 	ldr	r1, [r4, #16]
    13e8:	e59f20c4 	ldr	r2, [pc, #196]	; 14b4 <irq_handler+0x3dc>
    13ec:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    13f0:	e5940008 	ldr	r0, [r4, #8]
    13f4:	e59f10cc 	ldr	r1, [pc, #204]	; 14c8 <irq_handler+0x3f0>
    13f8:	e3a02cff 	mov	r2, #65280	; 0xff00
    13fc:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    1400:	eafffffe 	b	1400 <irq_handler+0x328>
    1404:	e3a00001 	mov	r0, #1
    1408:	e1a01000 	mov	r1, r0
    140c:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    1410:	e59f4094 	ldr	r4, [pc, #148]	; 14ac <irq_handler+0x3d4>
    1414:	e3a00003 	mov	r0, #3
    1418:	e3a01001 	mov	r1, #1
    141c:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    1420:	e3a01001 	mov	r1, #1
    1424:	e3a00005 	mov	r0, #5
    1428:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    142c:	e59f5098 	ldr	r5, [pc, #152]	; 14cc <irq_handler+0x3f4>
    1430:	e5946008 	ldr	r6, [r4, #8]
    1434:	e3a0100a 	mov	r1, #10
    1438:	e1a00006 	mov	r0, r6
    143c:	e59f2070 	ldr	r2, [pc, #112]	; 14b4 <irq_handler+0x3dc>
    1440:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1444:	e5f51001 	ldrb	r1, [r5, #1]!
    1448:	e3510000 	cmp	r1, #0
    144c:	1afffff9 	bne	1438 <irq_handler+0x360>
    1450:	eaffff3b 	b	1144 <irq_handler+0x6c>
    1454:	e3a00002 	mov	r0, #2
    1458:	e3a01001 	mov	r1, #1
    145c:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    1460:	e59f4044 	ldr	r4, [pc, #68]	; 14ac <irq_handler+0x3d4>
    1464:	e3a00004 	mov	r0, #4
    1468:	e3a01001 	mov	r1, #1
    146c:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    1470:	e3a01001 	mov	r1, #1
    1474:	e3a00006 	mov	r0, #6
    1478:	ebfffffe 	bl	464 <_ZN12RaspberryLib6SetLEDEjb>
    147c:	e59f504c 	ldr	r5, [pc, #76]	; 14d0 <irq_handler+0x3f8>
    1480:	e5946008 	ldr	r6, [r4, #8]
    1484:	e3a0100a 	mov	r1, #10
    1488:	e1a00006 	mov	r0, r6
    148c:	e59f2020 	ldr	r2, [pc, #32]	; 14b4 <irq_handler+0x3dc>
    1490:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1494:	e5f51001 	ldrb	r1, [r5, #1]!
    1498:	e3510000 	cmp	r1, #0
    149c:	1afffff9 	bne	1488 <irq_handler+0x3b0>
    14a0:	eaffff27 	b	1144 <irq_handler+0x6c>
    14a4:	20200000 	eorcs	r0, r0, r0
    14a8:	20003000 	andcs	r3, r0, r0
    14ac:	00000000 	andeq	r0, r0, r0
    14b0:	00000054 	andeq	r0, r0, r4, asr r0
    14b4:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    14b8:	00000060 	andeq	r0, r0, r0, rrx
    14bc:	00ff00ff 	ldrshteq	r0, [pc], #15
    14c0:	00000fcc 	andeq	r0, r0, ip, asr #31
    14c4:	00000028 	andeq	r0, r0, r8, lsr #32
    14c8:	00000010 	andeq	r0, r0, r0, lsl r0
    14cc:	00000000 	andeq	r0, r0, r0
    14d0:	00000014 	andeq	r0, r0, r4, lsl r0

000014d4 <_ZN7Console12kprintHexa32Ej>:
    14d4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    14d8:	eafffffe 	b	1088 <_ZN7Console12kprintHexa32Ejj>

000014dc <_ZN7Console4koutEPKc>:
    14dc:	e92d4070 	push	{r4, r5, r6, lr}
    14e0:	e59f505c 	ldr	r5, [pc, #92]	; 1544 <_ZN7Console4koutEPKc+0x68>
    14e4:	e1a06001 	mov	r6, r1
    14e8:	e1a04000 	mov	r4, r0
    14ec:	e3a0105b 	mov	r1, #91	; 0x5b
    14f0:	e1a00004 	mov	r0, r4
    14f4:	e59f204c 	ldr	r2, [pc, #76]	; 1548 <_ZN7Console4koutEPKc+0x6c>
    14f8:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    14fc:	e5f51001 	ldrb	r1, [r5, #1]!
    1500:	e3510000 	cmp	r1, #0
    1504:	1afffff9 	bne	14f0 <_ZN7Console4koutEPKc+0x14>
    1508:	e5d61000 	ldrb	r1, [r6]
    150c:	e3510000 	cmp	r1, #0
    1510:	11a05006 	movne	r5, r6
    1514:	0a000005 	beq	1530 <_ZN7Console4koutEPKc+0x54>
    1518:	e1a00004 	mov	r0, r4
    151c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1520:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1524:	e5f51001 	ldrb	r1, [r5, #1]!
    1528:	e3510000 	cmp	r1, #0
    152c:	1afffff9 	bne	1518 <_ZN7Console4koutEPKc+0x3c>
    1530:	e1a00004 	mov	r0, r4
    1534:	e3a0100a 	mov	r1, #10
    1538:	e59f2008 	ldr	r2, [pc, #8]	; 1548 <_ZN7Console4koutEPKc+0x6c>
    153c:	e8bd4070 	pop	{r4, r5, r6, lr}
    1540:	eafffffe 	b	df4 <_ZN7Console9printCharEcj>
    1544:	00000088 	andeq	r0, r0, r8, lsl #1
    1548:	00f0330f 	rscseq	r3, r0, pc, lsl #6

0000154c <basic_handler>:
    154c:	e92d4008 	push	{r3, lr}
    1550:	e59f302c 	ldr	r3, [pc, #44]	; 1584 <basic_handler+0x38>
    1554:	e59f102c 	ldr	r1, [pc, #44]	; 1588 <basic_handler+0x3c>
    1558:	e5930008 	ldr	r0, [r3, #8]
    155c:	ebfffffe 	bl	14dc <_ZN7Console4koutEPKc>
    1560:	e59f2024 	ldr	r2, [pc, #36]	; 158c <basic_handler+0x40>
    1564:	e5921004 	ldr	r1, [r2, #4]
    1568:	e2811b61 	add	r1, r1, #99328	; 0x18400
    156c:	e2811e2a 	add	r1, r1, #672	; 0x2a0
    1570:	e5923004 	ldr	r3, [r2, #4]
    1574:	e1510003 	cmp	r1, r3
    1578:	8afffffc 	bhi	1570 <basic_handler+0x24>
    157c:	e8bd4008 	pop	{r3, lr}
    1580:	e12fff1e 	bx	lr
    1584:	00000000 	andeq	r0, r0, r0
    1588:	00000090 	muleq	r0, r0, r0
    158c:	20003000 	andcs	r3, r0, r0

00001590 <_ZN7ConsoleC1EP11gpu2dCanvas>:
    1590:	e92d4010 	push	{r4, lr}
    1594:	e3a03000 	mov	r3, #0
    1598:	e3a0200a 	mov	r2, #10
    159c:	e1a04000 	mov	r4, r0
    15a0:	e580100c 	str	r1, [r0, #12]
    15a4:	e5802008 	str	r2, [r0, #8]
    15a8:	e5803000 	str	r3, [r0]
    15ac:	e5803004 	str	r3, [r0, #4]
    15b0:	ebfffffe 	bl	d80 <_ZN7Console5clearEv>
    15b4:	e1a00004 	mov	r0, r4
    15b8:	e8bd4010 	pop	{r4, lr}
    15bc:	e12fff1e 	bx	lr

000015c0 <_ZN9Scheduler11LoadContextEv>:
    15c0:	e92d4038 	push	{r3, r4, r5, lr}
    15c4:	e5903014 	ldr	r3, [r0, #20]
    15c8:	e5933044 	ldr	r3, [r3, #68]	; 0x44
    15cc:	e59f2038 	ldr	r2, [pc, #56]	; 160c <_ZN9Scheduler11LoadContextEv+0x4c>
    15d0:	e3530000 	cmp	r3, #0
    15d4:	e5823018 	str	r3, [r2, #24]
    15d8:	1a000009 	bne	1604 <_ZN9Scheduler11LoadContextEv+0x44>
    15dc:	e5905018 	ldr	r5, [r0, #24]
    15e0:	e59f4028 	ldr	r4, [pc, #40]	; 1610 <_ZN9Scheduler11LoadContextEv+0x50>
    15e4:	e3a0100a 	mov	r1, #10
    15e8:	e1a00005 	mov	r0, r5
    15ec:	e3a020ff 	mov	r2, #255	; 0xff
    15f0:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    15f4:	e5f41001 	ldrb	r1, [r4, #1]!
    15f8:	e3510000 	cmp	r1, #0
    15fc:	1afffff9 	bne	15e8 <_ZN9Scheduler11LoadContextEv+0x28>
    1600:	eafffffe 	b	1600 <_ZN9Scheduler11LoadContextEv+0x40>
    1604:	ebfffffe 	bl	0 <armLoadContext>
    1608:	eafffffc 	b	1600 <_ZN9Scheduler11LoadContextEv+0x40>
    160c:	00000000 	andeq	r0, r0, r0
    1610:	000000a0 	andeq	r0, r0, r0, lsr #1

00001614 <_ZN9Scheduler8ScheduleEv>:
    1614:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    1618:	e1a04000 	mov	r4, r0
    161c:	e8bd0003 	pop	{r0, r1}
    1620:	e59f53d0 	ldr	r5, [pc, #976]	; 19f8 <_ZN9Scheduler8ScheduleEv+0x3e4>
    1624:	e594301c 	ldr	r3, [r4, #28]
    1628:	e5931000 	ldr	r1, [r3]
    162c:	e3510000 	cmp	r1, #0
    1630:	0a0000ac 	beq	18e8 <_ZN9Scheduler8ScheduleEv+0x2d4>
    1634:	e5d50014 	ldrb	r0, [r5, #20]
    1638:	e5912048 	ldr	r2, [r1, #72]	; 0x48
    163c:	e3500000 	cmp	r0, #0
    1640:	e5832000 	str	r2, [r3]
    1644:	e5841014 	str	r1, [r4, #20]
    1648:	0a00005c 	beq	17c0 <_ZN9Scheduler8ScheduleEv+0x1ac>
    164c:	e5947018 	ldr	r7, [r4, #24]
    1650:	e59f63a4 	ldr	r6, [pc, #932]	; 19fc <_ZN9Scheduler8ScheduleEv+0x3e8>
    1654:	e3a0100a 	mov	r1, #10
    1658:	e1a00007 	mov	r0, r7
    165c:	e59f239c 	ldr	r2, [pc, #924]	; 1a00 <_ZN9Scheduler8ScheduleEv+0x3ec>
    1660:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1664:	e5f61001 	ldrb	r1, [r6, #1]!
    1668:	e3510000 	cmp	r1, #0
    166c:	1afffff9 	bne	1658 <_ZN9Scheduler8ScheduleEv+0x44>
    1670:	e59f175c 	ldr	r1, [pc, #1884]	; 1dd4 <swi_endTask+0x74>
    1674:	e581d000 	str	sp, [r1]
    1678:	e3a02cff 	mov	r2, #65280	; 0xff00
    167c:	e595101c 	ldr	r1, [r5, #28]
    1680:	e5940018 	ldr	r0, [r4, #24]
    1684:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    1688:	e59f6374 	ldr	r6, [pc, #884]	; 1a04 <_ZN9Scheduler8ScheduleEv+0x3f0>
    168c:	e5947018 	ldr	r7, [r4, #24]
    1690:	e3a0100a 	mov	r1, #10
    1694:	e1a00007 	mov	r0, r7
    1698:	e59f2360 	ldr	r2, [pc, #864]	; 1a00 <_ZN9Scheduler8ScheduleEv+0x3ec>
    169c:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    16a0:	e5f61001 	ldrb	r1, [r6, #1]!
    16a4:	e3510000 	cmp	r1, #0
    16a8:	1afffff9 	bne	1694 <_ZN9Scheduler8ScheduleEv+0x80>
    16ac:	e5943014 	ldr	r3, [r4, #20]
    16b0:	e5940018 	ldr	r0, [r4, #24]
    16b4:	e1d315b4 	ldrh	r1, [r3, #84]	; 0x54
    16b8:	e3a02cff 	mov	r2, #65280	; 0xff00
    16bc:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    16c0:	e59f6340 	ldr	r6, [pc, #832]	; 1a08 <_ZN9Scheduler8ScheduleEv+0x3f4>
    16c4:	e5947018 	ldr	r7, [r4, #24]
    16c8:	e3a0100a 	mov	r1, #10
    16cc:	e1a00007 	mov	r0, r7
    16d0:	e59f2328 	ldr	r2, [pc, #808]	; 1a00 <_ZN9Scheduler8ScheduleEv+0x3ec>
    16d4:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    16d8:	e5f61001 	ldrb	r1, [r6, #1]!
    16dc:	e3510000 	cmp	r1, #0
    16e0:	1afffff9 	bne	16cc <_ZN9Scheduler8ScheduleEv+0xb8>
    16e4:	e5943014 	ldr	r3, [r4, #20]
    16e8:	e5940018 	ldr	r0, [r4, #24]
    16ec:	e5d31058 	ldrb	r1, [r3, #88]	; 0x58
    16f0:	e3a02cff 	mov	r2, #65280	; 0xff00
    16f4:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    16f8:	e59f630c 	ldr	r6, [pc, #780]	; 1a0c <_ZN9Scheduler8ScheduleEv+0x3f8>
    16fc:	e5947018 	ldr	r7, [r4, #24]
    1700:	e3a0100a 	mov	r1, #10
    1704:	e1a00007 	mov	r0, r7
    1708:	e59f22f0 	ldr	r2, [pc, #752]	; 1a00 <_ZN9Scheduler8ScheduleEv+0x3ec>
    170c:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1710:	e5f61001 	ldrb	r1, [r6, #1]!
    1714:	e3510000 	cmp	r1, #0
    1718:	1afffff9 	bne	1704 <_ZN9Scheduler8ScheduleEv+0xf0>
    171c:	e2841014 	add	r1, r4, #20
    1720:	e5940018 	ldr	r0, [r4, #24]
    1724:	e3a02cff 	mov	r2, #65280	; 0xff00
    1728:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    172c:	e59f62dc 	ldr	r6, [pc, #732]	; 1a10 <_ZN9Scheduler8ScheduleEv+0x3fc>
    1730:	e5947018 	ldr	r7, [r4, #24]
    1734:	e3a0100a 	mov	r1, #10
    1738:	e1a00007 	mov	r0, r7
    173c:	e59f22bc 	ldr	r2, [pc, #700]	; 1a00 <_ZN9Scheduler8ScheduleEv+0x3ec>
    1740:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1744:	e5f61001 	ldrb	r1, [r6, #1]!
    1748:	e3510000 	cmp	r1, #0
    174c:	1afffff9 	bne	1738 <_ZN9Scheduler8ScheduleEv+0x124>
    1750:	e5943014 	ldr	r3, [r4, #20]
    1754:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1758:	e5940018 	ldr	r0, [r4, #24]
    175c:	e1d315b4 	ldrh	r1, [r3, #84]	; 0x54
    1760:	e3a02cff 	mov	r2, #65280	; 0xff00
    1764:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    1768:	e59f629c 	ldr	r6, [pc, #668]	; 1a0c <_ZN9Scheduler8ScheduleEv+0x3f8>
    176c:	e5947018 	ldr	r7, [r4, #24]
    1770:	e3a0100a 	mov	r1, #10
    1774:	e1a00007 	mov	r0, r7
    1778:	e59f2280 	ldr	r2, [pc, #640]	; 1a00 <_ZN9Scheduler8ScheduleEv+0x3ec>
    177c:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1780:	e5f61001 	ldrb	r1, [r6, #1]!
    1784:	e3510000 	cmp	r1, #0
    1788:	1afffff9 	bne	1774 <_ZN9Scheduler8ScheduleEv+0x160>
    178c:	e5941014 	ldr	r1, [r4, #20]
    1790:	e3a02cff 	mov	r2, #65280	; 0xff00
    1794:	e2811048 	add	r1, r1, #72	; 0x48
    1798:	e5940018 	ldr	r0, [r4, #24]
    179c:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    17a0:	e59f226c 	ldr	r2, [pc, #620]	; 1a14 <_ZN9Scheduler8ScheduleEv+0x400>
    17a4:	e5921004 	ldr	r1, [r2, #4]
    17a8:	e281197a 	add	r1, r1, #1998848	; 0x1e8000
    17ac:	e2811d12 	add	r1, r1, #1152	; 0x480
    17b0:	e5923004 	ldr	r3, [r2, #4]
    17b4:	e1510003 	cmp	r1, r3
    17b8:	8afffffc 	bhi	17b0 <_ZN9Scheduler8ScheduleEv+0x19c>
    17bc:	e5941014 	ldr	r1, [r4, #20]
    17c0:	e5d13058 	ldrb	r3, [r1, #88]	; 0x58
    17c4:	e3530003 	cmp	r3, #3
    17c8:	0a000033 	beq	189c <_ZN9Scheduler8ScheduleEv+0x288>
    17cc:	e594301c 	ldr	r3, [r4, #28]
    17d0:	e594c004 	ldr	ip, [r4, #4]
    17d4:	e5932000 	ldr	r2, [r3]
    17d8:	e28cc001 	add	ip, ip, #1
    17dc:	e3520000 	cmp	r2, #0
    17e0:	e3a00000 	mov	r0, #0
    17e4:	e584c004 	str	ip, [r4, #4]
    17e8:	e5810048 	str	r0, [r1, #72]	; 0x48
    17ec:	05831000 	streq	r1, [r3]
    17f0:	1a000001 	bne	17fc <_ZN9Scheduler8ScheduleEv+0x1e8>
    17f4:	ea000004 	b	180c <_ZN9Scheduler8ScheduleEv+0x1f8>
    17f8:	e1a02003 	mov	r2, r3
    17fc:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    1800:	e3530000 	cmp	r3, #0
    1804:	1afffffb 	bne	17f8 <_ZN9Scheduler8ScheduleEv+0x1e4>
    1808:	e5821048 	str	r1, [r2, #72]	; 0x48
    180c:	e59f15bc 	ldr	r1, [pc, #1468]	; 1dd0 <swi_endTask+0x70>
    1810:	e581d000 	str	sp, [r1]
    1814:	e5940018 	ldr	r0, [r4, #24]
    1818:	ebfffffe 	bl	d80 <_ZN7Console5clearEv>
    181c:	e5943014 	ldr	r3, [r4, #20]
    1820:	e5d32058 	ldrb	r2, [r3, #88]	; 0x58
    1824:	e3520000 	cmp	r2, #0
    1828:	1a000067 	bne	19cc <_ZN9Scheduler8ScheduleEv+0x3b8>
    182c:	e5931050 	ldr	r1, [r3, #80]	; 0x50
    1830:	e3a02001 	mov	r2, #1
    1834:	e5851018 	str	r1, [r5, #24]
    1838:	e5c32058 	strb	r2, [r3, #88]	; 0x58
    183c:	e3a00010 	mov	r0, #16
    1840:	e129f000 	msr	CPSR_fc, r0
    1844:	e59f158c 	ldr	r1, [pc, #1420]	; 1dd8 <swi_endTask+0x78>
    1848:	e591d000 	ldr	sp, [r1]
    184c:	e59f61c0 	ldr	r6, [pc, #448]	; 1a14 <_ZN9Scheduler8ScheduleEv+0x400>
    1850:	e594200c 	ldr	r2, [r4, #12]
    1854:	e5961004 	ldr	r1, [r6, #4]
    1858:	e0620282 	rsb	r0, r2, r2, lsl #5
    185c:	e0822100 	add	r2, r2, r0, lsl #2
    1860:	e59f5190 	ldr	r5, [pc, #400]	; 19f8 <_ZN9Scheduler8ScheduleEv+0x3e4>
    1864:	e0812182 	add	r2, r1, r2, lsl #3
    1868:	e3a07001 	mov	r7, #1
    186c:	e5c57004 	strb	r7, [r5, #4]
    1870:	e5862010 	str	r2, [r6, #16]
    1874:	e593c04c 	ldr	ip, [r3, #76]	; 0x4c
    1878:	e1a0e00f 	mov	lr, pc
    187c:	e12fff1c 	bx	ip
    1880:	e5963004 	ldr	r3, [r6, #4]
    1884:	e5c57004 	strb	r7, [r5, #4]
    1888:	e5863010 	str	r3, [r6, #16]
    188c:	e3a05002 	mov	r5, #2
    1890:	ef000000 	svc	0x00000000
    1894:	e3a05001 	mov	r5, #1
    1898:	ef000000 	svc	0x00000000
    189c:	e5953020 	ldr	r3, [r5, #32]
    18a0:	e5d52014 	ldrb	r2, [r5, #20]
    18a4:	e2833001 	add	r3, r3, #1
    18a8:	e3520000 	cmp	r2, #0
    18ac:	e5853020 	str	r3, [r5, #32]
    18b0:	0affff5b 	beq	1624 <_ZN9Scheduler8ScheduleEv+0x10>
    18b4:	e5947018 	ldr	r7, [r4, #24]
    18b8:	e59f6158 	ldr	r6, [pc, #344]	; 1a18 <_ZN9Scheduler8ScheduleEv+0x404>
    18bc:	e3a0100a 	mov	r1, #10
    18c0:	e1a00007 	mov	r0, r7
    18c4:	e3a020ff 	mov	r2, #255	; 0xff
    18c8:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    18cc:	e5f61001 	ldrb	r1, [r6, #1]!
    18d0:	e3510000 	cmp	r1, #0
    18d4:	1afffff9 	bne	18c0 <_ZN9Scheduler8ScheduleEv+0x2ac>
    18d8:	e594301c 	ldr	r3, [r4, #28]
    18dc:	e5931000 	ldr	r1, [r3]
    18e0:	e3510000 	cmp	r1, #0
    18e4:	1affff52 	bne	1634 <_ZN9Scheduler8ScheduleEv+0x20>
    18e8:	e59f2124 	ldr	r2, [pc, #292]	; 1a14 <_ZN9Scheduler8ScheduleEv+0x400>
    18ec:	e5943008 	ldr	r3, [r4, #8]
    18f0:	e5922004 	ldr	r2, [r2, #4]
    18f4:	e0633002 	rsb	r3, r3, r2
    18f8:	e5843008 	str	r3, [r4, #8]
    18fc:	e5940018 	ldr	r0, [r4, #24]
    1900:	ebfffffe 	bl	d80 <_ZN7Console5clearEv>
    1904:	e59f3110 	ldr	r3, [pc, #272]	; 1a1c <_ZN9Scheduler8ScheduleEv+0x408>
    1908:	e3a02002 	mov	r2, #2
    190c:	e583221c 	str	r2, [r3, #540]	; 0x21c
    1910:	e5946018 	ldr	r6, [r4, #24]
    1914:	e59f5104 	ldr	r5, [pc, #260]	; 1a20 <_ZN9Scheduler8ScheduleEv+0x40c>
    1918:	e3a0100a 	mov	r1, #10
    191c:	e1a00006 	mov	r0, r6
    1920:	e3a02cff 	mov	r2, #65280	; 0xff00
    1924:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1928:	e5f51001 	ldrb	r1, [r5, #1]!
    192c:	e3510000 	cmp	r1, #0
    1930:	1afffff9 	bne	191c <_ZN9Scheduler8ScheduleEv+0x308>
    1934:	e5946018 	ldr	r6, [r4, #24]
    1938:	e59f50e4 	ldr	r5, [pc, #228]	; 1a24 <_ZN9Scheduler8ScheduleEv+0x410>
    193c:	e3a0100a 	mov	r1, #10
    1940:	e1a00006 	mov	r0, r6
    1944:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1948:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    194c:	e5f51001 	ldrb	r1, [r5, #1]!
    1950:	e3510000 	cmp	r1, #0
    1954:	1afffff9 	bne	1940 <_ZN9Scheduler8ScheduleEv+0x32c>
    1958:	e5941004 	ldr	r1, [r4, #4]
    195c:	e5940018 	ldr	r0, [r4, #24]
    1960:	e59f2098 	ldr	r2, [pc, #152]	; 1a00 <_ZN9Scheduler8ScheduleEv+0x3ec>
    1964:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    1968:	e59f50b8 	ldr	r5, [pc, #184]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x414>
    196c:	e5946018 	ldr	r6, [r4, #24]
    1970:	e3a0100a 	mov	r1, #10
    1974:	e1a00006 	mov	r0, r6
    1978:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    197c:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1980:	e5f51001 	ldrb	r1, [r5, #1]!
    1984:	e3510000 	cmp	r1, #0
    1988:	1afffff9 	bne	1974 <_ZN9Scheduler8ScheduleEv+0x360>
    198c:	e5941008 	ldr	r1, [r4, #8]
    1990:	e5940018 	ldr	r0, [r4, #24]
    1994:	e59f2064 	ldr	r2, [pc, #100]	; 1a00 <_ZN9Scheduler8ScheduleEv+0x3ec>
    1998:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    199c:	e59f5088 	ldr	r5, [pc, #136]	; 1a2c <_ZN9Scheduler8ScheduleEv+0x418>
    19a0:	e5944018 	ldr	r4, [r4, #24]
    19a4:	e3a01020 	mov	r1, #32
    19a8:	e1a00004 	mov	r0, r4
    19ac:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    19b0:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    19b4:	e5f51001 	ldrb	r1, [r5, #1]!
    19b8:	e3510000 	cmp	r1, #0
    19bc:	1afffff9 	bne	19a8 <_ZN9Scheduler8ScheduleEv+0x394>
    19c0:	e1a00000 	nop			; (mov r0, r0)
    19c4:	e1a00000 	nop			; (mov r0, r0)
    19c8:	eafffffc 	b	19c0 <_ZN9Scheduler8ScheduleEv+0x3ac>
    19cc:	e594300c 	ldr	r3, [r4, #12]
    19d0:	e59f203c 	ldr	r2, [pc, #60]	; 1a14 <_ZN9Scheduler8ScheduleEv+0x400>
    19d4:	e0630283 	rsb	r0, r3, r3, lsl #5
    19d8:	e5921004 	ldr	r1, [r2, #4]
    19dc:	e0833100 	add	r3, r3, r0, lsl #2
    19e0:	e0813183 	add	r3, r1, r3, lsl #3
    19e4:	e3a01001 	mov	r1, #1
    19e8:	e5c51004 	strb	r1, [r5, #4]
    19ec:	e1a00004 	mov	r0, r4
    19f0:	e5823010 	str	r3, [r2, #16]
    19f4:	ebfffffe 	bl	15c0 <_ZN9Scheduler11LoadContextEv>
    19f8:	00000000 	andeq	r0, r0, r0
    19fc:	000000c4 	andeq	r0, r0, r4, asr #1
    1a00:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    1a04:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1a08:	00000130 	andeq	r0, r0, r0, lsr r1
    1a0c:	00000140 	andeq	r0, r0, r0, asr #2
    1a10:	00000154 	andeq	r0, r0, r4, asr r1
    1a14:	20003000 	andcs	r3, r0, r0
    1a18:	000000e4 	andeq	r0, r0, r4, ror #1
    1a1c:	2000b000 	andcs	fp, r0, r0
    1a20:	00000118 	andeq	r0, r0, r8, lsl r1
    1a24:	00000168 	andeq	r0, r0, r8, ror #2
    1a28:	00000174 	andeq	r0, r0, r4, ror r1
    1a2c:	00000184 	andeq	r0, r0, r4, lsl #3

00001a30 <_ZN9Scheduler7AddTaskEv>:
    1a30:	e590301c 	ldr	r3, [r0, #28]
    1a34:	e5932000 	ldr	r2, [r3]
    1a38:	e5901010 	ldr	r1, [r0, #16]
    1a3c:	e92d4070 	push	{r4, r5, r6, lr}
    1a40:	e3520000 	cmp	r2, #0
    1a44:	e1a05000 	mov	r5, r0
    1a48:	e3a00000 	mov	r0, #0
    1a4c:	e5810048 	str	r0, [r1, #72]	; 0x48
    1a50:	05831000 	streq	r1, [r3]
    1a54:	1a000001 	bne	1a60 <_ZN9Scheduler7AddTaskEv+0x30>
    1a58:	ea000004 	b	1a70 <_ZN9Scheduler7AddTaskEv+0x40>
    1a5c:	e1a02003 	mov	r2, r3
    1a60:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    1a64:	e3530000 	cmp	r3, #0
    1a68:	1afffffb 	bne	1a5c <_ZN9Scheduler7AddTaskEv+0x2c>
    1a6c:	e5821048 	str	r1, [r2, #72]	; 0x48
    1a70:	e59f30f8 	ldr	r3, [pc, #248]	; 1b70 <_ZN9Scheduler7AddTaskEv+0x140>
    1a74:	e5d33014 	ldrb	r3, [r3, #20]
    1a78:	e3530000 	cmp	r3, #0
    1a7c:	0a000039 	beq	1b68 <_ZN9Scheduler7AddTaskEv+0x138>
    1a80:	e5956018 	ldr	r6, [r5, #24]
    1a84:	e59f40e8 	ldr	r4, [pc, #232]	; 1b74 <_ZN9Scheduler7AddTaskEv+0x144>
    1a88:	e3a0100a 	mov	r1, #10
    1a8c:	e1a00006 	mov	r0, r6
    1a90:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1a94:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1a98:	e5f41001 	ldrb	r1, [r4, #1]!
    1a9c:	e3510000 	cmp	r1, #0
    1aa0:	1afffff9 	bne	1a8c <_ZN9Scheduler7AddTaskEv+0x5c>
    1aa4:	e595301c 	ldr	r3, [r5, #28]
    1aa8:	e5933000 	ldr	r3, [r3]
    1aac:	e3530000 	cmp	r3, #0
    1ab0:	e5950018 	ldr	r0, [r5, #24]
    1ab4:	0a000007 	beq	1ad8 <_ZN9Scheduler7AddTaskEv+0xa8>
    1ab8:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1abc:	e3530000 	cmp	r3, #0
    1ac0:	e3a01001 	mov	r1, #1
    1ac4:	0a000003 	beq	1ad8 <_ZN9Scheduler7AddTaskEv+0xa8>
    1ac8:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1acc:	e3530000 	cmp	r3, #0
    1ad0:	e2811001 	add	r1, r1, #1
    1ad4:	1afffffb 	bne	1ac8 <_ZN9Scheduler7AddTaskEv+0x98>
    1ad8:	e59f2098 	ldr	r2, [pc, #152]	; 1b78 <_ZN9Scheduler7AddTaskEv+0x148>
    1adc:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    1ae0:	e59f4094 	ldr	r4, [pc, #148]	; 1b7c <_ZN9Scheduler7AddTaskEv+0x14c>
    1ae4:	e5956018 	ldr	r6, [r5, #24]
    1ae8:	e3a0100a 	mov	r1, #10
    1aec:	e1a00006 	mov	r0, r6
    1af0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1af4:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1af8:	e5f41001 	ldrb	r1, [r4, #1]!
    1afc:	e3510000 	cmp	r1, #0
    1b00:	1afffff9 	bne	1aec <_ZN9Scheduler7AddTaskEv+0xbc>
    1b04:	e5953010 	ldr	r3, [r5, #16]
    1b08:	e5950018 	ldr	r0, [r5, #24]
    1b0c:	e1d315b4 	ldrh	r1, [r3, #84]	; 0x54
    1b10:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1b14:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    1b18:	e59f4060 	ldr	r4, [pc, #96]	; 1b80 <_ZN9Scheduler7AddTaskEv+0x150>
    1b1c:	e5956018 	ldr	r6, [r5, #24]
    1b20:	e3a0100a 	mov	r1, #10
    1b24:	e1a00006 	mov	r0, r6
    1b28:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1b2c:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1b30:	e5f41001 	ldrb	r1, [r4, #1]!
    1b34:	e3510000 	cmp	r1, #0
    1b38:	1afffff9 	bne	1b24 <_ZN9Scheduler7AddTaskEv+0xf4>
    1b3c:	e5951010 	ldr	r1, [r5, #16]
    1b40:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1b44:	e5950018 	ldr	r0, [r5, #24]
    1b48:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    1b4c:	e59f2030 	ldr	r2, [pc, #48]	; 1b84 <_ZN9Scheduler7AddTaskEv+0x154>
    1b50:	e5921004 	ldr	r1, [r2, #4]
    1b54:	e281183d 	add	r1, r1, #3997696	; 0x3d0000
    1b58:	e2811c09 	add	r1, r1, #2304	; 0x900
    1b5c:	e5923004 	ldr	r3, [r2, #4]
    1b60:	e1510003 	cmp	r1, r3
    1b64:	8afffffc 	bhi	1b5c <_ZN9Scheduler7AddTaskEv+0x12c>
    1b68:	e8bd4070 	pop	{r4, r5, r6, lr}
    1b6c:	e12fff1e 	bx	lr
    1b70:	00000000 	andeq	r0, r0, r0
    1b74:	000001ac 	andeq	r0, r0, ip, lsr #3
    1b78:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    1b7c:	000001c8 	andeq	r0, r0, r8, asr #3
    1b80:	000001d8 	ldrdeq	r0, [r0], -r8
    1b84:	20003000 	andcs	r3, r0, r0

00001b88 <_Z5test1v>:
    1b88:	e59f300c 	ldr	r3, [pc, #12]	; 1b9c <_Z5test1v+0x14>
    1b8c:	e1a00000 	nop			; (mov r0, r0)
    1b90:	e2533001 	subs	r3, r3, #1
    1b94:	1afffffc 	bne	1b8c <_Z5test1v+0x4>
    1b98:	e12fff1e 	bx	lr
    1b9c:	00989680 	addseq	r9, r8, r0, lsl #13

00001ba0 <swi_writer>:
    1ba0:	e92d4070 	push	{r4, r5, r6, lr}
    1ba4:	e1a05006 	mov	r5, r6
    1ba8:	e1a04007 	mov	r4, r7
    1bac:	e1a01008 	mov	r1, r8
    1bb0:	e1a03009 	mov	r3, r9
    1bb4:	e3530003 	cmp	r3, #3
    1bb8:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    1bbc:	ea00000e 	b	1bfc <swi_writer+0x5c>
    1bc0:	00001bd0 	ldrdeq	r1, [r0], -r0
    1bc4:	00001c2c 	andeq	r1, r0, ip, lsr #24
    1bc8:	00001c18 	andeq	r1, r0, r8, lsl ip
    1bcc:	00001c04 	andeq	r1, r0, r4, lsl #24
    1bd0:	e5d51000 	ldrb	r1, [r5]
    1bd4:	e59f3080 	ldr	r3, [pc, #128]	; 1c5c <swi_writer+0xbc>
    1bd8:	e3510000 	cmp	r1, #0
    1bdc:	e5936008 	ldr	r6, [r3, #8]
    1be0:	0a000005 	beq	1bfc <swi_writer+0x5c>
    1be4:	e1a00006 	mov	r0, r6
    1be8:	e1a02004 	mov	r2, r4
    1bec:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1bf0:	e5f51001 	ldrb	r1, [r5, #1]!
    1bf4:	e3510000 	cmp	r1, #0
    1bf8:	1afffff9 	bne	1be4 <swi_writer+0x44>
    1bfc:	e8bd4070 	pop	{r4, r5, r6, lr}
    1c00:	e12fff1e 	bx	lr
    1c04:	e59f3050 	ldr	r3, [pc, #80]	; 1c5c <swi_writer+0xbc>
    1c08:	e1a02004 	mov	r2, r4
    1c0c:	e5930008 	ldr	r0, [r3, #8]
    1c10:	e8bd4070 	pop	{r4, r5, r6, lr}
    1c14:	eafffffe 	b	1088 <_ZN7Console12kprintHexa32Ejj>
    1c18:	e59f303c 	ldr	r3, [pc, #60]	; 1c5c <swi_writer+0xbc>
    1c1c:	e1a02004 	mov	r2, r4
    1c20:	e5930008 	ldr	r0, [r3, #8]
    1c24:	e8bd4070 	pop	{r4, r5, r6, lr}
    1c28:	eafffffe 	b	1034 <_ZN7Console6kprintEjj>
    1c2c:	e5d51000 	ldrb	r1, [r5]
    1c30:	e59f3024 	ldr	r3, [pc, #36]	; 1c5c <swi_writer+0xbc>
    1c34:	e3510000 	cmp	r1, #0
    1c38:	e5936008 	ldr	r6, [r3, #8]
    1c3c:	0affffee 	beq	1bfc <swi_writer+0x5c>
    1c40:	e1a00006 	mov	r0, r6
    1c44:	e1a02004 	mov	r2, r4
    1c48:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1c4c:	e5f51001 	ldrb	r1, [r5, #1]!
    1c50:	e3510000 	cmp	r1, #0
    1c54:	1afffff9 	bne	1c40 <swi_writer+0xa0>
    1c58:	eaffffe7 	b	1bfc <swi_writer+0x5c>
    1c5c:	00000000 	andeq	r0, r0, r0

00001c60 <swi_svmode>:
    1c60:	e92d4070 	push	{r4, r5, r6, lr}
    1c64:	e8bd4070 	pop	{r4, r5, r6, lr}
    1c68:	e59f50dc 	ldr	r5, [pc, #220]	; 1d4c <swi_svmode+0xec>
    1c6c:	e5d53014 	ldrb	r3, [r5, #20]
    1c70:	e3530000 	cmp	r3, #0
    1c74:	0a000032 	beq	1d44 <swi_svmode+0xe4>
    1c78:	e5956008 	ldr	r6, [r5, #8]
    1c7c:	e59f40cc 	ldr	r4, [pc, #204]	; 1d50 <swi_svmode+0xf0>
    1c80:	e3a0100a 	mov	r1, #10
    1c84:	e1a00006 	mov	r0, r6
    1c88:	e59f20c4 	ldr	r2, [pc, #196]	; 1d54 <swi_svmode+0xf4>
    1c8c:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1c90:	e5f41001 	ldrb	r1, [r4, #1]!
    1c94:	e3510000 	cmp	r1, #0
    1c98:	1afffff9 	bne	1c84 <swi_svmode+0x24>
    1c9c:	e5956008 	ldr	r6, [r5, #8]
    1ca0:	e59f40b0 	ldr	r4, [pc, #176]	; 1d58 <swi_svmode+0xf8>
    1ca4:	e3a0100a 	mov	r1, #10
    1ca8:	e1a00006 	mov	r0, r6
    1cac:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1cb0:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1cb4:	e5f41001 	ldrb	r1, [r4, #1]!
    1cb8:	e3510000 	cmp	r1, #0
    1cbc:	1afffff9 	bne	1ca8 <swi_svmode+0x48>
    1cc0:	e595300c 	ldr	r3, [r5, #12]
    1cc4:	e593301c 	ldr	r3, [r3, #28]
    1cc8:	e5933000 	ldr	r3, [r3]
    1ccc:	e3530000 	cmp	r3, #0
    1cd0:	e5950008 	ldr	r0, [r5, #8]
    1cd4:	0a000007 	beq	1cf8 <swi_svmode+0x98>
    1cd8:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1cdc:	e3530000 	cmp	r3, #0
    1ce0:	e3a01001 	mov	r1, #1
    1ce4:	0a000003 	beq	1cf8 <swi_svmode+0x98>
    1ce8:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1cec:	e3530000 	cmp	r3, #0
    1cf0:	e2811001 	add	r1, r1, #1
    1cf4:	1afffffb 	bne	1ce8 <swi_svmode+0x88>
    1cf8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1cfc:	ebfffffe 	bl	1034 <_ZN7Console6kprintEjj>
    1d00:	e59f10d4 	ldr	r1, [pc, #212]	; 1ddc <swi_endTask+0x7c>
    1d04:	e581d000 	str	sp, [r1]
    1d08:	e3a0100a 	mov	r1, #10
    1d0c:	e5950008 	ldr	r0, [r5, #8]
    1d10:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1d14:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1d18:	e5951020 	ldr	r1, [r5, #32]
    1d1c:	e3a02cff 	mov	r2, #65280	; 0xff00
    1d20:	e5950008 	ldr	r0, [r5, #8]
    1d24:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    1d28:	e59f202c 	ldr	r2, [pc, #44]	; 1d5c <swi_svmode+0xfc>
    1d2c:	e5921004 	ldr	r1, [r2, #4]
    1d30:	e28119b7 	add	r1, r1, #2998272	; 0x2dc000
    1d34:	e2811d1b 	add	r1, r1, #1728	; 0x6c0
    1d38:	e5923004 	ldr	r3, [r2, #4]
    1d3c:	e1510003 	cmp	r1, r3
    1d40:	8afffffc 	bhi	1d38 <swi_svmode+0xd8>
    1d44:	e595000c 	ldr	r0, [r5, #12]
    1d48:	ebfffffe 	bl	1614 <_ZN9Scheduler8ScheduleEv>
    1d4c:	00000000 	andeq	r0, r0, r0
    1d50:	000001f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1d54:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    1d58:	0000020c 	andeq	r0, r0, ip, lsl #4
    1d5c:	20003000 	andcs	r3, r0, r0

00001d60 <swi_endTask>:
    1d60:	e92d4038 	push	{r3, r4, r5, lr}
    1d64:	e59f307c 	ldr	r3, [pc, #124]	; 1de8 <swi_endTask+0x88>
    1d68:	e593200c 	ldr	r2, [r3, #12]
    1d6c:	e5d30014 	ldrb	r0, [r3, #20]
    1d70:	e5922014 	ldr	r2, [r2, #20]
    1d74:	e3a01003 	mov	r1, #3
    1d78:	e3500000 	cmp	r0, #0
    1d7c:	e5c21058 	strb	r1, [r2, #88]	; 0x58
    1d80:	0a00000f 	beq	1dc4 <swi_endTask+0x64>
    1d84:	e5935008 	ldr	r5, [r3, #8]
    1d88:	e59f405c 	ldr	r4, [pc, #92]	; 1dec <swi_endTask+0x8c>
    1d8c:	e3a0100a 	mov	r1, #10
    1d90:	e1a00005 	mov	r0, r5
    1d94:	e3a020ff 	mov	r2, #255	; 0xff
    1d98:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1d9c:	e5f41001 	ldrb	r1, [r4, #1]!
    1da0:	e3510000 	cmp	r1, #0
    1da4:	1afffff9 	bne	1d90 <swi_endTask+0x30>
    1da8:	e59f2040 	ldr	r2, [pc, #64]	; 1df0 <swi_endTask+0x90>
    1dac:	e5921004 	ldr	r1, [r2, #4]
    1db0:	e28119b7 	add	r1, r1, #2998272	; 0x2dc000
    1db4:	e2811d1b 	add	r1, r1, #1728	; 0x6c0
    1db8:	e5923004 	ldr	r3, [r2, #4]
    1dbc:	e1510003 	cmp	r1, r3
    1dc0:	8afffffc 	bhi	1db8 <swi_endTask+0x58>
    1dc4:	00000000 	andeq	r0, r0, r0
    1dc8:	00001fc8 	andeq	r1, r0, r8, asr #31
	...
    1de0:	e8bd4038 	pop	{r3, r4, r5, lr}
    1de4:	e12fff1e 	bx	lr
    1de8:	00000000 	andeq	r0, r0, r0
    1dec:	00000224 	andeq	r0, r0, r4, lsr #4
    1df0:	20003000 	andcs	r3, r0, r0

00001df4 <swi_addTask>:
    1df4:	e59f301c 	ldr	r3, [pc, #28]	; 1e18 <swi_addTask+0x24>
    1df8:	e593000c 	ldr	r0, [r3, #12]
    1dfc:	e59f3018 	ldr	r3, [pc, #24]	; 1e1c <swi_addTask+0x28>
    1e00:	e3a02801 	mov	r2, #65536	; 0x10000
    1e04:	e3500000 	cmp	r0, #0
    1e08:	e583201c 	str	r2, [r3, #28]
    1e0c:	e5832028 	str	r2, [r3, #40]	; 0x28
    1e10:	012fff1e 	bxeq	lr
    1e14:	eafffffe 	b	1a30 <_ZN9Scheduler7AddTaskEv>
    1e18:	00000000 	andeq	r0, r0, r0
    1e1c:	20200000 	eorcs	r0, r0, r0

00001e20 <_Z11userAddTaskv>:
    1e20:	e3a05003 	mov	r5, #3
    1e24:	ef000000 	svc	0x00000000
    1e28:	e12fff1e 	bx	lr

00001e2c <_Z9userPrintPKcj>:
    1e2c:	e59fc034 	ldr	ip, [pc, #52]	; 1e68 <_Z9userPrintPKcj+0x3c>
    1e30:	e3a03000 	mov	r3, #0
    1e34:	e7d02003 	ldrb	r2, [r0, r3]
    1e38:	e3520000 	cmp	r2, #0
    1e3c:	1a000007 	bne	1e60 <_Z9userPrintPKcj+0x34>
    1e40:	e153000c 	cmp	r3, ip
    1e44:	8a000005 	bhi	1e60 <_Z9userPrintPKcj+0x34>
    1e48:	e1a07001 	mov	r7, r1
    1e4c:	e1a06000 	mov	r6, r0
    1e50:	e3a09000 	mov	r9, #0
    1e54:	e3a05000 	mov	r5, #0
    1e58:	ef000000 	svc	0x00000000
    1e5c:	e12fff1e 	bx	lr
    1e60:	e2833001 	add	r3, r3, #1
    1e64:	eafffff2 	b	1e34 <_Z9userPrintPKcj+0x8>
    1e68:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

00001e6c <_Z9userPrintPKc>:
    1e6c:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    1e70:	eafffffe 	b	1e2c <_Z9userPrintPKcj>

00001e74 <_Z9userPrintPcj>:
    1e74:	e59fc034 	ldr	ip, [pc, #52]	; 1eb0 <_Z9userPrintPcj+0x3c>
    1e78:	e3a03000 	mov	r3, #0
    1e7c:	e7d02003 	ldrb	r2, [r0, r3]
    1e80:	e3520000 	cmp	r2, #0
    1e84:	1a000007 	bne	1ea8 <_Z9userPrintPcj+0x34>
    1e88:	e153000c 	cmp	r3, ip
    1e8c:	8a000005 	bhi	1ea8 <_Z9userPrintPcj+0x34>
    1e90:	e1a07001 	mov	r7, r1
    1e94:	e1a06000 	mov	r6, r0
    1e98:	e3a09001 	mov	r9, #1
    1e9c:	e3a05000 	mov	r5, #0
    1ea0:	ef000000 	svc	0x00000000
    1ea4:	e12fff1e 	bx	lr
    1ea8:	e2833001 	add	r3, r3, #1
    1eac:	eafffff2 	b	1e7c <_Z9userPrintPcj+0x8>
    1eb0:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

00001eb4 <_Z9userPrintPc>:
    1eb4:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    1eb8:	eafffffe 	b	1e74 <_Z9userPrintPcj>

00001ebc <_Z9userPrintjj>:
    1ebc:	e92d4030 	push	{r4, r5, lr}
    1ec0:	e24dd00c 	sub	sp, sp, #12
    1ec4:	e1a07001 	mov	r7, r1
    1ec8:	e1a08000 	mov	r8, r0
    1ecc:	e3a09002 	mov	r9, #2
    1ed0:	e3a05000 	mov	r5, #0
    1ed4:	ef000000 	svc	0x00000000
    1ed8:	e3a03001 	mov	r3, #1
    1edc:	e5cd3007 	strb	r3, [sp, #7]
    1ee0:	e5dd3007 	ldrb	r3, [sp, #7]
    1ee4:	e3530000 	cmp	r3, #0
    1ee8:	1a00000c 	bne	1f20 <_Z9userPrintjj+0x64>
    1eec:	e59f303c 	ldr	r3, [pc, #60]	; 1f30 <_Z9userPrintjj+0x74>
    1ef0:	e59f403c 	ldr	r4, [pc, #60]	; 1f34 <_Z9userPrintjj+0x78>
    1ef4:	e5935008 	ldr	r5, [r3, #8]
    1ef8:	e3a0100a 	mov	r1, #10
    1efc:	e1a00005 	mov	r0, r5
    1f00:	e3a020ff 	mov	r2, #255	; 0xff
    1f04:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    1f08:	e5f41001 	ldrb	r1, [r4, #1]!
    1f0c:	e3510000 	cmp	r1, #0
    1f10:	1afffff9 	bne	1efc <_Z9userPrintjj+0x40>
    1f14:	e28dd00c 	add	sp, sp, #12
    1f18:	e8bd4030 	pop	{r4, r5, lr}
    1f1c:	e12fff1e 	bx	lr
    1f20:	e1a00000 	nop			; (mov r0, r0)
    1f24:	e28dd00c 	add	sp, sp, #12
    1f28:	e8bd4030 	pop	{r4, r5, lr}
    1f2c:	e12fff1e 	bx	lr
    1f30:	00000000 	andeq	r0, r0, r0
    1f34:	0000023c 	andeq	r0, r0, ip, lsr r2

00001f38 <_Z12PrintProcessv>:
    1f38:	e92d4010 	push	{r4, lr}
    1f3c:	e3a04f7d 	mov	r4, #500	; 0x1f4
    1f40:	e2444001 	sub	r4, r4, #1
    1f44:	e59f0038 	ldr	r0, [pc, #56]	; 1f84 <_Z12PrintProcessv+0x4c>
    1f48:	e3a01cff 	mov	r1, #65280	; 0xff00
    1f4c:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    1f50:	e1a00004 	mov	r0, r4
    1f54:	e3a01cff 	mov	r1, #65280	; 0xff00
    1f58:	ebfffffe 	bl	1ebc <_Z9userPrintjj>
    1f5c:	e59f0024 	ldr	r0, [pc, #36]	; 1f88 <_Z12PrintProcessv+0x50>
    1f60:	e3a01cff 	mov	r1, #65280	; 0xff00
    1f64:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    1f68:	e59f001c 	ldr	r0, [pc, #28]	; 1f8c <_Z12PrintProcessv+0x54>
    1f6c:	e59f101c 	ldr	r1, [pc, #28]	; 1f90 <_Z12PrintProcessv+0x58>
    1f70:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    1f74:	e3540000 	cmp	r4, #0
    1f78:	1afffff0 	bne	1f40 <_Z12PrintProcessv+0x8>
    1f7c:	e8bd4010 	pop	{r4, lr}
    1f80:	e12fff1e 	bx	lr
    1f84:	0000024c 	andeq	r0, r0, ip, asr #4
    1f88:	00000250 	andeq	r0, r0, r0, asr r2
    1f8c:	00000254 	andeq	r0, r0, r4, asr r2
    1f90:	00ffff00 	rscseq	pc, pc, r0, lsl #30

00001f94 <_Z13PrintProcess2v>:
    1f94:	e92d4010 	push	{r4, lr}
    1f98:	e3a04f7d 	mov	r4, #500	; 0x1f4
    1f9c:	e2444001 	sub	r4, r4, #1
    1fa0:	e59f0040 	ldr	r0, [pc, #64]	; 1fe8 <_Z13PrintProcess2v+0x54>
    1fa4:	e3a01cff 	mov	r1, #65280	; 0xff00
    1fa8:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    1fac:	e1a00004 	mov	r0, r4
    1fb0:	e3a01cff 	mov	r1, #65280	; 0xff00
    1fb4:	ebfffffe 	bl	1ebc <_Z9userPrintjj>
    1fb8:	e59f002c 	ldr	r0, [pc, #44]	; 1fec <_Z13PrintProcess2v+0x58>
    1fbc:	e3a01cff 	mov	r1, #65280	; 0xff00
    1fc0:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    1fc4:	e59f0024 	ldr	r0, [pc, #36]	; 1ff0 <_Z13PrintProcess2v+0x5c>
    1fc8:	e3a010ff 	mov	r1, #255	; 0xff
    1fcc:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    1fd0:	e3540000 	cmp	r4, #0
    1fd4:	1afffff0 	bne	1f9c <_Z13PrintProcess2v+0x8>
    1fd8:	e3a05003 	mov	r5, #3
    1fdc:	ef000000 	svc	0x00000000
    1fe0:	e8bd4010 	pop	{r4, lr}
    1fe4:	e12fff1e 	bx	lr
    1fe8:	0000024c 	andeq	r0, r0, ip, asr #4
    1fec:	00000250 	andeq	r0, r0, r0, asr r2
    1ff0:	00000288 	andeq	r0, r0, r8, lsl #5

00001ff4 <_Z13PrintProcess3v>:
    1ff4:	e92d4010 	push	{r4, lr}
    1ff8:	e3a04f7d 	mov	r4, #500	; 0x1f4
    1ffc:	e2444001 	sub	r4, r4, #1
    2000:	e59f0038 	ldr	r0, [pc, #56]	; 2040 <_Z13PrintProcess3v+0x4c>
    2004:	e3a01cff 	mov	r1, #65280	; 0xff00
    2008:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    200c:	e1a00004 	mov	r0, r4
    2010:	e3a01cff 	mov	r1, #65280	; 0xff00
    2014:	ebfffffe 	bl	1ebc <_Z9userPrintjj>
    2018:	e59f0024 	ldr	r0, [pc, #36]	; 2044 <_Z13PrintProcess3v+0x50>
    201c:	e3a01cff 	mov	r1, #65280	; 0xff00
    2020:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    2024:	e59f001c 	ldr	r0, [pc, #28]	; 2048 <_Z13PrintProcess3v+0x54>
    2028:	e59f101c 	ldr	r1, [pc, #28]	; 204c <_Z13PrintProcess3v+0x58>
    202c:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    2030:	e3540000 	cmp	r4, #0
    2034:	1afffff0 	bne	1ffc <_Z13PrintProcess3v+0x8>
    2038:	e8bd4010 	pop	{r4, lr}
    203c:	e12fff1e 	bx	lr
    2040:	0000024c 	andeq	r0, r0, ip, asr #4
    2044:	00000250 	andeq	r0, r0, r0, asr r2
    2048:	000002a8 	andeq	r0, r0, r8, lsr #5
    204c:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>

00002050 <_Z13PrintProcess4v>:
    2050:	e92d4010 	push	{r4, lr}
    2054:	e3a04f7d 	mov	r4, #500	; 0x1f4
    2058:	e2444001 	sub	r4, r4, #1
    205c:	e59f0038 	ldr	r0, [pc, #56]	; 209c <_Z13PrintProcess4v+0x4c>
    2060:	e3a01cff 	mov	r1, #65280	; 0xff00
    2064:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    2068:	e1a00004 	mov	r0, r4
    206c:	e3a01cff 	mov	r1, #65280	; 0xff00
    2070:	ebfffffe 	bl	1ebc <_Z9userPrintjj>
    2074:	e59f0024 	ldr	r0, [pc, #36]	; 20a0 <_Z13PrintProcess4v+0x50>
    2078:	e3a01cff 	mov	r1, #65280	; 0xff00
    207c:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    2080:	e59f001c 	ldr	r0, [pc, #28]	; 20a4 <_Z13PrintProcess4v+0x54>
    2084:	e59f101c 	ldr	r1, [pc, #28]	; 20a8 <_Z13PrintProcess4v+0x58>
    2088:	ebfffffe 	bl	1e2c <_Z9userPrintPKcj>
    208c:	e3540000 	cmp	r4, #0
    2090:	1afffff0 	bne	2058 <_Z13PrintProcess4v+0x8>
    2094:	e8bd4010 	pop	{r4, lr}
    2098:	e12fff1e 	bx	lr
    209c:	0000024c 	andeq	r0, r0, ip, asr #4
    20a0:	00000250 	andeq	r0, r0, r0, asr r2
    20a4:	000002bc 			; <UNDEFINED> instruction: 0x000002bc
    20a8:	00ff00ff 	ldrshteq	r0, [pc], #15

000020ac <_Z9userPrintj>:
    20ac:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    20b0:	eafffffe 	b	1ebc <_Z9userPrintjj>

000020b4 <_Z15userPrintHexa32jj>:
    20b4:	e92d4030 	push	{r4, r5, lr}
    20b8:	e24dd00c 	sub	sp, sp, #12
    20bc:	e1a07001 	mov	r7, r1
    20c0:	e1a08000 	mov	r8, r0
    20c4:	e3a09003 	mov	r9, #3
    20c8:	e3a05000 	mov	r5, #0
    20cc:	ef000000 	svc	0x00000000
    20d0:	e3a03001 	mov	r3, #1
    20d4:	e5cd3007 	strb	r3, [sp, #7]
    20d8:	e5dd3007 	ldrb	r3, [sp, #7]
    20dc:	e3530000 	cmp	r3, #0
    20e0:	1a00000c 	bne	2118 <_Z15userPrintHexa32jj+0x64>
    20e4:	e59f303c 	ldr	r3, [pc, #60]	; 2128 <_Z15userPrintHexa32jj+0x74>
    20e8:	e59f403c 	ldr	r4, [pc, #60]	; 212c <_Z15userPrintHexa32jj+0x78>
    20ec:	e5935008 	ldr	r5, [r3, #8]
    20f0:	e3a0100a 	mov	r1, #10
    20f4:	e1a00005 	mov	r0, r5
    20f8:	e3a020ff 	mov	r2, #255	; 0xff
    20fc:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    2100:	e5f41001 	ldrb	r1, [r4, #1]!
    2104:	e3510000 	cmp	r1, #0
    2108:	1afffff9 	bne	20f4 <_Z15userPrintHexa32jj+0x40>
    210c:	e28dd00c 	add	sp, sp, #12
    2110:	e8bd4030 	pop	{r4, r5, lr}
    2114:	e12fff1e 	bx	lr
    2118:	e1a00000 	nop			; (mov r0, r0)
    211c:	e28dd00c 	add	sp, sp, #12
    2120:	e8bd4030 	pop	{r4, r5, lr}
    2124:	e12fff1e 	bx	lr
    2128:	00000000 	andeq	r0, r0, r0
    212c:	0000023c 	andeq	r0, r0, ip, lsr r2

00002130 <_Z15userPrintHexa32j>:
    2130:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    2134:	eafffffe 	b	20b4 <_Z15userPrintHexa32jj>

00002138 <_Z12print_headerP7Console>:
    2138:	e92d4038 	push	{r3, r4, r5, lr}
    213c:	e59f5084 	ldr	r5, [pc, #132]	; 21c8 <_Z12print_headerP7Console+0x90>
    2140:	e1a04000 	mov	r4, r0
    2144:	e3a01057 	mov	r1, #87	; 0x57
    2148:	e1a00004 	mov	r0, r4
    214c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    2150:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    2154:	e5f51001 	ldrb	r1, [r5, #1]!
    2158:	e3510000 	cmp	r1, #0
    215c:	1afffff9 	bne	2148 <_Z12print_headerP7Console+0x10>
    2160:	e59f5064 	ldr	r5, [pc, #100]	; 21cc <_Z12print_headerP7Console+0x94>
    2164:	e3a01042 	mov	r1, #66	; 0x42
    2168:	e1a00004 	mov	r0, r4
    216c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    2170:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    2174:	e5f51001 	ldrb	r1, [r5, #1]!
    2178:	e3510000 	cmp	r1, #0
    217c:	1afffff9 	bne	2168 <_Z12print_headerP7Console+0x30>
    2180:	e59f5048 	ldr	r5, [pc, #72]	; 21d0 <_Z12print_headerP7Console+0x98>
    2184:	e3a01030 	mov	r1, #48	; 0x30
    2188:	e1a00004 	mov	r0, r4
    218c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    2190:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    2194:	e5f51001 	ldrb	r1, [r5, #1]!
    2198:	e3510000 	cmp	r1, #0
    219c:	1afffff9 	bne	2188 <_Z12print_headerP7Console+0x50>
    21a0:	e59f502c 	ldr	r5, [pc, #44]	; 21d4 <_Z12print_headerP7Console+0x9c>
    21a4:	e3a0100a 	mov	r1, #10
    21a8:	e1a00004 	mov	r0, r4
    21ac:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    21b0:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    21b4:	e5f51001 	ldrb	r1, [r5, #1]!
    21b8:	e3510000 	cmp	r1, #0
    21bc:	1afffff9 	bne	21a8 <_Z12print_headerP7Console+0x70>
    21c0:	e8bd4038 	pop	{r3, r4, r5, lr}
    21c4:	e12fff1e 	bx	lr
    21c8:	000002d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    21cc:	00000314 	andeq	r0, r0, r4, lsl r3
    21d0:	0000031c 	andeq	r0, r0, ip, lsl r3
    21d4:	00000328 	andeq	r0, r0, r8, lsr #6

000021d8 <kmain>:
    21d8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    21dc:	e24dd03c 	sub	sp, sp, #60	; 0x3c
    21e0:	e59f11d4 	ldr	r1, [pc, #468]	; 23bc <kmain+0x1e4>
    21e4:	e581e000 	str	lr, [r1]
    21e8:	e59f61a8 	ldr	r6, [pc, #424]	; 2398 <kmain+0x1c0>
    21ec:	e5964008 	ldr	r4, [r6, #8]
    21f0:	e3540000 	cmp	r4, #0
    21f4:	0a00000c 	beq	222c <kmain+0x54>
    21f8:	e59f519c 	ldr	r5, [pc, #412]	; 239c <kmain+0x1c4>
    21fc:	e3a0100a 	mov	r1, #10
    2200:	e1a00004 	mov	r0, r4
    2204:	e3a020ff 	mov	r2, #255	; 0xff
    2208:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    220c:	e5f51001 	ldrb	r1, [r5, #1]!
    2210:	e3510000 	cmp	r1, #0
    2214:	1afffff9 	bne	2200 <kmain+0x28>
    2218:	e5961020 	ldr	r1, [r6, #32]
    221c:	e5960008 	ldr	r0, [r6, #8]
    2220:	e59f2178 	ldr	r2, [pc, #376]	; 23a0 <kmain+0x1c8>
    2224:	ebfffffe 	bl	1088 <_ZN7Console12kprintHexa32Ejj>
    2228:	eafffffe 	b	2228 <kmain+0x50>
    222c:	e1a01004 	mov	r1, r4
    2230:	e28d5008 	add	r5, sp, #8
    2234:	e3a02b01 	mov	r2, #1024	; 0x400
    2238:	e3a03c03 	mov	r3, #768	; 0x300
    223c:	e1a0000d 	mov	r0, sp
    2240:	ebfffffe 	bl	908 <_ZN11gpu2dCanvasC1Ebjj>
    2244:	e3a0300a 	mov	r3, #10
    2248:	e28d2000 	add	r2, sp, #0
    224c:	e1a00005 	mov	r0, r5
    2250:	e58d2014 	str	r2, [sp, #20]
    2254:	e58d3010 	str	r3, [sp, #16]
    2258:	e58d4008 	str	r4, [sp, #8]
    225c:	e58d400c 	str	r4, [sp, #12]
    2260:	ebfffffe 	bl	d80 <_ZN7Console5clearEv>
    2264:	e3a01001 	mov	r1, #1
    2268:	e3a00030 	mov	r0, #48	; 0x30
    226c:	e5865008 	str	r5, [r6, #8]
    2270:	ebfff77c 	bl	68 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.2>
    2274:	e59f3128 	ldr	r3, [pc, #296]	; 23a4 <kmain+0x1cc>
    2278:	e3a02801 	mov	r2, #65536	; 0x10000
    227c:	e1a00005 	mov	r0, r5
    2280:	e583202c 	str	r2, [r3, #44]	; 0x2c
    2284:	e59f411c 	ldr	r4, [pc, #284]	; 23a8 <kmain+0x1d0>
    2288:	ebfffffe 	bl	2138 <_Z12print_headerP7Console>
    228c:	e3a01057 	mov	r1, #87	; 0x57
    2290:	e1a00005 	mov	r0, r5
    2294:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    2298:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    229c:	e5f41001 	ldrb	r1, [r4, #1]!
    22a0:	e3510000 	cmp	r1, #0
    22a4:	1afffff9 	bne	2290 <kmain+0xb8>
    22a8:	e59f70fc 	ldr	r7, [pc, #252]	; 23ac <kmain+0x1d4>
    22ac:	e3a04012 	mov	r4, #18
    22b0:	e1a00005 	mov	r0, r5
    22b4:	e3a0102e 	mov	r1, #46	; 0x2e
    22b8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    22bc:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    22c0:	e5973004 	ldr	r3, [r7, #4]
    22c4:	e2833b61 	add	r3, r3, #99328	; 0x18400
    22c8:	e2833e2a 	add	r3, r3, #672	; 0x2a0
    22cc:	e5972004 	ldr	r2, [r7, #4]
    22d0:	e1530002 	cmp	r3, r2
    22d4:	8afffffc 	bhi	22cc <kmain+0xf4>
    22d8:	e2544001 	subs	r4, r4, #1
    22dc:	1afffff3 	bne	22b0 <kmain+0xd8>
    22e0:	e59f70c8 	ldr	r7, [pc, #200]	; 23b0 <kmain+0x1d8>
    22e4:	e3a0400a 	mov	r4, #10
    22e8:	e1a01004 	mov	r1, r4
    22ec:	e1a00005 	mov	r0, r5
    22f0:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    22f4:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
    22f8:	e5f74001 	ldrb	r4, [r7, #1]!
    22fc:	e3540000 	cmp	r4, #0
    2300:	1afffff8 	bne	22e8 <kmain+0x110>
    2304:	e3a0380f 	mov	r3, #983040	; 0xf0000
    2308:	e3a02aff 	mov	r2, #1044480	; 0xff000
    230c:	e5863000 	str	r3, [r6]
    2310:	e1a00005 	mov	r0, r5
    2314:	e5832008 	str	r2, [r3, #8]
    2318:	e5c34004 	strb	r4, [r3, #4]
    231c:	e59f1090 	ldr	r1, [pc, #144]	; 23b4 <kmain+0x1dc>
    2320:	ebfffffe 	bl	14dc <_ZN7Console4koutEPKc>
    2324:	e59f208c 	ldr	r2, [pc, #140]	; 23b8 <kmain+0x1e0>
    2328:	e59fc074 	ldr	ip, [pc, #116]	; 23a4 <kmain+0x1cc>
    232c:	e3a0381e 	mov	r3, #1966080	; 0x1e0000
    2330:	e3a00f7d 	mov	r0, #500	; 0x1f4
    2334:	e3a07002 	mov	r7, #2
    2338:	e3a0e00c 	mov	lr, #12
    233c:	e3a01ffa 	mov	r1, #1000	; 0x3e8
    2340:	e5823214 	str	r3, [r2, #532]	; 0x214
    2344:	e5827210 	str	r7, [r2, #528]	; 0x210
    2348:	e59f305c 	ldr	r3, [pc, #92]	; 23ac <kmain+0x1d4>
    234c:	e58ce058 	str	lr, [ip, #88]	; 0x58
    2350:	e58d0024 	str	r0, [sp, #36]	; 0x24
    2354:	e58d401c 	str	r4, [sp, #28]
    2358:	e58d4020 	str	r4, [sp, #32]
    235c:	e58d1018 	str	r1, [sp, #24]
    2360:	e5932004 	ldr	r2, [r3, #4]
    2364:	e28d0018 	add	r0, sp, #24
    2368:	e28229b7 	add	r2, r2, #2998272	; 0x2dc000
    236c:	e5c64014 	strb	r4, [r6, #20]
    2370:	e58d5030 	str	r5, [sp, #48]	; 0x30
    2374:	e58d4034 	str	r4, [sp, #52]	; 0x34
    2378:	e58d4028 	str	r4, [sp, #40]	; 0x28
    237c:	e58d402c 	str	r4, [sp, #44]	; 0x2c
    2380:	e586000c 	str	r0, [r6, #12]
    2384:	e2822d1b 	add	r2, r2, #1728	; 0x6c0
    2388:	e5931004 	ldr	r1, [r3, #4]
    238c:	e1520001 	cmp	r2, r1
    2390:	8afffffc 	bhi	2388 <kmain+0x1b0>
    2394:	ebfffffe 	bl	0 <_Z6divideiiPiS_.part.0>
    2398:	00000000 	andeq	r0, r0, r0
    239c:	0000032c 	andeq	r0, r0, ip, lsr #6
    23a0:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    23a4:	20200000 	eorcs	r0, r0, r0
    23a8:	00000350 	andeq	r0, r0, r0, asr r3
    23ac:	20003000 	andcs	r3, r0, r0
    23b0:	0000035c 	andeq	r0, r0, ip, asr r3
    23b4:	0000036c 	andeq	r0, r0, ip, ror #6
    23b8:	2000b000 	andcs	fp, r0, r0
    23bc:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <_ZL19kernel_default_font>:
	...
 210:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 214:	08080808 	stmdaeq	r8, {r3, fp}
 218:	08080008 	stmdaeq	r8, {r3}
 21c:	00000000 	andeq	r0, r0, r0
 220:	14000000 	strne	r0, [r0], #-0
 224:	00141414 	andseq	r1, r4, r4, lsl r4
	...
 230:	48480000 	stmdami	r8, {}^	; <UNPREDICTABLE>
 234:	2424fe68 	strtcs	pc, [r4], #-3688	; 0xe68
 238:	1212147f 	andsne	r1, r2, #2130706432	; 0x7f000000
 23c:	00000000 	andeq	r0, r0, r0
 240:	10000000 	andne	r0, r0, r0
 244:	1c12927c 	lfmne	f1, 1, [r2], {124}	; 0x7c
 248:	7c929070 	ldcvc	0, cr9, [r2], {112}	; 0x70
 24c:	00001010 	andeq	r1, r0, r0, lsl r0
 250:	06000000 	streq	r0, [r0], -r0
 254:	38460909 	stmdacc	r6, {r0, r3, r8, fp}^
 258:	60909066 	addsvs	r9, r0, r6, rrx
 25c:	00000000 	andeq	r0, r0, r0
 260:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 264:	920c0404 	andls	r0, ip, #4, 8	; 0x4000000
 268:	bc46a2b2 	sfmlt	f2, 3, [r6], {178}	; 0xb2
 26c:	00000000 	andeq	r0, r0, r0
 270:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 274:	00080808 	andeq	r0, r8, r8, lsl #16
	...
 280:	10103000 	andsne	r3, r0, r0
 284:	08080808 	stmdaeq	r8, {r3, fp}
 288:	10100808 	andsne	r0, r0, r8, lsl #16
 28c:	00000020 	andeq	r0, r0, r0, lsr #32
 290:	08080c00 	stmdaeq	r8, {sl, fp}
 294:	10101010 	andsne	r1, r0, r0, lsl r0
 298:	08081010 	stmdaeq	r8, {r4, ip}
 29c:	0000000c 	andeq	r0, r0, ip
 2a0:	10000000 	andne	r0, r0, r0
 2a4:	d6387c92 			; <UNDEFINED> instruction: 0xd6387c92
 2a8:	00000010 	andeq	r0, r0, r0, lsl r0
	...
 2b4:	7f080808 	svcvc	0x00080808
 2b8:	00080808 	andeq	r0, r8, r8, lsl #16
	...
 2c8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
 2cc:	00000408 	andeq	r0, r0, r8, lsl #8
	...
 2d8:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
 2e8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
 2ec:	00000000 	andeq	r0, r0, r0
 2f0:	40000000 	andmi	r0, r0, r0
 2f4:	10102020 	andsne	r2, r0, r0, lsr #32
 2f8:	04080818 	streq	r0, [r8], #-2072	; 0x818
 2fc:	00000204 	andeq	r0, r0, r4, lsl #4
 300:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 304:	92828244 	addls	r8, r2, #68, 4	; 0x40000004
 308:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
 30c:	00000000 	andeq	r0, r0, r0
 310:	1c000000 	stcne	0, cr0, [r0], {-0}
 314:	10101010 	andsne	r1, r0, r0, lsl r0
 318:	7c101010 	ldcvc	0, cr1, [r0], {16}
 31c:	00000000 	andeq	r0, r0, r0
 320:	7c000000 	stcvc	0, cr0, [r0], {-0}
 324:	408080c2 	addmi	r8, r0, r2, asr #1
 328:	fe041830 	mcr2	8, 0, r1, cr4, cr0, {1}
 32c:	00000000 	andeq	r0, r0, r0
 330:	7c000000 	stcvc	0, cr0, [r0], {-0}
 334:	38c08082 	stmiacc	r0, {r1, r7, pc}^
 338:	7cc280c0 	stclvc	0, cr8, [r2], {192}	; 0xc0
 33c:	00000000 	andeq	r0, r0, r0
 340:	60000000 	andvs	r0, r0, r0
 344:	44485850 	strbmi	r5, [r8], #-2128	; 0x850
 348:	4040fe42 	submi	pc, r0, r2, asr #28
 34c:	00000000 	andeq	r0, r0, r0
 350:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
 354:	c03e0202 	eorsgt	r0, lr, r2, lsl #4
 358:	3cc28080 	stclcc	0, cr8, [r2], {128}	; 0x80
 35c:	00000000 	andeq	r0, r0, r0
 360:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 364:	c67a0284 	ldrbtgt	r0, [sl], -r4, lsl #5
 368:	78c48282 	stmiavc	r4, {r1, r7, r9, pc}^
 36c:	00000000 	andeq	r0, r0, r0
 370:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
 374:	20204040 	eorcs	r4, r0, r0, asr #32
 378:	04081810 	streq	r1, [r8], #-2064	; 0x810
 37c:	00000000 	andeq	r0, r0, r0
 380:	7c000000 	stcvc	0, cr0, [r0], {-0}
 384:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
 388:	7c868282 	sfmvc	f0, 1, [r6], {130}	; 0x82
 38c:	00000000 	andeq	r0, r0, r0
 390:	3c000000 	stccc	0, cr0, [r0], {-0}
 394:	c6828246 	strgt	r8, [r2], r6, asr #4
 398:	3c4280bc 	mcrrcc	0, 11, r8, r2, cr12
	...
 3a4:	00181800 	andseq	r1, r8, r0, lsl #16
 3a8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
	...
 3b4:	00181800 	andseq	r1, r8, r0, lsl #16
 3b8:	18180000 	ldmdane	r8, {}	; <UNPREDICTABLE>
 3bc:	00000408 	andeq	r0, r0, r8, lsl #8
 3c0:	00000000 	andeq	r0, r0, r0
 3c4:	0e708000 	cdpeq	0, 7, cr8, cr0, cr0, {0}
 3c8:	0080700e 	addeq	r7, r0, lr
	...
 3d4:	00fe0000 	rscseq	r0, lr, r0
 3d8:	0000fe00 	andeq	pc, r0, r0, lsl #28
	...
 3e4:	e01c0200 	ands	r0, ip, r0, lsl #4
 3e8:	00021ce0 	andeq	r1, r2, r0, ror #25
 3ec:	00000000 	andeq	r0, r0, r0
 3f0:	1c000000 	stcne	0, cr0, [r0], {-0}
 3f4:	08102022 	ldmdaeq	r0, {r1, r5, sp}
 3f8:	08080008 	stmdaeq	r8, {r3}
 3fc:	00000000 	andeq	r0, r0, r0
 400:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 404:	92e284cc 	rscls	r8, r2, #204, 8	; 0xcc000000
 408:	04e29292 	strbteq	r9, [r2], #658	; 0x292
 40c:	0000780c 	andeq	r7, r0, ip, lsl #16
 410:	10000000 	andne	r0, r0, r0
 414:	44282828 	strtmi	r2, [r8], #-2088	; 0x828
 418:	82c67c44 	sbchi	r7, r6, #68, 24	; 0x4400
 41c:	00000000 	andeq	r0, r0, r0
 420:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
 424:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
 428:	7e828282 	cdpvc	2, 8, cr8, cr2, cr2, {4}
 42c:	00000000 	andeq	r0, r0, r0
 430:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 434:	02020284 	andeq	r0, r2, #132, 4	; 0x40000008
 438:	78840202 	stmvc	r4, {r1, r9}
 43c:	00000000 	andeq	r0, r0, r0
 440:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
 444:	82828242 	addhi	r8, r2, #536870916	; 0x20000004
 448:	3e428282 	cdpcc	2, 4, cr8, cr2, cr2, {4}
 44c:	00000000 	andeq	r0, r0, r0
 450:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
 454:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
 458:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
 45c:	00000000 	andeq	r0, r0, r0
 460:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
 464:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
 468:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 46c:	00000000 	andeq	r0, r0, r0
 470:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
 474:	c2020284 	andgt	r0, r2, #132, 4	; 0x40000008
 478:	78848282 	stmvc	r4, {r1, r7, r9, pc}
 47c:	00000000 	andeq	r0, r0, r0
 480:	82000000 	andhi	r0, r0, #0
 484:	fe828282 	cdp2	2, 8, cr8, cr2, cr2, {4}
 488:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
 48c:	00000000 	andeq	r0, r0, r0
 490:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
 494:	08080808 	stmdaeq	r8, {r3, fp}
 498:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
 49c:	00000000 	andeq	r0, r0, r0
 4a0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 4a4:	20202020 	eorcs	r2, r0, r0, lsr #32
 4a8:	1c222020 	stcne	0, cr2, [r2], #-128	; 0xffffff80
 4ac:	00000000 	andeq	r0, r0, r0
 4b0:	42000000 	andmi	r0, r0, #0
 4b4:	0e0a1222 	cdpeq	2, 0, cr1, cr10, cr2, {1}
 4b8:	42222212 	eormi	r2, r2, #536870913	; 0x20000001
 4bc:	00000000 	andeq	r0, r0, r0
 4c0:	02000000 	andeq	r0, r0, #0
 4c4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 4c8:	fe020202 	cdp2	2, 0, cr0, cr2, cr2, {0}
 4cc:	00000000 	andeq	r0, r0, r0
 4d0:	c6000000 	strgt	r0, [r0], -r0
 4d4:	aaaaaac6 	bge	feaaaff4 <kmain+0xfeaa8e1c>
 4d8:	82828292 	addhi	r8, r2, #536870921	; 0x20000009
 4dc:	00000000 	andeq	r0, r0, r0
 4e0:	86000000 	strhi	r0, [r0], -r0
 4e4:	928a8a86 	addls	r8, sl, #548864	; 0x86000
 4e8:	c2c2a2a2 	sbcgt	sl, r2, #536870922	; 0x2000000a
 4ec:	00000000 	andeq	r0, r0, r0
 4f0:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 4f4:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
 4f8:	38448282 	stmdacc	r4, {r1, r7, r9, pc}^
 4fc:	00000000 	andeq	r0, r0, r0
 500:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
 504:	c28282c2 	addgt	r8, r2, #536870924	; 0x2000000c
 508:	0202027e 	andeq	r0, r2, #-536870905	; 0xe0000007
 50c:	00000000 	andeq	r0, r0, r0
 510:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
 514:	82828244 	addhi	r8, r2, #68, 4	; 0x40000004
 518:	78448282 	stmdavc	r4, {r1, r7, r9, pc}^
 51c:	00004060 	andeq	r4, r0, r0, rrx
 520:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
 524:	7e8282c2 	cdpvc	2, 8, cr8, cr2, cr2, {6}
 528:	02828242 	addeq	r8, r2, #536870916	; 0x20000004
 52c:	00000000 	andeq	r0, r0, r0
 530:	7c000000 	stcvc	0, cr0, [r0], {-0}
 534:	7c060286 	sfmvc	f0, 4, [r6], {134}	; 0x86
 538:	7dc280c0 	stclvc	0, cr8, [r2, #768]	; 0x300
 53c:	00000000 	andeq	r0, r0, r0
 540:	7f000000 	svcvc	0x00000000
 544:	08080808 	stmdaeq	r8, {r3, fp}
 548:	08080808 	stmdaeq	r8, {r3, fp}
 54c:	00000000 	andeq	r0, r0, r0
 550:	82000000 	andhi	r0, r0, #0
 554:	82828282 	addhi	r8, r2, #536870920	; 0x20000008
 558:	7c828282 	sfmvc	f0, 1, [r2], {130}	; 0x82
 55c:	00000000 	andeq	r0, r0, r0
 560:	82000000 	andhi	r0, r0, #0
 564:	444444c6 	strbmi	r4, [r4], #-1222	; 0x4c6
 568:	10282828 	eorne	r2, r8, r8, lsr #16
 56c:	00000000 	andeq	r0, r0, r0
 570:	81000000 	mrshi	r0, (UNDEF: 0)
 574:	5a5a8181 	bpl	16a0b80 <kmain+0x169e9a8>
 578:	6666665a 			; <UNDEFINED> instruction: 0x6666665a
 57c:	00000000 	andeq	r0, r0, r0
 580:	c6000000 	strgt	r0, [r0], -r0
 584:	10382844 	eorsne	r2, r8, r4, asr #16
 588:	82446c28 	subhi	r6, r4, #40, 24	; 0x2800
 58c:	00000000 	andeq	r0, r0, r0
 590:	41000000 	mrsmi	r0, (UNDEF: 0)
 594:	08141422 	ldmdaeq	r4, {r1, r5, sl, ip}
 598:	08080808 	stmdaeq	r8, {r3, fp}
 59c:	00000000 	andeq	r0, r0, r0
 5a0:	fe000000 	cdp2	0, 0, cr0, cr0, cr0, {0}
 5a4:	102060c0 	eorne	r6, r0, r0, asr #1
 5a8:	fe060c08 	cdp2	12, 0, cr0, cr6, cr8, {0}
 5ac:	00000000 	andeq	r0, r0, r0
 5b0:	08083800 	stmdaeq	r8, {fp, ip, sp}
 5b4:	08080808 	stmdaeq	r8, {r3, fp}
 5b8:	08080808 	stmdaeq	r8, {r3, fp}
 5bc:	00000038 	andeq	r0, r0, r8, lsr r0
 5c0:	02000000 	andeq	r0, r0, #0
 5c4:	08080404 	stmdaeq	r8, {r2, sl}
 5c8:	20101018 	andscs	r1, r0, r8, lsl r0
 5cc:	00004020 	andeq	r4, r0, r0, lsr #32
 5d0:	10101c00 	andsne	r1, r0, r0, lsl #24
 5d4:	10101010 	andsne	r1, r0, r0, lsl r0
 5d8:	10101010 	andsne	r1, r0, r0, lsl r0
 5dc:	0000001c 	andeq	r0, r0, ip, lsl r0
 5e0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 5e4:	00632214 	rsbeq	r2, r3, r4, lsl r2
	...
 5fc:	007f0000 	rsbseq	r0, pc, r0
 600:	10080000 	andne	r0, r8, r0
	...
 614:	40443800 	submi	r3, r4, r0, lsl #16
 618:	5c62427c 	sfmpl	f4, 2, [r2], #-496	; 0xfffffe10
 61c:	00000000 	andeq	r0, r0, r0
 620:	02020200 	andeq	r0, r2, #0, 4
 624:	42663e02 	rsbmi	r3, r6, #2, 28
 628:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
	...
 634:	02443800 	subeq	r3, r4, #0, 16
 638:	38440202 	stmdacc	r4, {r1, r9}^
 63c:	00000000 	andeq	r0, r0, r0
 640:	40404000 	submi	r4, r0, r0
 644:	42667c40 	rsbmi	r7, r6, #64, 24	; 0x4000
 648:	7c664242 	sfmvc	f4, 2, [r6], #-264	; 0xfffffef8
	...
 654:	42663c00 	rsbmi	r3, r6, #0, 24
 658:	3c46027e 	sfmcc	f0, 2, [r6], {126}	; 0x7e
 65c:	00000000 	andeq	r0, r0, r0
 660:	08083000 	stmdaeq	r8, {ip, sp}
 664:	08083e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp}
 668:	08080808 	stmdaeq	r8, {r3, fp}
	...
 674:	42667c00 	rsbmi	r7, r6, #0, 24
 678:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
 67c:	00384440 	eorseq	r4, r8, r0, asr #8
 680:	02020200 	andeq	r0, r2, #0, 4
 684:	42463a02 	submi	r3, r6, #8192	; 0x2000
 688:	42424242 	submi	r4, r2, #536870916	; 0x20000004
 68c:	00000000 	andeq	r0, r0, r0
 690:	00000800 	andeq	r0, r0, r0, lsl #16
 694:	08080e00 	stmdaeq	r8, {r9, sl, fp}
 698:	3e080808 	cdpcc	8, 0, cr0, cr8, cr8, {0}
 69c:	00000000 	andeq	r0, r0, r0
 6a0:	00001000 	andeq	r1, r0, r0
 6a4:	10101c00 	andsne	r1, r0, r0, lsl #24
 6a8:	10101010 	andsne	r1, r0, r0, lsl r0
 6ac:	000e1010 	andeq	r1, lr, r0, lsl r0
 6b0:	02020200 	andeq	r0, r2, #0, 4
 6b4:	0a122202 	beq	488ec4 <kmain+0x486cec>
 6b8:	4222120e 	eormi	r1, r2, #-536870912	; 0xe0000000
 6bc:	00000000 	andeq	r0, r0, r0
 6c0:	08080e00 	stmdaeq	r8, {r9, sl, fp}
 6c4:	08080808 	stmdaeq	r8, {r3, fp}
 6c8:	70080808 	andvc	r0, r8, r8, lsl #16
	...
 6d4:	9292fe00 	addsls	pc, r2, #0, 28
 6d8:	92929292 	addsls	r9, r2, #536870921	; 0x20000009
	...
 6e4:	42463a00 	submi	r3, r6, #0, 20
 6e8:	42424242 	submi	r4, r2, #536870916	; 0x20000004
	...
 6f4:	42663c00 	rsbmi	r3, r6, #0, 24
 6f8:	3c664242 	sfmcc	f4, 2, [r6], #-264	; 0xfffffef8
	...
 704:	42663e00 	rsbmi	r3, r6, #0, 28
 708:	3e664242 	cdpcc	2, 6, cr4, cr6, cr2, {2}
 70c:	00020202 	andeq	r0, r2, r2, lsl #4
 710:	00000000 	andeq	r0, r0, r0
 714:	42667c00 	rsbmi	r7, r6, #0, 24
 718:	5c664242 	sfmpl	f4, 2, [r6], #-264	; 0xfffffef8
 71c:	00404040 	subeq	r4, r0, r0, asr #32
 720:	00000000 	andeq	r0, r0, r0
 724:	044c3c00 	strbeq	r3, [ip], #-3072	; 0xc00
 728:	04040404 	streq	r0, [r4], #-1028	; 0x404
	...
 734:	02423c00 	subeq	r3, r2, #0, 24
 738:	3c42403c 	mcrrcc	0, 3, r4, r2, cr12
 73c:	00000000 	andeq	r0, r0, r0
 740:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 744:	08087e08 	stmdaeq	r8, {r3, r9, sl, fp, ip, sp, lr}
 748:	70080808 	andvc	r0, r8, r8, lsl #16
	...
 754:	42424200 	submi	r4, r2, #0, 4
 758:	5c624242 	sfmpl	f4, 2, [r2], #-264	; 0xfffffef8
	...
 764:	24664200 	strbtcs	r4, [r6], #-512	; 0x200
 768:	18183c24 	ldmdane	r8, {r2, r5, sl, fp, ip, sp}
	...
 774:	5a818100 	bpl	fe060b7c <kmain+0xfe05e9a4>
 778:	24245a5a 	strtcs	r5, [r4], #-2650	; 0xa5a
	...
 784:	18246600 	stmdane	r4!, {r9, sl, sp, lr}
 788:	66241818 			; <UNDEFINED> instruction: 0x66241818
	...
 794:	24444200 	strbcs	r4, [r4], #-512	; 0x200
 798:	10182824 	andsne	r2, r8, r4, lsr #16
 79c:	000c0810 	andeq	r0, ip, r0, lsl r8
 7a0:	00000000 	andeq	r0, r0, r0
 7a4:	20407e00 	subcs	r7, r0, r0, lsl #28
 7a8:	7e020418 	cfmvdlrvc	mvd2, r0
 7ac:	00000000 	andeq	r0, r0, r0
 7b0:	08083800 	stmdaeq	r8, {fp, ip, sp}
 7b4:	08060808 	stmdaeq	r6, {r3, fp}
 7b8:	08080808 	stmdaeq	r8, {r3, fp}
 7bc:	00000030 	andeq	r0, r0, r0, lsr r0
 7c0:	08080800 	stmdaeq	r8, {fp}
 7c4:	08080808 	stmdaeq	r8, {r3, fp}
 7c8:	08080808 	stmdaeq	r8, {r3, fp}
 7cc:	00000808 	andeq	r0, r0, r8, lsl #16
 7d0:	08080e00 	stmdaeq	r8, {r9, sl, fp}
 7d4:	08300808 	ldmdaeq	r0!, {r3, fp}
 7d8:	08080808 	stmdaeq	r8, {r3, fp}
 7dc:	00000006 	andeq	r0, r0, r6
 7e0:	00000000 	andeq	r0, r0, r0
 7e4:	9c000000 	stcls	0, cr0, [r0], {-0}
 7e8:	00000062 	andeq	r0, r0, r2, rrx
 7ec:	00000000 	andeq	r0, r0, r0
 7f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7fc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 800:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 804:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

00000808 <freeStackPos>:
 808:	00004000 	andeq	r4, r0, r0

Disassembly of section .bss:

00000000 <rootPageTable>:
   0:	00000000 	andeq	r0, r0, r0

00000004 <globalkerneltimerset>:
	...

00000005 <globaltimerset>:
   5:	00000000 	andeq	r0, r0, r0

00000008 <irq_console>:
   8:	00000000 	andeq	r0, r0, r0

0000000c <irq_scheduler>:
   c:	00000000 	andeq	r0, r0, r0

00000010 <globalauxptr>:
  10:	00000000 	andeq	r0, r0, r0

00000014 <globalverbose>:
  14:	00000000 	andeq	r0, r0, r0

00000018 <stackPointer>:
  18:	00000000 	andeq	r0, r0, r0

0000001c <globalaux>:
  1c:	00000000 	andeq	r0, r0, r0

00000020 <globaltest>:
  20:	00000000 	andeq	r0, r0, r0

00000024 <irqcount>:
  24:	00000000 	andeq	r0, r0, r0

00000028 <globalPrintString>:
  28:	00000000 	andeq	r0, r0, r0

0000002c <globalPrintMode>:
  2c:	00000000 	andeq	r0, r0, r0

00000030 <globalPrintColour>:
  30:	00000000 	andeq	r0, r0, r0

00000034 <globalPrintNum>:
  34:	00000000 	andeq	r0, r0, r0

00000038 <globalPrintAux>:
  38:	00000000 	andeq	r0, r0, r0

0000003c <globalCPSR>:
  3c:	00000000 	andeq	r0, r0, r0

00000040 <globalSWI>:
  40:	00000000 	andeq	r0, r0, r0

00000044 <globalLRirq>:
  44:	00000000 	andeq	r0, r0, r0

00000048 <globalSPirq>:
  48:	00000000 	andeq	r0, r0, r0

0000004c <globalSPkernel>:
  4c:	00000000 	andeq	r0, r0, r0

00000050 <globalProtectCPSR>:
  50:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN4page8allocateEj:

00000000 <_ZN4page8allocateEj>:
   0:	e5d03004 	ldrb	r3, [r0, #4]
   4:	e3530000 	cmp	r3, #0
   8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
   c:	e1a03000 	mov	r3, r0
  10:	0a000003 	beq	24 <_ZN4page8allocateEj+0x24>
  14:	e5933000 	ldr	r3, [r3]
  18:	e5d32004 	ldrb	r2, [r3, #4]
  1c:	e3520000 	cmp	r2, #0
  20:	1afffffb 	bne	14 <_ZN4page8allocateEj+0x14>
  24:	e5932008 	ldr	r2, [r3, #8]
  28:	e593000c 	ldr	r0, [r3, #12]
  2c:	e3510000 	cmp	r1, #0
  30:	e0820100 	add	r0, r2, r0, lsl #2
  34:	e3a0c000 	mov	ip, #0
  38:	e583140c 	str	r1, [r3, #1036]	; 0x40c
  3c:	e5830408 	str	r0, [r3, #1032]	; 0x408
  40:	e5c3c404 	strb	ip, [r3, #1028]	; 0x404
  44:	e2834b01 	add	r4, r3, #1024	; 0x400
  48:	10801101 	addne	r1, r0, r1, lsl #2
  4c:	11a02000 	movne	r2, r0
  50:	0a000002 	beq	60 <_ZN4page8allocateEj+0x60>
  54:	e482c004 	str	ip, [r2], #4
  58:	e1520001 	cmp	r2, r1
  5c:	1afffffc 	bne	54 <_ZN4page8allocateEj+0x54>
  60:	e3a02001 	mov	r2, #1
  64:	e5834000 	str	r4, [r3]
  68:	e5c32004 	strb	r2, [r3, #4]
  6c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
  70:	e12fff1e 	bx	lr

Disassembly of section .text.startup:

00000000 <_ZN9Scheduler4mainEv>:
   0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e5906018 	ldr	r6, [r0, #24]
   8:	e59f52d4 	ldr	r5, [pc, #724]	; 2e4 <_ZN9Scheduler4mainEv+0x2e4>
   c:	e24dd008 	sub	sp, sp, #8
  10:	e1a07000 	mov	r7, r0
  14:	e3a0400a 	mov	r4, #10
  18:	e1a01004 	mov	r1, r4
  1c:	e1a00006 	mov	r0, r6
  20:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
  24:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
  28:	e5f54001 	ldrb	r4, [r5, #1]!
  2c:	e3540000 	cmp	r4, #0
  30:	1afffff8 	bne	18 <_ZN9Scheduler4mainEv+0x18>
  34:	e28d3008 	add	r3, sp, #8
  38:	e5234008 	str	r4, [r3, #-8]!
  3c:	e59f92a4 	ldr	r9, [pc, #676]	; 2e8 <_ZN9Scheduler4mainEv+0x2e8>
  40:	e5972018 	ldr	r2, [r7, #24]
  44:	e587301c 	str	r3, [r7, #28]
  48:	e5990000 	ldr	r0, [r9]
  4c:	e3a0105c 	mov	r1, #92	; 0x5c
  50:	e58d2004 	str	r2, [sp, #4]
  54:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
  58:	e3a0105c 	mov	r1, #92	; 0x5c
  5c:	e1a06000 	mov	r6, r0
  60:	e5990000 	ldr	r0, [r9]
  64:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
  68:	e3a0105c 	mov	r1, #92	; 0x5c
  6c:	e1a05000 	mov	r5, r0
  70:	e5990000 	ldr	r0, [r9]
  74:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
  78:	e3a0105c 	mov	r1, #92	; 0x5c
  7c:	e1a08000 	mov	r8, r0
  80:	e5990000 	ldr	r0, [r9]
  84:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
  88:	e59fe25c 	ldr	lr, [pc, #604]	; 2ec <_ZN9Scheduler4mainEv+0x2ec>
  8c:	e5979000 	ldr	r9, [r7]
  90:	e59ec808 	ldr	ip, [lr, #2056]	; 0x808
  94:	e59f3254 	ldr	r3, [pc, #596]	; 2f0 <_ZN9Scheduler4mainEv+0x2f0>
  98:	e1a01004 	mov	r1, r4
  9c:	e1c695b4 	strh	r9, [r6, #84]	; 0x54
  a0:	e586c050 	str	ip, [r6, #80]	; 0x50
  a4:	e1c645b6 	strh	r4, [r6, #86]	; 0x56
  a8:	e5c64058 	strb	r4, [r6, #88]	; 0x58
  ac:	e5864048 	str	r4, [r6, #72]	; 0x48
  b0:	e586304c 	str	r3, [r6, #76]	; 0x4c
  b4:	e24c4c01 	sub	r4, ip, #256	; 0x100
  b8:	e289a001 	add	sl, r9, #1
  bc:	e1a03001 	mov	r3, r1
  c0:	e7863001 	str	r3, [r6, r1]
  c4:	e2811004 	add	r1, r1, #4
  c8:	e3510044 	cmp	r1, #68	; 0x44
  cc:	e3a02000 	mov	r2, #0
  d0:	1afffffa 	bne	c0 <_ZN9Scheduler4mainEv+0xc0>
  d4:	e59f1218 	ldr	r1, [pc, #536]	; 2f4 <_ZN9Scheduler4mainEv+0x2f4>
  d8:	e2863040 	add	r3, r6, #64	; 0x40
  dc:	e5863044 	str	r3, [r6, #68]	; 0x44
  e0:	e1c525b6 	strh	r2, [r5, #86]	; 0x56
  e4:	e5c52058 	strb	r2, [r5, #88]	; 0x58
  e8:	e5852048 	str	r2, [r5, #72]	; 0x48
  ec:	e1c5a5b4 	strh	sl, [r5, #84]	; 0x54
  f0:	e5854050 	str	r4, [r5, #80]	; 0x50
  f4:	e585104c 	str	r1, [r5, #76]	; 0x4c
  f8:	e1a03002 	mov	r3, r2
  fc:	e1a01002 	mov	r1, r2
 100:	e289a002 	add	sl, r9, #2
 104:	e24c4c02 	sub	r4, ip, #512	; 0x200
 108:	e7851003 	str	r1, [r5, r3]
 10c:	e2833004 	add	r3, r3, #4
 110:	e3530044 	cmp	r3, #68	; 0x44
 114:	e3a02000 	mov	r2, #0
 118:	1afffffa 	bne	108 <_ZN9Scheduler4mainEv+0x108>
 11c:	e59f11d4 	ldr	r1, [pc, #468]	; 2f8 <_ZN9Scheduler4mainEv+0x2f8>
 120:	e2853040 	add	r3, r5, #64	; 0x40
 124:	e5853044 	str	r3, [r5, #68]	; 0x44
 128:	e1c825b6 	strh	r2, [r8, #86]	; 0x56
 12c:	e5c82058 	strb	r2, [r8, #88]	; 0x58
 130:	e5882048 	str	r2, [r8, #72]	; 0x48
 134:	e1c8a5b4 	strh	sl, [r8, #84]	; 0x54
 138:	e5884050 	str	r4, [r8, #80]	; 0x50
 13c:	e588104c 	str	r1, [r8, #76]	; 0x4c
 140:	e1a03002 	mov	r3, r2
 144:	e1a01002 	mov	r1, r2
 148:	e289a003 	add	sl, r9, #3
 14c:	e24c4c03 	sub	r4, ip, #768	; 0x300
 150:	e7881003 	str	r1, [r8, r3]
 154:	e2833004 	add	r3, r3, #4
 158:	e3530044 	cmp	r3, #68	; 0x44
 15c:	e3a02000 	mov	r2, #0
 160:	1afffffa 	bne	150 <_ZN9Scheduler4mainEv+0x150>
 164:	e59f1190 	ldr	r1, [pc, #400]	; 2fc <_ZN9Scheduler4mainEv+0x2fc>
 168:	e2883040 	add	r3, r8, #64	; 0x40
 16c:	e2899004 	add	r9, r9, #4
 170:	e24ccb01 	sub	ip, ip, #1024	; 0x400
 174:	e5883044 	str	r3, [r8, #68]	; 0x44
 178:	e5879000 	str	r9, [r7]
 17c:	e58ec808 	str	ip, [lr, #2056]	; 0x808
 180:	e1c0a5b4 	strh	sl, [r0, #84]	; 0x54
 184:	e5804050 	str	r4, [r0, #80]	; 0x50
 188:	e1c025b6 	strh	r2, [r0, #86]	; 0x56
 18c:	e5c02058 	strb	r2, [r0, #88]	; 0x58
 190:	e5802048 	str	r2, [r0, #72]	; 0x48
 194:	e580104c 	str	r1, [r0, #76]	; 0x4c
 198:	e1a03002 	mov	r3, r2
 19c:	e1a01002 	mov	r1, r2
 1a0:	e7801003 	str	r1, [r0, r3]
 1a4:	e2833004 	add	r3, r3, #4
 1a8:	e3530044 	cmp	r3, #68	; 0x44
 1ac:	e3a02000 	mov	r2, #0
 1b0:	1afffffa 	bne	1a0 <_ZN9Scheduler4mainEv+0x1a0>
 1b4:	e597e01c 	ldr	lr, [r7, #28]
 1b8:	e59ec000 	ldr	ip, [lr]
 1bc:	e2803040 	add	r3, r0, #64	; 0x40
 1c0:	e15c0002 	cmp	ip, r2
 1c4:	e5803044 	str	r3, [r0, #68]	; 0x44
 1c8:	e1a0100c 	mov	r1, ip
 1cc:	e5862048 	str	r2, [r6, #72]	; 0x48
 1d0:	1a000001 	bne	1dc <_ZN9Scheduler4mainEv+0x1dc>
 1d4:	ea000032 	b	2a4 <_ZN9Scheduler4mainEv+0x2a4>
 1d8:	e1a01003 	mov	r1, r3
 1dc:	e5913048 	ldr	r3, [r1, #72]	; 0x48
 1e0:	e3530000 	cmp	r3, #0
 1e4:	1afffffb 	bne	1d8 <_ZN9Scheduler4mainEv+0x1d8>
 1e8:	e5816048 	str	r6, [r1, #72]	; 0x48
 1ec:	e3a03000 	mov	r3, #0
 1f0:	e35c0000 	cmp	ip, #0
 1f4:	e5853048 	str	r3, [r5, #72]	; 0x48
 1f8:	e1a0100c 	mov	r1, ip
 1fc:	1a000001 	bne	208 <_ZN9Scheduler4mainEv+0x208>
 200:	ea00002a 	b	2b0 <_ZN9Scheduler4mainEv+0x2b0>
 204:	e1a01003 	mov	r1, r3
 208:	e5913048 	ldr	r3, [r1, #72]	; 0x48
 20c:	e3530000 	cmp	r3, #0
 210:	1afffffb 	bne	204 <_ZN9Scheduler4mainEv+0x204>
 214:	e5815048 	str	r5, [r1, #72]	; 0x48
 218:	e35c0000 	cmp	ip, #0
 21c:	e3a03000 	mov	r3, #0
 220:	e5883048 	str	r3, [r8, #72]	; 0x48
 224:	e1a0200c 	mov	r2, ip
 228:	058e8000 	streq	r8, [lr]
 22c:	1a000001 	bne	238 <_ZN9Scheduler4mainEv+0x238>
 230:	ea000004 	b	248 <_ZN9Scheduler4mainEv+0x248>
 234:	e1a02003 	mov	r2, r3
 238:	e5923048 	ldr	r3, [r2, #72]	; 0x48
 23c:	e3530000 	cmp	r3, #0
 240:	1afffffb 	bne	234 <_ZN9Scheduler4mainEv+0x234>
 244:	e5828048 	str	r8, [r2, #72]	; 0x48
 248:	e5870010 	str	r0, [r7, #16]
 24c:	e3a0100a 	mov	r1, #10
 250:	e5970018 	ldr	r0, [r7, #24]
 254:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
 258:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
 25c:	e597301c 	ldr	r3, [r7, #28]
 260:	e5933000 	ldr	r3, [r3]
 264:	e3530000 	cmp	r3, #0
 268:	0a000013 	beq	2bc <_ZN9Scheduler4mainEv+0x2bc>
 26c:	e5975018 	ldr	r5, [r7, #24]
 270:	e59f4088 	ldr	r4, [pc, #136]	; 300 <_ZN9Scheduler4mainEv+0x300>
 274:	e3a0100a 	mov	r1, #10
 278:	e1a00005 	mov	r0, r5
 27c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
 280:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
 284:	e5f41001 	ldrb	r1, [r4, #1]!
 288:	e3510000 	cmp	r1, #0
 28c:	1afffff9 	bne	278 <_ZN9Scheduler4mainEv+0x278>
 290:	e59f306c 	ldr	r3, [pc, #108]	; 304 <_ZN9Scheduler4mainEv+0x304>
 294:	e5933004 	ldr	r3, [r3, #4]
 298:	e1a00007 	mov	r0, r7
 29c:	e5873008 	str	r3, [r7, #8]
 2a0:	ebfffffe 	bl	1614 <_ZN9Scheduler8ScheduleEv>
 2a4:	e58e6000 	str	r6, [lr]
 2a8:	e1a0c006 	mov	ip, r6
 2ac:	eaffffce 	b	1ec <_ZN9Scheduler4mainEv+0x1ec>
 2b0:	e58e5000 	str	r5, [lr]
 2b4:	e1a0c005 	mov	ip, r5
 2b8:	eaffffd6 	b	218 <_ZN9Scheduler4mainEv+0x218>
 2bc:	e5975018 	ldr	r5, [r7, #24]
 2c0:	e59f4040 	ldr	r4, [pc, #64]	; 308 <_ZN9Scheduler4mainEv+0x308>
 2c4:	e3a0100a 	mov	r1, #10
 2c8:	e1a00005 	mov	r0, r5
 2cc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
 2d0:	ebfffffe 	bl	df4 <_ZN7Console9printCharEcj>
 2d4:	e5f41001 	ldrb	r1, [r4, #1]!
 2d8:	e3510000 	cmp	r1, #0
 2dc:	1afffff9 	bne	2c8 <_ZN9Scheduler4mainEv+0x2c8>
 2e0:	eaffffea 	b	290 <_ZN9Scheduler4mainEv+0x290>
 2e4:	00000188 	andeq	r0, r0, r8, lsl #3
	...
 300:	00000198 	muleq	r0, r8, r1
 304:	20003000 	andcs	r3, r0, r0
 308:	000001a4 	andeq	r0, r0, r4, lsr #3

Disassembly of section .rodata.str1.4:

00000000 <.rodata.str1.4>:
   0:	746f420a 	strbtvc	r4, [pc], #-522	; 8 <.rodata.str1.4+0x8>
   4:	31206e4f 	teqcc	r0, pc, asr #28
   8:	6c757020 	ldclvs	0, cr7, [r5], #-128	; 0xffffff80
   c:	6f646173 	svcvs	0x00646173
  10:	00000000 	andeq	r0, r0, r0
  14:	746f420a 	strbtvc	r4, [pc], #-522	; 1c <.rodata.str1.4+0x1c>
  18:	32206e4f 	eorcc	r6, r0, #1264	; 0x4f0
  1c:	6c757020 	ldclvs	0, cr7, [r5], #-128	; 0xffffff80
  20:	6f646173 	svcvs	0x00646173
  24:	00000000 	andeq	r0, r0, r0
  28:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
  2c:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
  30:	6944205d 	stmdbvs	r4, {r0, r2, r3, r4, r6, sp}^
  34:	63636572 	cmnvs	r3, #478150656	; 0x1c800000
  38:	206e4f69 	rsbcs	r4, lr, r9, ror #30
  3c:	6d206564 	cfstr32vs	mvfx6, [r0, #-400]!	; 0xfffffe70
  40:	726f6d65 	rsbvc	r6, pc, #6464	; 0x1940
  44:	69206169 	stmdbvs	r0!, {r0, r3, r5, r6, r8, sp, lr}
  48:	6c41766e 	mcrrvs	6, 6, r7, r1, cr14
  4c:	2e616469 	cdpcs	4, 6, cr6, cr1, cr9, {3}
  50:	00000000 	andeq	r0, r0, r0
  54:	6f72500a 	svcvs	0x0072500a
  58:	6f736563 	svcvs	0x00736563
  5c:	00000020 	andeq	r0, r0, r0, lsr #32
  60:	6f5a0a0a 	svcvs	0x005a0a0a
  64:	6420616e 	strtvs	r6, [r0], #-366	; 0x16e
  68:	656d2065 	strbvs	r2, [sp, #-101]!	; 0x65
  6c:	69726f6d 	ldmdbvs	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
  70:	61702061 	cmnvs	r0, r1, rrx
  74:	73206172 	teqvc	r0, #-2147483620	; 0x8000001c
  78:	61766c61 	cmnvs	r6, r1, ror #24
  7c:	6f632072 	svcvs	0x00632072
  80:	7865746e 	stmdavc	r5!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}^
  84:	003a6f74 	eorseq	r6, sl, r4, ror pc
  88:	4e4f445b 	mcrmi	4, 2, r4, cr15, cr11, {2}
  8c:	00095d45 	andeq	r5, r9, r5, asr #26
  90:	69736142 	ldmdbvs	r3!, {r1, r6, r8, sp, lr}^
  94:	6e692063 	cdpvs	0, 6, cr2, cr9, cr3, {3}
  98:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
  9c:	00747075 	rsbseq	r7, r4, r5, ror r0
  a0:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
  a4:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
  a8:	6e49205d 	mcrvs	0, 2, r2, cr9, cr13, {2}
  ac:	696c6176 	stmdbvs	ip!, {r1, r2, r4, r5, r6, r8, sp, lr}^
  b0:	6f6c2064 	svcvs	0x006c2064
  b4:	6e696461 	cdpvs	4, 6, cr6, cr9, cr1, {3}
  b8:	61762067 	cmnvs	r6, r7, rrx
  bc:	2e65756c 	cdpcs	5, 6, cr7, cr5, cr12, {3}
  c0:	00000000 	andeq	r0, r0, r0
  c4:	72654b0a 	rsbvc	r4, r5, #10240	; 0x2800
  c8:	536c656e 	cmnpl	ip, #461373440	; 0x1b800000
  cc:	00203a50 	eoreq	r3, r0, r0, asr sl
  d0:	61530a0a 	cmpvs	r3, sl, lsl #20
  d4:	65206f63 	strvs	r6, [r0, #-3939]!	; 0xf63
  d8:	7270206c 	rsbsvc	r2, r0, #108	; 0x6c
  dc:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
  e0:	00203a6f 	eoreq	r3, r0, pc, ror #20
  e4:	6f72500a 	svcvs	0x0072500a
  e8:	6f736563 	svcvs	0x00736563
  ec:	20617920 	rsbcs	r7, r1, r0, lsr #18
  f0:	6d726574 	cfldr64vs	mvdx6, [r2, #-464]!	; 0xfffffe30
  f4:	64616e69 	strbtvs	r6, [r1], #-3689	; 0xe69
  f8:	45202e6f 	strmi	r2, [r0, #-3695]!	; 0xe6f
  fc:	696d696c 	stmdbvs	sp!, {r2, r3, r5, r6, r8, fp, sp, lr}^
 100:	646e616e 	strbtvs	r6, [lr], #-366	; 0x16e
 104:	6564206f 	strbvs	r2, [r4, #-111]!	; 0x6f
 108:	20616c20 	rsbcs	r6, r1, r0, lsr #24
 10c:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0x96c
 110:	2e2e2e61 	cdpcs	14, 2, cr2, cr14, cr1, {3}
 114:	00000000 	andeq	r0, r0, r0
 118:	4f4e0a0a 	svcmi	0x004e0a0a
 11c:	59414820 	stmdbpl	r1, {r5, fp, lr}^
 120:	53414d20 	movtpl	r4, #7456	; 0x1d20
 124:	4f525020 	svcmi	0x00525020
 128:	4f534543 	svcmi	0x00534543
 12c:	000a2e53 	andeq	r2, sl, r3, asr lr
 130:	6e6f430a 	cdpvs	3, 6, cr4, cr15, cr10, {0}
 134:	74736520 	ldrbtvc	r6, [r3], #-1312	; 0x520
 138:	3a6f6461 	bcc	1bd92c4 <kmain+0x1bd70ec>
 13c:	00000020 	andeq	r0, r0, r0, lsr #32
 140:	4243500a 	submi	r5, r3, #10
 144:	61756720 	cmnvs	r5, r0, lsr #14
 148:	64616472 	strbtvs	r6, [r1], #-1138	; 0x472
 14c:	6e65206f 	cdpvs	0, 6, cr2, cr5, cr15, {3}
 150:	00203a20 	eoreq	r3, r0, r0, lsr #20
 154:	72500a0a 	subsvc	r0, r0, #40960	; 0xa000
 158:	6d69786f 	stclvs	8, cr7, [r9, #-444]!	; 0xfffffe44
 15c:	7270206f 	rsbsvc	r2, r0, #111	; 0x6f
 160:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
 164:	00203a6f 	eoreq	r3, r0, pc, ror #20
 168:	6175510a 	cmnvs	r5, sl, lsl #2
 16c:	6d75746e 	cfldrdvs	mvd7, [r5, #-440]!	; 0xfffffe48
 170:	00003a73 	andeq	r3, r0, r3, ror sl
 174:	6569540a 	strbvs	r5, [r9, #-1034]!	; 0x40a
 178:	206f706d 	rsbcs	r7, pc, sp, rrx
 17c:	61746f74 	cmnvs	r4, r4, ror pc
 180:	00203a6c 	eoreq	r3, r0, ip, ror #20
 184:	00737520 	rsbseq	r7, r3, r0, lsr #10
 188:	69614d0a 	stmdbvs	r1!, {r1, r3, r8, sl, fp, lr}^
 18c:	6373206e 	cmnvs	r3, #110	; 0x6e
 190:	75646568 	strbvc	r6, [r4, #-1384]!	; 0x568
 194:	0072656c 	rsbseq	r6, r2, ip, ror #10
 198:	206f4e0a 	rsbcs	r4, pc, sl, lsl #28
 19c:	69636176 	stmdbvs	r3!, {r1, r2, r4, r5, r6, r8, sp, lr}^
 1a0:	00000061 	andeq	r0, r0, r1, rrx
 1a4:	6361560a 	cmnvs	r1, #10485760	; 0xa00000
 1a8:	00006169 	andeq	r6, r0, r9, ror #2
 1ac:	6d754e0a 	ldclvs	14, cr4, [r5, #-40]!	; 0xffffffd8
 1b0:	20726562 	rsbscs	r6, r2, r2, ror #10
 1b4:	6e20666f 	cfmadda32vs	mvax3, mvax6, mvfx0, mvfx15
 1b8:	65207765 	strvs	r7, [r0, #-1893]!	; 0x765
 1bc:	656d656c 	strbvs	r6, [sp, #-1388]!	; 0x56c
 1c0:	3a73746e 	bcc	1cdd380 <kmain+0x1cdb1a8>
 1c4:	00000000 	andeq	r0, r0, r0
 1c8:	77654e0a 	strbvc	r4, [r5, -sl, lsl #28]!
 1cc:	73615420 	cmnvc	r1, #32, 8	; 0x20000000
 1d0:	6970206b 	ldmdbvs	r0!, {r0, r1, r3, r5, r6, sp}^
 1d4:	00203a64 	eoreq	r3, r0, r4, ror #20
 1d8:	77654e0a 	strbvc	r4, [r5, -sl, lsl #28]!
 1dc:	67657220 	strbvs	r7, [r5, -r0, lsr #4]!
 1e0:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0x369
 1e4:	6f7a2072 	svcvs	0x007a2072
 1e8:	203a656e 	eorscs	r6, sl, lr, ror #10
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	3d3d0a0a 	vldmdbcc	sp!, {s0-s9}
 1f4:	6e616843 	cdpvs	8, 6, cr6, cr1, cr3, {2}
 1f8:	676e6967 	strbvs	r6, [lr, -r7, ror #18]!
 1fc:	206f7420 	rsbcs	r7, pc, r0, lsr #8
 200:	4d205653 	stcmi	6, cr5, [r0, #-332]!	; 0xfffffeb4
 204:	3d45444f 	cfstrdcc	mvd4, [r5, #-316]	; 0xfffffec4
 208:	0000003d 	andeq	r0, r0, sp, lsr r0
 20c:	6d65520a 	sfmvs	f5, 2, [r5, #-40]!	; 0xffffffd8
 210:	696e6961 	stmdbvs	lr!, {r0, r5, r6, r8, fp, sp, lr}^
 214:	7020676e 	eorvc	r6, r0, lr, ror #14
 218:	65636f72 	strbvs	r6, [r3, #-3954]!	; 0xf72
 21c:	73657373 	cmnvc	r5, #-872415231	; 0xcc000001
 220:	0000003a 	andeq	r0, r0, sl, lsr r0
 224:	3d3d0a0a 	vldmdbcc	sp!, {s0-s9}
 228:	206e6946 	rsbcs	r6, lr, r6, asr #18
 22c:	70206564 	eorvc	r6, r0, r4, ror #10
 230:	65636f72 	strbvs	r6, [r3, #-3954]!	; 0xf72
 234:	3d3d6f73 	ldccc	15, cr6, [sp, #-460]!	; 0xfffffe34
 238:	00000000 	andeq	r0, r0, r0
 23c:	455b0a0a 	ldrbmi	r0, [fp, #-2570]	; 0xa0a
 240:	524f5252 	subpl	r5, pc, #536870917	; 0x20000005
 244:	3f3f205d 	svccc	0x003f205d
 248:	00003f3f 	andeq	r3, r0, pc, lsr pc
 24c:	00005b0a 	andeq	r5, r0, sl, lsl #22
 250:	0000205d 	andeq	r2, r0, sp, asr r0
 254:	636f7250 	cmnvs	pc, #80, 4
 258:	20737365 	rsbscs	r7, r3, r5, ror #6
 25c:	2d202131 	stfcss	f2, [r0, #-196]!	; 0xffffff3c
 260:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 264:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 268:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 26c:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 270:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 274:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 278:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 27c:	6c202d2d 	stcvs	13, cr2, [r0], #-180	; 0xffffff4c
 280:	21676e6f 	cmncs	r7, pc, ror #28
 284:	00000000 	andeq	r0, r0, r0
 288:	636f7250 	cmnvs	pc, #80, 4
 28c:	20737365 	rsbscs	r7, r3, r5, ror #6
 290:	2d202132 	stfcss	f2, [r0, #-200]!	; 0xffffff38
 294:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 298:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 29c:	6d2d2d2d 	stcvs	13, cr2, [sp, #-180]!	; 0xffffff4c
 2a0:	75696465 	strbvc	r6, [r9, #-1125]!	; 0x465
 2a4:	0000006d 	andeq	r0, r0, sp, rrx
 2a8:	636f7250 	cmnvs	pc, #80, 4
 2ac:	20737365 	rsbscs	r7, r3, r5, ror #6
 2b0:	2d202133 	stfcss	f2, [r0, #-204]!	; 0xffffff34
 2b4:	6f687320 	svcvs	0x00687320
 2b8:	00007472 	andeq	r7, r0, r2, ror r4
 2bc:	636f7250 	cmnvs	pc, #80, 4
 2c0:	20737365 	rsbscs	r7, r3, r5, ror #6
 2c4:	2d202134 	stfcss	f2, [r0, #-208]!	; 0xffffff30
 2c8:	2d2d2d2d 	stccs	13, cr2, [sp, #-180]!	; 0xffffff4c
 2cc:	0000002d 	andeq	r0, r0, sp, lsr #32
 2d0:	636c6557 	cmnvs	ip, #364904448	; 0x15c00000
 2d4:	20656d6f 	rsbcs	r6, r5, pc, ror #26
 2d8:	4d206f74 	stcmi	15, cr6, [r0, #-464]!	; 0xfffffe30
 2dc:	66646e69 	strbtvs	r6, [r4], -r9, ror #28
 2e0:	6579616c 	ldrbvs	r6, [r9, #-364]!	; 0x16c
 2e4:	61202c72 	teqvs	r0, r2, ror ip
 2e8:	73756320 	cmnvc	r5, #32, 6	; 0x80000000
 2ec:	206d6f74 	rsbcs	r6, sp, r4, ror pc
 2f0:	70736172 	rsbsvc	r6, r3, r2, ror r1
 2f4:	72726562 	rsbsvc	r6, r2, #411041792	; 0x18800000
 2f8:	69702079 	ldmdbvs	r0!, {r0, r3, r4, r5, r6, sp}^
 2fc:	72656b20 	rsbvc	r6, r5, #32, 22	; 0x8000
 300:	206c656e 	rsbcs	r6, ip, lr, ror #10
 304:	74697277 	strbtvc	r7, [r9], #-631	; 0x277
 308:	206e6574 	rsbcs	r6, lr, r4, ror r5
 30c:	43206e69 	teqmi	r0, #1680	; 0x690
 310:	000a2b2b 	andeq	r2, sl, fp, lsr #22
 314:	6c697542 	cfstr64vs	mvdx7, [r9], #-264	; 0xfffffef8
 318:	00203a64 	eoreq	r3, r0, r4, ror #20
 31c:	2e302e30 	mrccs	14, 1, r2, cr0, cr0, {1}
 320:	36363532 			; <UNDEFINED> instruction: 0x36363532
 324:	00000000 	andeq	r0, r0, r0
 328:	000a0a0a 	andeq	r0, sl, sl, lsl #20
 32c:	52455b0a 	subpl	r5, r5, #10240	; 0x2800
 330:	5d524f52 	ldclpl	15, cr4, [r2, #-328]	; 0xfffffeb8
 334:	6c615320 	stclvs	3, cr5, [r1], #-128	; 0xffffff80
 338:	61206f74 	teqvs	r0, r4, ror pc
 33c:	72696420 	rsbvc	r6, r9, #32, 8	; 0x20000000
 340:	69636365 	stmdbvs	r3!, {r0, r2, r5, r6, r8, r9, sp, lr}^
 344:	30206e4f 	eorcc	r6, r0, pc, asr #28
 348:	202e3078 	eorcs	r3, lr, r8, ror r0
 34c:	00000000 	andeq	r0, r0, r0
 350:	74696157 	strbtvc	r6, [r9], #-343	; 0x157
 354:	3a676e69 	bcc	19dbd00 <kmain+0x19d9b28>
 358:	00000020 	andeq	r0, r0, r0, lsr #32
 35c:	54535b0a 	ldrbpl	r5, [r3], #-2826	; 0xb0a
 360:	49545241 	ldmdbmi	r4, {r0, r6, r9, ip, lr}^
 364:	0a5d474e 	beq	17520a4 <kmain+0x174fecc>
 368:	0000000a 	andeq	r0, r0, sl
 36c:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xe49
 370:	696c6169 	stmdbvs	ip!, {r0, r3, r5, r6, r8, sp, lr}^
 374:	2064657a 	rsbcs	r6, r4, sl, ror r5
 378:	65676170 	strbvs	r6, [r7, #-368]!	; 0x170
 37c:	62617420 	rsbvs	r7, r1, #32, 8	; 0x20000000
 380:	0000656c 	andeq	r6, r0, ip, ror #10

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	3428203a 	strtcc	r2, [r8], #-58	; 0x3a
   8:	322e382e 	eorcc	r3, lr, #3014656	; 0x2e0000
   c:	7534312d 	ldrvc	r3, [r4, #-301]!	; 0x12d
  10:	746e7562 	strbtvc	r7, [lr], #-1378	; 0x562
  14:	362b3175 			; <UNDEFINED> instruction: 0x362b3175
  18:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  1c:	00322e38 	eorseq	r2, r2, r8, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002f41 	andeq	r2, r0, r1, asr #30
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000025 	andeq	r0, r0, r5, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	4d445437 	cfstrdmi	mvd5, [r4, #-220]	; 0xffffff24
  18:	02060049 	andeq	r0, r6, #73	; 0x49
  1c:	01090108 	tsteq	r9, r8, lsl #2
  20:	01140412 	tsteq	r4, r2, lsl r4
  24:	03170115 	tsteq	r7, #1073741829	; 0x40000005
  28:	01190118 	tsteq	r9, r8, lsl r1
  2c:	021e011a 	andseq	r0, lr, #-2147483642	; 0x80000006
