#!/bin/bash

KS=$(pwd)/scripts
CC=/home/j/android-sdks/kernel_sdk/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin
CC1=/home/j/android-sdks/kernel_sdk/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/prebuilt/linux-x86/libexec/gcc/arm-eabi/4.4.3
export PATH=${KS}:${CC}:${CC1}:$PATH
export TARGET_PRODUCT=m3s_virgin_us

mkdir -p out
make lge_m3s-perf_defconfig ARCH=arm CROSS_COMPILE=${CC}/arm-eabi- O=out -j2
make ARCH=arm CROSS_COMPILE=${CC}/arm-eabi- O=out -j2
