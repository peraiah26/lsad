#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "ERROR:: please run this script using root privillage"

exit
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MySQL is failure"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi