#!/bin/bash

echo "what is today?"
read TODAY

if ($TODAY !={Sunday}) {
    echo "Today is $TODAY, Go to School"
}
else{ 
    echo "Today is $TODAY, Happy Holiday"
}
fi