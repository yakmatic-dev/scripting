#!/bin/bash

ls /var/run/apache2/apache2.pid >> /dev/null

if [ $? -eq 0 ] ; then
 echo "apache2 is running"
else
 echo "apache2 is not running"
 echo "starting apache2"
 sudo systemctl start apache2
  if [ $? -eq 0 ]; then
   echo "apache2 is starting"
  else
   echo "process starting failed, contact yakmatic1@gmail.com" 
  fi
fi
