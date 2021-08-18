	.section .text
	.global _start
_start:
	mov	$4, %eax	# sys_write
	mov	$1, %ebx	# stdout
	lea	msg, %ecx	# buffer to write
	mov	$len, %edx	# buffer length
	int	$0x80

	mov	$1, %eax	# sys_exit
	mov	$0, %ebx	# exit code
	int	$0x80

	.section .data
msg:	.ascii "Hello World!\n"
	.equ len, . - msg


