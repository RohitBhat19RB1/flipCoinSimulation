#!/bin/bash -x
#echo "This is master branch"

p=0;q=0;
isRandom=1;


echo "giving randomly 6 chances "
while [[ $(($p + $q)) != 6 ]]
do
        val=$(( RANDOM%2 ))
	if [[ $val -eq $isRandom ]]
	then
		echo "Heads"
		    p=$(($p+1));
	else
		echo "Tails"
		    q=$(($q+1));
	fi
done

echo "number of times heads won = $p"
echo "number of times tails won = $q"
