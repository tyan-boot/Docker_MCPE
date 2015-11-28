#!/bin/bash
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ""
passwd -d root
/usr/sbin/sshd

exec /bin/bash
