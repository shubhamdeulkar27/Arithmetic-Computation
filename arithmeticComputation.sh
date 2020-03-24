#!/bin/bash -x

#TAKING INPUTS FROM USER
read -p "Enter Input 1 : " a
read -p "Enter Input 2 : " b
read -p "Enter Input 3 : " c

#PERFORMING COMPUTATIONS AND STORING RESULTS TO DICTIONARY
declare -A results
index=0
results[$(( index++ ))]=$(( $a+$b*$c ))
results[$(( index++ ))]=$(( $a*$b+$c ))
results[$(( index++ ))]=$(( $c+$a/$b ))
results[$(( index++ ))]=$(( $a%$b+$c ))

#STROING RESULTS FROM DICTIONARY TO ARRAY
for (( i=0 ; i<$index ; i++ ))
do
	resultArray[i]=${results[$i]}
done

