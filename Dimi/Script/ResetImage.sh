
# SCRIPT DimiResetImage 

	# by zellview media
	# Wed 2024-02-21 seq 36
	# www.github.com/zellview

	Version=6
	DimiVersion=3.2.26

	echo "DimiResetImage version "$DimiVersion" file "$Version" started ..."

	cd ../..

	mkdir ../dimi-image

	cp Dimi/Rsrc/iso-conf/cubic.conf ../dimi-image --verbose

	echo "DimiResetImage done"

# END DimiResetImage.