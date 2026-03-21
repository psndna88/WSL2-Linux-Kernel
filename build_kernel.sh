#!/bin/bash
export ARCH=x86
export SUBARCH=x86

KERNELDIR="`pwd`"

DEVICE="x86-64"
CONFIG="config-wsl_psndna88"
SYNC_CONFIG=1
export AGNI_BUILD_TYPE="generic_x86-64 WSL2"

. $KERNELDIR/AGNi_version.sh

if [ -f ~/WORKING_DIRECTORY/AGNi_stamp.sh ]; then
    . ~/WORKING_DIRECTORY/AGNi_stamp.sh
    if [ ! -d "$DISTCC_DIR/state" ]; then
        mkdir -p "$DISTCC_DIR/state"
        mkdir -p "$DISTCC_DIR/lock"
    fi
fi

if [ -d $BUILT_EXPORT ]; then
	READY_ZIP="$BUILT_EXPORT"
else
	rm -rf $KERNELDIR/READY_DIR 2>/dev/null
	mkdir -p $KERNELDIR/READY_DIR 2>/dev/null
	READY_ZIP="$KERNELDIR/READY_DIR"
fi;

echo ""
echo " ~~~~~ Compiling AGNi kernel WSL2 $AGNI_KERNEL_LINUX ~~~~~"
echo "         VERSION: AGNi $AGNI_VERSION $AGNI_BUILD_TYPE"
echo ""

. $KERNELDIR/cleanbuild.sh

if [ "$CCACHE_PREFIX" = "" ]; then
    KBUILD_BUILD_TIMESTAMP='' make -j`nproc --ignore=2` KCONFIG_CONFIG=Microsoft/config-wsl_psndna88
else
    KBUILD_BUILD_TIMESTAMP='' $DISTCC_WRAPPER make -j$(distcc -j) KCONFIG_CONFIG=Microsoft/config-wsl_psndna88
fi

if [ $SYNC_CONFIG -eq 1 ]; then # SYNC CONFIG
	cp -f $KERNELDIR/.config $KERNELDIR/Microsoft/$CONFIG
fi
rm $KERNELDIR/.config $KERNELDIR/.config.old $KERNELDIR/Microsoft/$CONFIG.old 2>/dev/null

if [ -f $KERNELDIR/arch/x86/boot/bzImage ]; then
	mv -f $KERNELDIR/arch/x86/boot/bzImage $READY_ZIP/AGNi_WSL2_$DEVICE-$AGNI_VERSION-$AGNI_KERNEL_LINUX-bzImage.kernel
	mkdir $KERNELDIR/modules 2>/dev/null
	make INSTALL_MOD_PATH="$KERNELDIR/modules" modules_install
	sudo ./Microsoft/scripts/gen_modules_vhdx.sh "$KERNELDIR/modules" $(make -s kernelrelease) $READY_ZIP/AGNi_WSL2_$DEVICE-$AGNI_VERSION-$AGNI_KERNEL_LINUX-modules.vhdx
	echo "   Compressing AGNi_WSL2_$DEVICE-$AGNI_VERSION.7z ....."
	cd $READY_ZIP; 7z a AGNi_WSL2_$DEVICE-$AGNI_VERSION-$AGNI_KERNEL_LINUX.7z AGNi_WSL2_$DEVICE-$AGNI_VERSION-$AGNI_KERNEL_LINUX-bzImage.kernel AGNi_WSL2_$DEVICE-$AGNI_VERSION-$AGNI_KERNEL_LINUX-modules.vhdx
	if [ -f AGNi_WSL2_$DEVICE-$AGNI_VERSION-$AGNI_KERNEL_LINUX.7z ]; then
		rm AGNi_WSL2_$DEVICE-$AGNI_VERSION-$AGNI_KERNEL_LINUX-bzImage.kernel AGNi_WSL2_$DEVICE-$AGNI_VERSION-$AGNI_KERNEL_LINUX-modules.vhdx
	fi
	cd $KERNELDIR; . $KERNELDIR/cleanbuild.sh
	echo "   AGNi_WSL2_$DEVICE-$AGNI_VERSION.7z DONE "
else
	echo "         ERROR: compiling AGNi kernel $DEVICE."
fi

echo ""

