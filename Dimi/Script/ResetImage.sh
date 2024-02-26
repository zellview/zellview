# 
# SCRIPT DimiResetImage 

	# by zellview media
	# Mon 26-Feb-2024 seq 42
	# www.github.com/zellview

	Version=8
	DimiVersion=3.2.28

	echo "DimiResetImage version "$DimiVersion" file "$Version" started ..."

	cd ../..

	echo "make dir ../dimi-image"
	mkdir ../dimi-image

	echo "copy cubic.onf to ../dimi-image
	cp Dimi/Rsrc/iso-conf/cubic.conf ../dimi-image --verbose

	echo "DimiResetImage done"

# END DimiResetImage.