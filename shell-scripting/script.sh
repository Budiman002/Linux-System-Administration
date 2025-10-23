#!/bin/bash

#memory
echo "The memory Usage (in Megabytes)"
free -m | awk '/Mem:/ {print "Used Memory:", $3, "MB"}'
echo ""
sleep 1

#Disk
echo "Disk Usage (in Gigabytes)"
df -BG --total | grep total
echo ""
sleep 1

#FileSystem & use%
echo "FileSysytem & use%"
df -h | awk 'NR==1 || ($1 !~ /tmpfs/) {print $1, $5}'
sleep 1
