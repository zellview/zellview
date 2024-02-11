# SCRIPT DimiCreateImage
# 

# on Su 2024-02-11 seq 23
# by zellview media
# www.github.com/zellview

	Version=0
	DimiVersion=3.2.20

	echo "start DimiCreateImage "$Version

		cd ../..
		cd ../dimi-image
		
		cp ../iso/linuxmint-21.3-cinnamon-64bit.iso . -v

		wget --no-clobber https://ftp.rz.uni-frankfurt.de/pub/mirrors/linux-mint/iso/stable/21.3/linuxmint-21.3-cinnamon-64bit.iso

		cd ..

		cubic dimi-image &

		echo "Done DimiCreateImage"

# END DimiCreateImage.