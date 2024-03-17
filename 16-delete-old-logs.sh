#!/bin/bash

# we are trying to delete the logs which are older than 14 days
# example source directory: /tmp/shell-script-logs

R="\e[31m" # Red Colour
G="\e[32m" # Green colour
Y="\e[33m" # Yellow colour
N="\e[0m" # No colour

SOURCE_DIR="/tmp/shell-script-logs"

if [ ! -d $SOURCE_DIR ]
then
    echo -e "Source Directory $R..$SOURCE_DIR $R does not exist $N"
    exit 1
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +15 -name "*.log")

while IFS= read -r line # It will read the lines line by line # IFS is Internal Field Separator
do
    echo "Deleting file: $line"
    rm -rf $line # It will delete the files line by line
done <<< $FILES_TO_DELETE #We are giving Files_TO_DeELETE output as an input to while loop here

