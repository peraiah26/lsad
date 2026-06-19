#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

    echo "ERROR:: PLEASE RUN THE SCCRIPT ROOT PRIVILLAGES"
    exit 1

fi

validate()
{
if [ $1 -ne 0 ]; then

    echo "package installation $2 is failure"
    exit 1
else

    echo "package installation $2 is success"
fi
}

dnf install nginx -y
validate $? "nginx"

dnf install mysql -y
validate $? "mysql"

dnf install python -y
validate $? "python"


