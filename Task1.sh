#!/bin/bash
 
if [ $# -eq 0 ]; then
    echo "Usage: $0 "
    exit 1
fi
echo $@
echo $#
FILE_PATH="$1"
 
for FILE_PATH in "$@" ; do
if [ -d "$FILE_PATH" ]; then
    echo "it is a directory."
elif [ -x "$FILE_PATH" ]; then
    echo "it  is an executable file."
elif [ -f "$FILE_PATH" ]; then
    echo "it is a regular file."
 
else
    echo "Invalid"
fi
done
