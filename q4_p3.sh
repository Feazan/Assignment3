#! /bin/bash

function num_words()
{
    read -p "Enter a sentence: " sentence
    echo -n "Letters: "
    echo $sentence | tr -d '\n' | wc -c
    echo -n "Words: "
    echo $sentence | wc -w
}

num_words