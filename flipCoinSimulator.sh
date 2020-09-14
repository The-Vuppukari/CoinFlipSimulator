#!/bin/bash -x

isHeads=0
isTails=1

heads=0
tails=0

for (( i=1; i<=100; i++ ))
do
	coinFlip=$((RANDOM%2))
	if [ $isHeads -eq $coinFlip ]
	then
		((heads++))	
	elif [ $isTails -eq $coinFlip ]
	then
		((tails++))
	fi
done
echo "Number of times heads won = $heads "
echo "Number of times tails won = $tails "
