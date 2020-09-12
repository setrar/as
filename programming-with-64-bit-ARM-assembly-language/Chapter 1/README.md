# Chapter 1

```
$ objdump -s -d HelloWorld.o

HelloWorld.o:     file format elf64-littleaarch64

Contents of section .text:
 0000 200080d2 e1000058 a20180d2 080880d2   ......X........
 0010 010000d4 000080d2 a80b80d2 010000d4  ................
 0020 00000000 00000000                    ........        
Contents of section .data:
 0000 48656c6c 6f20576f 726c6421 0a        Hello World!.   

Disassembly of section .text:

0000000000000000 <_start>:
   0:	d2800020 	mov	x0, #0x1                   	// #1
   4:	580000e1 	ldr	x1, 20 <_start+0x20>
   8:	d28001a2 	mov	x2, #0xd                   	// #13
   c:	d2800808 	mov	x8, #0x40                  	// #64
  10:	d4000001 	svc	#0x0
  14:	d2800000 	mov	x0, #0x0                   	// #0
  18:	d2800ba8 	mov	x8, #0x5d                  	// #93
  1c:	d4000001 	svc	#0x0
	...
```

## References

[ELF](https://en.wikipedia.org/wiki/Executable_and_Linkable_Format): Executable and Linkable Format (formerly named Extensible Linking Format)
