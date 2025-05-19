#!/bin/bash
export KERNELDIR=`readlink -f .`

if [ -f $KERNELDIR/Microsoft/config-wsl_psndna88 ];
	then
	make menuconfig KCONFIG_CONFIG=Microsoft/config-wsl_psndna88
else
	exit 1
fi

