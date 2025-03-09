#!/bin/bash

# This script prints the system info

echo

# checking the system uptime
echo "#######################"
echo " The system uptime is :"
uptime
echo

#checking the memory utilization

echo "######################"
echo "Memory utilization"
free -h
echo

#Disk utilization
echo "######################"
echo "Disk storage"
echo "The disk info is :"
df -h
echo
