FROM debian:buster

RUN apt update
RUN apt install vsftpd -y
RUN cp /etc/vsftpd.conf /etc/vsftpd.conf.orig
RUN sed -i 's/listen=NO/listen=YES/g' /etc/vsftpd.conf
RUN sed -i 's/listen_ipv6=YES/listen_ipv6=NO/g' /etc/vsftpd.conf
RUN sed -i 's/connect_from_port_20=NO/connect_from_port_20=YES/g' /etc/vsftpd.conf
RUN sed -i 's/anonymous_enable=YES/anonymous_enable=NO/g' /etc/vsftpd.conf
RUN sed -i 's/local_enable=NO/local_enable=YES/g' /etc/vsftpd.conf
RUN sed -i 's/write_enable=NO/write_enable=YES/g' /etc/vsftpd.conf
RUN sed -i 's/chroot_local_user=NO/chroot_local_user=YES/g' /etc/vsftpd.conf
RUN sed -i 's/allow_writeable_chroot=NO/allow_writeable_chroot=YES/g' /etc/vsftpd.conf
# RUN sed -i 's/secure_chroot_dir=*/secure_chroot_dir=\/var\/run\/vsftpd\/empty/g' /etc/vsftpd.conf
RUN sed -i 's/pam_service_name=*/pam_service_name=vsftpd/g' /etc/vsftpd.conf
RUN sed -i 's/pasv_min_port=*/pasv_min_port=40000/g' /etc/vsftpd.conf
RUN sed -i 's/pasv_max_port=*/pasv_max_port=45000/g' /etc/vsftpd.conf
RUN sed -i 's/userlist_enable=NO/userlist_enable=YES/g' /etc/vsftpd.conf
# RUN sed -i 's/userlist_file=*/userlist_file=\/etc\/vsftpd.userlist/g' /etc/vsftpd.conf
RUN  echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf
RUN sed -i 's/userlist_deny=YES/userlist_deny=NO/g' /etc/vsftpd.conf
RUN sed -i 's/background=NO/background=YES/g' /etc/vsftpd.conf
RUN adduser tin
RUN echo "tin:root" | chpasswd
RUN chown -R tin: /home/tin
RUN echo "tin" | tee -a /etc/vsftpd.userlist
EXPOSE 20 21
RUN (service vsftpd start)
CMD (/usr/sbin/vsftpd)