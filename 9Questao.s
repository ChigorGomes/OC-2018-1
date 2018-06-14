AREA_Variaveis
ant				DCD		1
atual			DCD		1
soma				DCD		0
				ADR		R0,ant
				LDR		R0,[R0]
				ADR		R1,atual
				LDR		R1,[R1]
				ADR		R2,soma
				LDR		R2,[R2]
				
				
AREA_Instrucoes
				MOV		R3,#3
LOOP
				
				CMP		R3,#10
				BGT		DONE
				ADD		R2,R0,R1
				ADD		R0,R1,#0
				ADD		R1,R2,#0
				ADD		R3,R3,#1
				B		LOOP
				
DONE
				mOv		LR,R2
