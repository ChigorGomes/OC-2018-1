AREA_Variaveis
soma1			DCD		5
soma2			DCD		4
				ADR		R1,soma1
				LDR		R1,[R1]
				ADR		R2,soma2
				LDR		R2,[R2]
				
AREA_Instrucoes
				mov		R3,#0
				mov		R4,#0
LOOP
				CMP		R2,R3
				BLE		done
				add		R4,R4,R1
				add		R3,R3,#1
				B		LOOP
done
				MOV		LR,R4
