#!/bin/bash
cat Property_Tax_Roll.csv|grep "MADISON SCHOOLS"|cut -d, -f7| { count=0;sum=0;while read n; do count=$(($count+1));sum=$(($sum+$n));done;average=$(($sum/$count));echo $average; }
