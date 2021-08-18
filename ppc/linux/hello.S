	.text
	.global _start
_start:
	li	0, 4		# sys_write
	li	3, 1		# stdout
	lis	4, msg@ha	# address of msg (buffer)
	addi	4, 4, msg@l
	li	5, len		# buffer length
	sc

	li	0, 1		# sys_exit
	li	3, 0		# exit code
	sc

	.data
msg:	.ascii "Hello World!\n"
	.equ len, . - msg


