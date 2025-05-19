#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v16.1"
export AGNI_KERNEL_LINUX="6.6.87.1"
sed -i 's/AGNi_v16.0/AGNi_v16.1/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.86/6.6.87.1/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

