#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then

echo "Eroor print you have not root  acess"


exit 1;

fi
dnf install mysql -y;

if [ $? -ne 0 ]; then

echo "not running mysql command"

exit 1;
else
echo " command mysql is sucessfullly running "
fi

dnf install nginx -y;

if [ $? -ne 0 ]; then

echo "not running nginx command"

exit 1;
else
echo " command nginx is sucessfullly running "
fi

dnf remove mysql -y;

if [ $? -ne 0 ]; then
 echo "error not remove mysql"
exit 1;
 else "sucessfully removes mysql"

 fi

systemctl status nginx;
if [ $? -ne 0 ]; then

echo "not running not showing staus command"

exit 1;
else
echo " command showing is sucessfullly running "
fi