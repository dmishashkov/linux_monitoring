#!/bin/bash
source print.sh
source save.sh
source data.sh

print
ans=$(ask_save)

if [[ ans -eq 1 ]]; then
    save_data
fi

