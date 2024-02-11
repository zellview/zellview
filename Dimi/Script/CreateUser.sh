# SCRIPT CreateUser
# 

# by zellview media
# on Su 2024-02-11 seq 24
# www.github.com/zellview

	Version=0
	DimiVersion=3.2.20

	echo "start CreateUser version "$Version
	user=$1

    if [ -z "$user" ]; then
        user=mint
    fi

	echo "makedir /home/"$user
	mkdir /home/$user
	
	echo "copy /root/zellview to /home/"$user
	cp /root/zellview /home/$user -r
	
	echo "copy /root/zellview/Dimi/Rsrc/conf/.bashrc to /home/"$user
	cp /root/zellview/Dimi/Rsrc/conf/.bashrc /home/$user -v
	
	echo "copy starter to /home/"$user
	cp "/root/zellview/Dimi/Rsrc/desktop/zellview abba.desktop" /home/"$user -v
	
	echo "Done CreateUser"

# END CreateUser.