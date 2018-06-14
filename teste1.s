AREA_Variaveis
vet1				DCD		1,2,3
vet2				DCD		4,2,3
				ADR		R1,vet1
				ADR		R2,vet2
				
				
AREA_Instrucoes
				mov		R3,#0
				mov		R4,#0
				mov		R5,#0
				mov		R10,#0
LOOP1
				LDR		R6,[R1,R5]
				LDR		R7,[R2,R5]
				CMP		R3,R7
				BGE		done1
				
				add		R4,R4,R6
				add		R3,R3,#1
				add		R5,R5,#4
				B		LOOP1
done1
