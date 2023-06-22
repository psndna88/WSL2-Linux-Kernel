#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v14.2"
export AGNI_KERNEL_LINUX="6.1.35"
sed -i 's/AGNi_v14.1/AGNi_v14.2/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.33/6.1.35/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

