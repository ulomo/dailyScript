#!/bin/bash


a=(1 2 3)
b=(2 3 4)
for i in ${a[@]}
do
 for j in ${b[@]}
 do
  if [[ $i == $j ]];then
   continue
  else
   echo "cannot find $i"
  fi
 done
done
