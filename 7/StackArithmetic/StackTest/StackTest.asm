// CodeWriter Hack assembly output file StackArithmetic/StackTest/StackTest.asm


//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 17

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 17

//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@EQ_TRUE0
D;JEQ
@R13
M=0
(EQ_TRUE0)
@R13
D=M
@SP
A=M-1
M=D

//Wrote arithemtic command eq

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 17

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 16

//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@EQ_TRUE1
D;JEQ
@R13
M=0
(EQ_TRUE1)
@R13
D=M
@SP
A=M-1
M=D

//Wrote arithemtic command eq

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 16

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 17

//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@EQ_TRUE2
D;JEQ
@R13
M=0
(EQ_TRUE2)
@R13
D=M
@SP
A=M-1
M=D

//Wrote arithemtic command eq

//push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 892

//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 891

//lt
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

//Wrote arithemtic command lt

//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 891

//push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 892

//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@LT_TRUE1
D;JLT
@R13
M=0
(LT_TRUE1)
@R13
D=M
@SP
A=M-1
M=D

//Wrote arithemtic command lt

//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 891

//push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 891

//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@LT_TRUE2
D;JLT
@R13
M=0
(LT_TRUE2)
@R13
D=M
@SP
A=M-1
M=D

//Wrote arithemtic command lt

//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 32767

//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 32766

//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@GT_TRUE0
D;JGT
@R13
M=0
(GT_TRUE0)
@R13
D=M
@SP
A=M-1
M=D

//Wrote arithemtic command gt

//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 32766

//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 32767

//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@GT_TRUE1
D;JGT
@R13
M=0
(GT_TRUE1)
@R13
D=M
@SP
A=M-1
M=D

//Wrote arithemtic command gt

//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 32766

//push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 32766

//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@R13
M=-1
@GT_TRUE2
D;JGT
@R13
M=0
(GT_TRUE2)
@R13
D=M
@SP
A=M-1
M=D

//Wrote arithemtic command gt

//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 57

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 31

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 53

//add
@SP
AM=M-1
D=M
A=A-1
M=M+D

//Wrote arithemtic command add

//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 112

//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

//Wrote arithemtic command sub

//neg
@SP
A=M-1
M=-M

//Wrote arithemtic command neg

//and
@SP
AM=M-1
D=M
A=A-1
M=M&D

//Wrote arithemtic command and

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//Wrote push/pop command constant 82

//or
@SP
AM=M-1
D=M
A=A-1
M=M|D

//Wrote arithemtic command or

//not
@SP
A=M-1
M=!M

//Wrote arithemtic command not
(END)
@END
0;JMP

//VMTranslator: finished translation.
