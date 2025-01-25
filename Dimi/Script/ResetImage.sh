

# SCRIPT DimiResetImage 

# www.github.com/zellview
# by zellview media

	Version=11

	echo "DimiResetImage version "$Version" started ..."

	cd ../..

	echo "make dir ../dimi-image"
	mkdir ../dimi-image

	echo "copy cubic.onf to ../dimi-image"
	cp Dimi/Rsrc/iso-conf/cubic.conf ../dimi-image --verbose

	echo "DimiResetImage done"

# END DimiResetImage.