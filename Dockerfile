FROM centos

MAINTAINER Boot tyanboot@outlook.com

RUN yum makecache
RUN yum install -y perl gcc g++ make automake libtool autoconf m4 wget bzip2 openssh openssh-server

WORKDIR /home

RUN wget -O pm.sh http://get.pocketmine.net
RUN bash pm.sh -r

EXPOSE 22:22
EXPOSE 19132:19132

COPY ./sshd_config /etc/ssh/sshd_config
COPY ./withssh.sh /home/withssh.sh

RUN chmod a+x /home/withssh.sh