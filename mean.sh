#!/bin/bash
if [[ $# -gt 2 || $# -eq 0 ]]; then
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 0
fi

if [[ $# -eq 2 ]]; then
    data=$(tail -n +2 $2 | cut -d "," -f $1)
else
    read name
    if [[ $name == *.csv ]]; then
      data=$(tail -n +2 $name | cut -d "," -f $1)
    else
      data=$(tail -n +2 $2 | cut -d "," -f $1)
    fi
fi
for sample in $data
do
    sum=$(($sum+$sample))
    count=$(($count+1))
done
echo $(($sum/$count))
