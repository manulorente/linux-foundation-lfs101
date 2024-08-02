#!/bin/bash

# Ask user for a number that must be 1 or 2

echo "Enter a number (1 or 2): "
read num

GOOD_NUMBER="YES"

if [ $num -ne 1 ] && [ $num -ne 2 ]; then
    GOOD_NUMBER="NO"
fi

export GOOD_NUMBER

echo "Is a good number? $GOOD_NUMBER"
exit 0