num		DCD		7,5,2,1,1,2,4
		
aux		DCD		0
		ADR		R1,num
		
		ADR		R2,aux
		LDR		R2,[R2]
		
		mov		R3,#0
		
LOOP1
		
		cmp		r3,#7
		BGT		done1
		add		R3,R3,#1
		Mov		R4,#1
		mov		R5,#0
		mov		R7,#4
		
LOOP2
		
		
		cmp		r4,#7
		BGT		done2
		LDR		R6,[R1,R5]
		LDR		R8,[R1,R7]
		ADD		R2,R6 ,#0
		
		ADD		R4,R4,#1
		add		r5,r5,#4
		add		r7,r7,#4
		B		LOOP2
		
done2
done1	B		LOOP1
		
