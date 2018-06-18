vet		fill		400 ; vetor de TAM 100
array	DCD		0 ; representando o array do exemplo com tamanho fixo
		ADR		R0,vet
		
preenche
		MOV		R2,#0 ;i=0
		MOV		R3,#0 ; PC+4
		MOV		R4,#0 ; VET[X]
		MOV		R5,#0 ; K=0
		MOV		R6,#0 ; S
		MOV		R7,#0 ; PC2+4
		
LOOP
		CMP		R2,#100 ; Verifica se i>100
		BGE		LOOP2  ;  desvia o fluxo, caso a condicao nao for satisfeita
		STR		R4,[R0,R3] ; Adiciona na posicao Vet[x]=R4
		ADD		R2,R2,#1 ; i++
		ADD		R4,R2,#0 ; R4=i
		ADD		R3,R3,#4 ; PC+4
		B		LOOP ; Volta para a condicao acima
		
		
LOOP2
		CMP		R5,#100 ; verifica se k>100
		BGE		FIM ;  desvia o fluxo, caso a condicao nao for satisfeita
		LDR		R4,[R0,R7] ; Pega o elemento da posicao vet[x]
		ADD		R6,R6,R4 ; S=S+VET[X]
		ADD		R5,R5,#1 ; k++
		ADD		R7,R7,#4  ; PC2+4
		B		LOOP2 ; Volta para a condicao acima
		
		
FIM
		MOV		LR,R6 ; Coloca em LR  a soma de S=S+VET[X]
		
		
