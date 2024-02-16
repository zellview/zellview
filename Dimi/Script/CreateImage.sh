# SCRIPT DimiCreateImage
# 

# on Th 2024-02-15 seq 34
# by zellview media
# www.github.com/zellview

	Version=2
	DimiVersion=3.2.21

	echo "start DimiCreateImage version "$Version

		cd ../..
		cd ../dimi-image

		src=https://ftp.rz.uni-frankfurt.de/
		dir=pub/mirrors/linux-mint/iso/stable/21.3/
		file=linuxmint-21.2-cinnamon-64bit.iso		
		
		cp ../iso/$file . --verbose --update

		wget --no-clobber $src$dir$file

		cd ..

		cubic dimi-image &

		echo "Done DimiCreateImage"

# END DimiCreateImage.