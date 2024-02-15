# SCRIPT DimiCreateImage
# 

# on Thu 2024-02-15 seq 30
# by zellview media
# www.github.com/zellview

	Version=1
	DimiVersion=3.2.21

	echo "start DimiCreateImage version "$Version

		cd ../..
		cd ../dimi-image
		
		cp ../iso/linuxmint-21.3-cinnamon-64bit.iso . --verbose --update

		wget --no-clobber https://ftp.rz.uni-frankfurt.de/pub/mirrors/linux-mint/iso/stable/21.3/linuxmint-21.3-cinnamon-64bit.iso

		cd ..

		cubic dimi-image &

		echo "Done DimiCreateImage"

# END DimiCreateImage.