# 
# SCRIPT DimiCommit

# by zellview media
# Mon 26-Feb-2024 seq 31
# www.github.com/zellview

	Version=6
	
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