# 
# SCRIPT DimiCleanup

# by zellview media
# Tue 27-Feb-2024 seq 72
# www.github.com/zellview

	Version=10

	echo
	echo "DimiCleanup version "$Version" started ..."

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