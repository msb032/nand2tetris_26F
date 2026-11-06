// CodeWriter Hack assembly output file MemoryAccess/StaticTest/StaticTest.asm


//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 111

//push constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 333

//push constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 888

//pop static 8
@SP
AM=M-1
D=M
@StaticTest.8
M=D

//Wrote push/pop command static 8

//pop static 3
@SP
AM=M-1
D=M
@StaticTest.3
M=D

//Wrote push/pop command static 3

//pop static 1
@SP
AM=M-1
D=M
@StaticTest.1
M=D

//Wrote push/pop command static 1

//push static 3
@StaticTest.3
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command static 3

//push static 1
@StaticTest.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command static 1

//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

//Wrote arithemtic command sub

//push static 8
@StaticTest.8
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command static 8

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
