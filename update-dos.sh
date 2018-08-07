#!/bin/bash

# Update version
VERSION=1

# Update paths
_from_one () {
    echo 'Placeholder 1'
    _from_two
}

_from_two () {
    echo 'Placeholder 2'
}


# Get username
USER=$(who | grep tty1 | cut -d\  -f 1)

# Get installed version
INSTALLED=$(cat /home/$USER/.system-version)
if [[ $? != 0 ]]; then
    dialog --msgbox "ERROR: System version cannot be determined" 5 50 
    exit
fi

if [[ $INSTALLED == $VERSION ]]; then
    dialog --msgbox "Your system is up to date!" 5 45
    exit
fi

# Select update path based on installed version
case $INSTALLED in
    1) _from_one ;;
    2) _from_two ;;
esac
