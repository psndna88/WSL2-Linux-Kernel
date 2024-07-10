#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v16.0"
export AGNI_KERNEL_LINUX="6.6.51"
sed -i 's/AGNi_v15.6/AGNi_v16.0/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.94/6.6.51/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

