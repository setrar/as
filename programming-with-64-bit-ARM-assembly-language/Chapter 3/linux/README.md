# Linux

Cross-Compiling

* Get the GCC ARM 64-bit compiler (`C++` compiler `g++` is not needed here)

```
$ sudo apt-get install gcc-aarch64-linux-gnu
```

* Get `qemu` Emulator

```
$ sudo apt-get install qemu qemu-user
```

```
$ qemu-aarch64 HelloWorld
Hello World!
```


#### :x: Makefile

When editing a `Makefile` make sure you add a tabulation character (and not spaces) as a separator to make indentation work

otherwise you will get

```
Makefile:4: *** missing separator.  Stop.
```
