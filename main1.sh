#!/bin/bash

path="/hdfs/data/data1"
directory_name="data1"


if [ -d "$path/$directory_name" ]; then
    echo "There is $directory_name Directory Exists!"
else
    echo "$directory_name Directory Not Exists!"
    echo "Create a directory inside $path/$directory_name"
    mkdir -p "$path/$directory_name"
fi

