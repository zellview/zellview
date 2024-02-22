
# SCRIPT DimiResetImage 

	# by zellview media
	# Wed 2024-02-21 seq 33
	# www.github.com/zellview

	Version=5
	DimiVersion=3.2.25

	echo "start DimiResetImage version "$DimiVersion" file "$Version

	cd ../..

	mkdir ../dimi-image

	cp Dimi/Rsrc/iso-conf/cubic.conf ../dimi-image --verbose

	echo "done DimiResetImage"

# END DimiResetImage.