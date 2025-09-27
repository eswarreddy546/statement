#!/bin/bash

WEB=$(id -u)

if [ $WEB -ne 0 ]; then
echo "error : not root privelilage acess "

else 
echo " Sucessfully excuted"
fi

Valid ()
{
    if [$1 -ne 0 ]; then
    echo " not installed $2 sucessfully "

    exit 1;
else
    echo " sucessfully installed $2 "

    fi

}

dnf install mysql -y;
valid $? "mysql"

dnf install nginx -y;
valid $? "nginx"

dnf install python3 -y;
valid $? "python3"