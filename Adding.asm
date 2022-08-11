ORG 0000h
MOV PSW,#00h
MOV R0,#2H ;Moving 2H in R0 register
MOV A,R0 ;Moving data of R0 in A (Accumulator)
MOV R0,#15H ;Moving AH in R0 register
ADD A,R0; Adding Accumulator and R0 register values
END