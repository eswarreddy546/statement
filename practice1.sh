#!/bin/bash
UAID=$(id -u)

if [ $UAID -ne 0 ]; then

echo "error: not privilage acess "

else

exit 1;

echo  "Sucessfully Running"

fi

