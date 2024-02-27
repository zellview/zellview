# 
# SCRIPT DimiCreateUser

# by zellview media
# Tue 27-Feb-2024 seq 72
# www.github.com/zellview

	Version=11

	echo "start DimiCreateUser version "$Version
	user=$1

    if [ -z "$user" ]; then
        user=mint		# default user
    fi

	cd ../..

	echo "cleanup; remove dir home"
	rm /home -r

	echo "make dir /home/$user"
	mkdir /home
	mkdir /home/$user
	
	echo "copy dir zellview to /home/"$user
	cp ../zellview /home/$user -r

	echo "copy .bashrc-user to ~/.bashrc"		
	cp Dimi/Rsrc/conf/.bashrc-user /home/$user/.bashrc -v
	
#	mkdir /home/$user/Desktop
#	cp Dimi/Rsrc/desktop/* /home/$user/Desktop/ -v
	
	echo "DimiCreateUser done"

# END DimiCreateUser.