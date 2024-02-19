
#!bin/bash

today=$(date +"%Y-%m-%d")

for file in *.jpg; do
  
    if [ -e "$file" ]; then
       
        filename=$(basename -- "$file" .jpg)
        new_filename="${today//-/}$filename.jpg"
        mv "$file" "$new_filename"
        
        echo "Renamed: $file to $new_filename"
    fi
done
