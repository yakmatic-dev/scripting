#!/bin/bash

read -p "Enter your number: " Num

if [ "$Num" -gt 100 ]; then
    echo "You just entered a number"
    sleep 3
    echo "Your number is greater than 100"
    echo
else
    echo "Your number is less than or equal to 100"
    echo
fi

echo "Script completed successfully"
