
#! bin/bash 

file_count() {
    local directory="$1"  # Accept the directory as an argument
    local count=$(ls -1 "$directory" | wc -l)  # Count files in the specified directory

    # Display the directory name followed by a colon and the number of files
    echo "$directory:"
    echo "Number of files: $count"
    echo  # Add a newline for better readability
}

# Call the function for /etc directory
file_count  "/etc"

# Call the function for /var directory
file_count "/var"

# Call the function for /usr/bin directory
file_count "/usr/bin"

