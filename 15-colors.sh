#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[33m"
N="\e[0m"

#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

    echo "ERROR:: PLEASE RUN THE SCCRIPT ROOT PRIVILLAGES"
    exit 1

fi

validate()
{
if [ $1 -ne 0 ]; then

    echo -e "package installation $2 is $R failure $N"
    exit 1
else

    echo "package installation $2 is success $N"
fi
}
 
if [ $? -ne 0 ]; then
    dnf install nginx -y
    validate $? "nginx"
 else
    echo -e "nginx is already exist....$R SKIPPING $N"
fi

if [ $? -ne 0 ]; then
    dnf install mysql -y
    validate $? "mysql"
else
    echo -e "nginx is already exist....$R SKIPPING $N"
fi

if [ $? -ne 0 ]; then
    dnf install python -y
    validate $? "python"
else
    echo -e "nginx is already exist....$R SKIPPING $N"
fi


