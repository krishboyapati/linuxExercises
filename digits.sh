#!/bin/bash

sum=0

for i in {1000..2000};do
    if [[ $i =~ [01]{4} ]]
    then sum=$(($sum+$i))
    fi done
echo $sum  
