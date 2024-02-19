# SCRIPT DimiCreateUser
# 

# by zellview media
# on Mon 2024-02-19 seq 53
# www.github.com/zellview

	Version=3
	DimiVersion=3.2.22

	echo "start DimiCreateUser version "$DimiVersion" file "$Version
	user=$1

    if [ -z "$user" ]; then
        user=mint
    fi

	cd ../..

	mkdir /home
	mkdir /home/$user
	
	echo "copy dir zellview to /home/"$user
	cp ../zellview /home/$user -r
	
	cp Dimi/Rsrc/conf/.bashrc /home/$user -v
	
#	mkdir /home/$user/Desktop
#	cp Dimi/Rsrc/desktop/* /home/$user/Desktop/ -v
	
	echo "done DimiCreateUser"

# END DimiCreateUser.