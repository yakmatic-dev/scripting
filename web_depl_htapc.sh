#!/bin/bash

#Installing dependencies

echo "#######################"
echo "Dependencies installing"
echo "######################"
sudo apt install wget unzip apache2 -y
echo

#Starting and enabling service
echo "######################"
echo "httpd service starting and enabling"
echo "######################"
sudo systemctl start apache2 && sudo systemctl enable apache2
echo

#creating temp file and deploying artifact
echo "######################"
echo "Deploying artifact"
echo "######################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
unzip 2135_mini_finance.zip
sudo cp -r 2135_mini_finance/ /var/www/html/

#Restart service
echo "####################"
echo "Restarting service"
echo "####################"
sudo systemctl restart apache2

#Cleaning up
echo "####################"
echo "cleaning up"
echo "####################"

rm -rf /tmp/webfiles
