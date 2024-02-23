
#	SCRIPT DimiCreateImage

#	by zellview media
#	Fri 2024-02-23 seq 49
#	www.github.com/zellview

	Version=7
	DimiVersion=3.2.26

	echo "DimiCreateImage version "$DimiVersion" file "$Version" started ..."

	cd ../..

#	src=https://ftp.rz.uni-frankfurt.de/
#	dir=pub/mirrors/linux-mint/iso/stable/21.2/
#	file=linuxmint-21.2-cinnamon-64bit.iso

	file=zv-dimi-3.2.25-fresh.iso
	
	cp ../iso/$file ../dimi-image --verbose --update

#	wget --no-clobber $src$dir$file

	cd ..

	cubic dimi-image &

	echo "DimiCreateImage done "

# END DimiCreateImage.