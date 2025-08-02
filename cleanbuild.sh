#!/bin/bash
export KERNELDIR=`readlink -f .`

rm -rf $KERNELDIR/modules 2>/dev/null
rm -rf $KERNELDIR/READY_DIR/* 2>/dev/null
rm -rf $KERNELDIR/modules.vhdx 2>/dev/null
make clean

echo "   Compile folder cleaned !"

