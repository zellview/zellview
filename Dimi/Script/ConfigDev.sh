# 
# SCRIPT DimiConfigDev

# by zellview media
# Sun 25-Feb-2024- seq 10
# www.github.com/zellview

	Version=2
	DimiVersion=3.2.26
	
	cd ../..	
	cd ..
	
	echo "start DimiConfigDev version "$DimiVersion" file "$Version

	# create Dev-Folder"
	mkdir zDev
	
	# aliases for Developers
	cp zellview/Dimi/Rsrc/conf/.bashrc-dev .bashrc

	echo "done DimiConfigDev"

# END DimiConfigDev.