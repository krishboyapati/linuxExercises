#!/bin/bash
if [[ $# -ne 2 ]]; then
echo "usage: $0 <dir> <n>" 1>&2
exit 0
fi
cd $1
for file in $(find -size +${2}c -type f)
do rm $file
done
