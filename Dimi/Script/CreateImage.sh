#	
#	SCRIPT DimiCreateImage

#	by zellview media
#	Sun 25-Feb-2024 seq 68
#	www.github.com/zellview

	Version=10
	DimiVersion=3.2.27

	echo "DimiCreateImage version "$DimiVersion" file "$Version" started ..."

	cd ../..

#	src=https://ftp.rz.uni-frankfurt.de/
#	dir=pub/mirrors/linux-mint/iso/stable/21.2/
#	file=linuxmint-21.2-cinnamon-64bit.iso

	baseiso=linuxmint-21.3-cinnamon-64bit.iso
	
	cp ../../zRsrc/iso/$baseiso ../dimi-image --verbose --update

#	wget --no-clobber $src$dir$baseiso

	cubic ../dimi-image &

	echo "DimiCreateImage done"

# END DimiCreateImage.