#!/bin/bash
UAID=$(id -u)

if [ $UAID -ne 0 ]; then

echo "error: not privilage acess "
exit 1;

else

 echo "Hello world"

fi

