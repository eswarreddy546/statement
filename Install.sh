#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "You must run this script as root"
    exit 1
fi

# Install MySQL
dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "MySQL installation failed"
    exit 1
else 
    echo "MySQL installed successfully"
fi

# Install Nginx
dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "Nginx installation failed"
    exit 1
else 
    echo "Nginx installed successfully"
fi

exit 0
