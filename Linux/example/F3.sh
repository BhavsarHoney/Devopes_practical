
#!bin/bash
MY_SHELL="BASH"

if [ "$MY_SHELL"  = "BASH" ]
then
   echo "YOU LIKE bash Scripting."
fi

# If/else statements

if [ "MY_SHELL" = "csh" ]
then 
    echo "you like bash schiptinf"
else
    echo "you like not bash scripting"
fi

# if/elif/else statements 
if [ "$MY_SHELL" = "bash" ]
then
echo "You seem to like the bash shell."
elif [ "$MY_SHELL" = "csh" ]
then
echo "You seem to like the csh shell."
else
echo "You don't seem to like the bash or csh shells."
fi
