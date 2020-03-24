#!/bin/bash -x

#TAKING INPUTS FROM USER
read -p "Enter Input 1 : " a
read -p "Enter Input 2 : " b
read -p "Enter Input 3 : " c

#COMPUTATIONS
result1=$(( $a+$b*$c ))
result2=$(( $a*$b+$c ))
result3=$(( $c+$a/$b ))
results=$(( $a%$b+$c ))
