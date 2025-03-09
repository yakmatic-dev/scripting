#!/bin/bash

#Declaring Variables
PACKAGE="wget unzip apache2"
SVC="apache2"
#ART="2135_mini_finance"
TMP_DIR="tmp/webfiles"
#URL="https://www.tooplate.com/zip-templates/2135_mini_finance.zip"
#Installing dependencies

echo "#######################"
echo "Dependencies installing"
echo "######################"
sudo apt install $PACKAGE -y
echo

#Starting and enabling service
echo "######################"
echo "httpd service starting and enabling"
echo "######################"
sudo systemctl start $SVC && sudo systemctl enable $SVC
echo

#creating temp file and deploying artifact
echo "######################"
echo "Deploying artifact"
echo "######################"
mkdir -p $TMP_DIR
cd $TMP_DIR
echo
wget $1
unzip $2.zip
sudo cp -r $2/ /var/www/html/

#Restart service
echo "####################"
echo "Restarting service"
echo "####################"
sudo systemctl restart $SVC

#Cleaning up
echo "####################"
echo "cleaning up"
echo "####################"

rm -rf $TMP_DIR


