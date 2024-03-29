// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@RO
D=M    // Input the first value 

@R1
D=M    // Input the second value

@R2  
M=0      // Initialize product to 0

(LOOP)

@R1     // If R1 <= 0, terminate.
D=A
@END
D;JLE
// Add R0 to R2.
@R0
D=M
@R2
M=M+D
// Decrement R1.
@R1
M=M-1
// Loop.
@LOOP
0;JMP
(END)
// Terminate.
@END
0;JMP