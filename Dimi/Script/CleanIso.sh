# SCRIPT DimiCleanIso;
# 

# by zellview media
# on Su 2024-02-11 seq 43
# www.github.com/zellview

	Version=0
	DimiVersion="3.2.20"

	echo "starting DimiCleanIso "$Version

	echo "remove custom dirs in Resource"
	rm ~/zDev/dimi-image/custom-* -rf
#	rm ~/zDev/dimi-image/partition-* -f
	rm ~/zDev/dimi-image/*.iso -f
	rm ~/zDev/dimi-image/source-disk -rf
	
	echo "Done DimiCleanIso"
	
# END DimiCleanIso.