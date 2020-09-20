# Android

:bookmark: Everything was run under `Ubuntu 20.04LTS` on an Intel Machine

## :o: Install [Android NDK](https://developer.android.com/ndk)


```
$ wget -q -O tmp.zip https://dl.google.com/android/repository/android-ndk-r21d-linux-x86_64.zip && \
       unzip tmp.zip && rm tmp.zip
```

## Run the example

```
$ make -f makefile2 ANDROID=y
```

## Emulate the example

```
$ qemu-aarch64 ./HelloWorld
```

## Test the file Type

```
$ file HelloWorld
HelloWorld: ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, not stripped
```
