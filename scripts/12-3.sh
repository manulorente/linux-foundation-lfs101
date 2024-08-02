#!/bin/bash

# Check if there is one argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

# Print back the argument
echo "$1"
exit 0