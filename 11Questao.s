AREA_Variaveis
dividendo			DCD		9 ; dividendo
divisor			DCD		3 ; divisor como na  formula dividendo/divisor
quociente			DCD		0 ; variavel que guarda o resultado da subtracao
				ADR		R1,dividendo
				LDR		R1,[R1]
				ADR		R2,divisor
				LDR		R2,[R2]
				ADR		R3,quociente
				LDR		R3,[R3]
				
AREA_Instrucoes
				mov		R4,#0 ;sub=0
LOOP
				CMP		R2,R1 ; verica se R2>R1
				BGT		done ; desvia o fluxo
				SUB		R4,R1,R2 ; sub=dividendo-divisor
				ADD		R5,R1,#0 ; resto=dividendo
				ADD		R1,R4,#0 ; dividendo=sub
				add		R3,R3,#1 ; quociente++
				B		LOOP
done
				
				MOV		LR,R3 ; coloca em LR o valor da subtracao que no caso eh o quociente
				
