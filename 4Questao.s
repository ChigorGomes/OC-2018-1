AREA_Variaveis
num1				DCD		1000 ; variavel1 definida com esse valor
num2				DCD		70000  ; variavel2 definida com esse valor
				ADR		R1,num1
				LDR		R1,[R1]
				ADR		R2,num2
				LDR		R2,[R2]
				
				
AREA_Instrucoes
				cmp		R1,R2 ; verifica se R1<=R2
				BLS		ELSE
				MOV		LR,R2 ; guarda em LR caso  R2 caso eh menor igual
				B		FIM ; desvia o fluxo
ELSE
				MOV		LR,R1 ; guarda em LR caso R1 eh menor ou igual
FIM ; fim da execucao
