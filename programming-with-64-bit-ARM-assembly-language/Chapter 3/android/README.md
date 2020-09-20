# Android

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
