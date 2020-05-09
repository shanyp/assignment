#!/bin/bash
#add fix to exercise5-server2 here
apt-get install -y sshpass 
echo "Host server1
    HostName 192.168.100.10
    StrictHostKeyChecking no
    UserKnownHostsFile=/dev/null" > /home/vagrant/.ssh/config

cat /vagrant/id_rsa_server1_root.pub >> ~/.ssh/authorized_keys
cat /vagrant/id_rsa_server1.pub >> ~vagrant/.ssh/authorized_keys

sudo -H -u vagrant /bin/sh <<\SCRIPT
yes | ssh-keygen -b 2048 -t rsa -f ~vagrant/.ssh/id_rsa -q -N ""
sshpass -p "vagrant" ssh-copy-id -i ~vagrant/.ssh/id_rsa.pub vagrant@server1
SCRIPT


