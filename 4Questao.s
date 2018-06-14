AREA_Variaveis
				MOV		R0,#1000
				MOV		R1,#700
AREA_Instrucoes
				cmp		R0,R1
				BLS		ELSE
				MOV		LR,R1
				B		FIM
ELSE
				MOV		LR,R0
FIM
