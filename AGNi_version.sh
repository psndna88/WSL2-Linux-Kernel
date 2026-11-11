#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v19.1.7"
export AGNI_KERNEL_LINUX="6.18.63"
sed -i 's/AGNi-v19.1.6/AGNi-v19.1.7/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.18.58/6.18.63/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

