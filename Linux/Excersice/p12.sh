
#! bin/bash
function Fill_Count(){
 local count=$(ls -1 | wc -l)
echo "Number of files in the present working directory: $count"
}
Fill_Count
