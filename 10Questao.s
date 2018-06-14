AREA_Variaveis
xa				DCD		5 ; valor da variavel que sera o multiplicando
ya				DCD		4 ;  valor da variavel que sera o multiplicador
				ADR		R1,xa
				LDR		R1,[R1]
				ADR		R2,ya
				LDR		R2,[R2]
				
AREA_Instrucoes
				mov		R3,#0 ; i=0
				mov		R4,#0 ;soma=0
LOOP
				CMP		R2,R3 ; verifica se o ya<R3
				BLE		done ; desvia o fluxo
				add		R4,R4,R1 ; soma+=x no caso, como se fosse soma=xa+xa+xa...
				add		R3,R3,#1 ; i++
				B		LOOP ; volta para a condicao acima
done
				MOV		LR,R4 ; adiciona em LR o valor da multiplicacao nesse ex. 20
