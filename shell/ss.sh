#!/bin/bash


username="pi"
password="dvezmei"
curl https://www.youneed.win/free-ss | grep '<td align'| awk -v FS='>' '{print $2}'|grep -v '<a'|awk -v FS='<' '{print $1}'|xargs -n6|xclip

xclip -o|while read line
do
		a=`echo $line | awk -v FS=' ' '{print $1}'`
		b=`echo $line | awk -v FS=' ' '{print $2}'`
		c=`echo $line | awk -v FS=' ' '{print $3}'`
		d=`echo $line | awk -v FS=' ' '{print $4}'`
		e=`echo $line | awk -v FS=' ' '{print $6}'`
		echo "$a,$b,$c,$d,$e"
		sleep 0.1
		mariadb -u${username} -p${password}<EOF
			insert into ssacount values("sslocal","-s","${a}","-p","${b}","-k","${c}","-m","${d}","-l","1080","${e}",null);
			commit;
EOF
done





