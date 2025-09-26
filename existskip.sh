#!/bin/bash

User=$(id -u)

if [ $User -ne 0 ]; then

echo "Error is not occured "

fi

valid ()
{
    if [ $1 -ne 0 ]; then 
echo "error is occured $2 is "

else
echo "Sucessfully exicuted $2 "
 
 fi
}



dnf list installed mysql;
if [ $? -ne 0 ]; then
dnf install mysql -y;
valid $? "mysql"
else 
echo : "Alredy mysql is avalible please skip it....."

fi


dnf list installed nginx;
if [ $? -ne 0 ]; then
dnf install nginx -y;
valid $? "mysql"
else 
echo : "Alredy nginx is avalible please skip it....."

fi

dnf list installed python3;
if [ $? -ne 0 ]; then
dnf install python3 -y;
valid $? "m"
else 
echo : "Alredy python3  is avalible please skip it....."

fi

dnf list installed nginx;
if [ $? -ne 0 ]; then
dnf remove python3 -y;
valid $? "mysql"
else 
echo : "Alredy python3 is not avalible removed....."
fi