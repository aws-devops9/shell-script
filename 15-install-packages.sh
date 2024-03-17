#!/bin/bash

# We are trying to install multiple packages using loop

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOG="/tmp/$0-$TIMESTAMP.log"

R="\e[31m" # Red Colour
G="\e[32m" # Green colour
Y="\e[33m" # Yellow colour
N="\e[0m" # No colour

echo -e "Script started executing : $G..$TIMESTAMP $N"

if [ $ID != 0 ]
then
    echo "ERROR: You do not have root permission to run this command"
    exit 1
else
    echo "You are a Root user, proceed."
fi

VALIDATE(){
    if [ $? != 0 ]
    then
        echo -e "$package installation is $R FAILED.$N"
    else
        echo -e "$package installation is $G SUCCESS.$N"
}


for package in $@ 
do
    yum list installed $package &>> $LOG
    if [ $? != 0 ]
    then
        yum install $package -y &>>$LOG
        VALIDATE $?
    else
        echo -e "$package is $Y already INSTALLED....SKIPPING $N"
    fi
done