#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.4"
export AGNI_KERNEL_LINUX="6.1.91"
sed -i 's/AGNi_v15.3/AGNi_v15.4/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.87/6.1.91/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

