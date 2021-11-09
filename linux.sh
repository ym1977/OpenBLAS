#!/bin/bash

MY_DIR=`pwd`

############################################################
# Usage:
# 1. ./linux.sh 1 2	# clean
# 2. ./linux.sh    	# make
# 3. ./linux.sh 1  	# install
############################################################

if [ $# -eq 1 ]; then
make TARGET=CORE2 BINARY=64 PREFIX=${MY_DIR}/Linux_x64 install
exit 1
fi

if [ $# -eq 2 ]; then
make TARGET=CORE2 BINARY=64 PREFIX=${MY_DIR}/Linux_x64 clean
exit 2
fi

make TARGET=CORE2 BINARY=64 PREFIX=${MY_DIR}/Linux_x64

exit 0

