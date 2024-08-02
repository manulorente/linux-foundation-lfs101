#!/bin/bash

# Functions
function1() {
    echo "You entered 1"
}

function2() {
    echo "You entered 2"
}

function3() {
    echo "You entered 3"
}

# Ask user for a number (1, 2 or 3)
echo "Enter a number (1, 2 or 3): "
read num

if [ $num -ne 1 ] && [ $num -ne 2 ] && [ $num -ne 3 ];
then
    echo "You did not enter a number between 1 and 3"
    exit 1
fi

# Call the function that corresponds to the number entered by the user
function$num  
exit 0