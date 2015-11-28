FROM centos

MAINTAINER Boot tyanboot@outlook.com

RUN yum install -y perl gcc g++ make automake libtool autoconf m4 wget bzip2

WORKDIR /home

RUN wget -O pm.sh http://get.pocketmine.net
RUN bash pm.sh -r

