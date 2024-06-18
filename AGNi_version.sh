#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.6"
export AGNI_KERNEL_LINUX="6.1.94"
sed -i 's/AGNi_v15.5/AGNi_v15.6/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.92/6.1.94/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

