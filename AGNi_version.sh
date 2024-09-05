#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.9"
export AGNI_KERNEL_LINUX="6.1.111"
sed -i 's/AGNi_v15.8/AGNi_v15.9/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.106/6.1.111/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

