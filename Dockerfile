FROM centos

MAINTAINER Boot tyanboot@outlook.com

RUN yum install -y perl gcc g++ make automake libtool autoconf m4 wget bzip2 openssh openssh-server

WORKDIR /home

RUN wget -O pm.sh http://get.pocketmine.net
RUN bash pm.sh -r

EXPORT 22:22
EXPORT 19132:19132

COPY ./sshd_config /etc/ssh/sshd_config