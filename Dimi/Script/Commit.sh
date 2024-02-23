
# SCRIPT DimiCommit

# by zellview media
# Fri 2024-02-23 seq 21
# www.github.com/zellview

	Version=3
	DimiVersion="3.2.26"
	
	echo "DimiCommit version "$DimiVersion" file "$Version" started ..."

	cd ../..
	cd ..
	rm commit -rf
	mkdir commit
	cp zellview commit -rfuv
	
	sh commit/zellview/Dimi/Script/Cleanup.sh
	
	echo "DimiCommit done"

# END DimiCommit.