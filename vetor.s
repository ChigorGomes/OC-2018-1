vet		fill		12
		adr		R1,vet
		
		mov		R2,#0
		mov		R6,#1
		mov		R5,#0
		
LOOP
		CMP		R2,#3
		BGT		DONE
		STR		R6,[R1,R5]
		ADD		R2,R2,#1
		ADD		R5,R5,#4
		B		LOOP
DONE
		ldr		r7,[R1,#16]
		
