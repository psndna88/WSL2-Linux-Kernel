#!/bin/bash
export ARCH=x86
export SUBARCH=x86

KERNELDIR=`readlink -f .`

DEVICE="x86"
CONFIG="config-wsl_psndna88"
SYNC_CONFIG=1
export AGNI_BUILD_TYPE="generic_x86-64 WSL2"

. $KERNELDIR/AGNi_version.sh

if [ -f ~/WORKING_DIRECTORY/AGNi_stamp.sh ]; then
	. ~/WORKING_DIRECTORY/AGNi_stamp.sh
fi

if [ -d $BUILT_EXPORT ]; then
	READY_ZIP="$BUILT_EXPORT"
else
	mkdir -p $READY_ZIP 2>/dev/null
	READY_ZIP="$KERNELDIR/READY_DIR"
fi;

echo ""
echo " ~~~~~ Compiling AGNi kernel $AGNI_KERNEL_LINUX ~~~~~"
echo "         VERSION: AGNi $AGNI_VERSION $AGNI_BUILD_TYPE"
echo ""

. $KERNELDIR/cleanbuild.sh

#cp -f $KERNELDIR/Microsoft/$CONFIG $KERNELDIR/OUT/Microsoft/$CONFIG
make -j`nproc --ignore=2`O=$KERNELDIR/OUT KCONFIG_CONFIG=Microsoft/config-wsl_psndna88

if [ $SYNC_CONFIG -eq 1 ]; then # SYNC CONFIG
	cp -f $KERNELDIR/OUT/Microsoft/$CONFIG $KERNELDIR/Microsoft/$CONFIG
fi
rm $KERNELDIR/OUT/Microsoft/$CONFIG $KERNELDIR/OUT/Microsoft/$CONFIG.old 2>/dev/null

if [ -f $KERNELDIR/OUT/arch/x86/boot/bzImage ]; then
	mv -f $KERNELDIR/OUT/arch/x86/boot/bzImage $READY_ZIP/AGNi_$AGNI_VERSION-bzImage
else
	echo "         ERROR: compiling AGNi kernel $DEVICE."
fi

echo ""

