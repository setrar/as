//
// Assembler program to print a register in hex
// to stdout.
//
// X0-X2 - parameters to linux function services
// X1 - is also address of byte we are writing
// X4 - register to print
// W5 - loop index
// W6 - current character
// X8 - linux function number
//

.global _start // Provide program starting address

_start: mov    x4, #0x6E3A
        movk   x4, #0x4F5D, lsl #16 
        movk   x4, #0xFEDC, lsl #32
        movk   x4, #0x1234, lsl #48

        ldr    x1, =hexstr // start of string
        add    x1, x1, #17 // start at least sig digit
        // The loop is FOR W5 = 16 TO 1 STEP -1
        mov    w5, #16     // 16 digits to print

loop:   and    w6, w4, #0Xf // mask of least sig digit
// If W6 >= 10 then goto letter
        cmp    w6, #10      // is 0-9 or A-F
        b.ge letter
// Else its a number so convert to an ASCII digit
        add    w6, w6, #'0'
        b      cont         // goto to end if

letter: // handle the digits A to F
        add    w6, w6, #('A'-10)

cont:// end if
        strb  w6, [x1]       // store ascii digit
        sub   x1, x1, #1     // decrement address for next digit
        lsr   x4, x4, #4     // shift off the digit
     // next W5
        subs  w5, w5, #1     // step W5 by -1
        b.ne  loop          // another for loop if not done

// Setup the parameters to print our hex number
// and then call Linux to do it.
        mov   X0, #1          // 1 = StdOut
        ldr   X1, =hexstr     // string to print
        mov   X2, #19         // length of our string
        mov   X8, #64         // linux write system call
        svc   0               // Call linux to output the string

// Setup the parameters to exit the program
// and then call Linux to do it.
        mov   X0, #0          // Use 0 return code
        mov   X8, #93         // Service code 93 terminates
        svc   0               // Call linux to terminate

.data
hexstr: .ascii "0x123456789ABCDEFD\n"
