#!/bin/bash

function ask_save {
    read -p 'Save data in file? (Y/N) ' answer
    flag=0
    if [ "$answer" == "Y" ] || [ "$answer" == "y" ] || [ "$answer" == "yes" ] || [ "$answer" == "Yes" ]; then 
        flag=1
    fi
    echo $flag
}

function save_data {
    data=$(date "+%d_%m_%y_%H_%M_%S")
    echo $data
    file="${data}.status"
    print >> $file
}