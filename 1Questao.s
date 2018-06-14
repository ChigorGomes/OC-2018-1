AREA_Variaveis
var1				DCD		100 ; valor de R1
var2				DCD		500 ;valor de R2
				ADR		R1,var1
				LDR		R1,[R1]
				ADR		R2,var2
				LDR		R2,[R2]
				
AREA_Instrucoes
				CMP		R1,R2 ; verifica se R1 > R2
				BLE		menor ; se R1 nao for maior,entao R2 e maior desvia o fluxo
				MOV		LR,R1 ; mostra em LR o maior
				B		FIM ; fim da condicao
menor			MOV		LR,R2 ; mostra em LR o maior
FIM
