read -p "Enter YOur CHoise : 1.Science 2.GIjrati 3.Maths 4.Exixt 5.Invalid": ch
 when ( "$ch" != 4)
do 
 case "$ch"  
  1) echo "Science"
   ;;
 2) echo "GUjrati"
;;
3) echo "MAths"
;;
4) echo "Exixt"
;;
5) echo "INvalid"
;;
)
done
