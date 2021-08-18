	.section .text
	.global _start
_start:
	mov	%r7, #4		/* sys_write */
	mov	%r0, #1		/* stdout */
	ldr	%r1, =msg	/* buffer to write */
	mov	%r2, #len	/* length of buffer */
	swi	#0

	mov	%r7, #1		/* sys_exit */
	mov	%r0, #0		/* exit code */
	swi	#0

	.section .data
msg:	.ascii "Hello World!\n"
	.equ len, . - msg

