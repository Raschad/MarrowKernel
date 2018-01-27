export ARCH=arm
export CROSS_COMPILE=/home/dahake/kernel/UBERTC-arm-eabi-4.9-94cfd739eed6/bin/arm-eabi-

mkdir output

make -C$(pwd)  O=output shinano_sirius_defconfig
make -j2 -C $(pwd) O=output

cp output/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
