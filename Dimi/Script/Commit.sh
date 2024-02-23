
# SCRIPT DimiCommit

# by zellview media
# Fri 2024-02-23 seq 18
# www.github.com/zellview

	Version=2
	DimiVersion="3.2.26"
	
	echo "DimiCommit version "$DimiVersion" file "$Version" started ..."

	cd ../..
	cd ..
	rm commit -rf
	mkdir commit
	cp zellview commit -r
	cd commit/zellview/Dimi/Script
	sh Cleanup.sh
	
	echo "DimiCommit done"

# END DimiCommit.