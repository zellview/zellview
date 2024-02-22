# SCRIPT DimiCleanup
# 

# by zellview media
# Thu 2024-02-22 seq 53
# www.github.com/zellview

	Version=4
	DimiVersion=3.2.25

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