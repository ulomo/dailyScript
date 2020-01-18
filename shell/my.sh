#!/bin/bash

cat file.txt | while read line
do
    d=`echo $line | awk -v FS='#' '{print $2}'`
    if [ -d $d ];then
        echo $d
    else
        echo "not a dir"
    fi
done
