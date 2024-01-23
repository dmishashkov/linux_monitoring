#!/bin/bash

. ./data.sh


function getColorF {
    case $1 in
    "1") echo "(white)" ;;
    "2") echo "(red)" ;;
    "3") echo "(green)" ;;
    "4") echo "(blue)" ;; 
    "5") echo "(purple)" ;; 
    "6") echo "(black)" ;;
  esac
}

function getColorB {
    case $1 in
    "1") echo "(white)" ;;
    "2") echo "(red)" ;;
    "3") echo "(green)" ;;
    "4") echo "(blue)" ;; 
    "5") echo "(purple" ;; 
    "6") echo "(black)" ;;
  esac
}

function print_data {
    back[1]="\033[107m"
    back[2]="\033[101m"
    back[3]="\033[102m"
    back[4]="\033[104m"
    back[5]="\033[105m"
    back[6]="\033[40m"

    front[1]="\033[97m"
    front[2]="\033[31m"
    front[3]="\033[32m"
    front[4]="\033[34m"
    front[5]="\033[35m"
    front[6]="\033[30m"

    back1=${back[$2]}
    back2=${back[$4]}

    front1=${front[$1]}
    front2=${front[$3]}


    reset="\033[0m"


    if [[ $5 -eq 1 ]]; then
        back1_c="default $(getColorB $2)"
        back2_c="default $(getColorB $4)"
        front1_c="default $(getColorF $1)"
        front2_c="default $(getColorF $3)"
    else 
        back1_c="$2 $(getColorB $2)"
        back2_c="$4 $(getColorB $4)"
        front1_c="$1 $(getColorF $1)"
        front2_c="$3 $(getColorF $3)"
    fi


    echo -e "${back1}${front1}HOSTNAME        = ${reset}${back2}${front2}$HOSTNAME ${reset}"
    echo -e "${back1}${front1}TIMEZONE        = ${reset}${back2}${front2}$TIMEZONE ${reset}"
    echo -e "${back1}${front1}USER            = ${reset}${back2}${front2}$USER ${reset}"
    echo -e "${back1}${front1}OS              = ${reset}${back2}${fron21}$OS ${reset}"
    echo -e "${back1}${front1}DATE            = ${reset}${back2}${front2}$DATE ${reset}"
    echo -e "${back1}${front1}UPTIME          = ${reset}${back2}${front2}$UPTIME ${reset}"
    echo -e "${back1}${front1}UPTIME_SEC      = ${reset}${back2}${front2}$UPTIME_SEC ${reset}"
    echo -e "${back1}${front1}IP              = ${reset}${back2}${front2}$IP ${reset}"
    echo -e "${back1}${front1}MASK            = ${reset}${back2}${front2}$MASK ${reset}"
    echo -e "${back1}${front1}GATEWAY         = ${reset}${back2}${front2}$GATEWAY ${reset}"
    echo -e "${back1}${front1}RAM_TOTAL       = ${reset}${back2}${front2}$RAM_TOTAL ${reset}"
    echo -e "${back1}${front1}RAM_USED        = ${reset}${back2}${front2}$RAM_USED ${reset}"
    echo -e "${back1}${front1}RAM_FREE        = ${reset}${back2}${front2}$RAM_FREE ${reset}"
    echo -e "${back1}${front1}SPACE_ROOT      = ${reset}${back2}${front2}$SPACE_ROOT ${reset}"
    echo -e "${back1}${front1}SPACE_ROOT_USED = ${reset}${back2}${front2}$SPACE_ROOT_USED ${reset}"
    echo -e "${back1}${front1}SPACE_ROOT_FREE = ${reset}${back2}${front2}$SPACE_ROOT_FREE ${reset}"
    echo \

    echo "Column 1 background = ${back1_c}"
    echo "Column 1 font color = ${front1_c}"
    echo "Column 2 background = ${back2_c}"
    echo "Column 2 font color = ${front2_c}"

}