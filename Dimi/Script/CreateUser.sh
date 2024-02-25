
#	SCRIPT DimiCreateUser

#	by zellview media
#	Sun 2024-02-25 seq 61
#	www.github.com/zellview

	Version=7
	DimiVersion=3.2.26

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
	
	cp Dimi/Rsrc/conf/.bashrc-user /home/$user/.bashrc -v
	
#	mkdir /home/$user/Desktop
#	cp Dimi/Rsrc/desktop/* /home/$user/Desktop/ -v
	
	echo "done DimiCreateUser"

# END DimiCreateUser.