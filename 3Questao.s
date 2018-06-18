AREA_Variaveis
dividendo			DCD		6 ; valor que sera verifica se eh par ou impar
divisor			DCD		2 ; constante nao modifica, pois queremos dividir o numero por 2
quociente			DCD		0
				ADR		R1,dividendo
				LDR		R1,[R1]
				ADR		R2,divisor
				LDR		R2,[R2]
				ADR		R3,quociente
				LDR		R3,[R3]
				
AREA_Instrucoes
				;		CODIGO SUBTRACAO SUCESSIVA PARA DIVISAO
				mov		R4,#0 ; i=0
				ADD		R5,R1,#0 ; variavel aux que recebe o valor de R1
LOOP1
				CMP		R2,R1 ; verifica se R2 > R1
				BGT		done1
				SUB		R4,R1,R2 ; subtracao= R1-R2
				
				ADD		R1,R4,#0 ; dividendo= R4 que no caso eh o resto
				add		R3,R3,#1 ; i++
				B		LOOP1 ; volta para a condicao acima
done1
				
				
				;CODIGO	VERIFICA SE EH PAR OU IMPAR
				CMP		R4,#0 ; verifica se o resto da divisao eh 0
				BNE		diferente ; se for diferente entao salta para outra instrucao
				MOV		R6,#0 ; K=0
				MOV		R7,#0 ; variavel soma
				
				;		CODIGO SOMA SUCESSIVA PARA MULTIPLICACAO
LOOP2
				CMP		R5,R6 ; verifica se R5 eh menor que R6
				BLE		DONE2 ; desvia o fluxo
				ADD		R7,R7,R5 ; soma+=aux
				ADD		R6,R6,#1 ; k++
				B		LOOP2 ; volta para a condicao acima
				
				
				
diferente			ADD		R8,R5,#1 ; caso for diferente R8=aux+1
				MOV		R6,#0 ; k=0
				MOV		R7,#0 ; usando a mesma variavel soma
				MOV		R10,#2 ; variavel constante 2
LOOP3
				CMP		R10,R6 ; verifica se R10<R6
				BLE		DONE3 ; desvia o fluxo
				ADD		R7,R7,R8 ; soma+=R8
				ADD		R6,R6,#1 ; k++
				B		LOOP3 ; volta para a condicao acima
DONE2			ADD		R0,R7,#2 ; PAR -> adiciona em R0=(numero*numero)+2
				B		PAR
DONE3			ADD		R0,R7,#0 ; IMPAR -> adiciona em R0=soma no caso (numero+1)*2
				B		IMPAR
PAR				MOV		LR,R0
IMPAR			MOV		LR,R0
				
				
				
				
