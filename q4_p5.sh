#! /bin/bash

function min_max()
{
    num_args="$#"
    args="$@"

    max=-1000000;
    min=1000000;
    for i in ${args[@]}
    do
        sum=$((sum + $i))
        if [[ $i -gt $max ]]
            then
                max=$i
        fi
        if [ $i -lt $min ]
            then
                min=$i
        fi
    done

    sum=$((sum / num_args))
    echo "Min: $min"
    echo "Max: $max"
    echo "Average: $sum"
}

ARGS="$@"
min_max $ARGS