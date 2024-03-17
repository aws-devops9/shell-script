#!/bin/bash

R="\e[31m" # Red Colour
G="\e[32m" # Green colour
Y="\e[33m" # Yellow colour
N="\e[0m" # No colour

FILE="/etc/passwd"

if [ ! -f $FILE ]
then
    echo -e "Source file $R..$FILE $R does not exist $N"
    exit 1
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
    echo "Username : $username"
    echo "user ID : $user_id"
    echo "User Full Name : $user_fullname"
done < $FILE
