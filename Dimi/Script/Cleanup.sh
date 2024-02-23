# SCRIPT DimiCleanup
# 

# by zellview media
# Fri 2024-02-23 seq 57
# www.github.com/zellview

	Version=5
	DimiVersion=3.2.26

	cd ../..

#	echo "starting DimiCleanup version "$DimiVersion" file "$Version
#	echo "ATTENTION: This script will clean up zellview INCLUDE .git !!!!"
#	echo "press RETURN to continue or CTRL-C to cancel"
#	read tmp

#	echo "remove .git*"
#	rm .git* --recursive --force
	
	echo "remove *log"	
	rm *log
	
	echo "remove odc*"
	rm odc*
	
	echo "remove Dimi/Mod/odc*"
	rm Dimi/Mod/odc*

	echo "done DimiCleanup"

# END DimiCleanup.