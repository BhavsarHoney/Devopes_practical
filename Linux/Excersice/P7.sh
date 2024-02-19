
#! bin/bash
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 " 
    exit 1
fi

echo $@
echo $#
input_name="$1"

for input_name in "$@" 
do 
if [ -e "$input_name" ]; then
    # Determine the type of the input
    if [ -f "$input_name" ]; then
        echo "$input_name is a regular file."
    elif [ -d "$input_name" ]; then
        echo "$input_name is a directory."
    else
        echo "$input_name is another type of file."
    fi

    # Perform ls with long listing option
    ls -l "$input_name"
else
    echo "File or directory '$input_name' does not exist."
fi
done 
