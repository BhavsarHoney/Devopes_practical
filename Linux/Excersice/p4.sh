
#! bin/bash

file="/etc/shadow"

if [ -e "$file" ]
then
  echo "Shadow passwords are enabled."
    if [ -w  "$file" ]
      then 
      echo  "You have permissions to edit $file."
    else 
       echo  " you have not permision to edit $file."
    fi 
else 
    echo " file is not exits"
fi
