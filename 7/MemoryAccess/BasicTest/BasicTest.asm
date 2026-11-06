// CodeWriter Hack assembly output file MemoryAccess/BasicTest/BasicTest.asm


//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 10

//pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

//Wrote push/pop command local 0

//push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 21

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 22

//pop argument 2
@2
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

//Wrote push/pop command argument 2

//pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

//Wrote push/pop command argument 1

//push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 36

//pop this 6
@6
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

//Wrote push/pop command this 6

//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 42

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 45

//pop that 5
@5
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

//Wrote push/pop command that 5

//pop that 2
@2
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

//Wrote push/pop command that 2

//push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 510

//pop temp 6
@SP
AM=M-1
D=M
@R11
M=D

//Wrote push/pop command temp 6

//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command local 0

//push that 5
@5
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command that 5

//add
@SP
AM=M-1
D=M
A=A-1
M=M+D

//Wrote arithemtic command add

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command argument 1

//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

//Wrote arithemtic command sub

//push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command this 6

//push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command this 6

//add
@SP
AM=M-1
D=M
A=A-1
M=M+D

//Wrote arithemtic command add

//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

//Wrote arithemtic command sub

//push temp 6
@R11
D=M
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command temp 6

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
