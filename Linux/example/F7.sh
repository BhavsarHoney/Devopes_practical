
#! bin/bash

function hello(){

echo "Hello World"
}
hello

#Function parameter

function hello(){

echo "Hello World $1"
}
hello  sir

#Loop 

function hello(){

for Name in "$@"
do
  echo "hello $Name"
done
}
hello jay  jayesh jiya
