#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v14.6"
export AGNI_KERNEL_LINUX="6.1.51"
sed -i 's/AGNi_v14.5/AGNi_v14.6/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.46/6.1.51/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

