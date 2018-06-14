.global main
.Lout:
	.asciz "%d\n"
		main:
		mov		R1,#1
		mov		R2,#2

		MUL R1,R1,R2
	ldr R0,=.Lout
	bl printf
	
		.end
