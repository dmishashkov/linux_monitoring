#!/bin/bash
. ./print.sh
. ./checker.sh

. ./reader.sh

# echo $back1 $front1 $back2 $front2

if [[ $(check_number $back1) -eq 1 ]] && [[ $(check_number $back2) -eq 1 ]] && [[ $(check_number $front1) -eq 1 ]] && [[ $(check_number $front2) -eq 1 ]]; then
    if [[ $(check_equality $back1 $front1) -eq 1 ]] && [[ $(check_equality $back2 $front2) -eq 1 ]]; then
                print_data "$front1" "$back1" "$front2" "$back2" "$def"
    else 
        echo "Text and backhground cannot be the same"
    fi
    else
        echo "Arguments should be between 1 and 6"
fi