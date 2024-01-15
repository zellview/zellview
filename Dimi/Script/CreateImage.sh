# SCRIPT DimiCreateImage
# 

# on 2024-01-12 seq 20
# by zellview media
# www.zellview.net

version=3.2.17

echo "start DimiCreateImage "$version

cd ../..

mkdir ../dimi-image
cd ../dimi-image

# for future load
# wget --no-clobber https://download.zellview.net/linuxmint-21.2-cinnamon-64bit.iso
# wget --no-clobber https://ftp.rz.uni-frankfurt.de/pub/mirrors/linux-mint/iso/stable/21.3/linuxmint-21.3-cinnamon-64bit.iso

cd ..

cubic dimi-image &

echo "Done DimiCreateImage"

# END DimiCreateImage.