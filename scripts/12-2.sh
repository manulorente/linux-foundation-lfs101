#!/bin/bash

echo "Enter a name of a directory: "
read dir
mkdir $dir
cd $dir
echo "Current directory is: $PWD"
echo "Creating 10 files..."
for i in {1..10}
do
    touch file$i
    ls -l file$i
done
echo "Adding content to the files..."
for i in {1..10}
do
    echo "This is file$i" > file$i
    cat file$i
done
echo "Removing the directory..."
sleep 5
cd ..
rm -r $dir