

# SCRIPT DimiCreateUser

# www.github.com/zellview
# by zellview media

	Version=13

	echo "start DimiCreateUser version "$Version
	user=$1

    if [ -z "$user" ]; then
        user=dimi		# default user
    fi

	cd ../..

	echo "cleanup; remove dir home"
	rm /home -r

	echo "make dir /home/$user"
	mkdir /home
	mkdir /home/$user
	
	echo "copy dir zellview to /home/"$user
	cp /root/zellview /home/$user -r
#	chown -Rv $user:$user /home/$user/zellview

#	echo "copy .bashrc-user to ~/.bashrc"		
#	cp Dimi/Rsrc/conf/.bashrc-user /home/$user/.bashrc -v
	
	mkdir /home/$user/Desktop
	cp Dimi/Rsrc/desktop/* /home/$user/Desktop/ -v
	
	echo "DimiCreateUser done"

# END DimiCreateUser.