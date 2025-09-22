#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "print the first  error message"

exit 1;

fi

dnf install mysql -y

if [ $? -ne 0 ]; then

echo " print the second error message"

exit 1;

else 

echo " Install mysql command"

exit 0;

fi

# shellcheck disable=SC2317
dnf install nginx -y

# shellcheck disable=SC2317
if [ $? -ne 0 ]; then

echo " print the second error message"

exit 1;

else 

echo " Install nginx command"

exit 0;

fi
