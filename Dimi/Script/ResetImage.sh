# 
# SCRIPT DimiResetImage 

	# by zellview media
	# Tue 27-Feb-2024 seq 45
	# www.github.com/zellview

	Version=10

	echo "DimiResetImage version "$Version" started ..."

	cd ../..

	echo "make dir ../dimi-image"
	mkdir ../dimi-image

	echo "copy cubic.onf to ../dimi-image"
	cp Dimi/Rsrc/iso-conf/cubic.conf ../dimi-image --verbose

	echo "DimiResetImage done"

# END DimiResetImage.