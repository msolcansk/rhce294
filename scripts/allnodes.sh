#!/bin/bash
useradd ansible
echo "ansible" | passwd --stdin ansible
echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible
alternatives --set python /usr/bin/python3
yum install -y epel-release
yum install -y ansible