
kmain.o:     file format elf32-littlearm


Disassembly of section .group:

00000000 <.group>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000007 	andeq	r0, r0, r7

Disassembly of section .group:

00000000 <.group>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000009 	andeq	r0, r0, r9

Disassembly of section .text:

00000000 <_Z6divideiiPiS_.part.0>:
       0:	e3a0c000 	mov	ip, #0
       4:	e3500000 	cmp	r0, #0
       8:	b2600000 	rsblt	r0, r0, #0
       c:	e3510000 	cmp	r1, #0
      10:	b2611000 	rsblt	r1, r1, #0
      14:	e1500001 	cmp	r0, r1
      18:	e92d4010 	push	{r4, lr}
      1c:	e582c000 	str	ip, [r2]
      20:	e1a0e001 	mov	lr, r1
      24:	e583c000 	str	ip, [r3]
      28:	ba000007 	blt	4c <_Z6divideiiPiS_.part.0+0x4c>
      2c:	e592c000 	ldr	ip, [r2]
      30:	e28cc001 	add	ip, ip, #1
      34:	e08ee001 	add	lr, lr, r1
      38:	e150000e 	cmp	r0, lr
      3c:	e1a0400c 	mov	r4, ip
      40:	e28cc001 	add	ip, ip, #1
      44:	aafffffa 	bge	34 <_Z6divideiiPiS_.part.0+0x34>
      48:	e5824000 	str	r4, [r2]
      4c:	e06e0000 	rsb	r0, lr, r0
      50:	e0800001 	add	r0, r0, r1
      54:	e5830000 	str	r0, [r3]
      58:	e8bd4010 	pop	{r4, lr}
      5c:	e12fff1e 	bx	lr

00000060 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>:
      60:	e3500009 	cmp	r0, #9
      64:	9a00000c 	bls	9c <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3+0x3c>
      68:	e3a03000 	mov	r3, #0
      6c:	e240000a 	sub	r0, r0, #10
      70:	e3500009 	cmp	r0, #9
      74:	e2833001 	add	r3, r3, #1
      78:	8afffffb 	bhi	6c <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3+0xc>
      7c:	e1a03103 	lsl	r3, r3, #2
      80:	e2833202 	add	r3, r3, #536870912	; 0x20000000
      84:	e2833602 	add	r3, r3, #2097152	; 0x200000
      88:	e5932000 	ldr	r2, [r3]
      8c:	e0800080 	add	r0, r0, r0, lsl #1
      90:	e1820011 	orr	r0, r2, r1, lsl r0
      94:	e5830000 	str	r0, [r3]
      98:	e12fff1e 	bx	lr
      9c:	e59f3000 	ldr	r3, [pc]	; a4 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3+0x44>
      a0:	eafffff8 	b	88 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3+0x28>
      a4:	20200000 	eorcs	r0, r0, r0

000000a8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>:
      a8:	e350001f 	cmp	r0, #31
      ac:	8a000003 	bhi	c0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x18>
      b0:	e3510000 	cmp	r1, #0
      b4:	0a00000c 	beq	ec <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x44>
      b8:	e59f2034 	ldr	r2, [pc, #52]	; f4 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x4c>
      bc:	ea000003 	b	d0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x28>
      c0:	e3510000 	cmp	r1, #0
      c4:	1a000005 	bne	e0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x38>
      c8:	e59f2028 	ldr	r2, [pc, #40]	; f8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x50>
      cc:	e2400020 	sub	r0, r0, #32
      d0:	e3a03001 	mov	r3, #1
      d4:	e1a00013 	lsl	r0, r3, r0
      d8:	e5820000 	str	r0, [r2]
      dc:	e12fff1e 	bx	lr
      e0:	e2400020 	sub	r0, r0, #32
      e4:	e59f2010 	ldr	r2, [pc, #16]	; fc <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x54>
      e8:	eafffff8 	b	d0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x28>
      ec:	e59f200c 	ldr	r2, [pc, #12]	; 100 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x58>
      f0:	eafffff6 	b	d0 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4+0x28>
      f4:	2020001c 	eorcs	r0, r0, ip, lsl r0
      f8:	2020002c 	eorcs	r0, r0, ip, lsr #32
      fc:	20200020 	eorcs	r0, r0, r0, lsr #32
     100:	20200028 	eorcs	r0, r0, r8, lsr #32

00000104 <_Z3absi>:
     104:	e3500000 	cmp	r0, #0
     108:	b2600000 	rsblt	r0, r0, #0
     10c:	e12fff1e 	bx	lr

00000110 <_Z15getNumberLengthiiPi>:
     110:	e3a03000 	mov	r3, #0
     114:	e5823000 	str	r3, [r2]
     118:	e3a02001 	mov	r2, #1
     11c:	ea000000 	b	124 <_Z15getNumberLengthiiPi+0x14>
     120:	e1a02003 	mov	r2, r3
     124:	e0030291 	mul	r3, r1, r2
     128:	e1530000 	cmp	r3, r0
     12c:	bafffffb 	blt	120 <_Z15getNumberLengthiiPi+0x10>
     130:	e1a00002 	mov	r0, r2
     134:	e12fff1e 	bx	lr

00000138 <_Z15getNumberLengthii>:
     138:	e3a02001 	mov	r2, #1
     13c:	ea000000 	b	144 <_Z15getNumberLengthii+0xc>
     140:	e1a02003 	mov	r2, r3
     144:	e0030192 	mul	r3, r2, r1
     148:	e1500003 	cmp	r0, r3
     14c:	cafffffb 	bgt	140 <_Z15getNumberLengthii+0x8>
     150:	e1a00002 	mov	r0, r2
     154:	e12fff1e 	bx	lr

00000158 <_Z15getNumberLengthi>:
     158:	e3a02001 	mov	r2, #1
     15c:	ea000000 	b	164 <_Z15getNumberLengthi+0xc>
     160:	e1a02003 	mov	r2, r3
     164:	e0823102 	add	r3, r2, r2, lsl #2
     168:	e1a03083 	lsl	r3, r3, #1
     16c:	e1500003 	cmp	r0, r3
     170:	cafffffa 	bgt	160 <_Z15getNumberLengthi+0x8>
     174:	e1a00002 	mov	r0, r2
     178:	e12fff1e 	bx	lr

0000017c <_Z6divideiiPiS_>:
     17c:	e251c000 	subs	ip, r1, #0
     180:	012fff1e 	bxeq	lr
     184:	e35c0001 	cmp	ip, #1
     188:	1affff9c 	bne	0 <_Z6divideiiPiS_.part.0>
     18c:	e92d4030 	push	{r4, r5, lr}
     190:	e1a0e003 	mov	lr, r3
     194:	e1a04002 	mov	r4, r2
     198:	e3a03000 	mov	r3, #0
     19c:	e5840000 	str	r0, [r4]
     1a0:	e58e3000 	str	r3, [lr]
     1a4:	e8bd4030 	pop	{r4, r5, lr}
     1a8:	e12fff1e 	bx	lr

000001ac <_Z6divideii>:
     1ac:	e3a02000 	mov	r2, #0
     1b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     1b4:	e2513000 	subs	r3, r1, #0
     1b8:	e24dd00c 	sub	sp, sp, #12
     1bc:	e58d2000 	str	r2, [sp]
     1c0:	e58d2004 	str	r2, [sp, #4]
     1c4:	01a00003 	moveq	r0, r3
     1c8:	0a000007 	beq	1ec <_Z6divideii+0x40>
     1cc:	e3530001 	cmp	r3, #1
     1d0:	01a02000 	moveq	r2, r0
     1d4:	01a00002 	moveq	r0, r2
     1d8:	0a000003 	beq	1ec <_Z6divideii+0x40>
     1dc:	e1a0200d 	mov	r2, sp
     1e0:	e28d3004 	add	r3, sp, #4
     1e4:	ebffff85 	bl	0 <_Z6divideiiPiS_.part.0>
     1e8:	e59d0000 	ldr	r0, [sp]
     1ec:	e28dd00c 	add	sp, sp, #12
     1f0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     1f4:	e12fff1e 	bx	lr

000001f8 <_Z6moduloii>:
     1f8:	e3a03000 	mov	r3, #0
     1fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     200:	e3510001 	cmp	r1, #1
     204:	e24dd00c 	sub	sp, sp, #12
     208:	e58d3000 	str	r3, [sp]
     20c:	e58d3004 	str	r3, [sp, #4]
     210:	91a00003 	movls	r0, r3
     214:	9a000003 	bls	228 <_Z6moduloii+0x30>
     218:	e1a0200d 	mov	r2, sp
     21c:	e28d3004 	add	r3, sp, #4
     220:	ebffff76 	bl	0 <_Z6divideiiPiS_.part.0>
     224:	e59d0004 	ldr	r0, [sp, #4]
     228:	e28dd00c 	add	sp, sp, #12
     22c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     230:	e12fff1e 	bx	lr

00000234 <_Z5allocj>:
     234:	e59f3074 	ldr	r3, [pc, #116]	; 2b0 <_Z5allocj+0x7c>
     238:	e5933000 	ldr	r3, [r3]
     23c:	e5d32004 	ldrb	r2, [r3, #4]
     240:	e3520000 	cmp	r2, #0
     244:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     248:	e1a01000 	mov	r1, r0
     24c:	0a000003 	beq	260 <_Z5allocj+0x2c>
     250:	e5933000 	ldr	r3, [r3]
     254:	e5d32004 	ldrb	r2, [r3, #4]
     258:	e3520000 	cmp	r2, #0
     25c:	1afffffb 	bne	250 <_Z5allocj+0x1c>
     260:	e3a0c000 	mov	ip, #0
     264:	e5932008 	ldr	r2, [r3, #8]
     268:	e593000c 	ldr	r0, [r3, #12]
     26c:	e151000c 	cmp	r1, ip
     270:	e0820100 	add	r0, r2, r0, lsl #2
     274:	e583140c 	str	r1, [r3, #1036]	; 0x40c
     278:	e5830408 	str	r0, [r3, #1032]	; 0x408
     27c:	e5c3c404 	strb	ip, [r3, #1028]	; 0x404
     280:	e283eb01 	add	lr, r3, #1024	; 0x400
     284:	0a000004 	beq	29c <_Z5allocj+0x68>
     288:	e1a02000 	mov	r2, r0
     28c:	e0801101 	add	r1, r0, r1, lsl #2
     290:	e482c004 	str	ip, [r2], #4
     294:	e1520001 	cmp	r2, r1
     298:	1afffffc 	bne	290 <_Z5allocj+0x5c>
     29c:	e3a02001 	mov	r2, #1
     2a0:	e583e000 	str	lr, [r3]
     2a4:	e5c32004 	strb	r2, [r3, #4]
     2a8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     2ac:	e12fff1e 	bx	lr
     2b0:	00000000 	andeq	r0, r0, r0

000002b4 <_Z15init_page_tablev>:
     2b4:	e3a0380f 	mov	r3, #983040	; 0xf0000
     2b8:	e3a01000 	mov	r1, #0
     2bc:	e3a02aff 	mov	r2, #1044480	; 0xff000
     2c0:	e59f000c 	ldr	r0, [pc, #12]	; 2d4 <_Z15init_page_tablev+0x20>
     2c4:	e5803000 	str	r3, [r0]
     2c8:	e5c31004 	strb	r1, [r3, #4]
     2cc:	e5832008 	str	r2, [r3, #8]
     2d0:	e12fff1e 	bx	lr
     2d4:	00000000 	andeq	r0, r0, r0

000002d8 <_Z10irq_enablev>:
     2d8:	e3a0287e 	mov	r2, #8257536	; 0x7e0000
     2dc:	e59f3008 	ldr	r3, [pc, #8]	; 2ec <_Z10irq_enablev+0x14>
     2e0:	e3a00001 	mov	r0, #1
     2e4:	e5832214 	str	r2, [r3, #532]	; 0x214
     2e8:	e12fff1e 	bx	lr
     2ec:	2000b000 	andcs	fp, r0, r0

000002f0 <_Z11irq_disablev>:
     2f0:	e3a0287e 	mov	r2, #8257536	; 0x7e0000
     2f4:	e59f3008 	ldr	r3, [pc, #8]	; 304 <_Z11irq_disablev+0x14>
     2f8:	e3a00001 	mov	r0, #1
     2fc:	e5832220 	str	r2, [r3, #544]	; 0x220
     300:	e12fff1e 	bx	lr
     304:	2000b000 	andcs	fp, r0, r0

00000308 <_Z16irq_enable_timerv>:
     308:	e3a02008 	mov	r2, #8
     30c:	e59f3008 	ldr	r3, [pc, #8]	; 31c <_Z16irq_enable_timerv+0x14>
     310:	e3a00001 	mov	r0, #1
     314:	e5832210 	str	r2, [r3, #528]	; 0x210
     318:	e12fff1e 	bx	lr
     31c:	2000b000 	andcs	fp, r0, r0

00000320 <_Z22irq_enable_kerneltimerv>:
     320:	e3a02002 	mov	r2, #2
     324:	e59f3008 	ldr	r3, [pc, #8]	; 334 <_Z22irq_enable_kerneltimerv+0x14>
     328:	e3a00001 	mov	r0, #1
     32c:	e5832210 	str	r2, [r3, #528]	; 0x210
     330:	e12fff1e 	bx	lr
     334:	2000b000 	andcs	fp, r0, r0

00000338 <_Z17irq_disable_timerv>:
     338:	e3a02008 	mov	r2, #8
     33c:	e59f3008 	ldr	r3, [pc, #8]	; 34c <_Z17irq_disable_timerv+0x14>
     340:	e3a00001 	mov	r0, #1
     344:	e583221c 	str	r2, [r3, #540]	; 0x21c
     348:	e12fff1e 	bx	lr
     34c:	2000b000 	andcs	fp, r0, r0

00000350 <_Z23irq_disable_kerneltimerv>:
     350:	e3a02002 	mov	r2, #2
     354:	e59f3008 	ldr	r3, [pc, #8]	; 364 <_Z23irq_disable_kerneltimerv+0x14>
     358:	e3a00001 	mov	r0, #1
     35c:	e583221c 	str	r2, [r3, #540]	; 0x21c
     360:	e12fff1e 	bx	lr
     364:	2000b000 	andcs	fp, r0, r0

00000368 <_ZN12RaspberryLib5GET32Ej>:
     368:	e5900000 	ldr	r0, [r0]
     36c:	e12fff1e 	bx	lr

00000370 <_ZN12RaspberryLib5PUT32Ejj>:
     370:	e5801000 	str	r1, [r0]
     374:	e12fff1e 	bx	lr

00000378 <_ZN12RaspberryLib4GET4Ej>:
     378:	e5d00000 	ldrb	r0, [r0]
     37c:	e12fff1e 	bx	lr

00000380 <_ZN12RaspberryLib4PUT4Ejc>:
     380:	e5c01000 	strb	r1, [r0]
     384:	e12fff1e 	bx	lr

00000388 <_ZN12RaspberryLib7SetGPIOEjj>:
     388:	e59f3064 	ldr	r3, [pc, #100]	; 3f4 <_ZN12RaspberryLib7SetGPIOEjj+0x6c>
     38c:	e59f2064 	ldr	r2, [pc, #100]	; 3f8 <_ZN12RaspberryLib7SetGPIOEjj+0x70>
     390:	e3510001 	cmp	r1, #1
     394:	01a01003 	moveq	r1, r3
     398:	11a01002 	movne	r1, r2
     39c:	e350000a 	cmp	r0, #10
     3a0:	9a000010 	bls	3e8 <_ZN12RaspberryLib7SetGPIOEjj+0x60>
     3a4:	e3a03000 	mov	r3, #0
     3a8:	e240000a 	sub	r0, r0, #10
     3ac:	e350000a 	cmp	r0, #10
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	8afffffb 	bhi	3a8 <_ZN12RaspberryLib7SetGPIOEjj+0x20>
     3b8:	e3a0c001 	mov	ip, #1
     3bc:	e1a02103 	lsl	r2, r3, #2
     3c0:	e2822202 	add	r2, r2, #536870912	; 0x20000000
     3c4:	e1a03203 	lsl	r3, r3, #4
     3c8:	e2822602 	add	r2, r2, #2097152	; 0x200000
     3cc:	e1a0331c 	lsl	r3, ip, r3
     3d0:	e3a0c001 	mov	ip, #1
     3d4:	e0800080 	add	r0, r0, r0, lsl #1
     3d8:	e1a0001c 	lsl	r0, ip, r0
     3dc:	e5820000 	str	r0, [r2]
     3e0:	e5813000 	str	r3, [r1]
     3e4:	e12fff1e 	bx	lr
     3e8:	e3a03001 	mov	r3, #1
     3ec:	e59f2008 	ldr	r2, [pc, #8]	; 3fc <_ZN12RaspberryLib7SetGPIOEjj+0x74>
     3f0:	eafffff6 	b	3d0 <_ZN12RaspberryLib7SetGPIOEjj+0x48>
     3f4:	20200028 	eorcs	r0, r0, r8, lsr #32
     3f8:	2020001c 	eorcs	r0, r0, ip, lsl r0
     3fc:	20200000 	eorcs	r0, r0, r0

00000400 <_ZN12RaspberryLib15SetGPIOfunctionEjj>:
     400:	e3500035 	cmp	r0, #53	; 0x35
     404:	93510007 	cmpls	r1, #7
     408:	812fff1e 	bxhi	lr
     40c:	eaffff13 	b	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>

00000410 <_ZN12RaspberryLib12SetGPIOvalueEjb>:
     410:	e3500035 	cmp	r0, #53	; 0x35
     414:	812fff1e 	bxhi	lr
     418:	eaffff22 	b	a8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>

0000041c <_ZN12RaspberryLib13ReadGPIOvalueEj>:
     41c:	e3500035 	cmp	r0, #53	; 0x35
     420:	8a000006 	bhi	440 <_ZN12RaspberryLib13ReadGPIOvalueEj+0x24>
     424:	e59f301c 	ldr	r3, [pc, #28]	; 448 <_ZN12RaspberryLib13ReadGPIOvalueEj+0x2c>
     428:	e59f201c 	ldr	r2, [pc, #28]	; 44c <_ZN12RaspberryLib13ReadGPIOvalueEj+0x30>
     42c:	e350001f 	cmp	r0, #31
     430:	91a00003 	movls	r0, r3
     434:	81a00002 	movhi	r0, r2
     438:	e5900000 	ldr	r0, [r0]
     43c:	e12fff1e 	bx	lr
     440:	e3a00000 	mov	r0, #0
     444:	e12fff1e 	bx	lr
     448:	20200034 	eorcs	r0, r0, r4, lsr r0
     44c:	20200038 	eorcs	r0, r0, r8, lsr r0

00000450 <_ZN12RaspberryLib6SetLEDEjb>:
     450:	e2400001 	sub	r0, r0, #1
     454:	e92d4010 	push	{r4, lr}
     458:	e1a04001 	mov	r4, r1
     45c:	e3500005 	cmp	r0, #5
     460:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
     464:	ea00002f 	b	528 <_ZN12RaspberryLib6SetLEDEjb+0xd8>
     468:	0000049c 	muleq	r0, ip, r4
     46c:	000004b8 			; <UNDEFINED> instruction: 0x000004b8
     470:	000004d4 	ldrdeq	r0, [r0], -r4
     474:	000004f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     478:	0000050c 	andeq	r0, r0, ip, lsl #10
     47c:	00000480 	andeq	r0, r0, r0, lsl #9
     480:	e3a0001b 	mov	r0, #27
     484:	e3a01001 	mov	r1, #1
     488:	ebfffef4 	bl	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
     48c:	e1a01004 	mov	r1, r4
     490:	e3a0001b 	mov	r0, #27
     494:	e8bd4010 	pop	{r4, lr}
     498:	eaffff02 	b	a8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
     49c:	e3a00009 	mov	r0, #9
     4a0:	e3a01001 	mov	r1, #1
     4a4:	ebfffeed 	bl	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
     4a8:	e1a01004 	mov	r1, r4
     4ac:	e3a00009 	mov	r0, #9
     4b0:	e8bd4010 	pop	{r4, lr}
     4b4:	eafffefb 	b	a8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
     4b8:	e3a0000a 	mov	r0, #10
     4bc:	e3a01001 	mov	r1, #1
     4c0:	ebfffee6 	bl	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
     4c4:	e1a01004 	mov	r1, r4
     4c8:	e3a0000a 	mov	r0, #10
     4cc:	e8bd4010 	pop	{r4, lr}
     4d0:	eafffef4 	b	a8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
     4d4:	e3a0000b 	mov	r0, #11
     4d8:	e3a01001 	mov	r1, #1
     4dc:	ebfffedf 	bl	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
     4e0:	e1a01004 	mov	r1, r4
     4e4:	e3a0000b 	mov	r0, #11
     4e8:	e8bd4010 	pop	{r4, lr}
     4ec:	eafffeed 	b	a8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
     4f0:	e3a00011 	mov	r0, #17
     4f4:	e3a01001 	mov	r1, #1
     4f8:	ebfffed8 	bl	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
     4fc:	e1a01004 	mov	r1, r4
     500:	e3a00011 	mov	r0, #17
     504:	e8bd4010 	pop	{r4, lr}
     508:	eafffee6 	b	a8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
     50c:	e3a00016 	mov	r0, #22
     510:	e3a01001 	mov	r1, #1
     514:	ebfffed1 	bl	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
     518:	e1a01004 	mov	r1, r4
     51c:	e3a00016 	mov	r0, #22
     520:	e8bd4010 	pop	{r4, lr}
     524:	eafffedf 	b	a8 <_ZN12RaspberryLib12SetGPIOvalueEjb.part.4>
     528:	e8bd4010 	pop	{r4, lr}
     52c:	e12fff1e 	bx	lr

00000530 <_ZN12RaspberryLib10SetButtonsEb>:
     530:	e3500000 	cmp	r0, #0
     534:	13a0200c 	movne	r2, #12
     538:	059f3010 	ldreq	r3, [pc, #16]	; 550 <_ZN12RaspberryLib10SetButtonsEb+0x20>
     53c:	159f300c 	ldrne	r3, [pc, #12]	; 550 <_ZN12RaspberryLib10SetButtonsEb+0x20>
     540:	05932058 	ldreq	r2, [r3, #88]	; 0x58
     544:	15832058 	strne	r2, [r3, #88]	; 0x58
     548:	05830058 	streq	r0, [r3, #88]	; 0x58
     54c:	e12fff1e 	bx	lr
     550:	20200000 	eorcs	r0, r0, r0

00000554 <_ZN12RaspberryLib10TestBuzzerEv>:
     554:	e92d4008 	push	{r3, lr}
     558:	e3a00004 	mov	r0, #4
     55c:	e3a01001 	mov	r1, #1
     560:	ebfffebe 	bl	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
     564:	e3a00010 	mov	r0, #16
     568:	e1a02000 	mov	r2, r0
     56c:	e59f1040 	ldr	r1, [pc, #64]	; 5b4 <_ZN12RaspberryLib10TestBuzzerEv+0x60>
     570:	e1a03001 	mov	r3, r1
     574:	e581001c 	str	r0, [r1, #28]
     578:	e59f1038 	ldr	r1, [pc, #56]	; 5b8 <_ZN12RaspberryLib10TestBuzzerEv+0x64>
     57c:	e2511001 	subs	r1, r1, #1
     580:	e583201c 	str	r2, [r3, #28]
     584:	e59f0028 	ldr	r0, [pc, #40]	; 5b4 <_ZN12RaspberryLib10TestBuzzerEv+0x60>
     588:	e583201c 	str	r2, [r3, #28]
     58c:	e3a0c010 	mov	ip, #16
     590:	e583201c 	str	r2, [r3, #28]
     594:	e583201c 	str	r2, [r3, #28]
     598:	e5832028 	str	r2, [r3, #40]	; 0x28
     59c:	e5832028 	str	r2, [r3, #40]	; 0x28
     5a0:	e5832028 	str	r2, [r3, #40]	; 0x28
     5a4:	1afffff4 	bne	57c <_ZN12RaspberryLib10TestBuzzerEv+0x28>
     5a8:	e580c028 	str	ip, [r0, #40]	; 0x28
     5ac:	e8bd4008 	pop	{r3, lr}
     5b0:	e12fff1e 	bx	lr
     5b4:	20200000 	eorcs	r0, r0, r0
     5b8:	000186a1 	andeq	r8, r1, r1, lsr #13

000005bc <_ZN12RaspberryLib14setTimerKernelEj>:
     5bc:	e3a0c001 	mov	ip, #1
     5c0:	e59f101c 	ldr	r1, [pc, #28]	; 5e4 <_ZN12RaspberryLib14setTimerKernelEj+0x28>
     5c4:	e0602280 	rsb	r2, r0, r0, lsl #5
     5c8:	e5913004 	ldr	r3, [r1, #4]
     5cc:	e0800102 	add	r0, r0, r2, lsl #2
     5d0:	e59f2010 	ldr	r2, [pc, #16]	; 5e8 <_ZN12RaspberryLib14setTimerKernelEj+0x2c>
     5d4:	e0833180 	add	r3, r3, r0, lsl #3
     5d8:	e5813010 	str	r3, [r1, #16]
     5dc:	e5c2c004 	strb	ip, [r2, #4]
     5e0:	e12fff1e 	bx	lr
     5e4:	20003000 	andcs	r3, r0, r0
     5e8:	00000000 	andeq	r0, r0, r0

000005ec <_ZN12RaspberryLib8setTimerEj>:
     5ec:	e3a0c001 	mov	ip, #1
     5f0:	e59f101c 	ldr	r1, [pc, #28]	; 614 <_ZN12RaspberryLib8setTimerEj+0x28>
     5f4:	e0602280 	rsb	r2, r0, r0, lsl #5
     5f8:	e5913004 	ldr	r3, [r1, #4]
     5fc:	e0800102 	add	r0, r0, r2, lsl #2
     600:	e59f2010 	ldr	r2, [pc, #16]	; 618 <_ZN12RaspberryLib8setTimerEj+0x2c>
     604:	e0833180 	add	r3, r3, r0, lsl #3
     608:	e5813018 	str	r3, [r1, #24]
     60c:	e5c2c005 	strb	ip, [r2, #5]
     610:	e12fff1e 	bx	lr
     614:	20003000 	andcs	r3, r0, r0
     618:	00000000 	andeq	r0, r0, r0

0000061c <_ZN12RaspberryLib12CheckCounterEv>:
     61c:	e59f3004 	ldr	r3, [pc, #4]	; 628 <_ZN12RaspberryLib12CheckCounterEv+0xc>
     620:	e5930004 	ldr	r0, [r3, #4]
     624:	e12fff1e 	bx	lr
     628:	20003000 	andcs	r3, r0, r0

0000062c <_ZN12RaspberryLib9WaitQuickEj>:
     62c:	e59f3018 	ldr	r3, [pc, #24]	; 64c <_ZN12RaspberryLib9WaitQuickEj+0x20>
     630:	e1a02003 	mov	r2, r3
     634:	e5933004 	ldr	r3, [r3, #4]
     638:	e0800003 	add	r0, r0, r3
     63c:	e5923004 	ldr	r3, [r2, #4]
     640:	e1500003 	cmp	r0, r3
     644:	8afffffc 	bhi	63c <_ZN12RaspberryLib9WaitQuickEj+0x10>
     648:	e12fff1e 	bx	lr
     64c:	20003000 	andcs	r3, r0, r0

00000650 <_ZN12RaspberryLib4WaitEj>:
     650:	e59f3020 	ldr	r3, [pc, #32]	; 678 <_ZN12RaspberryLib4WaitEj+0x28>
     654:	e0601280 	rsb	r1, r0, r0, lsl #5
     658:	e1a02003 	mov	r2, r3
     65c:	e5933004 	ldr	r3, [r3, #4]
     660:	e0800101 	add	r0, r0, r1, lsl #2
     664:	e0830180 	add	r0, r3, r0, lsl #3
     668:	e5923004 	ldr	r3, [r2, #4]
     66c:	e1500003 	cmp	r0, r3
     670:	8afffffc 	bhi	668 <_ZN12RaspberryLib4WaitEj+0x18>
     674:	e12fff1e 	bx	lr
     678:	20003000 	andcs	r3, r0, r0

0000067c <_ZN12RaspberryLib5BlinkEjj>:
     67c:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
     680:	e2505000 	subs	r5, r0, #0
     684:	0a000016 	beq	6e4 <_ZN12RaspberryLib5BlinkEjj+0x68>
     688:	e0616281 	rsb	r6, r1, r1, lsl #5
     68c:	e0811106 	add	r1, r1, r6, lsl #2
     690:	e59f4054 	ldr	r4, [pc, #84]	; 6ec <_ZN12RaspberryLib5BlinkEjj+0x70>
     694:	e1a06181 	lsl	r6, r1, #3
     698:	e3a00010 	mov	r0, #16
     69c:	e3a01001 	mov	r1, #1
     6a0:	ebfffffe 	bl	388 <_ZN12RaspberryLib7SetGPIOEjj>
     6a4:	e5942004 	ldr	r2, [r4, #4]
     6a8:	e0862002 	add	r2, r6, r2
     6ac:	e5943004 	ldr	r3, [r4, #4]
     6b0:	e1520003 	cmp	r2, r3
     6b4:	e59f7030 	ldr	r7, [pc, #48]	; 6ec <_ZN12RaspberryLib5BlinkEjj+0x70>
     6b8:	8afffffb 	bhi	6ac <_ZN12RaspberryLib5BlinkEjj+0x30>
     6bc:	e3a00010 	mov	r0, #16
     6c0:	e3a01000 	mov	r1, #0
     6c4:	ebfffffe 	bl	388 <_ZN12RaspberryLib7SetGPIOEjj>
     6c8:	e5972004 	ldr	r2, [r7, #4]
     6cc:	e0862002 	add	r2, r6, r2
     6d0:	e5943004 	ldr	r3, [r4, #4]
     6d4:	e1520003 	cmp	r2, r3
     6d8:	8afffffc 	bhi	6d0 <_ZN12RaspberryLib5BlinkEjj+0x54>
     6dc:	e2555001 	subs	r5, r5, #1
     6e0:	1affffec 	bne	698 <_ZN12RaspberryLib5BlinkEjj+0x1c>
     6e4:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
     6e8:	e12fff1e 	bx	lr
     6ec:	20003000 	andcs	r3, r0, r0

000006f0 <_ZN12RaspberryLib7PiFaultEPKc>:
     6f0:	e3a00004 	mov	r0, #4
     6f4:	e3a010c8 	mov	r1, #200	; 0xc8
     6f8:	eafffffe 	b	67c <_ZN12RaspberryLib5BlinkEjj>

000006fc <_ZN12RaspberryLib12MailboxWriteEcj>:
     6fc:	e59f203c 	ldr	r2, [pc, #60]	; 740 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
     700:	e5923898 	ldr	r3, [r2, #2200]	; 0x898
     704:	e3530000 	cmp	r3, #0
     708:	e59f3030 	ldr	r3, [pc, #48]	; 740 <_ZN12RaspberryLib12MailboxWriteEcj+0x44>
     70c:	bafffffb 	blt	700 <_ZN12RaspberryLib12MailboxWriteEcj+0x4>
     710:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     714:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     718:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     71c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     720:	e3c1100f 	bic	r1, r1, #15
     724:	e1800001 	orr	r0, r0, r1
     728:	e58308a0 	str	r0, [r3, #2208]	; 0x8a0
     72c:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     730:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     734:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     738:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     73c:	e12fff1e 	bx	lr
     740:	2000b000 	andcs	fp, r0, r0

00000744 <_ZN12RaspberryLib12MailboxCheckEc>:
     744:	e92d4008 	push	{r3, lr}
     748:	e3a03000 	mov	r3, #0
     74c:	e59f106c 	ldr	r1, [pc, #108]	; 7c0 <_ZN12RaspberryLib12MailboxCheckEc+0x7c>
     750:	e59fe06c 	ldr	lr, [pc, #108]	; 7c4 <_ZN12RaspberryLib12MailboxCheckEc+0x80>
     754:	e5912898 	ldr	r2, [r1, #2200]	; 0x898
     758:	e3120101 	tst	r2, #1073741824	; 0x40000000
     75c:	1a00000e 	bne	79c <_ZN12RaspberryLib12MailboxCheckEc+0x58>
     760:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     764:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     768:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     76c:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     770:	e5912880 	ldr	r2, [r1, #2176]	; 0x880
     774:	ee07cf15 	mcr	15, 0, ip, cr7, cr5, {0}
     778:	ee07cfd5 	mcr	15, 0, ip, cr7, cr5, {6}
     77c:	ee07cf9a 	mcr	15, 0, ip, cr7, cr10, {4}
     780:	ee07cf95 	mcr	15, 0, ip, cr7, cr5, {4}
     784:	e202c00f 	and	ip, r2, #15
     788:	e15c0000 	cmp	ip, r0
     78c:	1afffff0 	bne	754 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
     790:	e3c2000f 	bic	r0, r2, #15
     794:	e8bd4008 	pop	{r3, lr}
     798:	e12fff1e 	bx	lr
     79c:	e153000e 	cmp	r3, lr
     7a0:	e2833001 	add	r3, r3, #1
     7a4:	9affffea 	bls	754 <_ZN12RaspberryLib12MailboxCheckEc+0x10>
     7a8:	e3a00004 	mov	r0, #4
     7ac:	e3a010c8 	mov	r1, #200	; 0xc8
     7b0:	ebfffffe 	bl	67c <_ZN12RaspberryLib5BlinkEjj>
     7b4:	e3e00000 	mvn	r0, #0
     7b8:	e8bd4008 	pop	{r3, lr}
     7bc:	e12fff1e 	bx	lr
     7c0:	2000b000 	andcs	fp, r0, r0
     7c4:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>

000007c8 <_ZN12RaspberryLib18AcquireFrameBufferEjj>:
     7c8:	e3a03a02 	mov	r3, #8192	; 0x2000
     7cc:	e3a02000 	mov	r2, #0
     7d0:	e3a0c018 	mov	ip, #24
     7d4:	e92d4010 	push	{r4, lr}
     7d8:	e8830003 	stm	r3, {r0, r1}
     7dc:	e5830008 	str	r0, [r3, #8]
     7e0:	e583100c 	str	r1, [r3, #12]
     7e4:	e583c014 	str	ip, [r3, #20]
     7e8:	e5832010 	str	r2, [r3, #16]
     7ec:	e5832018 	str	r2, [r3, #24]
     7f0:	e583201c 	str	r2, [r3, #28]
     7f4:	e5832020 	str	r2, [r3, #32]
     7f8:	e5832024 	str	r2, [r3, #36]	; 0x24
     7fc:	e5c32028 	strb	r2, [r3, #40]	; 0x28
     800:	e3a00001 	mov	r0, #1
     804:	e59f107c 	ldr	r1, [pc, #124]	; 888 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xc0>
     808:	ebfffffe 	bl	6fc <_ZN12RaspberryLib12MailboxWriteEcj>
     80c:	e59f4078 	ldr	r4, [pc, #120]	; 88c <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xc4>
     810:	e3a00001 	mov	r0, #1
     814:	ebfffffe 	bl	744 <_ZN12RaspberryLib12MailboxCheckEc>
     818:	e3500000 	cmp	r0, #0
     81c:	0a000011 	beq	868 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa0>
     820:	e2544001 	subs	r4, r4, #1
     824:	2afffff9 	bcs	810 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x48>
     828:	e3a02a02 	mov	r2, #8192	; 0x2000
     82c:	e5923020 	ldr	r3, [r2, #32]
     830:	e3530000 	cmp	r3, #0
     834:	0a00000d 	beq	870 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa8>
     838:	e5921010 	ldr	r1, [r2, #16]
     83c:	e3510000 	cmp	r1, #0
     840:	0a00000a 	beq	870 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0xa8>
     844:	e3a01001 	mov	r1, #1
     848:	e5c21028 	strb	r1, [r2, #40]	; 0x28
     84c:	e3a02a02 	mov	r2, #8192	; 0x2000
     850:	e3530101 	cmp	r3, #1073741824	; 0x40000000
     854:	82833103 	addhi	r3, r3, #-1073741824	; 0xc0000000
     858:	e3a00a02 	mov	r0, #8192	; 0x2000
     85c:	e5823020 	str	r3, [r2, #32]
     860:	e8bd4010 	pop	{r4, lr}
     864:	e12fff1e 	bx	lr
     868:	e3540000 	cmp	r4, #0
     86c:	1affffed 	bne	828 <_ZN12RaspberryLib18AcquireFrameBufferEjj+0x60>
     870:	e3a00004 	mov	r0, #4
     874:	e3a010c8 	mov	r1, #200	; 0xc8
     878:	ebfffffe 	bl	67c <_ZN12RaspberryLib5BlinkEjj>
     87c:	e3a00a02 	mov	r0, #8192	; 0x2000
     880:	e8bd4010 	pop	{r4, lr}
     884:	e12fff1e 	bx	lr
     888:	40002000 	andmi	r2, r0, r0
     88c:	00002710 	andeq	r2, r0, r0, lsl r7

00000890 <_ZN11gpu2dCanvas15initFrameBufferEv>:
     890:	e5901004 	ldr	r1, [r0, #4]
     894:	e92d4010 	push	{r4, lr}
     898:	e2811101 	add	r1, r1, #1073741824	; 0x40000000
     89c:	e1a04000 	mov	r4, r0
     8a0:	e3a00001 	mov	r0, #1
     8a4:	ebfffffe 	bl	6fc <_ZN12RaspberryLib12MailboxWriteEcj>
     8a8:	e3a00001 	mov	r0, #1
     8ac:	ebfffffe 	bl	744 <_ZN12RaspberryLib12MailboxCheckEc>
     8b0:	e3500000 	cmp	r0, #0
     8b4:	1afffffb 	bne	8a8 <_ZN11gpu2dCanvas15initFrameBufferEv+0x18>
     8b8:	e5943004 	ldr	r3, [r4, #4]
     8bc:	e5930020 	ldr	r0, [r3, #32]
     8c0:	e3500000 	cmp	r0, #0
     8c4:	0a000009 	beq	8f0 <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
     8c8:	e5932010 	ldr	r2, [r3, #16]
     8cc:	e3520000 	cmp	r2, #0
     8d0:	01a00002 	moveq	r0, r2
     8d4:	0a000005 	beq	8f0 <_ZN11gpu2dCanvas15initFrameBufferEv+0x60>
     8d8:	e3a02001 	mov	r2, #1
     8dc:	e3500101 	cmp	r0, #1073741824	; 0x40000000
     8e0:	82800103 	addhi	r0, r0, #-1073741824	; 0xc0000000
     8e4:	e5830020 	str	r0, [r3, #32]
     8e8:	e1a00002 	mov	r0, r2
     8ec:	e5c42000 	strb	r2, [r4]
     8f0:	e8bd4010 	pop	{r4, lr}
     8f4:	e12fff1e 	bx	lr

000008f8 <_ZN11gpu2dCanvasC1Ebjj>:
     8f8:	e3a0c000 	mov	ip, #0
     8fc:	e92d4038 	push	{r3, r4, r5, lr}
     900:	e1a04000 	mov	r4, r0
     904:	e3a00a02 	mov	r0, #8192	; 0x2000
     908:	e151000c 	cmp	r1, ip
     90c:	e5840004 	str	r0, [r4, #4]
     910:	e5c41002 	strb	r1, [r4, #2]
     914:	e5c4c000 	strb	ip, [r4]
     918:	e880000c 	stm	r0, {r2, r3}
     91c:	11a03083 	lslne	r3, r3, #1
     920:	e5802008 	str	r2, [r0, #8]
     924:	e580300c 	str	r3, [r0, #12]
     928:	e3a05000 	mov	r5, #0
     92c:	e3a03a02 	mov	r3, #8192	; 0x2000
     930:	e3a02018 	mov	r2, #24
     934:	e5835018 	str	r5, [r3, #24]
     938:	e5832014 	str	r2, [r3, #20]
     93c:	e583501c 	str	r5, [r3, #28]
     940:	e5835010 	str	r5, [r3, #16]
     944:	e5835020 	str	r5, [r3, #32]
     948:	e5835024 	str	r5, [r3, #36]	; 0x24
     94c:	e1a00004 	mov	r0, r4
     950:	ebfffffe 	bl	890 <_ZN11gpu2dCanvas15initFrameBufferEv>
     954:	e1500005 	cmp	r0, r5
     958:	15c45001 	strbne	r5, [r4, #1]
     95c:	e1a00004 	mov	r0, r4
     960:	e8bd4038 	pop	{r3, r4, r5, lr}
     964:	e12fff1e 	bx	lr

00000968 <_ZN11gpu2dCanvasC1Ev>:
     968:	e92d4010 	push	{r4, lr}
     96c:	e1a04000 	mov	r4, r0
     970:	e24dd008 	sub	sp, sp, #8
     974:	e3a01001 	mov	r1, #1
     978:	e1a0000d 	mov	r0, sp
     97c:	e3a02b01 	mov	r2, #1024	; 0x400
     980:	e3a03c03 	mov	r3, #768	; 0x300
     984:	ebfffffe 	bl	8f8 <_ZN11gpu2dCanvasC1Ebjj>
     988:	e1a00004 	mov	r0, r4
     98c:	e28dd008 	add	sp, sp, #8
     990:	e8bd4010 	pop	{r4, lr}
     994:	e12fff1e 	bx	lr

00000998 <_ZN11gpu2dCanvas4DrawEv.part.7>:
     998:	e5d03001 	ldrb	r3, [r0, #1]
     99c:	e3530000 	cmp	r3, #0
     9a0:	13a02000 	movne	r2, #0
     9a4:	e92d4010 	push	{r4, lr}
     9a8:	e1a04000 	mov	r4, r0
     9ac:	e5903004 	ldr	r3, [r0, #4]
     9b0:	05932004 	ldreq	r2, [r3, #4]
     9b4:	e583201c 	str	r2, [r3, #28]
     9b8:	ebfffffe 	bl	890 <_ZN11gpu2dCanvas15initFrameBufferEv>
     9bc:	e5d43001 	ldrb	r3, [r4, #1]
     9c0:	e2233001 	eor	r3, r3, #1
     9c4:	e5c43001 	strb	r3, [r4, #1]
     9c8:	e8bd4010 	pop	{r4, lr}
     9cc:	e12fff1e 	bx	lr

000009d0 <_ZN11gpu2dCanvas4DrawEv>:
     9d0:	e5d02000 	ldrb	r2, [r0]
     9d4:	e3520000 	cmp	r2, #0
     9d8:	012fff1e 	bxeq	lr
     9dc:	e5d03002 	ldrb	r3, [r0, #2]
     9e0:	e3530000 	cmp	r3, #0
     9e4:	012fff1e 	bxeq	lr
     9e8:	eaffffea 	b	998 <_ZN11gpu2dCanvas4DrawEv.part.7>

000009ec <_ZN11gpu2dCanvas5ClearEj>:
     9ec:	e5d03000 	ldrb	r3, [r0]
     9f0:	e3530000 	cmp	r3, #0
     9f4:	012fff1e 	bxeq	lr
     9f8:	e5d03001 	ldrb	r3, [r0, #1]
     9fc:	e3530000 	cmp	r3, #0
     a00:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     a04:	0a000027 	beq	aa8 <_ZN11gpu2dCanvas5ClearEj+0xbc>
     a08:	e3a08000 	mov	r8, #0
     a0c:	e590c004 	ldr	ip, [r0, #4]
     a10:	e59c3004 	ldr	r3, [ip, #4]
     a14:	e3530000 	cmp	r3, #0
     a18:	e20158ff 	and	r5, r1, #16711680	; 0xff0000
     a1c:	e2016cff 	and	r6, r1, #65280	; 0xff00
     a20:	e1a05825 	lsr	r5, r5, #16
     a24:	e1a06426 	lsr	r6, r6, #8
     a28:	e20140ff 	and	r4, r1, #255	; 0xff
     a2c:	13a07000 	movne	r7, #0
     a30:	0a00001a 	beq	aa0 <_ZN11gpu2dCanvas5ClearEj+0xb4>
     a34:	e59c3000 	ldr	r3, [ip]
     a38:	e3530000 	cmp	r3, #0
     a3c:	0a000013 	beq	a90 <_ZN11gpu2dCanvas5ClearEj+0xa4>
     a40:	e3a02000 	mov	r2, #0
     a44:	e087e008 	add	lr, r7, r8
     a48:	e59c1010 	ldr	r1, [ip, #16]
     a4c:	e0823082 	add	r3, r2, r2, lsl #1
     a50:	e0233e91 	mla	r3, r1, lr, r3
     a54:	e59c1020 	ldr	r1, [ip, #32]
     a58:	e7c34001 	strb	r4, [r3, r1]
     a5c:	e5901004 	ldr	r1, [r0, #4]
     a60:	e5911020 	ldr	r1, [r1, #32]
     a64:	e0831001 	add	r1, r3, r1
     a68:	e5c16001 	strb	r6, [r1, #1]
     a6c:	e5901004 	ldr	r1, [r0, #4]
     a70:	e5911020 	ldr	r1, [r1, #32]
     a74:	e0833001 	add	r3, r3, r1
     a78:	e5c35002 	strb	r5, [r3, #2]
     a7c:	e590c004 	ldr	ip, [r0, #4]
     a80:	e59c3000 	ldr	r3, [ip]
     a84:	e2822001 	add	r2, r2, #1
     a88:	e1530002 	cmp	r3, r2
     a8c:	8affffed 	bhi	a48 <_ZN11gpu2dCanvas5ClearEj+0x5c>
     a90:	e59c3004 	ldr	r3, [ip, #4]
     a94:	e2877001 	add	r7, r7, #1
     a98:	e1530007 	cmp	r3, r7
     a9c:	8affffe4 	bhi	a34 <_ZN11gpu2dCanvas5ClearEj+0x48>
     aa0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
     aa4:	e12fff1e 	bx	lr
     aa8:	e5d03002 	ldrb	r3, [r0, #2]
     aac:	e3530000 	cmp	r3, #0
     ab0:	0affffd4 	beq	a08 <_ZN11gpu2dCanvas5ClearEj+0x1c>
     ab4:	e590c004 	ldr	ip, [r0, #4]
     ab8:	e59c8004 	ldr	r8, [ip, #4]
     abc:	e1a03008 	mov	r3, r8
     ac0:	eaffffd3 	b	a14 <_ZN11gpu2dCanvas5ClearEj+0x28>

00000ac4 <_ZN11gpu2dCanvas9ClearFastEv>:
     ac4:	e92d4008 	push	{r3, lr}
     ac8:	e5d03000 	ldrb	r3, [r0]
     acc:	e3530000 	cmp	r3, #0
     ad0:	15900004 	ldrne	r0, [r0, #4]
     ad4:	13a01000 	movne	r1, #0
     ad8:	1bfffffe 	blne	0 <armClearScreen>
     adc:	e8bd4008 	pop	{r3, lr}
     ae0:	e12fff1e 	bx	lr

00000ae4 <_ZN11gpu2dCanvas4syncEv>:
     ae4:	e5d03002 	ldrb	r3, [r0, #2]
     ae8:	e3530000 	cmp	r3, #0
     aec:	012fff1e 	bxeq	lr
     af0:	e5902004 	ldr	r2, [r0, #4]
     af4:	e5923004 	ldr	r3, [r2, #4]
     af8:	e3530000 	cmp	r3, #0
     afc:	e92d4010 	push	{r4, lr}
     b00:	e5d04001 	ldrb	r4, [r0, #1]
     b04:	13a0e000 	movne	lr, #0
     b08:	0a000017 	beq	b6c <_ZN11gpu2dCanvas4syncEv+0x88>
     b0c:	e5921000 	ldr	r1, [r2]
     b10:	e3510000 	cmp	r1, #0
     b14:	0a000011 	beq	b60 <_ZN11gpu2dCanvas4syncEv+0x7c>
     b18:	e3a01000 	mov	r1, #0
     b1c:	e592c020 	ldr	ip, [r2, #32]
     b20:	e5922010 	ldr	r2, [r2, #16]
     b24:	e083300e 	add	r3, r3, lr
     b28:	e023c392 	mla	r3, r2, r3, ip
     b2c:	e022c29e 	mla	r2, lr, r2, ip
     b30:	e3540000 	cmp	r4, #0
     b34:	e081c081 	add	ip, r1, r1, lsl #1
     b38:	17d2200c 	ldrbne	r2, [r2, ip]
     b3c:	07d3300c 	ldrbeq	r3, [r3, ip]
     b40:	17c3200c 	strbne	r2, [r3, ip]
     b44:	07c2300c 	strbeq	r3, [r2, ip]
     b48:	e5902004 	ldr	r2, [r0, #4]
     b4c:	e5923000 	ldr	r3, [r2]
     b50:	e2811001 	add	r1, r1, #1
     b54:	e1530001 	cmp	r3, r1
     b58:	e5923004 	ldr	r3, [r2, #4]
     b5c:	8affffee 	bhi	b1c <_ZN11gpu2dCanvas4syncEv+0x38>
     b60:	e28ee001 	add	lr, lr, #1
     b64:	e15e0003 	cmp	lr, r3
     b68:	3affffe7 	bcc	b0c <_ZN11gpu2dCanvas4syncEv+0x28>
     b6c:	e8bd4010 	pop	{r4, lr}
     b70:	e12fff1e 	bx	lr

00000b74 <_ZN11gpu2dCanvas8setPixelEjjj>:
     b74:	e5d0c001 	ldrb	ip, [r0, #1]
     b78:	e35c0000 	cmp	ip, #0
     b7c:	e92d4010 	push	{r4, lr}
     b80:	1a000004 	bne	b98 <_ZN11gpu2dCanvas8setPixelEjjj+0x24>
     b84:	e5d0c002 	ldrb	ip, [r0, #2]
     b88:	e35c0000 	cmp	ip, #0
     b8c:	15904004 	ldrne	r4, [r0, #4]
     b90:	1594e004 	ldrne	lr, [r4, #4]
     b94:	1a000001 	bne	ba0 <_ZN11gpu2dCanvas8setPixelEjjj+0x2c>
     b98:	e3a0e000 	mov	lr, #0
     b9c:	e5904004 	ldr	r4, [r0, #4]
     ba0:	e594c010 	ldr	ip, [r4, #16]
     ba4:	e08e2002 	add	r2, lr, r2
     ba8:	e0811081 	add	r1, r1, r1, lsl #1
     bac:	e021129c 	mla	r1, ip, r2, r1
     bb0:	e5942020 	ldr	r2, [r4, #32]
     bb4:	e1a0c823 	lsr	ip, r3, #16
     bb8:	e7c1c002 	strb	ip, [r1, r2]
     bbc:	e5902004 	ldr	r2, [r0, #4]
     bc0:	e5922020 	ldr	r2, [r2, #32]
     bc4:	e1a0c423 	lsr	ip, r3, #8
     bc8:	e0812002 	add	r2, r1, r2
     bcc:	e5c2c001 	strb	ip, [r2, #1]
     bd0:	e5902004 	ldr	r2, [r0, #4]
     bd4:	e5922020 	ldr	r2, [r2, #32]
     bd8:	e0811002 	add	r1, r1, r2
     bdc:	e5c13002 	strb	r3, [r1, #2]
     be0:	e8bd4010 	pop	{r4, lr}
     be4:	e12fff1e 	bx	lr

00000be8 <_ZN11gpu2dCanvas8DrawLineEiiiij>:
     be8:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
     bec:	e1a08003 	mov	r8, r3
     bf0:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
     bf4:	e0623003 	rsb	r3, r2, r3
     bf8:	e1a0b083 	lsl	fp, r3, #1
     bfc:	e0617008 	rsb	r7, r1, r8
     c00:	e1580001 	cmp	r8, r1
     c04:	e1a06002 	mov	r6, r2
     c08:	e1a04001 	mov	r4, r1
     c0c:	e067500b 	rsb	r5, r7, fp
     c10:	e59da02c 	ldr	sl, [sp, #44]	; 0x2c
     c14:	da000018 	ble	c7c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x94>
     c18:	e0677003 	rsb	r7, r7, r3
     c1c:	e1a09000 	mov	r9, r0
     c20:	e1a07087 	lsl	r7, r7, #1
     c24:	ea000009 	b	c50 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x68>
     c28:	e2866001 	add	r6, r6, #1
     c2c:	e1a01004 	mov	r1, r4
     c30:	e1a02006 	mov	r2, r6
     c34:	e1a00009 	mov	r0, r9
     c38:	e1a0300a 	mov	r3, sl
     c3c:	e2844001 	add	r4, r4, #1
     c40:	ebfffffe 	bl	b74 <_ZN11gpu2dCanvas8setPixelEjjj>
     c44:	e1540008 	cmp	r4, r8
     c48:	e0855007 	add	r5, r5, r7
     c4c:	0a00000a 	beq	c7c <_ZN11gpu2dCanvas8DrawLineEiiiij+0x94>
     c50:	e3550000 	cmp	r5, #0
     c54:	cafffff3 	bgt	c28 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x40>
     c58:	e1a01004 	mov	r1, r4
     c5c:	e1a00009 	mov	r0, r9
     c60:	e1a02006 	mov	r2, r6
     c64:	e1a0300a 	mov	r3, sl
     c68:	e2844001 	add	r4, r4, #1
     c6c:	ebfffffe 	bl	b74 <_ZN11gpu2dCanvas8setPixelEjjj>
     c70:	e1540008 	cmp	r4, r8
     c74:	e085500b 	add	r5, r5, fp
     c78:	1afffff4 	bne	c50 <_ZN11gpu2dCanvas8DrawLineEiiiij+0x68>
     c7c:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
     c80:	e12fff1e 	bx	lr

00000c84 <_ZN11gpu2dCanvas13DrawCharacterEiicj>:
     c84:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     c88:	e24dd01c 	sub	sp, sp, #28
     c8c:	e28d9008 	add	r9, sp, #8
     c90:	e1a0b001 	mov	fp, r1
     c94:	e1a07000 	mov	r7, r0
     c98:	e1a01009 	mov	r1, r9
     c9c:	e59d8040 	ldr	r8, [sp, #64]	; 0x40
     ca0:	e59fc078 	ldr	ip, [pc, #120]	; d20 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x9c>
     ca4:	e28de018 	add	lr, sp, #24
     ca8:	e0693203 	rsb	r3, r9, r3, lsl #4
     cac:	e0830001 	add	r0, r3, r1
     cb0:	e7dc0000 	ldrb	r0, [ip, r0]
     cb4:	e4c10001 	strb	r0, [r1], #1
     cb8:	e151000e 	cmp	r1, lr
     cbc:	1afffffa 	bne	cac <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x28>
     cc0:	e1a05002 	mov	r5, r2
     cc4:	e2823010 	add	r3, r2, #16
     cc8:	e58d3004 	str	r3, [sp, #4]
     ccc:	e1a0a00b 	mov	sl, fp
     cd0:	e3a04000 	mov	r4, #0
     cd4:	e4d96001 	ldrb	r6, [r9], #1
     cd8:	e1a03456 	asr	r3, r6, r4
     cdc:	e2133001 	ands	r3, r3, #1
     ce0:	e1a0100a 	mov	r1, sl
     ce4:	11a03008 	movne	r3, r8
     ce8:	e1a00007 	mov	r0, r7
     cec:	e1a02005 	mov	r2, r5
     cf0:	e2844001 	add	r4, r4, #1
     cf4:	ebfffffe 	bl	b74 <_ZN11gpu2dCanvas8setPixelEjjj>
     cf8:	e3540008 	cmp	r4, #8
     cfc:	e28aa001 	add	sl, sl, #1
     d00:	1afffff4 	bne	cd8 <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x54>
     d04:	e59d3004 	ldr	r3, [sp, #4]
     d08:	e2855001 	add	r5, r5, #1
     d0c:	e1550003 	cmp	r5, r3
     d10:	1affffed 	bne	ccc <_ZN11gpu2dCanvas13DrawCharacterEiicj+0x48>
     d14:	e28dd01c 	add	sp, sp, #28
     d18:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     d1c:	e12fff1e 	bx	lr
     d20:	00000000 	andeq	r0, r0, r0

00000d24 <_ZN11gpu2dCanvas14ClearCharacterEii>:
     d24:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     d28:	e1a05002 	mov	r5, r2
     d2c:	e1a07000 	mov	r7, r0
     d30:	e1a06001 	mov	r6, r1
     d34:	e3a04000 	mov	r4, #0
     d38:	e2828010 	add	r8, r2, #16
     d3c:	e1a01804 	lsl	r1, r4, #16
     d40:	e1a01841 	asr	r1, r1, #16
     d44:	e3510008 	cmp	r1, #8
     d48:	0a00000a 	beq	d78 <_ZN11gpu2dCanvas14ClearCharacterEii+0x54>
     d4c:	e0811006 	add	r1, r1, r6
     d50:	e3a03000 	mov	r3, #0
     d54:	e1a00007 	mov	r0, r7
     d58:	e1a02005 	mov	r2, r5
     d5c:	ebfffffe 	bl	b74 <_ZN11gpu2dCanvas8setPixelEjjj>
     d60:	e2843001 	add	r3, r4, #1
     d64:	e1a03803 	lsl	r3, r3, #16
     d68:	e1a01843 	asr	r1, r3, #16
     d6c:	e3510008 	cmp	r1, #8
     d70:	e1a04823 	lsr	r4, r3, #16
     d74:	1afffff4 	bne	d4c <_ZN11gpu2dCanvas14ClearCharacterEii+0x28>
     d78:	e2855001 	add	r5, r5, #1
     d7c:	e1550008 	cmp	r5, r8
     d80:	e3a04008 	mov	r4, #8
     d84:	1affffec 	bne	d3c <_ZN11gpu2dCanvas14ClearCharacterEii+0x18>
     d88:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
     d8c:	e12fff1e 	bx	lr

00000d90 <_ZN7Console5clearEv>:
     d90:	e3a01000 	mov	r1, #0
     d94:	e3a02001 	mov	r2, #1
     d98:	e590300c 	ldr	r3, [r0, #12]
     d9c:	e5d3c000 	ldrb	ip, [r3]
     da0:	e15c0001 	cmp	ip, r1
     da4:	e8800006 	stm	r0, {r1, r2}
     da8:	012fff1e 	bxeq	lr
     dac:	e92d4010 	push	{r4, lr}
     db0:	e1a04000 	mov	r4, r0
     db4:	e5930004 	ldr	r0, [r3, #4]
     db8:	ebfffffe 	bl	0 <armClearScreen>
     dbc:	e594000c 	ldr	r0, [r4, #12]
     dc0:	e5d03000 	ldrb	r3, [r0]
     dc4:	e3530000 	cmp	r3, #0
     dc8:	0a000002 	beq	dd8 <_ZN7Console5clearEv+0x48>
     dcc:	e5d03002 	ldrb	r3, [r0, #2]
     dd0:	e3530000 	cmp	r3, #0
     dd4:	1a000001 	bne	de0 <_ZN7Console5clearEv+0x50>
     dd8:	e8bd4010 	pop	{r4, lr}
     ddc:	e12fff1e 	bx	lr
     de0:	e8bd4010 	pop	{r4, lr}
     de4:	eafffeeb 	b	998 <_ZN11gpu2dCanvas4DrawEv.part.7>

00000de8 <_ZN7Console7newLineEv>:
     de8:	e3a01000 	mov	r1, #0
     dec:	e5903004 	ldr	r3, [r0, #4]
     df0:	e2833001 	add	r3, r3, #1
     df4:	e353002d 	cmp	r3, #45	; 0x2d
     df8:	e880000a 	stm	r0, {r1, r3}
     dfc:	912fff1e 	bxls	lr
     e00:	eafffffe 	b	d90 <_ZN7Console5clearEv>

00000e04 <_ZN7Console9printCharEcj>:
     e04:	e92d40f0 	push	{r4, r5, r6, r7, lr}
     e08:	e3510009 	cmp	r1, #9
     e0c:	e24dd00c 	sub	sp, sp, #12
     e10:	e1a04000 	mov	r4, r0
     e14:	0a000040 	beq	f1c <_ZN7Console9printCharEcj+0x118>
     e18:	e351000a 	cmp	r1, #10
     e1c:	e1a07002 	mov	r7, r2
     e20:	e1a06001 	mov	r6, r1
     e24:	0a000033 	beq	ef8 <_ZN7Console9printCharEcj+0xf4>
     e28:	e3510008 	cmp	r1, #8
     e2c:	0a00001d 	beq	ea8 <_ZN7Console9printCharEcj+0xa4>
     e30:	e5903000 	ldr	r3, [r0]
     e34:	e3530078 	cmp	r3, #120	; 0x78
     e38:	9a00003d 	bls	f34 <_ZN7Console9printCharEcj+0x130>
     e3c:	e3a03000 	mov	r3, #0
     e40:	e590c004 	ldr	ip, [r0, #4]
     e44:	e28cc001 	add	ip, ip, #1
     e48:	e35c002d 	cmp	ip, #45	; 0x2d
     e4c:	e8801008 	stm	r0, {r3, ip}
     e50:	8a000036 	bhi	f30 <_ZN7Console9printCharEcj+0x12c>
     e54:	e594e008 	ldr	lr, [r4, #8]
     e58:	e5945000 	ldr	r5, [r4]
     e5c:	e594000c 	ldr	r0, [r4, #12]
     e60:	e1a03006 	mov	r3, r6
     e64:	e58d7000 	str	r7, [sp]
     e68:	e08e220c 	add	r2, lr, ip, lsl #4
     e6c:	e08e1185 	add	r1, lr, r5, lsl #3
     e70:	ebfffffe 	bl	c84 <_ZN11gpu2dCanvas13DrawCharacterEiicj>
     e74:	e594000c 	ldr	r0, [r4, #12]
     e78:	e5d03000 	ldrb	r3, [r0]
     e7c:	e3530000 	cmp	r3, #0
     e80:	0a000002 	beq	e90 <_ZN7Console9printCharEcj+0x8c>
     e84:	e5d03002 	ldrb	r3, [r0, #2]
     e88:	e3530000 	cmp	r3, #0
     e8c:	1a00002f 	bne	f50 <_ZN7Console9printCharEcj+0x14c>
     e90:	e5943000 	ldr	r3, [r4]
     e94:	e2833001 	add	r3, r3, #1
     e98:	e5843000 	str	r3, [r4]
     e9c:	e28dd00c 	add	sp, sp, #12
     ea0:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
     ea4:	e12fff1e 	bx	lr
     ea8:	e5901000 	ldr	r1, [r0]
     eac:	e3510000 	cmp	r1, #0
     eb0:	0afffff9 	beq	e9c <_ZN7Console9printCharEcj+0x98>
     eb4:	e990000c 	ldmib	r0, {r2, r3}
     eb8:	e2411001 	sub	r1, r1, #1
     ebc:	e5801000 	str	r1, [r0]
     ec0:	e0832202 	add	r2, r3, r2, lsl #4
     ec4:	e0831181 	add	r1, r3, r1, lsl #3
     ec8:	e590000c 	ldr	r0, [r0, #12]
     ecc:	ebfffffe 	bl	d24 <_ZN11gpu2dCanvas14ClearCharacterEii>
     ed0:	e594000c 	ldr	r0, [r4, #12]
     ed4:	e5d03000 	ldrb	r3, [r0]
     ed8:	e3530000 	cmp	r3, #0
     edc:	0affffee 	beq	e9c <_ZN7Console9printCharEcj+0x98>
     ee0:	e5d03002 	ldrb	r3, [r0, #2]
     ee4:	e3530000 	cmp	r3, #0
     ee8:	0affffeb 	beq	e9c <_ZN7Console9printCharEcj+0x98>
     eec:	e28dd00c 	add	sp, sp, #12
     ef0:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
     ef4:	eafffea7 	b	998 <_ZN11gpu2dCanvas4DrawEv.part.7>
     ef8:	e3a02000 	mov	r2, #0
     efc:	e5903004 	ldr	r3, [r0, #4]
     f00:	e2833001 	add	r3, r3, #1
     f04:	e353002d 	cmp	r3, #45	; 0x2d
     f08:	e880000c 	stm	r0, {r2, r3}
     f0c:	8a00000b 	bhi	f40 <_ZN7Console9printCharEcj+0x13c>
     f10:	e28dd00c 	add	sp, sp, #12
     f14:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
     f18:	e12fff1e 	bx	lr
     f1c:	e5903000 	ldr	r3, [r0]
     f20:	e2833004 	add	r3, r3, #4
     f24:	e3530077 	cmp	r3, #119	; 0x77
     f28:	95843000 	strls	r3, [r4]
     f2c:	eaffffda 	b	e9c <_ZN7Console9printCharEcj+0x98>
     f30:	ebfffffe 	bl	d90 <_ZN7Console5clearEv>
     f34:	e594c004 	ldr	ip, [r4, #4]
     f38:	e35c002d 	cmp	ip, #45	; 0x2d
     f3c:	9affffc4 	bls	e54 <_ZN7Console9printCharEcj+0x50>
     f40:	e1a00004 	mov	r0, r4
     f44:	e28dd00c 	add	sp, sp, #12
     f48:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
     f4c:	eafffffe 	b	d90 <_ZN7Console5clearEv>
     f50:	ebfffe90 	bl	998 <_ZN11gpu2dCanvas4DrawEv.part.7>
     f54:	eaffffcd 	b	e90 <_ZN7Console9printCharEcj+0x8c>

00000f58 <_ZN7Console6kprintEPKc>:
     f58:	e92d4038 	push	{r3, r4, r5, lr}
     f5c:	e1a04001 	mov	r4, r1
     f60:	e5d11000 	ldrb	r1, [r1]
     f64:	e3510000 	cmp	r1, #0
     f68:	e1a05000 	mov	r5, r0
     f6c:	0a000005 	beq	f88 <_ZN7Console6kprintEPKc+0x30>
     f70:	e1a00005 	mov	r0, r5
     f74:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
     f78:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
     f7c:	e5f41001 	ldrb	r1, [r4, #1]!
     f80:	e3510000 	cmp	r1, #0
     f84:	1afffff9 	bne	f70 <_ZN7Console6kprintEPKc+0x18>
     f88:	e8bd4038 	pop	{r3, r4, r5, lr}
     f8c:	e12fff1e 	bx	lr

00000f90 <_ZN7Console6kprintEPc>:
     f90:	e92d4038 	push	{r3, r4, r5, lr}
     f94:	e1a04001 	mov	r4, r1
     f98:	e5d11000 	ldrb	r1, [r1]
     f9c:	e3510000 	cmp	r1, #0
     fa0:	e1a05000 	mov	r5, r0
     fa4:	0a000005 	beq	fc0 <_ZN7Console6kprintEPc+0x30>
     fa8:	e1a00005 	mov	r0, r5
     fac:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
     fb0:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
     fb4:	e5f41001 	ldrb	r1, [r4, #1]!
     fb8:	e3510000 	cmp	r1, #0
     fbc:	1afffff9 	bne	fa8 <_ZN7Console6kprintEPc+0x18>
     fc0:	e8bd4038 	pop	{r3, r4, r5, lr}
     fc4:	e12fff1e 	bx	lr

00000fc8 <_ZN7Console6kprintEPcj>:
     fc8:	e92d4070 	push	{r4, r5, r6, lr}
     fcc:	e1a04001 	mov	r4, r1
     fd0:	e5d11000 	ldrb	r1, [r1]
     fd4:	e3510000 	cmp	r1, #0
     fd8:	e1a06000 	mov	r6, r0
     fdc:	e1a05002 	mov	r5, r2
     fe0:	0a000005 	beq	ffc <_ZN7Console6kprintEPcj+0x34>
     fe4:	e1a00006 	mov	r0, r6
     fe8:	e1a02005 	mov	r2, r5
     fec:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
     ff0:	e5f41001 	ldrb	r1, [r4, #1]!
     ff4:	e3510000 	cmp	r1, #0
     ff8:	1afffff9 	bne	fe4 <_ZN7Console6kprintEPcj+0x1c>
     ffc:	e8bd4070 	pop	{r4, r5, r6, lr}
    1000:	e12fff1e 	bx	lr

00001004 <_ZN7Console6kprintEPKcj>:
    1004:	e92d4070 	push	{r4, r5, r6, lr}
    1008:	e1a04001 	mov	r4, r1
    100c:	e5d11000 	ldrb	r1, [r1]
    1010:	e3510000 	cmp	r1, #0
    1014:	e1a06000 	mov	r6, r0
    1018:	e1a05002 	mov	r5, r2
    101c:	0a000005 	beq	1038 <_ZN7Console6kprintEPKcj+0x34>
    1020:	e1a00006 	mov	r0, r6
    1024:	e1a02005 	mov	r2, r5
    1028:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    102c:	e5f41001 	ldrb	r1, [r4, #1]!
    1030:	e3510000 	cmp	r1, #0
    1034:	1afffff9 	bne	1020 <_ZN7Console6kprintEPKcj+0x1c>
    1038:	e8bd4070 	pop	{r4, r5, r6, lr}
    103c:	e12fff1e 	bx	lr

00001040 <_ZN7Console6kprintEjj>:
    1040:	e92d4070 	push	{r4, r5, r6, lr}
    1044:	e59f403c 	ldr	r4, [pc, #60]	; 1088 <_ZN7Console6kprintEjj+0x48>
    1048:	e0843491 	umull	r3, r4, r1, r4
    104c:	e1a041a4 	lsr	r4, r4, #3
    1050:	e1a03004 	mov	r3, r4
    1054:	e0844104 	add	r4, r4, r4, lsl #2
    1058:	e3530000 	cmp	r3, #0
    105c:	e0414084 	sub	r4, r1, r4, lsl #1
    1060:	e1a06000 	mov	r6, r0
    1064:	e1a05002 	mov	r5, r2
    1068:	11a01003 	movne	r1, r3
    106c:	1bfffffe 	blne	1040 <_ZN7Console6kprintEjj>
    1070:	e2841030 	add	r1, r4, #48	; 0x30
    1074:	e1a00006 	mov	r0, r6
    1078:	e1a02005 	mov	r2, r5
    107c:	e20110ff 	and	r1, r1, #255	; 0xff
    1080:	e8bd4070 	pop	{r4, r5, r6, lr}
    1084:	eafffffe 	b	e04 <_ZN7Console9printCharEcj>
    1088:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

0000108c <_ZN7Console6kprintEj>:
    108c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1090:	eafffffe 	b	1040 <_ZN7Console6kprintEjj>

00001094 <_ZN7Console12kprintHexa32Ejj>:
    1094:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    1098:	e1a07000 	mov	r7, r0
    109c:	e1a06001 	mov	r6, r1
    10a0:	e1a05002 	mov	r5, r2
    10a4:	e3a0401c 	mov	r4, #28
    10a8:	e1a03436 	lsr	r3, r6, r4
    10ac:	e203300f 	and	r3, r3, #15
    10b0:	e3530009 	cmp	r3, #9
    10b4:	83a01007 	movhi	r1, #7
    10b8:	93a01000 	movls	r1, #0
    10bc:	e0831001 	add	r1, r3, r1
    10c0:	e2444004 	sub	r4, r4, #4
    10c4:	e2811030 	add	r1, r1, #48	; 0x30
    10c8:	e1a00007 	mov	r0, r7
    10cc:	e1a02005 	mov	r2, r5
    10d0:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    10d4:	e3740004 	cmn	r4, #4
    10d8:	1afffff2 	bne	10a8 <_ZN7Console12kprintHexa32Ejj+0x14>
    10dc:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    10e0:	e12fff1e 	bx	lr

000010e4 <irq_handler>:
    10e4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    10e8:	e3a0da02 	mov	sp, #8192	; 0x2000
    10ec:	e24ee004 	sub	lr, lr, #4
    10f0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    10f4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    10f8:	e3a03a01 	mov	r3, #4096	; 0x1000
    10fc:	e1a00003 	mov	r0, r3
    1100:	e9201ffe 	stmdb	r0!, {r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    1104:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    1108:	e3a03efd 	mov	r3, #4048	; 0xfd0
    110c:	e1a01003 	mov	r1, r3
    1110:	e5810000 	str	r0, [r1]
    1114:	e59f1d0c 	ldr	r1, [pc, #3340]	; 1e28 <swi_endTask+0x68>
    1118:	e581e000 	str	lr, [r1]
    111c:	e59f6390 	ldr	r6, [pc, #912]	; 14b4 <irq_handler+0x3d0>
    1120:	e5965040 	ldr	r5, [r6, #64]	; 0x40
    1124:	e59f338c 	ldr	r3, [pc, #908]	; 14b8 <irq_handler+0x3d4>
    1128:	e3550000 	cmp	r5, #0
    112c:	e5932000 	ldr	r2, [r3]
    1130:	0a000016 	beq	1190 <irq_handler+0xac>
    1134:	e5963040 	ldr	r3, [r6, #64]	; 0x40
    1138:	e3550004 	cmp	r5, #4
    113c:	e5863040 	str	r3, [r6, #64]	; 0x40
    1140:	0a0000b3 	beq	1414 <irq_handler+0x330>
    1144:	e3550008 	cmp	r5, #8
    1148:	0a0000c5 	beq	1464 <irq_handler+0x380>
    114c:	e59f4368 	ldr	r4, [pc, #872]	; 14bc <irq_handler+0x3d8>
    1150:	ebfffffe 	bl	554 <_ZN12RaspberryLib10TestBuzzerEv>
    1154:	e3a00000 	mov	r0, #0
    1158:	e3a01001 	mov	r1, #1
    115c:	e59f3350 	ldr	r3, [pc, #848]	; 14b4 <irq_handler+0x3d0>
    1160:	e59f2350 	ldr	r2, [pc, #848]	; 14b8 <irq_handler+0x3d4>
    1164:	e593c058 	ldr	ip, [r3, #88]	; 0x58
    1168:	e5830058 	str	r0, [r3, #88]	; 0x58
    116c:	e5923004 	ldr	r3, [r2, #4]
    1170:	e283393d 	add	r3, r3, #999424	; 0xf4000
    1174:	e2833d09 	add	r3, r3, #576	; 0x240
    1178:	e5c41005 	strb	r1, [r4, #5]
    117c:	e5823018 	str	r3, [r2, #24]
    1180:	e59fdca4 	ldr	sp, [pc, #3236]	; 1e2c <swi_endTask+0x6c>
    1184:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    1188:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    118c:	e12fff1e 	bx	lr
    1190:	e59f4324 	ldr	r4, [pc, #804]	; 14bc <irq_handler+0x3d8>
    1194:	e5d41005 	ldrb	r1, [r4, #5]
    1198:	e3510000 	cmp	r1, #0
    119c:	1a00006d 	bne	1358 <irq_handler+0x274>
    11a0:	e5d43004 	ldrb	r3, [r4, #4]
    11a4:	e3530000 	cmp	r3, #0
    11a8:	e59f330c 	ldr	r3, [pc, #780]	; 14bc <irq_handler+0x3d8>
    11ac:	0afffff3 	beq	1180 <irq_handler+0x9c>
    11b0:	e3120002 	tst	r2, #2
    11b4:	0afffff1 	beq	1180 <irq_handler+0x9c>
    11b8:	e3a0c002 	mov	ip, #2
    11bc:	e3a02000 	mov	r2, #0
    11c0:	e593100c 	ldr	r1, [r3, #12]
    11c4:	e59f02ec 	ldr	r0, [pc, #748]	; 14b8 <irq_handler+0x3d4>
    11c8:	e5911018 	ldr	r1, [r1, #24]
    11cc:	e580c000 	str	ip, [r0]
    11d0:	e5915044 	ldr	r5, [r1, #68]	; 0x44
    11d4:	e3550301 	cmp	r5, #67108864	; 0x4000000
    11d8:	e5835010 	str	r5, [r3, #16]
    11dc:	e5c32004 	strb	r2, [r3, #4]
    11e0:	8a000079 	bhi	13cc <irq_handler+0x2e8>
    11e4:	e5d32014 	ldrb	r2, [r3, #20]
    11e8:	e3520000 	cmp	r2, #0
    11ec:	01a03005 	moveq	r3, r5
    11f0:	0a000024 	beq	1288 <irq_handler+0x1a4>
    11f4:	e3a0100a 	mov	r1, #10
    11f8:	e5937008 	ldr	r7, [r3, #8]
    11fc:	e59f62bc 	ldr	r6, [pc, #700]	; 14c0 <irq_handler+0x3dc>
    1200:	e1a00007 	mov	r0, r7
    1204:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1208:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    120c:	e5f61001 	ldrb	r1, [r6, #1]!
    1210:	e3510000 	cmp	r1, #0
    1214:	1afffff9 	bne	1200 <irq_handler+0x11c>
    1218:	e594300c 	ldr	r3, [r4, #12]
    121c:	e5933018 	ldr	r3, [r3, #24]
    1220:	e5940008 	ldr	r0, [r4, #8]
    1224:	e1d316b0 	ldrh	r1, [r3, #96]	; 0x60
    1228:	e59f2294 	ldr	r2, [pc, #660]	; 14c4 <irq_handler+0x3e0>
    122c:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    1230:	e3a0100a 	mov	r1, #10
    1234:	e59f628c 	ldr	r6, [pc, #652]	; 14c8 <irq_handler+0x3e4>
    1238:	e5947008 	ldr	r7, [r4, #8]
    123c:	e1a00007 	mov	r0, r7
    1240:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1244:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1248:	e5f61001 	ldrb	r1, [r6, #1]!
    124c:	e3510000 	cmp	r1, #0
    1250:	1afffff9 	bne	123c <irq_handler+0x158>
    1254:	e59f2270 	ldr	r2, [pc, #624]	; 14cc <irq_handler+0x3e8>
    1258:	e5940008 	ldr	r0, [r4, #8]
    125c:	e5941010 	ldr	r1, [r4, #16]
    1260:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    1264:	e59f324c 	ldr	r3, [pc, #588]	; 14b8 <irq_handler+0x3d4>
    1268:	e1a02003 	mov	r2, r3
    126c:	e5933004 	ldr	r3, [r3, #4]
    1270:	e283397a 	add	r3, r3, #1998848	; 0x1e8000
    1274:	e2833d12 	add	r3, r3, #1152	; 0x480
    1278:	e5921004 	ldr	r1, [r2, #4]
    127c:	e1530001 	cmp	r3, r1
    1280:	2afffffc 	bcs	1278 <irq_handler+0x194>
    1284:	e5943010 	ldr	r3, [r4, #16]
    1288:	e3a02a01 	mov	r2, #4096	; 0x1000
    128c:	e59f0228 	ldr	r0, [pc, #552]	; 14bc <irq_handler+0x3d8>
    1290:	e59f1238 	ldr	r1, [pc, #568]	; 14d0 <irq_handler+0x3ec>
    1294:	e243300c 	sub	r3, r3, #12
    1298:	ea000000 	b	12a0 <irq_handler+0x1bc>
    129c:	e5903010 	ldr	r3, [r0, #16]
    12a0:	e243c004 	sub	ip, r3, #4
    12a4:	e584c010 	str	ip, [r4, #16]
    12a8:	e532c004 	ldr	ip, [r2, #-4]!
    12ac:	e1520001 	cmp	r2, r1
    12b0:	e503c004 	str	ip, [r3, #-4]
    12b4:	e59f6200 	ldr	r6, [pc, #512]	; 14bc <irq_handler+0x3d8>
    12b8:	1afffff7 	bne	129c <irq_handler+0x1b8>
    12bc:	e59f1b6c 	ldr	r1, [pc, #2924]	; 1e30 <swi_endTask+0x70>
    12c0:	e5911000 	ldr	r1, [r1]
    12c4:	e2411004 	sub	r1, r1, #4
    12c8:	e14f0000 	mrs	r0, SPSR
    12cc:	e5810000 	str	r0, [r1]
    12d0:	e5865010 	str	r5, [r6, #16]
    12d4:	e59f1b54 	ldr	r1, [pc, #2900]	; 1e30 <swi_endTask+0x70>
    12d8:	e5911000 	ldr	r1, [r1]
    12dc:	e2411004 	sub	r1, r1, #4
    12e0:	e59f2b40 	ldr	r2, [pc, #2880]	; 1e28 <swi_endTask+0x68>
    12e4:	e5922000 	ldr	r2, [r2]
    12e8:	e5812000 	str	r2, [r1]
    12ec:	e3a000df 	mov	r0, #223	; 0xdf
    12f0:	e129f000 	msr	CPSR_fc, r0
    12f4:	e2411004 	sub	r1, r1, #4
    12f8:	e581e000 	str	lr, [r1]
    12fc:	e2411004 	sub	r1, r1, #4
    1300:	e581d000 	str	sp, [r1]
    1304:	e3a000d3 	mov	r0, #211	; 0xd3
    1308:	e129f000 	msr	CPSR_fc, r0
    130c:	e59f1b20 	ldr	r1, [pc, #2848]	; 1e34 <swi_endTask+0x74>
    1310:	e591d000 	ldr	sp, [r1]
    1314:	e5960008 	ldr	r0, [r6, #8]
    1318:	ebfffffe 	bl	d90 <_ZN7Console5clearEv>
    131c:	e3a02002 	mov	r2, #2
    1320:	e596300c 	ldr	r3, [r6, #12]
    1324:	e5933018 	ldr	r3, [r3, #24]
    1328:	e5c32064 	strb	r2, [r3, #100]	; 0x64
    132c:	e3a05001 	mov	r5, #1
    1330:	ef000000 	svc	0x00000000
    1334:	e1a00000 	nop			; (mov r0, r0)
    1338:	e1a00000 	nop			; (mov r0, r0)
    133c:	e1a00000 	nop			; (mov r0, r0)
    1340:	e1a00000 	nop			; (mov r0, r0)
    1344:	e1a00000 	nop			; (mov r0, r0)
    1348:	e59fdadc 	ldr	sp, [pc, #2780]	; 1e2c <swi_endTask+0x6c>
    134c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    1350:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    1354:	e12fff1e 	bx	lr
    1358:	e3120008 	tst	r2, #8
    135c:	0affff8f 	beq	11a0 <irq_handler+0xbc>
    1360:	e3a02008 	mov	r2, #8
    1364:	e5c45005 	strb	r5, [r4, #5]
    1368:	e1a01005 	mov	r1, r5
    136c:	e5832000 	str	r2, [r3]
    1370:	e3a00001 	mov	r0, #1
    1374:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    1378:	e1a01005 	mov	r1, r5
    137c:	e3a00002 	mov	r0, #2
    1380:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    1384:	e1a01005 	mov	r1, r5
    1388:	e3a00003 	mov	r0, #3
    138c:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    1390:	e1a01005 	mov	r1, r5
    1394:	e3a00004 	mov	r0, #4
    1398:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    139c:	e1a01005 	mov	r1, r5
    13a0:	e3a00005 	mov	r0, #5
    13a4:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    13a8:	e1a01005 	mov	r1, r5
    13ac:	e3a00006 	mov	r0, #6
    13b0:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    13b4:	e3a0300c 	mov	r3, #12
    13b8:	e5863058 	str	r3, [r6, #88]	; 0x58
    13bc:	e59fda68 	ldr	sp, [pc, #2664]	; 1e2c <swi_endTask+0x6c>
    13c0:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
    13c4:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    13c8:	e12fff1e 	bx	lr
    13cc:	e3a0100a 	mov	r1, #10
    13d0:	e5936008 	ldr	r6, [r3, #8]
    13d4:	e59f50f8 	ldr	r5, [pc, #248]	; 14d4 <irq_handler+0x3f0>
    13d8:	e1a00006 	mov	r0, r6
    13dc:	e3a020ff 	mov	r2, #255	; 0xff
    13e0:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    13e4:	e5f51001 	ldrb	r1, [r5, #1]!
    13e8:	e3510000 	cmp	r1, #0
    13ec:	1afffff9 	bne	13d8 <irq_handler+0x2f4>
    13f0:	e5940008 	ldr	r0, [r4, #8]
    13f4:	e5941010 	ldr	r1, [r4, #16]
    13f8:	e59f20c4 	ldr	r2, [pc, #196]	; 14c4 <irq_handler+0x3e0>
    13fc:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    1400:	e5940008 	ldr	r0, [r4, #8]
    1404:	e59f10cc 	ldr	r1, [pc, #204]	; 14d8 <irq_handler+0x3f4>
    1408:	e3a02cff 	mov	r2, #65280	; 0xff00
    140c:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    1410:	eafffffe 	b	1410 <irq_handler+0x32c>
    1414:	e3a00001 	mov	r0, #1
    1418:	e1a01000 	mov	r1, r0
    141c:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    1420:	e3a00003 	mov	r0, #3
    1424:	e3a01001 	mov	r1, #1
    1428:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    142c:	e3a01001 	mov	r1, #1
    1430:	e3a00005 	mov	r0, #5
    1434:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    1438:	e3a0100a 	mov	r1, #10
    143c:	e59f4078 	ldr	r4, [pc, #120]	; 14bc <irq_handler+0x3d8>
    1440:	e59f5094 	ldr	r5, [pc, #148]	; 14dc <irq_handler+0x3f8>
    1444:	e5946008 	ldr	r6, [r4, #8]
    1448:	e1a00006 	mov	r0, r6
    144c:	e59f2070 	ldr	r2, [pc, #112]	; 14c4 <irq_handler+0x3e0>
    1450:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1454:	e5f51001 	ldrb	r1, [r5, #1]!
    1458:	e3510000 	cmp	r1, #0
    145c:	1afffff9 	bne	1448 <irq_handler+0x364>
    1460:	eaffff3a 	b	1150 <irq_handler+0x6c>
    1464:	e3a00002 	mov	r0, #2
    1468:	e3a01001 	mov	r1, #1
    146c:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    1470:	e3a00004 	mov	r0, #4
    1474:	e3a01001 	mov	r1, #1
    1478:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    147c:	e3a01001 	mov	r1, #1
    1480:	e3a00006 	mov	r0, #6
    1484:	ebfffffe 	bl	450 <_ZN12RaspberryLib6SetLEDEjb>
    1488:	e3a0100a 	mov	r1, #10
    148c:	e59f4028 	ldr	r4, [pc, #40]	; 14bc <irq_handler+0x3d8>
    1490:	e59f5048 	ldr	r5, [pc, #72]	; 14e0 <irq_handler+0x3fc>
    1494:	e5946008 	ldr	r6, [r4, #8]
    1498:	e1a00006 	mov	r0, r6
    149c:	e59f2020 	ldr	r2, [pc, #32]	; 14c4 <irq_handler+0x3e0>
    14a0:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    14a4:	e5f51001 	ldrb	r1, [r5, #1]!
    14a8:	e3510000 	cmp	r1, #0
    14ac:	1afffff9 	bne	1498 <irq_handler+0x3b4>
    14b0:	eaffff26 	b	1150 <irq_handler+0x6c>
    14b4:	20200000 	eorcs	r0, r0, r0
    14b8:	20003000 	andcs	r3, r0, r0
    14bc:	00000000 	andeq	r0, r0, r0
    14c0:	00000054 	andeq	r0, r0, r4, asr r0
    14c4:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    14c8:	00000060 	andeq	r0, r0, r0, rrx
    14cc:	00ff00ff 	ldrshteq	r0, [pc], #15
    14d0:	00000fcc 	andeq	r0, r0, ip, asr #31
    14d4:	00000028 	andeq	r0, r0, r8, lsr #32
    14d8:	00000010 	andeq	r0, r0, r0, lsl r0
    14dc:	00000000 	andeq	r0, r0, r0
    14e0:	00000014 	andeq	r0, r0, r4, lsl r0

000014e4 <_ZN7Console12kprintHexa32Ej>:
    14e4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    14e8:	eafffffe 	b	1094 <_ZN7Console12kprintHexa32Ejj>

000014ec <_ZN7Console4koutEPKc>:
    14ec:	e92d4070 	push	{r4, r5, r6, lr}
    14f0:	e1a05001 	mov	r5, r1
    14f4:	e1a04000 	mov	r4, r0
    14f8:	e3a0105b 	mov	r1, #91	; 0x5b
    14fc:	e59f604c 	ldr	r6, [pc, #76]	; 1550 <_ZN7Console4koutEPKc+0x64>
    1500:	e1a00004 	mov	r0, r4
    1504:	e59f2048 	ldr	r2, [pc, #72]	; 1554 <_ZN7Console4koutEPKc+0x68>
    1508:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    150c:	e5f61001 	ldrb	r1, [r6, #1]!
    1510:	e3510000 	cmp	r1, #0
    1514:	1afffff9 	bne	1500 <_ZN7Console4koutEPKc+0x14>
    1518:	e5d51000 	ldrb	r1, [r5]
    151c:	e3510000 	cmp	r1, #0
    1520:	0a000005 	beq	153c <_ZN7Console4koutEPKc+0x50>
    1524:	e1a00004 	mov	r0, r4
    1528:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    152c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1530:	e5f51001 	ldrb	r1, [r5, #1]!
    1534:	e3510000 	cmp	r1, #0
    1538:	1afffff9 	bne	1524 <_ZN7Console4koutEPKc+0x38>
    153c:	e1a00004 	mov	r0, r4
    1540:	e3a0100a 	mov	r1, #10
    1544:	e59f2008 	ldr	r2, [pc, #8]	; 1554 <_ZN7Console4koutEPKc+0x68>
    1548:	e8bd4070 	pop	{r4, r5, r6, lr}
    154c:	eafffffe 	b	e04 <_ZN7Console9printCharEcj>
    1550:	00000088 	andeq	r0, r0, r8, lsl #1
    1554:	00f0330f 	rscseq	r3, r0, pc, lsl #6

00001558 <basic_handler>:
    1558:	e92d4008 	push	{r3, lr}
    155c:	e59f3030 	ldr	r3, [pc, #48]	; 1594 <basic_handler+0x3c>
    1560:	e59f1030 	ldr	r1, [pc, #48]	; 1598 <basic_handler+0x40>
    1564:	e5930008 	ldr	r0, [r3, #8]
    1568:	ebfffffe 	bl	14ec <_ZN7Console4koutEPKc>
    156c:	e59f3028 	ldr	r3, [pc, #40]	; 159c <basic_handler+0x44>
    1570:	e1a01003 	mov	r1, r3
    1574:	e5932004 	ldr	r2, [r3, #4]
    1578:	e2822b61 	add	r2, r2, #99328	; 0x18400
    157c:	e2822e2a 	add	r2, r2, #672	; 0x2a0
    1580:	e5913004 	ldr	r3, [r1, #4]
    1584:	e1520003 	cmp	r2, r3
    1588:	8afffffc 	bhi	1580 <basic_handler+0x28>
    158c:	e8bd4008 	pop	{r3, lr}
    1590:	e12fff1e 	bx	lr
    1594:	00000000 	andeq	r0, r0, r0
    1598:	00000090 	muleq	r0, r0, r0
    159c:	20003000 	andcs	r3, r0, r0

000015a0 <_ZN7ConsoleC1EP11gpu2dCanvas>:
    15a0:	e3a03000 	mov	r3, #0
    15a4:	e3a0200a 	mov	r2, #10
    15a8:	e92d4010 	push	{r4, lr}
    15ac:	e1a04000 	mov	r4, r0
    15b0:	e580100c 	str	r1, [r0, #12]
    15b4:	e5802008 	str	r2, [r0, #8]
    15b8:	e5803000 	str	r3, [r0]
    15bc:	e5803004 	str	r3, [r0, #4]
    15c0:	ebfffffe 	bl	d90 <_ZN7Console5clearEv>
    15c4:	e1a00004 	mov	r0, r4
    15c8:	e8bd4010 	pop	{r4, lr}
    15cc:	e12fff1e 	bx	lr

000015d0 <_ZN9Scheduler11LoadContextEv>:
    15d0:	e92d4008 	push	{r3, lr}
    15d4:	e5903018 	ldr	r3, [r0, #24]
    15d8:	e5933044 	ldr	r3, [r3, #68]	; 0x44
    15dc:	e59f2038 	ldr	r2, [pc, #56]	; 161c <_ZN9Scheduler11LoadContextEv+0x4c>
    15e0:	e3530000 	cmp	r3, #0
    15e4:	e5823018 	str	r3, [r2, #24]
    15e8:	1a000009 	bne	1614 <_ZN9Scheduler11LoadContextEv+0x44>
    15ec:	e3a0100a 	mov	r1, #10
    15f0:	e590501c 	ldr	r5, [r0, #28]
    15f4:	e59f4024 	ldr	r4, [pc, #36]	; 1620 <_ZN9Scheduler11LoadContextEv+0x50>
    15f8:	e1a00005 	mov	r0, r5
    15fc:	e3a020ff 	mov	r2, #255	; 0xff
    1600:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1604:	e5f41001 	ldrb	r1, [r4, #1]!
    1608:	e3510000 	cmp	r1, #0
    160c:	1afffff9 	bne	15f8 <_ZN9Scheduler11LoadContextEv+0x28>
    1610:	eafffffe 	b	1610 <_ZN9Scheduler11LoadContextEv+0x40>
    1614:	ebfffffe 	bl	0 <armLoadContext>
    1618:	eafffffc 	b	1610 <_ZN9Scheduler11LoadContextEv+0x40>
    161c:	00000000 	andeq	r0, r0, r0
    1620:	000000a0 	andeq	r0, r0, r0, lsr #1

00001624 <_ZN9Scheduler8ScheduleEv>:
    1624:	e92d4080 	push	{r7, lr}
    1628:	e1a04000 	mov	r4, r0
    162c:	e8bd0003 	pop	{r0, r1}
    1630:	e59f53e8 	ldr	r5, [pc, #1000]	; 1a20 <_ZN9Scheduler8ScheduleEv+0x3fc>
    1634:	e5943020 	ldr	r3, [r4, #32]
    1638:	e5931000 	ldr	r1, [r3]
    163c:	e3510000 	cmp	r1, #0
    1640:	0a0000b0 	beq	1908 <_ZN9Scheduler8ScheduleEv+0x2e4>
    1644:	e5d50014 	ldrb	r0, [r5, #20]
    1648:	e5912048 	ldr	r2, [r1, #72]	; 0x48
    164c:	e3500000 	cmp	r0, #0
    1650:	e5832000 	str	r2, [r3]
    1654:	e5841018 	str	r1, [r4, #24]
    1658:	0a00005e 	beq	17d8 <_ZN9Scheduler8ScheduleEv+0x1b4>
    165c:	e3a0100a 	mov	r1, #10
    1660:	e594701c 	ldr	r7, [r4, #28]
    1664:	e59f63b8 	ldr	r6, [pc, #952]	; 1a24 <_ZN9Scheduler8ScheduleEv+0x400>
    1668:	e1a00007 	mov	r0, r7
    166c:	e59f23b4 	ldr	r2, [pc, #948]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x404>
    1670:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1674:	e5f61001 	ldrb	r1, [r6, #1]!
    1678:	e3510000 	cmp	r1, #0
    167c:	1afffff9 	bne	1668 <_ZN9Scheduler8ScheduleEv+0x44>
    1680:	e59f17b0 	ldr	r1, [pc, #1968]	; 1e38 <swi_endTask+0x78>
    1684:	e581d000 	str	sp, [r1]
    1688:	e3a02cff 	mov	r2, #65280	; 0xff00
    168c:	e595101c 	ldr	r1, [r5, #28]
    1690:	e594001c 	ldr	r0, [r4, #28]
    1694:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    1698:	e3a0100a 	mov	r1, #10
    169c:	e594701c 	ldr	r7, [r4, #28]
    16a0:	e59f6384 	ldr	r6, [pc, #900]	; 1a2c <_ZN9Scheduler8ScheduleEv+0x408>
    16a4:	e1a00007 	mov	r0, r7
    16a8:	e59f2378 	ldr	r2, [pc, #888]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x404>
    16ac:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    16b0:	e5f61001 	ldrb	r1, [r6, #1]!
    16b4:	e3510000 	cmp	r1, #0
    16b8:	1afffff9 	bne	16a4 <_ZN9Scheduler8ScheduleEv+0x80>
    16bc:	e5943018 	ldr	r3, [r4, #24]
    16c0:	e594001c 	ldr	r0, [r4, #28]
    16c4:	e1d316b0 	ldrh	r1, [r3, #96]	; 0x60
    16c8:	e3a02cff 	mov	r2, #65280	; 0xff00
    16cc:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    16d0:	e3a0100a 	mov	r1, #10
    16d4:	e59f6354 	ldr	r6, [pc, #852]	; 1a30 <_ZN9Scheduler8ScheduleEv+0x40c>
    16d8:	e594701c 	ldr	r7, [r4, #28]
    16dc:	e1a00007 	mov	r0, r7
    16e0:	e59f2340 	ldr	r2, [pc, #832]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x404>
    16e4:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    16e8:	e5f61001 	ldrb	r1, [r6, #1]!
    16ec:	e3510000 	cmp	r1, #0
    16f0:	1afffff9 	bne	16dc <_ZN9Scheduler8ScheduleEv+0xb8>
    16f4:	e5943018 	ldr	r3, [r4, #24]
    16f8:	e594001c 	ldr	r0, [r4, #28]
    16fc:	e5d31064 	ldrb	r1, [r3, #100]	; 0x64
    1700:	e3a02cff 	mov	r2, #65280	; 0xff00
    1704:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    1708:	e3a0100a 	mov	r1, #10
    170c:	e59f6320 	ldr	r6, [pc, #800]	; 1a34 <_ZN9Scheduler8ScheduleEv+0x410>
    1710:	e594701c 	ldr	r7, [r4, #28]
    1714:	e1a00007 	mov	r0, r7
    1718:	e59f2308 	ldr	r2, [pc, #776]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x404>
    171c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1720:	e5f61001 	ldrb	r1, [r6, #1]!
    1724:	e3510000 	cmp	r1, #0
    1728:	1afffff9 	bne	1714 <_ZN9Scheduler8ScheduleEv+0xf0>
    172c:	e2841018 	add	r1, r4, #24
    1730:	e594001c 	ldr	r0, [r4, #28]
    1734:	e3a02cff 	mov	r2, #65280	; 0xff00
    1738:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    173c:	e3a0100a 	mov	r1, #10
    1740:	e59f62f0 	ldr	r6, [pc, #752]	; 1a38 <_ZN9Scheduler8ScheduleEv+0x414>
    1744:	e594701c 	ldr	r7, [r4, #28]
    1748:	e1a00007 	mov	r0, r7
    174c:	e59f22d4 	ldr	r2, [pc, #724]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x404>
    1750:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1754:	e5f61001 	ldrb	r1, [r6, #1]!
    1758:	e3510000 	cmp	r1, #0
    175c:	1afffff9 	bne	1748 <_ZN9Scheduler8ScheduleEv+0x124>
    1760:	e5943018 	ldr	r3, [r4, #24]
    1764:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1768:	e594001c 	ldr	r0, [r4, #28]
    176c:	e1d316b0 	ldrh	r1, [r3, #96]	; 0x60
    1770:	e3a02cff 	mov	r2, #65280	; 0xff00
    1774:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    1778:	e3a0100a 	mov	r1, #10
    177c:	e59f62b0 	ldr	r6, [pc, #688]	; 1a34 <_ZN9Scheduler8ScheduleEv+0x410>
    1780:	e594701c 	ldr	r7, [r4, #28]
    1784:	e1a00007 	mov	r0, r7
    1788:	e59f2298 	ldr	r2, [pc, #664]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x404>
    178c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1790:	e5f61001 	ldrb	r1, [r6, #1]!
    1794:	e3510000 	cmp	r1, #0
    1798:	1afffff9 	bne	1784 <_ZN9Scheduler8ScheduleEv+0x160>
    179c:	e5941018 	ldr	r1, [r4, #24]
    17a0:	e3a02cff 	mov	r2, #65280	; 0xff00
    17a4:	e2811048 	add	r1, r1, #72	; 0x48
    17a8:	e594001c 	ldr	r0, [r4, #28]
    17ac:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    17b0:	e59f3284 	ldr	r3, [pc, #644]	; 1a3c <_ZN9Scheduler8ScheduleEv+0x418>
    17b4:	e1a01003 	mov	r1, r3
    17b8:	e5932004 	ldr	r2, [r3, #4]
    17bc:	e282297a 	add	r2, r2, #1998848	; 0x1e8000
    17c0:	e2822d12 	add	r2, r2, #1152	; 0x480
    17c4:	e5842010 	str	r2, [r4, #16]
    17c8:	e5913004 	ldr	r3, [r1, #4]
    17cc:	e1520003 	cmp	r2, r3
    17d0:	2afffffc 	bcs	17c8 <_ZN9Scheduler8ScheduleEv+0x1a4>
    17d4:	e5941018 	ldr	r1, [r4, #24]
    17d8:	e5d13064 	ldrb	r3, [r1, #100]	; 0x64
    17dc:	e3530004 	cmp	r3, #4
    17e0:	0a000035 	beq	18bc <_ZN9Scheduler8ScheduleEv+0x298>
    17e4:	e3a02000 	mov	r2, #0
    17e8:	e5943004 	ldr	r3, [r4, #4]
    17ec:	e2833001 	add	r3, r3, #1
    17f0:	e5843004 	str	r3, [r4, #4]
    17f4:	e5943020 	ldr	r3, [r4, #32]
    17f8:	e5812048 	str	r2, [r1, #72]	; 0x48
    17fc:	e5932000 	ldr	r2, [r3]
    1800:	e3520000 	cmp	r2, #0
    1804:	1a000001 	bne	1810 <_ZN9Scheduler8ScheduleEv+0x1ec>
    1808:	ea000077 	b	19ec <_ZN9Scheduler8ScheduleEv+0x3c8>
    180c:	e1a02003 	mov	r2, r3
    1810:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    1814:	e3530000 	cmp	r3, #0
    1818:	1afffffb 	bne	180c <_ZN9Scheduler8ScheduleEv+0x1e8>
    181c:	e5821048 	str	r1, [r2, #72]	; 0x48
    1820:	e59f160c 	ldr	r1, [pc, #1548]	; 1e34 <swi_endTask+0x74>
    1824:	e581d000 	str	sp, [r1]
    1828:	e594001c 	ldr	r0, [r4, #28]
    182c:	ebfffffe 	bl	d90 <_ZN7Console5clearEv>
    1830:	e5942018 	ldr	r2, [r4, #24]
    1834:	e5d23064 	ldrb	r3, [r2, #100]	; 0x64
    1838:	e3530000 	cmp	r3, #0
    183c:	1a00006c 	bne	19f4 <_ZN9Scheduler8ScheduleEv+0x3d0>
    1840:	e3a07001 	mov	r7, #1
    1844:	e5923050 	ldr	r3, [r2, #80]	; 0x50
    1848:	e5c27064 	strb	r7, [r2, #100]	; 0x64
    184c:	e5853018 	str	r3, [r5, #24]
    1850:	e3a00010 	mov	r0, #16
    1854:	e129f000 	msr	CPSR_fc, r0
    1858:	e59f15dc 	ldr	r1, [pc, #1500]	; 1e3c <swi_endTask+0x7c>
    185c:	e591d000 	ldr	sp, [r1]
    1860:	e59f61d4 	ldr	r6, [pc, #468]	; 1a3c <_ZN9Scheduler8ScheduleEv+0x418>
    1864:	e594300c 	ldr	r3, [r4, #12]
    1868:	e5961004 	ldr	r1, [r6, #4]
    186c:	e0630283 	rsb	r0, r3, r3, lsl #5
    1870:	e0833100 	add	r3, r3, r0, lsl #2
    1874:	e0813183 	add	r3, r1, r3, lsl #3
    1878:	e5c57004 	strb	r7, [r5, #4]
    187c:	e5863010 	str	r3, [r6, #16]
    1880:	e592c04c 	ldr	ip, [r2, #76]	; 0x4c
    1884:	e1a0e00f 	mov	lr, pc
    1888:	e12fff1c 	bx	ip
    188c:	e1a00000 	nop			; (mov r0, r0)
    1890:	e1a00000 	nop			; (mov r0, r0)
    1894:	e1a00000 	nop			; (mov r0, r0)
    1898:	e1a00000 	nop			; (mov r0, r0)
    189c:	e1a00000 	nop			; (mov r0, r0)
    18a0:	e5963004 	ldr	r3, [r6, #4]
    18a4:	e5c57004 	strb	r7, [r5, #4]
    18a8:	e5863010 	str	r3, [r6, #16]
    18ac:	e3a05002 	mov	r5, #2
    18b0:	ef000000 	svc	0x00000000
    18b4:	e3a05001 	mov	r5, #1
    18b8:	ef000000 	svc	0x00000000
    18bc:	e5953020 	ldr	r3, [r5, #32]
    18c0:	e5d52014 	ldrb	r2, [r5, #20]
    18c4:	e2833001 	add	r3, r3, #1
    18c8:	e3520000 	cmp	r2, #0
    18cc:	e5853020 	str	r3, [r5, #32]
    18d0:	0affff57 	beq	1634 <_ZN9Scheduler8ScheduleEv+0x10>
    18d4:	e3a0100a 	mov	r1, #10
    18d8:	e594701c 	ldr	r7, [r4, #28]
    18dc:	e59f615c 	ldr	r6, [pc, #348]	; 1a40 <_ZN9Scheduler8ScheduleEv+0x41c>
    18e0:	e1a00007 	mov	r0, r7
    18e4:	e3a020ff 	mov	r2, #255	; 0xff
    18e8:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    18ec:	e5f61001 	ldrb	r1, [r6, #1]!
    18f0:	e3510000 	cmp	r1, #0
    18f4:	1afffff9 	bne	18e0 <_ZN9Scheduler8ScheduleEv+0x2bc>
    18f8:	e5943020 	ldr	r3, [r4, #32]
    18fc:	e5931000 	ldr	r1, [r3]
    1900:	e3510000 	cmp	r1, #0
    1904:	1affff4e 	bne	1644 <_ZN9Scheduler8ScheduleEv+0x20>
    1908:	e59f312c 	ldr	r3, [pc, #300]	; 1a3c <_ZN9Scheduler8ScheduleEv+0x418>
    190c:	e5942008 	ldr	r2, [r4, #8]
    1910:	e5933004 	ldr	r3, [r3, #4]
    1914:	e0623003 	rsb	r3, r2, r3
    1918:	e5843008 	str	r3, [r4, #8]
    191c:	e594001c 	ldr	r0, [r4, #28]
    1920:	ebfffffe 	bl	d90 <_ZN7Console5clearEv>
    1924:	e3a02002 	mov	r2, #2
    1928:	e3a0100a 	mov	r1, #10
    192c:	e59f3110 	ldr	r3, [pc, #272]	; 1a44 <_ZN9Scheduler8ScheduleEv+0x420>
    1930:	e594601c 	ldr	r6, [r4, #28]
    1934:	e59f510c 	ldr	r5, [pc, #268]	; 1a48 <_ZN9Scheduler8ScheduleEv+0x424>
    1938:	e583221c 	str	r2, [r3, #540]	; 0x21c
    193c:	e1a00006 	mov	r0, r6
    1940:	e3a02cff 	mov	r2, #65280	; 0xff00
    1944:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1948:	e5f51001 	ldrb	r1, [r5, #1]!
    194c:	e3510000 	cmp	r1, #0
    1950:	1afffff9 	bne	193c <_ZN9Scheduler8ScheduleEv+0x318>
    1954:	e3a0100a 	mov	r1, #10
    1958:	e594601c 	ldr	r6, [r4, #28]
    195c:	e59f50e8 	ldr	r5, [pc, #232]	; 1a4c <_ZN9Scheduler8ScheduleEv+0x428>
    1960:	e1a00006 	mov	r0, r6
    1964:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1968:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    196c:	e5f51001 	ldrb	r1, [r5, #1]!
    1970:	e3510000 	cmp	r1, #0
    1974:	1afffff9 	bne	1960 <_ZN9Scheduler8ScheduleEv+0x33c>
    1978:	e5941004 	ldr	r1, [r4, #4]
    197c:	e594001c 	ldr	r0, [r4, #28]
    1980:	e59f20a0 	ldr	r2, [pc, #160]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x404>
    1984:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    1988:	e3a0100a 	mov	r1, #10
    198c:	e59f50bc 	ldr	r5, [pc, #188]	; 1a50 <_ZN9Scheduler8ScheduleEv+0x42c>
    1990:	e594601c 	ldr	r6, [r4, #28]
    1994:	e1a00006 	mov	r0, r6
    1998:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    199c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    19a0:	e5f51001 	ldrb	r1, [r5, #1]!
    19a4:	e3510000 	cmp	r1, #0
    19a8:	1afffff9 	bne	1994 <_ZN9Scheduler8ScheduleEv+0x370>
    19ac:	e5941008 	ldr	r1, [r4, #8]
    19b0:	e594001c 	ldr	r0, [r4, #28]
    19b4:	e59f206c 	ldr	r2, [pc, #108]	; 1a28 <_ZN9Scheduler8ScheduleEv+0x404>
    19b8:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    19bc:	e3a01020 	mov	r1, #32
    19c0:	e59f508c 	ldr	r5, [pc, #140]	; 1a54 <_ZN9Scheduler8ScheduleEv+0x430>
    19c4:	e594401c 	ldr	r4, [r4, #28]
    19c8:	e1a00004 	mov	r0, r4
    19cc:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    19d0:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    19d4:	e5f51001 	ldrb	r1, [r5, #1]!
    19d8:	e3510000 	cmp	r1, #0
    19dc:	1afffff9 	bne	19c8 <_ZN9Scheduler8ScheduleEv+0x3a4>
    19e0:	e1a00000 	nop			; (mov r0, r0)
    19e4:	e1a00000 	nop			; (mov r0, r0)
    19e8:	eafffffc 	b	19e0 <_ZN9Scheduler8ScheduleEv+0x3bc>
    19ec:	e5831000 	str	r1, [r3]
    19f0:	eaffff8a 	b	1820 <_ZN9Scheduler8ScheduleEv+0x1fc>
    19f4:	e3a0c001 	mov	ip, #1
    19f8:	e594300c 	ldr	r3, [r4, #12]
    19fc:	e59f1038 	ldr	r1, [pc, #56]	; 1a3c <_ZN9Scheduler8ScheduleEv+0x418>
    1a00:	e0630283 	rsb	r0, r3, r3, lsl #5
    1a04:	e5912004 	ldr	r2, [r1, #4]
    1a08:	e0833100 	add	r3, r3, r0, lsl #2
    1a0c:	e0823183 	add	r3, r2, r3, lsl #3
    1a10:	e5813010 	str	r3, [r1, #16]
    1a14:	e1a00004 	mov	r0, r4
    1a18:	e5c5c004 	strb	ip, [r5, #4]
    1a1c:	ebfffffe 	bl	15d0 <_ZN9Scheduler11LoadContextEv>
    1a20:	00000000 	andeq	r0, r0, r0
    1a24:	000000c4 	andeq	r0, r0, r4, asr #1
    1a28:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    1a2c:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1a30:	000000e4 	andeq	r0, r0, r4, ror #1
    1a34:	000000f4 	strdeq	r0, [r0], -r4
    1a38:	00000108 	andeq	r0, r0, r8, lsl #2
    1a3c:	20003000 	andcs	r3, r0, r0
    1a40:	0000011c 	andeq	r0, r0, ip, lsl r1
    1a44:	2000b000 	andcs	fp, r0, r0
    1a48:	00000150 	andeq	r0, r0, r0, asr r1
    1a4c:	00000168 	andeq	r0, r0, r8, ror #2
    1a50:	00000174 	andeq	r0, r0, r4, ror r1
    1a54:	00000184 	andeq	r0, r0, r4, lsl #3

00001a58 <_ZN9Scheduler11PrepareTaskEv>:
    1a58:	e3a0c001 	mov	ip, #1
    1a5c:	e92d4008 	push	{r3, lr}
    1a60:	e5903018 	ldr	r3, [r0, #24]
    1a64:	e59f2014 	ldr	r2, [pc, #20]	; 1a80 <_ZN9Scheduler11PrepareTaskEv+0x28>
    1a68:	e5931050 	ldr	r1, [r3, #80]	; 0x50
    1a6c:	e5c3c064 	strb	ip, [r3, #100]	; 0x64
    1a70:	e5821018 	str	r1, [r2, #24]
    1a74:	ebfffffe 	bl	0 <armPrepareContext>
    1a78:	e8bd4008 	pop	{r3, lr}
    1a7c:	e12fff1e 	bx	lr
    1a80:	00000000 	andeq	r0, r0, r0

00001a84 <_ZN9Scheduler7AddTaskEv>:
    1a84:	e3a02000 	mov	r2, #0
    1a88:	e5901014 	ldr	r1, [r0, #20]
    1a8c:	e59fc138 	ldr	ip, [pc, #312]	; 1bcc <_ZN9Scheduler7AddTaskEv+0x148>
    1a90:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
    1a94:	e5903020 	ldr	r3, [r0, #32]
    1a98:	e59c4004 	ldr	r4, [ip, #4]
    1a9c:	e5812048 	str	r2, [r1, #72]	; 0x48
    1aa0:	e5932000 	ldr	r2, [r3]
    1aa4:	e3520000 	cmp	r2, #0
    1aa8:	1a000001 	bne	1ab4 <_ZN9Scheduler7AddTaskEv+0x30>
    1aac:	ea000044 	b	1bc4 <_ZN9Scheduler7AddTaskEv+0x140>
    1ab0:	e1a02003 	mov	r2, r3
    1ab4:	e5923048 	ldr	r3, [r2, #72]	; 0x48
    1ab8:	e3530000 	cmp	r3, #0
    1abc:	1afffffb 	bne	1ab0 <_ZN9Scheduler7AddTaskEv+0x2c>
    1ac0:	e5821048 	str	r1, [r2, #72]	; 0x48
    1ac4:	e59f3104 	ldr	r3, [pc, #260]	; 1bd0 <_ZN9Scheduler7AddTaskEv+0x14c>
    1ac8:	e5d33014 	ldrb	r3, [r3, #20]
    1acc:	e3530000 	cmp	r3, #0
    1ad0:	0a000039 	beq	1bbc <_ZN9Scheduler7AddTaskEv+0x138>
    1ad4:	e1a06000 	mov	r6, r0
    1ad8:	e3a0100a 	mov	r1, #10
    1adc:	e590701c 	ldr	r7, [r0, #28]
    1ae0:	e59f50ec 	ldr	r5, [pc, #236]	; 1bd4 <_ZN9Scheduler7AddTaskEv+0x150>
    1ae4:	e1a00007 	mov	r0, r7
    1ae8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1aec:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1af0:	e5f51001 	ldrb	r1, [r5, #1]!
    1af4:	e3510000 	cmp	r1, #0
    1af8:	1afffff9 	bne	1ae4 <_ZN9Scheduler7AddTaskEv+0x60>
    1afc:	e5963020 	ldr	r3, [r6, #32]
    1b00:	e5933000 	ldr	r3, [r3]
    1b04:	e3530000 	cmp	r3, #0
    1b08:	e596001c 	ldr	r0, [r6, #28]
    1b0c:	0a000007 	beq	1b30 <_ZN9Scheduler7AddTaskEv+0xac>
    1b10:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1b14:	e3530000 	cmp	r3, #0
    1b18:	e3a01001 	mov	r1, #1
    1b1c:	0a000003 	beq	1b30 <_ZN9Scheduler7AddTaskEv+0xac>
    1b20:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1b24:	e3530000 	cmp	r3, #0
    1b28:	e2811001 	add	r1, r1, #1
    1b2c:	1afffffb 	bne	1b20 <_ZN9Scheduler7AddTaskEv+0x9c>
    1b30:	e59f20a0 	ldr	r2, [pc, #160]	; 1bd8 <_ZN9Scheduler7AddTaskEv+0x154>
    1b34:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    1b38:	e3a0100a 	mov	r1, #10
    1b3c:	e59f5098 	ldr	r5, [pc, #152]	; 1bdc <_ZN9Scheduler7AddTaskEv+0x158>
    1b40:	e596701c 	ldr	r7, [r6, #28]
    1b44:	e1a00007 	mov	r0, r7
    1b48:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1b4c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1b50:	e5f51001 	ldrb	r1, [r5, #1]!
    1b54:	e3510000 	cmp	r1, #0
    1b58:	1afffff9 	bne	1b44 <_ZN9Scheduler7AddTaskEv+0xc0>
    1b5c:	e5963014 	ldr	r3, [r6, #20]
    1b60:	e596001c 	ldr	r0, [r6, #28]
    1b64:	e1d316b0 	ldrh	r1, [r3, #96]	; 0x60
    1b68:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1b6c:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    1b70:	e3a0100a 	mov	r1, #10
    1b74:	e59f5064 	ldr	r5, [pc, #100]	; 1be0 <_ZN9Scheduler7AddTaskEv+0x15c>
    1b78:	e596701c 	ldr	r7, [r6, #28]
    1b7c:	e1a00007 	mov	r0, r7
    1b80:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1b84:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1b88:	e5f51001 	ldrb	r1, [r5, #1]!
    1b8c:	e3510000 	cmp	r1, #0
    1b90:	1afffff9 	bne	1b7c <_ZN9Scheduler7AddTaskEv+0xf8>
    1b94:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1b98:	e596001c 	ldr	r0, [r6, #28]
    1b9c:	e5961014 	ldr	r1, [r6, #20]
    1ba0:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    1ba4:	e284483d 	add	r4, r4, #3997696	; 0x3d0000
    1ba8:	e59f201c 	ldr	r2, [pc, #28]	; 1bcc <_ZN9Scheduler7AddTaskEv+0x148>
    1bac:	e2844c09 	add	r4, r4, #2304	; 0x900
    1bb0:	e5923004 	ldr	r3, [r2, #4]
    1bb4:	e1540003 	cmp	r4, r3
    1bb8:	2afffffc 	bcs	1bb0 <_ZN9Scheduler7AddTaskEv+0x12c>
    1bbc:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
    1bc0:	e12fff1e 	bx	lr
    1bc4:	e5831000 	str	r1, [r3]
    1bc8:	eaffffbd 	b	1ac4 <_ZN9Scheduler7AddTaskEv+0x40>
    1bcc:	20003000 	andcs	r3, r0, r0
    1bd0:	00000000 	andeq	r0, r0, r0
    1bd4:	000001ac 	andeq	r0, r0, ip, lsr #3
    1bd8:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    1bdc:	000001c8 	andeq	r0, r0, r8, asr #3
    1be0:	000001d8 	ldrdeq	r0, [r0], -r8

00001be4 <_Z5test1v>:
    1be4:	e59f300c 	ldr	r3, [pc, #12]	; 1bf8 <_Z5test1v+0x14>
    1be8:	e1a00000 	nop			; (mov r0, r0)
    1bec:	e2533001 	subs	r3, r3, #1
    1bf0:	1afffffc 	bne	1be8 <_Z5test1v+0x4>
    1bf4:	e12fff1e 	bx	lr
    1bf8:	00989680 	addseq	r9, r8, r0, lsl #13

00001bfc <swi_writer>:
    1bfc:	e92d4070 	push	{r4, r5, r6, lr}
    1c00:	e1a04006 	mov	r4, r6
    1c04:	e1a05007 	mov	r5, r7
    1c08:	e1a01008 	mov	r1, r8
    1c0c:	e1a03009 	mov	r3, r9
    1c10:	e3530003 	cmp	r3, #3
    1c14:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    1c18:	ea00000e 	b	1c58 <swi_writer+0x5c>
    1c1c:	00001c2c 	andeq	r1, r0, ip, lsr #24
    1c20:	00001c88 	andeq	r1, r0, r8, lsl #25
    1c24:	00001c74 	andeq	r1, r0, r4, ror ip
    1c28:	00001c60 	andeq	r1, r0, r0, ror #24
    1c2c:	e5d41000 	ldrb	r1, [r4]
    1c30:	e59f3080 	ldr	r3, [pc, #128]	; 1cb8 <swi_writer+0xbc>
    1c34:	e3510000 	cmp	r1, #0
    1c38:	e5936008 	ldr	r6, [r3, #8]
    1c3c:	0a000005 	beq	1c58 <swi_writer+0x5c>
    1c40:	e1a00006 	mov	r0, r6
    1c44:	e1a02005 	mov	r2, r5
    1c48:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1c4c:	e5f41001 	ldrb	r1, [r4, #1]!
    1c50:	e3510000 	cmp	r1, #0
    1c54:	1afffff9 	bne	1c40 <swi_writer+0x44>
    1c58:	e8bd4070 	pop	{r4, r5, r6, lr}
    1c5c:	e12fff1e 	bx	lr
    1c60:	e59f3050 	ldr	r3, [pc, #80]	; 1cb8 <swi_writer+0xbc>
    1c64:	e1a02005 	mov	r2, r5
    1c68:	e5930008 	ldr	r0, [r3, #8]
    1c6c:	e8bd4070 	pop	{r4, r5, r6, lr}
    1c70:	eafffffe 	b	1094 <_ZN7Console12kprintHexa32Ejj>
    1c74:	e59f303c 	ldr	r3, [pc, #60]	; 1cb8 <swi_writer+0xbc>
    1c78:	e1a02005 	mov	r2, r5
    1c7c:	e5930008 	ldr	r0, [r3, #8]
    1c80:	e8bd4070 	pop	{r4, r5, r6, lr}
    1c84:	eafffffe 	b	1040 <_ZN7Console6kprintEjj>
    1c88:	e5d41000 	ldrb	r1, [r4]
    1c8c:	e59f3024 	ldr	r3, [pc, #36]	; 1cb8 <swi_writer+0xbc>
    1c90:	e3510000 	cmp	r1, #0
    1c94:	e5936008 	ldr	r6, [r3, #8]
    1c98:	0affffee 	beq	1c58 <swi_writer+0x5c>
    1c9c:	e1a00006 	mov	r0, r6
    1ca0:	e1a02005 	mov	r2, r5
    1ca4:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1ca8:	e5f41001 	ldrb	r1, [r4, #1]!
    1cac:	e3510000 	cmp	r1, #0
    1cb0:	1afffff9 	bne	1c9c <swi_writer+0xa0>
    1cb4:	eaffffe7 	b	1c58 <swi_writer+0x5c>
    1cb8:	00000000 	andeq	r0, r0, r0

00001cbc <swi_svmode>:
    1cbc:	e92d4070 	push	{r4, r5, r6, lr}
    1cc0:	e8bd4070 	pop	{r4, r5, r6, lr}
    1cc4:	e59f50e0 	ldr	r5, [pc, #224]	; 1dac <swi_svmode+0xf0>
    1cc8:	e5d53014 	ldrb	r3, [r5, #20]
    1ccc:	e3530000 	cmp	r3, #0
    1cd0:	0a000033 	beq	1da4 <swi_svmode+0xe8>
    1cd4:	e3a0100a 	mov	r1, #10
    1cd8:	e5956008 	ldr	r6, [r5, #8]
    1cdc:	e59f40cc 	ldr	r4, [pc, #204]	; 1db0 <swi_svmode+0xf4>
    1ce0:	e1a00006 	mov	r0, r6
    1ce4:	e59f20c8 	ldr	r2, [pc, #200]	; 1db4 <swi_svmode+0xf8>
    1ce8:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1cec:	e5f41001 	ldrb	r1, [r4, #1]!
    1cf0:	e3510000 	cmp	r1, #0
    1cf4:	1afffff9 	bne	1ce0 <swi_svmode+0x24>
    1cf8:	e3a0100a 	mov	r1, #10
    1cfc:	e5956008 	ldr	r6, [r5, #8]
    1d00:	e59f40b0 	ldr	r4, [pc, #176]	; 1db8 <swi_svmode+0xfc>
    1d04:	e1a00006 	mov	r0, r6
    1d08:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1d0c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1d10:	e5f41001 	ldrb	r1, [r4, #1]!
    1d14:	e3510000 	cmp	r1, #0
    1d18:	1afffff9 	bne	1d04 <swi_svmode+0x48>
    1d1c:	e595300c 	ldr	r3, [r5, #12]
    1d20:	e5933020 	ldr	r3, [r3, #32]
    1d24:	e5933000 	ldr	r3, [r3]
    1d28:	e3530000 	cmp	r3, #0
    1d2c:	e5950008 	ldr	r0, [r5, #8]
    1d30:	0a000007 	beq	1d54 <swi_svmode+0x98>
    1d34:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1d38:	e3530000 	cmp	r3, #0
    1d3c:	e3a01001 	mov	r1, #1
    1d40:	0a000003 	beq	1d54 <swi_svmode+0x98>
    1d44:	e5933048 	ldr	r3, [r3, #72]	; 0x48
    1d48:	e3530000 	cmp	r3, #0
    1d4c:	e2811001 	add	r1, r1, #1
    1d50:	1afffffb 	bne	1d44 <swi_svmode+0x88>
    1d54:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1d58:	ebfffffe 	bl	1040 <_ZN7Console6kprintEjj>
    1d5c:	e59f10dc 	ldr	r1, [pc, #220]	; 1e40 <swi_endTask+0x80>
    1d60:	e581d000 	str	sp, [r1]
    1d64:	e3a0100a 	mov	r1, #10
    1d68:	e5950008 	ldr	r0, [r5, #8]
    1d6c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    1d70:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1d74:	e5951020 	ldr	r1, [r5, #32]
    1d78:	e3a02cff 	mov	r2, #65280	; 0xff00
    1d7c:	e5950008 	ldr	r0, [r5, #8]
    1d80:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    1d84:	e59f3030 	ldr	r3, [pc, #48]	; 1dbc <swi_svmode+0x100>
    1d88:	e1a01003 	mov	r1, r3
    1d8c:	e5932004 	ldr	r2, [r3, #4]
    1d90:	e28229b7 	add	r2, r2, #2998272	; 0x2dc000
    1d94:	e2822d1b 	add	r2, r2, #1728	; 0x6c0
    1d98:	e5913004 	ldr	r3, [r1, #4]
    1d9c:	e1520003 	cmp	r2, r3
    1da0:	8afffffc 	bhi	1d98 <swi_svmode+0xdc>
    1da4:	e595000c 	ldr	r0, [r5, #12]
    1da8:	ebfffffe 	bl	1624 <_ZN9Scheduler8ScheduleEv>
    1dac:	00000000 	andeq	r0, r0, r0
    1db0:	000001f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1db4:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    1db8:	0000020c 	andeq	r0, r0, ip, lsl #4
    1dbc:	20003000 	andcs	r3, r0, r0

00001dc0 <swi_endTask>:
    1dc0:	e3a01004 	mov	r1, #4
    1dc4:	e92d4038 	push	{r3, r4, r5, lr}
    1dc8:	e59f307c 	ldr	r3, [pc, #124]	; 1e4c <swi_endTask+0x8c>
    1dcc:	e593200c 	ldr	r2, [r3, #12]
    1dd0:	e5d30014 	ldrb	r0, [r3, #20]
    1dd4:	e5922018 	ldr	r2, [r2, #24]
    1dd8:	e3500000 	cmp	r0, #0
    1ddc:	e5c21064 	strb	r1, [r2, #100]	; 0x64
    1de0:	0a000010 	beq	1e28 <swi_endTask+0x68>
    1de4:	e3a0100a 	mov	r1, #10
    1de8:	e5935008 	ldr	r5, [r3, #8]
    1dec:	e59f405c 	ldr	r4, [pc, #92]	; 1e50 <swi_endTask+0x90>
    1df0:	e1a00005 	mov	r0, r5
    1df4:	e3a020ff 	mov	r2, #255	; 0xff
    1df8:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1dfc:	e5f41001 	ldrb	r1, [r4, #1]!
    1e00:	e3510000 	cmp	r1, #0
    1e04:	1afffff9 	bne	1df0 <swi_endTask+0x30>
    1e08:	e59f3044 	ldr	r3, [pc, #68]	; 1e54 <swi_endTask+0x94>
    1e0c:	e1a01003 	mov	r1, r3
    1e10:	e5932004 	ldr	r2, [r3, #4]
    1e14:	e28229b7 	add	r2, r2, #2998272	; 0x2dc000
    1e18:	e2822d1b 	add	r2, r2, #1728	; 0x6c0
    1e1c:	e5913004 	ldr	r3, [r1, #4]
    1e20:	e1520003 	cmp	r2, r3
    1e24:	8afffffc 	bhi	1e1c <swi_endTask+0x5c>
    1e28:	00000000 	andeq	r0, r0, r0
    1e2c:	00001fc8 	andeq	r1, r0, r8, asr #31
	...
    1e44:	e8bd4038 	pop	{r3, r4, r5, lr}
    1e48:	e12fff1e 	bx	lr
    1e4c:	00000000 	andeq	r0, r0, r0
    1e50:	00000224 	andeq	r0, r0, r4, lsr #4
    1e54:	20003000 	andcs	r3, r0, r0

00001e58 <swi_addTask>:
    1e58:	e3a02801 	mov	r2, #65536	; 0x10000
    1e5c:	e59f3018 	ldr	r3, [pc, #24]	; 1e7c <swi_addTask+0x24>
    1e60:	e593000c 	ldr	r0, [r3, #12]
    1e64:	e59f3014 	ldr	r3, [pc, #20]	; 1e80 <swi_addTask+0x28>
    1e68:	e3500000 	cmp	r0, #0
    1e6c:	e583201c 	str	r2, [r3, #28]
    1e70:	e5832028 	str	r2, [r3, #40]	; 0x28
    1e74:	012fff1e 	bxeq	lr
    1e78:	eafffffe 	b	1a84 <_ZN9Scheduler7AddTaskEv>
    1e7c:	00000000 	andeq	r0, r0, r0
    1e80:	20200000 	eorcs	r0, r0, r0

00001e84 <_Z11userAddTaskv>:
    1e84:	e3a05003 	mov	r5, #3
    1e88:	ef000000 	svc	0x00000000
    1e8c:	e12fff1e 	bx	lr

00001e90 <_Z9userPrintPKcj>:
    1e90:	e5d03000 	ldrb	r3, [r0]
    1e94:	e3530000 	cmp	r3, #0
    1e98:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1e9c:	1a000006 	bne	1ebc <_Z9userPrintPKcj+0x2c>
    1ea0:	e1a07001 	mov	r7, r1
    1ea4:	e1a06000 	mov	r6, r0
    1ea8:	e3a09000 	mov	r9, #0
    1eac:	e3a05000 	mov	r5, #0
    1eb0:	ef000000 	svc	0x00000000
    1eb4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1eb8:	e12fff1e 	bx	lr
    1ebc:	e1a03000 	mov	r3, r0
    1ec0:	e59f2018 	ldr	r2, [pc, #24]	; 1ee0 <_Z9userPrintPKcj+0x50>
    1ec4:	e2833001 	add	r3, r3, #1
    1ec8:	e5d3c000 	ldrb	ip, [r3]
    1ecc:	e060e003 	rsb	lr, r0, r3
    1ed0:	e15e0002 	cmp	lr, r2
    1ed4:	935c0000 	cmpls	ip, #0
    1ed8:	0afffff0 	beq	1ea0 <_Z9userPrintPKcj+0x10>
    1edc:	eafffff8 	b	1ec4 <_Z9userPrintPKcj+0x34>
    1ee0:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

00001ee4 <_Z9userPrintPKc>:
    1ee4:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    1ee8:	eafffffe 	b	1e90 <_Z9userPrintPKcj>

00001eec <_Z9userPrintPcj>:
    1eec:	e5d03000 	ldrb	r3, [r0]
    1ef0:	e3530000 	cmp	r3, #0
    1ef4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1ef8:	1a000006 	bne	1f18 <_Z9userPrintPcj+0x2c>
    1efc:	e1a07001 	mov	r7, r1
    1f00:	e1a06000 	mov	r6, r0
    1f04:	e3a09001 	mov	r9, #1
    1f08:	e3a05000 	mov	r5, #0
    1f0c:	ef000000 	svc	0x00000000
    1f10:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1f14:	e12fff1e 	bx	lr
    1f18:	e1a03000 	mov	r3, r0
    1f1c:	e59f2018 	ldr	r2, [pc, #24]	; 1f3c <_Z9userPrintPcj+0x50>
    1f20:	e2833001 	add	r3, r3, #1
    1f24:	e5d3c000 	ldrb	ip, [r3]
    1f28:	e060e003 	rsb	lr, r0, r3
    1f2c:	e15e0002 	cmp	lr, r2
    1f30:	935c0000 	cmpls	ip, #0
    1f34:	0afffff0 	beq	1efc <_Z9userPrintPcj+0x10>
    1f38:	eafffff8 	b	1f20 <_Z9userPrintPcj+0x34>
    1f3c:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>

00001f40 <_Z9userPrintPc>:
    1f40:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    1f44:	eafffffe 	b	1eec <_Z9userPrintPcj>

00001f48 <_Z9userPrintjj>:
    1f48:	e92d4030 	push	{r4, r5, lr}
    1f4c:	e24dd00c 	sub	sp, sp, #12
    1f50:	e1a07001 	mov	r7, r1
    1f54:	e1a08000 	mov	r8, r0
    1f58:	e3a09002 	mov	r9, #2
    1f5c:	e3a05000 	mov	r5, #0
    1f60:	ef000000 	svc	0x00000000
    1f64:	e3a03001 	mov	r3, #1
    1f68:	e5cd3007 	strb	r3, [sp, #7]
    1f6c:	e5dd3007 	ldrb	r3, [sp, #7]
    1f70:	e3530000 	cmp	r3, #0
    1f74:	1a00000c 	bne	1fac <_Z9userPrintjj+0x64>
    1f78:	e3a0100a 	mov	r1, #10
    1f7c:	e59f3038 	ldr	r3, [pc, #56]	; 1fbc <_Z9userPrintjj+0x74>
    1f80:	e59f4038 	ldr	r4, [pc, #56]	; 1fc0 <_Z9userPrintjj+0x78>
    1f84:	e5935008 	ldr	r5, [r3, #8]
    1f88:	e1a00005 	mov	r0, r5
    1f8c:	e3a020ff 	mov	r2, #255	; 0xff
    1f90:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    1f94:	e5f41001 	ldrb	r1, [r4, #1]!
    1f98:	e3510000 	cmp	r1, #0
    1f9c:	1afffff9 	bne	1f88 <_Z9userPrintjj+0x40>
    1fa0:	e28dd00c 	add	sp, sp, #12
    1fa4:	e8bd4030 	pop	{r4, r5, lr}
    1fa8:	e12fff1e 	bx	lr
    1fac:	e1a00000 	nop			; (mov r0, r0)
    1fb0:	e28dd00c 	add	sp, sp, #12
    1fb4:	e8bd4030 	pop	{r4, r5, lr}
    1fb8:	e12fff1e 	bx	lr
    1fbc:	00000000 	andeq	r0, r0, r0
    1fc0:	0000023c 	andeq	r0, r0, ip, lsr r2

00001fc4 <_Z12PrintProcessv>:
    1fc4:	e92d4010 	push	{r4, lr}
    1fc8:	e3a04f7d 	mov	r4, #500	; 0x1f4
    1fcc:	e2444001 	sub	r4, r4, #1
    1fd0:	e59f0038 	ldr	r0, [pc, #56]	; 2010 <_Z12PrintProcessv+0x4c>
    1fd4:	e3a01cff 	mov	r1, #65280	; 0xff00
    1fd8:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    1fdc:	e1a00004 	mov	r0, r4
    1fe0:	e3a01cff 	mov	r1, #65280	; 0xff00
    1fe4:	ebfffffe 	bl	1f48 <_Z9userPrintjj>
    1fe8:	e59f0024 	ldr	r0, [pc, #36]	; 2014 <_Z12PrintProcessv+0x50>
    1fec:	e3a01cff 	mov	r1, #65280	; 0xff00
    1ff0:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    1ff4:	e59f001c 	ldr	r0, [pc, #28]	; 2018 <_Z12PrintProcessv+0x54>
    1ff8:	e59f101c 	ldr	r1, [pc, #28]	; 201c <_Z12PrintProcessv+0x58>
    1ffc:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    2000:	e3540000 	cmp	r4, #0
    2004:	1afffff0 	bne	1fcc <_Z12PrintProcessv+0x8>
    2008:	e8bd4010 	pop	{r4, lr}
    200c:	e12fff1e 	bx	lr
    2010:	0000024c 	andeq	r0, r0, ip, asr #4
    2014:	00000250 	andeq	r0, r0, r0, asr r2
    2018:	00000254 	andeq	r0, r0, r4, asr r2
    201c:	00ffff00 	rscseq	pc, pc, r0, lsl #30

00002020 <_Z13PrintProcess2v>:
    2020:	e92d4010 	push	{r4, lr}
    2024:	e3a04f7d 	mov	r4, #500	; 0x1f4
    2028:	e2444001 	sub	r4, r4, #1
    202c:	e59f0040 	ldr	r0, [pc, #64]	; 2074 <_Z13PrintProcess2v+0x54>
    2030:	e3a01cff 	mov	r1, #65280	; 0xff00
    2034:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    2038:	e1a00004 	mov	r0, r4
    203c:	e3a01cff 	mov	r1, #65280	; 0xff00
    2040:	ebfffffe 	bl	1f48 <_Z9userPrintjj>
    2044:	e59f002c 	ldr	r0, [pc, #44]	; 2078 <_Z13PrintProcess2v+0x58>
    2048:	e3a01cff 	mov	r1, #65280	; 0xff00
    204c:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    2050:	e59f0024 	ldr	r0, [pc, #36]	; 207c <_Z13PrintProcess2v+0x5c>
    2054:	e3a010ff 	mov	r1, #255	; 0xff
    2058:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    205c:	e3540000 	cmp	r4, #0
    2060:	1afffff0 	bne	2028 <_Z13PrintProcess2v+0x8>
    2064:	e3a05003 	mov	r5, #3
    2068:	ef000000 	svc	0x00000000
    206c:	e8bd4010 	pop	{r4, lr}
    2070:	e12fff1e 	bx	lr
    2074:	0000024c 	andeq	r0, r0, ip, asr #4
    2078:	00000250 	andeq	r0, r0, r0, asr r2
    207c:	00000288 	andeq	r0, r0, r8, lsl #5

00002080 <_Z13PrintProcess3v>:
    2080:	e92d4010 	push	{r4, lr}
    2084:	e3a04f7d 	mov	r4, #500	; 0x1f4
    2088:	e2444001 	sub	r4, r4, #1
    208c:	e59f0038 	ldr	r0, [pc, #56]	; 20cc <_Z13PrintProcess3v+0x4c>
    2090:	e3a01cff 	mov	r1, #65280	; 0xff00
    2094:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    2098:	e1a00004 	mov	r0, r4
    209c:	e3a01cff 	mov	r1, #65280	; 0xff00
    20a0:	ebfffffe 	bl	1f48 <_Z9userPrintjj>
    20a4:	e59f0024 	ldr	r0, [pc, #36]	; 20d0 <_Z13PrintProcess3v+0x50>
    20a8:	e3a01cff 	mov	r1, #65280	; 0xff00
    20ac:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    20b0:	e59f001c 	ldr	r0, [pc, #28]	; 20d4 <_Z13PrintProcess3v+0x54>
    20b4:	e59f101c 	ldr	r1, [pc, #28]	; 20d8 <_Z13PrintProcess3v+0x58>
    20b8:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    20bc:	e3540000 	cmp	r4, #0
    20c0:	1afffff0 	bne	2088 <_Z13PrintProcess3v+0x8>
    20c4:	e8bd4010 	pop	{r4, lr}
    20c8:	e12fff1e 	bx	lr
    20cc:	0000024c 	andeq	r0, r0, ip, asr #4
    20d0:	00000250 	andeq	r0, r0, r0, asr r2
    20d4:	000002a8 	andeq	r0, r0, r8, lsr #5
    20d8:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>

000020dc <_Z13PrintProcess4v>:
    20dc:	e92d4010 	push	{r4, lr}
    20e0:	e3a04f7d 	mov	r4, #500	; 0x1f4
    20e4:	e2444001 	sub	r4, r4, #1
    20e8:	e59f0038 	ldr	r0, [pc, #56]	; 2128 <_Z13PrintProcess4v+0x4c>
    20ec:	e3a01cff 	mov	r1, #65280	; 0xff00
    20f0:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    20f4:	e1a00004 	mov	r0, r4
    20f8:	e3a01cff 	mov	r1, #65280	; 0xff00
    20fc:	ebfffffe 	bl	1f48 <_Z9userPrintjj>
    2100:	e59f0024 	ldr	r0, [pc, #36]	; 212c <_Z13PrintProcess4v+0x50>
    2104:	e3a01cff 	mov	r1, #65280	; 0xff00
    2108:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    210c:	e59f001c 	ldr	r0, [pc, #28]	; 2130 <_Z13PrintProcess4v+0x54>
    2110:	e59f101c 	ldr	r1, [pc, #28]	; 2134 <_Z13PrintProcess4v+0x58>
    2114:	ebfffffe 	bl	1e90 <_Z9userPrintPKcj>
    2118:	e3540000 	cmp	r4, #0
    211c:	1afffff0 	bne	20e4 <_Z13PrintProcess4v+0x8>
    2120:	e8bd4010 	pop	{r4, lr}
    2124:	e12fff1e 	bx	lr
    2128:	0000024c 	andeq	r0, r0, ip, asr #4
    212c:	00000250 	andeq	r0, r0, r0, asr r2
    2130:	000002bc 			; <UNDEFINED> instruction: 0x000002bc
    2134:	00ff00ff 	ldrshteq	r0, [pc], #15

00002138 <_Z9userPrintj>:
    2138:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    213c:	eafffffe 	b	1f48 <_Z9userPrintjj>

00002140 <_Z15userPrintHexa32jj>:
    2140:	e92d4030 	push	{r4, r5, lr}
    2144:	e24dd00c 	sub	sp, sp, #12
    2148:	e1a07001 	mov	r7, r1
    214c:	e1a08000 	mov	r8, r0
    2150:	e3a09003 	mov	r9, #3
    2154:	e3a05000 	mov	r5, #0
    2158:	ef000000 	svc	0x00000000
    215c:	e3a03001 	mov	r3, #1
    2160:	e5cd3007 	strb	r3, [sp, #7]
    2164:	e5dd3007 	ldrb	r3, [sp, #7]
    2168:	e3530000 	cmp	r3, #0
    216c:	1a00000c 	bne	21a4 <_Z15userPrintHexa32jj+0x64>
    2170:	e3a0100a 	mov	r1, #10
    2174:	e59f3038 	ldr	r3, [pc, #56]	; 21b4 <_Z15userPrintHexa32jj+0x74>
    2178:	e59f4038 	ldr	r4, [pc, #56]	; 21b8 <_Z15userPrintHexa32jj+0x78>
    217c:	e5935008 	ldr	r5, [r3, #8]
    2180:	e1a00005 	mov	r0, r5
    2184:	e3a020ff 	mov	r2, #255	; 0xff
    2188:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    218c:	e5f41001 	ldrb	r1, [r4, #1]!
    2190:	e3510000 	cmp	r1, #0
    2194:	1afffff9 	bne	2180 <_Z15userPrintHexa32jj+0x40>
    2198:	e28dd00c 	add	sp, sp, #12
    219c:	e8bd4030 	pop	{r4, r5, lr}
    21a0:	e12fff1e 	bx	lr
    21a4:	e1a00000 	nop			; (mov r0, r0)
    21a8:	e28dd00c 	add	sp, sp, #12
    21ac:	e8bd4030 	pop	{r4, r5, lr}
    21b0:	e12fff1e 	bx	lr
    21b4:	00000000 	andeq	r0, r0, r0
    21b8:	0000023c 	andeq	r0, r0, ip, lsr r2

000021bc <_Z15userPrintHexa32j>:
    21bc:	e3e014ff 	mvn	r1, #-16777216	; 0xff000000
    21c0:	eafffffe 	b	2140 <_Z15userPrintHexa32jj>

000021c4 <_Z12print_headerP7Console>:
    21c4:	e92d4038 	push	{r3, r4, r5, lr}
    21c8:	e3a01057 	mov	r1, #87	; 0x57
    21cc:	e1a04000 	mov	r4, r0
    21d0:	e59f507c 	ldr	r5, [pc, #124]	; 2254 <_Z12print_headerP7Console+0x90>
    21d4:	e1a00004 	mov	r0, r4
    21d8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    21dc:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    21e0:	e5f51001 	ldrb	r1, [r5, #1]!
    21e4:	e3510000 	cmp	r1, #0
    21e8:	1afffff9 	bne	21d4 <_Z12print_headerP7Console+0x10>
    21ec:	e3a01042 	mov	r1, #66	; 0x42
    21f0:	e59f5060 	ldr	r5, [pc, #96]	; 2258 <_Z12print_headerP7Console+0x94>
    21f4:	e1a00004 	mov	r0, r4
    21f8:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    21fc:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    2200:	e5f51001 	ldrb	r1, [r5, #1]!
    2204:	e3510000 	cmp	r1, #0
    2208:	1afffff9 	bne	21f4 <_Z12print_headerP7Console+0x30>
    220c:	e3a01030 	mov	r1, #48	; 0x30
    2210:	e59f5044 	ldr	r5, [pc, #68]	; 225c <_Z12print_headerP7Console+0x98>
    2214:	e1a00004 	mov	r0, r4
    2218:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    221c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    2220:	e5f51001 	ldrb	r1, [r5, #1]!
    2224:	e3510000 	cmp	r1, #0
    2228:	1afffff9 	bne	2214 <_Z12print_headerP7Console+0x50>
    222c:	e3a0100a 	mov	r1, #10
    2230:	e59f5028 	ldr	r5, [pc, #40]	; 2260 <_Z12print_headerP7Console+0x9c>
    2234:	e1a00004 	mov	r0, r4
    2238:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    223c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    2240:	e5f51001 	ldrb	r1, [r5, #1]!
    2244:	e3510000 	cmp	r1, #0
    2248:	1afffff9 	bne	2234 <_Z12print_headerP7Console+0x70>
    224c:	e8bd4038 	pop	{r3, r4, r5, lr}
    2250:	e12fff1e 	bx	lr
    2254:	000002d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    2258:	00000314 	andeq	r0, r0, r4, lsl r3
    225c:	0000031c 	andeq	r0, r0, ip, lsl r3
    2260:	00000328 	andeq	r0, r0, r8, lsr #6

00002264 <kmain>:
    2264:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    2268:	e24dd044 	sub	sp, sp, #68	; 0x44
    226c:	e59f11d4 	ldr	r1, [pc, #468]	; 2448 <kmain+0x1e4>
    2270:	e581e000 	str	lr, [r1]
    2274:	e59f61a8 	ldr	r6, [pc, #424]	; 2424 <kmain+0x1c0>
    2278:	e5964008 	ldr	r4, [r6, #8]
    227c:	e3540000 	cmp	r4, #0
    2280:	0a00000c 	beq	22b8 <kmain+0x54>
    2284:	e3a0100a 	mov	r1, #10
    2288:	e59f5198 	ldr	r5, [pc, #408]	; 2428 <kmain+0x1c4>
    228c:	e1a00004 	mov	r0, r4
    2290:	e3a020ff 	mov	r2, #255	; 0xff
    2294:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    2298:	e5f51001 	ldrb	r1, [r5, #1]!
    229c:	e3510000 	cmp	r1, #0
    22a0:	1afffff9 	bne	228c <kmain+0x28>
    22a4:	e5961020 	ldr	r1, [r6, #32]
    22a8:	e5960008 	ldr	r0, [r6, #8]
    22ac:	e59f2178 	ldr	r2, [pc, #376]	; 242c <kmain+0x1c8>
    22b0:	ebfffffe 	bl	1094 <_ZN7Console12kprintHexa32Ejj>
    22b4:	eafffffe 	b	22b4 <kmain+0x50>
    22b8:	e28d7004 	add	r7, sp, #4
    22bc:	e1a01004 	mov	r1, r4
    22c0:	e3a02b01 	mov	r2, #1024	; 0x400
    22c4:	e3a03c03 	mov	r3, #768	; 0x300
    22c8:	e1a00007 	mov	r0, r7
    22cc:	ebfffffe 	bl	8f8 <_ZN11gpu2dCanvasC1Ebjj>
    22d0:	e3a0300a 	mov	r3, #10
    22d4:	e28d500c 	add	r5, sp, #12
    22d8:	e1a00005 	mov	r0, r5
    22dc:	e58d3014 	str	r3, [sp, #20]
    22e0:	e58d400c 	str	r4, [sp, #12]
    22e4:	e58d4010 	str	r4, [sp, #16]
    22e8:	e58d7018 	str	r7, [sp, #24]
    22ec:	ebfffffe 	bl	d90 <_ZN7Console5clearEv>
    22f0:	e3a01001 	mov	r1, #1
    22f4:	e3a00030 	mov	r0, #48	; 0x30
    22f8:	e5865008 	str	r5, [r6, #8]
    22fc:	ebfff757 	bl	60 <_ZN12RaspberryLib15SetGPIOfunctionEjj.part.3>
    2300:	e3a02801 	mov	r2, #65536	; 0x10000
    2304:	e59f3124 	ldr	r3, [pc, #292]	; 2430 <kmain+0x1cc>
    2308:	e1a00005 	mov	r0, r5
    230c:	e583202c 	str	r2, [r3, #44]	; 0x2c
    2310:	ebfffffe 	bl	21c4 <_Z12print_headerP7Console>
    2314:	e3a01057 	mov	r1, #87	; 0x57
    2318:	e59f4114 	ldr	r4, [pc, #276]	; 2434 <kmain+0x1d0>
    231c:	e1a00005 	mov	r0, r5
    2320:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    2324:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    2328:	e5f41001 	ldrb	r1, [r4, #1]!
    232c:	e3510000 	cmp	r1, #0
    2330:	1afffff9 	bne	231c <kmain+0xb8>
    2334:	e3a04012 	mov	r4, #18
    2338:	e59f70f8 	ldr	r7, [pc, #248]	; 2438 <kmain+0x1d4>
    233c:	e1a00005 	mov	r0, r5
    2340:	e3a0102e 	mov	r1, #46	; 0x2e
    2344:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    2348:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    234c:	e5973004 	ldr	r3, [r7, #4]
    2350:	e2833b61 	add	r3, r3, #99328	; 0x18400
    2354:	e2833e2a 	add	r3, r3, #672	; 0x2a0
    2358:	e5972004 	ldr	r2, [r7, #4]
    235c:	e1530002 	cmp	r3, r2
    2360:	8afffffc 	bhi	2358 <kmain+0xf4>
    2364:	e2544001 	subs	r4, r4, #1
    2368:	1afffff3 	bne	233c <kmain+0xd8>
    236c:	e3a0400a 	mov	r4, #10
    2370:	e59f70c4 	ldr	r7, [pc, #196]	; 243c <kmain+0x1d8>
    2374:	e1a01004 	mov	r1, r4
    2378:	e1a00005 	mov	r0, r5
    237c:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    2380:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
    2384:	e5f74001 	ldrb	r4, [r7, #1]!
    2388:	e3540000 	cmp	r4, #0
    238c:	1afffff8 	bne	2374 <kmain+0x110>
    2390:	e3a0380f 	mov	r3, #983040	; 0xf0000
    2394:	e3a02aff 	mov	r2, #1044480	; 0xff000
    2398:	e5863000 	str	r3, [r6]
    239c:	e1a00005 	mov	r0, r5
    23a0:	e5832008 	str	r2, [r3, #8]
    23a4:	e5c34004 	strb	r4, [r3, #4]
    23a8:	e59f1090 	ldr	r1, [pc, #144]	; 2440 <kmain+0x1dc>
    23ac:	ebfffffe 	bl	14ec <_ZN7Console4koutEPKc>
    23b0:	e3a0987e 	mov	r9, #8257536	; 0x7e0000
    23b4:	e3a00f7d 	mov	r0, #500	; 0x1f4
    23b8:	e3a08002 	mov	r8, #2
    23bc:	e3a0e00c 	mov	lr, #12
    23c0:	e3a01ffa 	mov	r1, #1000	; 0x3e8
    23c4:	e59f2078 	ldr	r2, [pc, #120]	; 2444 <kmain+0x1e0>
    23c8:	e59fc060 	ldr	ip, [pc, #96]	; 2430 <kmain+0x1cc>
    23cc:	e5829214 	str	r9, [r2, #532]	; 0x214
    23d0:	e59f3060 	ldr	r3, [pc, #96]	; 2438 <kmain+0x1d4>
    23d4:	e5828210 	str	r8, [r2, #528]	; 0x210
    23d8:	e58ce058 	str	lr, [ip, #88]	; 0x58
    23dc:	e58d0028 	str	r0, [sp, #40]	; 0x28
    23e0:	e58d4020 	str	r4, [sp, #32]
    23e4:	e58d4024 	str	r4, [sp, #36]	; 0x24
    23e8:	e58d101c 	str	r1, [sp, #28]
    23ec:	e1a07003 	mov	r7, r3
    23f0:	e5933004 	ldr	r3, [r3, #4]
    23f4:	e28d001c 	add	r0, sp, #28
    23f8:	e28339b7 	add	r3, r3, #2998272	; 0x2dc000
    23fc:	e5c64014 	strb	r4, [r6, #20]
    2400:	e58d5038 	str	r5, [sp, #56]	; 0x38
    2404:	e58d4034 	str	r4, [sp, #52]	; 0x34
    2408:	e58d403c 	str	r4, [sp, #60]	; 0x3c
    240c:	e586000c 	str	r0, [r6, #12]
    2410:	e2833d1b 	add	r3, r3, #1728	; 0x6c0
    2414:	e5972004 	ldr	r2, [r7, #4]
    2418:	e1520003 	cmp	r2, r3
    241c:	3afffffc 	bcc	2414 <kmain+0x1b0>
    2420:	ebfffffe 	bl	0 <_Z6divideiiPiS_.part.0>
    2424:	00000000 	andeq	r0, r0, r0
    2428:	0000032c 	andeq	r0, r0, ip, lsr #6
    242c:	00f0330f 	rscseq	r3, r0, pc, lsl #6
    2430:	20200000 	eorcs	r0, r0, r0
    2434:	00000350 	andeq	r0, r0, r0, asr r3
    2438:	20003000 	andcs	r3, r0, r0
    243c:	0000035c 	andeq	r0, r0, ip, asr r3
    2440:	0000036c 	andeq	r0, r0, ip, ror #6
    2444:	2000b000 	andcs	fp, r0, r0
    2448:	00000000 	andeq	r0, r0, r0

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
 4d4:	aaaaaac6 	bge	feaaaff4 <kmain+0xfeaa8d90>
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
 574:	5a5a8181 	bpl	16a0b80 <kmain+0x169e91c>
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
 6b4:	0a122202 	beq	488ec4 <kmain+0x486c60>
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
 774:	5a818100 	bpl	fe060b7c <kmain+0xfe05e918>
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

00000808 <baseStack>:
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

0000001c <globalaux3>:
  1c:	00000000 	andeq	r0, r0, r0

00000020 <globaltest>:
  20:	00000000 	andeq	r0, r0, r0

00000024 <globalcount>:
  24:	00000000 	andeq	r0, r0, r0

00000028 <irqcount>:
  28:	00000000 	andeq	r0, r0, r0

0000002c <globalPrintString>:
  2c:	00000000 	andeq	r0, r0, r0

00000030 <globalPrintMode>:
  30:	00000000 	andeq	r0, r0, r0

00000034 <globalPrintColour>:
  34:	00000000 	andeq	r0, r0, r0

00000038 <globalPrintNum>:
  38:	00000000 	andeq	r0, r0, r0

0000003c <globalPrintAux>:
  3c:	00000000 	andeq	r0, r0, r0

00000040 <globalCPSR>:
  40:	00000000 	andeq	r0, r0, r0

00000044 <globalSWI>:
  44:	00000000 	andeq	r0, r0, r0

00000048 <globalLRirq>:
  48:	00000000 	andeq	r0, r0, r0

0000004c <globalSPirq>:
  4c:	00000000 	andeq	r0, r0, r0

00000050 <globalTaskEnd>:
  50:	00000000 	andeq	r0, r0, r0

00000054 <globaltimecont>:
  54:	00000000 	andeq	r0, r0, r0

00000058 <globalPCkernel>:
  58:	00000000 	andeq	r0, r0, r0

0000005c <globalSPkernel>:
  5c:	00000000 	andeq	r0, r0, r0

00000060 <globalProtectCPSR>:
  60:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN4page8allocateEj:

00000000 <_ZN4page8allocateEj>:
   0:	e5d03004 	ldrb	r3, [r0, #4]
   4:	e3530000 	cmp	r3, #0
   8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   c:	e1a03000 	mov	r3, r0
  10:	0a000003 	beq	24 <_ZN4page8allocateEj+0x24>
  14:	e5933000 	ldr	r3, [r3]
  18:	e5d32004 	ldrb	r2, [r3, #4]
  1c:	e3520000 	cmp	r2, #0
  20:	1afffffb 	bne	14 <_ZN4page8allocateEj+0x14>
  24:	e3a0c000 	mov	ip, #0
  28:	e5932008 	ldr	r2, [r3, #8]
  2c:	e593000c 	ldr	r0, [r3, #12]
  30:	e151000c 	cmp	r1, ip
  34:	e0820100 	add	r0, r2, r0, lsl #2
  38:	e583140c 	str	r1, [r3, #1036]	; 0x40c
  3c:	e5830408 	str	r0, [r3, #1032]	; 0x408
  40:	e5c3c404 	strb	ip, [r3, #1028]	; 0x404
  44:	e283eb01 	add	lr, r3, #1024	; 0x400
  48:	0a000004 	beq	60 <_ZN4page8allocateEj+0x60>
  4c:	e1a02000 	mov	r2, r0
  50:	e0801101 	add	r1, r0, r1, lsl #2
  54:	e482c004 	str	ip, [r2], #4
  58:	e1520001 	cmp	r2, r1
  5c:	1afffffc 	bne	54 <_ZN4page8allocateEj+0x54>
  60:	e3a02001 	mov	r2, #1
  64:	e583e000 	str	lr, [r3]
  68:	e5c32004 	strb	r2, [r3, #4]
  6c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  70:	e12fff1e 	bx	lr

Disassembly of section .text._ZN9TaskQueue4PushEP7PCBlock:

00000000 <_ZN9TaskQueue4PushEP7PCBlock>:
   0:	e3a03000 	mov	r3, #0
   4:	e5813048 	str	r3, [r1, #72]	; 0x48
   8:	e5902000 	ldr	r2, [r0]
   c:	e1520003 	cmp	r2, r3
  10:	1a000001 	bne	1c <_ZN9TaskQueue4PushEP7PCBlock+0x1c>
  14:	ea000005 	b	30 <_ZN9TaskQueue4PushEP7PCBlock+0x30>
  18:	e1a02003 	mov	r2, r3
  1c:	e5923048 	ldr	r3, [r2, #72]	; 0x48
  20:	e3530000 	cmp	r3, #0
  24:	1afffffb 	bne	18 <_ZN9TaskQueue4PushEP7PCBlock+0x18>
  28:	e5821048 	str	r1, [r2, #72]	; 0x48
  2c:	e12fff1e 	bx	lr
  30:	e5801000 	str	r1, [r0]
  34:	e12fff1e 	bx	lr

Disassembly of section .text.startup:

00000000 <_ZN9Scheduler4mainEv>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e3a0400a 	mov	r4, #10
   c:	e590701c 	ldr	r7, [r0, #28]
  10:	e59f5294 	ldr	r5, [pc, #660]	; 2ac <_ZN9Scheduler4mainEv+0x2ac>
  14:	e24dd00c 	sub	sp, sp, #12
  18:	e1a01004 	mov	r1, r4
  1c:	e1a00007 	mov	r0, r7
  20:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
  24:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
  28:	e5f54001 	ldrb	r4, [r5, #1]!
  2c:	e3540000 	cmp	r4, #0
  30:	1afffff8 	bne	18 <_ZN9Scheduler4mainEv+0x18>
  34:	e28d3008 	add	r3, sp, #8
  38:	e5234008 	str	r4, [r3, #-8]!
  3c:	e59f526c 	ldr	r5, [pc, #620]	; 2b0 <_ZN9Scheduler4mainEv+0x2b0>
  40:	e596201c 	ldr	r2, [r6, #28]
  44:	e5863020 	str	r3, [r6, #32]
  48:	e5950000 	ldr	r0, [r5]
  4c:	e3a01068 	mov	r1, #104	; 0x68
  50:	e58d2004 	str	r2, [sp, #4]
  54:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
  58:	e3a01068 	mov	r1, #104	; 0x68
  5c:	e1a09000 	mov	r9, r0
  60:	e5950000 	ldr	r0, [r5]
  64:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
  68:	e3a01068 	mov	r1, #104	; 0x68
  6c:	e1a08000 	mov	r8, r0
  70:	e5950000 	ldr	r0, [r5]
  74:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
  78:	e3a01068 	mov	r1, #104	; 0x68
  7c:	e1a07000 	mov	r7, r0
  80:	e5950000 	ldr	r0, [r5]
  84:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
  88:	e3a0c001 	mov	ip, #1
  8c:	e1a05000 	mov	r5, r0
  90:	e59f021c 	ldr	r0, [pc, #540]	; 2b4 <_ZN9Scheduler4mainEv+0x2b4>
  94:	e59f221c 	ldr	r2, [pc, #540]	; 2b8 <_ZN9Scheduler4mainEv+0x2b8>
  98:	e5901808 	ldr	r1, [r0, #2056]	; 0x808
  9c:	e589204c 	str	r2, [r9, #76]	; 0x4c
  a0:	e2413044 	sub	r3, r1, #68	; 0x44
  a4:	e5891050 	str	r1, [r9, #80]	; 0x50
  a8:	e1a0e004 	mov	lr, r4
  ac:	e589405c 	str	r4, [r9, #92]	; 0x5c
  b0:	e1c946b2 	strh	r4, [r9, #98]	; 0x62
  b4:	e5c94064 	strb	r4, [r9, #100]	; 0x64
  b8:	e5894048 	str	r4, [r9, #72]	; 0x48
  bc:	e1c9c6b0 	strh	ip, [r9, #96]	; 0x60
  c0:	e5893054 	str	r3, [r9, #84]	; 0x54
  c4:	e5893058 	str	r3, [r9, #88]	; 0x58
  c8:	e2414b02 	sub	r4, r1, #2048	; 0x800
  cc:	e2493004 	sub	r3, r9, #4
  d0:	e289c040 	add	ip, r9, #64	; 0x40
  d4:	e5a3e004 	str	lr, [r3, #4]!
  d8:	e153000c 	cmp	r3, ip
  dc:	e3a02000 	mov	r2, #0
  e0:	1afffffb 	bne	d4 <_ZN9Scheduler4mainEv+0xd4>
  e4:	e3a0b002 	mov	fp, #2
  e8:	e1a0e002 	mov	lr, r2
  ec:	e59fa1c8 	ldr	sl, [pc, #456]	; 2bc <_ZN9Scheduler4mainEv+0x2bc>
  f0:	e241cd21 	sub	ip, r1, #2112	; 0x840
  f4:	e5893044 	str	r3, [r9, #68]	; 0x44
  f8:	e24cc004 	sub	ip, ip, #4
  fc:	e588205c 	str	r2, [r8, #92]	; 0x5c
 100:	e1c826b2 	strh	r2, [r8, #98]	; 0x62
 104:	e5c82064 	strb	r2, [r8, #100]	; 0x64
 108:	e5882048 	str	r2, [r8, #72]	; 0x48
 10c:	e1c8b6b0 	strh	fp, [r8, #96]	; 0x60
 110:	e588a04c 	str	sl, [r8, #76]	; 0x4c
 114:	e5884050 	str	r4, [r8, #80]	; 0x50
 118:	e588c054 	str	ip, [r8, #84]	; 0x54
 11c:	e588c058 	str	ip, [r8, #88]	; 0x58
 120:	e2414a01 	sub	r4, r1, #4096	; 0x1000
 124:	e2483004 	sub	r3, r8, #4
 128:	e288c040 	add	ip, r8, #64	; 0x40
 12c:	e5a3e004 	str	lr, [r3, #4]!
 130:	e153000c 	cmp	r3, ip
 134:	e3a02000 	mov	r2, #0
 138:	1afffffb 	bne	12c <_ZN9Scheduler4mainEv+0x12c>
 13c:	e3a0b003 	mov	fp, #3
 140:	e1a0e002 	mov	lr, r2
 144:	e59fa174 	ldr	sl, [pc, #372]	; 2c0 <_ZN9Scheduler4mainEv+0x2c0>
 148:	e241cd41 	sub	ip, r1, #4160	; 0x1040
 14c:	e5883044 	str	r3, [r8, #68]	; 0x44
 150:	e24cc004 	sub	ip, ip, #4
 154:	e587205c 	str	r2, [r7, #92]	; 0x5c
 158:	e1c726b2 	strh	r2, [r7, #98]	; 0x62
 15c:	e5c72064 	strb	r2, [r7, #100]	; 0x64
 160:	e5872048 	str	r2, [r7, #72]	; 0x48
 164:	e1c7b6b0 	strh	fp, [r7, #96]	; 0x60
 168:	e587a04c 	str	sl, [r7, #76]	; 0x4c
 16c:	e5874050 	str	r4, [r7, #80]	; 0x50
 170:	e587c054 	str	ip, [r7, #84]	; 0x54
 174:	e587c058 	str	ip, [r7, #88]	; 0x58
 178:	e2414b06 	sub	r4, r1, #6144	; 0x1800
 17c:	e2473004 	sub	r3, r7, #4
 180:	e287c040 	add	ip, r7, #64	; 0x40
 184:	e5a3e004 	str	lr, [r3, #4]!
 188:	e153000c 	cmp	r3, ip
 18c:	e3a02000 	mov	r2, #0
 190:	1afffffb 	bne	184 <_ZN9Scheduler4mainEv+0x184>
 194:	e3a0b004 	mov	fp, #4
 198:	e241ed61 	sub	lr, r1, #6208	; 0x1840
 19c:	e59fa120 	ldr	sl, [pc, #288]	; 2c4 <_ZN9Scheduler4mainEv+0x2c4>
 1a0:	e24ee004 	sub	lr, lr, #4
 1a4:	e2411a02 	sub	r1, r1, #8192	; 0x2000
 1a8:	e5873044 	str	r3, [r7, #68]	; 0x44
 1ac:	e5801808 	str	r1, [r0, #2056]	; 0x808
 1b0:	e5854050 	str	r4, [r5, #80]	; 0x50
 1b4:	e585e054 	str	lr, [r5, #84]	; 0x54
 1b8:	e585e058 	str	lr, [r5, #88]	; 0x58
 1bc:	e1c5b6b0 	strh	fp, [r5, #96]	; 0x60
 1c0:	e585a04c 	str	sl, [r5, #76]	; 0x4c
 1c4:	e1a0c002 	mov	ip, r2
 1c8:	e585205c 	str	r2, [r5, #92]	; 0x5c
 1cc:	e1c526b2 	strh	r2, [r5, #98]	; 0x62
 1d0:	e5c52064 	strb	r2, [r5, #100]	; 0x64
 1d4:	e5852048 	str	r2, [r5, #72]	; 0x48
 1d8:	e2453004 	sub	r3, r5, #4
 1dc:	e2852040 	add	r2, r5, #64	; 0x40
 1e0:	e5a3c004 	str	ip, [r3, #4]!
 1e4:	e1530002 	cmp	r3, r2
 1e8:	1afffffc 	bne	1e0 <_ZN9Scheduler4mainEv+0x1e0>
 1ec:	e5853044 	str	r3, [r5, #68]	; 0x44
 1f0:	e1a01009 	mov	r1, r9
 1f4:	e5960020 	ldr	r0, [r6, #32]
 1f8:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
 1fc:	e1a01008 	mov	r1, r8
 200:	e5960020 	ldr	r0, [r6, #32]
 204:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
 208:	e1a01007 	mov	r1, r7
 20c:	e5960020 	ldr	r0, [r6, #32]
 210:	ebfffffe 	bl	0 <_ZN9Scheduler4mainEv>
 214:	e5865014 	str	r5, [r6, #20]
 218:	e596001c 	ldr	r0, [r6, #28]
 21c:	e3a0100a 	mov	r1, #10
 220:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
 224:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
 228:	e5963020 	ldr	r3, [r6, #32]
 22c:	e5933000 	ldr	r3, [r3]
 230:	e3530000 	cmp	r3, #0
 234:	0a000012 	beq	284 <_ZN9Scheduler4mainEv+0x284>
 238:	e3a0100a 	mov	r1, #10
 23c:	e596501c 	ldr	r5, [r6, #28]
 240:	e59f4080 	ldr	r4, [pc, #128]	; 2c8 <_ZN9Scheduler4mainEv+0x2c8>
 244:	e1a00005 	mov	r0, r5
 248:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
 24c:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
 250:	e5f41001 	ldrb	r1, [r4, #1]!
 254:	e3510000 	cmp	r1, #0
 258:	1afffff9 	bne	244 <_ZN9Scheduler4mainEv+0x244>
 25c:	e59f3068 	ldr	r3, [pc, #104]	; 2cc <_ZN9Scheduler4mainEv+0x2cc>
 260:	e5933004 	ldr	r3, [r3, #4]
 264:	e5863008 	str	r3, [r6, #8]
 268:	e1a00000 	nop			; (mov r0, r0)
 26c:	e1a00000 	nop			; (mov r0, r0)
 270:	e1a00000 	nop			; (mov r0, r0)
 274:	e1a00000 	nop			; (mov r0, r0)
 278:	e1a00000 	nop			; (mov r0, r0)
 27c:	e1a00006 	mov	r0, r6
 280:	ebfffffe 	bl	1624 <_ZN9Scheduler8ScheduleEv>
 284:	e3a0100a 	mov	r1, #10
 288:	e596501c 	ldr	r5, [r6, #28]
 28c:	e59f403c 	ldr	r4, [pc, #60]	; 2d0 <_ZN9Scheduler4mainEv+0x2d0>
 290:	e1a00005 	mov	r0, r5
 294:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
 298:	ebfffffe 	bl	e04 <_ZN7Console9printCharEcj>
 29c:	e5f41001 	ldrb	r1, [r4, #1]!
 2a0:	e3510000 	cmp	r1, #0
 2a4:	1afffff9 	bne	290 <_ZN9Scheduler4mainEv+0x290>
 2a8:	eaffffeb 	b	25c <_ZN9Scheduler4mainEv+0x25c>
 2ac:	00000188 	andeq	r0, r0, r8, lsl #3
	...
 2c8:	00000198 	muleq	r0, r8, r1
 2cc:	20003000 	andcs	r3, r0, r0
 2d0:	000001a4 	andeq	r0, r0, r4, lsr #3

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
  e4:	6e6f430a 	cdpvs	3, 6, cr4, cr15, cr10, {0}
  e8:	74736520 	ldrbtvc	r6, [r3], #-1312	; 0x520
  ec:	3a6f6461 	bcc	1bd9278 <kmain+0x1bd7014>
  f0:	00000020 	andeq	r0, r0, r0, lsr #32
  f4:	4243500a 	submi	r5, r3, #10
  f8:	61756720 	cmnvs	r5, r0, lsr #14
  fc:	64616472 	strbtvs	r6, [r1], #-1138	; 0x472
 100:	6e65206f 	cdpvs	0, 6, cr2, cr5, cr15, {3}
 104:	00203a20 	eoreq	r3, r0, r0, lsr #20
 108:	72500a0a 	subsvc	r0, r0, #40960	; 0xa000
 10c:	6d69786f 	stclvs	8, cr7, [r9, #-444]!	; 0xfffffe44
 110:	7270206f 	rsbsvc	r2, r0, #111	; 0x6f
 114:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
 118:	00203a6f 	eoreq	r3, r0, pc, ror #20
 11c:	6f72500a 	svcvs	0x0072500a
 120:	6f736563 	svcvs	0x00736563
 124:	20617920 	rsbcs	r7, r1, r0, lsr #18
 128:	6d726574 	cfldr64vs	mvdx6, [r2, #-464]!	; 0xfffffe30
 12c:	64616e69 	strbtvs	r6, [r1], #-3689	; 0xe69
 130:	45202e6f 	strmi	r2, [r0, #-3695]!	; 0xe6f
 134:	696d696c 	stmdbvs	sp!, {r2, r3, r5, r6, r8, fp, sp, lr}^
 138:	646e616e 	strbtvs	r6, [lr], #-366	; 0x16e
 13c:	6564206f 	strbvs	r2, [r4, #-111]!	; 0x6f
 140:	20616c20 	rsbcs	r6, r1, r0, lsr #24
 144:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0x96c
 148:	2e2e2e61 	cdpcs	14, 2, cr2, cr14, cr1, {3}
 14c:	00000000 	andeq	r0, r0, r0
 150:	4f4e0a0a 	svcmi	0x004e0a0a
 154:	59414820 	stmdbpl	r1, {r5, fp, lr}^
 158:	53414d20 	movtpl	r4, #7456	; 0x1d20
 15c:	4f525020 	svcmi	0x00525020
 160:	4f534543 	svcmi	0x00534543
 164:	000a2e53 	andeq	r2, sl, r3, asr lr
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
 1c0:	3a73746e 	bcc	1cdd380 <kmain+0x1cdb11c>
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
 320:	33363532 	teqcc	r6, #209715200	; 0xc800000
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
 354:	3a676e69 	bcc	19dbd00 <kmain+0x19d9a9c>
 358:	00000020 	andeq	r0, r0, r0, lsr #32
 35c:	54535b0a 	ldrbpl	r5, [r3], #-2826	; 0xb0a
 360:	49545241 	ldmdbmi	r4, {r0, r6, r9, ip, lr}^
 364:	0a5d474e 	beq	17520a4 <kmain+0x174fe40>
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
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	5420554e 	strtpl	r5, [r0], #-1358	; 0x54e
   c:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
  10:	726f6620 	rsbvc	r6, pc, #32, 12	; 0x2000000
  14:	4d524120 	ldfmie	f4, [r2, #-128]	; 0xffffff80
  18:	626d4520 	rsbvs	r4, sp, #32, 10	; 0x8000000
  1c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0x465
  20:	72502064 	subsvc	r2, r0, #100	; 0x64
  24:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
  28:	73726f73 	cmnvc	r2, #460	; 0x1cc
  2c:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  30:	20332e39 	eorscs	r2, r3, r9, lsr lr
  34:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
  38:	39313131 	ldmdbcc	r1!, {r0, r4, r5, r8, ip, sp}
  3c:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0x820
  40:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  44:	5b202965 	blpl	80a5e0 <kmain+0x80837c>
  48:	2f4d5241 	svccs	0x004d5241
  4c:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xd65
  50:	64656464 	strbtvs	r6, [r5], #-1124	; 0x464
  54:	395f342d 	ldmdbcc	pc, {r0, r2, r3, r5, sl, ip, sp}^	; <UNPREDICTABLE>
  58:	6172622d 	cmnvs	r2, sp, lsr #4
  5c:	2068636e 	rsbcs	r6, r8, lr, ror #6
  60:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  64:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
  68:	38313220 	ldmdacc	r1!, {r5, r9, ip, sp}
  6c:	5d383732 	ldcpl	7, cr3, [r8, #-200]!	; 0xffffff38
	...

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
