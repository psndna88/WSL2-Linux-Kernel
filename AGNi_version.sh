#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v17.5"
export AGNI_KERNEL_LINUX="6.6.103"
sed -i 's/AGNi-v17.4/AGNi-v17.5/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.102/6.6.103/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

