

# SCRIPT DimiCommit

# www.github.com/zellview
# by zellview media
# contrib kai47x

	Version=7
	
	echo "DimiCommit version "$Version" started ..."

	sh commit/zellview/Dimi/Script/Cleanup.sh
	
	cd ../..
	cd ..
	
	echo "remove ../commit"
	rm commit -rf
	
	echo "make dir commit"
	mkdir commit
	
	echo "copy zellview to ../commit"
	cp zellview commit -rfv	
	
	echo "DimiCommit done"

# END DimiCommit.