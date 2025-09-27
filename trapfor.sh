#!/bin/bash

WEB=$(id -u)

set -u
#trap 'echo "❌ Error occurred on line $LINENO. Stopping script safely..."; exit 1' ERR



# Root check — if not root, print error and exit
if [ "$WEB" -ne 0 ]; then
    echo "❌ Error: not root privilege access. Please run with sudo."
    exit 1
else
    echo "✅ Successfully executed as root"
fi

# Function must be defined with same name we call (lowercase 'valid')
valid() {
    # note spaces around [ and ] and quoting variables
    if [ "$1" -ne 0 ]; then
        echo "❌ Installation FAILED for $2"
        exit 1
    else
        echo "✅ Successfully installed $2 .......skipping the code "
    fi
}

# Install packages and validate
dnf install mysql -y

dnf install nginx -y

dnf installs python3 -y
ech " finally excuted the code "