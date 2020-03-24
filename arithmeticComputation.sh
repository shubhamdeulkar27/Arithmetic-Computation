#!/bin/bash -x

#TAKING INPUTS FROM USER
read -p "Enter Input 1 : " a
read -p "Enter Input 2 : " b
read -p "Enter Input 3 : " c

#COMPUTATIONS
result=$(( $a+$b*$c ))
