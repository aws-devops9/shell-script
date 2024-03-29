#!/bin/bash

# We want to install my sql through shell script
# here is the algorithm

# Check if the user is having root permissions or not
#      -> If Root, proceed, If not throw an error "echo - You do not have root permission to run this command"
# Install mysql, If success - Guve Success message "- The Installation is successful"
# If not throw an error "- The installation is Failed"

# We need to use EXIt status here to check if the command is not successful the next command should run and shell script should be stopped.
# "$?" is the command to check the EXIT status, If it is "0" - Success, Othen than 0 --> Failed

ID=$(id -u) # Here id -u will give you root id number
if [ $ID -ne 0 ]
then
    echo "ERROR: You do not have root permission to run this command"
    exit 1 # This is the exit command status, shell script will not run if exit status is not "0".
else
    echo "You are a root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo " Installation of mysql failed"
    exit 1
else
    echo "Installation of mysql is successful."
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo " Installation of git failed"
    exit 1
else
    echo "Installation of git is successful."
fi

