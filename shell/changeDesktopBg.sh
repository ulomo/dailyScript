#!/bin/zsh
#it is used for xmonad short key to change desktop background

#send notify to dunst
notify-send "desktop background will be changed every 3 minutes"
#echo "mplayer -volume 18 http://dict.youdao.com/dictvoice?audio=change%20desktop" | sh >/dev/null 2>&1
#kill the program which has been start up before avoid too many program running
ps -ef | grep shell/changeDesktopBg.sh | grep -v grep | sed '$d' | awk '{print "kill " $2}' | sh
ps -ef | grep sleep | awk '{print "kill " $2}' | sh

dir=~Pictures/bing_picture/dump_bing_picture

for i in ${dir}/*
do
		totalNum=`ls ${dir} | wc -l`
		totalNumFix=`expr ${totalNum} - 1`
		randomNum=`date +%N`
		index=`expr ${randomNum} % ${totalNumFix}`
		indexFix=`expr ${index} + 1`
		picture=`eval "ls ${dir} | xargs -n 1 | sed -n '${indexFix} p' "`
		feh --no-fehbg --bg-scale ${dir}/${picture} >/dev/null 2>&1 
		sleep 300
done
