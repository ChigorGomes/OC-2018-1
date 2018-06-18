AREA_Variaveis
vet1				DCD		1,2,3 ; vetA
vet2				DCD		3,2,1 ; VetB
				ADR		R1,vet1
				ADR		R2,vet2
				
				mov		R3,#0 ; soma=0
				mov		R4,#0 ;i=0
				MOV		R6,#0 ; PC+4
AREA_Instrucoes
				
LOOP1
				
				CMP		R4,#3 ; i< TAM
				BGE		done1
				LDR		R7,[R1,R6] ; VetA[j]
				mov		R5,#0 ;j=0;
LOOP2
				CMP		R5,R7 ; j<vetA[j]
				BGE		done2
				LDR		R8,[R2,R6] ; vetB[j]
				ADD		R3,R3,R8 ; soma+=vetB[j]
				ADD		R5,R5,#1 ; j++
				
				
				
				B		LOOP2 ; Volta para a condicao acima LOOP2
done2			ADD		R4,R4,#1 ; i++
				ADD		R6,R6,#4 ; PC+4
				B		LOOP1 ; volta para a condicao acima LOOP1
done1			MOV		LR,R3 ; Mostra o resultado em LR da soma
