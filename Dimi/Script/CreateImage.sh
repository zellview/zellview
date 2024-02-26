#	
#	SCRIPT DimiCreateImage

#	by zellview media
#	Mon 26-Feb-2024 seq 73
#	www.github.com/zellview

	Version=11
	DimiVersion=3.2.28

	echo "DimiCreateImage version "$DimiVersion" file "$Version" started ..."

	cd ../..

	baseiso=linuxmint-21.3-cinnamon-64bit.iso
	echo "copy $baseiso to ../dimi-image"
	cp ../../zRsrc/iso/$baseiso ../dimi-image --verbose --update
	
#	dd if=/dev/sr0 of=../dimi-image
#	wget --no-clobber $src$dir$baseiso

	cubic ../dimi-image &

	echo "DimiCreateImage done"

# END DimiCreateImage.