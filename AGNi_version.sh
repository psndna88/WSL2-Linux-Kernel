#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v17.4"
export AGNI_KERNEL_LINUX="6.6.102"
sed -i 's/AGNi-v17.3/AGNi-v17.4/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.101/6.6.102/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

