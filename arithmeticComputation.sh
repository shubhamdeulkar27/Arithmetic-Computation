#!/bin/bash -x

#TAKING INPUTS FROM USER
read -p "Enter Input 1 : " a
read -p "Enter Input 2 : " b
read -p "Enter Input 3 : " c

#FUNCTION TO SORT ARRAY
function sortDsc(){
	array=("$@")
	for (( i=0 ; i<$(( ${#array[@]}-1 )) ; i++ ))
	do
		for (( j=i+1 ; j<${#array[@]} ; j++ ))
		do
			if (( ${array[$i]}<${array[$j]} ))
			then
				temporary=${array[$i]}
				array[i]=${array[$j]}
				array[j]=$temporary
			fi
		done
	done
echo ${array[@]}
}

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

#SORTING ARRAY
resultArray=$( sortDsc ${resultArray[@]} )
echo ${resultArray[@]}
