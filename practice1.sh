#!/bin/bash
UAID=$(id -u)

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

echo " sucessfully excuted "

fi

dnf install nginx -y;

if [ $? -ne 0 ]; then

echo " not excutd "

else

echo " sucessfully nginx excuted "

fi

dnf install python3 -y;

if [ $? -ne 0 ]; then

echo " not excutd "

else

echo " sucessfully  excuted python3 "

fi
