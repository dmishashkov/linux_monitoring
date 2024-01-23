#!/bin/bash
begin=$(date +%s.%N)
. ./print.sh

if [[ $# -ne 1 ]]; then
    echo "Provide address for directory"
else 
    lastch="${1: -1}"
    if [[ $lastch != '/' ]]; then
        echo "Address should end with /"
    elif [ ! -d $1 ]; then
        echo "Directory with given address does not exist"
    else #
        print_data $1 $begin
    fi
fi
