#!/bin/bash

ID=$(id -u)

R="\e[31m" # Red Colour
G="\e[32m" # Green colour
Y="\e[33m" # Yellow colour
N="\e[0m" # No colour

if [ $ID -ne 0 ]
then
    echo "ERROR: You do not have root permission to run this command"
else
    echo "You are a Root user, proceed."
fi

VALIDATE(){
if [ $? -ne 0 ] #Here $? is used as Exit status
then
    echo " Installation of $APPLICATION is $R FAILED"
    exit 1
else
    echo "Installation of $APPLICATION is $G SUCCESSFUL"
fi
}


echo "Please enter the Application you want to Install"

read APPLICATION

if [ $APPLICATION = "mysql" ]
then 
    yum install mysql -y
    VALIDATE
fi

if [ $APPLICATION = "git" ]
then 
    yum install git -y
    VALIDATE
fi
