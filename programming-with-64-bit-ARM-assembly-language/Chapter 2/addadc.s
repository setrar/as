//
// Example of 128-Bit addition with the ADD/ADC instructions.
//
.global _start // Provide program starting address

// Load the registers with some data
// First 64-bit number is 0x0000000000000003FFFFFFFFFFFFFFFF
_start: MOV X2, #0x0000000000000003
        MOV X3, #0xFFFFFFFFFFFFFFFF //Assem will change to MOVN

// Second 64-bit number is 0x00000000000000050000000000000001
        MOV  X4, #0x0000000000000005
        MOV  X5, #0x0000000000000001

        ADDS X1, X3, X5 // Lower order 64-bits
        ADC X0, X2, X4 // Higher order 64-bits

// Setup the parameters to exit the program
// and then call Linux to do it.
// X0 is the return code and will be what we
// calculated above.
        MOV     X8, #93
        SVC     0
