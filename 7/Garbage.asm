// CodeWriter Hack assembly output file ./Garbage.asm

@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@LT_TRUE0
D;JLT
@R13
M=0
(LT_TRUE0)
@R13
D=M
@SP
A=M-1
M=D

//The thing I want to write is lt
