
# SCRIPT DimiConfigDev

# by zellview media
# Sat 22-Feb-2024- seq 6
# www.github.com/zellview

	Version=2
	DimiVersion=3.2.26
	
	cd ../..	
	cd ..
	
	echo "start DimiConfigDev version "$DimiVersion" file "$Version

	echo "change owner of dir zellview to mint"
	sudo chown mint:mint zellview -R

	mkdir zDev
	cp /root/zellview zDev -rv
	cp zellview/Dimi/Rsrc/conf/.bashrc-dev .bashrc

#	echo "change owner of desktop-starter"
#	chown mint:mint "/home/mint/Desktop/zellview abba.desktop"

	echo "done DimiConfigDev"

# END DimiConfigDev.