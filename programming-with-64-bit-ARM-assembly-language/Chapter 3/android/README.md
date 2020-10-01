# Android

:bookmark: Everything was run under `Ubuntu 20.04LTS` on an Intel Machine

## :o: Install [Android NDK](https://developer.android.com/ndk)


```
$ wget -q -O tmp.zip https://dl.google.com/android/repository/android-ndk-r21d-linux-x86_64.zip && \
       unzip tmp.zip && rm tmp.zip
```

## :a: Run 

- [x] Run the example

```
$ make -f makefile2 ANDROID=y
```

- [x] Emulate the example

```
$ qemu-aarch64 ./HelloWorld
```

- [x] Test the file Type

```
$ file HelloWorld
HelloWorld: ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), statically linked, not stripped
```

## :x: On [Mac Darwin](makefile2-darwin)

- [x] Along with Java, install andoid-sdk

```
% brew cask install android-sdk
android-sdk
```

- [x] Verify

```
% brew cask list             
android-sdk
```

- [x] Install `[ndk]`

```
% sdkmanager --install "ndk;20.1.5948944"
```

- [x] Verify `[ndk]`

```
% sdkmanager --list
Installed packages:=====================] 100% Computing updates...             
  Path                                                | Version      | Description                                     | Location                                            
  -------                                             | -------      | -------                                         | -------                                             
  ...
  ndk;20.1.5948944                                    | 20.1.5948944 | NDK (Side by side) 20.1.5948944                 | ndk/20.1.5948944/                    
```
