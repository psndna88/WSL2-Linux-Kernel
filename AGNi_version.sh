#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v14.3"
export AGNI_KERNEL_LINUX="6.1.36"
sed -i 's/AGNi_v14.2/AGNi_v14.3/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.35/6.1.36/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

