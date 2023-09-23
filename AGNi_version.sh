#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v14.7"
export AGNI_KERNEL_LINUX="6.1.55"
sed -i 's/AGNi_v14.6/AGNi_v14.7/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.51/6.1.55/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

