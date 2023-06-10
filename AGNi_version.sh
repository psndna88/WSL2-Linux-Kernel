#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v14.1"
export AGNI_KERNEL_LINUX="6.1.33"
sed -i 's/AGNi_v14.0/AGNi_v14.1/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.29/6.1.33/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

