
# SCRIPT DimiCommit

# by zellview media
# Sun 23-Feb-2024 seq 24
# www.github.com/zellview

	Version=5
	DimiVersion="3.2.27"
	
	echo "DimiCommit version "$DimiVersion" file "$Version" started ..."

	sh commit/zellview/Dimi/Script/Cleanup.sh

	cd ../..
	cd ..
	rm commit -rf
	mkdir commit
	cp zellview commit -rfv
	
	
	echo "DimiCommit done"

# END DimiCommit.