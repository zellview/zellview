# SCRIPT DimiCreateImage
# 

# seq 7 on 2024-01-04
# by zellview media
# www.zellview.net

cd ../..

mkdir ../dimi-image
cd ../dimi-image

cp ../zellview/Dimi/Rsrc/iso-conf/cubic.conf .

wget https://download.zellview.net/linuxmint-21.2-cinnamon-64bit.iso

cd ..

cubic dimi-image

# END DimiCreateImage.
