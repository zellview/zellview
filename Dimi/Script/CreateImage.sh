

#	SCRIPT DimiCreateImage

#	www.github.com/zellview
#	by zellview media

	Version=13

	echo "DimiCreateImage version "$Version" started ..."

	cd ../..

	baseiso=linuxmint-22.1-cinnamon-64bit.iso
	echo "copy $baseiso to ../dimi-image"
	cp ../../zRsrc/iso/$baseiso ../dimi-image --verbose --update
	
#	dd if=/dev/sr0 of=../dimi-image
#	wget --no-clobber $src$dir$baseiso

	cubic ../dimi-image &

	echo "DimiCreateImage done"

# END DimiCreateImage.