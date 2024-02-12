echo "ENter file name :" $@
echo $#

if [ $# -eq 0 ]
then
 echo "Enter file "
fi 


for FILE_NAME in "$@"
do
if [ -e  FILE_NAME ]
then
   echo "FIle is Exist"
fi
done
