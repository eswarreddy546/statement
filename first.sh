#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "print the first  error message"

fi

dnf install mysql -y

if [ $? -ne 0 ]; then

echo " print the second error message"

else 

echo " Install mysql command"

fi