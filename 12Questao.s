vet		DCD		7,5,2,1,1,2,4 ; Vetor
		ADR		R0,vet

		MOV R1,#1 ; k=1
		MOV R2,#0 ; j=0
		MOV R3,#0 ; aux=0
		MOV R4,#0 ; PC+4
		MOV R5,#4 ;PC2+4
		
LOOP1
		CMP		r1,#7 ; k<n
		BGE		done1 ;
		ADD		R1,R1,#1 ; k++
		
LOOP2
		CMP		r4,#6 ;j<n-1 
		BGE		done2
		LDR		R6,[R0,R4] ; VET[j]
		LDR		R7,[R0,R5]; VET[J+1]
		
		
		CMP R6,R7
		BGT menor
		ADD R3,R6,#0
		
		
		
		
		ADD R4,R4,#4 ; PC1+4
		ADD R5,R5,#4 ; PC2+4
		
		B		LOOP2
		
done2
done1	B		LOOP1
		
