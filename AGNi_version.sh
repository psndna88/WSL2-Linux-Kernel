#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v16.8"
export AGNI_KERNEL_LINUX="6.6.92"
sed -i 's/AGNi_v16.7/AGNi_v16.8/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.91/6.6.92/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

