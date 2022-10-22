#!/bin/bash
mkdir ./five
cd five
for subdir in dir{1..5}
do mkdir $subdir
   cd $subdir
   for number in {1..4}
   do filename="file$number"
      for val in $(seq 1 $number)
      do echo $number >> $filename
      done
   done
   cd ..
done

