# SCRIPT CreateUser
# 

# by zellview media
# on Sun 2024-02-18 seq 44
# www.github.com/zellview

	Version=2
	DimiVersion=3.2.22

	echo "start CreateUser version "$DimiVersion" file "$Version
	user=$1

    if [ -z "$user" ]; then
        user=mint
    fi

	cd ../..

	# copy zellview to userdir
	mkdir /home/$user
	cp ../zellview /home/$user -r
	cp Dimi/Rsrc/conf/.bashrc /home/$user -v
	mkdir /home/$user/Desktop
	cp Dimi/Rsrc/desktop/* /home/$user/Desktop/ -v
	
	echo "Done CreateUser"

# END CreateUser.