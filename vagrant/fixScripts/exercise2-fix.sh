#!/bin/bash
#add fix to exercise2 here
# the problem is we have an entry in /etc/hosts that point www.ascii-art.de to local loopback
sed -i '/ascii-art/d' /etc/hosts
