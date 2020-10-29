#!/bin/bash
# #Need to rework, it still gets root home
# user_path=`/bin/su -s /bin/bash -c "echo $HOME" ansible`
# nodes=("a1" "a2" "a3" "a4" "a5")
# /bin/su -s /bin/bash -c "ssh-keygen -q -f ~/.ssh/id_rsa -t rsa -N ''" ansible
# /bin/su -s /bin/bash -c "touch  ~/.ssh/known_hosts" ansible
# /bin/su -s /bin/bash -c "chmod 644  ~/.ssh/known_hosts" ansible

# for host in "${hosts[@]}" 
# do
#     local ip=$(grep ${host} /etc/hosts | cut -f1)
#     ssh-keyscan $host | grep -v "^#" | sed "s/^${host}/&,${ip}/" >> 
#     /bin/su -s /bin/bash -c "ssh-copy-id ansible@$host" ansible 
# done

# not needed, all lessons files are synced with guest in /vagrant/lesssons/<lessonN> 
# su -c "cp /vagrant/ansible.cfg /home/ansible" ansible
# su -c "chown ansible:ansible /home/ansible/ansible.cfg" ansible

sudo yum install -y python3-argcomplete
