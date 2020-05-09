#!/bin/bash
#add fix to exercise4-server2 here
mkdir -p /home/vagrant/.ssh
echo "Host server1
    HostName 192.168.100.10" >> /home/vagrant/.ssh/config
