# SCRIPT DimiResetImage
# 

# by zellview media
# www.github.com/zellview
# on Wed 2024-02-21 seq 30

Version=3
DimiVersion=3.2.24

echo "start DimiResetImage version "$DimiVersion" file "$Version

cd ../..

mkdir ../dimi-image

cp Dimi/Rsrc/iso-conf/cubic.conf ../dimi-image --verbose

echo "Done DimiResetImage"

# END DimiResetImage.