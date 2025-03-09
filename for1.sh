#!/bin/bash

Users="alpha beta gamma"
for usr in $Users
do
 echo "adding users"
 sudo userdel $usr
 id $usr
done
