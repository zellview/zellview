# SCRIPT CreateUser
# 

# by zellview new media
# on 2024-01-09 seq 8
# www.zellview.net

version=3.2.16

	user=$1

	mkdir /home/$user
	cp /root/zellview /home/$user -r
#	chown $user:$user /home/$user/zellview -R

# END CreateUser.