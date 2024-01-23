#!/bin/bash

HOSTNAME=$(hostname)
TIMEZONE="$(cat /etc/timezone) $(date +"UTC %-:::z")"
USER="$(whoami)"
OS="OSTYPE=$(echo $OSTYPE) $(cat /etc/os-release | grep -E '^(VERSION|NAME)=' | tr -d '"' | tr '\n' ' ' )"
DATE="$(date +"%d %B %Y %T")"
UPTIME="$(uptime -p)"
UPTIME_SEC="$(cat /proc/uptime)"
UPTIME_SEC="${UPTIME_SEC%%.*}"
IP="$(hostname -I | awk '{print $1}')"
MASK="$(netstat -rn | awk 'NR==4{print $3}')"
GATEWAY="$(netstat -rn | awk 'NR==3{print $2}')"
RAM_TOTAL="$(free -m | awk '/Mem:/{printf "%.3f GB", $2/1024}')"
RAM_USED="$(free -m | awk '/Mem:/{printf "%.3f GB", $3/1024}')"
RAM_FREE="$(free -m | awk '/Mem:/{printf "%.3f GB", $4/1024}')"
SPACE_ROOT="$(df /root/ | awk 'NR==2{printf "%.2f MB", $2/1024}')"
SPACE_ROOT_USED="$(df /root/ | awk 'NR==2{printf "%.2f MB", $3/1024}')"
SPACE_ROOT_FREE="$(df /root/ | awk 'NR==2{printf "%.2f MB", $4/1024}')"