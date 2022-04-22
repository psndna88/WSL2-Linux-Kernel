#!/bin/bash
export KERNELDIR=`readlink -f .`

mkdir $KERNELDIR/OUT 2>/dev/null
rm -rf $KERNELDIR/OUT/* 2>/dev/null
rm -rf $KERNELDIR/OUT/.* 2>/dev/null

echo "   Compile folder cleaned !"

