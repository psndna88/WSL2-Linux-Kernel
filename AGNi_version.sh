#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v14.4"
export AGNI_KERNEL_LINUX="6.1.43"
sed -i 's/AGNi_v14.3/AGNi_v14.4/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.42/6.1.43/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

