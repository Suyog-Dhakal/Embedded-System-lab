ORG 00H
MOV A,#6BH
MOV P0,A

MOV R1,#04H
LOOP1: RR A
DJNZ R1,LOOP1

MOV P1,A
END