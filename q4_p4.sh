#! /bin/bash

function num_files()
{
    #read -p "Enter a directory: " directory
    #echo $1
    cd $1
    echo -n "Number of .sh files: "
    echo *.sh | wc -w
}

directory=$1
num_files $directory