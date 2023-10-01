#!/bin/bash

path="/hdfs/data/data1"
directory_name="data1"

filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$directory_name"


if [ -d "$path/$directory_name" ]; then
    echo "There is $directory_name Directory Exists!"

    mv "$source_dir/$filename_excel" "$target_dir"

    if [ $? -eq 0 ]; then
        echo "File Moved Successfully" >> "$destination_dir/move_log.txt"
    else
        echo "Failed to Move The File"
    fi
else
    echo "$directory_name Directory Not Exists!"
    echo "Create a directory inside $path/$directory_name"
    mkdir -p "$path/$directory_name"
fi
