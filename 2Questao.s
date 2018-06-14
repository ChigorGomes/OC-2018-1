AREA_Variaveis
var1				DCD		0
				ADR		R0,var1
				LDR		R0,[R0]
				
				
AREA_Instrucoes
				
LOOP
				CMP		R0,#10
				BGE		DONE
				add		R0,R0,#1
				B		LOOP
DONE
