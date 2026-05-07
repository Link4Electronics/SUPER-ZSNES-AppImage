#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
pacman -Syu --noconfirm libdecor

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano

# Comment this out if you need an AUR package
#make-aur-package PACKAGENAME

# If the application needs to be manually built that has to be done down here
echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
mkdir -p ./AppDir/bin
wget https://zsnes.com/files/SuperZSNES_v0.110.tar.gz
tar -xvf SuperZSNES_v0.110.tar.gz -C ./AppDir/bin
rm -f ./*.tar.gz ./AppDir/bin/libdecor*.so*
