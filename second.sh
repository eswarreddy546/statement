#!/bin/bash

USER=$(id -u)
R="e\[32m"

if [ $USER -ne 0 ]; then
echo: "error tou have not root acess"

exit 1;
fi

dnf install nginx -y;
if [ $? -ne 0 ]; then

echo "Not installed nginx server"

exit 1;

else 

echo -e " $R Installed sucessfully"

fi

systemctl start nginx -y;

if [ $? -ne 0 ]; then

echo " not excute status command"

exit 1;

else
  echo "excute sucessfully"

  fi