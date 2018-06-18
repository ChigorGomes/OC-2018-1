vet		DCD		7,5,2,1,1,3,4 ; Vetor
		ADR		R0,vet
		
		MOV		R1,#1 ; k=1
		
		
		
LOOP1
		CMP		r1,#7 ; k<n
		BGE		done1 ;
		
		MOV		R2,#0 ; j=0
		MOV		R3,#0 ; aux=0
		MOV		R4,#0 ; PC+4
		MOV		R5,#4 ;PC2+4
		
		
LOOP2
		CMP		r2,#6 ;j<n-1
		BGE		done2
		LDR		R6,[R0,R4] ; VET[j]
		LDR		R7,[R0,R5] ; VET[J+1]
		
		
		CMP		R6,R7 ; vetor[j]>vetor[j+1]
		BLE		done3
		ADD		R3,R6,#0 ; aux=vetor[j]
		STR		R7,[R0,R4] ; vetor[j]=vetor[j+1]
		STR		R3,[R0,R5] ; vetor[j+1]=aux
		
		
		
		ADD		R2,R2,#1 ; j++
		ADD		R4,R4,#4 ; PC1+4
		ADD		R5,R5,#4 ; PC2+4
		
		
		B		LOOP2 ; volta para a condicao acima LOOP2
done3	ADD		R2,R2,#1 ; senao j++
		
done2	ADD		R1,R1,#1 ; k++
		B		LOOP1 ; volta para a condicao acima LOOP1
		
done1
		LDR		LR,[R0,#0] ; Mostra em LR o conteudo do vetor[i]
		
