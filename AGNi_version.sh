#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.3"
export AGNI_KERNEL_LINUX="6.1.87"
sed -i 's/AGNi_v15.2/AGNi_v15.3/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.86/6.1.87/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

