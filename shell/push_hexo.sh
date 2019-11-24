#!/usr/bin/bash
#used to auto create hexo file

#define some variables
documentdir=~/Documents/note/
hexodir=~/Documents/hexo/source/_posts

function generate_file(){
cd ${hexodir}
for i in `ls ${content}`
do
		match=`find ${hexodir} -name "${i%.*}*"`
		if [[ ${match} == '' ]];then
				hexo n ${i%.*}
				cat "${content}/${i%.*}.md" >> ${hexodir}/${i%.*}.md
				vim ${i%.*}.md
		fi
done
}

select i in `ls ${documentdir}`
do
		for j in `ls ${documentdir}`
		do
				case ${i} in
					${j})
							content=${documentdir}${i}
							generate_file
							;;
					"*")
						   	continue
							;;
				esac
		done
done


