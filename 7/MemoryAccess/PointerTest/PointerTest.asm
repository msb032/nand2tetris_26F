// CodeWriter Hack assembly output file MemoryAccess/PointerTest/PointerTest.asm


//push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 3030

//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

//Wrote push/pop command pointer 0

//push constant 3040
@3040
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 3040

//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

//Wrote push/pop command pointer 1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 32

//pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

//Wrote push/pop command this 2

//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 46

//pop that 6
@6
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

//Wrote push/pop command that 6

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command pointer 0

//push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command pointer 1

//add
@SP
AM=M-1
D=M
A=A-1
M=M+D

//Wrote arithemtic command add

//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command this 2

//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

//Wrote arithemtic command sub

//push that 6
@6
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command that 6

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
