# Linux

Cross-Compiling

- [x] Get the GCC ARM 64-bit compiler (`C++` compiler `g++` is not needed here) and build the project (i.e. `make`)

```
$ sudo apt-get install gcc-aarch64-linux-gnu
```

- [x] Get the [`qemu`](https://www.qemu.org/) Emulator

```
$ sudo apt-get install qemu qemu-user
```

- [x] Run the program through the emulator

```
$ qemu-aarch64 HelloWorld
Hello World!
```

:bulb: The same `HelloWorld` application was also copied and tested on a `Raspberry Pi 4`


#### :x: Makefile

When editing a `Makefile` make sure you add a tabulation character (and not spaces) as a separator to make indentation work

otherwise you will get

```
Makefile:4: *** missing separator.  Stop.
```
