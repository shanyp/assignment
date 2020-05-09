#!/bin/bash
#add fix to exercise5-server1 here
/bin/sh <<\SCRIPT_ROOT
yes | ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
cp ~/.ssh/id_rsa.pub /vagrant/id_rsa_server1_root.pub
SCRIPT_ROOT

sudo -u vagrant /bin/sh <<\SCRIPT
yes | ssh-keygen -b 2048 -t rsa -f ~vagrant/.ssh/id_rsa -q -N ""
cp ~vagrant/.ssh/id_rsa.pub /vagrant/id_rsa_server1.pub
SCRIPT

echo "Host server2
    HostName 192.168.100.11
    StrictHostKeyChecking no
    UserKnownHostsFile=/dev/null" > ~vagrant/.ssh/config