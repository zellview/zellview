

# SCRIPT DimiCleanup

# www.github.com/zellview
# by zellview media

	Version=11
	
	echo
	echo "DimiCleanup version "$Version" started ..."

	cd ../..
	
#	echo "press RETURN to continue or CTRL-C to cancel"
#	read tmp
#	echo "remove .git*"
#	rm .git* --recursive --force

	echo "remove *log"	
	rm *log
	
	echo "remove odc*"	
	rm odc*	
	
	echo "remove /Dimi/Mod/odc*"
	rm Dimi/Mod/odc*

	echo "DimiCleanup done"

# END DimiCleanup.