#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v14.9"
export AGNI_KERNEL_LINUX="6.1.80"
sed -i 's/AGNi_v14.8/AGNi_v14.9/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.75/6.1.80/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

