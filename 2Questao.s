AREA_Variaveis
soma				DCD		0 ; variavel que guardara o resultado da soma de 0 ate 100
				ADR		R0,soma
				LDR		R0,[R0]
				
				
AREA_Instrucoes
				
LOOP
				CMP		R0,#100 ; verifica se R0 > 100
				BGE		DONE ; desvio da condicao
				ADD		R0,R0,#1 ; soma+=1
				B		LOOP ; volta para a condicao
DONE				MOV		LR,R0 ; guarda em LR o resultado da soma
