#!/bin/sh
# Create an arm64 API 28 libc++ toolchain.

if [ ! "$NDK" ];then
    echo "NDK env is not set!"
    exit
fi

cp -r $NDK/toolchains/llvm/prebuilt/ $PWD/env/
