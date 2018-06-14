AREA_Variaveis
dividendo			DCD		4
divisor			DCD		2
quociente			DCD		0
				ADR		R1,dividendo
				LDR		R1,[R1]
				ADR		R2,divisor
				LDR		R2,[R2]
				ADR		R3,quociente
				LDR		R3,[R3]
				
AREA_Instrucoes
				mov		R4,#0
				ADD		R5,R1,#0
LOOP1
				CMP		R2,R1
				BGT		done1
				SUB		R4,R1,R2
				
				ADD		R1,R4,#0
				add		R3,R3,#1
				B		LOOP1
done1
				
				
				
				CMP		R4,#0
				BNE		diferente
				MOV		R6,#0
				MOV		R7,#0
LOOP2
				CMP		R5,R6
				BLE		DONE2
				ADD		R7,R7,R5
				ADD		R6,R6,#1
				B		LOOP2
				
DONE2			ADD		R0,R7,#2
				
diferente			ADD		R8,R5,#1
				MOV		R6,#0
				MOV		R7,#0
				MOV		R10,#2
LOOP3
				CMP		R10,R6
				BLE		DONE3
				ADD		R7,R7,R8
				ADD		R6,R6,#1
				B		LOOP3
DONE3			ADD		R0,R7,#0
				
				
				
