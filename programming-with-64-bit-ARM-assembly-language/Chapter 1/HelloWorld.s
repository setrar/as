//
// Assembler program to print "Hello World!"
// to stdout.
//
// X0-X2 - parameters to Linux function services
// X8 - Linux function number
//

.global _start // Provide program starting address

// Setup the parameters to print hello world
// and then call Linux to do it.
_start: mov    X0, #1
        ldr    X1, =helloworld
        mov    X2, #13
        mov    X8, #64
        svc    0

        mov    X0, #0
        mov    X8, #93
        svc    0

.data
helloworld:    .ascii "Hello World!\n"
