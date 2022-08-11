ORG 0000h
MOV PSW,#08h
MOV R0,#49H
MOV A,R0 ;Moving the data from R0 into Accumulator A
MOV R1, #4CH
ADDC A,R1; Addition with carry
END