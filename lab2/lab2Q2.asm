		ORG 00H
		
		MOV 40H,#3FH
		MOV 41H,#06H
		MOV 42H,#5BH
		MOV 43H,#4FH
		MOV 44H,#66H
		MOV 45H,#6DH
		MOV 46H,#7DH
		MOV 47H,#07H
		MOV 48H,#7FH
		MOV 49H,#6FH
		MOV 4AH,#3FH
		
		MOV 50H,40H
		MOV 51H,41H
		MOV 52H,42H
		
AGAIN:	MOV R1,#50H
		
		MOV R6,#02H
LOOP2:	MOV R0,#40H
		MOV R5,#0AH
LOOP1:	MOV R7,#255
MAIN:	MOV A,@R1
		MOV P2,#01H
		MOV P0,A
		ACALL DELAY
		MOV A,@R0
		MOV P2,#02H
		MOV P0,A
		ACALL DELAY
		DJNZ R7,MAIN
		INC R0
		DJNZ R5,LOOP1
		INC R1
		DJNZ R6,LOOP2
		
		MOV R7,#255
LOP:	MOV A,@R1
		MOV P2,#01H
		MOV P0,A
		ACALL DELAY
		MOV A,@R0
		MOV P2,#02H
		MOV P0,A
		ACALL DELAY
		DJNZ R7,LOP
		DEC R1
		
		MOV R6,#02H
LOOP22:	MOV R0,#49H
		MOV R5,#0AH
LOOP11:	MOV R7,#255
MAIN_D:	MOV A,@R1
		MOV P2,#01H
		MOV P0,A
		ACALL DELAY
		MOV A,@R0
		MOV P2,#02H
		MOV P0,A
		ACALL DELAY
		DJNZ R7,MAIN_D
		DEC R0
		DJNZ R5,LOOP11
		DEC R1
		DJNZ R6,LOOP22
		AJMP AGAIN
		
DELAY:	MOV R3,#02H
DEL1:	MOV R2,#0FAH
DEL2:	DJNZ R2,DEL2
		DJNZ R3,DEL1
		RET
		
		END
		