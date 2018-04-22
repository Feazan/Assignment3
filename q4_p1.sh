#! /bin/bash

function info()
{
    #read -p "Enter a directory: " directory
    cd $1

    echo "Current username is: $USER"
    echo "Current directory is : $PWD"
    echo "Home directory is : $HOME"
    echo ""
    echo "— 5 most recently modified directories with rwxrwxrwx —"
    ls -lht | head -6
    echo ""
    echo "— Files in last 30-60 minutes"
    find -amin +30 -amin -60
    echo ""
    for i in {1..70}
    do
        echo -n "="
    done
    echo ""
}

directory=$1
info $directory