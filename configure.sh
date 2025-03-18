#!/bin/bash -e

cp -r /usr/include/alsa/ $PWD/env/linux-x86_64/sysroot/usr/include
cp -r /usr/include/cups/ $PWD/env/linux-x86_64/sysroot/usr/include
cp -r /usr/include/fontconfig/ $PWD/env/linux-x86_64/sysroot/usr/include
cp -r /usr/include/X11/ $PWD/env/linux-x86_64/sysroot/usr/include

command="$PWD/configure "
command+="--openjdk-target=aarch64-linux-gnu "
command+="--with-abi-profile=aarch64 "
command+="--with-freetype=bundled "
command+="--with-toolchain-path=$PWD/env/linux-x86_64/bin "
command+="--with-sysroot=$PWD/env/linux-x86_64/sysroot "
command+="--disable-warnings-as-errors "
command+="--with-toolchain-type=clang "
command+="--enable-headless-only=yes "
command+="--x-libraries=/usr/lib/x86_64-linux-gnu/ "
command+="CC=$PWD/env/linux-x86_64/bin/aarch64-linux-android28-clang "
command+="CXX=$PWD/env/linux-x86_64/bin/aarch64-linux-android28-clang++ "
command+="LD=$PWD/env/linux-x86_64/bin/ld "
command+="OBJCOPY=$PWD/env/linux-x86_64/bin/llvm-objcopy "
command+="OBJDUMP=$PWD/env/linux-x86_64/bin/llvm-objdump "
command+="STRIP=$PWD/env/linux-x86_64/bin/llvm-strip "
command+="--with-devkit=$PWD/env/linux-x86_64/ "
command+="BUILD_CC=/usr/bin/clang "
command+="BUILD_CXX=/usr/bin/clang++ "
command+="$@"
exec $command
