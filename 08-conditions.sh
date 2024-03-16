#!/bin/bash

echo "what is today?"
read TODAY

if [ $TODAY != "Sunday" ]  # If today is not equal to Sunday --> != --> Not Equal to
then
    echo "Today is $TODAY, Go to School"
else 
    echo "Today is $TODAY, Happy Holiday"
fi