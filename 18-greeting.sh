#!/bin/bash

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
        h|*) USAGE; exit;;
    esac
done
