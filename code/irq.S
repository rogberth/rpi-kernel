.global init_entry_point

.extern init
.extern irq_handler

;@ This is the actual entr point to the application.
;@ I need to look into how to do this another way, but it seems like
;@ this is the most reliable method for copying the interrupt handlers
;@ into the IVT.
init_entry_point:

	;@ Basically each line represents the value to a branch command.
	;@ Since this is the first thing, we know that our _relative_
	;@ interrupt vector table will always be at the start of our
	;@ kernel ( location: 0x8000 ).
	
	;@ Reset Interrupt
	ldr pc, reset_handler
	
	;@ Undefined Instruction
	ldr pc, basic_handler
	
	;@ Software Interrupt
	ldr pc, basic_handler_swi
	
	;@ Prefetch Abort
	ldr pc, basic_handler
	
	;@ Data Abort
	ldr pc, basic_handler
	
	;@ ?? Looks like the ARM ARM specifys that
	;@ there is just a casual hole here, so I guess we
	;@ are filling it with another handler. Though I don't
	;@ really know what calls this.
	ldr pc, basic_handler
	
	;@ IRQ
	ldr pc, basic_handler_irq
	
	;@ FIQ
	ldr pc, basic_handler

;@ Next up is a trick to basically force the compiler
;@ to store the branch command as a value
;@ into the respective register.
reset_handler:
	.word reset

basic_handler:
	.word arm_interrupt_handler
basic_handler_irq:
	.word arm_interrupt_handler_irq
basic_handler_swi:
	.word arm_interrupt_handler_swi

@Aquí se guardará la dirección independientemente del modo
return_addr:
	.word 0x0
saved_cpsr:
	.word 0x0

;@ Then this is our "reset" function
;@ which is what will actually get automatically
;@ called since the program is going to flow down
;@ into this method.
reset:
	;@ So now we setup everything to copy the values over.
	mov r0, #0x8000
	mov r1, #0x0000

	;@ And then we do the actual data copy.
	ldmia r0!,{r2,r3,r4,r5,r6,r7,r8,r9}
	stmia r1!,{r2,r3,r4,r5,r6,r7,r8,r9}
	ldmia r0!,{r2,r3,r4,r5,r6,r7,r8,r9}
	stmia r1!,{r2,r3,r4,r5,r6,r7,r8,r9}
	
	;@ And then call the bootstrapper init function.
	;@ NOTE: I delegated these two assembly files because I don't
	;@ want to marry my kernel to the ivt setup code.

	b init
	bx lr
	
hang:
	b hang


@IRQ HANDLER
arm_interrupt_handler_irq:
	b irq_handler


@BASIC HANDLER
arm_interrupt_handler:
	sub lr, lr, #4
	stmfd sp!, {r0-r12,lr}
	bl basic_handler
	ldmfd sp!, {r0-r12,pc}^

	
	
@SVC HANDLER
arm_interrupt_handler_swi:
	@este salto primero para no llenar innecesariamente la pila
	teq r5,#1
	beq swi_svmode
	@r0 contiene el número de svc
	stmfd sp!, {r0-r12,lr}

	teq r5,#0
	beq swi_case_0
	teq r5,#2
	beq swi_case_2
	teq r5,#3
	beq swi_case_3

	swi_case_0:
	bl swi_writer
	b arm_swi_end

	swi_case_2:
	bl swi_endTask
	b arm_swi_end

	swi_case_3:
	bl swi_addTask
	b arm_swi_end


	
	arm_swi_end:
	;@ Restore to the original caller.
	ldmfd sp!, {r0-r12,pc}^




.globl armLoadContext
armLoadContext:
@en r0 viene el sInitReserved del proceso
	ldr r0,=stackPointer
	ldr r0,[r0]
	sub r0,r0,#0x44
	ldr r1,[r0]
	add r0,r0,#0x4
	msr CPSR, r1
	ldmfd r0, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,pc}



.globl armRun
armRun:
@en r0 viene la dirección del proceso
	@Ponemos el user mode en SPSR
	msr SPSR,#0x10
	stmfd sp!,{r0}
	ldmfd sp, {pc}^



.globl armClearScreen
armClearScreen:
	
	addr .req r0
	
	colour .req r1
	ldr colour,=0x000000
	
	@bufferSize
	size .req r2
	ldr size,[addr,#36]
	@framePtr
	ldr addr,[addr,#32]

	armClearScreenloop:
		str r1,[addr]
		add addr,addr,#4
		sub size,size,#4
		cmp size,#0
		bne armClearScreenloop



	.unreq colour
	.unreq size
	.unreq addr
	mov pc,lr


