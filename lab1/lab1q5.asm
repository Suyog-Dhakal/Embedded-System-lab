ORG 00H
		MOV 50H,#0D6H
		MOV 51H,#0F2H
		MOV 52H,#0E4H
		MOV 53H,#0A8H
		MOV 54H,#0CEH
		MOV 55H,#0B9H
		MOV 56H,#0FAH
		MOV 57H,#0AEH
		MOV 58H,#0BAH
		MOV 59H,#0CCH

		MOV R7,#09H
		MOV R0,#50H
		MOV R5,50H
		MOV R6,50H

AGAIN:	INC R0
		ACALL SMLG
		ACALL LARG
		DJNZ R7,AGAIN
		MOV P0,R5
		MOV P1,R6

SMLG:	CLR C
		MOV A,R5
		SUBB A,@R0
		JC SKIPS
		MOV A,@R0
		MOV R5,A
SKIPS:	RET

LARG:	CLR C
		MOV A,R6
		SUBB A,@R0
		JNC SKIPG
		MOV A,@R0
		MOV R6,A
SKIPG:	RET
		END