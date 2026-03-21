#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v18.5"
export AGNI_KERNEL_LINUX="6.6.138"
sed -i 's/AGNi-v18.4/AGNi-v18.5/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.127/6.6.138/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

