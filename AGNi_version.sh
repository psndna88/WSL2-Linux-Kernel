#!/bin/bash

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION="v13.4"
export AGNI_KERNEL_LINUX="5.10.120"
sed -i 's/AGNi_v13.3/AGNi_v13.4/' $KERNELDIR/Microsoft/config-wsl_psndna88
sed -i 's/5.10.116/5.10.120/' $KERNELDIR/Microsoft/config-wsl_psndna88

echo "	AGNi Version info loaded."

