// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

@R0
D=M

// the counter is storing the value of R0
@counter
M=D

//setting R2 to zero
@R2
M=0

//if counter is equal to zero 
(LOOP)
@counter
D=M
//This basically says that if the counter is equal to zero then you can jump to the (END) section
@END
D;JEQ

//calling R1 and adding it to R2
@R1
D=M
@R2
M=D+M

//decrementing the counter
@counter
M=M-1
//jumping back to the loop
@LOOP
//0;JMP always means to jump so always jumps
0;JMP

//This is a infinite loop to keep the program from running the next stuff.
(END)
@END
0;JMP





