#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v17.3"
export AGNI_KERNEL_LINUX="6.6.101"
sed -i 's/AGNi-v17.2/AGNi-v17.3/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.6.99/6.6.101/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

