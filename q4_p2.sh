#! /bin/bash

function dir_loop()
{
    for ((number=1;number < 11;number++))
    {
        if (( $number % 2 == 0 ))
            then
                name='even'
                name=$name$number
                mkdir $name
                chmod ug=rw $name
                chmod o=r $name
        else
            name='odd'
            name=$name$number
            mkdir $name
            chmod ugo=r $name
        fi
    }
}

dir_loop