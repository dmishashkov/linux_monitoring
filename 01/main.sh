#!/bin/bash
re='^[+-]?[0-9]+([.][0-9]+)?$'
if [[ ! $1  ]]; 
then
        echo "Error: you should provide argument"
else
    if [[ $1 =~ $re ]] ; then
        echo "Error: input should not be a number"; exit 1
    else
        echo $1
    fi
fi
