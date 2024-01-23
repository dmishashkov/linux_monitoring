#!/bin/bash

total_folders="$(sudo find $1 -type d | wc -l)"
top5_big_folders="$(sudo du -Sh $1 | sort -r | head -n 5 | awk '{print NR" - "$2", "$1}')"
total_files="$(sudo find $1 -type f | wc -l)"
conf_files="$(sudo find $1  -type f -name "*.conf" | wc -l)"
text_files="$(sudo find $1 -type f -name "*.txt"  | wc -l)"
executable_files="$(sudo find $1 -type f -executable | wc -l)"
symbolic_files="$(sudo find $1 -type l | wc -l)"
log_files="$(sudo find $1 -regex .*\(log\)| wc -l)"
archieve_files="$(sudo find $1 -regex '.*\(rar\|tar\|zip\|gz\)' | wc -l)"
top10_big_files="$(sudo find $1 -type f -exec du -ha {} + | sort -rh | head -n 10 | awk '{print NR" - "$2", "$1}')"
top10_executables="$(sudo find $1 -type f -executable -exec du -ha {} + | sort -r | head -n 10 | awk '{print NR" - "$2", "$1}')"