# 
# SCRIPT DimiConfigUser

# by zellview media
# Tue 27-Feb-2024 seq 31
# www.github.com/zellview

	Version=8
	
	cd ../..	
	cd ..
	
	echo "DimiConfigUser version "$Version" started ..."
	
	echo "change owner of dir zellview to mint"
	sudo chown mint:mint zellview -R

#	echo "change owner of desktop-starter"
#	chown mint:mint "/home/mint/Desktop/zellview abba.desktop"

	echo "DimiConfigUser done"

# END DimiConfigUser.