

cat /etc/shadow

if [ $?  -eq 0 ]
then 
    echo " command return with exti status."
    exit 0
else
   echo "command reurn with not Excit sttatus."
   exit 1
fi
