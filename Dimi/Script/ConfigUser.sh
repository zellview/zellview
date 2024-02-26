# 
# SCRIPT DimiConfigUser

# by zellview media
# Mon 26-Feb-2024 seq 29
# www.github.com/zellview

	Version=7
	DimiVersion=3.2.28
	
	cd ../..	
	cd ..
	
	echo "DimiConfigUser version "$DimiVersion" file "$Version" started ..."
	
	echo "change owner of dir zellview to mint"
	sudo chown mint:mint zellview -R

#	echo "change owner of desktop-starter"
#	chown mint:mint "/home/mint/Desktop/zellview abba.desktop"

	echo "DimiConfigUser done"

# END DimiConfigUser.