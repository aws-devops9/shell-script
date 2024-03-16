#!/bin/bash
# In array always Index will be start from "0" so first value will be 0

FRUITS=("Apple" "Banana" "Mango") # FRUITS as variables ("Apple" "Banana") --> Array

echo "First fruit is: ${FRUITS[0]}"

echo "Second fruit is: ${FRUITS[1]}"

echo "Third fruit is: ${FRUITS[2]}"

echo "All fruits: ${FRUITS[@]}"