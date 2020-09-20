# Programming with 64 bit ARM Assembly Language

https://github.com/Apress/programming-with-64-bit-ARM-assembly-language


## Comments

:m: 64 bits distribution: check with [`uname`](https://en.wikipedia.org/wiki/Uname) Command

* How to know if you are running a 64 bit machine `-m, --machine            print the machine hardware name`

- [x] 64 bit

```
$ uname --machine
aarch64
```

- [ ] 32 bit

```
$ uname --machine
armv7l
```

* I couldn't find any suitable distribution for Kali despite going through the official releases on [offensive-security.com](https://www.offensive-security.com/kali-linux-arm-images) images

I tried : 

| :bookmark: [:x:](without success) | [:heavy_check_mark:](with success) |
|-----------------------------------|--------------------------------|
| - [ ] [Kali Linux RPi](https://images.kali.org/arm-images/kali-linux-2020.3a-rpi.img.xz) image |  - [x] [Ubuntu 20.04.1 LTS - Raspberry Pi 4](https://ubuntu.com/download/raspberry-pi/thank-you?version=20.04.1&architecture=arm64+raspi) |
| - [ ] [Kali Linux RaspberryPi 2 (v1.2), 3 and 4 (64-Bit)](https://images.kali.org/arm-images/kali-linux-2020.3a-rpi3-nexmon-64.img.xz) image | |


## GNU tools

```
$ as --version
GNU assembler (GNU Binutils for Ubuntu) 2.34
Copyright (C) 2020 Free Software Foundation, Inc.
This program is free software; you may redistribute it under the terms of
the GNU General Public License version 3 or later.
This program has absolutely no warranty.
This assembler was configured for a target of `aarch64-linux-gnu'.
```
