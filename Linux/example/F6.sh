
#!bin/bash

HOST="google.com"
ping -c 1 $HOST
if [ "$?" -eq "0" ]
then
echo "$HOST reachable."
else
echo "$HOST unreachable."
fi

#2
HOST="google.com"
ping -c 1 $HOST
if [ "$?" -ne "0" ]
then
echo "$HOST unreachable."
fi
