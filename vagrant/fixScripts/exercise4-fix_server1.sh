#!/bin/bash
#add fix to exercise4-server1 here
mkdir -p /home/vagrant/.ssh
echo "Host server2
    HostName 192.168.100.11" >> /home/vagrant/.ssh/config
