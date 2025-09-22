#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo "ERROR:: Installing $2 is failure"
        exit 1
    else
        echo "Installing $2 is SUCCESS"
    fi
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "python3"

dnf install git -y
VALIDATE $? "git"

git --version
VALIDATE $? "git"


systemctl start nginx -y
VALIDATE $? "nginx start"

# Install net-tools (for netstat)
dnf install net-tools -y
VALIDATE $? "net-tools"

# Run netstat to check ports
netstat -nltp
VALIDATE $? "netstat"

# Start nginx (no -y here!)
systemctl start nginx
VALIDATE $? "nginx start"
