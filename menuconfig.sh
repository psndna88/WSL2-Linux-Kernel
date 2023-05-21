#!/bin/bash
export KERNELDIR=`readlink -f .`

mkdir $KERNELDIR/OUT 2>/dev/null

if [ -f $KERNELDIR/OUT/Microsoft/config-wsl_psndna88 ];
	then
	make menuconfig O=$KERNELDIR/OUT KCONFIG_CONFIG=Microsoft/config-wsl_psndna88
else
	exit 1
fi

