#!/bin/bash

fun=( '/' '-' '|' '\' )
i=0
while [ ${index=0} -le 50 ]
do
		printf "[%-50s]  [%d%%] [%c] \r" ${bar=#} $(($index*2)) ${fun[i]}
		bar+="#"
		let index++
		let i=index%4
		sleep 0.1
done
printf "\n"
