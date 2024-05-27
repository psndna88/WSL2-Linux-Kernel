#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.5"
export AGNI_KERNEL_LINUX="6.1.92"
sed -i 's/AGNi_v15.4/AGNi_v15.5/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.91/6.1.92/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

