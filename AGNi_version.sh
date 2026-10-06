#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v19.1.5"
export AGNI_KERNEL_LINUX="6.18.55"
sed -i 's/AGNi-v19.1.4/AGNi-v19.1.5/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.18.48/6.18.55/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

