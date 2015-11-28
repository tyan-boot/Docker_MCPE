#!/bin/bash
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N "" >/dev/null
passwd -d root
/usr/sbin/sshd -D

#exec /bin/bash
