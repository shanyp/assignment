#!/bin/bash
#add fix to exercise1 here
#the issue was a route was added to go to textfiles using the private interface
ip route delete 208.86.224.90 dev eth0