// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// Assume R0 and R1 are whole numbers > 0.

@R2
M=0
@R0
D=M
@i
M=D       // Preserve R0 by copying R0 into i

(LOOP)
  @END
  D;JLE
  @R1
  D=M
  @R2
  M=M+D
  @i
  M=M-1
  D=M
  @LOOP
  0;JMP

(END)
  @END
  0;JMP

  /* Notes from Nebkor

  check for R0 or R1 = 0 up front
  use registers directly, no i