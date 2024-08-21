#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v15.8"
export AGNI_KERNEL_LINUX="6.1.106"
sed -i 's/AGNi_v15.7/AGNi_v15.8/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.1.98/6.1.106/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

