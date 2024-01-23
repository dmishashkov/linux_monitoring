#!/bin/bash
. ./print.sh
. ./checker.sh

if [[ $# -ge 5 ]]; then
    echo "Too much arguments"
else
    if [[ $# -le 3 ]]; then
        echo "Too little arguments"
    else
        if [[ $(check_number $1) -eq 1 ]] && [[ $(check_number $2) -eq 1 ]] && [[ $(check_number $3) -eq 1 ]] && [[ $(check_number $4) -eq 1 ]]; then
            if [[ $(check_equality $1 $2) -eq 1 ]] && [[ $(check_equality $3 $4) -eq 1 ]]; then
                print_data $1 $2 $3 $4
            else 
                echo "Text and backhground cannot be the same"
            fi
        else
            echo "Arguments should be between 1 and 6"
        fi
    fi
fi