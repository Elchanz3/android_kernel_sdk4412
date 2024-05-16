#/bin/bash

export OUT_DIR="../out"
export IMAGE_OUT="../out/arch/arm/boot"
export IMAGE_NAME="zImage"
export DEFCONFIG_NAME="m0_00_defconfig"
export DEFCONFIG_DIR="/arch/arm/configs/"
export ARCH="arm"

mkdir "$OUT_DIR"

echo "*****************************************"
echo "________PROCESSING DEFCONFIG___________"
echo "****************************************"
echo ""
make "$ARCH" "$DEFCONFIG_DIR" "$DEFCONFIG_NAME"
echo ""
echo ""
echo "#########################################"
echo "________COMPILING KERNEL________"
echo "#########################################"
echo ""
make -j4
