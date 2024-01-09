# SCRIPT DimiCleanIso
# 

# on 2024-01-09 seq 41
# by zellview media
# www.zellview.net

	version="3.2.16"

	echo "starting DimiCleanIso "$version

	echo "remove custom dirs in Resource"
	rm ~/zDev/dimi-image/custom-* -rf
#	rm ~/zDev/dimi-image/partition-* -f
	rm ~/zDev/dimi-image/*.iso -f
	rm ~/zDev/dimi-image/source-disk -rf
	
	echo "Done DimiCleanIso"