// CodeWriter Hack assembly output file StackArithmetic/SimpleAdd/SimpleAdd.asm


//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 7

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 8

//add
@SP
AM=M-1
D=M
A=A-1
M=M+D

//Wrote arithemtic command add
(END)
@END
0;JMP

//VMTranslator: finished translation.
