// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// write black pixel
// write white pixel

@pixel		// Initialize to top left corner
M=0

(INPUT)
// Evaluate keyboard input
@KBD
D=M			// Grab keyboard value
@WHITE
D;JEQ		// If it's zero, no key was pressed
@BLACK
0;JMP		// Else a key was pressed, fill the screen

(WHITE)
// Evaluate if selected pixel is at min 
@pixel
D=M

@INPUT
D;JLT

// Else its not, keep drawing white

@pixel 
D=M

@SCREEN
A=A+D
M=0

@pixel
M=M-1

@INPUT
0;JMP

(BLACK)
// Evaluate if selected pixel is at max
@pixel
D=M			// Load current pixel

@8192		
D=D-A

@INPUT
D;JGE

// Not at max, to draw

@pixel
D=M			// Load current pixel

@SCREEN
A=A+D		// Address + current pixel shift
M=-1		// Store black

@pixel
M=M+1		// Go to next pixel

@INPUT
0;JMP


(END)
	@END
	0;JMP