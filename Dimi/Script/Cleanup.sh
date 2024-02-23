# SCRIPT DimiCleanup
# 

# by zellview media
# Fri 2024-02-23 seq 61
# www.github.com/zellview

	Version=6
	DimiVersion=3.2.26

	echo
	echo "DimiCleanup version "$DimiVersion" file "$Version" started ..."

	cd ../..
	
#	echo "press RETURN to continue or CTRL-C to cancel"
#	read tmp
#	echo "remove .git*"
#	rm .git* --recursive --force
	
	rm *log	
	rm odc*	
	rm Dimi/Mod/odc*

	echo "DimiCleanup done"

# END DimiCleanup.