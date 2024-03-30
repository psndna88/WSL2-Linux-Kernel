#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.0"
export AGNI_KERNEL_LINUX="6.1.83"
sed -i 's/AGNi_v14.9/AGNi_v15.0/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.75/6.1.80/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

