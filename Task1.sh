#!/bin/bash

FILE_PATH="/dir/file.txt"

if [ -d "$FILE_PATH" ]; then
    echo "It is a directory"
elif [ -f "$FILE_PATH" ]; then
    echo "It is a simple file"
elif [ -x "$FILE_PATH" ]; then
    echo "It is an executable file"
else 
  echo "Invalid"
fi
