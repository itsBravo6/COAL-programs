.data
arg1:	.word 3
arg2: 	.word 1
arg3: 	.word 1

.text
	j main	

func:
		mul a0,a0,a1
		sub a1,a1,a2
		bnez a1,func
		ret



main:
		lw a0,arg2
		lw a1,arg1
		lw a2,arg3
		call func

end:
	li a7,10
	ecall