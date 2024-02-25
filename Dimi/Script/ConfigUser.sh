# 
# SCRIPT DimiConfigUser

# by zellview media
# Thu 2024-02-22 seq 25
# www.github.com/zellview

	Version=5
	DimiVersion=3.2.26
	
	cd ../..	
	cd ..
	
	echo "start DimiConfigUser version "$DimiVersion" file "$Version

	echo "change owner of dir zellview to mint"
	sudo chown mint:mint zellview -R

#	echo "change owner of desktop-starter"
#	chown mint:mint "/home/mint/Desktop/zellview abba.desktop"

	echo "done DimiConfigUser"

# END DimiConfigUser.