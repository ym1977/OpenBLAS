#!/bin/bash

export PATH=/opt/rk3308_toolchain/bin:${PATH}

MY_DIR=`pwd`

############################################################
# Usage:
# 1. ./rk3308.sh 1 2     # clean
# 2. ./rk3308.sh         # make
# 3. ./rk3308.sh 1       # install
############################################################

if [ $# -eq 1 ]; then
make ARCH=aarch64 TARGET=ARMV8 BINARY=64 CROSS=1 CROSS_SUFFIX=aarch64-linux-gnu-	\
	CC=aarch64-linux-gnu-gcc FC=aarch64-linux-gnu-gfortran HOSTCC=aarch64-linux-gnu-gcc	\
	SMP=0 USE_THREAD=1 PREFIX=${MY_DIR}/RK3308 install
exit 1
fi

if [ $# -eq 2 ]; then
make ARCH=aarch64 TARGET=ARMV8 BINARY=64 CROSS=1 CROSS_SUFFIX=aarch64-linux-gnu-	\
	CC=aarch64-linux-gnu-gcc FC=aarch64-linux-gnu-gfortran HOSTCC=aarch64-linux-gnu-gcc	\
	SMP=0 USE_THREAD=1 PREFIX=${MY_DIR}/RK3308 clean
exit 2
fi

make ARCH=aarch64 TARGET=ARMV8 BINARY=64 CROSS=1 CROSS_SUFFIX=aarch64-linux-gnu-	\
	CC=aarch64-linux-gnu-gcc FC=aarch64-linux-gnu-gfortran HOSTCC=aarch64-linux-gnu-gcc	\
	SMP=0 USE_THREAD=1 PREFIX=${MY_DIR}/RK3308

exit 0

