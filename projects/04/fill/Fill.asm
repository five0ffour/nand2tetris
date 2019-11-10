// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Solution
//  Author: Michael Galarneau
//  Date:  November 9, 2019

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// pseudo-code of higher order language
//
// BLACK = 1
// WHITE = 0
// SCREEN = 16384
// KEY = 24576
// SCREENSIZE = 8192
// loc = 0
// while (true) {
//     keypressed = KEY[0]
// 
//     if (keypressed != 0)
//        brush = BLACK
//     else 
//        brush = WHITE
// 
//     SCREEN[loc] = brush
//     loc = loc + 1
// 
//     if loc >= SCREENSIZE
//        loc = 0
// 
// }  /* infinite loop */


    // set up constants
    @BLACK          // black pixel (for when key is pressed)
    M=-1
    @WHITE          // white pixel (clear screen)
    M=0

    @16384          // Set Screen RAM address
    D=A
    @SCREENPORT
    M=D

    @24576          // Set Key RAM address
    D=A
    @KEY
    M=D

    @8192           // Set screensize (in words)
    D=A
    @SCREENSIZE
    M=D

    @SCREENPORT         // set screen location index beginning of screen
    D=M
    @loc            
    M=D

    @keypressed     // initialized as key not pressed (keypressed=0)
    M=0

    @WHITE          // initalize brush to white, clears screen
    D=M
    @brush
    M=D

(LOOP)
    // Get the input key

    // if pressed, set brush to black
    @BLACK
    D=M
    @brush
    M=D

    // if not pressed, set brush to white
//    @WHITE
//    D=M
//    @brush
//    M=D

(PAINT)
    @brush      // load the brush setting (black or white)
    D=M        

    @loc        // write 16 bits out to the screen
    A=M
    M=D

    @loc        // increment screen location by one word (16 bits)
    M=M+1

    @LOOP
    0;JMP       // Goto LOOP (infinite loop)
