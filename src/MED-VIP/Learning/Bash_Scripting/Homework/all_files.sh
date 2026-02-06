#!/bin/bash
read -p "Enter directory path: " dir

if [[ -d "$dir" ]]; then
    echo "Files in $dir and subdirectories:"
    find "$dir" -type f
else
    echo "Invalid directory."
fi
