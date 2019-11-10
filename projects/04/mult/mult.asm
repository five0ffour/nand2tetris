// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Solution
//  Author: Michael Galarneau
//  Date:  November 9, 2019

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Logic:
// R2 = R0 * R1
// for (i=0, R2=0; (i < R1); i++) {
//   R2 = R2 + R0   
//  }

// Note:  The operands R0 and R1 need to be poked into memory manually
//    R0 = operand 1
//    R1 = operand 2
//    R2 = value of R0 * R1 

    @i          // initialize the loop counter
    M=0         // i = 0
    @R2         // initialize the output sum
    M=0         // sum=0

(LOOP)
    @i          // check the loop test condition
    D=M         // D=i
    @R1
    D=D-M       // D=i-R1
    @END
    D;JGE       // if (i - R1) < 0 goto END

    @R0         // Do the summation math for this increment
    D=M         // D=R0
    @R2         // sum
    M=D+M       // sum = sum + R0

    @i          // incrememt the loop counter
    M=M+1       // i=i+1

    @LOOP
    0;JMP       // Goto LOOP
    
(END)
    @END
    0;JMP       // Infinite LOOP

