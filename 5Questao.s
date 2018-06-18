AREA_Variaveis
vetSalarios		DCD		100,100,100,100,100,100,100 ; conteudo do vetSalarios
total			DCD		0
numFuncionarios	DCD		7
				ADR		R1,vetSalarios
				ADR		R2,total
				LDR		R2,[R2]
				ADR		R3,numFuncionarios
				LDR		R3,[R3]
				
AREA_Instrucoes
				MOV		R4,#0 ; i=0
				MOV		R5,#0 ; k=0 que sera o iterador do vetSalarios
LOOP
				LDR		R6,[R1,R5] ;acessa o conteudo do vetor, pc+4
				CMP		R3,R4 ; verifica se 7 e maior que i
				BLE		FIM ; desvia se condicao for satisfeita
				ADD		R2,R2,R6 ; total+=vetSalarios[i]
				ADD		R4,R4,#1 ; pc+4
				ADD		R5,R5,#4 ; itera de 4 em 4 bytes
				B		LOOP
				
FIM				MOV		LR,R2 ; guarda o valor de R2 no registrador LR
				
