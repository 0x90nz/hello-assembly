	.section .text
	.global _start
_start:
	mov	$1, %rax	# sys_write
	mov	$1, %rdi	# stdout
	lea	msg, %rsi	# buffer to write
	mov	$len, %rdx	# buffer length
	syscall

	mov	$60, %rax	# sys_exit
	mov	$0, %rdi	# exit code
	syscall

	.section .data
msg:	.ascii "Hello World!\n"
	.equ len, . - msg


