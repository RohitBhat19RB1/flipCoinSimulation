 #!/bin/bash -x
#echo "This is master branch"

p=0;q=0;
isRandom=1;


#echo "giving randomly 6 chances "
#while [[ $(($p + $q)) != 6 ]] #here 6 is taken to apply multiple loops; any value could b taken; acc.to uc2
#while [[ $p != 21 && $q != 21 ]] #this condition is taken according to uc3
while [[ $(($p + $q)) != 2  ]] #here 2 is taken to get tie quickly just to b sure whether code is working or not in the tie case acc. to uc4
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

if [[ $p -gt $q ]]
then
	diff=$(( $p - $q ));
	echo "heads won against tails by $diff times"
elif [[ $p -eq $q ]]
then
	echo "there is a tie between heads and tails"
	echo "now again this game continues till the difference of minimum 2 points is achieved "
	while [[ $(($p-$q)) != 2 && $(($q-$p)) != 2 ]]
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


	if [[ $p -gt $q ]]
	then
		echo "Heads won by 2 points "
	else
		echo "tails won by 2 points"
	fi

else
	diff=$(( $q - $p ));
	echo "tails won against heads by $diff times"
fi
