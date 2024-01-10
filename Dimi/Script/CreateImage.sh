# SCRIPT DimiCreateImage
# 

# on 2024-01-09 seq 18
# by zellview media
# www.zellview.net

version=3.2.16

echo "start DimiCreateImage "$version

cd ../..

mkdir ../dimi-image
cd ../dimi-image

# for future load
wget --no-clobber https://download.zellview.net/linuxmint-21.2-cinnamon-64bit.iso

cd ..

cubic dimi-image &

echo "Done DimiCreateImage"

# END DimiCreateImage.