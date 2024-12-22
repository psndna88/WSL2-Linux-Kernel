#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="5.15_v16.0"
export AGNI_KERNEL_LINUX="5.15.175"
sed -i 's/AGNi_v13.9/AGNi_v16.0/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/5.15.106/5.15.175/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

