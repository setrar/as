//
// Examples of the ADD/MOVN instruction.
//

.global _start // Provide program starting address

// Multiply 2 by -1 by using MOVN and then adding 1
_start:    MOVN W0, #2
           ADD W0, W0, #1

// Setup the parameters to exit the program
// and then call Linux to do it.
// W0 is the return code and will be what we
// calculated above.
     MOV     X8, #93  // Serv command code 93 terms
     SVC     0        // Call linux to terminate

