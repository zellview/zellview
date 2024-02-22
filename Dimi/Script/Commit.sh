
# SCRIPT DimiCommit

# by zellview media
# Thu 2024-02-22 seq 16
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.25"
	
	echo "start DimiCommit version "$DimiVersion" file "$Version

	cd ../..
	cd ..
	rm commit -rf
	mkdir commit
	cp zellview commit -r
	cd commit/zellview/Dimi/Script
	sh Cleanup.sh
	
	echo "done DimiCommit"

# END DimiCommit.
