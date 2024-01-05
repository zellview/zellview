# SCRIPT DimiCreateImage
# STAMP 

# version 3.2.14 on 2024-01-05 seq 15
# by zellview media
# www.zellview.net

cd ../..

mkdir ../dimi-image
cd ../dimi-image

cp ../zellview/Dimi/Rsrc/iso-conf/cubic.conf . -v

# for future load
wget --no-clobber https://download.zellview.net/linuxmint-21.2-cinnamon-64bit.iso

cd ..

cubic dimi-image

# END DimiCreateImage.