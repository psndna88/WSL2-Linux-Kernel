#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v14.8"
export AGNI_KERNEL_LINUX="6.1.75"
sed -i 's/AGNi_v14.7/AGNi_v14.8/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.55/6.1.75/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

