#!/bin/sh
echo "*********************************************************"
echo "* Build kernel                                          *"
echo "*********************************************************"

set -e
set -x
export YOUR_PATH=`pwd`
export MYDROID=${YOUR_PATH}/webtuner
export PATH=$PATH:${MYDROID}/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/
mkdir ${MYDROID}/logs
export CROSS_COMPILE=${MYDROID}/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-
export PATH=${YOUR_PATH}/u-boot/tools:$PATH
export ARCH=arm

cd ${MYDROID}/kernel

make distclean

make android_omap_qb_defconfig

make -j4