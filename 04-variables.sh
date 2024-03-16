#!/bin/bash 

echo "This is a comversation between two friends"

# We have to give arguments while running the shellscript 
# Example : sh 04-variables.sh Robert John

PERSON1=$1 # Here $1 value we are giving as Robert in command line while executing
PERSON2=$2 # Here $2 value we are giving as Robert in command line while executing

echo "$PERSON1 : Hello $PERSON2, Good Morning"
echo "$PERSON2 : Hi $PERSON1, very Good Morning"
echo "$PERSON1 : How are you? "
echo "$PERSON2 : I'm Fine, What about you ?"
echo "$PERSON1 : I'm good $PERSON2."