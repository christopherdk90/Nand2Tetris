// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R2
M=0		// Set Register 2 to zero

@R0
D=M		// Grab value in R0

@count	
M=D		// Store R0 as count var

// while R0 is > 0:
// add R1 to R2
// Subtract one from R0

(LOOP)
	@count
	D=M		// Grab count var for comparison
	@END
	D;JEQ	// If count is 0, go to end
	// else count is > 0:
	@R1		
	D=M 	// Grab value at R1
	@R2
	M=M+D	// Add R1 value to R2
	@count
	M=M-1	// Decrement count
	@LOOP
	0;JMP	// Unconditional jump to loop



(END)
	@END
	0;JMP