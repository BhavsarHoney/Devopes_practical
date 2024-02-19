

#! bin/bash

read -p " ENter a file name : " input_name 

if [ -e "$input_name" ]; then
    
    if [ -f "$input_name" ]; then
        echo "$input_name is a regular file."
    elif [ -d "$input_name" ]; then
        echo "$input_name is a directory."
    else
        echo "$input_name is another type of file."
    fi


    ls -l "$input_name"
else
    echo "File or directory '$input_name' does not exist."
fi


