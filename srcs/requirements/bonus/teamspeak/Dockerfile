FROM debian:buster

RUN apt update
RUN apt install wget tar bzip2 -y
WORKDIR /
RUN wget https://files.teamspeak-services.com/releases/server/3.13.3/teamspeak3-server_linux_amd64-3.13.3.tar.bz2
RUN tar -xvf teamspeak3-server_linux_amd64-3.13.3.tar.bz2
RUN rm -f teamspeak3-server_linux_amd64-3.13.3.tar.bz2
WORKDIR /teamspeak3-server_linux_amd64
RUN touch .ts3server_license_accepted
ENTRYPOINT (./ts3server_minimal_runscript.sh start)
EXPOSE 9987/udp 10011 30033
