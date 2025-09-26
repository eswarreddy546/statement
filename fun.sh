#!/bin/bash

USE=$(id -u)

if [ $USE -ne 0 ]; then
 
 echo "eror occured"
exit 1;


fi

Valid (){

if [ $1 -ne 0 ]; then

echo "$2 is not installed"
exit 1;
else
echo "$2 is sucessfully instaeed"

fi

}
dnf install mysql -y;
 Valid $? "mysql"
 
 dnf install nginx -y;
 Valid $? "nginx"

 dnf install python3 -y;
 Valid $? "python"