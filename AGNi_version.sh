#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v13.9"
export AGNI_KERNEL_LINUX="5.15.106"
sed -i 's/AGNi_v13.8/AGNi_v13.9/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/5.15.104/5.15.106/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

