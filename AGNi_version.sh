#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v19.1.8"
export AGNI_KERNEL_LINUX="6.18.65"
sed -i 's/AGNi-v19.1.7/AGNi-v19.1.8/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.18.63/6.18.65/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

