#!/bin/bash -x
#echo "This is master branch"

isRandom=1;
val=$(( RANDOM%2 ))

if [[ $val -eq $isRandom ]]
then
	echo "Heads"
else
	echo "Tails"
fi

