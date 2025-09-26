#!/bin/bash
USER_ID = $(id_u)

if [ $USER_ID -nq 0 ]; then

echo "Eroor print you have not root  acess"

exit 1;

dnf install mysql -y;

if [ $? -ne 0 ]; then

echo "not running mysql command"

exit 1;
else

echo " command mysql is sucessfullly running "
fi