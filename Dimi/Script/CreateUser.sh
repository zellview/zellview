
#	SCRIPT DimiCreateUser

# by zellview media
# Wed 2024-02-21 seq 57
# www.github.com/zellview

	Version=5
	DimiVersion=3.2.24

	echo "start DimiCreateUser version "$DimiVersion" file "$Version
	user=$1

    if [ -z "$user" ]; then
        user=mint		# default user
    fi

	cd ../..

	rm /home -r

	mkdir /home
	mkdir /home/$user
	
	echo "copy dir zellview to /home/"$user
	cp ../zellview /home/$user -r
	
	cp Dimi/Rsrc/conf/.bashrc /home/$user -v
	
#	mkdir /home/$user/Desktop
#	cp Dimi/Rsrc/desktop/* /home/$user/Desktop/ -v
	
	echo "done DimiCreateUser"

# END DimiCreateUser.