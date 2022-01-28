#!/bin/bash -x

for file in `ls *.log`;
do
         a="$(date '+%d%m%y%H%M%N')";
                folderName=`echo $file | awk -F. '{print $1}'`;
                 rm -r $folderName;
                mkdir $folderName;
		 cp $file "$folderName $a.log";
        	mv "$folderName $a.log" $folderName;
done
