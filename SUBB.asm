;Subtract with carry
ORG 0000h
MOV PSW,#10h
MOV R0,#8H
MOV A,R0
MOV R1,#3H
SUBB A,R1;Subtracting the data of R1 and R2
END