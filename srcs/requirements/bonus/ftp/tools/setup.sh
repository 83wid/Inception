
adduser $MYSQL_USER;

echo "$MYSQL_USER:$MYSQL_PASSWORD" | chpasswd;

chown -R $MYSQL_USER: /home/$MYSQL_USER;

mkdir -p /home/$MYSQL_USER/ftp/;

chown $MYSQL_USER:$MYSQL_USER /home/$MYSQL_USER/ftp/;

echo "secure_chroot_dir=/home/$MYSQL_USER/ftp/" >> /etc/vsftpd.conf

echo "$MYSQL_USER" | tee -a /etc/vsftpd.userlist;

/usr/sbin/vsftpd;