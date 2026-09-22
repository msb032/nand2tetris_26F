// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

//This is a loop that will see the keyboard input
(LOOP)
@KBD
D=M

//if the keyboard input is zero then it will jump to the @LOOP meaning there is a infinite loop until a key is pressed
//Once a key is pressed it will fall through the loop and go to the next section of code
@LOOP
D;JEQ

//This section is making the screen black
//This is the screen address in D
@SCREEN
D=A

//This is the current address from A in the variable CA
@CA
M=D

//THis is the fillloop that will fill the screen with black
(FILLLOOP)
//This will change the first address in the screen black
@CA
A=M
M=-1

//This will change the address to be one plus the last
@CA
M=M+1

//This will check the address to see if it is equal to the last address in the screen
@CA
D=M
//The final value for the last register in the screen is 24576 so if D is less than A then it will jump to the @FILLLOOP
@24576
D=A-D

//This is the jump for if the above expression is greater than zero.
@FILLLOOP
D;JGT

//This is a loop that will see the keyboard input for a second time
(LOOPTWO)
@KBD
D=M

//if the keyboard input is zero then it will jump to the @LOOPTWO meaning that you must not click anything to continue with the code
@LOOPTWO
D;JNE

//This is the screen address in D
@SCREEN
D=A

//This is the current address from A in the variable
@CA
M=D

//This is the not fill loop which will remove all the color from the screen and make it white
(NOTFILLLOOP)
//This will change the first address in the screen white by using a 1
@CA
A=M
M=0

//This will change the address to be one plus the last
@CA
M=M+1

//This will check the address to see if it is equal to the last address in the screen
@CA
D=M
@24576
D=A-D

//This is the jump for if the above expression is greater than zero same as above
@NOTFILLLOOP
D;JGT



//This is the loop that will always go back to the @LOOP and check the keyboard restarting the checking system
@LOOP
0;JMP

