clear
i="y"
sum=0
while [ $i =  "y" ]
 


do
 echo " please specify your operation to be performed \n 1)adition \n 2)substractiom \n 3)division \n 4)multiplication \n 5)modulus"
read ch
echo "enter no.1"
read a
echo "enter no.2"
read b
case $ch in
      1)sum=`expr $a + $b`
            echo "sum="$sum;;
      2)sum=`expr $a - $b`
            echo "difference=" $sum;;
       3)sum=`expr $a / $b`
             echo "$a/$b" | bc -l;;
       4)sum=`expr $a \* $b`
           echo "mul="$sum;;
      5)sum=`expr $a % $b`
            echo "mod="$sum;;
      *)echo "invalid option";;
 esac
 echo "press y if you want to continue:"
 read i
 if [ $i != "y" ]
 then
  echo "calculator session terminated" 
   exit 
  fi
done

