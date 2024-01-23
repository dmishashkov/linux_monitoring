#!/bin/bash

function check_number {
    res=0
    if [[ $1 -gt 0 ]] && [[ $1 -lt 7 ]]; then
        res=1
    fi
    echo $res
}

function check_equality {
    res=1
    if [[ $1 -eq $2 ]]; then
        res=0
    fi
    echo $res
    
}