# 
# SCRIPT DimiCleanup

# by zellview media
# Mon 26-Feb-2024 seq 71
# www.github.com/zellview

	Version=9
	DimiVersion=3.2.28

	echo
	echo "DimiCleanup version "$DimiVersion" file "$Version" started ..."

	cd ../..
	
#	echo "press RETURN to continue or CTRL-C to cancel"
#	read tmp
#	echo "remove .git*"
#	rm .git* --recursive --force

	echo "remove *log"	
	rm *log
	
	echo "renove odc*"	
	rm odc*	
	
	echo "remove /Dimi/Mod/odc*"
	rm Dimi/Mod/odc*

	echo "DimiCleanup done"

# END DimiCleanup.