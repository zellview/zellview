
# SCRIPT DimiResetImage 

	# by zellview media
	# Wed 2024-02-21 seq 38
	# www.github.com/zellview

	Version=7
	DimiVersion=3.2.27

	echo "DimiResetImage version "$DimiVersion" file "$Version" started ..."

	cd ../..

	mkdir ../dimi-image

	cp Dimi/Rsrc/iso-conf/cubic.conf ../dimi-image --verbose

	echo "DimiResetImage done"

# END DimiResetImage.