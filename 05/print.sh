#!/bin/bash

function print_data {
    . ./data.sh $1
    echo "Total number of folders (including all nested ones) = ${total_folders}"
    echo "TOP 5 folders of maximum size arranged in descending order (path and size)"
    echo "${top5_big_folders}"
    echo "Total number of files = ${total_files}"
    echo "Number of:"
    echo "Configuration files (with the .conf extension) = ${conf_files}"
    echo "Text files = ${text_files}"
    echo "Executable files = ${executable_files}"
    echo "Log files (with the extension .log) = ${log_files}"
    echo "Archive files = ${archieve_files}"
    echo "Symbolic links = ${symbolic_files}"
    echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
    echo "${top10_big_files}"
    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
    echo "${top10_executables}"
    end=$(date +%s.%N)
    runtime=$(echo $end - $2 | bc -l)
    runtime=$(LC_NUMERIC="en_US.UTF-8" printf "%.1f\n" "0$runtime")
    echo "Script execution time (in seconds) = $runtime"
}


