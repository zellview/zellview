# 
# SCRIPT DimiConfigUser

# by zellview media
# Sun 25-Feb-2024 seq 26
# www.github.com/zellview

	Version=6
	DimiVersion=3.2.27
	
	cd ../..	
	cd ..
	
	echo "start DimiConfigUser version "$DimiVersion" file "$Version

	echo "change owner of dir zellview to mint"
	sudo chown mint:mint zellview -R

#	echo "change owner of desktop-starter"
#	chown mint:mint "/home/mint/Desktop/zellview abba.desktop"

	echo "done DimiConfigUser"

# END DimiConfigUser.