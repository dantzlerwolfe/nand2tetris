// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

(INIT)
  @SCREEN
  D=A
  @address
  M=D
  @KBD
  D=M
  @WLOOP
  D;JEQ
  @BLOOP
  D;JGT

(BLOOP)
  @KBD
  D=M
  @INIT
  D;JEQ
  
  @address
  A=M
  M=-1

  @address
  M=M+1
  D=M
  @KBD
  D=D-A
  @INIT
  D;JEQ
  
  @BLOOP
  0;JMP

(WLOOP)
  @KBD
  D=M
  @INIT
  D;JGT
  
  @address
  A=M
  M=0
  
  @address
  M=M+1
  D=M
  @KBD
  D=D-A
  @INIT
  D;JEQ
  
  @WLOOP
  0;JMP

