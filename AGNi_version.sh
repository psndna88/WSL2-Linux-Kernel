#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v19.1.2"
export AGNI_KERNEL_LINUX="6.18.43"
sed -i 's/AGNi-v19.1.1/AGNi-v19.1.2/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/6.18.41/6.18.43/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

