# SCRIPT DimiCleanIso;
# 

# by zellview media
# Wed 2024-02-21 seq 48
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.24"

	echo "start DimiCleanIso version "$DimiVersion" file "$Version

	echo "remove custom dirs in Resource"
	rm ~/zDev/dimi-image/custom-* -rf
#	rm ~/zDev/dimi-image/partition-* -f
	rm ~/zDev/dimi-image/*.iso -f
	rm ~/zDev/dimi-image/source-disk -rf
	
	echo "Done DimiCleanIso"
	
# END DimiCleanIso.