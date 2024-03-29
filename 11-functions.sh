#!/bin/bash

# We want to install my sql through shell script
# If ID is not equal to 0 then It is a Root user

ID=$(id -u)

R="\e[31m" # Red Colour
G="\e[32m" # Green colour
Y="\e[33m" # Yellow colour
N="\e[0m" # No colour

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 $R...FAILED $N" # $R - For Red Colour, $2 is used for exit status 
        exit 1
    else
        echo -e "$2 $G...SUCCESS $N" # $G - For Green Colour, $2 is used for exit status 
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR: You do not have root permission to run this command"
    exit 1 # We need to give this command to stop the process here when we receive error
else
    echo "You are a Root user, Proceed"
fi

dnf install mysql -y # Install 

VALIDATE $? "Installing MySQL"

dnf install git -y

VALIDATE $? "Installing GIT"