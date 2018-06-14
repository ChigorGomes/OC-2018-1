AREA_Variaveis
ant				DCD		1 ; variavel com o valor anterior
atual			DCD		1 ; variavel com o valor atual
soma				DCD		0 ; variavel que vai somar a serie
				ADR		R0,ant
				LDR		R0,[R0]
				ADR		R1,atual
				LDR		R1,[R1]
				ADR		R2,soma
				LDR		R2,[R2]
				
				
AREA_Instrucoes
				MOV		R3,#3 ; i=3, pois a iteracao ate 3 o valor nao muda que eh 1
LOOP
				
				CMP		R3,#10 ; verifica se 3 eh menor ou igual a 3
				BGT		DONE
				ADD		R2,R0,R1 ; soma=ant+atual
				ADD		R0,R1,#0 ; ant=atual
				ADD		R1,R2,#0 ; atual=soma
				ADD		R3,R3,#1 ; i++
				B		LOOP ; volta para condicao acima
				
DONE
				MOV		LR,R2 ; coloca em LR o resultado da serie de n=10 LR=55
