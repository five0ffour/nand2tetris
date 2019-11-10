// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/add.asm

// Solution
//  Author: Michael Galarneau
//  Date:  November 9, 2019

// Adds the values of 1 to 100
// Recreated from Chapter 4, page 65 of "The Elements of Computing Systems"

// Adds 1+...+100

    @i          // i refers to some memory location
    M=1         // i=1
    @sum        // sum refers to some memory location
    M=0         // sum=0
(LOOP)
    @i
    D=M         // D=i
    @100
    D=D-A       // D=i-100
    @END
    D;JGT       // if (i-100)>0 goto END
    @i
    D=M         // D=i
    @sum        
    M=D+M       // sum = sum + i
    @i
    M=M+1       // i=i+1
    @LOOP
    0;JMP       // Goto LOOP
(END)
    @END
    0;JMP       // Infinite LOOP


