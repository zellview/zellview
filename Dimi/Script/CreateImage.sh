
#	SCRIPT DimiCreateImage

#	by zellview media
#	Wed 2024-02-21 seq 41
#	www.github.com/zellview

	Version=6
	DimiVersion=3.2.25

	echo "start DimiCreateImage version "$DimiVersion" file "$Version

		cd ../..
		cd ../dimi-image

		src=https://ftp.rz.uni-frankfurt.de/
		dir=pub/mirrors/linux-mint/iso/stable/21.2/
		file=linuxmint-21.2-cinnamon-64bit.iso
		
		cp ../iso/$file . --verbose --update

		wget --no-clobber $src$dir$file

		cd ..

		cubic dimi-image &

		echo "done DimiCreateImage"

# END DimiCreateImage.