# 
# SCRIPT DimiCleanup

# by zellview media
# Sun 25-Feb-2024 seq 64
# www.github.com/zellview

	Version=7
	DimiVersion=3.2.27

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