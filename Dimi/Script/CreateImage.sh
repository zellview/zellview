#	
#	SCRIPT DimiCreateImage

#	by zellview media
#	Sat 2024-02-24 seq 63
#	www.github.com/zellview

	Version=9
	DimiVersion=3.2.27

	echo "DimiCreateImage version "$DimiVersion" file "$Version" started ..."

	cd ../..

#	src=https://ftp.rz.uni-frankfurt.de/
#	dir=pub/mirrors/linux-mint/iso/stable/21.2/
#	file=linuxmint-21.2-cinnamon-64bit.iso

	base-iso=zv-dimi-3.2.25-fresh.iso
	
	cp ../iso/$base-iso ../dimi-image --verbose --update

#	wget --no-clobber $src$dir$base-iso

	cubic ../dimi-image &

	echo "DimiCreateImage done"

# END DimiCreateImage.