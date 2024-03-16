#!/bin/bash

# We want to install my sql through shell script

ID=$(id -u) # Here id -u will give you root id number

VALIDATE(){
if [ $? -ne 0 ] #Here $? is used as Exit status
then
    echo " Installation is failed"
    exit 1
else
    echo "Installation is successful."
fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR: You do not have root permission to run this command"
    exit 1 # This is the exit command status, shell script will not run if exit status is not "0".
else
    echo "You are a root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE

