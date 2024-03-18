#!/bin/bash

R="\e[31m" # Red Colour
G="\e[32m" # Green colour
Y="\e[33m" # Yellow colour
N="\e[0m" # No colour

NAME=""
WISH=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wish>"
    echo "options::"
    echo " -n, Specify the name (mandotary)"
    echo " -w, Specify the wishes, ex: Good Morning.."
    echo " -h, Display help and Exit"

}
while getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit;;
        h) USAGE; exit;;
    esac
done

if [ -z "$NAME" ] || [ -z "$WISHES" ] # -z means if nothing given for Name and Wishes
then
    echo "$R ERROR $N: Both -n and -w are mandotory"
    USAGE
    exit 1
fi 

echo "Hello $NAME. $WISHES. I've been learning DevOps shell script"

