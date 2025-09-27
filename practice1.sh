#!/bin/bash
UAID=$(id -u)
R="\e[31m"
E="\e[32m"


if [ $UAID -ne 0 ]; then
echo "error: not privilage acess "
exit 1;

else
 echo "Hello world"
fi

dnf install mysql -y;

if [ $? -ne 0 ]; then

echo " not excutd "

else

echo -e " $R sucessfully excuted "

fi

dnf install nginx -y;

if [ $? -ne 0 ]; then

echo " not excutd "

else

echo -e "$E sucessfully nginx excuted "

fi

dnf install python3 -y;

if [ $? -ne 0 ]; then

echo " not excutd "

else

echo -e " $E sucessfully  excuted python3 "

fi
