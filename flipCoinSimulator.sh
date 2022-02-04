flip=0;
heads=0;
tails=0;
while [[ $heads -ne 21 && $tails -ne 21 ]]
do
coin=$((RANDOM%2));
	if [ $coin -eq 0 ];
	then
	echo "heads is the winner"
	((heads++)) 
	else
	((tails++))
	echo "tails is the winner"
	fi


	if [ $heads -eq 21 ];
	then
	echo "heads flipped $heads times"
	elif [ $tails -eq 21 ]
	then
	echo "tails flipped $tails times"
	fi
((flip++))
done

echo "heads flipped $heads times && tails flipped $tails"

	if [ $tails -eq $heads ]
	then
	echo "It Is Tie"
	fi

	if [ $heads -gt $tails ]
	then
	diff=`expr $heads - $tails`
	echo "heads won by $diff"

	elif [ $tails -gt $heads ]
	then
	diff1=`expr $tails - $heads`
	echo "tails won by $diff1"

	fi

totalflips=`expr $heads + $tails`
echo total flips $totalflips
percentage=`echo $heads $totalflips | awk '{print (($1/$2)*100)}'`
echo heads won by $percentage %
percentage1=`echo $tails $totalflips | awk '{print (($1/$2)*100)}'`
echo tails won by $percentage1 %
