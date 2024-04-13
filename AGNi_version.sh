#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.1"
export AGNI_KERNEL_LINUX="6.1.86"
sed -i 's/AGNi_v15.0/AGNi_v15.1/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.83/6.1.86/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

