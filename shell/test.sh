#!/bin/bash

localdir=~/Pictures/bing_picture/dump_bing_picture/
locallist=`ls $localdir`
path=`mariadb -h192.168.0.102 -upi -pdvezmei -Dmytestdb <<EOF
    select path from bing_picture;
EOF`

list=[]
j=1
for i in $path
do
   fs=`awk -F'/' '{print $NF}' $i`
   list[${j}]=${fs}
   ((j++))
done

echo $list 
trans=`echo $list $locallist $locallist | xargs -n1 | sort | uniq -u`
for k in $trans
do
    if [[ ${trans} != 'server' ]];then
       scp pi@192.168.0.102:/home/pi/Data/bing_picture/${k} ${localdir}
    fi
done
