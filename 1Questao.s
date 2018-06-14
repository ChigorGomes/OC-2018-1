AREA_Variaveis
var1				DCD		100
var2				DCD		500
				ADR		R1,var1
				LDR		R1,[R1]
				ADR		R2,var2
				LDR		R2,[R2]
				
AREA_Instrucoes
				CMP		R1,R2
				BLE		menor
				MOV		R0,R1
				B		FIM
menor			MOV		R0,R2
FIM
