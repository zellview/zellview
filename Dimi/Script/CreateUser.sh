# SCRIPT CreateUser
# 

# by zellview media
# on Th 2024-02-15 seq 39
# www.github.com/zellview

	Version=2
	DimiVersion=3.2.21

	echo "start CreateUser version "$Version
	user=$1

    if [ -z "$user" ]; then
        user=mint
    fi

	cd ../..

	# copy zellview to userdir
	mkdir /home/$user
	cp  * /home/$user --recursive --verbose
	cp Dimi/Rsrc/conf/.bashrc /home/$user -v
	cp Dimi/Rsrc/desktop/* /home/$user/Desktop -v
	
	echo "Done CreateUser"

# END CreateUser.