#!/bin/bash -x

isHeads=0
isTails=1
finalCount=21

heads=0
tails=0

while [[ $heads -lt $finalCount ]] && [[ $tails -lt $finalCount ]]
do
	coinFlip=$((RANDOM%2))
	if [[ $isHeads -eq $coinFlip ]]
	then
		((heads++))	
	elif [[ $isTails -eq $coinFlip ]]
	then
		((tails++))
	fi
done

if [[ $heads -eq $finalCount ]] && [[ $tails -eq $finalCount ]]
then
	echo "Its a tie"
elif [[ $heads -eq $finalCount ]]
then
	echo "Heads won the by $(( $heads-$tails ))"
elif [[ $tails -eq $finalCount ]]
then
	echo "Tails won by $(( $tails-$heads ))"
fi
