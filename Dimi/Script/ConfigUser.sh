
# SCRIPT DimiConfigUser

# by zellview media
# Thu 2024-02-22 seq 22
# www.github.com/zellview

	Version=4
	DimiVersion=3.2.25
	
	cd ../..	
	cd ..
	
	echo "start DimiConfigUser version "$DimiVersion" file "$Version

	echo "change owner of dir zellview to $USER"
	sudo chown mint:mint zellview -R

#	echo "change owner of desktop-starter"
#	chown mint:mint "/home/mint/Desktop/zellview abba.desktop"

	echo "done DimiConfigUser"

# END DimiConfigUser.