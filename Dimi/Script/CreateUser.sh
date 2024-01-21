# SCRIPT CreateUser
# 

# by zellview new media
# on 2024-01-20 seq 12
# www.zellview.net

version=3.2.18

	user=$1

    if [ -z "$user" ]; then
        user=mint
    fi

	mkdir /home/$user
	cp /root/zellview /home/$user -rv
	cp /root/zellview/Dimi/Rsrc/conf/.bashrc /home/$user -v
	
#	chown $user:$user /home/$user/zellview -R

# END CreateUser.