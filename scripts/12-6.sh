#!/bin/bash

# Functions

add() {
    echo $(($1 + $2))
}

subtract() {
    echo $(($1 - $2))
}

multiply() {
    echo $(($1 * $2))
}

divide() {
    echo $(($1 / $2))
}

if [ $# -ne 3 ];
then
    echo "Usage: $0 <number> <operator> <number>"
    exit 1
fi

if [ $2 != "+" ] && [ $2 != "-" ] && [ $2 != "x" ] && [ $2 != "/" ];
then
    echo "Invalid operator"
    exit 1
fi

if [ $2 == "/" ] && [ $3 -eq 0 ];
then
    echo "Cannot divide by zero"
    exit 1
fi

if [ $2 == "+" ];
then
    add $1 $3
elif [ $2 == "-" ];
then
    subtract $1 $3
elif [ $2 == "x" ];
then
    multiply $1 $3
elif [ $2 == "/" ];
then
    divide $1 $3
fi

exit 0