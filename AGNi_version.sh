#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.7"
export AGNI_KERNEL_LINUX="6.1.98"
sed -i 's/AGNi_v15.6/AGNi_v15.7/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.94/6.1.98/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

