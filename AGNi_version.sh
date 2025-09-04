#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v17.6"
export AGNI_KERNEL_LINUX="6.6.104"
sed -i 's/AGNi-v17.5/AGNi-v17.6/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.103/6.6.104/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

