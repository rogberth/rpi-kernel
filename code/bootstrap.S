.global init
.extern kmain

init:	
@IRQ y FIQ desactivados en este modo

mrs r0,cpsr
and r0,r0,#0xFFFFFF00
orr r0,r0,#0xC2
msr cpsr_c,r0
mov sp, #0x2000

@Volver a modo supervisor y Habilitar IRQ en el CPSR
mrs r0,cpsr
and r0,r0,#0xFFFFFF00
orr r0,r0,#0x13
msr cpsr,r0
mov sp, #0x8000



;@ Invoke our main C++ entrypoint.
	bl kmain

;@ Loop forever
	b hang$

hang$:
	b hang$



