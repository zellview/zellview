# SCRIPT CreateUser
# 

# by zellview new media
# on 2024-01-09 seq 7
# www.zellview.net

	user=$1

	mkdir /home/$user
	cp /root/zellview /home/$user -r
	chown $user:$user /home/$user/zellview -R

# END CreateUser.