# SCRIPT DimiCleanIso
# 

# kk, 25. Dezember 2023
# by zellview media
# www.zellview.net

	version="3.2.08"

	echo "starting DimiCleanIso version "$version

	echo "remove custom dirs in Resource"
	rm ~/zDev/dimi-iso/custom-* -rf
#	rm ~/zDev/dimi-iso/partition-* -f
	rm ~/zDev/dimi-iso/*.iso -f
	rm ~/zDev/dimi-iso/source-disk -rf
	
	echo "Done DimiCleanIso"