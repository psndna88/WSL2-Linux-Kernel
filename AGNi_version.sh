#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="6.1_v16.0"
export AGNI_KERNEL_LINUX="6.1.120"
sed -i 's/AGNi_v15.9/AGNi_v16.0/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.111/6.1.120/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

