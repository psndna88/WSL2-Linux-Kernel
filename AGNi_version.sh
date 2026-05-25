#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v18.6"
export AGNI_KERNEL_LINUX="6.6.142"
sed -i 's/AGNi-v18.5/AGNi-v18.6/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.138/6.6.142/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

