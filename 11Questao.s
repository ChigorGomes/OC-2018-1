AREA_Variaveis
dividendo			DCD		9
divisor			DCD		3
quociente			DCD		0
				ADR		R1,dividendo
				LDR		R1,[R1]
				ADR		R2,divisor
				LDR		R2,[R2]
				ADR		R3,quociente
				LDR		R3,[R3]
				
AREA_Instrucoes
				mov		R4,#0
LOOP
				CMP		R2,R1
				BGT		done
				SUB		R4,R1,R2
				ADD		R5,R1,#0
				ADD		R1,R4,#0
				add		R3,R3,#1
				B		LOOP
done
				
				MOV		LR,R3
				
