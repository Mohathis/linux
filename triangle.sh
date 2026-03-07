if [ $# -ne 3 ]
then
    echo "Syntax is <$0> <no1> <no2> <no3>"
exit 1
fi
n1=$1
n2=$2
n3=$3
if [ $n1 -gt $2 ]
then
   temp=$n1
   n1=$2
   n2=$temp
fi
if [ $n2 -gt $n3 ]
then
   temp=$n2
   n2=$n3
   n3=$temp
fi
if [ `expr $n1 + $n2` -gt $n3 ]
then
   echo "Triangle is formed"
else
   echo "Triangle not formed"
exit 1
fi



if [ $n1 -eq $n2 -a  $n1 -eq $n3 ]
then
echo "Equilateral triangle"
elif [ $n1 -eq $n2  -o  $n1 -eq $n3  -o  $n2 -eq $n3 ] 
then
 echo "Isoosceless triangle"




elif [ `expr $n1 \* $n1 + $n2 \* $n2` -eq `expr $n3 \* $n3` ]
then
echo "Right-angled triangle"
else
echo "normal triangle"
fi

 



